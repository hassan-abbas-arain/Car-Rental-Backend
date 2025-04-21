CREATE DATABASE  IF NOT EXISTS `rentacarhub` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rentacarhub`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rentacarhub
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `is_available` bit(1) NOT NULL,
  `year` int NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_id` bigint DEFAULT NULL,
  `rent_per_day` bigint NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh2kf5e6xpgkwbb9m13yleidsa` (`partner_id`),
  CONSTRAINT `FKh2kf5e6xpgkwbb9m13yleidsa` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (_binary '',2023,1,1,6500,'Kia','White','picanto','ABC12'),(_binary '',2021,2,1,8000,'Kia','White','sportage','ABC13'),(_binary '',2017,4,1,5000,'Honda','White','City','ABD12'),(_binary '',2020,5,1,5000,'Honda','Pink','City','ABG11'),(_binary '',2019,6,1,6500,'Toyota','White','Yaris','BC1234'),(_binary '',2022,7,1,6500,'Kia','White','picanto','AB123'),(_binary '',2022,8,1,6500,'Toyota','White','Grandy','FCW123'),(_binary '',2022,9,2,5500,'Suzuki','White','Swift','qwe12'),(_binary '',2021,10,3,6500,'Totoya ','White','Yaris','ABC15'),(_binary '',2022,11,3,5000,'Honda','White','City','HKH12'),(_binary '',2023,12,3,5500,'Suzuki','White','Swift','HG123'),(_binary '',2012,13,3,5800,'Suzuki','White','Ciaz','RTE12'),(_binary '',2023,14,3,6500,'Totoya ','White','Vitz','GL123'),(_binary '',2021,15,3,6500,'E.S','White','Mira','TT123'),(_binary '',2023,16,3,6500,'Totoya ','White','Camry','RW123'),(_binary '',2023,17,3,6500,'Totoya ','White','Grandy','YU123'),(_binary '',2022,18,3,6500,'Totoya ','White','Grandy','HAC1234'),(_binary '',2023,19,3,6500,'Totoya','White','Camry','QWD12'),(_binary '',2021,20,3,5000,'Honda','White','City','QWS12'),(_binary '',2022,21,1,6500,'Totoya ','White','Grandy','BBD12'),(_binary '',2021,22,1,6500,'Totoya ','White','Grandy','QWE13');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30  0:08:38
