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
INSERT INTO `token` VALUES (1,'e2c235a554aa2726ee6b2860c92c57f0bf9df3b53a1048039de465940206caac',60,'2019-07-19 10:03:25'),(1,'d3e558c4b241231c1035ea229be2e1f4441a32395adb3e2d0d3737b18e509968',3600,'2019-07-19 10:03:54'),(2,'66d26e6654ac47f8ee5f6735cef517c520954c69f5fed0985fd1b9240b021411',3600,'2019-07-19 10:05:23'),(2,'e1d560b5f73198ca93256f8a741f4136df22ce3ccaa9ee55ae26bfb2b259c7d9',3600,'2019-07-19 10:06:07'),(3,'b32ca23205c1b85982ffbf4acb4cd61092770ed3fc17d14a700be77c5ec5c77d',3600,'2019-07-19 10:06:26'),(2,'24b9beff6a67341e9877b633dc82fc5ce1b33029be4c14fb4c35cdbb41debb30',3600,'2019-07-19 10:07:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'native','蔡采潔','d0177381@gmail.com','0000','2_1563501804930.jpg'),(2,'native','蔡采潔','jecica196@gmail.com','0000','0_1563501922987.jpg'),(3,'native','蔡采潔','test123@gmail.com','0000','4_1563501986419.jpg');
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

-- Dump completed on 2019-07-19 10:15:29
