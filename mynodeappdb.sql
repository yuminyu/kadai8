-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (arm64)
--
-- Host: localhost    Database: mynodeappdb
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mydata`
--

DROP TABLE IF EXISTS `mydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mydata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydata`
--

LOCK TABLES `mydata` WRITE;
/*!40000 ALTER TABLE `mydata` DISABLE KEYS */;
INSERT INTO `mydata` VALUES (1,'yamazakiiiiii','yamazaki@yama.com',31),(6,'yeah23','hahaha@yes!.com',12),(7,'totoro','ziburi@mitaka.com',15),(8,'kkkkkk','kkjlj@hkh',45);
/*!40000 ALTER TABLE `mydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tundokulist`
--

DROP TABLE IF EXISTS `tundokulist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tundokulist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(1000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `publisher` varchar(1000) DEFAULT NULL,
  `setdate` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tundokulist`
--

LOCK TABLES `tundokulist` WRITE;
/*!40000 ALTER TABLE `tundokulist` DISABLE KEYS */;
INSERT INTO `tundokulist` VALUES (34,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7034/9784065277034_1_3.jpg?_ex=200x200','掟上今日子の忍法帖','講談社','20220609211443'),(35,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0205/9784772100205.jpg?_ex=200x200','こぐまちゃんおはよう','こぐま社','20220609212018'),(36,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0159/9784276200159_1_38.jpg?_ex=200x200','音楽家である前に、人間であれ！','株式会社音楽之友社','20220609212038'),(37,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3005/9784635063005_1_2.jpg?_ex=200x200','あした出会える雑草の花100','山と溪谷社','20220609212649'),(38,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1546/9784847071546_1_4.jpg?_ex=200x200','手帳＆ノートのミニイラストの描き方 - いつものペンで、ゆるっとかわいい！ -','ワニブックス','20220609213316'),(39,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/8853/9784299028853_1_3.jpg?_ex=200x200','ただいま神様当番','宝島社','20220609213459');
/*!40000 ALTER TABLE `tundokulist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yomiowalist`
--

DROP TABLE IF EXISTS `yomiowalist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yomiowalist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(1000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `publisher` varchar(1000) DEFAULT NULL,
  `setdate` varchar(1000) DEFAULT NULL,
  `compdate` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yomiowalist`
--

LOCK TABLES `yomiowalist` WRITE;
/*!40000 ALTER TABLE `yomiowalist` DISABLE KEYS */;
INSERT INTO `yomiowalist` VALUES (5,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0608/9784300100608.jpg?_ex=200x200','2022年度版　ALL　IN　ONE　パーフェクトマスター　プロジェクトマネージャ','TAC出版','20220608222450','20220608223404'),(6,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5265/9784842915265.jpg?_ex=200x200','あたたかい地域社会を築くための指標第2版','八千代出版','20220608222941','20220608223546'),(7,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/2014/9784065282014_1_2.jpg?_ex=200x200','東京卍リベンジャーズ　キャラクターブック3　天竺編','講談社','20220608223542','20220608223748'),(8,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6956/9784902256956_1_3.jpg?_ex=200x200','LAST PARADISE 死ぬまでに行きたい日本のサウナ','A-Works','20220608223400','20220608224050'),(9,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/1758/9784799661758_1_2.jpg?_ex=200x200','東京都高校受験案内（2023年度用）','声の教育社','20220608223744','20220608224159'),(10,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/0285/9784398940285.jpg?_ex=200x200','北九州市7版','昭文社','20220608224156','20220609203616'),(11,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4534/9784299024534_1_3.jpg?_ex=200x200','LINE FRIENDS お部屋ライトBOOK BROWN ver.','宝島社','20220609203924','20220609203928'),(12,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/4103/9784819114103_1_3.jpg?_ex=200x200','永田町中国代理人','産経新聞出版','20220609204922','20220609204926'),(13,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7725/9784788717725_1_2.jpg?_ex=200x200','教職教養30日完成（2023年度版 Pass Line突破シリーズ1） ','時事通信出版局','20220609202653','20220609210501'),(14,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5137/9784041125137.gif?_ex=200x200','Fate／kaleid　liner　プリズマ☆イリヤ　ドライ！！　（13）　特装版','KADOKAWA','20220608224836','20220609210600'),(15,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/6242/9784065276242_1_4.jpg?_ex=200x200','子どもと楽しむ！　東京ディズニーリゾート　2022-2023','講談社','20220609202908','20220609210638'),(16,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/8117/2600001288117.jpg?_ex=200x200','【輸入楽譜】ジェフズ, Simon: ミュージック・フォー・ア・ファウンド・ハーモニウム/弦楽オーケストラ用編曲/Dabczynski編: フル・スコア','アルフレッド社','20220609205513','20220609210943'),(17,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5265/9784842915265.jpg?_ex=200x200','あたたかい地域社会を築くための指標第2版','八千代出版','20220609211243','20220609211246'),(18,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7725/9784788717725_1_2.jpg?_ex=200x200','教職教養30日完成（2023年度版 Pass Line突破シリーズ1） ','時事通信出版局','20220609211327','20220609211330'),(19,'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/8624/9784798158624.jpg?_ex=200x200','入門Node.jsプログラミング','翔泳社','20220609203610','20220609211446');
/*!40000 ALTER TABLE `yomiowalist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-10  0:38:18
