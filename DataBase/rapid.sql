CREATE DATABASE  IF NOT EXISTS `onlineexamsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `onlineexamsystem`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: onlineexamsystem
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `ex_exam`
--

DROP TABLE IF EXISTS `ex_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ex_exam` (
  `ID` bigint(20) NOT NULL,
  `examName` varchar(225) DEFAULT NULL,
  `examDate` date DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `examCategory` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ex_exam`
--

LOCK TABLES `ex_exam` WRITE;
/*!40000 ALTER TABLE `ex_exam` DISABLE KEYS */;
INSERT INTO `ex_exam` VALUES (1,'Java','1992-11-11','Admin@gmail.com','Admin@gmail.com','2018-12-09 09:13:36','2018-12-09 09:13:36','Computer'),(2,'D Pharma','2019-02-10','Admin@gmail.com','Admin@gmail.com','2018-12-09 09:39:39','2018-12-09 09:39:39','Madical'),(3,'Manual testing','2018-12-12','Admin@gmail.com','Admin@gmail.com','2018-12-11 19:14:57','2018-12-11 19:14:57','QA');
/*!40000 ALTER TABLE `ex_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ex_question`
--

DROP TABLE IF EXISTS `ex_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ex_question` (
  `Id` bigint(20) NOT NULL,
  `examName` varchar(225) DEFAULT NULL,
  `questionName` varchar(225) DEFAULT NULL,
  `option1` varchar(225) DEFAULT NULL,
  `option2` varchar(225) DEFAULT NULL,
  `option3` varchar(225) DEFAULT NULL,
  `option4` varchar(225) DEFAULT NULL,
  `correctAns` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ex_question`
--

LOCK TABLES `ex_question` WRITE;
/*!40000 ALTER TABLE `ex_question` DISABLE KEYS */;
INSERT INTO `ex_question` VALUES (1,'D Pharma','Question 1','Ans1','Ans2','Ans3','Ans4','Ans1','Admin@gmail.com','Admin@gmail.com','2018-12-09 09:40:34','2018-12-09 09:40:34'),(2,'Manual testing','Question 2','Ans1','Ans2','Ans3','Ans4','Ans4','Admin@gmail.com','Admin@gmail.com','2018-12-11 19:15:36','2018-12-11 19:15:56'),(3,'Manual testing','Question 3','Ans1','Ans2','Ans3','Ans4','Ans3','Admin@gmail.com','Admin@gmail.com','2018-12-11 19:16:16','2018-12-11 19:16:16');
/*!40000 ALTER TABLE `ex_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ex_result`
--

DROP TABLE IF EXISTS `ex_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ex_result` (
  `id` bigint(20) NOT NULL,
  `examinationName` varchar(225) DEFAULT NULL,
  `examinationDate` datetime DEFAULT NULL,
  `result` varchar(225) DEFAULT NULL,
  `USER_ID` bigint(20) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ex_result`
--

LOCK TABLES `ex_result` WRITE;
/*!40000 ALTER TABLE `ex_result` DISABLE KEYS */;
INSERT INTO `ex_result` VALUES (1,'D Pharma','2019-02-10 00:00:00','Pass',3,NULL,NULL,'2018-12-09 09:43:41','2018-12-09 09:43:41'),(2,'D Pharma','2019-02-10 00:00:00','Fail',3,NULL,NULL,'2018-12-09 09:44:16','2018-12-09 09:44:16'),(3,'D Pharma','2019-02-10 00:00:00','Pass',3,NULL,NULL,'2018-12-09 09:44:43','2018-12-09 09:44:43'),(4,'Manual testing','2018-12-12 00:00:00','Pass',3,NULL,NULL,'2018-12-11 19:18:37','2018-12-11 19:18:37'),(5,'Manual testing','2018-12-12 00:00:00','Pass',3,NULL,NULL,'2018-12-11 19:18:57','2018-12-11 19:18:57'),(6,'D Pharma','2019-02-10 00:00:00','Pass',3,NULL,NULL,'2018-12-11 19:20:26','2018-12-11 19:20:26'),(7,'D Pharma','2019-02-10 00:00:00','Pass',5,NULL,NULL,'2019-03-23 08:25:50','2019-03-23 08:25:50');
/*!40000 ALTER TABLE `ex_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ex_user`
--

DROP TABLE IF EXISTS `ex_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ex_user` (
  `Id` bigint(20) DEFAULT NULL,
  `fName` varchar(225) DEFAULT NULL,
  `lName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Role_Name` varchar(225) DEFAULT NULL,
  `Role_ID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ex_user`
--

LOCK TABLES `ex_user` WRITE;
/*!40000 ALTER TABLE `ex_user` DISABLE KEYS */;
INSERT INTO `ex_user` VALUES (1,'Admin','Admin','Admin@gmail.com','Pass@123',NULL,'1997-10-06',NULL,NULL,'root','root','2018-12-09 09:07:10','2018-12-09 09:06:48','ADMIN',1),(2,'Cairo','Fulton','Cairo@ma.com','Cairo@123',NULL,'1998-10-06',NULL,NULL,'root','Admin@gmail.com','2018-12-09 09:07:52','2018-12-11 19:13:49','STUDENT',2),(3,'Kay','Soto','Kay@gmail.com','Demo@123',NULL,'1973-07-04',NULL,NULL,'root','root','2018-12-11 19:17:46','2018-12-11 19:17:46','STUDENT',2),(4,'Freya','Nelson','qwe@gmail.com','Pa$$w0rd!','8878982888','1997-01-01','Male','Libero non vitae repudiandae sequi error cupidatat quia aut magna non consequatur ut ut ipsa irure officia culpa','root','root','2019-01-06 05:31:46','2019-01-06 05:32:15','STUDENT',2),(5,'pappu','lal','pappu@gmail.com','Pappu@123','8878982885','0003-01-02','Male','indore','root','root','2019-01-06 16:37:51','2019-01-06 16:38:06','STUDENT',2);
/*!40000 ALTER TABLE `ex_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-21 10:14:58
