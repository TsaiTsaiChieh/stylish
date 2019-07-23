-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: stylish
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `campaign` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `story` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,1,'0_1563331547605.jpg','於是 我也想要給你 一個那麼美好的自己。 不朽《與自己和好如初》'),(2,2,'1_1563331585766.jpg','永遠 展現自信與專業 無法抵擋的男人魅力。 復古《再一次經典》'),(3,3,'2_1563331623331.jpg','瞬間 在城市的角落 找到失落多時的記憶。 印象《都會故事集》'),(4,4,'2_1563332551649.jpg','光陰的故事');
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_information`
--

DROP TABLE IF EXISTS `order_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_information` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `shipping` varchar(32) NOT NULL,
  `payment` varchar(32) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `freight` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `recipient` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_information`
--

LOCK TABLES `order_information` WRITE;
/*!40000 ALTER TABLE `order_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_list`
--

DROP TABLE IF EXISTS `order_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_list` (
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `color_code` varchar(32) NOT NULL,
  `color_name` varchar(32) NOT NULL,
  `size` varchar(16) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_list`
--

LOCK TABLES `order_list` WRITE;
/*!40000 ALTER TABLE `order_list` DISABLE KEYS */;
INSERT INTO `order_list` VALUES (1,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(2,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(3,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(4,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(5,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1);
/*!40000 ALTER TABLE `order_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_record`
--

DROP TABLE IF EXISTS `order_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `shipping` varchar(32) DEFAULT NULL,
  `payment` varchar(32) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `freight` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `recipient` json DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_record`
--

LOCK TABLES `order_record` WRITE;
/*!40000 ALTER TABLE `order_record` DISABLE KEYS */;
INSERT INTO `order_record` VALUES (1,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(2,0,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','unpaid'),(3,0,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','unpaid'),(4,0,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(5,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid');
/*!40000 ALTER TABLE `order_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `order_id` bigint(20) unsigned NOT NULL,
  `status` varchar(16) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `rec_trade_id` varchar(32) DEFAULT NULL,
  `bank_transaction_id` varchar(42) DEFAULT NULL,
  `auth_code` varchar(8) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  `card_info` json DEFAULT NULL,
  `acquirer` varchar(128) DEFAULT NULL,
  `card_identifier` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'0','Success','D20190723Uxy4ZR','TP20190723Uxy4ZR','358224',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(2,'121','Invalid arguments : prime',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'121','Invalid arguments : prime',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'0','Success','D2019072341zxES','TP2019072341zxES','827114',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(5,'0','Success','D20190723EaSU8d','TP20190723EaSU8d','962109',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `texture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `wash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `story` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizes` json DEFAULT NULL,
  `main_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'women','前開衩扭結洋裝','厚薄：薄 彈性：無',799,'棉 100%','手洗，溫水','中國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','main_1563245699759.jpg','[\"0_1563245699767.jpg\", \"1_1563245699768.jpg\"]'),(2,'men','純色輕薄百搭襯衫','厚薄：薄 彈性：無',799,'棉 100%','手洗，溫水','中國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\", \"XL\"]','main_1563247944395.jpg','[\"0_1563247944408.jpg\", \"1_1563247944414.jpg\"]'),(3,'men','時尚輕鬆休閒西裝','厚薄：薄 彈性：無',2399,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','main_1563248059934.jpg','[\"0_1563248059943.jpg\", \"1_1563248059945.jpg\"]'),(4,'accessories','夏日海灘戶外遮陽帽','厚薄：薄 彈性：無',1499,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','main_1563248534314.jpg','[\"0_1563248534326.jpg\", \"1_1563248534328.jpg\"]'),(5,'men','經典商務西裝','厚薄：薄 彈性：無',3999,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','main_1563249793833.jpg','[\"0_1563249793836.jpg\", \"1_1563249793838.jpg\"]'),(6,'accessories','經典牛仔帽','厚薄：薄 彈性：無',3999,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','main_1563250126769.jpg','[\"0_1563250126773.jpg\", \"1_1563250126775.jpg\"]'),(7,'women','透肌澎澎薄紗襯衫','厚薄：薄 彈性：無',3999,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','main_1563250167959.jpg','[\"0_1563250167961.jpg\", \"1_1563250167963.jpg\"]'),(8,'women','流行外套','很流行',1000,'破布','只能手洗','火星','穿了很時尚','來自星星的你','[\"XL\"]','main_1563263355263.jpg','[\"0_1563263355275.jpg\", \"1_1563263355276.jpg\"]'),(9,'women','流蘇裙子','穿了很涼',1000,'塑膠繩','不能洗','菜市場','小心穿會壞','經過大法師加持的','[\"XL\"]','main_1563263477251.jpg','[\"0_1563263477254.jpg\", \"1_1563263477256.jpg\"]'),(10,'women','超級酷的褲子','穿了每個人都說酷，小編自己也有買',555,'保鮮膜','清水洗','義大利進口','太胖不要買，穿了會破','最貴的保鮮膜','[\"XL\"]','main_1563263628023.jpg','[\"0_1563263628028.jpg\", \"1_1563263628037.jpg\"]');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `token` (
  `user_id` bigint(20) unsigned NOT NULL,
  `access_token` varchar(127) NOT NULL,
  `access_expired` int(11) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,'2e63fc7743afd06d4c934132ffe71014de8e8df596cda0c055b53001e6b78875',360000,'2019-07-22 17:39:34'),(1,'b99d0e7c8dc6f4d1673cb70143823f9eae201b5f23495f7bd388509d8401c42e',360000,'2019-07-22 17:39:47'),(2,'a10219d41a5906facd71a58ea541cef5d8f64e5c6f1e75dc49b0b68682c80a26',360000,'2019-07-22 17:49:24'),(2,'b7b84a87c00e265ff3e761cee4cba9fa96e870966fd175b7d1875535238e0a52',360000,'2019-07-22 17:49:40'),(2,'a6653d58971476901e7a21f1e40a32efbefece63c22ca46521b2d0d1bb06fd3b',3600,'2019-07-23 14:47:24'),(2,'737f00dccc2e1088ba8d8fcd69a4252dc71eb87dfcaa8c5a3674ba9f99ee2f35',10000000,'2019-07-23 14:47:57');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `provider` varchar(63) NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  `email` varchar(127) DEFAULT NULL,
  `password` varchar(31) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'native','蔡采潔','jecica196@gmail.com','0000','default.png'),(2,'native','蔡采潔','d0177381@gmail.com','0000','default.png'),(3,'facebook','蔡采潔','jecica196@gmail.com',NULL,'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2252592508181751&height=50&width=50&ext=1566289520&hash=AeTun2ThgIzOYBx7'),(4,'native','蔡采潔','jecica1sss96@gmail.com','0000','default.png'),(5,'native','蔡','j121','12','default.png');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `variant` (
  `color_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES ('FFFFFF','白色','S',2,1),('FFFFFF','白色','M',1,1),('FFFFFF','白色','L',2,1),('DDEEBB','亮綠','S',9,1),('DDEEBB','亮綠','M',0,1),('DDEEBB','亮綠','L',5,1),('CCCCCC','淺灰','S',8,1),('CCCCCC','淺灰','M',5,1),('CCCCCC','淺灰','L',9,1),('FFFFFF','白色','M',5,2),('FFFFFF','白色','L',7,2),('FFFFFF','白色','XL',1,2),('DDF0FF','淺藍','M',1,2),('DDF0FF','淺藍','L',4,2),('DDF0FF','淺藍','XL',3,2),('FFFFFF','白色','S',10,3),('FFFFFF','白色','M',5,3),('FFFFFF','白色','L',6,3),('CCCCCC','淺灰','S',1,3),('CCCCCC','淺灰','M',3,3),('CCCCCC','淺灰','L',10,3),('DDF0FF','淺藍','M',7,4),('DDF0FF','淺藍','L',1,4),('BB7744','淺棕','M',3,4),('BB7744','淺棕','L',1,4),('DDF0FF','淺藍','M',7,5),('DDF0FF','淺藍','L',1,5),('BB7744','淺棕','M',3,5),('BB7744','淺棕','L',1,5),('DDF0FF','淺藍','M',7,6),('DDF0FF','淺藍','L',1,6),('BB7744','淺棕','M',3,6),('BB7744','淺棕','L',1,6),('DDF0FF','淺藍','M',7,7),('DDF0FF','淺藍','L',1,7),('BB7744','淺棕','M',3,7),('BB7744','淺棕','L',1,7),('ffffff','白','XL',3,8),('ffffff','白','S',10,9),('ffffff','白','S',10,10);
/*!40000 ALTER TABLE `variant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-23 15:56:13
