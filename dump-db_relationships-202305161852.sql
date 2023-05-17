-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: db_relationships
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `citizen_id` int(10) unsigned DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `make` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_FK` (`citizen_id`),
  CONSTRAINT `car_FK` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES
(1,1,2021,'Tacoma','Toyota'),
(2,2,1990,'Cherokee','Jeep'),
(3,2,2008,'Escape','Ford'),
(4,1,2023,'3','Mazda');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen`
--

DROP TABLE IF EXISTS `citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citizen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(130) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `data_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen`
--

LOCK TABLES `citizen` WRITE;
/*!40000 ALTER TABLE `citizen` DISABLE KEYS */;
INSERT INTO `citizen` VALUES
(1,'Citizen One','123 70 AVE SW Edmonton','888-963-5689','1990-05-13'),
(2,'Citizen Two','5698 64 ST SE Calgary','693-714-5798','2001-06-18');
/*!40000 ALTER TABLE `citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_account`
--

DROP TABLE IF EXISTS `tax_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_account` (
  `date_created` timestamp NULL DEFAULT NULL,
  `account_number` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `citizen_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tax_account_UN` (`id`,`citizen_id`),
  KEY `tax_account_FK` (`citizen_id`),
  CONSTRAINT `tax_account_FK` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_account`
--

LOCK TABLES `tax_account` WRITE;
/*!40000 ALTER TABLE `tax_account` DISABLE KEYS */;
INSERT INTO `tax_account` VALUES
('2023-05-17 00:05:43',789665478,3,2);
/*!40000 ALTER TABLE `tax_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_relationships'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 18:52:18
