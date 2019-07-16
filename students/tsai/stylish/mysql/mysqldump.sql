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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(16) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `texture` varchar(255) DEFAULT NULL,
  `wash` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `story` varchar(255) DEFAULT NULL,
  `sizes` json DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `images` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'women','前開衩扭結洋裝','厚薄：薄 彈性：無',799,'棉 100%','手洗，溫水','中國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','main_1563245699759.jpg','[\"0_1563245699767.jpg\", \"1_1563245699768.jpg\"]'),(2,'men','純色輕薄百搭襯衫','厚薄：薄 彈性：無',799,'棉 100%','手洗，溫水','中國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\", \"XL\"]','main_1563247944395.jpg','[\"0_1563247944408.jpg\", \"1_1563247944414.jpg\"]'),(3,'men','時尚輕鬆休閒西裝','厚薄：薄 彈性：無',2399,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','main_1563248059934.jpg','[\"0_1563248059943.jpg\", \"1_1563248059945.jpg\"]'),(4,'accessories','夏日海灘戶外遮陽帽','厚薄：薄 彈性：無',1499,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','main_1563248534314.jpg','[\"0_1563248534326.jpg\", \"1_1563248534328.jpg\"]'),(5,'men','經典商務西裝','厚薄：薄 彈性：無',3999,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','main_1563249793833.jpg','[\"0_1563249793836.jpg\", \"1_1563249793838.jpg\"]'),(6,'accessories','經典牛仔帽','厚薄：薄 彈性：無',3999,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','main_1563250126769.jpg','[\"0_1563250126773.jpg\", \"1_1563250126775.jpg\"]'),(7,'women','透肌澎澎薄紗襯衫','厚薄：薄 彈性：無',3999,'棉 100%','手洗，溫水','韓國','實品顏色依單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','main_1563250167959.jpg','[\"0_1563250167961.jpg\", \"1_1563250167963.jpg\"]');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `variant` (
  `color_code` varchar(16) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `size` varchar(16) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `product_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES ('FFFFFF','白色','S',2,1),('FFFFFF','白色','M',1,1),('FFFFFF','白色','L',2,1),('DDEEBB','亮綠','S',9,1),('DDEEBB','亮綠','M',0,1),('DDEEBB','亮綠','L',5,1),('CCCCCC','淺灰','S',8,1),('CCCCCC','淺灰','M',5,1),('CCCCCC','淺灰','L',9,1),('FFFFFF','白色','M',5,2),('FFFFFF','白色','L',7,2),('FFFFFF','白色','XL',1,2),('DDF0FF','淺藍','M',1,2),('DDF0FF','淺藍','L',4,2),('DDF0FF','淺藍','XL',3,2),('FFFFFF','白色','S',10,3),('FFFFFF','白色','M',5,3),('FFFFFF','白色','L',6,3),('CCCCCC','淺灰','S',1,3),('CCCCCC','淺灰','M',3,3),('CCCCCC','淺灰','L',10,3),('DDF0FF','淺藍','M',7,4),('DDF0FF','淺藍','L',1,4),('BB7744','淺棕','M',3,4),('BB7744','淺棕','L',1,4),('DDF0FF','淺藍','M',7,5),('DDF0FF','淺藍','L',1,5),('BB7744','淺棕','M',3,5),('BB7744','淺棕','L',1,5),('DDF0FF','淺藍','M',7,6),('DDF0FF','淺藍','L',1,6),('BB7744','淺棕','M',3,6),('BB7744','淺棕','L',1,6),('DDF0FF','淺藍','M',7,7),('DDF0FF','淺藍','L',1,7),('BB7744','淺棕','M',3,7),('BB7744','淺棕','L',1,7);
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

-- Dump completed on 2019-07-16 12:26:50
