//mysqlを使う。
const mysql = require('mysql');

//データベースにアクセスするための設定
//hostは'localhost'だとエラーが出るため、'127.0.0.1'
const con = mysql.createConnection({
    host:'127.0.0.1',
    user:'user',
    password:'passworduser',
    database:'mynodeappdb'
  });
  
exports.con = con;