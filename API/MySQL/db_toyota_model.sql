-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_toyota
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `power` varchar(45) NOT NULL,
  `fuel` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Toyota Auris','90-116 CV','Diesel, gasoline','20.920€'),(2,'Toyota Auris Hybrid','136 CV','Diesel, gasoline','22.810€'),(3,'Toyota Auris Touring Sports','90-116 CV','Diesel, gasoline','21.870€'),(4,'Toyota Auris Touring Sports Hybrid','136 CV','Diesel, gasoline','23.810€'),(5,'Toyota Avensis Sedan','112-147 CV','Diesel, gasoline','27.800€'),(6,'Toyota Avensis Touring Sports','112-147 CV','Diesel, gasoline','28.500€'),(7,'Toyota Aygo','72 CV','Gasoline','13.190€'),(8,'Toyota Yaris 3P','69-111 CV','Gasoline','14.850€'),(9,'Toyota Yaris 5P','69-111 CV','Gasoline','15.350€'),(10,'Toyota Yaris GRMN','212 CV','Gasoline','29.900€'),(11,'Toyota Yaris Hybrid','75 CV','Gasoline','21.000€'),(12,'Toyota GT86','200 CV','Gasoline','34.490€'),(13,'Toyota Land Cruiser 3P','177 CV','Diesel','38.850€'),(14,'Toyota Land Cruiser 5P','177 CV','Diesel','41.900€'),(15,'Toyota RAV4','150-151 CV','Diesel, Gasoline','30.550€'),(27,'Toyota Prius Hybrid','122 CV','Gasoline','29.339€');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-21 13:57:08
