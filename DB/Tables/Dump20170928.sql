CREATE DATABASE  IF NOT EXISTS `admin` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `admin`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: admin
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `custom_entity`
--

DROP TABLE IF EXISTS `custom_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_entity` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  `IsFilterAble` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Custom types like String or Integer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_entity`
--

LOCK TABLES `custom_entity` WRITE;
/*!40000 ALTER TABLE `custom_entity` DISABLE KEYS */;
INSERT INTO `custom_entity` VALUES (1,'String',1),(2,'Integer',1);
/*!40000 ALTER TABLE `custom_entity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-28  4:54:15
CREATE DATABASE  IF NOT EXISTS `company` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `company`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `entity`
--

DROP TABLE IF EXISTS `entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

LOCK TABLES `entity` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` VALUES (1,'Address'),(2,'Defect'),(3,'EntityName'),(4,'EntityName1'),(5,'EntityName1'),(6,'EntityName1'),(7,'EntityName1'),(9,'EntityName1'),(12,'EntityName1'),(13,'EntityName1'),(14,'EntityName1'),(15,'EntityName1'),(16,'EntityName1'),(17,'EntityName1'),(22,'EntityName1');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Entity_id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Type_Entity_id` int(11) DEFAULT NULL,
  `Type_Custom_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Field_entity_Id_fk1` (`Entity_id`),
  KEY `Field_entity_Id_fk2` (`Type_Entity_id`),
  KEY `Field_custom_entity_Id_fk` (`Type_Custom_id`),
  CONSTRAINT `Field_custom_entity_Id_fk` FOREIGN KEY (`Type_Custom_id`) REFERENCES `admin`.`custom_entity` (`Id`),
  CONSTRAINT `Field_entity_Id_fk1` FOREIGN KEY (`Entity_id`) REFERENCES `entity` (`Id`),
  CONSTRAINT `Field_entity_Id_fk2` FOREIGN KEY (`Type_Entity_id`) REFERENCES `entity` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

LOCK TABLES `field` WRITE;
/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES (1,1,'Name',NULL,1),(2,2,'Address',1,NULL),(3,2,'Description',NULL,1);
/*!40000 ALTER TABLE `field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integer_value`
--

DROP TABLE IF EXISTS `integer_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integer_value` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Value` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integer_value`
--

LOCK TABLES `integer_value` WRITE;
/*!40000 ALTER TABLE `integer_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `integer_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object`
--

DROP TABLE IF EXISTS `object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Entiti_id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Object_entity_Id_fk` (`Entiti_id`),
  CONSTRAINT `Object_entity_Id_fk` FOREIGN KEY (`Entiti_id`) REFERENCES `entity` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_fields`
--

DROP TABLE IF EXISTS `object_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_fields` (
  `Id` int(11) NOT NULL,
  `Object_id` int(11) NOT NULL,
  `Field_id` int(11) NOT NULL,
  `Value_Object_id` int(11) DEFAULT NULL,
  `Value_String_id` int(11) DEFAULT NULL,
  `Value_Integer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Object_Fields_Id_uindex` (`Id`),
  KEY `object_fields_object_Id_fk1` (`Object_id`),
  KEY `object_fields_field_Id_fk` (`Field_id`),
  KEY `object_fields_object__fk2` (`Value_Object_id`),
  KEY `object_fields_string_value_Id_fk` (`Value_String_id`),
  KEY `object_fields_integer_value_Id_fk` (`Value_Integer_id`),
  CONSTRAINT `object_fields_field_Id_fk` FOREIGN KEY (`Field_id`) REFERENCES `field` (`Id`),
  CONSTRAINT `object_fields_integer_value_Id_fk` FOREIGN KEY (`Value_Integer_id`) REFERENCES `integer_value` (`Id`),
  CONSTRAINT `object_fields_object_Id_fk1` FOREIGN KEY (`Object_id`) REFERENCES `object` (`Id`),
  CONSTRAINT `object_fields_object__fk2` FOREIGN KEY (`Value_Object_id`) REFERENCES `object` (`Id`),
  CONSTRAINT `object_fields_string_value_Id_fk` FOREIGN KEY (`Value_String_id`) REFERENCES `string_value` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_fields`
--

LOCK TABLES `object_fields` WRITE;
/*!40000 ALTER TABLE `object_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `string_value`
--

DROP TABLE IF EXISTS `string_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `string_value` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Value` varchar(10000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string_value`
--

LOCK TABLES `string_value` WRITE;
/*!40000 ALTER TABLE `string_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `string_value` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-28  4:54:16
