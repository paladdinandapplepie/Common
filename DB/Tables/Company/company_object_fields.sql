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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-28  0:11:22
