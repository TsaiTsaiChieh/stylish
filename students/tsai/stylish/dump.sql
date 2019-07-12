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
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `texture` varchar(255) DEFAULT NULL,
  `wash` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `story` varchar(255) DEFAULT NULL,
  `colors` json DEFAULT NULL,
  `sizes` json DEFAULT NULL,
  `variants` json DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `images` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度)','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','[{\"code\": \"334455\", \"name\": \"深藍\"}, {\"code\": \"ffffff\", \"name\": \"白色\"}]','[\"S\", \"M\"]','[{\"size\": \"S\", \"stock\": 5, \"color_code\": \"334455\"}, {\"size\": \"M\", \"stock\": 0, \"color_code\": \"FFFFFF\"}]','https://stylish.com/main.jpg','[\"https://stylish.com/0.jpg\", \"https://stylish.com/1.jpg\", \"https://stylish.com/2.jpg\"]'),(2,'厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-12 14:56:52
