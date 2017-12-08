-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: xserve    Database: isad155_22201568
-- ------------------------------------------------------
-- Server version	5.6.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `special_part`
--

DROP TABLE IF EXISTS `special_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_code` varchar(20) NOT NULL,
  `part_name` varchar(30) NOT NULL,
  `part_price` decimal(13,2) NOT NULL,
  `special_supplier_id` int(11) NOT NULL,
  `special_job_id` int(11) NOT NULL,
  `return_confirmation` varchar(20) DEFAULT NULL,
  `return_reason` varchar(50) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `special_part_supplier_idx` (`special_supplier_id`),
  KEY `special_job_id_idx` (`special_job_id`),
  CONSTRAINT `special_job_id` FOREIGN KEY (`special_job_id`) REFERENCES `job` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `special_part_supplier` FOREIGN KEY (`special_supplier_id`) REFERENCES `special_part_supplier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_part`
--

LOCK TABLES `special_part` WRITE;
/*!40000 ALTER TABLE `special_part` DISABLE KEYS */;
INSERT INTO `special_part` VALUES (1,'334C5','unique bolt',23.99,4,4,NULL,NULL,NULL),(23,'AA345','V8 engine',999.99,1,1,'456545','not functional','2017-04-27'),(34,'B9890','VW seat',234.99,2,2,NULL,NULL,NULL),(56,'CCA90','unique screw',18.99,5,5,'334398','screw arrived snapped','2017-04-13'),(65,'AV87A','custom steering wheel',119.99,3,3,NULL,NULL,NULL),(66,'88ABC','roll cage',4999.99,5,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `special_part` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-08 10:36:38
