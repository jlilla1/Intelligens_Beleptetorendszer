CREATE DATABASE  IF NOT EXISTS `access_control_system_demo` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `access_control_system_demo`;
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinets`
--

LOCK TABLES `cabinets` WRITE;
/*!40000 ALTER TABLE `cabinets` DISABLE KEYS */;
INSERT INTO `cabinets` VALUES (1,'q7','6896'),(2,'o0','5446'),(3,'l2','1138'),(4,'f3','8708'),(5,'p0','2283'),(6,'b1','5478'),(7,'j9','5246'),(8,'x9','3302'),(9,'h0','0990'),(10,'p0','6179'),(11,'a4','1537'),(12,'h7','3575'),(13,'t5','0116'),(14,'a1','8925'),(15,'q7','7058'),(16,'w3','3991'),(17,'o4','0512'),(18,'i9','6187'),(19,'n6','6557'),(20,'r2','2122'),(101,'K0','M204');
/*!40000 ALTER TABLE `cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college_students`
--

DROP TABLE IF EXISTS `college_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college_students` (
  `student_id` varchar(6) NOT NULL COMMENT 'Holds NEPTUN code (e. g.: G4O424)',
  `first_name` varchar(255) NOT NULL COMMENT 'Holds students first name',
  `last_name` varchar(255) NOT NULL COMMENT 'Holds students last name',
  `date_of_birth` date NOT NULL COMMENT 'Holds students birthdate',
  `address` varchar(255) NOT NULL COMMENT 'Holds students address',
  `college_room_number` varchar(8) DEFAULT NULL COMMENT 'Holds students collage room number (if they have any if not -> NULL)',
  `contact_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`),
  UNIQUE KEY `contact_id_UNIQUE` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_students`
--

LOCK TABLES `college_students` WRITE;
/*!40000 ALTER TABLE `college_students` DISABLE KEYS */;
INSERT INTO `college_students` VALUES ('aa33i2','Shayna','Metz','1985-01-31','421 Sallie Village Suite 152\nEast Madie, WV 04633-6375','78551087',41),('ABC12K','József','Kiss','1998-09-09','9026 Győr, Matematikus utca 3.',NULL,120),('ABC12L','Alma','Schmidt','2002-02-02','7777 Zalabütyök, Kocka utca 4.','K0/211/A',119),('ABCD23','Jakab','Gipsz','1999-11-26','9876, Abcfalva, Def u. 6.',NULL,144),('ABVSD2','Xénia','Bakonyi','1996-10-17','8111 Seregélyes, Bocskay utca 26.',NULL,124),('aj23s0','Stuart','Okuneva','1988-12-08','787 Gislason Avenue Suite 763\nGrahammouth, GA 36467','1248035',71),('aj32p6','Daisha','Kuvalis','2017-02-07','8951 Anna Manors Suite 755\nPort Kianmouth, DE 08176-9995','5',17),('aj45u5','Claudine','Kreiger','2004-06-17','5457 Dale Junctions Apt. 862\nWaltermouth, WV 81576-0252','',87),('al56s6','Kory','Oberbrunner','2002-04-15','4984 Dennis Garden Suite 335\nNew Gracie, SD 24487-3801','907468',69),('APPLE1','Krisztián','Nagy','2004-01-17','9999 Vámoskapu, Kotkoda utca 2.',NULL,123),('ASD23L','Anna','Son','1998-10-16','8421 Almfafalva, Körte utca 33.',NULL,128),('ASDL23','László','Kuti','1996-11-14','9851 Almásfüzifő, Körte utca 5.',NULL,NULL),('au89t8','Heather','Deckow','1993-10-26','4848 Jacobi Courts Suite 287\nPort Rafael, KS 82750','37960019',63),('bd63p4','Moriah','Walsh','2001-03-08','9973 Arianna Harbors Suite 435\nDevinberg, CT 30505','6',26),('bj38k3','Bianka','Sipes','2005-02-20','942 Abbott Streets Suite 455\nWest Meredithberg, ID 27731','',74),('bv45p3','Richie','Sawayn','2007-05-16','1377 Buford Key\nReillymouth, NV 55831-0030','26932949',15),('by28h6','Leonardo','Lemke','1999-06-19','1198 Jerde Pine Suite 782\nEast Brooklynville, AZ 77536','31',31),('bz72c5','Kamryn','Pouros','1972-02-08','4304 Heaney Hollow Apt. 550\nArnoldoburgh, IL 59698-1690','',11),('cg62m9','Kay','Davis','2006-07-18','4570 Constance Meadow Apt. 156\nNew Krismouth, DC 52642','63892',1),('cm06j0','Darwin','Green','1983-10-18','144 Rutherford Estate\nSouth Terrence, DE 93499','7',21),('cn32z7','Thomas','Wuckert','1977-09-24','0447 Zella Rue Apt. 505\nNikolausburgh, MO 42727','1721',19),('ct27d4','Kirk','Cremin','1993-04-20','1712 Kirk Plains\nWest Colt, LA 09885','264',5),('df87v7','Cyrus','O\'Reilly','1997-12-22','0527 Lexi Causeway Apt. 924\nWest Libby, WY 04771-7521','42175512',79),('DFGOLK','Olga','Keller','2001-10-16','8745, asdsfsdf',NULL,NULL),('do18e4','Kyleigh','Schuppe','1981-03-28','474 Bashirian Center Suite 109\nSpinkatown, VA 92641-2684','4637',27),('ds99m1','Reinhold','Tromp','1998-01-30','11717 Guadalupe Station Suite 692\nWest Hansberg, TX 88071','4616',65),('dt33v5','Eula','McKenzie','2006-06-27','22034 Stanton Crossing Apt. 952\nNew Samanta, MI 11957-1168','645',91),('dw96y3','Elmira','Reichert','2018-07-18','8947 Audrey Lane\nSipesburgh, MI 80099','799111',64),('ed51y1','Dakota','Heathcote','1975-10-07','963 Hester Square\nSouth Chaya, PA 96127-3715','24803061',61),('en12n4','Enrico','Wiza','2019-01-04','658 Alysa Shore\nDennisside, NY 33926-6775','394711',86),('ep92v0','Gabriel','Kling','2012-08-25','985 Gulgowski Pine\nLenorabury, NE 59276-9389','5626870',50),('FGD34L','Soma','Moha','1994-10-16','9895 Moha, Páfrány utca 2.',NULL,NULL),('FLKE23','AX','LK','2022-11-02','sdas',NULL,138),('G4O424','Lilla','Janoki','1999-09-17','8111 Seregélyes, Bocskay utca 24.','S/403/A',101),('GER234','Tamás','Kovács','1989-06-07','8421 Almafalva, Almafa utca 3.',NULL,NULL),('gf50w9','Sheridan','O\'Conner','1979-09-16','99564 Lockman Ford\nWest Kip, MA 82094-9809','59994752',89),('gj06u6','Burnice','Stiedemann','1981-05-09','854 Dibbert Land Apt. 726\nBernierport, HI 09888','42',100),('gm36o5','Marcelo','Kohler','1992-12-20','03133 Rubie Parkway\nBlandaburgh, AL 82668','837',76),('gn94c8','Sheila','Lubowitz','2011-02-28','6541 Smitham Shore\nEast Brendan, NY 04386','735174',33),('GREO43','Olaf','Kiss','2001-11-23','1235, Kismegyer, Megye u. 5.',NULL,NULL),('hj82a2','Amelie','Ullrich','2011-05-25','139 Carlos Islands Apt. 754\nNew Alvenaberg, NJ 94660','12302078',23),('HNBV23','Kornélia','Molnár','2002-11-19','9844, XXX. ker. Budapest, Tolnai utca 33.',NULL,143),('hx87y3','Dedrick','Mayert','1991-02-06','1272 Ferry Crest\nDesireeview, NE 30985-6182','6',95),('ib21t6','Heidi','Witting','1999-09-30','17970 Maggio Highway Apt. 121\nNew Daltonhaven, NY 26049','29515464',75),('ig08a0','Damian','Shields','1983-04-21','262 Mosciski Island\nSouth Pinkiebury, LA 00420','494',82),('il97l3','Camron','Will','1980-08-31','2939 Athena Green\nNew Justine, ME 74596-2201','979502',24),('je73u6','Tamara','Davis','1992-07-28','71243 Libby Glens\nEast Israel, KS 68438','20203',48),('jo07v1','Bridie','Kassulke','1997-01-18','961 Dickinson Oval Apt. 776\nNew Donnaland, NV 69576','22',62),('jx32a8','Magnolia','Huel','1979-01-28','92361 Irwin Cove\nPatrickport, NE 95081','',12),('kh07c9','Citlalli','Johns','1972-06-27','415 Marquardt Keys\nSavanahville, NH 56673','',83),('ki74v3','Odell','Jacobi','2021-01-14','54772 Samson Forges Suite 238\nNew Zoiefort, CA 87608-8356','3810614',3),('KLMH22','Márk','Nagy','2001-06-01','9888, Kisbékás, Nagymacska utca 4.',NULL,136),('kv08w1','Euna','Bradtke','2022-11-01','45576 King Lake\nSchmidtchester, IA 69924-0950','',10),('LKMH67','Olga','Bagoly','1998-10-01','8000 Székesfehérvár, Rádió út 19/B',NULL,141),('LKMJL9','Péter','Nagy','2001-11-14','9852 Kispuszta, Nagy utca 3.',NULL,NULL),('ls40i3','Beulah','Larkin','1977-08-17','74749 Labadie Cliffs Suite 459\nAnnebury, WY 25882','35',32),('ml57y6','Garrick','Stanton','1997-06-17','72142 Rosenbaum Burg\nWest Ernestine, VT 36717','3',68),('mo29s4','Madeline','McGlynn','1997-07-13','5510 Kuhlman Plaza Suite 739\nJacobsonshire, VT 71611-3913','8425',67),('ne14z0','Thora','Skiles','1989-02-02','80481 Obie Lake\nNorth Sigmundfurt, NE 77561-6892','42',25),('no37b2','Zoey','Wintheiser','2008-04-05','49043 Eleonore Camp\nNew Eldridge, MA 18745-6170','575',84),('nx39t3','Gisselle','Kshlerin','1986-01-06','5619 Mante Junctions Suite 468\nBorerville, OR 39374-2859','20875',36),('oi52s8','Marlen','Daniel','2018-01-10','501 Lindsay Orchard Apt. 108\nZboncakland, ME 80397','673962',57),('ok41b6','Jovan','Hills','1972-09-05','372 Hassie Drives\nPort Jeramy, VT 40708-2680','',72),('op18e0','Ruben','Ondricka','2005-12-20','77958 Mosciski Pass Suite 503\nPort Davinville, WV 95052','76265866',85),('ou57z9','Betsy','Wuckert','1990-05-03','83019 Linnea Mills\nNorth Marcia, NC 13957','9',22),('ox87q4','Frederic','Schimmel','1983-11-04','9677 Dandre Shoals\nMalindaberg, WI 78157-5467','7220889',45),('pb15u2','Jay','Crona','2009-08-14','2466 Cummings Via\nKshlerinbury, TN 14835','2893',92),('pb30p5','Kathlyn','Predovic','1983-04-17','474 Balistreri Fords\nWindlermouth, GA 09948','83',49),('pd09q4','Kris','Effertz','1981-12-15','259 Kerluke Ranch\nPort Rachelle, MS 48090-4507','8',66),('pf74t8','Waino','Sanford','1985-11-09','3170 Weimann Camp\nGermanchester, WY 24097','2',99),('po39f8','Kelsie','Lockman','1999-06-04','614 Braun Plaza\nKilbacktown, OK 60223','6398874',98),('pt01f5','Evans','Welch','2022-10-28','326 Block Spur Apt. 511\nGloverfurt, MN 15966-2189','461814',70),('pt82y8','Alejandrin','Reynolds','1996-11-10','4612 Bradtke Crest Apt. 245\nRickfurt, NJ 74373-5263','88628888',80),('qa12r4','Connie','Von','2000-04-03','70402 Ada Ways\nSouth Clifford, WI 79128','3992135',51),('qf82g1','Izabella','Crona','1995-09-03','543 Bernadine Heights\nWest Cary, KY 29052','9647615',97),('qk10g7','Brian','Wisozk','1975-05-16','80562 Rachelle Tunnel\nEast Wendell, ME 85016-5732','886',81),('qo10n4','Garth','Barrows','2010-05-21','7805 Percy Cove Suite 293\nLake Valentinemouth, MD 24049','97',53),('qq22w4','Haley','Orn','1981-12-02','2873 O\'Connell Ridge Suite 654\nFritschstad, RI 73350-3066','5',78),('qr98q0','Donato','Kuphal','2018-04-20','22796 Kimberly Oval\nGaylordview, IL 11925','232',14),('qs10a2','Garth','Parker','2005-11-18','674 Graciela Cliff Suite 030\nNorth Roselynside, AR 88659-6063','64926951',35),('qv88x3','Dillon','Hansen','2022-01-02','013 Grady Shoal\nWest Clifford, CA 52332-5267','9874480',60),('qz23c0','Zena','Paucek','2019-12-18','5302 Kshlerin Plaza\nRhettstad, KY 33288','6738795',30),('ra63y8','Katherine','Mohr','1985-10-10','668 Orland Via Suite 304\nSchultzland, MO 92709','430',37),('rf72k1','Nicola','Hartmann','2000-12-16','34230 Daniel Terrace\nEast Carter, PA 91646-7260','',29),('rh46g2','Jedidiah','Ankunding','1977-11-28','75090 Hessel Vista Suite 570\nLake Leila, FL 16783','16108754',28),('sf58l6','Jessyca','Ruecker','2002-10-29','4564 Franecki Well Suite 341\nWest Willaside, FL 13743-6370','',4),('sg58d2','Vern','Funk','1991-11-12','830 Giovani Gateway Suite 314\nRafaelborough, CT 31537-8633','',47),('sj01r4','Alexandre','Schinner','2010-08-15','5266 Stanley Crossing Apt. 264\nEast Kelsiestad, WI 80502','43194897',44),('sn48w3','Rylan','Senger','1986-11-11','635 Kelley Port\nEast Vidalton, CT 58776-4771','',52),('sy93m0','Anthony','Herzog','1974-12-03','95713 Alyson Locks Apt. 050\nCasperberg, UT 29793-1313','',43),('sz33t0','Manuel','Fay','2007-08-14','05757 Nathanial Dale\nEarlenehaven, NY 98488','341707',38),('tb17v3','Eulah','Toy','1975-08-29','28917 Nathanael Forge Suite 614\nMaechester, NM 55475','67237064',7),('tp06e1','Merle','Predovic','1990-10-20','238 Wilfrid Isle\nConstantinview, AK 92645','97727884',93),('tq00j7','Francisco','Hauck','1989-09-11','13785 Bartell Forest\nHirtheburgh, WY 55067','48451',8),('tw27r0','Karlee','Cormier','1993-03-28','76041 Emery Cliff Apt. 558\nLake Willow, TX 26986','4598593',2),('ty03e7','Ezra','Lynch','2010-08-01','805 Friedrich Springs Suite 174\nKirstinborough, RI 35703-0978','87419751',6),('uk24y8','Yessenia','Davis','1976-12-05','71655 Dennis Isle\nSouth Sammy, VT 97448','80161591',88),('ur48f2','Dereck','Eichmann','2011-04-24','978 Considine Manors\nNorth Alfred, WI 72675','3969919',55),('vi28e1','Ara','Muller','1980-11-11','74389 McDermott Bypass\nLubowitzport, KY 21790','763891',54),('vo36r0','Harmon','Goyette','1971-01-21','409 Elyssa Course Suite 724\nPort Kevon, MN 24488-7282','72466893',59),('vo56t3','Francesca','D\'Amore','2003-11-12','5097 Mallie Port\nMillsmouth, NM 53091','984',9),('vp40g5','Krystel','Langosh','1978-09-29','17424 Maci Throughway\nNorth Gabrielle, NE 90804-2669','5',58),('vr94i0','Rickey','Howe','1981-06-23','632 Macejkovic Plaza Apt. 871\nWest Tonichester, NE 76360','50251178',77),('wa67t5','Tiara','Kris','1993-11-08','3317 Hauck Avenue Apt. 804\nWest Gradyhaven, TN 65141','31627',39),('wh42v2','Freddy','Eichmann','1993-09-13','107 Baumbach Freeway Suite 330\nReichertfort, GA 34062','36867',20),('ww05q0','Edgardo','Satterfield','1988-06-17','506 Kautzer Glen Apt. 196\nBauchfort, MT 29652','27180',34),('xm48d1','Ezequiel','Graham','1993-11-25','360 Russel Camp Apt. 089\nJonathanfort, CT 84399-8885','',90),('xx21y4','Lavina','Gerhold','2007-02-25','237 Kirlin Flats Apt. 040\nPort Jefferyfurt, FL 72009','348',42),('yw96a4','Joshua','Hartmann','1979-03-09','11344 Anna Mountain Suite 689\nShanieview, MT 56838-5964','979',13),('yx21t6','Karli','O\'Connell','1975-04-26','78964 Boehm Estate\nGarnettchester, HI 69635','57739654',40),('zd93j8','Pierre','Trantow','2012-09-08','66375 Laisha Tunnel\nHudsonshire, NV 92532-4758','',96),('ze57h8','Adolphus','Russel','1997-08-09','15350 Maeve Walks\nPort Erickastad, MD 70305','175',46),('zi98y0','Ursula','Welch','2019-12-03','089 Herzog Roads\nWest Otto, IA 01815','58903',94),('zk11j8','Trycia','Towne','1973-10-07','859 Osbaldo Circle Suite 896\nWest Louisa, MO 09515-1458','3326414',16),('zk73q5','Ole','Klocko','1989-01-12','22177 Koch Fort Apt. 074\nHintzfort, MS 66868','14240988',73),('zq24k3','Gordon','Murray','2020-06-22','597 Columbus Rest Suite 354\nWest Janellechester, HI 40172','473809',56),('zr09c1','Kailee','Barrows','1989-08-25','12107 Fahey Island Suite 660\nDarronfurt, ND 09633-5186','9178',18);
/*!40000 ALTER TABLE `college_students` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (101,'+36303220406','janoki.lilla@gmail.com'),(102,'+36501111111','njszk@sze.hu'),(103,'+36404445555','gh@sze.hu'),(119,'+36220564123','alma.xy@szemail.com'),(120,'+36606665555','kiss.jozsef.mszk@sze.hu'),(123,'+36303546666','kn.04@gmail.com'),(124,'+36505224444','x.b96@gmail.com'),(126,'+363022255555','SZEngine@sze.hu'),(127,'+36506667777','k.orsolya@sze.hu'),(128,'+32405254141','anna.son@gmail.com'),(136,'+65210004444','n.mark@citromail.hu'),(137,'+36665558888','art@sze.hu'),(140,'+36521414555','szell.kalm@sze.hu'),(141,'+36205544856','olga.b98@gmail.com'),(142,'+36225548878','dora.molnar@sze.hu'),(143,'+36603645588','molkor@gmail.com'),(144,'+36223334444','g.jakab@gmail.com'),(145,'+36304005000','kissmarton@sze.hu');
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
  `organization_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guest_id`),
  UNIQUE KEY `guest_id_UNIQUE` (`guest_id`),
  KEY `organization_id_idx` (`organization_name`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (101,NULL),(102,NULL),(1,'Altenwerth, Mann and Kunze'),(2,'Bahringer-Veum'),(3,'Bartell Inc'),(4,'Bartoletti-Dickens'),(5,'Baumbach-Lemke'),(6,'Bednar, Dare and Pacocha'),(7,'Berge-Cartwright'),(8,'Bergstrom Ltd'),(9,'Block, Nicolas and Moore'),(10,'Block-Windler'),(11,'Champlin-Jast'),(12,'Collins Group'),(13,'Conn-Bernhard'),(14,'Corkery, Homenick and Gleichner'),(15,'Crona, Howe and Mitchell'),(16,'Cummings, Schuster and West'),(17,'Dibbert-Greenholt'),(18,'Dooley, Lowe and Waelchi'),(19,'Dooley-Braun'),(20,'Doyle Ltd');
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
INSERT INTO `instructors` VALUES ('00uei2','Fay','Okuneva','q438',63),('01bxx1','Isai','Jenkins','j661',89),('03gnl1','Kole','Kris','o741',74),('03jer7','Alia','Parisian','z123',12),('03juo9','Shannon','Torphy','t594',90),('04eqf8','Sage','Windler','d039',41),('04tss0','Laury','Prohaska','c918',21),('05sdc6','Edwina','Olson','e852',30),('07kjl0','Brice','Reinger','i057',26),('09gvq8','Abagail','Kuhlman','g555',18),('09mmi7','Delaney','Kirlin','s209',10),('09war4','Alicia','Cremin','w591',99),('10byk2','Ahmed','Kerluke','l880',71),('11bip1','Cayla','Streich','q879',60),('12whn6','Conner','Sawayn','f118',91),('13wng0','Easton','Stracke','m125',46),('16std0','Audrey','Feeney','c934',96),('16zsp0','Colby','Bergnaum','i458',48),('17dys0','Joany','Gutkowski','c123',42),('17jtk9','Mohammed','Bailey','m015',84),('18joj2','Carole','Hermann','l113',61),('19xdy4','Hosea','Nitzsche','e660',76),('21fgc1','Bianka','Kuphal','g197',51),('21mjk6','Floy','Langosh','y672',53),('22iwq6','Jarod','Auer','i191',52),('22qfm1','Peyton','Herman','x830',73),('26uek6','Alphonso','Murazik','k370',13),('27amo1','Lura','Kuhic','v263',15),('28lpi8','Maegan','Blick','k028',64),('28xeh7','Orpha','Pacocha','j921',72),('29lhr0','Lacey','Bosco','u063',3),('30jxp0','Damaris','Roob','v239',100),('31ysr1','Danial','Vandervort','m522',57),('32myw6','Trevion','Ebert','a401',1),('32nzn7','Annamarie','Koss','x828',20),('33din1','Aurelie','Gibson','g842',32),('34eio8','Bette','Keeling','b933',44),('34lzp9','Nichole','O\'Conner','o941',69),('34wvp3','Ronaldo','Padberg','j409',80),('36nxt1','Katlyn','Leuschke','u290',35),('38xcb6','Erika','Beatty','y030',77),('39dfl9','Keon','Schulist','b853',56),('39qpb9','Ila','Flatley','l091',9),('40nlm0','Jarret','Waelchi','c234',47),('41yjs5','Christa','Weimann','l970',70),('42keb3','Pansy','Boyer','j254',50),('46cua4','Jamir','Friesen','n330',4),('46gyw0','Donny','Jacobi','z894',45),('49cvn5','Dominique','Gutkowski','q455',49),('49vjz8','Toney','Dach','i020',5),('51ydq8','Mara','Johns','e417',86),('52gcb4','Mckenzie','Braun','p924',87),('52qme8','Florian','Treutel','j940',94),('52uuz0','Ava','Wuckert','e153',54),('53yzl4','Roberta','O\'Kon','o377',43),('54epl2','Ian','Batz','e752',11),('54khw3','Sedrick','White','u464',88),('55pli3','Aleen','Zulauf','z724',93),('55rhk3','Angus','Bednar','i659',85),('55woh8','Jimmy','Abernathy','d047',2),('56lhq8','Edmund','Jacobi','o939',78),('57hwt1','Ulises','Upton','v099',37),('59gbh6','Alisa','Lockman','g282',34),('59ros3','Darlene','Toy','i944',6),('59xkp6','Johnnie','Beer','e752',79),('60iwq7','Laverna','McGlynn','h435',82),('60rbp8','Gay','Leuschke','v405',83),('62ufe5','Gustave','Lockman','f410',97),('64vws5','Isai','Rodriguez','b156',24),('64weo3','Alessandro','Barton','h287',27),('67khn9','Gage','O\'Kon','a771',23),('68ceo0','Ed','Koepp','a491',31),('68ifq0','Terrence','Sawayn','v857',22),('69ira7','Margie','Senger','g868',14),('71hrw8','Fletcher','Durgan','p806',29),('74ayx3','Kitty','Koch','y977',81),('74iye2','Norwood','Harber','l213',95),('77ksh7','Jason','Weimann','b885',92),('77ocm0','Benjamin','Treutel','q837',17),('78atg7','Jazlyn','Jast','w322',38),('78dkf7','Cale','Pacocha','v498',66),('80cnh2','Cortney','Corwin','v582',8),('82twd9','Jayne','Brakus','r463',16),('84pxl2','Joseph','Parker','z485',55),('84ykm5','Elmo','Prosacco','s892',40),('84zip2','Jacky','Hamill','w459',33),('85dpz6','Lizzie','Howell','v783',28),('85ggm1','Tyrel','Turcotte','l496',59),('85qkc1','Vivianne','Zulauf','r028',75),('88nvk1','Timmothy','Collier','p138',65),('89nkl5','Emmie','Bauch','f728',58),('90xdx9','Gideon','Stokes','k930',68),('91akf6','Delaney','Lowe','z492',7),('92axb8','Lempi','Heidenreich','d455',62),('92mkc6','Pattie','Batz','o827',39),('94saj4','Oma','Price','x663',25),('95ywx2','Marlee','Barrows','v305',67),('96zwc0','Jasmin','Lesch','x414',36),('97fvd2','Jarrod','Blanda','a073',98),('97gii8','Jessica','Hickle','v034',19),('ALKDK3','Kálmán','Széll','B240',140),('ASDFGG','Dóra','Molnár','A506',142),('ASDFK4','Krisztián','Kiss','B354',NULL),('EFGHIJ','Márton','Kiss','Z231',145),('LNOKJ4','Orsolya','Kiss','C606',127),('NEPTUN','Gábor','Horváth','Z666',103);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instuctors_organizations`
--

LOCK TABLES `instuctors_organizations` WRITE;
/*!40000 ALTER TABLE `instuctors_organizations` DISABLE KEYS */;
INSERT INTO `instuctors_organizations` VALUES (1,'00uei2','Altenwerth, Mann and Kunze'),(2,'01bxx1','Bahringer-Veum'),(3,'03gnl1','Bartell Inc'),(4,'03jer7','Bartoletti-Dickens'),(5,'03juo9','Baumbach-Lemke'),(6,'04eqf8','Bednar, Dare and Pacocha'),(7,'04tss0','Berge-Cartwright'),(8,'05sdc6','Bergstrom Ltd'),(9,'07kjl0','Block, Nicolas and Moore'),(10,'09gvq8','Block-Windler'),(11,'09mmi7','Champlin-Jast'),(12,'09war4','Collins Group'),(13,'10byk2','Conn-Bernhard'),(14,'11bip1','Corkery, Homenick and Gleichner'),(15,'12whn6','Crona, Howe and Mitchell'),(16,'13wng0','Cummings, Schuster and West'),(17,'16std0','Dibbert-Greenholt'),(18,'16zsp0','Dooley, Lowe and Waelchi'),(19,'17dys0','Dooley-Braun'),(20,'17jtk9','Doyle Ltd'),(21,'18joj2','DuBuque, Waelchi and Auer'),(22,'19xdy4','Fahey, Raynor and Hirthe'),(23,'21fgc1','Fahey-Kuphal'),(24,'21mjk6','Farrell LLC'),(25,'22iwq6','Fay-Langworth'),(26,'22qfm1','Fisher Inc'),(27,'26uek6','Frami-Cassin'),(28,'27amo1','Friesen-Dickens'),(29,'28lpi8','Funk-McKenzie'),(30,'28xeh7','Gerhold-Pfannerstill'),(31,'29lhr0','Gibson-Kessler'),(32,'30jxp0','Gislason Group'),(33,'31ysr1','Gislason, Schamberger and Zboncak'),(34,'32myw6','Gulgowski and Sons'),(35,'32nzn7','Gutmann-Ebert'),(36,'33din1','Haley Ltd'),(37,'34eio8','Haley-Schneider'),(38,'34lzp9','Hansen Ltd'),(39,'34wvp3','Hayes-O\'Reilly'),(40,'36nxt1','Heller, Trantow and Douglas'),(41,'38xcb6','Hilll LLC'),(42,'39dfl9','Hilpert-Hand'),(43,'39qpb9','Hodkiewicz, Windler and Shields'),(44,'40nlm0','Howe Group'),(45,'41yjs5','Hyatt LLC'),(46,'42keb3','Johns-Kuphal'),(47,'46cua4','Keeling, Streich and Kreiger'),(48,'46gyw0','King-Upton'),(49,'49cvn5','Kohler, Senger and Medhurst'),(50,'49vjz8','Kozey-Frami'),(51,'51ydq8','Kreiger, Raynor and Gutmann'),(52,'52gcb4','Kreiger-Heaney'),(53,'52qme8','Kuhic Inc'),(54,'52uuz0','Lang-Fritsch'),(55,'53yzl4','Langosh Group'),(56,'54epl2','Langworth, Bayer and Wuckert'),(57,'54khw3','Larkin LLC'),(58,'55pli3','Marquardt, Smith and Bednar'),(59,'55rhk3','McCullough, Kovacek and Bradtke'),(60,'55woh8','O\'Hara, Farrell and Prohaska'),(61,'56lhq8','O\'Keefe, Fadel and Rice'),(62,'57hwt1','O\'Kon Group'),(63,'59gbh6','O\'Kon, Abbott and Schmitt'),(64,'59ros3','O\'Reilly-Kreiger'),(65,'59xkp6','Ondricka-Bins'),(66,'60iwq7','Osinski LLC'),(67,'60rbp8','Osinski-Jakubowski'),(68,'62ufe5','Pacocha, Rohan and McKenzie'),(69,'64vws5','Pagac Group'),(70,'64weo3','Pagac LLC'),(71,'67khn9','Pouros, Rodriguez and Torp'),(72,'68ceo0','Predovic Inc'),(73,'68ifq0','Ratke, Lang and Mann'),(74,'69ira7','Reichert, Wyman and Fahey'),(75,'71hrw8','Roberts, Rice and Nicolas'),(76,'74ayx3','Rodriguez Inc'),(77,'74iye2','Roob, Schinner and Botsford'),(78,'77ksh7','Runte-Bogisich'),(79,'77ocm0','Satterfield, Corwin and Medhurst'),(80,'78atg7','Schinner-Lang'),(81,'78dkf7','Spencer-Rutherford'),(82,'80cnh2','Sporer-Yost'),(83,'82twd9','Stamm-Howell'),(84,'84pxl2','Stehr-Olson'),(85,'84ykm5','Steuber Ltd'),(86,'84zip2','Steuber-Gutkowski'),(87,'85dpz6','Trantow Group'),(88,'85ggm1','Upton-Donnelly'),(89,'85qkc1','Veum, Corkery and West'),(90,'88nvk1','Von-Mann'),(91,'89nkl5','Von-Torp'),(92,'90xdx9','VonRueden-Stracke'),(93,'91akf6','Walker-Bruen'),(94,'92axb8','Walsh-Herzog'),(95,'92mkc6','Ward Ltd'),(96,'94saj4','Wilkinson LLC'),(97,'95ywx2','Windler, Gutkowski and Kris'),(98,'96zwc0','Wisozk-Williamson'),(99,'97fvd2','Wuckert, Grant and Schuppe'),(100,'97gii8','Yundt, Willms and Lowe'),(102,'NEPTUN','Neumann János Informatikai Szakkollégium'),(103,'ALKDK3','Audi Racing Team'),(104,'LNOKJ4','SZEnergy');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'Windler, Gutkowski and Kris',1),(2,'VonRueden-Stracke',2),(3,'Yundt, Willms and Lowe',3),(4,'Johns-Kuphal',4),(5,'Gibson-Kessler',5),(6,'Langosh Group',6),(7,'Pouros, Rodriguez and Torp',7),(8,'Gerhold-Pfannerstill',8),(9,'Upton-Donnelly',9),(10,'Bartell Inc',10),(11,'Bahringer-Veum',11),(12,'Fisher Inc',12),(13,'O\'Hara, Farrell and Prohaska',13),(14,'Fahey-Kuphal',14),(15,'Heller, Trantow and Douglas',15),(16,'Gulgowski and Sons',16),(17,'Marquardt, Smith and Bednar',17),(18,'Funk-McKenzie',18),(19,'McCullough, Kovacek and Bradtke',19),(20,'Schinner-Lang',20),(21,'Steuber Ltd',21),(22,'Reichert, Wyman and Fahey',22),(23,'Stehr-Olson',23),(24,'Frami-Cassin',24),(25,'Friesen-Dickens',25),(26,'Walsh-Herzog',26),(27,'Kohler, Senger and Medhurst',27),(28,'Haley Ltd',28),(29,'Fahey, Raynor and Hirthe',29),(30,'Ondricka-Bins',30),(31,'Baumbach-Lemke',31),(32,'Walker-Bruen',32),(33,'Wisozk-Williamson',33),(34,'Roob, Schinner and Botsford',34),(35,'Satterfield, Corwin and Medhurst',35),(36,'Gislason, Schamberger and Zboncak',36),(37,'Bednar, Dare and Pacocha',37),(38,'Ward Ltd',38),(39,'Hilpert-Hand',39),(40,'Kuhic Inc',40),(41,'Collins Group',41),(42,'Haley-Schneider',42),(43,'Fay-Langworth',43),(44,'Stamm-Howell',44),(45,'Trantow Group',45),(46,'Hilll LLC',46),(47,'Lang-Fritsch',47),(48,'Conn-Bernhard',48),(49,'Spencer-Rutherford',49),(50,'Dibbert-Greenholt',50),(51,'Hansen Ltd',51),(52,'Howe Group',52),(53,'Kozey-Frami',53),(54,'O\'Keefe, Fadel and Rice',54),(55,'Bergstrom Ltd',55),(56,'Gutmann-Ebert',56),(57,'Dooley, Lowe and Waelchi',57),(58,'Altenwerth, Mann and Kunze',58),(59,'Bartoletti-Dickens',59),(60,'Pagac LLC',60),(61,'Hyatt LLC',61),(62,'DuBuque, Waelchi and Auer',62),(63,'Ratke, Lang and Mann',63),(64,'Langworth, Bayer and Wuckert',64),(65,'Rodriguez Inc',65),(66,'Veum, Corkery and West',66),(67,'Pacocha, Rohan and McKenzie',67),(68,'Hayes-O\'Reilly',68),(69,'Roberts, Rice and Nicolas',69),(70,'Steuber-Gutkowski',70),(71,'Predovic Inc',71),(72,'Kreiger, Raynor and Gutmann',72),(73,'Von-Torp',73),(74,'Kreiger-Heaney',74),(75,'Crona, Howe and Mitchell',75),(76,'Wilkinson LLC',76),(77,'Von-Mann',77),(78,'O\'Kon Group',78),(79,'Block, Nicolas and Moore',79),(80,'Osinski LLC',80),(81,'Farrell LLC',81),(82,'Berge-Cartwright',82),(83,'Cummings, Schuster and West',83),(84,'Runte-Bogisich',84),(85,'Dooley-Braun',85),(86,'Sporer-Yost',86),(87,'Doyle Ltd',87),(88,'Champlin-Jast',88),(89,'O\'Reilly-Kreiger',89),(90,'Hodkiewicz, Windler and Shields',90),(91,'Wuckert, Grant and Schuppe',91),(92,'Osinski-Jakubowski',92),(93,'O\'Kon, Abbott and Schmitt',93),(94,'Corkery, Homenick and Gleichner',94),(95,'King-Upton',95),(96,'Keeling, Streich and Kreiger',96),(97,'Block-Windler',97),(98,'Pagac Group',98),(99,'Larkin LLC',99),(100,'Gislason Group',100),(101,'Neumann János Informatikai Szakkollégium',102),(102,'Kiss József Matematikus Szakkollégium',120),(103,'SZEngine',126),(109,'SZEnergy',106),(110,'Audi Racing Team',137);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations_cabinets`
--

LOCK TABLES `organizations_cabinets` WRITE;
/*!40000 ALTER TABLE `organizations_cabinets` DISABLE KEYS */;
INSERT INTO `organizations_cabinets` VALUES (1,'Altenwerth, Mann and Kunze',1),(2,'Bahringer-Veum',2),(3,'Bartell Inc',3),(4,'Bartoletti-Dickens',4),(5,'Baumbach-Lemke',5),(6,'Bednar, Dare and Pacocha',6),(7,'Berge-Cartwright',7),(8,'Bergstrom Ltd',8),(9,'Block, Nicolas and Moore',9),(10,'Block-Windler',10),(11,'Champlin-Jast',11),(12,'Collins Group',12),(13,'Conn-Bernhard',13),(14,'Corkery, Homenick and Gleichner',14),(15,'Crona, Howe and Mitchell',15),(16,'Cummings, Schuster and West',16),(17,'Dibbert-Greenholt',17),(18,'Dooley, Lowe and Waelchi',18),(19,'Dooley-Braun',19),(20,'Doyle Ltd',20),(21,'DuBuque, Waelchi and Auer',1),(22,'Fahey, Raynor and Hirthe',2),(23,'Fahey-Kuphal',3),(24,'Farrell LLC',4),(25,'Fay-Langworth',5),(26,'Fisher Inc',6),(27,'Frami-Cassin',7),(28,'Friesen-Dickens',8),(29,'Funk-McKenzie',9),(30,'Gerhold-Pfannerstill',10),(31,'Gibson-Kessler',11),(32,'Gislason Group',12),(33,'Gislason, Schamberger and Zboncak',13),(34,'Gulgowski and Sons',14),(35,'Gutmann-Ebert',15),(36,'Haley Ltd',16),(37,'Haley-Schneider',17),(38,'Hansen Ltd',18),(39,'Hayes-O\'Reilly',19),(40,'Heller, Trantow and Douglas',20),(41,'Hilll LLC',1),(42,'Hilpert-Hand',2),(43,'Hodkiewicz, Windler and Shields',3),(44,'Howe Group',4),(45,'Hyatt LLC',5),(46,'Johns-Kuphal',6),(47,'Keeling, Streich and Kreiger',7),(48,'King-Upton',8),(49,'Kohler, Senger and Medhurst',9),(50,'Kozey-Frami',10),(51,'Kreiger, Raynor and Gutmann',11),(52,'Kreiger-Heaney',12),(53,'Kuhic Inc',13),(54,'Lang-Fritsch',14),(55,'Langosh Group',15),(56,'Langworth, Bayer and Wuckert',16),(57,'Larkin LLC',17),(58,'Marquardt, Smith and Bednar',18),(59,'McCullough, Kovacek and Bradtke',19),(60,'O\'Hara, Farrell and Prohaska',20),(61,'O\'Keefe, Fadel and Rice',1),(62,'O\'Kon Group',2),(63,'O\'Kon, Abbott and Schmitt',3),(64,'O\'Reilly-Kreiger',4),(65,'Ondricka-Bins',5),(66,'Osinski LLC',6),(67,'Osinski-Jakubowski',7),(68,'Pacocha, Rohan and McKenzie',8),(69,'Pagac Group',9),(70,'Pagac LLC',10),(71,'Pouros, Rodriguez and Torp',11),(72,'Predovic Inc',12),(73,'Ratke, Lang and Mann',13),(74,'Reichert, Wyman and Fahey',14),(75,'Roberts, Rice and Nicolas',15),(76,'Rodriguez Inc',16),(77,'Roob, Schinner and Botsford',17),(78,'Runte-Bogisich',18),(79,'Satterfield, Corwin and Medhurst',19),(80,'Schinner-Lang',20),(81,'Spencer-Rutherford',1),(82,'Sporer-Yost',2),(83,'Stamm-Howell',3),(84,'Stehr-Olson',4),(85,'Steuber Ltd',5),(86,'Steuber-Gutkowski',6),(87,'Trantow Group',7),(88,'Upton-Donnelly',8),(89,'Veum, Corkery and West',9),(90,'Von-Mann',10),(91,'Von-Torp',11),(92,'VonRueden-Stracke',12),(93,'Walker-Bruen',13),(94,'Walsh-Herzog',14),(95,'Ward Ltd',15),(96,'Wilkinson LLC',16),(97,'Windler, Gutkowski and Kris',17),(98,'Wisozk-Williamson',18),(99,'Wuckert, Grant and Schuppe',19),(100,'Yundt, Willms and Lowe',20),(102,'Neumann János Informatikai Szakkollégium',101);
/*!40000 ALTER TABLE `organizations_cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `president_students`
--

DROP TABLE IF EXISTS `president_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `president_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(6) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `student_id_idx` (`student_id`),
  KEY `organization_id_idx` (`organization_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president_students`
--

LOCK TABLES `president_students` WRITE;
/*!40000 ALTER TABLE `president_students` DISABLE KEYS */;
INSERT INTO `president_students` VALUES (1,'aa33i2','Altenwerth, Mann and Kunze'),(2,'aj23s0','Bahringer-Veum'),(3,'aj32p6','Bartell Inc'),(4,'aj45u5','Bartoletti-Dickens'),(5,'al56s6','Baumbach-Lemke'),(6,'au89t8','Bednar, Dare and Pacocha'),(7,'bd63p4','Berge-Cartwright'),(8,'bj38k3','Bergstrom Ltd'),(9,'bv45p3','Block, Nicolas and Moore'),(10,'by28h6','Block-Windler'),(11,'bz72c5','Champlin-Jast'),(12,'cg62m9','Collins Group'),(13,'cm06j0','Conn-Bernhard'),(14,'cn32z7','Corkery, Homenick and Gleichner'),(15,'ct27d4','Crona, Howe and Mitchell'),(16,'df87v7','Cummings, Schuster and West'),(17,'do18e4','Dibbert-Greenholt'),(18,'ds99m1','Dooley, Lowe and Waelchi'),(19,'dt33v5','Dooley-Braun'),(20,'dw96y3','Doyle Ltd'),(21,'ed51y1','DuBuque, Waelchi and Auer'),(22,'en12n4','Fahey, Raynor and Hirthe'),(23,'ep92v0','Fahey-Kuphal'),(24,'gf50w9','Farrell LLC'),(25,'gj06u6','Fay-Langworth'),(26,'gm36o5','Fisher Inc'),(27,'gn94c8','Frami-Cassin'),(28,'hj82a2','Friesen-Dickens'),(29,'hx87y3','Funk-McKenzie'),(30,'ib21t6','Gerhold-Pfannerstill'),(31,'ig08a0','Gibson-Kessler'),(32,'il97l3','Gislason Group'),(33,'je73u6','Gislason, Schamberger and Zboncak'),(34,'jo07v1','Gulgowski and Sons'),(35,'jx32a8','Gutmann-Ebert'),(36,'kh07c9','Haley Ltd'),(37,'ki74v3','Haley-Schneider'),(38,'kv08w1','Hansen Ltd'),(39,'ls40i3','Hayes-O\'Reilly'),(40,'ml57y6','Heller, Trantow and Douglas'),(41,'mo29s4','Hilll LLC'),(42,'ne14z0','Hilpert-Hand'),(43,'no37b2','Hodkiewicz, Windler and Shields'),(44,'nx39t3','Howe Group'),(45,'oi52s8','Hyatt LLC'),(46,'ok41b6','Johns-Kuphal'),(47,'op18e0','Keeling, Streich and Kreiger'),(48,'ou57z9','King-Upton'),(49,'ox87q4','Kohler, Senger and Medhurst'),(50,'pb15u2','Kozey-Frami'),(51,'pb30p5','Kreiger, Raynor and Gutmann'),(52,'pd09q4','Kreiger-Heaney'),(53,'pf74t8','Kuhic Inc'),(54,'po39f8','Lang-Fritsch'),(55,'pt01f5','Langosh Group'),(56,'pt82y8','Langworth, Bayer and Wuckert'),(57,'qa12r4','Larkin LLC'),(58,'qf82g1','Marquardt, Smith and Bednar'),(59,'qk10g7','McCullough, Kovacek and Bradtke'),(60,'qo10n4','O\'Hara, Farrell and Prohaska'),(61,'qq22w4','O\'Keefe, Fadel and Rice'),(62,'qr98q0','O\'Kon Group'),(63,'qs10a2','O\'Kon, Abbott and Schmitt'),(64,'qv88x3','O\'Reilly-Kreiger'),(65,'qz23c0','Ondricka-Bins'),(66,'ra63y8','Osinski LLC'),(67,'rf72k1','Osinski-Jakubowski'),(68,'rh46g2','Pacocha, Rohan and McKenzie'),(69,'sf58l6','Pagac Group'),(70,'sg58d2','Pagac LLC'),(71,'sj01r4','Pouros, Rodriguez and Torp'),(72,'sn48w3','Predovic Inc'),(73,'sy93m0','Ratke, Lang and Mann'),(74,'sz33t0','Reichert, Wyman and Fahey'),(75,'tb17v3','Roberts, Rice and Nicolas'),(76,'tp06e1','Rodriguez Inc'),(77,'tq00j7','Roob, Schinner and Botsford'),(78,'tw27r0','Runte-Bogisich'),(79,'ty03e7','Satterfield, Corwin and Medhurst'),(80,'uk24y8','Schinner-Lang'),(81,'ur48f2','Spencer-Rutherford'),(82,'vi28e1','Sporer-Yost'),(83,'vo36r0','Stamm-Howell'),(84,'vo56t3','Stehr-Olson'),(85,'vp40g5','Steuber Ltd'),(86,'vr94i0','Steuber-Gutkowski'),(87,'wa67t5','Trantow Group'),(88,'wh42v2','Upton-Donnelly'),(89,'ww05q0','Veum, Corkery and West'),(90,'xm48d1','Von-Mann'),(91,'xx21y4','Von-Torp'),(92,'yw96a4','VonRueden-Stracke'),(93,'yx21t6','Walker-Bruen'),(94,'zd93j8','Walsh-Herzog'),(95,'ze57h8','Ward Ltd'),(96,'zi98y0','Wilkinson LLC'),(97,'zk11j8','Windler, Gutkowski and Kris'),(98,'zk73q5','Wisozk-Williamson'),(99,'zq24k3','Wuckert, Grant and Schuppe'),(100,'zr09c1','Yundt, Willms and Lowe');
/*!40000 ALTER TABLE `president_students` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_organizations`
--

LOCK TABLES `students_organizations` WRITE;
/*!40000 ALTER TABLE `students_organizations` DISABLE KEYS */;
INSERT INTO `students_organizations` VALUES (1,'aa33i2','Altenwerth, Mann and Kunze'),(2,'aj23s0','Bahringer-Veum'),(3,'aj32p6','Bartell Inc'),(4,'aj45u5','Bartoletti-Dickens'),(5,'al56s6','Baumbach-Lemke'),(6,'au89t8','Bednar, Dare and Pacocha'),(7,'bd63p4','Berge-Cartwright'),(8,'bj38k3','Bergstrom Ltd'),(9,'bv45p3','Block, Nicolas and Moore'),(10,'by28h6','Block-Windler'),(11,'bz72c5','Champlin-Jast'),(12,'cg62m9','Collins Group'),(13,'cm06j0','Conn-Bernhard'),(14,'cn32z7','Corkery, Homenick and Gleichner'),(15,'ct27d4','Crona, Howe and Mitchell'),(16,'df87v7','Cummings, Schuster and West'),(17,'do18e4','Dibbert-Greenholt'),(18,'ds99m1','Dooley, Lowe and Waelchi'),(19,'dt33v5','Dooley-Braun'),(20,'dw96y3','Doyle Ltd'),(21,'ed51y1','DuBuque, Waelchi and Auer'),(22,'en12n4','Fahey, Raynor and Hirthe'),(23,'ep92v0','Fahey-Kuphal'),(24,'gf50w9','Farrell LLC'),(25,'gj06u6','Fay-Langworth'),(26,'gm36o5','Fisher Inc'),(27,'gn94c8','Frami-Cassin'),(28,'hj82a2','Friesen-Dickens'),(29,'hx87y3','Funk-McKenzie'),(30,'ib21t6','Gerhold-Pfannerstill'),(31,'ig08a0','Gibson-Kessler'),(32,'il97l3','Gislason Group'),(33,'je73u6','Gislason, Schamberger and Zboncak'),(34,'jo07v1','Gulgowski and Sons'),(35,'jx32a8','Gutmann-Ebert'),(36,'kh07c9','Haley Ltd'),(37,'ki74v3','Haley-Schneider'),(38,'kv08w1','Hansen Ltd'),(39,'ls40i3','Hayes-O\'Reilly'),(40,'ml57y6','Heller, Trantow and Douglas'),(41,'mo29s4','Hilll LLC'),(42,'ne14z0','Hilpert-Hand'),(43,'no37b2','Hodkiewicz, Windler and Shields'),(44,'nx39t3','Howe Group'),(45,'oi52s8','Hyatt LLC'),(46,'ok41b6','Johns-Kuphal'),(47,'op18e0','Keeling, Streich and Kreiger'),(48,'ou57z9','King-Upton'),(49,'ox87q4','Kohler, Senger and Medhurst'),(50,'pb15u2','Kozey-Frami'),(51,'pb30p5','Kreiger, Raynor and Gutmann'),(52,'pd09q4','Kreiger-Heaney'),(53,'pf74t8','Kuhic Inc'),(54,'po39f8','Lang-Fritsch'),(55,'pt01f5','Langosh Group'),(56,'pt82y8','Langworth, Bayer and Wuckert'),(57,'qa12r4','Larkin LLC'),(58,'qf82g1','Marquardt, Smith and Bednar'),(59,'qk10g7','McCullough, Kovacek and Bradtke'),(60,'qo10n4','O\'Hara, Farrell and Prohaska'),(61,'qq22w4','O\'Keefe, Fadel and Rice'),(62,'qr98q0','O\'Kon Group'),(63,'qs10a2','O\'Kon, Abbott and Schmitt'),(64,'qv88x3','O\'Reilly-Kreiger'),(65,'qz23c0','Ondricka-Bins'),(66,'ra63y8','Osinski LLC'),(67,'rf72k1','Osinski-Jakubowski'),(68,'rh46g2','Pacocha, Rohan and McKenzie'),(69,'sf58l6','Pagac Group'),(70,'sg58d2','Pagac LLC'),(71,'sj01r4','Pouros, Rodriguez and Torp'),(72,'sn48w3','Predovic Inc'),(73,'sy93m0','Ratke, Lang and Mann'),(74,'sz33t0','Reichert, Wyman and Fahey'),(75,'tb17v3','Roberts, Rice and Nicolas'),(76,'tp06e1','Rodriguez Inc'),(77,'tq00j7','Roob, Schinner and Botsford'),(78,'tw27r0','Runte-Bogisich'),(79,'ty03e7','Satterfield, Corwin and Medhurst'),(80,'uk24y8','Schinner-Lang'),(81,'ur48f2','Spencer-Rutherford'),(82,'vi28e1','Sporer-Yost'),(83,'vo36r0','Stamm-Howell'),(84,'vo56t3','Stehr-Olson'),(85,'vp40g5','Steuber Ltd'),(86,'vr94i0','Steuber-Gutkowski'),(87,'wa67t5','Trantow Group'),(88,'wh42v2','Upton-Donnelly'),(89,'ww05q0','Veum, Corkery and West'),(90,'xm48d1','Von-Mann'),(91,'xx21y4','Von-Torp'),(92,'yw96a4','VonRueden-Stracke'),(93,'yx21t6','Walker-Bruen'),(94,'zd93j8','Walsh-Herzog'),(95,'ze57h8','Ward Ltd'),(96,'zi98y0','Wilkinson LLC'),(97,'zk11j8','Windler, Gutkowski and Kris'),(98,'zk73q5','Wisozk-Williamson'),(99,'zq24k3','Wuckert, Grant and Schuppe'),(100,'zr09c1','Yundt, Willms and Lowe'),(101,'G4O424','Neumann János Informatikai Szakkollégium'),(112,'APPLE1','SZEnergy'),(113,'G4O424','SZEnergy'),(114,'FGD34L','Neumann János Informatikai Szakkollégium'),(115,'FLKE23','Neumann János Informatikai Szakkollégium');
/*!40000 ALTER TABLE `students_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vice_president_students`
--

DROP TABLE IF EXISTS `vice_president_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vice_president_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(6) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `student_id_idx` (`student_id`),
  KEY `organization_id_idx` (`organization_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vice_president_students`
--

LOCK TABLES `vice_president_students` WRITE;
/*!40000 ALTER TABLE `vice_president_students` DISABLE KEYS */;
INSERT INTO `vice_president_students` VALUES (1,'aa33i2','Altenwerth, Mann and Kunze'),(2,'aj23s0','Bahringer-Veum'),(3,'aj32p6','Bartell Inc'),(4,'aj45u5','Bartoletti-Dickens'),(5,'al56s6','Baumbach-Lemke'),(6,'au89t8','Bednar, Dare and Pacocha'),(7,'bd63p4','Berge-Cartwright'),(8,'bj38k3','Bergstrom Ltd'),(9,'bv45p3','Block, Nicolas and Moore'),(10,'by28h6','Block-Windler'),(11,'bz72c5','Champlin-Jast'),(12,'cg62m9','Collins Group'),(13,'cm06j0','Conn-Bernhard'),(14,'cn32z7','Corkery, Homenick and Gleichner'),(15,'ct27d4','Crona, Howe and Mitchell'),(16,'df87v7','Cummings, Schuster and West'),(17,'do18e4','Dibbert-Greenholt'),(18,'ds99m1','Dooley, Lowe and Waelchi'),(19,'dt33v5','Dooley-Braun'),(20,'dw96y3','Doyle Ltd'),(21,'ed51y1','DuBuque, Waelchi and Auer'),(22,'en12n4','Fahey, Raynor and Hirthe'),(23,'ep92v0','Fahey-Kuphal'),(24,'gf50w9','Farrell LLC'),(25,'gj06u6','Fay-Langworth'),(26,'gm36o5','Fisher Inc'),(27,'gn94c8','Frami-Cassin'),(28,'hj82a2','Friesen-Dickens'),(29,'hx87y3','Funk-McKenzie'),(30,'ib21t6','Gerhold-Pfannerstill'),(31,'ig08a0','Gibson-Kessler'),(32,'il97l3','Gislason Group'),(33,'je73u6','Gislason, Schamberger and Zboncak'),(34,'jo07v1','Gulgowski and Sons'),(35,'jx32a8','Gutmann-Ebert'),(36,'kh07c9','Haley Ltd'),(37,'ki74v3','Haley-Schneider'),(38,'kv08w1','Hansen Ltd'),(39,'ls40i3','Hayes-O\'Reilly'),(40,'ml57y6','Heller, Trantow and Douglas'),(41,'mo29s4','Hilll LLC'),(42,'ne14z0','Hilpert-Hand'),(43,'no37b2','Hodkiewicz, Windler and Shields'),(44,'nx39t3','Howe Group'),(45,'oi52s8','Hyatt LLC'),(46,'ok41b6','Johns-Kuphal'),(47,'op18e0','Keeling, Streich and Kreiger'),(48,'ou57z9','King-Upton'),(49,'ox87q4','Kohler, Senger and Medhurst'),(50,'pb15u2','Kozey-Frami'),(51,'pb30p5','Kreiger, Raynor and Gutmann'),(52,'pd09q4','Kreiger-Heaney'),(53,'pf74t8','Kuhic Inc'),(54,'po39f8','Lang-Fritsch'),(55,'pt01f5','Langosh Group'),(56,'pt82y8','Langworth, Bayer and Wuckert'),(57,'qa12r4','Larkin LLC'),(58,'qf82g1','Marquardt, Smith and Bednar'),(59,'qk10g7','McCullough, Kovacek and Bradtke'),(60,'qo10n4','O\'Hara, Farrell and Prohaska'),(61,'qq22w4','O\'Keefe, Fadel and Rice'),(62,'qr98q0','O\'Kon Group'),(63,'qs10a2','O\'Kon, Abbott and Schmitt'),(64,'qv88x3','O\'Reilly-Kreiger'),(65,'qz23c0','Ondricka-Bins'),(66,'ra63y8','Osinski LLC'),(67,'rf72k1','Osinski-Jakubowski'),(68,'rh46g2','Pacocha, Rohan and McKenzie'),(69,'sf58l6','Pagac Group'),(70,'sg58d2','Pagac LLC'),(71,'sj01r4','Pouros, Rodriguez and Torp'),(72,'sn48w3','Predovic Inc'),(73,'sy93m0','Ratke, Lang and Mann'),(74,'sz33t0','Reichert, Wyman and Fahey'),(75,'tb17v3','Roberts, Rice and Nicolas'),(76,'tp06e1','Rodriguez Inc'),(77,'tq00j7','Roob, Schinner and Botsford'),(78,'tw27r0','Runte-Bogisich'),(79,'ty03e7','Satterfield, Corwin and Medhurst'),(80,'uk24y8','Schinner-Lang'),(81,'ur48f2','Spencer-Rutherford'),(82,'vi28e1','Sporer-Yost'),(83,'vo36r0','Stamm-Howell'),(84,'vo56t3','Stehr-Olson'),(85,'vp40g5','Steuber Ltd'),(86,'vr94i0','Steuber-Gutkowski'),(87,'wa67t5','Trantow Group'),(88,'wh42v2','Upton-Donnelly'),(89,'ww05q0','Veum, Corkery and West'),(90,'xm48d1','Von-Mann'),(91,'xx21y4','Von-Torp'),(92,'yw96a4','VonRueden-Stracke'),(93,'yx21t6','Walker-Bruen'),(94,'zd93j8','Walsh-Herzog'),(95,'ze57h8','Ward Ltd'),(96,'zi98y0','Wilkinson LLC'),(97,'zk11j8','Windler, Gutkowski and Kris'),(98,'zk73q5','Wisozk-Williamson'),(99,'zq24k3','Wuckert, Grant and Schuppe'),(100,'zr09c1','Yundt, Willms and Lowe');
/*!40000 ALTER TABLE `vice_president_students` ENABLE KEYS */;
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
	INSERT into college_students (student_id, first_name, last_name, date_of_birth, address)
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

UPDATE college_students 
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
/*!50003 DROP PROCEDURE IF EXISTS `update_college_room_number` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_college_room_number`(
IN neptun varchar(6),
IN new_room_number varchar(8)
)
BEGIN

UPDATE college_students 
SET 
   college_room_number = new_room_number
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

-- Dump completed on 2022-11-27 10:21:34
