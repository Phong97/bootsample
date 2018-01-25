CREATE DATABASE  IF NOT EXISTS `ipm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ipm`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ipm
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Temporary view structure for view `calendarview`
--

DROP TABLE IF EXISTS `calendarview`;
/*!50001 DROP VIEW IF EXISTS `calendarview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `calendarview` AS SELECT 
 1 AS `interviewer_id`,
 1 AS `room`,
 1 AS `starttime`,
 1 AS `endtime`,
 1 AS `roundname`,
 1 AS `processname`,
 1 AS `startdate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `idcard` bigint(20) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `email` char(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `university` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `major` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `gpa` double DEFAULT NULL,
  `graduationyear` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `gst` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `others` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `intervieweradmin_id` int(11) DEFAULT NULL,
  `coincidence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_candidate_interviewer` (`intervieweradmin_id`),
  KEY `FK_candidate_position` (`position_id`),
  KEY `FK_candidate_skill` (`skill_id`),
  CONSTRAINT `FK_candidate_interviewer` FOREIGN KEY (`intervieweradmin_id`) REFERENCES `interviewer` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_candidate_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_candidate_skill` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`no`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Nguyễn Chí Trung',205969565,'1997-04-22','nckhai09061997@gmail.com',1665293553,'Quảng Nam','Sư Phạm Kỹ Thuật','Information Technology',3.33,2019,1,'GST JAVA, .NET','Toeic 550',4,1,4),(3,'Nguyễn Quang Huy',1121212,'1997-04-22','nckhai09061997@gmail.com',1668659489,'Số 25, Đường số 7 Phường Linh Chiều, Quận Thủ Đức','SPKT','Information Technology',4,2025,3,'GST PHP, C++','Toeic 600, IELTS 6.0',3,3,0),(4,'Hồ Văn Phong',1212121,'1997-04-22','nckhai090619e97@gmail.com',1783434545,'Bình Định','KHTN','',4,2222,3,'','',2,1,1),(17,'Nguyễn Chí Khải',99999999,'1997-04-22','f@gmail.com',1662239032,'','SPKT','',4,9999,3,'','',4,1,3),(25,'Hồ Văn Phong',999999999,'2018-01-02','nckhai090619e97@gmail.com',1234234565,'','BK','',4,9999,1,'','',5,2,1),(26,'Hồ Văn Phong',999999999,'2018-01-12','qee@gmail.com',1633454355,'','DND','',4,2015,2,'','',3,1,1),(27,'Nguyễn Chí Khải',999999999,'1997-04-22','f@gmail.com',64565465,'Hà Nội','YDH','',4,9999,1,'','',2,1,3),(28,'Nguyễn Chí Trung',999999999,'2018-01-03','qee@gmail.com',12312312,'','YDN','',4,9999,2,'','',1,1,1),(29,'Phạm Xuân Trường',999999999,'2018-01-18','xuantruong@gmail.com',1662239032,'','SPKT','',3.5,9999,1,'','',4,1,0),(32,'Hoàng Anh Tuấn',206456243,'2018-01-18','hatuan@gmail.com',12294434,'Đồng Nai','SPKT','CDT',3.1,2019,2,'GST .NET','Toeic 620',2,1,0),(34,'Nguyễn Chí Trung',999999999,'1997-04-22','nckhai09061997@gmail.com',1665293553,'Hà Tĩnh','SPKT','',3,9999,1,'','',1,1,4);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ipm.`candidate_BEFORE_INSERT` BEFORE INSERT ON candidate FOR EACH ROW
BEGIN
	set NEW.coincidence=(select f_getColor((select MAX(id) from candidate)+1 ,NEW.name ,NEW.birth ,NEW.email ,NEW.phone ,NEW.university));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ipm`.`candidate_AFTER_UPDATE` 
BEFORE UPDATE ON `candidate` FOR EACH ROW
BEGIN
set NEW.coincidence=(select f_getColor(NEW.id,NEW.name ,NEW.birth ,NEW.email ,NEW.phone ,NEW.university));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `maxpoint` double DEFAULT NULL,
  `interview_round_no` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  KEY `fk_catalog_interview_round1_idx` (`interview_round_no`),
  CONSTRAINT `fk_catalog_interview_round1` FOREIGN KEY (`interview_round_no`) REFERENCES `interview_round` (`no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'Database ',5,1),(2,'OOP',6,2),(3,'UML/Patten',10,3);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog_question`
--

DROP TABLE IF EXISTS `catalog_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_catalog_question_catalog` (`catalog_id`),
  KEY `FK_catalog_question_question` (`question_id`),
  CONSTRAINT `FK_catalog_question_catalog` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`no`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_catalog_question_question` FOREIGN KEY (`question_id`) REFERENCES `question` (`no`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_question`
--

LOCK TABLES `catalog_question` WRITE;
/*!40000 ALTER TABLE `catalog_question` DISABLE KEYS */;
INSERT INTO `catalog_question` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,1,6),(7,1,7),(8,3,8),(9,2,9),(10,1,10);
/*!40000 ALTER TABLE `catalog_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guideline`
--

DROP TABLE IF EXISTS `guideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guideline` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `job` char(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `name` char(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` char(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guideline`
--

LOCK TABLES `guideline` WRITE;
/*!40000 ALTER TABLE `guideline` DISABLE KEYS */;
/*!40000 ALTER TABLE `guideline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_mask`
--

DROP TABLE IF EXISTS `interview_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_mask` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `mask` varchar(45) DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `interview_result_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `fk_interview_mask_interview_result1_idx` (`interview_result_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_mask`
--

LOCK TABLES `interview_mask` WRITE;
/*!40000 ALTER TABLE `interview_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_process`
--

DROP TABLE IF EXISTS `interview_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_process` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `processname` char(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `status` char(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `FK_interview_process_position` (`position_id`),
  CONSTRAINT `FK_interview_process_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_process`
--

LOCK TABLES `interview_process` WRITE;
/*!40000 ALTER TABLE `interview_process` DISABLE KEYS */;
INSERT INTO `interview_process` VALUES (1,'Interview BA',3,'2018-01-07','Active'),(2,'Interview HR',3,'2018-01-14','Active'),(3,'Interview Developer',2,'2018-01-07','Active');
/*!40000 ALTER TABLE `interview_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_result`
--

DROP TABLE IF EXISTS `interview_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_result` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) DEFAULT NULL,
  `interviewer_id` int(11) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `result` char(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `interview_round_no` int(11) DEFAULT NULL,
  `interview_mask_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `FK_interview_result_candidate` (`candidate_id`),
  KEY `FK_interview_result_interviewer` (`interviewer_id`),
  KEY `fk_interview_result_interview_round1_idx` (`interview_round_no`),
  KEY `fk_interview_result_interview_mask1_idx` (`interview_mask_no`),
  CONSTRAINT `FK_interview_result_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_interview_result_interviewer` FOREIGN KEY (`interviewer_id`) REFERENCES `interviewer` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_interview_result_interview_mask1` FOREIGN KEY (`interview_mask_no`) REFERENCES `interview_mask` (`no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_interview_result_interview_round1` FOREIGN KEY (`interview_round_no`) REFERENCES `interview_round` (`no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_result`
--

LOCK TABLES `interview_result` WRITE;
/*!40000 ALTER TABLE `interview_result` DISABLE KEYS */;
INSERT INTO `interview_result` VALUES (1,1,1,'2017-01-27 00:00:00','2017-01-27 00:00:00','PASS',1,NULL),(2,17,1,'2017-01-27 00:00:00','2017-01-27 00:00:00','FAIL',2,NULL),(3,3,2,'2017-01-27 00:00:00','2017-01-27 00:00:00','PASS',3,NULL),(4,4,2,'2017-01-27 00:00:00','2017-01-27 00:00:00','PASS',3,NULL);
/*!40000 ALTER TABLE `interview_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `interview_result_view`
--

DROP TABLE IF EXISTS `interview_result_view`;
/*!50001 DROP VIEW IF EXISTS `interview_result_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `interview_result_view` AS SELECT 
 1 AS `no`,
 1 AS `candidate`,
 1 AS `position`,
 1 AS `interviewer`,
 1 AS `starttime`,
 1 AS `endtime`,
 1 AS `result`,
 1 AS `university`,
 1 AS `gpa`,
 1 AS `gst`,
 1 AS `skill`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `interview_round`
--

DROP TABLE IF EXISTS `interview_round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_round` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `roundname` char(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `guideline_id` int(11) DEFAULT NULL,
  `description` char(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `FK_interview_round_guideline` (`guideline_id`),
  CONSTRAINT `FK_interview_round_guideline` FOREIGN KEY (`guideline_id`) REFERENCES `guideline` (`no`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_round`
--

LOCK TABLES `interview_round` WRITE;
/*!40000 ALTER TABLE `interview_round` DISABLE KEYS */;
INSERT INTO `interview_round` VALUES (1,'1',NULL,NULL),(2,'2',NULL,NULL),(3,'3',NULL,NULL);
/*!40000 ALTER TABLE `interview_round` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_round_process`
--

DROP TABLE IF EXISTS `interview_round_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_round_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `video` varchar(150) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_interview_round-Process_candidate` (`candidate_id`),
  KEY `FK_interview_round-Process_interview_process` (`process_id`),
  KEY `FK_interview_round-Process_interview_round` (`round_id`),
  CONSTRAINT `FK_interview_round-Process_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_interview_round-Process_interview_process` FOREIGN KEY (`process_id`) REFERENCES `interview_process` (`no`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_interview_round-Process_interview_round` FOREIGN KEY (`round_id`) REFERENCES `interview_round` (`no`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_round_process`
--

LOCK TABLES `interview_round_process` WRITE;
/*!40000 ALTER TABLE `interview_round_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview_round_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `interview_schedule_view`
--

DROP TABLE IF EXISTS `interview_schedule_view`;
/*!50001 DROP VIEW IF EXISTS `interview_schedule_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `interview_schedule_view` AS SELECT 
 1 AS `id`,
 1 AS `fullname`,
 1 AS `start`,
 1 AS `position`,
 1 AS `round`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `interviewer`
--

DROP TABLE IF EXISTS `interviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interviewer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `accountfsoft` char(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` char(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewer`
--

LOCK TABLES `interviewer` WRITE;
/*!40000 ALTER TABLE `interviewer` DISABLE KEYS */;
INSERT INTO `interviewer` VALUES (1,'TuyPNB1','trung','ncg@gmail.com'),(2,'CuongPNB1','trung','15110346@student.hcmute.edu.vn'),(3,'TRUNGPRO','nckhai@gmail.com','ntrgr@gmail.com');
/*!40000 ALTER TABLE `interviewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_request`
--

DROP TABLE IF EXISTS `meeting_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interviewer_id` int(11) DEFAULT NULL,
  `round_no` int(11) DEFAULT NULL,
  `room` char(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime NOT NULL,
  `note` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_meeting_request_interview_round` (`round_no`),
  KEY `FK_meeting_request_interviewer` (`interviewer_id`),
  CONSTRAINT `FK_meeting_request_interview_round` FOREIGN KEY (`round_no`) REFERENCES `interview_round` (`no`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_meeting_request_interviewer` FOREIGN KEY (`interviewer_id`) REFERENCES `interviewer` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_request`
--

LOCK TABLES `meeting_request` WRITE;
/*!40000 ALTER TABLE `meeting_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `name` char(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'JAVA001','FRESHER JAVA'),(2,'.NET001','FRESHER .NET'),(3,'TESTER001','TESTER'),(4,'BA001','BA'),(5,'PM001','PM');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) DEFAULT NULL,
  `question1` longtext CHARACTER SET utf8mb4,
  `answer` longtext CHARACTER SET utf8mb4,
  PRIMARY KEY (`no`),
  KEY `FK_question_position` (`position_id`),
  CONSTRAINT `FK_question_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,1,'What is OOP?','OOP is Object Oriented Programming'),(2,2,'Sự khác nhau giữa DataSet và DataReader?','- DataSet có thể đọc và ghi trong khi DataReader chỉ có thể đọc. \r\n- DataSet có thể chứa nhiều bảng còn DataReader chỉ có thể chứa 1 bảng. \r\n- DataSet làm việc ở chế độ không kết nối còn DataReader làm việc ở chế độ kết nối. \r\n- DataSet có thể di chuyển tới và trở lại còn DataReader thì chỉ có thể di chuyển tới. \r\n- DataSet truy cập chậm hơn DataReader.'),(3,1,'Làm thế nào để truy cập trong phương thức và thuộc tính?','Dùng từ khóa $this trỏ tới phương thức hoặc thuộc tính cần truy cập.'),(4,1,'. Thế nào là thuộc tính ? Phương thức ?','Thuộc tính là những biến được khởi tạo có kèm theo cơ chế.\r\nPhương thức là những hàm được khởi tạo có kèm theo cơ chế'),(5,3,'Có các cơ chế nào ? Nói rõ các cơ chế. Private khác protected chỗ nào ?','Có 3 cơ chế: Public, private, protected.\r\nPublic: cho phép truy cập và sử dụng ở phạm vi trong class và ngoài class.\r\nProtected: cho phép truy cập cái phương thức và thuộc tính trong class, có hỗ trợ sự kế thừa.\r\nPrivate: giống private, nhưng không cho phép kế thừa.'),(6,2,'Sự khác nhau giữa String và StringBuilder?','- String là lớp không thay đổi. Mọi phương thức sẽ tạo ra một biến String mới.\r\n- StringBuilder là lớp thay đổi. Các phương thức của biến sẽ ảnh hưởng đến đến biến StringBuilder hiện tại.'),(7,3,'Vì sao lỗi càng phát hiện muộn thì chi phí sửa lỗi càng cao?','- Kiểm thử và sửa lỗi có thể được thực hiện tại bất kỳ giai đoạn nào của vòng đời phát triển sản phẩm. Từ giai đoạn Phân tích đặc tả nghiệp vụ, Thiết kế, Coding chứ không chỉ riêng giai đoạn test hay tập trung cho tất cả giai đoạn test.\r\n- Lỗi được phát hiện càng muộn thì chi phí cho việc sửa lỗi càng lớn, bởi vì có những lỗi sẽ phải thực hiện lại từ khâu Thiết kế, rồi coding lại và mới thực hiện test được. Nên lỗi được phát hiện càng sớm, càng ở những giai đoạn đầu dự án, thậm chí ngay từ giai đoạn làm Yêu cầu/ Nghiệp vụ giúp cho các giai đoạn sau thực hiện được chính xác, giảm được số lượng lỗi và sản phẩm hoàn thành đúng tiến độ theo kế hoạch.\r\n- Bug phát sinh ở giai đoạn release là nghiêm trọng và tốn kém nhất. Không chỉ bị ảnh hưởng về mặt uy tín chất lượng sản phẩm, mà còn dẫn đến việc phải coding và testing lại, phát sinh chi phí về nhân lực dự án, chậm trễ tiến độ.\r\n- Bug được phát hiện càng muộn thì chi phí sửa càng lớn. Đôi khi không chỉ tỷ lệ với thời gian mà có thể là tỷ lệ bình phương thời gian.'),(8,2,'Lỗi thường xuất hiện ở giai đoạn nào là chủ yếu trong chu kỳ phát triển phần mềm?','Ở giai đoạn sau khi code xong và bàn giao sang cho tester bắt đầu giai đoạn testing. Một bên test và 1 bên fix bug, đây là giai đoạn nhiều lỗi nhất trong chu kỳ phát triển phần mềm.'),(9,1,'Spring Boot là gì?\r\n','Spring Boot là một Project nằm trên tầng IO Execution (Tầng thực thi) của Spring IO Framework. \r\n'),(10,4,'UML viết tắt của từ gì?','Unified Modeling Language');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `questionview`
--

DROP TABLE IF EXISTS `questionview`;
/*!50001 DROP VIEW IF EXISTS `questionview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `questionview` AS SELECT 
 1 AS `no`,
 1 AS `position_name`,
 1 AS `question1`,
 1 AS `answer`,
 1 AS `catalog_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'interviewer '),(2,'interviewer admin'),(3,'admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'Java'),(2,'html, css, js'),(3,'PHP');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysdiagrams`
--

DROP TABLE IF EXISTS `sysdiagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `UK_principal_name` (`principal_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysdiagrams`
--

LOCK TABLES `sysdiagrams` WRITE;
/*!40000 ALTER TABLE `sysdiagrams` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysdiagrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` char(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` char(32) CHARACTER SET utf8mb4 DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'trung0909@fsoft.com','22041997333',1),(3,'nguyennht@fsoft.com','423423423',2),(4,'chienplq@fsoft.com','023423432',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ipm'
--

--
-- Dumping routines for database 'ipm'
--
/*!50003 DROP FUNCTION IF EXISTS `f_getColor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_getColor`(id_candidate INT(11),name_candidate VARCHAR(50),birth_candidate DATE,
 email_candidate CHAR(50),phone_candidate BIGINT(20),university_candidate VARCHAR(50)) RETURNS int(11)
BEGIN
	declare color int(11);
    declare color1 int(11);
	set color =0; set color1=0;
	select count(id) into color1 from candidate where name=name_candidate and id != id_candidate;
		if(color1!=0) then
			begin
				set color=1;
				select count(id) into color1 from candidate a
					where a.birth=birth_candidate and a.name=name_candidate and id != id_candidate;
				if(color1!=0) then
					begin
						set color=2;
						select count(id) into color1 from candidate a
							where a.birth=birth_candidate and a.name=name_candidate and a.email=email_candidate and id != id_candidate;
						if(color1!=0) then
							begin
								set color=3;
								select count(id) into color1 from candidate a
									where a.birth=birth_candidate and a.name=name_candidate and a.email=email_candidate and a.phone=phone_candidate and id != id_candidate;
								if(color1!=0) then
									begin
										set color=4;
										select count(id) into color1 from candidate a
											where a.birth=birth_candidate and a.name=name_candidate and a.email=email_candidate and a.phone=phone_candidate and a.university=university_candidate and id != id_candidate;
										if(color1!=0) then
											set color=5;
										end if;
									end;
								  end if;                                
								end;				
							end if;
                        end;
					end if;
				end;
			end if;
		return (color);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `calendarview`
--

/*!50001 DROP VIEW IF EXISTS `calendarview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `calendarview` AS select 1 AS `interviewer_id`,1 AS `room`,1 AS `starttime`,1 AS `endtime`,1 AS `roundname`,1 AS `processname`,1 AS `startdate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `interview_result_view`
--

/*!50001 DROP VIEW IF EXISTS `interview_result_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `interview_result_view` AS select `candidate`.`id` AS `no`,`candidate`.`name` AS `candidate`,`position`.`name` AS `position`,`interviewer`.`name` AS `interviewer`,`interview_result`.`starttime` AS `starttime`,`interview_result`.`endtime` AS `endtime`,`interview_result`.`result` AS `result`,`candidate`.`university` AS `university`,`candidate`.`gpa` AS `gpa`,`candidate`.`gst` AS `gst`,`skill`.`name` AS `skill` from ((((`candidate` join `position` on((`candidate`.`position_id` = `position`.`id`))) join `interview_result` on((`candidate`.`id` = `interview_result`.`candidate_id`))) join `interviewer` on((`interviewer`.`id` = `interview_result`.`interviewer_id`))) join `skill` on((`candidate`.`skill_id` = `skill`.`no`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `interview_schedule_view`
--

/*!50001 DROP VIEW IF EXISTS `interview_schedule_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `interview_schedule_view` AS select `candidate`.`id` AS `id`,`candidate`.`name` AS `fullname`,`interview_result`.`starttime` AS `start`,`position`.`name` AS `position`,`interview_round`.`roundname` AS `round` from (((`candidate` join `position` on((`candidate`.`position_id` = `position`.`id`))) join `interview_result` on((`interview_result`.`candidate_id` = `candidate`.`id`))) join `interview_round` on((`interview_round`.`no` = `interview_result`.`interview_round_no`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `questionview`
--

/*!50001 DROP VIEW IF EXISTS `questionview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `questionview` AS select `question`.`no` AS `no`,`position`.`name` AS `position_name`,`question`.`question1` AS `question1`,`question`.`answer` AS `answer`,`catalog`.`name` AS `catalog_name` from (((`catalog_question` join `catalog`) join `question`) join `position`) where ((`catalog_question`.`catalog_id` = `catalog`.`no`) and (`catalog_question`.`question_id` = `question`.`no`) and (`question`.`position_id` = `position`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-25 14:17:25
