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
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `allocated_staff_id` int(11) NOT NULL,
  `job_work_plan_id` int(11) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `estimated_completion_date_time` datetime NOT NULL,
  `completion_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `allocated_staff_id_idx` (`allocated_staff_id`),
  KEY `job_work_plan_id_idx` (`job_work_plan_id`),
  CONSTRAINT `job_work_plan_id` FOREIGN KEY (`job_work_plan_id`) REFERENCES `work_plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `allocated_staff_id` FOREIGN KEY (`allocated_staff_id`) REFERENCES `staff_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'replace V8 engine',1,1,'2017-12-23 09:00:00','2017-12-02 09:00:00','0000-00-00 00:00:00'),(2,'install new seat',2,23,'2017-12-13 09:00:00','2017-12-15 09:00:00','2017-12-01 19:20:00'),(3,'fit new steering wheel',3,34,'2017-12-03 09:00:00','2017-12-05 09:00:00','2017-12-03 09:50:00'),(4,'apply unique bolt',4,35,'2017-12-19 09:00:00','2017-12-20 09:00:00','2017-12-02 18:25:00'),(5,'fit unique screw',5,56,'2017-12-12 09:00:00','2017-12-13 09:00:00','0000-00-00 00:00:00'),(9,'re-screw seat material',6,1,'2017-12-23 09:00:00','2017-12-01 09:00:00','2017-12-01 10:00:00'),(11,'replace sping in dash',6,23,'2017-12-01 14:00:00','2016-12-08 09:00:00','2017-12-03 09:00:00'),(12,'replace fautly wheel nut',6,34,'2017-12-03 12:00:00','2016-12-03 13:00:00','2017-12-03 13:30:00'),(34,'add new chasis bolt',4,35,'2017-12-02 13:00:00','2017-12-02 17:00:00','2017-12-02 16:45:00'),(55,'top up motor oil',1,56,'2017-12-04 11:00:00','2017-12-04 12:00:00','2017-12-04 13:00:00');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
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
