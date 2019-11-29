-- MySQL dump 10.13  Distrib 8.0.18, for osx10.15 (x86_64)
--
-- Host: localhost    Database: contact_senator
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `senators`
--

DROP TABLE IF EXISTS `senators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `senators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phoneNumber` varchar(11) DEFAULT NULL,
  `email` varchar(320) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senators`
--

LOCK TABLES `senators` WRITE;
/*!40000 ALTER TABLE `senators` DISABLE KEYS */;
INSERT INTO `senators` VALUES (1,'Sen. E. Abaribe','08033129452','enyiabaribe@yahoo.com ',1),(10,'Sen. O. Kalu','08034000001','okalu@orjikalu.com',1),(11,'Sen. T. Orji','07082800000','senatortaorji@gmail.com',1),(12,'Sen. B. Yaroe','08034050460','bdyaroe@gmail.com ',2),(13,'Sen. I. Abbo','08066285112','faradugun@gmail.com',2),(66,'Sen. A. Ahmed',NULL,'aishatu.ahmed@nass.gov.ng',2),(67,'Sen. B. Akpan','08055555188','akpanalbert@hotmail.com',3),(68,'Sen. A. Eyakenyi','08035054282','konssie@yahoo.com',3),(69,'Sen. C. Ekpeyong','08027785234','chrisekpesg@yahoo.com',3),(70,'Sen. I. Ubah','09096655596','senatorifeanyiubah@gmail.com ',4),(71,'Sen. E. Uche','08037620002','u.ekwunife@yahoo.com',4),(72,'Sen. A. Oduah','08055084340','senatorstella@gmail.com',4),(73,'Sen. H. Jika','08038666690','jikahalliru@gmail.com',4),(74,'Sen. A. Bulkachuwa',NULL,'adamu.bulkachuwa@nass.gov.ng ',4),(75,'Sen. L. Gamau',NULL,'lawal.gumau@nass.gov.ng',4),(76,'Sen. O. EWHRUDJAKPO','09031352791',' ogagadick@gmail.com',5),(77,'Sen. D. Diri','08036668698','douyediri@gmail.com',5),(78,'Sen. D. Wangagra',NULL,'degi.wangagha@nass.gov.ng',5),(79,'Sen. E. Orker-Jev',NULL,'emmanuel.orkerjev@nass.gov.ng',6),(80,'Sen A. Morro','08068870606','abahmoro@yahoo.com',6),(81,'Sen. A. Kyari',NULL,'abubakar.kyari@nass.gov.ng ',7),(82,'Sen. K. Shettima','08034459047','kashimshettima@gmail.com',7),(83,'Sen. M. Ndume','08109480004','mohammed.ndume@nass.gov.ng',7),(84,'Sen. R. Oko','','rose.oko@nass.gov.ng ',8),(85,'Sen. G. Bassey','08034444555','gershombassey@gmail.com ',8),(86,'Sen. S. Onor','08030998460','irunandu@yahoo.com',8),(87,'Sen. O. Omo-Agege','07033399937',' senator.ovieomoagege@gmail.com',9),(88,'Sen. J. Manager','08143103829','jamesmanager2013@gmail.com ',9),(89,'Sen. P. Nwaoboshi','08037200999','pnwaoboshi@yahoo.com',9),(90,'Sen. C. Ordia','08038403877','engineercliffordordia@gmail.com',10),(91,'Sen. F. Alimikhena','08155555884','falimikhena@yahoo.com ',10),(92,'Sen. M. Urhoghide','08033855557','matthewurhoghide@yahoo.com',10),(93,'Sen. A. Adeyeye','08023051100','dadeyeye34@gmail.com',11),(94,'Sen. O. Adetumbi','08064487689','senator.adetunmbi@gmail.com ',11),(95,'Sen. M. Bamidele','080911112 ','amicusng@gmail.com',11),(96,'Sen. C. Nnamani','08022255522','ebeanoglobal875@gmail.com ',12),(97,'Sen. Ikweremadu','08075757000','ikeekweremadu@yahoo.com  ',12),(98,'Sen. C. Utazi',NULL,'chukwuka.utazi@nass.gov.ng',12),(99,'Sen. A. Kilawangs',NULL,'amos.kilawangs@nass.gov.ng ',13),(100,'Sen. D. Mohammed','07068686699','mdgoje1@gmail.com',13),(101,'Sen. S. Alkali','08026032222','saidualkali905@gmail.com',13),(102,'Sen. S. Egwu','08039665848','drsamominyiegwu@gmail.com',14),(103,'Sen. J. Ogba','08037791346','onwaigboasa@yahoo.com',14),(104,'Sen. M. Nnachi','08034528595','michaelamannachi@gmail.com',14),(105,'Sen. E. Onyewuchi','08032012132','ezeonyewuchi@gmail.com',15),(106,'Sen. R. Okorocha',NULL,'rochas.okorocha@nass.gov.ng ',15),(107,'Sen. B. Uwajumogu',NULL,'benjamin.uwajumogu@nass.gov.ng',15),(108,'Sen. D. Sankara','08037032577','dsankara@yahoo.co.uk',16),(109,'Sen. S. Mohammed','08022902648','nakudu@yahoo.com ',16),(110,'Sen. I. Hadejia',NULL,'ibrahim.hadejia@nass.gov.ng',16),(111,'Sen. S. Kwari','08033019005','suleimankwari@yahoo.com',17),(112,'Sen. D. La\'ah','08118887772','laah.danjuma@yahoo.com',17),(113,'Sen. K. Gaya',NULL,'kabiru.gaya@nass.gov.ng ',18),(114,'Sen. I. Jibrin',NULL,'ibrahim.jibrin@nass.gov.ng',18),(115,'Sen. I. Shekarau','08099199111','ishekarau55@yahoo.com',18),(116,'Sen. A. Babba-Kaita',NULL,'ahmad.babba@nass.gov.ng ',19),(117,'Sen. B. Mandiya',NULL,'bellom2001@yahoo.com',19),(118,'Sen. K. Barkiya','08138360742','barkamazadu00@yahoo.com',19),(119,'Sen. M. Aliero','07066847000','senatoraliero@yahoo.com',20),(120,'Sen. Y. Abdullahi',NULL,'yahaya.abdullahi@nass.gov.ng ',20),(121,'Sen. B. Na\'Allah',NULL,'bala.naallah@nass.gov.ng',20),(122,'Sen. J. Isah','08185651909','isahj@ymail.com',21),(123,'Sen. O. Yakubu','07032642674','yakubu.oseni75@yahoo.com',21),(124,'Sen. A. Yisa','07055221111',' ylashiru@gmail.com',22),(125,'Sen. S. Umar',NULL,'sadiq.umar@nass.gov.ng',22),(126,'Sen. I. Olorigbigbe','08033581695','oloridoc@yahoo.com',22),(127,'Sen. Oluremi Tinubu','08095300251',' info@oluremitinubu.com',23),(128,'Sen. S. Osinowo','08033049369','bayoosinowo@gmail.com',23),(129,'Sen. S. Adeola','08074000040','adeolaolamilekan2005@yahoo.com',23),(130,'Sen. A. Adamu',NULL,'abdullahi.adamu@nass.gov.ng',24),(131,'Sen. G. Awkashiki','08099321703',' godiyaakwashiki123@gmail.com',24),(132,'Sen. U. Almakura','08077253989','tankoalmakura@yahoo.co.uk',24),(133,'SEN. ALIYU ABDULLAHI ','08052046555','draliyuabdullahii@gmail.com',25),(134,'Sen. M. Bima','08173479797','sangibima@gmail.com',25),(135,'Sen. M. Musa','08033114615','Sani_313@hotmail.com',25),(136,'Sen. R. Mustapha','08033047403','adeoshy@gmail.com',26),(137,'Sen. I. Amosun','08033213993','amks2@yahoo.com',26),(138,'Sen. T. Odebiyi','08036058080','toluodebiyi@gmail.com',26),(139,'Sen. A. Akinyelure','08091707000','akinyelure1@yahoo.com',27),(140,'Sen. N. Tofowomo','08054546666','tofowomo_1960@yahoo.com',27),(141,'Sen. R. Boroffice','08176406557','rboroffice@yahoo.com',27),(142,'Sen. S. Basiru','08034753343','ajibolabasiru@hotmail.com ',28),(143,'Sen. F. Fadahunsi','08052242211',' adefadahunsi19@gmail.com',28),(144,'Sen. A. Oriolowo','08033565979','yemlee12@gmail.com',28),(145,'Sen. T. Folarin','08033160587',' teslimkfolarin@yahoo.com',29),(146,'Sen. B. Omotayo','08037053375','rabab1004@yahoo.com',29),(147,'Sen. A. Balogun','08132956057','kbalogun7707@gmail.com',29),(148,'Senator I. Longjan','07044442045','talk2longjan@gmail.com',30),(149,'Sen. H. Dimka','08033359443','dewansamson4@gmail.com ',30),(150,'Sen. I. Gyang','08097777712','dridgyang@gmail.com',30),(151,'Sen. B. Apiafi',NULL,'betty.apiafi@nass.gov.ng ',31),(152,'Sen. G. Sekibo',NULL,'george.sekibo@nass.gov.ng ',31),(153,'Sen. B. Mpigi','08037419000','mpigib@yahoo.com',32);
/*!40000 ALTER TABLE `senators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'abia'),(2,'adamawa'),(3,'akwa-ibom'),(4,'anambra'),(5,'bayelsa'),(6,'benue'),(7,'borno'),(8,'cross-river'),(9,'delta'),(10,'edo'),(11,'ekiti'),(12,'enugu'),(13,'gombe'),(14,'ebonyi'),(15,'imo'),(16,'jigawa'),(17,'kaduna'),(18,'kano'),(19,'katsina'),(20,'kebbi'),(21,'kogi'),(22,'kwara'),(23,'lagos'),(24,'nasarawa'),(25,'niger'),(26,'ogun'),(27,'ondo'),(28,'osun'),(29,'oyo'),(30,'plateu'),(31,'rivers');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 11:32:57
