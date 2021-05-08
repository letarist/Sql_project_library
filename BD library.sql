-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_17
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

use library;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `author_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_lastname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Mabelle','Nikolaus'),(2,'Kylee','Towne'),(3,'Roy','Langworth'),(4,'Tressa','Bahringer'),(5,'Yoshiko','Miller'),(6,'Hulda','Thiel'),(7,'Keagan','Barton'),(8,'Llewellyn','Williamson'),(9,'Julie','Mosciski'),(10,'Eliane','Bashirian'),(11,'Rick','Kuhn'),(12,'Patience','Hintz'),(13,'Laurie','Marks'),(14,'Merle','Satterfield'),(15,'Albina','West'),(16,'Neva','Wiza'),(17,'Scotty','Moore'),(18,'Rosalyn','Von'),(19,'Nigel','Mante'),(20,'David','Hand'),(21,'Nicola','Hansen'),(22,'Dion','Nienow'),(23,'Wade','Cruickshank'),(24,'Keagan','Watsica'),(25,'Aylin','Kshlerin'),(26,'Nathanial','Erdman'),(27,'Oma','Torphy'),(28,'Reinhold','Schulist'),(29,'Eriberto','Heaney'),(30,'Eloise','Lebsack'),(31,'Elsa','Hirthe'),(32,'Nicola','Breitenberg'),(33,'Kamille','Kling'),(34,'Addison','Braun'),(35,'Kacie','Eichmann'),(36,'Joany','Ryan'),(37,'Hassie','Bauch'),(38,'Murray','Crona'),(39,'Selina','Kohler'),(40,'Chelsey','Von'),(41,'Felipe','Gottlieb'),(42,'Trycia','Yost'),(43,'Alayna','Nitzsche'),(44,'Jennings','Stamm'),(45,'Asha','Barton'),(46,'Johathan','Christiansen'),(47,'Rene','Mills'),(48,'Madison','Keeling'),(49,'Nola','Jerde'),(50,'Violet','Armstrong');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `book_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `publish_id` bigint(20) unsigned NOT NULL,
  `book_year` date DEFAULT NULL,
  `genre_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `publish_id` (`publish_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`publish_id`) REFERENCES `publishing` (`id`),
  CONSTRAINT `book_ibfk_3` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'officiis',1,1,'1989-12-13',1),(2,'possimus',2,2,'2009-04-11',2),(3,'quidem',3,3,'2019-10-18',3),(4,'in',4,4,'2000-08-31',4),(5,'exercitationem',5,5,'1977-07-18',5),(6,'quisquam',6,6,'1984-03-28',6),(7,'rerum',7,7,'2016-03-25',7),(8,'quo',8,8,'1975-02-28',8),(9,'quia',9,9,'2003-03-15',9),(10,'consequuntur',10,10,'1971-06-27',10),(11,'sit',11,11,'1998-11-09',1),(12,'porro',12,12,'2008-08-22',2),(13,'nostrum',13,13,'2006-09-12',3),(14,'tenetur',14,14,'2010-01-17',4),(15,'delectus',15,15,'1980-09-12',5),(16,'beatae',16,16,'1997-06-13',6),(17,'ratione',17,17,'2005-02-11',7),(18,'dolores',18,18,'1977-02-04',8),(19,'laborum',19,19,'1981-08-14',9),(20,'quo',20,20,'2001-11-04',10),(21,'illum',21,1,'1977-02-14',1),(22,'vero',22,2,'1970-11-06',2),(23,'velit',23,3,'1971-10-19',3),(24,'architecto',24,4,'2013-05-16',4),(25,'ut',25,5,'1997-12-11',5),(26,'nemo',26,6,'1990-08-18',6),(27,'atque',27,7,'1990-10-26',7),(28,'nam',28,8,'2001-11-12',8),(29,'ea',29,9,'1982-09-21',9),(30,'sit',30,10,'1990-03-02',10),(31,'doloremque',31,11,'1992-06-27',1),(32,'dolorem',32,12,'1970-12-15',2),(33,'rem',33,13,'1987-03-11',3),(34,'quis',34,14,'2011-07-16',4),(35,'quia',35,15,'2014-10-21',5),(36,'nostrum',36,16,'1986-01-15',6),(37,'ut',37,17,'1979-12-03',7),(38,'aut',38,18,'1973-04-28',8),(39,'qui',39,19,'1997-12-29',9),(40,'amet',40,20,'1998-06-17',10),(41,'eligendi',41,1,'1974-08-15',1),(42,'rem',42,2,'2010-07-11',2),(43,'deserunt',43,3,'2004-11-16',3),(44,'aperiam',44,4,'1971-11-15',4),(45,'illum',45,5,'2017-02-20',5),(46,'occaecati',46,6,'1977-03-12',6),(47,'deleniti',47,7,'2019-05-19',7),(48,'eum',48,8,'1994-06-12',8),(49,'et',49,9,'2015-12-26',9),(50,'modi',50,10,'2009-01-11',10);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_reservation`
--

DROP TABLE IF EXISTS `book_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_reservation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) unsigned NOT NULL,
  `ticket_number` bigint(20) unsigned NOT NULL,
  `date_order` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `ticket_number` (`ticket_number`),
  CONSTRAINT `book_reservation_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `book_reservation_ibfk_2` FOREIGN KEY (`ticket_number`) REFERENCES `reader` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_reservation`
--

LOCK TABLES `book_reservation` WRITE;
/*!40000 ALTER TABLE `book_reservation` DISABLE KEYS */;
INSERT INTO `book_reservation` VALUES (1,1,1,'1997-11-19 02:06:08'),(2,2,2,'2019-07-15 02:09:53'),(3,3,3,'1991-04-24 15:43:30'),(4,4,4,'1993-09-04 10:55:32'),(5,5,5,'2018-07-16 06:33:25'),(6,6,6,'2007-09-12 04:49:04'),(7,7,7,'1986-10-05 00:10:15'),(8,8,8,'2014-03-05 16:22:34'),(9,9,9,'2004-10-12 08:36:05'),(10,10,10,'1999-10-01 02:35:01'),(11,11,11,'1993-06-24 22:01:18'),(12,12,12,'1980-09-06 07:04:44'),(13,13,13,'2005-07-11 04:40:22'),(14,14,14,'1979-09-13 20:26:07'),(15,15,15,'2009-10-14 01:45:46'),(16,16,16,'2001-09-19 05:03:55'),(17,17,17,'2016-01-02 16:05:27'),(18,18,18,'1999-01-21 05:36:58'),(19,19,19,'2000-06-09 19:29:15'),(20,20,20,'2006-04-28 13:30:16'),(21,21,21,'2006-03-05 20:15:56'),(22,22,22,'2016-03-10 19:17:30'),(23,23,23,'2016-06-09 23:07:58'),(24,24,24,'2014-09-09 18:19:22'),(25,25,25,'2015-02-06 23:21:15'),(26,26,26,'1980-01-07 16:39:42'),(27,27,27,'2020-12-04 09:56:48'),(28,28,28,'1974-12-04 15:28:53'),(29,29,29,'1996-03-10 04:06:05'),(30,30,30,'1985-03-28 21:42:47'),(31,31,31,'1987-05-26 21:37:28'),(32,32,32,'1985-02-09 05:28:59'),(33,33,33,'1997-05-27 00:36:39'),(34,34,34,'1998-01-24 19:07:54'),(35,35,35,'2021-04-19 19:11:02'),(36,36,36,'1976-03-10 11:35:56'),(37,37,37,'2005-05-28 08:30:19'),(38,38,38,'2000-04-09 10:38:16'),(39,39,39,'1994-08-14 04:19:49'),(40,40,40,'2003-05-24 03:03:20'),(41,41,41,'2006-05-20 10:22:03'),(42,42,42,'2006-12-14 20:26:49'),(43,43,43,'2006-02-19 01:46:46'),(44,44,44,'1978-08-22 06:51:26'),(45,45,45,'1978-01-15 05:20:19'),(46,46,46,'2016-07-10 23:08:17'),(47,47,47,'2018-09-06 15:34:32'),(48,48,48,'2014-05-08 09:44:36'),(49,49,49,'1995-10-17 01:33:09'),(50,50,50,'1996-10-31 01:05:02');
/*!40000 ALTER TABLE `book_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(60) NOT NULL,
  `city_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (0,'West Budshire'),(1,'Wizatown'),(2,'Adelemouth'),(3,'East Drewville'),(4,'Port Eduardo'),(5,'Sylvesterborough'),(6,'Elvietown'),(7,'Verdaport'),(8,'Satterfieldfurt'),(9,'Lake Gustberg');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empl_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empl_birth` date NOT NULL,
  `empl_adress` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empl_num` int(60) DEFAULT NULL,
  `empl_passport` int(60) NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'aperiam','2000-10-10','82231 Muller Radial ',0,6,1),(2,'architecto','1995-04-14','273 Ward Landing',9,0,2),(3,'quaerat','1992-03-08','054 Arnulfo Tunnel A',5,7,3),(4,'et','2000-06-13','891 Bruen Rest Apt. ',4,4,4),(5,'harum','1976-06-09','76085 Macejkovic Wel',9,6,5),(6,'corporis','2020-04-04','8346 Morissette Club',4,8,6),(7,'nam','1978-09-01','426 Margarita Hollow',4,9,7),(8,'nemo','1998-07-07','49130 Krystal Motorw',1,3,8),(9,'nesciunt','1978-11-24','2682 Donnelly Villag',8,3,9),(10,'enim','2015-09-25','752 Constantin Squar',7,0,10),(11,'vitae','1988-07-17','18127 Hartmann Locks',2,2,11),(12,'tenetur','1980-07-26','86357 Turner Stream ',6,4,12),(13,'pariatur','2010-02-05','55960 Nicola Canyon ',3,2,13),(14,'sit','1971-11-01','251 Rempel Locks',6,3,14),(15,'ad','1978-12-28','7422 Cole Route Apt.',4,8,15),(16,'ut','2015-03-29','6523 Emelia Ferry Su',1,9,16),(17,'qui','2015-07-31','792 Runolfsson Crest',6,5,17),(18,'non','1976-10-10','5656 Sanford Ways Su',9,2,18),(19,'aut','2012-07-27','6045 Pascale Causewa',5,5,19),(20,'rerum','1995-05-06','76915 Schumm Keys Ap',6,7,20),(21,'velit','1970-01-07','8974 Reichel Hollow',2,2,21),(22,'hic','1975-11-11','110 Ike Stravenue',2,3,22),(23,'aut','2020-01-26','7662 Schiller Course',5,5,23),(24,'ipsam','2018-08-17','33456 Davonte Hollow',3,9,24),(25,'molestiae','1987-05-31','98012 Carmine Circle',3,1,25),(26,'et','2006-03-20','60476 Bode View',7,7,26),(27,'officiis','1996-02-26','74009 Helena Motorwa',3,8,27),(28,'inventore','1996-07-31','569 Chadd Tunnel',1,4,28),(29,'eius','2008-04-06','9744 Braeden Glens',0,6,29),(30,'nobis','2008-10-21','174 Runolfsson Summi',8,6,30),(31,'cumque','2015-01-30','28787 Huels Points',2,1,31),(32,'exercitationem','1990-06-29','90020 Kunze Underpas',4,1,32),(33,'id','1985-12-21','7776 Lina Extension',8,7,33),(34,'qui','1997-11-14','60004 Lisandro Cross',8,0,34),(35,'repellat','1980-06-30','35887 Burley Points',5,6,35),(36,'vel','1995-02-20','362 Botsford Prairie',2,9,36),(37,'omnis','2020-05-11','72666 Mayer Valley',6,0,37),(38,'ullam','1973-09-11','153 Windler Key Suit',8,1,38),(39,'et','2018-01-26','81500 Becker Ways Ap',4,3,39),(40,'beatae','1979-10-27','9685 Jammie Trace',0,5,40),(41,'qui','1996-08-17','40704 Florencio Expr',5,1,41),(42,'blanditiis','1973-02-27','2981 Beier Highway',9,7,42),(43,'iure','1984-04-14','296 Guillermo Drives',9,2,43),(44,'illum','2005-03-02','271 Elisa Mountain',1,8,44),(45,'omnis','2014-07-28','322 Zieme Station Ap',1,7,45),(46,'at','2002-01-11','292 Padberg Mills',5,8,46),(47,'non','1972-07-17','224 Ebert Field Apt.',3,1,47),(48,'nobis','2004-09-21','0065 Johns Meadows A',4,7,48),(49,'pariatur','1984-02-08','63323 Elouise Hills',4,5,49),(50,'distinctio','1975-06-12','460 Parker Hollow Su',2,9,50);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'rerum'),(2,'eum'),(3,'dicta'),(4,'inventore'),(5,'asperiores'),(6,'unde'),(7,'blanditiis'),(8,'nulla'),(9,'recusandae'),(10,'ipsam');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issued_book`
--

DROP TABLE IF EXISTS `issued_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issued_book` (
  `id` bigint(40) NOT NULL,
  `book_id` bigint(20) unsigned NOT NULL,
  `read_id` bigint(20) unsigned NOT NULL,
  `ibook_isdate` date NOT NULL,
  `ibook_retdate` date DEFAULT NULL,
  `returnflag` bit(1) DEFAULT NULL,
  `empl_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `read_id` (`read_id`),
  KEY `empl_id` (`empl_id`),
  CONSTRAINT `issued_book_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `issued_book_ibfk_2` FOREIGN KEY (`read_id`) REFERENCES `reader` (`id`),
  CONSTRAINT `issued_book_ibfk_3` FOREIGN KEY (`empl_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issued_book`
--

LOCK TABLES `issued_book` WRITE;
/*!40000 ALTER TABLE `issued_book` DISABLE KEYS */;
INSERT INTO `issued_book` VALUES (0,1,1,'1976-10-18','1982-01-13','',1),(1,49,49,'1977-05-25','1998-05-21','',49),(5,15,15,'2011-11-19','1970-10-02','',15),(6,11,11,'1996-11-30','2003-03-26','',11),(7,4,4,'2018-06-23','1977-08-04','',4),(18,18,18,'1986-02-27','1973-05-06','',18),(30,6,6,'1972-12-25','1997-06-21','',6),(35,12,12,'1977-08-01','2011-11-07','',12),(61,21,21,'1988-05-25','1976-08-03','',21),(73,19,19,'2009-10-31','2011-01-21','',19),(79,26,26,'1997-07-05','2010-06-23','',26),(96,17,17,'1980-06-23','1988-02-28','',17),(97,47,47,'2014-06-21','2008-02-07','',47),(720,39,39,'1994-04-30','1985-04-29','\0',39),(722,34,34,'2009-11-26','1986-03-07','',34),(775,46,46,'1992-01-05','1979-05-14','\0',46),(1411,33,33,'1979-03-06','2015-05-26','',33),(3084,37,37,'2008-09-24','1988-03-19','',37),(4396,7,7,'2005-12-26','1982-12-29','',7),(4417,43,43,'2018-02-22','1987-02-20','',43),(6385,3,3,'1983-05-09','2014-11-18','',3),(7876,35,35,'1990-05-24','1983-06-01','',35),(7979,5,5,'1991-04-05','1982-07-15','',5),(26530,44,44,'2011-08-15','1989-12-21','',44),(29045,50,50,'1993-07-03','1996-12-25','\0',50),(34280,28,28,'2007-07-28','1983-10-17','',28),(82155,8,8,'1992-10-19','2014-05-03','',8),(87279,10,10,'2014-09-19','2016-09-13','',10),(316628,22,22,'2000-06-02','2009-07-31','',22),(495457,29,29,'1982-10-18','1977-10-03','',29),(1778278,24,24,'2004-03-04','1970-02-20','',24),(2199676,36,36,'1986-05-01','1989-07-25','',36),(2933732,2,2,'1999-06-22','1974-03-12','',2),(2988956,32,32,'2000-01-20','1972-07-03','',32),(5939678,20,20,'1986-05-16','2019-09-14','',20),(6032092,30,30,'1988-08-19','1970-04-18','',30),(8799170,9,9,'2003-06-01','1991-01-26','',9),(14071188,45,45,'1971-02-16','2018-08-08','',45),(28245307,40,40,'2018-11-16','1999-10-18','',40),(46852551,27,27,'1970-08-01','1983-01-10','',27),(68894844,25,25,'2015-12-07','2013-05-14','',25),(74111344,31,31,'2012-01-14','2002-11-25','',31),(98780379,23,23,'1971-06-10','1973-05-27','',23),(119522847,48,48,'2004-08-30','1987-02-09','',48),(178203289,41,41,'1980-08-25','2006-02-28','\0',41),(299113641,38,38,'2019-10-27','1995-03-03','',38),(778072454,42,42,'1986-08-07','1996-05-26','',42),(806439659,13,13,'2016-10-25','1991-12-31','',13),(898492082,16,16,'2015-02-14','2002-11-22','',16),(911242986,14,14,'1985-05-11','1974-11-28','',14);
/*!40000 ALTER TABLE `issued_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_salary` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'deserunt',89),(2,'fuga',49763),(3,'ut',821264),(4,'iure',27001845),(5,'iure',0),(6,'odit',2507),(7,'blanditiis',6505),(8,'qui',2445823),(9,'placeat',65),(10,'tenetur',175978),(11,'pariatur',173823998),(12,'quibusdam',2808),(13,'possimus',19),(14,'explicabo',8211575),(15,'et',750847),(16,'doloribus',566),(17,'optio',722218),(18,'accusantium',0),(19,'sit',38),(20,'unde',73678),(21,'ab',1636545),(22,'et',77920665),(23,'officia',3),(24,'amet',471),(25,'eos',0),(26,'hic',19709846),(27,'nemo',1),(28,'qui',325),(29,'cupiditate',24073),(30,'aut',375741),(31,'pariatur',1),(32,'totam',2731298),(33,'sed',0),(34,'consequuntur',701387),(35,'nihil',12213994),(36,'facere',6451),(37,'ab',8081679),(38,'provident',5),(39,'architecto',42178043),(40,'veniam',2),(41,'similique',28740),(42,'dolore',20577800),(43,'vitae',2),(44,'et',102989),(45,'consectetur',34395),(46,'et',942),(47,'voluptatem',1997679),(48,'labore',2948239),(49,'quasi',1200627),(50,'sit',72980);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing`
--

DROP TABLE IF EXISTS `publishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishing` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `publish_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_burg` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing`
--

LOCK TABLES `publishing` WRITE;
/*!40000 ALTER TABLE `publishing` DISABLE KEYS */;
INSERT INTO `publishing` VALUES (1,'vitae','pariatur'),(2,'qui','qui'),(3,'distinctio','ipsum'),(4,'quas','est'),(5,'omnis','repellendus'),(6,'aliquid','quo'),(7,'distinctio','nisi'),(8,'quidem','sint'),(9,'repudiandae','nihil'),(10,'omnis','et'),(11,'rerum','nam'),(12,'aliquid','sunt'),(13,'saepe','architecto'),(14,'totam','et'),(15,'perspiciatis','ut'),(16,'esse','iste'),(17,'ex','repudiandae'),(18,'facilis','placeat'),(19,'ratione','laudantium'),(20,'recusandae','a');
/*!40000 ALTER TABLE `publishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader`
--

DROP TABLE IF EXISTS `reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reader` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `read_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_birth` date NOT NULL,
  `read_adress` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_num` int(60) DEFAULT NULL,
  `read_city` int(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `read_city` (`read_city`),
  CONSTRAINT `reader_ibfk_1` FOREIGN KEY (`read_city`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader`
--

LOCK TABLES `reader` WRITE;
/*!40000 ALTER TABLE `reader` DISABLE KEYS */;
INSERT INTO `reader` VALUES (1,'eveniet','1983-09-03','4783 Amiya Rapids',4,0),(2,'est','2016-04-21','143 West Mount',0,1),(3,'quaerat','2018-10-24','099 Jana Creek',9,2),(4,'est','1980-07-31','98189 Ward Corners S',9,3),(5,'molestiae','1999-12-10','60385 Gillian Wells',9,4),(6,'non','1974-01-15','402 Lenora Port Suit',9,5),(7,'ea','1977-03-21','83313 Yvette Coves S',6,6),(8,'facere','1998-05-28','0525 Addison Loaf Ap',3,7),(9,'quia','1985-08-26','2164 Camylle Drive',9,8),(10,'rerum','2019-10-22','61796 Satterfield Ri',0,9),(11,'suscipit','2012-12-06','552 Kuhlman Ports',2,0),(12,'suscipit','1992-09-05','858 Collins Points',7,1),(13,'numquam','2014-05-24','30334 Coty Islands S',4,2),(14,'nemo','1983-07-25','670 Feeney Shore',1,3),(15,'natus','2020-11-26','133 Elwyn Grove',9,4),(16,'ducimus','1973-01-23','4110 Friesen Cove Ap',6,5),(17,'autem','2005-08-15','34944 Ankunding Ford',4,6),(18,'tempora','1978-05-09','563 Wisozk Cove Apt.',3,7),(19,'laborum','1990-12-24','845 Evangeline Locks',1,8),(20,'hic','2013-07-25','2227 Kshlerin Throug',3,9),(21,'dignissimos','2006-06-04','81751 Adams Rest',6,0),(22,'a','2001-09-14','144 Ondricka Road',6,1),(23,'et','2004-09-22','0602 Geovanni Meadow',8,2),(24,'exercitationem','2018-03-28','130 Weissnat Brooks',1,3),(25,'delectus','1972-05-19','9684 Fadel Manor',4,4),(26,'aut','1975-02-06','488 Franecki Fort',2,5),(27,'consectetur','1983-05-19','501 Kendrick Branch',8,6),(28,'ex','1982-12-17','4116 Hahn Ridge',1,7),(29,'ipsum','1981-02-21','17526 Haley Stream A',6,8),(30,'quos','1982-07-28','58862 Hills Crossing',8,9),(31,'eveniet','1983-02-26','8206 Lynch Garden Ap',9,0),(32,'doloremque','1998-04-02','418 Howell Forge Apt',0,1),(33,'dolorem','2001-06-26','648 Shields Knoll Su',3,2),(34,'in','1984-07-14','3990 Kovacek Street ',7,3),(35,'qui','2000-03-12','7789 Harvey Fork Apt',6,4),(36,'aliquid','1975-12-22','2733 Furman Pass Apt',9,5),(37,'sunt','2014-07-24','96112 Donnelly Vista',9,6),(38,'vitae','1989-04-08','49701 Gerhold Walks ',6,7),(39,'quod','1977-02-07','690 Schoen Overpass ',5,8),(40,'dolores','1972-02-10','89143 Kunde Ranch',6,9),(41,'quia','1998-08-18','03383 Hahn Alley Apt',0,0),(42,'occaecati','1985-07-25','2329 Carlotta Parkwa',1,1),(43,'omnis','1994-06-04','58668 Auer Land Apt.',4,2),(44,'asperiores','1991-07-17','286 Ian Squares',6,3),(45,'magnam','2000-01-24','000 Ryan Hills',2,4),(46,'aperiam','1986-06-12','19726 Kilback Branch',1,5),(47,'assumenda','2000-05-26','425 Zieme Forges Apt',8,6),(48,'repudiandae','2014-02-24','9592 Jenkins Hollow ',8,7),(49,'distinctio','1995-10-24','34749 Vandervort Squ',1,8),(50,'eos','1980-01-08','201 Hal Unions',8,9);
/*!40000 ALTER TABLE `reader` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-29  7:45:57


-- Объединение по join. Книги по Жанрам
select count(book_name) as quantity from book
left join genre on book.genre_id = genre.id
group by genre.id
order by book.book_name;

-- Из какого города читатель с id = 1
select read_name,read_adress from reader
join city on reader.id = 1
group by reader.read_name;

-- Найдем когда и кем была взята книга с id = 10

select * from book_reservation
join book on book.id = 10;

-- вывод списка книг

select book_name, author_name, publish_name from author 
join book 
join publishing on (book.publish_id = publishing.id) 
on (book.author_id = author.id)
order by book.book_name;

-- вывод списка книг с жанром inventore

select	book_name,	genre_name from book 
join genre on (book.genre_id=genre.id) 
where genre_name='inventore';

-- Запрос читателя по фамилии
select read_name,read_birth from reader 
where read_adress like('4783 Amiya Rapids');




-- view для сотрудников, с названием книги и издательства
drop view if exists empl_view;
create view empl_view as 
select book_name, publish_name  as publishing 
from publishing join book 
on (book.id=publishing.id);

select * from empl_view;

-- view для директора, с указанием оклада рабочих, их имен и должностей
drop view if exists direct_view;
create view direct_view as 
select post_salary, empl_name as employee_name, post_name from employee 
join post on (employee.id = post.id);
select * from direct_view;

-- ТРИГГЕР на добавление информации в таблицу book

drop table if exists logs;
create table logs(created datetime not null,
prim_key int not null,
name_table varchar(60) not null,
name varchar(60))engine=ARCHIVE;
 
 
 drop trigger if exists log_book;
 delimiter &&
create trigger log_book after insert on book for each row
begin 
insert logs (created, name_table, prim_key, name) values(now(),'book',new.id,new.book_name);
end&&
delimiter ;

insert into book(`id`,
  `book_name`,
  `author_id`,
  `publish_id`,
  `book_year`,
  `genre_id` ) value (51,'officiis',1,1,'1989-12-13',1);
select * from logs;
-- select * from book;



