-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: access_control_system_demo
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cabinets`
--

DROP TABLE IF EXISTS `cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building` char(2) NOT NULL COMMENT 'Holds the name of the building the cabinet is in (e. g.: K1)',
  `room_number` char(4) NOT NULL COMMENT 'Holds the room number of the cabinet (e. g.: M204)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinets`
--

LOCK TABLES `cabinets` WRITE;
/*!40000 ALTER TABLE `cabinets` DISABLE KEYS */;
INSERT INTO `cabinets` VALUES (1,'K0','M204');
/*!40000 ALTER TABLE `cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collage_students`
--

DROP TABLE IF EXISTS `collage_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collage_students` (
  `student_id` varchar(6) NOT NULL COMMENT 'Holds NEPTUN code (e. g.: G4O424)',
  `first_name` varchar(255) NOT NULL COMMENT 'Holds students first name',
  `last_name` varchar(255) NOT NULL COMMENT 'Holds students last name',
  `date_of_birth` date NOT NULL COMMENT 'Holds students birthdate',
  `address` varchar(255) NOT NULL COMMENT 'Holds students address',
  `collage_room_number` varchar(8) DEFAULT NULL COMMENT 'Holds students collage room number (if they have any if not -> NULL)',
  `contact_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`),
  UNIQUE KEY `contact_id_UNIQUE` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collage_students`
--

LOCK TABLES `collage_students` WRITE;
/*!40000 ALTER TABLE `collage_students` DISABLE KEYS */;
INSERT INTO `collage_students` VALUES ('ABC12K','József','Kiss','1998-09-09','9026 Győr, Matematikus utca 3.',NULL,20),('ABC12L','Alma','Schmidt','2002-02-02','7777 Zalabütyök, Kocka utca 4.','K0/211/A',19),('ABVSD2','Xénia','Bakonyi','1996-10-17','8111 Seregélyes, Bocskay utca 26.',NULL,24),('APPLE1','Krisztián','Nagy','2004-01-17','9999 Vámoskapu, Kotkoda utca 2.',NULL,23),('ASD23L','Anna','Son','1998-10-16','8421 Almfafalva, Körte utca 33.',NULL,28),('ASDL23','László','Kuti','1996-11-14','9851 Almásfüzifő, Körte utca 5.',NULL,NULL),('DFGOLK','Olga','Keller','2001-10-16','8745, asdsfsdf',NULL,NULL),('FGD34L','Soma','Moha','1994-10-16','9895 Moha, Páfrány utca 2.',NULL,NULL),('FLKE23','AX','LK','2022-11-02','sdas',NULL,38),('G4O424','Lilla','Janoki','1999-09-17','8111 Seregélyes, Bocskay utca 24.','S403/A',1),('GER234','Tamás','Kovács','1989-06-07','8421 Almafalva, Almafa utca 3.',NULL,NULL),('KLMH22','Márk','Nagy','2001-06-01','9888, Kisbékás, Nagymacska utca 4.',NULL,36),('LKMH67','Olga','Bagoly','1998-10-01','8000 Székesfehérvár, Rádió út 19/B',NULL,41),('LKMJL9','Péter','Nagy','2001-11-14','9852 Kispuszta, Nagy utca 3.',NULL,NULL);
/*!40000 ALTER TABLE `collage_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(20) NOT NULL COMMENT 'Holds the phone number of the student/teacher/organization',
  `email_address` varchar(255) NOT NULL COMMENT 'Holds the e-mail addess of the student/teacher/organization',
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `contacts_id_UNIQUE` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'+36303220406','janoki.lilla@gmail.com'),(2,'+36501111111','njszk@sze.hu'),(3,'+36404445555','gh@sze.hu'),(19,'+36220564123','alma.xy@szemail.com'),(20,'+36606665555','kiss.jozsef.mszk@sze.hu'),(23,'+36303546666','kn.04@gmail.com'),(24,'+36505224444','x.b96@gmail.com'),(26,'+363022255555','SZEngine@sze.hu'),(27,'+36506667777','k.orsolya@sze.hu'),(28,'+32405254141','anna.son@gmail.com'),(36,'+65210004444','n.mark@citromail.hu'),(37,'+36665558888','art@sze.hu'),(40,'+36521414555','szell.kalm@sze.hu'),(41,'+36205544856','olga.b98@gmail.com'),(42,'+36225548878','dora.molnar@sze.hu');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `guest_id` int NOT NULL AUTO_INCREMENT,
  `organization_id` int DEFAULT NULL,
  PRIMARY KEY (`guest_id`),
  UNIQUE KEY `guest_id_UNIQUE` (`guest_id`),
  KEY `organization_id_idx` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,NULL),(2,NULL);
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `instructor_id` varchar(6) NOT NULL COMMENT 'Hols the NEPTUN code of the lecturer',
  `first_name` varchar(255) NOT NULL COMMENT 'Holds the first name of the instructor',
  `last_name` varchar(255) NOT NULL COMMENT 'Holds the family name of the instructor',
  `office_number` varchar(10) NOT NULL COMMENT 'Holds the number of the teachers office room',
  `contact_id` int DEFAULT NULL,
  PRIMARY KEY (`instructor_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`instructor_id`),
  UNIQUE KEY `contact_id_UNIQUE` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES ('ALKDK3','Kálmán','Széll','B240',40),('ASDFGG','Dóra','Molnár','A506',42),('ASDFK4','Krisztián','Kiss','B354',NULL),('LNOKJ4','Orsolya','Kiss','C606',27),('NEPTUN','Gábor','Horváth','Z666',3);
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instuctors_organizations`
--

DROP TABLE IF EXISTS `instuctors_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instuctors_organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(6) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `instructor_id_idx` (`instructor_id`),
  KEY `organization_id_idx` (`organization_name`),
  CONSTRAINT `instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`instructor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instuctors_organizations`
--

LOCK TABLES `instuctors_organizations` WRITE;
/*!40000 ALTER TABLE `instuctors_organizations` DISABLE KEYS */;
INSERT INTO `instuctors_organizations` VALUES (2,'NEPTUN','Neumann János Informatikai Szakkollégium'),(3,'ALKDK3','Audi Racing Team'),(4,'LNOKJ4','SZEnergy');
/*!40000 ALTER TABLE `instuctors_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `organization_id` int NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(255) NOT NULL COMMENT 'Holds the full name of the organization',
  `contact_id` int DEFAULT NULL,
  PRIMARY KEY (`organization_id`),
  UNIQUE KEY `organization_id_UNIQUE` (`organization_id`),
  UNIQUE KEY `organization_name_UNIQUE` (`organization_name`),
  UNIQUE KEY `contact_id_UNIQUE` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'Neumann János Informatikai Szakkollégium',2),(2,'Kiss József Matematikus Szakkollégium',20),(3,'SZEngine',26),(9,'SZEnergy',6),(10,'Audi Racing Team',37);
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations_cabinets`
--

DROP TABLE IF EXISTS `organizations_cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations_cabinets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(255) NOT NULL,
  `cabinet_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `cabinet_id_idx` (`cabinet_id`),
  KEY `organization_id_idx` (`organization_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations_cabinets`
--

LOCK TABLES `organizations_cabinets` WRITE;
/*!40000 ALTER TABLE `organizations_cabinets` DISABLE KEYS */;
INSERT INTO `organizations_cabinets` VALUES (2,'Neumann János Informatikai Szakkollégium',1);
/*!40000 ALTER TABLE `organizations_cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presidents_students`
--

DROP TABLE IF EXISTS `presidents_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presidents_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(6) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `student_id_idx` (`student_id`),
  KEY `organization_id_idx` (`organization_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presidents_students`
--

LOCK TABLES `presidents_students` WRITE;
/*!40000 ALTER TABLE `presidents_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `presidents_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_organizations`
--

DROP TABLE IF EXISTS `students_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(6) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `student_id_idx` (`student_id`),
  KEY `organization_id_idx` (`organization_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_organizations`
--

LOCK TABLES `students_organizations` WRITE;
/*!40000 ALTER TABLE `students_organizations` DISABLE KEYS */;
INSERT INTO `students_organizations` VALUES (1,'G4O424','Neumann János Informatikai Szakkollégium'),(12,'APPLE1','SZEnergy'),(13,'G4O424','SZEnergy'),(14,'FGD34L','Neumann János Informatikai Szakkollégium'),(15,'FLKE23','Neumann János Informatikai Szakkollégium');
/*!40000 ALTER TABLE `students_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vice_presidents_students`
--

DROP TABLE IF EXISTS `vice_presidents_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vice_presidents_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(6) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `student_id_idx` (`student_id`),
  KEY `organization_id_idx` (`organization_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vice_presidents_students`
--

LOCK TABLES `vice_presidents_students` WRITE;
/*!40000 ALTER TABLE `vice_presidents_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `vice_presidents_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'access_control_system_demo'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_guest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_guest`()
BEGIN

INSERT into guests (guest_id, organization_id)
VALUES (default, null);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_instructor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_instructor`(
IN instructor_id varchar(6), 
IN first_name varchar(255), 
IN last_name varchar(255), 
IN office_number varchar(10)
)
BEGIN
	INSERT into instructors (instructor_id, first_name, last_name, office_number)
	VALUES (instructor_id, first_name, last_name, office_number);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_instructor_contact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_instructor_contact`(
IN neptun varchar(6),
IN phone varchar(20), 
IN email varchar(255)
)
BEGIN

INSERT into contacts (contact_id, phone_number, email_address)
VALUES (default, phone, email);

UPDATE instructors 
SET 
    contact_id = LAST_INSERT_ID()
WHERE
	neptun = instructor_id;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_instructor_to_organization` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_instructor_to_organization`(
IN neptun varchar(6),
IN o_name varchar(255)
)
BEGIN

INSERT INTO instuctors_organizations (id, instructor_id, organization_name)
VALUES (default, neptun, o_name);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_organization` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_organization`(
IN organization_name varchar(255)
)
BEGIN
	INSERT into organizations (organization_id, organization_name)
	VALUES (default, organization_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_organizations_contact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_organizations_contact`(
IN name varchar(255),
IN phone varchar(20), 
IN email varchar(255)
)
BEGIN

INSERT into contacts (contact_id, phone_number, email_address)
VALUES (default, phone, email);

UPDATE organizations 
SET 
    contact_id = LAST_INSERT_ID()
WHERE
	name = organization_name;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_student` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_student`(
IN student_id varchar(6), 
IN first_name varchar(255), 
IN last_name varchar(255), 
IN date_of_birth date, 
IN address varchar(255)
)
BEGIN
	INSERT into collage_students (student_id, first_name, last_name, date_of_birth, address)
	VALUES (student_id, first_name, last_name, date_of_birth, address);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_student_contact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_student_contact`(
IN neptun varchar(6),
IN phone varchar(20), 
IN email varchar(255)
)
BEGIN

INSERT into contacts (contact_id, phone_number, email_address)
VALUES (default, phone, email);

UPDATE collage_students 
SET 
    contact_id = LAST_INSERT_ID()
WHERE
	neptun = student_id;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_student_to_organization` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_student_to_organization`(
IN neptun varchar(6),
IN o_name varchar(255)
)
BEGIN

INSERT INTO students_organizations (id, student_id, organization_name)
VALUES (default, neptun, o_name);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `list_instuctors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `list_instuctors`(
IN orga_name varchar(255)
)
BEGIN

SELECT instructor_id
FROM instuctors_organizations
WHERE organization_name = orga_name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `list_students` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `list_students`(
IN orga_name varchar(255)
)
BEGIN

SELECT student_id
FROM students_organizations
WHERE organization_name = orga_name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_collage_room_number` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_collage_room_number`(
IN neptun varchar(6),
IN new_room_number varchar(8)
)
BEGIN

UPDATE collage_students 
SET 
   collage_room_number = new_room_number
WHERE
    neptun = student_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-15 22:27:29
