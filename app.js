//自分でモジュール化したやつを呼び出す。
const module_callApi = require('./my_modules/module_callApi.js');//楽天APIを叩く関数
const module_datetime = require('./my_modules/module_datetime.js');//日時を整形する関数
const module_db = require('./my_modules/module_db.js');//mysqlに接続するオブジェクト


//expressを使う。
const express = require('express');
const app = express();
//setメソッドで"view engine"というconfigに対し、テンプレートエンジン'ejs'を指定する。
app.set('view engine','ejs');


//クライアントによるPOSTでのリクエストにおけるデータは
//body-parserを入れた上で。「req.body.{name名}」で取得可能。
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended:true}));


//mysql接続確認。
module_db.con.connect(function(err){
  if(err)throw err;
  console.log('Connected');
});


//待ち受けるポートの指定
const port = 3000;
//port3000でアクセスを待ち受ける。
app.listen(port,()=> console.log(` app.js listening on port ${port}!`));


//localhost:3000ににアクセスしたら、views/index.ejsを表示する。
app.get('/',function(req,res){
    res.render('index');
});


//検索を実行したら、楽天APIを実行して結果をtouroku.ejsに表示して返す。
app.get('/touroku',async function(req,res){
    //GETのパラメータである検索ワードをを受け取る。
    const search_word = req.query.kensaku;
    //検索ワードを使用してAPIを叩き、検索結果を受け取る。流れをわかりやすくするために一旦変数に入れる。
    const search_kekka = await module_callApi.callApi(search_word);
    //検索結果を「kekka」という名前でtouroku.ejsに渡して、touroku.ejsを表示する。
    res.render('touroku',{kekka:search_kekka});
});


//積読に追加した本をtundokulistテーブルにINSERT INTOする。
app.post('/insert',(req,res)=>{

  //選択した本をtundokulistテーブルに追加するsql
  const sql = "INSERT INTO tundokulist SET ?";
  
  //積読した日時を取得。
  const date = new Date();

  //連想配列をPOSTのパラメータで埋める。
  const insertVALUE ={
    imgurl : req.body.largeImageUrl,
    title : req.body.title,
    publisher : req.body.publisherName,
    setdate: module_datetime.formattedDateTime(date)
  };

  //書籍情報をテーブルに挿入し、TOPにリダイレクト。
  module_db.con.query(sql,insertVALUE,function(err,result,fields){
    if(err)throw err;
    res.redirect('/');   
  });
});


//「積読の一覧へ」を押したとき。
app.get('/tundoku',function(req,res){

  //積んでる本リストをtundokulistテーブルから取ってくるsql
  const sql = "SELECT * FROM tundokulist";

  //tundokulistテーブルから取ってきたデータをtundoku.ejsに渡して表示する。
  module_db.con.query(sql,function(err,result,fields){

    if(err)throw err;
    
    //SELECTの結果をtundokulistという名前にして、tundoku.ejsに渡して表示する。
    res.render('tundoku',{tundokulist:result});
  });
});


//
app.post('/delete',async (req,res)=>{

  const sql_select = "SELECT * FROM tundokulist WHERE imgurl = ?";
  module_db.con.query(sql_select,[req.body.imgurl],function(err,result,fields){

    if(err)throw err;

    //積読した日時を取得。
    const date = new Date();

    //連想配列をPOSTのパラメータで埋める。
    const insertVALUE ={
      imgurl : result[0].imgurl,
      title : result[0].title,
      publisher : result[0].publisher,
      setdate: result[0].setdate,
      compdate : module_datetime.formattedDateTime(date)
    };

    //読み終わったらyomiowalistに記録する。
    const sql_insert = "INSERT INTO yomiowalist SET ?"; 
    module_db.con.query(sql_insert,insertVALUE,function(err,result,fields){
      if(err)throw err;
    });

    //tundokulistテーブルからデリートする。TOPにリダイレクトする。
    const sql_delete = "DELETE FROM tundokulist WHERE imgurl = ?";
    module_db.con.query(sql_delete,[req.body.imgurl],function(err,result,fields){
      if(err)throw err;
      res.redirect('/');
    });
  });
});


//読み終わった本のリストを表示する。
app.get('/shoka',function(req,res){
  //積んでる本リストをtundokulistテーブルから取ってくるsql
  const sql = "SELECT * FROM yomiowalist";

  //tundokulistテーブルから取ってきたデータをtundoku.ejsに渡して表示する
  module_db.con.query(sql,function(err,result,fields){
    if(err)throw err;
    res.render('shoka',{yomiowalist:result});
  });
});


