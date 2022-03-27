-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: quizapp
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `tbl_app`
--

DROP TABLE IF EXISTS `tbl_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_app` (
  `app_id` int unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `image_name` varchar(255) NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_app`
--

LOCK TABLES `tbl_app` WRITE;
/*!40000 ALTER TABLE `tbl_app` DISABLE KEYS */;
INSERT INTO `tbl_app` VALUES (1,'Hemkesh','hemkesh@gmail.com','admin','21232f297a57a5a743894a0e4a801fc3','9866296009','2017-04-03','2020-12-26','');
/*!40000 ALTER TABLE `tbl_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_faculty`
--

DROP TABLE IF EXISTS `tbl_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_faculty` (
  `faculty_id` int unsigned NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(150) NOT NULL,
  `time_duration` int NOT NULL,
  `qns_per_set` int NOT NULL,
  `total_english` int unsigned NOT NULL,
  `total_math` int unsigned NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date NOT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_faculty`
--

LOCK TABLES `tbl_faculty` WRITE;
/*!40000 ALTER TABLE `tbl_faculty` DISABLE KEYS */;
INSERT INTO `tbl_faculty` VALUES (303,'303',5,15,1,4,'yes','2017-04-04','2017-06-12'),(30101,'30101',5,15,5,10,'yes','2021-11-11','2021-11-11'),(30102,'30102',5,15,5,10,'yes','2021-11-11','2021-11-11');
/*!40000 ALTER TABLE `tbl_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_question`
--

DROP TABLE IF EXISTS `tbl_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_question` (
  `qpid` int NOT NULL,
  `sid` int NOT NULL,
  `question_id` int unsigned NOT NULL AUTO_INCREMENT,
  `question` longtext NOT NULL,
  `first_answer` varchar(255) NOT NULL,
  `second_answer` varchar(255) NOT NULL,
  `third_answer` varchar(255) NOT NULL,
  `fourth_answer` varchar(255) NOT NULL,
  `fifth_answer` varchar(255) NOT NULL,
  `answer` int NOT NULL,
  `reason` longtext NOT NULL,
  `marks` decimal(10,0) NOT NULL,
  `category` varchar(100) NOT NULL,
  `faculty` int NOT NULL,
  `variation` varchar(255) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `image_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_question`
--

LOCK TABLES `tbl_question` WRITE;
/*!40000 ALTER TABLE `tbl_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_result`
--

DROP TABLE IF EXISTS `tbl_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_result` (
  `result_id` int unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `question_id` int unsigned NOT NULL,
  `user_answer` int unsigned NOT NULL,
  `right_answer` int unsigned NOT NULL,
  `added_date` date NOT NULL,
  `qpid` int NOT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_result`
--

LOCK TABLES `tbl_result` WRITE;
/*!40000 ALTER TABLE `tbl_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_result_summary`
--

DROP TABLE IF EXISTS `tbl_result_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_result_summary` (
  `summary_id` int unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `marks` decimal(10,2) NOT NULL,
  `added_date` date NOT NULL,
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_result_summary`
--

LOCK TABLES `tbl_result_summary` WRITE;
/*!40000 ALTER TABLE `tbl_result_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_result_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_student` (
  `student_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `added_date` date NOT NULL,
  `updated_date` date DEFAULT NULL,
  `qpid` int NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (1,'Student','Raina','student@gmail.com','student','student','98367253','male','303','yes','2017-06-27','2021-10-22',2),(2,'hemkesh','raina','hemkeshraina@gmail.com','hemkesh','hemkesh','8527049688','Male','30102','yes','2021-10-21','2021-10-22',1);
/*!40000 ALTER TABLE `tbl_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-27  6:03:20
