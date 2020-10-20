-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: A2
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
-- Table structure for table `website_priviledges`
--

DROP TABLE IF EXISTS `website_priviledges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_priviledges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `priviledge` varchar(45) DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priviledge_enum_idx` (`priviledge`),
  CONSTRAINT `priviledge_enum` FOREIGN KEY (`priviledge`) REFERENCES `priviledges` (`priviledge`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_priviledges`
--

LOCK TABLES `website_priviledges` WRITE;
/*!40000 ALTER TABLE `website_priviledges` DISABLE KEYS */;
INSERT INTO `website_priviledges` VALUES (1,'write',123,123),(2,'update',123,123),(3,'delete',123,123),(4,'read',123,123),(5,'read',234,123),(46,'write',123,12),(47,'update',123,12),(48,'delete',123,12),(49,'read',123,12),(50,'read',123,23),(51,'update',123,23),(52,'write',123,34),(53,'update',123,34),(54,'delete',123,34),(55,'read',123,34),(56,'write',234,23),(57,'update',234,23),(58,'delete',234,23),(59,'read',234,23),(60,'read',234,34),(61,'update',234,34),(62,'write',234,12),(63,'update',234,12),(64,'delete',234,12),(65,'read',234,12),(66,'write',345,34),(67,'update',345,34),(68,'delete',345,34),(69,'read',345,34),(70,'read',345,12),(71,'update',345,12),(72,'write',345,23),(73,'update',345,23),(74,'delete',345,23),(75,'read',345,23),(76,'write',456,12),(77,'update',456,12),(78,'delete',456,12),(79,'read',456,12),(80,'read',456,23),(81,'update',456,23),(82,'write',456,34),(83,'update',456,34),(84,'delete',456,34),(85,'read',456,34),(86,'write',567,23),(87,'update',567,23),(88,'delete',567,23),(89,'read',567,23),(90,'read',567,34),(91,'update',567,34),(92,'write',567,12),(93,'update',567,12),(94,'delete',567,12),(95,'read',567,12),(96,'write',678,34),(97,'update',678,34),(98,'delete',678,34),(99,'read',678,34),(100,'read',678,12),(101,'update',678,12),(102,'write',678,23),(103,'update',678,23),(104,'delete',678,23),(105,'read',678,23);
/*!40000 ALTER TABLE `website_priviledges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 23:45:07
