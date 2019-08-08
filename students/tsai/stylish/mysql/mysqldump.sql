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
  `picture` varchar(255) DEFAULT NULL,
  `story` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,1,'https://s3.us-east-2.amazonaws.com/stylish.bucket/campaigns/0_1565184020448.jpg','於是 我也想要給你 一個那麼美好的自己。 不朽《與自己和好如初》'),(2,2,'https://s3.us-east-2.amazonaws.com/stylish.bucket/campaigns/1_1565184047823.jpg','永遠 展現自信與專業 無法抵擋的男人魅力。 復古《再一次經典》'),(3,3,'https://s3.us-east-2.amazonaws.com/stylish.bucket/campaigns/2_1565184104607.jpg','瞬間 在城市的角落 找到失落多時的記憶。 印象《都會故事集》');
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
INSERT INTO `order_list` VALUES (1,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(2,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(3,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(4,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(5,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(6,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(7,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(8,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(9,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(10,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(11,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(12,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(13,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(14,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(15,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(16,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(17,3,'活力花紋長筒牛仔褲',999,'DDF0FF','淺藍','M',1),(18,6,'時尚輕鬆休閒西裝',2399,'FFFFFF','白色','S',1),(19,6,'時尚輕鬆休閒西裝',2399,'FFFFFF','白色','S',1),(20,6,'時尚輕鬆休閒西裝',2399,'FFFFFF','白色','S',1),(21,6,'時尚輕鬆休閒西裝',2399,'FFFFFF','白色','S',1),(22,10,'卡哇伊多功能隨身包',1299,'FFFFFF','白色','F',1),(24,1,'前開衩扭結洋裝',799,'FFFFFF','白色','S',1),(25,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(26,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(27,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(28,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(29,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(30,4,'活力花紋長筒牛仔褲',1299,'DDF0FF','淺藍','S',1),(31,1,'前開衩扭結洋裝',799,'FFFFFF','白色','S',1),(32,5,'純色輕薄百搭襯衫',799,'FFFFFF','白色','M',1),(33,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(34,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(35,3,'小扇紋細織上衣',599,'DDFFBB','亮綠','S',1),(36,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(37,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(38,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(39,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(40,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(41,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(42,5,'純色輕薄百搭襯衫',799,'FFFFFF','白色','M',1),(43,4,'活力花紋長筒牛仔褲',1299,'DDF0FF','淺藍','S',1),(44,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(45,3,'小扇紋細織上衣',599,'DDFFBB','亮綠','S',1),(46,3,'小扇紋細織上衣',599,'DDFFBB','亮綠','S',1),(47,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(48,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(49,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(50,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(51,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(52,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(53,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(54,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(55,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(56,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(57,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(58,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(59,9,'經典牛仔帽',799,'BB7744','淺棕','M',1),(60,8,'夏日海灘戶外遮陽帽',1499,'DDF0FF','淺藍','M',1),(61,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1),(62,6,'時尚輕鬆休閒西裝',2399,'FFFFFF','白色','S',1),(63,2,'透肌澎澎防曬襯衫',599,'DDFFBB','亮綠','S',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_record`
--

LOCK TABLES `order_record` WRITE;
/*!40000 ALTER TABLE `order_record` DISABLE KEYS */;
INSERT INTO `order_record` VALUES (1,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(2,0,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','unpaid'),(3,0,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','unpaid'),(4,0,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(5,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(6,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(7,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(8,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(9,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(10,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(11,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(12,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(13,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(14,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(15,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(16,2,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(17,0,'delivery','credit_card',1299,60,1359,'[{\"id\": \"3\", \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 999}]','paid'),(18,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 6, \"qty\": 1, \"name\": \"時尚輕鬆休閒西裝\", \"size\": \"S\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 2399}]','paid'),(19,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 6, \"qty\": 1, \"name\": \"時尚輕鬆休閒西裝\", \"size\": \"S\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 2399}]','paid'),(20,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 6, \"qty\": 1, \"name\": \"時尚輕鬆休閒西裝\", \"size\": \"S\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 2399}]','paid'),(21,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 6, \"qty\": 1, \"name\": \"時尚輕鬆休閒西裝\", \"size\": \"S\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 2399}]','paid'),(22,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 10, \"qty\": 1, \"name\": \"卡哇伊多功能隨身包\", \"size\": \"F\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 1299}]','paid'),(23,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 10, \"qty\": 1, \"name\": \"卡哇伊多功能隨身包\", \"size\": \"F\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 1299}]','unpaid'),(24,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 1, \"qty\": 1, \"name\": \"前開衩扭結洋裝\", \"size\": \"S\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 799}]','paid'),(25,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(26,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(27,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(28,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(29,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(30,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 4, \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"S\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 1299}]','paid'),(31,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 1, \"qty\": 1, \"name\": \"前開衩扭結洋裝\", \"size\": \"S\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 799}]','paid'),(32,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 5, \"qty\": 1, \"name\": \"純色輕薄百搭襯衫\", \"size\": \"M\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 799}]','paid'),(33,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(34,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(35,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 3, \"qty\": 1, \"name\": \"小扇紋細織上衣\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(36,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(37,2,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(38,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(39,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(40,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(41,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(42,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 5, \"qty\": 1, \"name\": \"純色輕薄百搭襯衫\", \"size\": \"M\", \"color\": {\"code\": \"FFFFFF\", \"name\": \"白色\"}, \"price\": 799}]','paid'),(43,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 4, \"qty\": 1, \"name\": \"活力花紋長筒牛仔褲\", \"size\": \"S\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 1299}]','paid'),(44,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(45,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 3, \"qty\": 1, \"name\": \"小扇紋細織上衣\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(46,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 3, \"qty\": 1, \"name\": \"小扇紋細織上衣\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(47,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(48,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(49,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(50,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(51,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(52,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(53,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(54,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(55,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(56,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(57,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','unpaid'),(58,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(59,0,'delivery','credit_card',1299,60,1359,'[{\"id\": 9, \"qty\": 1, \"name\": \"經典牛仔帽\", \"size\": \"M\", \"color\": {\"code\": \"BB7744\", \"name\": \"淺棕\"}, \"price\": 799}]','paid'),(60,1,'delivery','credit_card',1299,60,1359,'[{\"id\": 8, \"qty\": 1, \"name\": \"夏日海灘戶外遮陽帽\", \"size\": \"M\", \"color\": {\"code\": \"DDF0FF\", \"name\": \"淺藍\"}, \"price\": 1499}]','paid'),(61,10,'delivery','credit_card',1299,60,1359,'[{\"id\": 2, \"qty\": 1, \"name\": \"透肌澎澎防曬襯衫\", \"size\": \"S\", \"color\": {\"code\": \"DDFFBB\", \"name\": \"亮綠\"}, \"price\": 599}]','paid'),(62,10,'delivery','credit_card',1299,60,1359,'{\"name\": \"蔡采潔\", \"time\": \"morning\", \"email\": \"eee\", \"address\": \"大社村大漢街63巷5號5樓\", \"phone_number\": \"0953508900\"}','paid'),(63,1,'delivery','credit_card',1299,60,1359,'{\"name\": \"test\", \"time\": \"morning\", \"email\": \"jecica196@yahoo.com\", \"address\": \"test\", \"phone_number\": \"0987654321\"}','paid');
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
INSERT INTO `payment` VALUES (1,'0','Success','D20190723Uxy4ZR','TP20190723Uxy4ZR','358224',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(2,'121','Invalid arguments : prime',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'121','Invalid arguments : prime',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'0','Success','D2019072341zxES','TP2019072341zxES','827114',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(5,'0','Success','D20190723EaSU8d','TP20190723EaSU8d','962109',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(6,'0','Success','D20190723p9hYx0','TP20190723p9hYx0','777301',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(7,'0','Success','D20190723cZomPB','TP20190723cZomPB','458143',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(8,'0','Success','D20190723MsP1Jb','TP20190723MsP1Jb','979242',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(9,'0','Success','D20190723tXlHka','TP20190723tXlHka','209281',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(10,'0','Success','D20190723JfpQoQ','TP20190723JfpQoQ','834340',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(11,'0','Success','D20190723T9xOl8','TP20190723T9xOl8','976514',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(12,'0','Success','D20190723AMSBrZ','TP20190723AMSBrZ','504074',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(13,'0','Success','D201907238obW7t','TP201907238obW7t','753360',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(14,'0','Success','D20190723rI94b8','TP20190723rI94b8','249357',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(15,'0','Success','D20190723SeyMjS','TP20190723SeyMjS','862405',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(16,'0','Success','D20190723id6x70','TP20190723id6x70','028046',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(17,'0','Success','D20190723qsgiip','TP20190723qsgiip','619966',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(18,'0','Success','D20190725DR2xtj','TP20190725DR2xtj','107172',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(19,'0','Success','D20190725nWIJtl','TP20190725nWIJtl','034918',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(20,'0','Success','D201907250A7kXR','TP201907250A7kXR','948892',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(21,'0','Success','D201907250FqHSp','TP201907250FqHSp','077608',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(22,'0','Success','D20190725bq5Eqv','TP20190725bq5Eqv','461882',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(24,'0','Success','D20190726eb8bR1','TP20190726eb8bR1','872944',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(25,'0','Success','D20190726hMsns2','TP20190726hMsns2','275612',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(26,'0','Success','D20190726tEM7sZ','TP20190726tEM7sZ','617300',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(27,'0','Success','D20190726GG2cMX','TP20190726GG2cMX','020662',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(28,'0','Success','D20190726aMrTwc','TP20190726aMrTwc','216008',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(29,'0','Success','D20190726Cp7IIf','TP20190726Cp7IIf','506531',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(30,'0','Success','D20190726S3Lplz','TP20190726S3Lplz','077141',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(31,'0','Success','D20190726elCwOc','TP20190726elCwOc','640405',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(32,'0','Success','D2019072690ayo4','TP2019072690ayo4','136718',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(33,'0','Success','D20190726httKoU','TP20190726httKoU','665377',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(34,'0','Success','D20190726QnjEpV','TP20190726QnjEpV','277970',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(35,'121','Invalid arguments : prime',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'0','Success','D20190726jjm27l','TP20190726jjm27l','702978',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(43,'0','Success','D20190726DXzDBH','TP20190726DXzDBH','490615',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(44,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'0','Success','D20190726tzy7ke','TP20190726tzy7ke','312385',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(46,'0','Success','D20190726TJoPBi','TP20190726TJoPBi','457287',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(47,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'501','Missing arguments : cardholder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'0','Success','D20190726uDOMx3','TP20190726uDOMx3','422702',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(59,'0','Success','D20190726qyIxkU','TP20190726qyIxkU','151926',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(60,'0','Success','D20190726wxC9ku','TP20190726wxC9ku','770448',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(61,'0','Success','D20190726qKLKtL','TP20190726qKLKtL','198494',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(62,'0','Success','D2019072630lj7g','TP2019072630lj7g','098346',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b'),(63,'0','Success','D20190731ENMjKt','TP20190731ENMjKt','849753',100,'TWD','{\"type\": 1, \"level\": \"\", \"issuer\": \"\", \"bank_id\": \"\", \"country\": \"UNITED KINGDOM\", \"funding\": 0, \"bin_code\": \"424242\", \"last_four\": \"4242\", \"country_code\": \"GB\", \"issuer_zh_tw\": \"\"}','TW_CTBC','dee921560b074be7a860a6b44a80c21b');
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
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'women','前開衩扭結洋裝','厚薄：薄 彈性：無',799,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563966514971.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563966514976.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563966514977.jpg\"]'),(2,'women','透肌澎澎防曬襯衫','厚薄：薄 彈性：無',599,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563966804195.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563966804197.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563966804198.jpg\"]'),(3,'women','小扇紋細織上衣','厚薄：薄 彈性：無',599,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563966920261.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563966920262.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563966920263.jpg\"]'),(4,'women','活力花紋長筒牛仔褲','厚薄：薄 彈性：無',1299,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563967090732.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563967090735.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563967090735.jpg\"]'),(5,'men','純色輕薄百搭襯衫','厚薄：薄 彈性：無',799,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\", \"XL\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563967250855.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563967250856.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563967250861.jpg\"]'),(6,'men','時尚輕鬆休閒西裝','厚薄：薄 彈性：無',2399,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563967797550.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563967797557.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563967797589.jpg\"]'),(7,'men','經典商務西裝','厚薄：薄 彈性：無',3999,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\", \"XL\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563967891681.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563967891682.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563967891683.jpg\"]'),(8,'accessories','夏日海灘戶外遮陽帽','厚薄：薄 彈性：無',1499,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563967985527.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563967985529.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563967985531.jpg\"]'),(9,'accessories','經典牛仔帽','厚薄：薄 彈性：無',799,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"M\", \"L\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563968113050.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563968113051.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563968113053.jpg\"]'),(10,'accessories','卡哇伊多功能隨身包','厚薄：薄 彈性：無',1299,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"F\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563968170121.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563968170122.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563968170123.jpg\"]'),(11,'accessories','柔軟氣質羊毛圍巾','厚薄：薄 彈性：無',1799,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"F\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1563968667845.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1563968667846.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1563968667850.jpg\"]'),(12,'women','前開衩扭結洋裝','厚薄：薄 彈性：無',799,'棉 100%','手洗，溫水','中國','實品顏色以單品照為主','O.N.S is all about options, which is why we took our staple polo shirt and upgraded it with slubby linen jersey, making it even lighter for those who prefer their summer style extra-breezy.','[\"S\", \"M\", \"L\"]','https://s3.us-east-2.amazonaws.com/stylish.bucket/products/main_1564409446241.jpg','[\"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/0_1564409446253.jpg\", \"https://s3.us-east-2.amazonaws.com/stylish.bucket/products/1_1564409446254.jpg\"]');
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
INSERT INTO `token` VALUES (2,'737f00dccc2e1088ba8d8fcd69a4252dc71eb87dfcaa8c5a3674ba9f99ee2f35',10000000,'2019-07-23 14:47:57');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'native','蔡采潔','jecica196@gmail.com','0000','default.png'),(2,'native','蔡采潔','d0177381@gmail.com','0000','default.png'),(3,'facebook','蔡采潔','jecica196@gmail.com',NULL,'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2252592508181751&height=50&width=50&ext=1566979391&hash=AeRSqwf_7ojdND7X'),(4,'native','蔡采潔','jecica1sss96@gmail.com','0000','default.png'),(5,'native','蔡','j121','12','default.png'),(6,'native','王大明','test@gmail.com','0000','default.png'),(7,'native','test123','test123','test123','default.png'),(8,'native','蔡采潔','test123333','1221','default.png'),(9,'native','蔡采潔','ttt@gmail.com','0000','default.png'),(10,'native','蔡采潔','ccc','0000','default.png');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES ('FFFFFF','白色','S',2,1),('FFFFFF','白色','M',1,1),('FFFFFF','白色','L',2,1),('DDFFBB','亮綠','S',9,1),('DDFFBB','亮綠','M',0,1),('DDFFBB','亮綠','L',5,1),('CCCCCC','淺灰','S',8,1),('CCCCCC','淺灰','M',5,1),('CCCCCC','淺灰','L',9,1),('DDFFBB','亮綠','S',7,2),('DDFFBB','亮綠','M',5,2),('DDFFBB','亮綠','L',8,2),('CCCCCC','淺灰','S',1,2),('CCCCCC','淺灰','M',6,2),('CCCCCC','淺灰','L',2,2),('DDFFBB','亮綠','S',3,3),('DDFFBB','亮綠','M',5,3),('CCCCCC','淺灰','S',4,3),('CCCCCC','淺灰','M',1,3),('BB7744','淺棕','S',2,3),('BB7744','淺棕','M',6,3),('DDF0FF','淺藍','S',8,4),('DDF0FF','淺藍','M',5,4),('DDF0FF','淺藍','L',6,4),('CCCCCC','淺灰','S',0,4),('CCCCCC','淺灰','M',6,4),('CCCCCC','淺灰','L',5,4),('334455','深藍','S',2,4),('334455','深藍','M',7,4),('334455','深藍','L',9,4),('FFFFFF','白色','M',5,5),('FFFFFF','白色','L',7,5),('FFFFFF','白色','XL',1,5),('DDF0FF','淺藍','M',1,5),('DDF0FF','淺藍','L',4,5),('DDF0FF','淺藍','XL',3,5),('FFFFFF','白色','S',10,6),('FFFFFF','白色','M',5,6),('FFFFFF','白色','L',6,6),('CCCCCC','淺灰','S',1,6),('CCCCCC','淺灰','M',3,6),('CCCCCC','淺灰','L',10,6),('334455','深藍','S',9,7),('334455','深藍','M',5,7),('334455','深藍','L',1,7),('334455','深藍','XL',9,7),('DDF0FF','淺藍','M',7,8),('DDF0FF','淺藍','L',1,8),('BB7744','淺棕','M',3,8),('BB7744','淺棕','L',1,8),('BB7744','淺棕','M',5,9),('BB7744','淺棕','L',1,9),('334455','深藍','M',5,9),('334455','深藍','L',2,9),('FFFFFF','白色','F',1,10),('FFDDDD','粉紅','F',1,10),('FFFFFF','白色','F',4,11),('DDF0FF','淺藍','F',7,11),('FFFFFF','白色','S',2,12),('FFFFFF','白色','M',1,12),('FFFFFF','白色','L',2,12),('DDFFBB','亮綠','S',9,12),('DDFFBB','亮綠','M',0,12),('DDFFBB','亮綠','L',5,12),('CCCCCC','淺灰','S',8,12),('CCCCCC','淺灰','M',5,12),('CCCCCC','淺灰','L',9,12),('334455','白','S',2,13),('ffffff','淺藍','L',8,13);
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

-- Dump completed on 2019-08-08 14:49:53
