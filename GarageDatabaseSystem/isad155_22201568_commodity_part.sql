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
-- Table structure for table `commodity_part`
--

DROP TABLE IF EXISTS `commodity_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commodity_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_name` varchar(20) NOT NULL,
  `part_price` decimal(13,2) NOT NULL,
  `commodity_supplier_id` int(11) NOT NULL,
  `commodity_job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `commodity_supplier_id_idx` (`commodity_supplier_id`),
  KEY `commodity_job_id_idx` (`commodity_job_id`),
  CONSTRAINT `commodity_job_id` FOREIGN KEY (`commodity_job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `commodity_supplier_id` FOREIGN KEY (`commodity_supplier_id`) REFERENCES `commodity_part_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity_part`
--

LOCK TABLES `commodity_part` WRITE;
/*!40000 ALTER TABLE `commodity_part` DISABLE KEYS */;
INSERT INTO `commodity_part` VALUES (3,'nut',0.25,2,9),(4,'screw',0.15,6,11),(5,'bolt',0.99,3,34),(11,'motor oil',1.99,1,12),(67,'spring',2.25,4,55),(68,'WD40',2.89,3,12);
/*!40000 ALTER TABLE `commodity_part` ENABLE KEYS */;
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
