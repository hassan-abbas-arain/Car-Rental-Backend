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
-- Table structure for table `partner_payment_info`
--

DROP TABLE IF EXISTS `partner_payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner_payment_info` (
  `end_date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `partner_id` bigint DEFAULT NULL,
  `rent_per_day` bigint DEFAULT NULL,
  `reservation_id` bigint DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9l77i41dgpih0fjpm6v48i9mm` (`partner_id`),
  KEY `FKog9n02e4sn38nivg0nuy0h37n` (`reservation_id`),
  CONSTRAINT `FK9l77i41dgpih0fjpm6v48i9mm` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  CONSTRAINT `FKog9n02e4sn38nivg0nuy0h37n` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_payment_info`
--

LOCK TABLES `partner_payment_info` WRITE;
/*!40000 ALTER TABLE `partner_payment_info` DISABLE KEYS */;
INSERT INTO `partner_payment_info` VALUES ('2023-12-08 00:00:00.000000',1,1,6400,NULL,'2023-12-06 00:00:00.000000','ABC13'),('2023-12-16 00:00:00.000000',5,1,18000,NULL,'2023-12-07 00:00:00.000000','ABD12'),('2023-12-10 00:00:00.000000',6,2,6600,NULL,'2023-12-07 00:00:00.000000','qwe12'),('2023-12-10 00:00:00.000000',7,1,7800,NULL,'2023-12-07 00:00:00.000000','BC1234'),('2023-12-08 00:00:00.000000',8,3,2600,NULL,'2023-12-07 00:00:00.000000','TT123'),('2023-12-07 00:00:00.000000',11,1,2600,NULL,'2023-12-07 00:00:00.000000','FCW123'),('2023-12-17 00:00:00.000000',12,1,2600,NULL,'2023-12-16 00:00:00.000000','BC1234'),('2023-12-18 00:00:00.000000',13,1,4000,NULL,'2023-12-16 00:00:00.000000','ABD12'),('2024-01-05 00:00:00.000000',14,1,6400,NULL,'2024-01-03 00:00:00.000000','ABC13');
/*!40000 ALTER TABLE `partner_payment_info` ENABLE KEYS */;
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
