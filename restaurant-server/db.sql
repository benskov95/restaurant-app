CREATE DATABASE  IF NOT EXISTS `startcode` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `startcode`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: startcode
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `item_type`
--

DROP TABLE IF EXISTS `item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_type`
--

LOCK TABLES `item_type` WRITE;
/*!40000 ALTER TABLE `item_type` DISABLE KEYS */;
INSERT INTO `item_type` VALUES (1,'Burgers'),(2,'Pizza'),(3,'Dürüm'),(4,'Sides'),(5,'Drinks');
/*!40000 ALTER TABLE `item_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type`) REFERENCES `item_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (1,'Burger 1','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4',60,1),(2,'Burger 2','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4',75,1),(3,'Burger 3','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5',75,1),(4,'Burger 4','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4',90,1),(5,'Burger 5','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5, Ingredient 6',90,1),(6,'Burger 6','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5, Ingredient 6',100,1),(7,'Pizza 1','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4',70,2),(8,'Pizza 2','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4',70,2),(9,'Pizza 3','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4',70,2),(10,'Pizza 4','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5',90,2),(11,'Dürüm 1','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5',40,3),(12,'Dürüm 2','Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5',50,3),(13,'Side 1','Description',15,4),(14,'Side 2','Description',15,4),(15,'Side 3','Description',20,4),(16,'Side 4','Description',25,4),(17,'Drink 1','Description',20,5),(18,'Drink 2','Description',20,5),(19,'Drink 3','Description',20,5),(20,'Drink 4','Description',50,5);
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-04  1:24:55
