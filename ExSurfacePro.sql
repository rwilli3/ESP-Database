CREATE DATABASE  IF NOT EXISTS `ExSurfacePro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ExSurfacePro`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: localhost    Database: ExSurfacePro
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_customer_id_uindex` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Kyle','Harris','kyle@kyleharris.io','240-818-2148','2724 flint ridge drive'),(3,'loralee','carey','loralee1010@gmail.com','3017880019','2629 Cameron Way'),(7,'Homere','Kopecka','hkopecka6@clickbank.net','306-304-0297','0044 Sachs Alley'),(8,'Nance','Lenahan','nlenahan7@tripadvisor.com','464-857-8400','1 Northland Point'),(9,'Willabella','Winspire','wwinspire8@ftc.gov','794-675-5387','84 1st Circle'),(10,'Ami','Sambath','asambath9@vinaora.com','630-464-9350','9 Moulton Hill'),(11,'Griffie','Mordacai','gmordacaia@nasa.gov','352-227-1381','16571 Village Green Road'),(12,'Hally','Aggus','haggusb@skype.com','909-554-6212','5 Corry Terrace'),(13,'Alvy','Bensen','abensenc@jugem.jp','655-196-6967','1 Toban Circle'),(14,'Chalmers','Brahms','cbrahmsd@unc.edu','407-595-2990','1 Michigan Plaza'),(15,'Gillian','Astill','gastille@wired.com','417-550-7192','65 Weeping Birch Trail'),(16,'Gypsy','Aviss','gavissf@eventbrite.com','390-942-2681','687 Carioca Terrace'),(17,'Cyndi','Di Giacomo','cdigiacomog@biblegateway.com','967-791-0540','72835 Sunnyside Street'),(18,'Irving','Brayshay','ibrayshayh@reference.com','520-802-9309','9 West Junction'),(19,'Joela','Baitman','jbaitmani@angelfire.com','480-101-1114','1 Transport Parkway'),(20,'Sela','Gatlin','sgatlinj@google.com.hk','412-449-5880','3069 Glacier Hill Court'),(21,'Milka','Valek','mvalekk@ifeng.com','693-612-6088','739 Summerview Court'),(22,'Arvie','Rylance','arylancel@topsy.com','710-403-7446','93596 Independence Center'),(23,'Rorie','Quantrill','rquantrillm@360.cn','521-815-8493','978 Steensland Point'),(24,'Hatti','Ewbach','hewbachn@skyrock.com','870-632-6133','68619 American Ash Plaza'),(25,'Rickey','Lodder','rloddero@merriam-webster.com','301-879-1828','9444 Gina Hill'),(26,'Roby','Magister','rmagisterp@sakura.ne.jp','275-268-7303','08 4th Point'),(27,'Arabela','Breawood','abreawoodq@techcrunch.com','700-166-4007','9 Carpenter Alley'),(28,'Esta','Phear','ephearr@histats.com','763-911-4578','29262 Old Gate Way'),(29,'Fran','Winckworth','fwinckworths@hexun.com','145-636-5688','43 Esch Street'),(30,'Carver','Mouland','cmoulandt@bloglines.com','484-929-7526','02173 Nova Pass'),(31,'Elana','Sambiedge','esambiedgeu@prweb.com','712-382-5559','3342 Sommers Pass'),(32,'Dynah','Le Brum','dlebrumv@acquirethisname.com','961-140-3565','207 Clyde Gallagher Avenue'),(33,'Twila','Bonnefin','tbonnefinw@state.tx.us','936-800-9811','20694 Bayside Crossing'),(34,'Jehanna','Conibeer','jconibeerx@clickbank.net','280-929-4267','74 Lerdahl Alley'),(35,'Alyson','Garrick','agarricky@dropbox.com','164-539-4693','30 Crownhardt Road'),(36,'Suki','Ganders','sgandersz@netlog.com','423-636-6535','3 Packers Street'),(37,'Ami','Firebrace','afirebrace10@cam.ac.uk','667-837-0535','4162 Mosinee Parkway'),(38,'Wendi','Deelay','wdeelay11@jigsy.com','956-109-6306','6854 Summer Ridge Alley'),(39,'Scarlet','Vipan','svipan12@bbb.org','171-902-3558','8212 Graedel Street'),(40,'Walliw','Tinto','wtinto13@macromedia.com','418-894-4390','54798 Raven Lane'),(41,'Dannie','Hearne','dhearne14@infoseek.co.jp','523-746-4881','190 Pond Avenue'),(42,'Karil','Eskell','keskell15@dell.com','234-918-6867','87 Doe Crossing Avenue'),(43,'Vernor','Harring','vharring16@rediff.com','518-721-4259','5355 Tomscot Parkway'),(44,'Fonzie','O\'Malley','fomalley17@unicef.org','457-358-0883','330 Dovetail Road'),(45,'Aksel','Fetherstonhaugh','afetherstonhaugh18@fda.gov','872-175-6274','7140 Pepper Wood Road'),(46,'Briny','Alliott','balliott19@theatlantic.com','923-397-0780','01 Scofield Road'),(47,'Odey','Matzel','omatzel1a@yelp.com','333-698-2425','26 Fremont Street'),(48,'Miquela','Pickthorne','mpickthorne1b@edublogs.org','240-839-2169','40 Buell Court'),(49,'Nicky','Twallin','ntwallin1c@com.com','431-770-4019','28 Blackbird Lane'),(50,'Thomasina','Greenlies','tgreenlies1d@reuters.com','262-453-1053','8474 Maywood Lane'),(51,'Clare','Clappson','cclappson1e@dagondesign.com','249-689-4452','87423 Parkside Plaza'),(52,'Galvin','Caherny','gcaherny1f@ifeng.com','582-860-2586','64904 Shasta Drive'),(53,'Niles','Tottman','ntottman1g@angelfire.com','537-840-2477','72 Arapahoe Road'),(54,'Holmes','Erangy','herangy1h@addthis.com','559-143-1103','0 Vahlen Pass'),(55,'Aksel','Glacken','aglacken1i@opensource.org','648-737-9029','1673 Hanson Place'),(56,'Loretta','Crann','lcrann1j@jimdo.com','354-583-6304','25 Ridgeview Crossing'),(57,'Tiebout','Aisman','taisman1k@irs.gov','571-860-6957','8 Dryden Street'),(58,'Panchito','Williamson','pwilliamson1l@technorati.com','866-297-6680','50 Rockefeller Lane'),(59,'','','','','');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `ssn` varchar(15) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `super_ssn` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Stacey','Smith','87654321','F','908-325-2921','2011-08-16','987654321'),(4,'Nicola','Ladbrooke','467-08-5544','F','531-759-4520','2010-03-28','354-50-0126'),(6,'Fransisco','MacFie','294-37-3884','M','842-675-3268','2008-07-22','217-90-4353'),(7,'Orelie','Crosser','287-98-9067','F','638-395-7505','2007-12-05','496-45-6796'),(9,'Malva','Milsap','583-37-3601','F','584-617-7561','1989-02-07','493-56-1716'),(10,'Creight','Bernhart','784-13-7945','M','222-446-4473','2001-02-22','843-03-2867'),(11,'Amble','Fleetwood','872-92-7345','M','403-488-0409','2001-03-18','522-59-0149'),(12,'Vivienne','Bazely','643-44-2404','F','165-623-2821','2005-02-25','527-29-5155'),(13,'Dorolice','Bolding','834-98-9476','F','720-924-8747','2013-12-27','219-73-8167'),(14,'Maximilianus','Gander','737-09-5044','M','218-936-3880','2004-12-23','664-37-9078'),(15,'Burt','Greenough','127-32-3754','M','813-666-4663','2008-11-23','574-41-0981'),(16,'Patrick','Gullyes','836-47-2861','M','350-722-2939','2012-03-03','230-62-6885'),(17,'Nancey','De Morena','628-76-1123','F','108-773-1853','2012-09-13','896-56-4543'),(19,'Cirilo','Stainburn','835-38-0934','M','370-541-8099','2014-03-22','309-95-4728'),(20,'Nichols','Khomishin','403-41-6456','M','577-821-5636','2016-07-03','797-09-6646'),(21,'Roderich','Bartelot','578-42-6710','M','557-552-1443','2001-12-05','708-44-4242'),(22,'Eamon','Double','241-14-2010','M','866-802-5816','2011-03-05','297-42-6236'),(24,'Shirl','Curuclis','879-95-8194','F','447-995-0527','2007-08-01','657-93-1290'),(25,'Nancie','Kleinberer','863-94-3825','F','420-439-8900','2009-03-09','329-61-4147'),(26,'Kristien','Gerson','821-96-4546','F','695-265-4437','1993-05-18','752-11-4894'),(27,'Philipa','Doag','853-98-5296','F','573-766-9538','1995-12-08','689-37-4165'),(28,'Randolf','Bresner','527-63-5885','M','572-339-5189','2001-06-06','613-57-4396'),(29,'Albrecht','McNiff','803-57-7768','M','216-271-5641','2016-01-08','418-32-0906'),(30,'Emmalynn','Footitt','462-98-9113','F','280-529-1573','2002-09-24','820-50-0483'),(31,'Chicky','Bomfield','583-42-9693','M','120-732-9438','2010-03-18','327-43-6436'),(32,'Gael','Lusher','514-55-4409','F','781-594-2803','2012-06-09','448-20-9219'),(34,'Alix','Karolowski','536-26-1828','F','945-407-6209','1989-06-28','622-99-0719'),(35,'Ginger','Ivanaev','353-89-0509','F','212-839-2276','1990-05-14','571-88-4680'),(36,'Karen','Barents','619-32-7985','F','195-495-0099','1991-01-27','889-75-6363'),(37,'Reyna','Aliman','156-98-7867','F','716-175-2073','2011-11-10','549-71-6599'),(38,'Fred','Boldison','278-23-0774','F','454-817-5274','2016-11-03','129-93-7130'),(39,'Thornton','Gayne','844-81-0320','M','457-486-3278','2003-06-14','586-20-5370'),(40,'Shanda','Zanolli','285-34-8013','F','295-629-2954','2012-11-26','521-92-7891'),(41,'Myrvyn','Tratton','106-28-7271','M','352-367-4417','1992-12-19','665-44-1932'),(42,'Franky','Mougel','783-16-3760','F','573-364-5215','1988-12-31','639-94-5054'),(43,'Moina','Scowcraft','363-54-0697','F','550-238-8564','1992-12-18','500-33-8403'),(44,'Tadd','Brauns','564-62-7045','M','800-383-5846','2014-12-31','766-62-3167'),(45,'Dame','Gellion','387-20-8842','M','567-543-7082','2015-09-17','158-67-1983'),(46,'Sherline','Baylis','231-78-0409','F','561-390-7520','2006-02-16','131-20-5601'),(47,'Nikolas','Simmank','426-83-6439','M','537-730-1496','2000-09-09','693-81-6509'),(48,'Enoch','Amyes','705-56-1298','M','170-156-8418','1991-03-23','585-13-9416'),(49,'Brook','Aucock','737-15-5094','M','911-879-5833','2000-12-13','201-76-0028'),(50,'Carola','Robiot','709-64-6125','F','780-456-3366','2006-09-25','535-81-6577'),(51,'Mario','Coole','180-37-3167','M','378-421-7431','2013-01-16','268-40-6427'),(52,'Cassaundra','Kuzemka','862-81-9624','F','556-836-4978','2014-05-23','818-19-6532'),(53,'Jedidiah','Stuckow','133-10-8916','M','188-927-8493','2007-10-18','128-34-2416'),(54,'Derby','Addekin','693-43-2127','M','440-644-0360','2003-07-11','404-23-9124'),(55,'Yalonda','Gauvin','601-05-0022','F','589-909-8743','2007-02-19','501-58-9327'),(56,'Vance','Eccleshall','860-54-3906','M','388-593-9577','2016-06-20','169-69-8695'),(57,'Ruprecht','Tweedlie','860-95-5889','M','411-926-0357','2010-07-04','629-30-7241'),(59,'Reggis','Mowsley','147-88-4623','M','686-582-7190','2017-09-23','704-02-8325'),(60,'Giuseppe','Larsen','795-65-6034','M','815-781-7839','2011-10-13','875-84-0212'),(61,'Osmond','Andrey','287-20-4984','M','878-627-0950','2009-05-20','350-81-7359'),(62,'Englebert','McAusland','360-10-7913','M','195-333-9586','1998-04-26','485-69-5831'),(63,'Lisetta','Imesen','436-08-8947','F','743-630-7759','2013-06-06','196-90-3461'),(64,'Clarey','Fantini','372-33-4728','F','197-688-1538','1996-12-05','196-95-0584'),(65,'Coretta','Astupenas','252-27-9092','F','523-986-7674','2014-04-03','315-29-7657'),(66,'Thea','Valasek','415-32-5102','F','118-902-8556','2003-05-31','645-03-4695'),(67,'Booth','Cousans','251-28-4074','M','453-117-3178','2005-04-14','312-55-2971'),(68,'Ashlin','Arnaldo','475-27-2128','M','327-246-9394','1997-03-28','746-63-8226'),(69,'Shelden','Metson','610-04-8863','M','575-700-7510','1996-07-09','874-54-9497'),(70,'Kala','Romeril','222-97-9007','F','740-796-5734','1991-09-01','205-67-6049'),(71,'Sofia','Atwood','742-55-2319','F','419-654-4405','2006-12-28','416-33-8134'),(72,'Helaine','Waddington','726-79-0330','F','695-421-6689','2012-11-17','244-60-4559'),(73,'Martha','McVie','658-10-8397','F','516-343-6844','2001-04-28','787-35-3647'),(74,'Justinian','Shillito','899-58-2010','M','335-372-3562','2002-05-07','697-89-4592'),(75,'Frederic','Jenkins','805-92-7929','M','364-838-3645','1998-02-06','618-34-4429'),(76,'Der','Sandbrook','766-99-7518','M','368-786-1422','1996-03-11','127-82-8066'),(77,'Josias','Peert','449-24-2960','M','617-217-6374','1990-05-05','710-40-9685'),(78,'Abram','Danilishin','797-48-5769','M','798-926-4288','1993-03-27','604-52-9133'),(79,'Allie','Mager','685-42-4724','M','691-453-1494','2014-02-18','882-49-7598'),(80,'Briny','Quarterman','898-16-4330','F','252-455-3427','1998-10-13','305-81-2647'),(81,'Joseito','Hagerty','174-93-3724','M','274-163-7078','1995-04-23','412-68-1179'),(82,'Revkah','Benoit','851-52-3865','F','520-314-9782','1990-02-19','574-31-0845'),(83,'Fredra','Hitscher','380-21-8185','F','932-379-8330','2002-03-31','102-07-9796'),(84,'Randolf','Hughesdon','709-75-0659','M','387-244-3271','1996-09-30','521-27-4365'),(85,'Normand','Blinder','166-87-4115','M','870-308-8347','2016-03-25','328-22-3006'),(86,'Alina','Smalley','277-46-5020','F','914-224-4638','2009-04-20','472-97-1297'),(87,'Sigismund','Albarez','150-86-4375','M','890-921-9930','2003-03-09','359-87-6872'),(88,'Arabele','Chanson','439-26-1117','F','163-349-9096','1998-07-18','429-47-7726'),(89,'Matthaeus','Farady','245-88-5442','M','832-560-1908','1990-04-29','132-27-5540'),(90,'Natalya','Venturoli','434-47-4690','F','145-670-3266','2011-03-22','219-34-4097'),(91,'Vikky','Bearfoot','888-85-5247','F','288-240-5821','2011-11-15','114-01-1850'),(92,'Tamara','Drover','721-12-0899','F','577-883-3435','2006-06-09','216-09-6313'),(93,'Babette','Coppard','241-20-5793','F','568-159-8902','2006-01-05','722-53-5400'),(94,'Cchaddie','Venediktov','137-85-8279','M','863-388-1991','2016-02-16','693-87-5557'),(95,'Nicolette','Spilling','876-57-9727','F','553-243-8845','2003-05-16','554-48-1484'),(96,'Cristin','Marwood','565-52-4913','F','827-170-2444','2015-03-17','348-36-6892'),(97,'Geoff','Brozsset','238-71-7962','M','464-353-6008','2002-11-04','302-92-8298'),(98,'Alyda','Greir','545-82-1589','F','796-626-3486','2002-06-22','648-18-1950'),(99,'Christye','Catonnet','334-72-7267','F','509-464-7481','1998-12-29','197-48-0750'),(100,'Brandyn','Shearsby','386-97-4629','M','450-547-4237','2006-03-22','259-60-1463'),(101,'Kyel','Harris','220-41-5810','M','240-818-2148','1994-09-08','287-98-9067'),(102,'Kevin','Harris','220-41-8810','M','240-818-2100','1894-11-08','583-37-3601'),(103,'Patty','Huff','939-980-2919','F','2408188650','1969-08-20','628-76-1123');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate`
--

DROP TABLE IF EXISTS `estimate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate` (
  `est_id` int(11) NOT NULL AUTO_INCREMENT,
  `est_desc` text,
  `job_id` int(11) DEFAULT NULL,
  `discount` text,
  `surface_type` varchar(50) DEFAULT NULL,
  `square_footage` int(11) DEFAULT NULL,
  `price_rate` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`est_id`),
  KEY `estimate_job_job_id_fk` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate`
--

LOCK TABLES `estimate` WRITE;
/*!40000 ALTER TABLE `estimate` DISABLE KEYS */;
INSERT INTO `estimate` VALUES (2,'6',2,'definition','Tarmac',80,86,58),(3,'4152',3,'incremental','Gravel',51,31,68),(6,'4570',6,'Total','Tar',47,54,44),(7,'930',7,'open architecture','Tar',36,35,82),(8,'1774',8,'open architecture','Tar',78,53,88),(9,'352',9,'value-added','Roofing',93,96,35),(10,'03641',10,'Secured','Gravel',39,61,42),(11,'78',11,'Virtual','Concrete',36,52,92),(12,'93231',12,'coherent','Roofing',20,7,61),(13,'2',13,'bandwidth-monitored','Tar',56,92,95),(14,'64',14,'task-force','Tarmac',35,68,75),(15,'1',15,'6th generation','Gravel',87,9,23),(16,'2',16,'Total','Tarmac',49,34,86),(17,'93',17,'Triple-buffered','Concrete',96,7,85),(18,'98120',18,'neural-net','Tar',10,45,67),(19,'257',19,'systematic','Tarmac',99,31,91),(20,'08',20,'implementation','Roofing',59,66,90),(21,'0898',21,'stable','Gravel',60,15,67),(22,'39',22,'context-sensitive','Concrete',28,3,18),(23,'7915',23,'Switchable','Roofing',63,46,83),(24,'4764',24,'customer loyalty','Asphalt',56,57,17),(25,'8',25,'Assimilated','Concrete',29,42,53),(26,'4',26,'knowledge base','Concrete',3,98,64),(27,'833',27,'transitional','Tar',22,61,51),(28,'02663',28,'Realigned','Tar',16,51,57),(29,'4377',29,'regional','Tarmac',61,28,63),(30,'1693',30,'Universal','Tar',14,71,54),(31,'0827',31,'Programmable','Concrete',12,77,35),(32,'4',32,'function','Concrete',22,72,91),(33,'917',33,'complexity','Concrete',25,70,79),(34,'93',34,'client-server','Concrete',77,33,22),(35,'38958',35,'responsive','Tarmac',73,72,74),(36,'367',36,'even-keeled','Tarmac',26,32,88),(37,'0040',37,'Front-line','Tarmac',68,25,14),(38,'7',38,'high-level','Gravel',39,82,81),(39,'51',39,'Robust','Roofing',80,57,8),(40,'28310',40,'instruction set','Tar',98,12,36),(41,'74785',41,'Right-sized','Gravel',19,12,56),(42,'461',42,'directional','Asphalt',98,17,72),(43,'0349',43,'Proactive','Gravel',57,3,37),(44,'61',44,'discrete','Roofing',38,78,19),(45,'78933',45,'leverage','Asphalt',6,2,27),(46,'99669',46,'zero tolerance','Asphalt',45,22,28),(47,'6',47,'Pre-emptive','Gravel',98,63,10),(48,'83461',48,'logistical','Gravel',69,7,23),(49,'5273',49,'help-desk','Asphalt',97,18,5),(50,'4288',50,'Function-based','Tar',87,60,32),(51,'94329',51,'Extended','Tarmac',25,95,18),(52,'90358',52,'Up-sized','Roofing',28,68,86),(53,'4095',53,'Function-based','Roofing',15,71,53),(54,'6313',54,'paradigm','Roofing',32,10,85),(55,'5',55,'open system','Gravel',29,91,7),(56,'079',56,'bifurcated','Asphalt',68,54,98),(57,'471',57,'orchestration','Concrete',92,21,71),(58,'4450',58,'multimedia','Gravel',23,52,82),(59,'8',59,'Re-contextualized','Roofing',21,77,26),(60,'47',60,'discrete','Concrete',25,97,73),(61,'3982',61,'mission-critical','Tarmac',24,81,8),(62,'51905',62,'intangible','Concrete',21,48,36),(63,'3',63,'Switchable','Roofing',81,46,89),(64,'32',64,'motivating','Gravel',11,86,66),(65,'6835',65,'superstructure','Tar',86,82,7),(66,'1',66,'Profit-focused','Asphalt',60,58,58),(67,'213',67,'Organized','Tar',6,8,64),(68,'35017',68,'impactful','Tar',33,82,31),(69,'73516',69,'content-based','Gravel',77,40,31),(70,'88930',70,'solution-oriented','Gravel',94,84,57),(71,'80029',71,'strategy','Gravel',73,3,34),(72,'27155',72,'Future-proofed','Asphalt',5,66,37),(73,'292',73,'Phased','Roofing',41,33,12),(74,'98',74,'moderator','Gravel',77,76,93),(75,'7974',75,'instruction set','Concrete',13,79,60),(76,'5',76,'leading edge','Tarmac',53,12,94),(77,'762',77,'Devolved','Asphalt',60,80,74),(78,'8',78,'Synchronised','Tar',65,47,64),(79,'9',79,'application','Gravel',8,95,55),(80,'31',80,'Balanced','Gravel',26,15,34),(81,'8447',81,'Horizontal','Tarmac',94,62,30),(82,'4081',82,'interactive','Concrete',26,89,47),(83,'31352',83,'support','Gravel',51,22,18),(84,'050',84,'process improvement','Asphalt',9,46,2),(85,'724',85,'full-range','Gravel',62,81,73),(86,'1',86,'incremental','Gravel',98,90,74),(87,'62',87,'bandwidth-monitored','Tar',55,100,22),(88,'912',88,'implementation','Concrete',32,88,69),(89,'7',89,'core','Roofing',80,38,23),(90,'2',90,'local area network','Roofing',60,63,68),(91,'9291',91,'artificial intelligence','Tarmac',60,14,69),(92,'71873',92,'background','Asphalt',17,95,60),(93,'1',93,'initiative','Asphalt',62,29,62),(94,'49',94,'Enhanced','Gravel',99,83,56),(95,'00',95,'Cross-platform','Concrete',11,83,61),(96,'3094',96,'synergy','Concrete',66,59,26),(97,'1304',97,'value-added','Roofing',27,59,55),(98,'9643',98,'array','Concrete',82,48,80),(99,'899',99,'knowledge base','Tarmac',75,76,2),(100,'527',100,'stable','Tarmac',31,11,8),(101,'This is a test description',1,'fake discount code','tar',15,39,8),(102,'This is a test description',1,'fake discount code','tar',15,39,8),(103,'this is a filler desciription',1,'fake discount','tar',46,6,8),(104,'this is a filler desciription',1,'fake discount','tar',46,6,8),(105,'this is a filler desciription',1,'fake discount','tar',46,6,8),(106,'this is a mock description',1,'no discount','gravel ',88,8,8),(107,'this is a mock description',1,'no discount','gravel ',88,8,8),(108,'this is a mock description',1,'no discount','gravel ',88,8,8);
/*!40000 ALTER TABLE `estimate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hours_worked`
--

DROP TABLE IF EXISTS `hours_worked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hours_worked` (
  `emp_id` int(11) NOT NULL,
  `total_hours` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hours_worked`
--

LOCK TABLES `hours_worked` WRITE;
/*!40000 ALTER TABLE `hours_worked` DISABLE KEYS */;
/*!40000 ALTER TABLE `hours_worked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `job_id` int(11) NOT NULL DEFAULT '0',
  `job_description` text,
  `total_bill` int(11) DEFAULT NULL,
  `supply_cost` int(11) DEFAULT NULL,
  `miles_traveled` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_desc` text,
  `job_id` int(11) DEFAULT '0',
  PRIMARY KEY (`service_id`),
  KEY `service_job_job_id_fk` (`job_id`),
  CONSTRAINT `service_job_job_id_fk` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-01 13:27:37
