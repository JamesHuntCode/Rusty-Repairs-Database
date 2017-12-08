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
-- Table structure for table `work_plan`
--

DROP TABLE IF EXISTS `work_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_plan_car_id` int(11) NOT NULL,
  `work_plan_customer_id` int(11) NOT NULL,
  `booking_date` datetime NOT NULL,
  `estimated_completion_date_time` datetime NOT NULL,
  `completion_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `work_plan_car_id_idx` (`work_plan_car_id`),
  KEY `work_plan_customer_id_idx` (`work_plan_customer_id`),
  CONSTRAINT `work_plan_car_id` FOREIGN KEY (`work_plan_car_id`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `work_plan_customer_id` FOREIGN KEY (`work_plan_customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_plan`
--

LOCK TABLES `work_plan` WRITE;
/*!40000 ALTER TABLE `work_plan` DISABLE KEYS */;
INSERT INTO `work_plan` VALUES (1,9,1,'2017-11-23 12:45:00','2017-12-03 19:00:00','2017-12-04 19:00:00'),(23,77,44,'2017-11-30 09:30:00','2017-12-18 17:00:00','2017-12-17 17:00:00'),(34,67,34,'2017-11-28 11:50:00','2017-12-10 09:00:00','2017-12-11 09:00:00'),(35,12,15,'2017-11-29 17:45:00','2017-12-07 15:00:00','2017-12-06 15:00:00'),(56,45,23,'2017-11-29 13:45:00','2017-12-09 13:00:00','2017-12-10 13:00:00'),(60,12,3345,'2017-12-26 09:00:00','2017-12-29 19:00:00','2017-12-28 09:00:00'),(66,12,3345,'2018-01-26 09:00:00','2018-02-02 09:00:00','2018-02-03 09:00:00'),(78,45,23,'2018-01-26 18:00:00','2018-02-01 09:00:00','2018-02-02 11:00:00'),(81,45,23,'2018-03-26 09:30:00','2018-05-01 09:00:00','2018-04-22 12:00:00');
/*!40000 ALTER TABLE `work_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-08 10:36:39
