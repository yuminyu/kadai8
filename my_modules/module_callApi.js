//楽天APIのエンドポイント（パラメータもちょっと入れてる。）
//パラメータhitsは取得してくるオブジェクトの数。
//パラメータsortはデフォルトがstandard(具体的な意味は不明)なので、By most sold（売れ行き順）に指定。
//パラメータoutOfStockFlagは指定していないので、デフォルトの「0：Exclude unavailable items, such as out of stock/end of sale」。
const rakuten_url = "https://app.rakuten.co.jp/services/api/BooksBook/Search/20170404?format=json&hits=5&sort=sales&title=";

const apikey = require('../apikey.js');
//apiを叩くための関数の定義。引数はapiのパラメータとなる検索ワード。
 exports.callApi = async function callApi(search_word) {
            //非同期処理の対応を入れて、apiを叩く。
            const res = await fetch(rakuten_url + search_word +'&applicationId='+apikey.Application_ID);
            const kekka = await res.json();
            //apiを叩いて帰ってきたJSONファイルのItemsをリターンする。
            return kekka.Items;
        };