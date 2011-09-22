-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: pikatig
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.8

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `act_id` int(11) NOT NULL DEFAULT '0',
  `act_date` date DEFAULT NULL,
  `act_time` time DEFAULT NULL,
  `act_end_time` time DEFAULT NULL,
  `hours` decimal(4,2) DEFAULT NULL,
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `act_type` char(1) NOT NULL DEFAULT 'T',
  `category` char(3) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pba_id` int(11) DEFAULT NULL,
  `funding` varchar(4) DEFAULT NULL,
  `funding1` varchar(4) DEFAULT NULL,
  `funding2` varchar(4) DEFAULT NULL,
  `funding3` varchar(4) DEFAULT NULL,
  `summary` varchar(75) DEFAULT NULL,
  `subject` varchar(256) NOT NULL,
  `location_long` varchar(256) NOT NULL,
  `notes` text,
  `paitime` tinyint(4) NOT NULL DEFAULT '0',
  `seniorrep` tinyint(4) NOT NULL DEFAULT '0',
  `senior_cc` tinyint(4) DEFAULT NULL,
  `senior_ce` tinyint(4) DEFAULT NULL,
  `med_time` char(3) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `om_code` char(3) DEFAULT NULL,
  `ph_measured` mediumint(9) DEFAULT NULL,
  `ph_estimated` mediumint(9) DEFAULT NULL,
  `estimate_notes` tinytext,
  `act_end_date` date DEFAULT NULL,
  `problem` char(3) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `media_items` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`act_id`),
  KEY `ud` (`user_id`,`act_date`),
  KEY `case_id` (`case_id`),
  KEY `act_type` (`act_type`),
  KEY `act_date` (`act_date`),
  KEY `act_time` (`act_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (3310,'2011-07-14','13:09:00',NULL,NULL,1,'N','CS',2,100502,NULL,'1000','2009',NULL,NULL,'asdas','','','dasdasd',0,0,0,0,NULL,'2011-07-14 18:09:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3306,'2011-07-08','15:22:00','15:52:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'asdfasdf','asfasdfa','asdfasdf',NULL,0,0,NULL,NULL,NULL,'2011-07-08 15:22:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3307,'2011-07-08','15:22:00','15:52:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'asdfasdf','asfasdfa','asdfasdf',NULL,0,0,NULL,NULL,NULL,'2011-07-08 15:22:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3298,'2011-07-08','14:58:00','15:28:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'fff','ff','ffff',NULL,0,0,NULL,NULL,NULL,'2011-07-08 14:58:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2896,'2011-06-30','15:30:00','22:00:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'asdfasdf','afasdf','asdfasdf',NULL,0,0,NULL,NULL,NULL,'2011-06-30 13:34:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2897,'2011-06-30','15:30:00','22:00:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'asdfasdf','afasdf','asdfasdf',NULL,0,0,NULL,NULL,NULL,'2011-06-30 13:34:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2963,'2011-07-01','16:36:00','17:06:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'ffff','fff','ffff',NULL,0,0,NULL,NULL,NULL,'2011-07-01 16:36:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2965,'2011-07-02','11:00:00','14:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'asdfasdf','asfasdfasdf','asdfasdf',NULL,0,0,NULL,NULL,NULL,'2011-07-01 16:37:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3008,'2011-07-07','11:15:00','11:45:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'ttttttttt','tttttttttt','ttttttttt',NULL,0,0,NULL,NULL,NULL,'2011-07-07 11:16:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3297,'2011-07-08','14:58:00','15:28:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'fff','ff','ffff',NULL,0,0,NULL,NULL,NULL,'2011-07-08 14:58:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3009,'2011-07-07','11:15:00','11:45:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'ttttttttt','tttttttttt','ttttttttt',NULL,0,0,NULL,NULL,NULL,'2011-07-07 11:16:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2966,'2011-07-02','11:00:00','14:30:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'asdfasdf','asfasdfasdf','asdfasdf',NULL,0,0,NULL,NULL,NULL,'2011-07-01 16:37:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2436,'2011-06-27','13:00:00','02:30:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'Test','Test','Test',NULL,0,0,NULL,NULL,NULL,'2011-06-27 11:01:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2795,'2011-06-30','14:00:00','16:20:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'test','test','test',NULL,0,0,NULL,NULL,NULL,'2011-06-29 15:51:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2799,'2011-06-30','13:30:00','14:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'33','444','333',NULL,0,0,NULL,NULL,NULL,'2011-06-29 17:36:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2432,'2011-06-27','09:31:00','10:30:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'test','test','test',NULL,0,0,NULL,NULL,NULL,'2011-06-27 09:31:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2435,'2011-06-27','13:00:00','02:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'Test','Test','Test',NULL,0,0,NULL,NULL,NULL,'2011-06-27 11:01:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2431,'2011-06-27','09:31:00','10:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'test','test','test',NULL,0,0,NULL,NULL,NULL,'2011-06-27 09:31:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1767,'2011-06-18','11:00:00','12:06:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'Patch Test','Patch Test','Patch Test',NULL,0,0,NULL,NULL,NULL,'2011-06-17 10:07:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1404,'2011-06-15','12:30:00','13:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'cron test 3','cron test 3','cron test 3',NULL,0,0,NULL,NULL,NULL,'2011-06-14 12:26:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1720,'2011-06-16','17:10:00','18:00:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'test','test','test',NULL,0,0,NULL,NULL,NULL,'2011-06-16 17:10:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1764,'2011-06-17','11:59:00',NULL,NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'Patch Test','Patch Test','Patch Test',NULL,0,0,NULL,NULL,NULL,'2011-06-17 10:00:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1400,'2011-06-14','14:15:00','15:00:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'Cron test 2','Cron test 2','Cron test 2',NULL,0,0,NULL,NULL,NULL,'2011-06-14 12:22:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1392,'2011-06-10','14:19:00','18:00:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'asdfasdf','asdfasdf','asdfasdf',NULL,0,0,NULL,NULL,NULL,'2011-06-10 14:19:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1397,'2011-06-14','12:17:00','12:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'asdfasdf','sdfasdf','asdasdfasdff',NULL,0,0,NULL,NULL,NULL,'2011-06-14 12:17:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1235,'2011-04-20','13:30:00','14:30:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'3,4','check','here',NULL,0,0,NULL,NULL,NULL,'2011-04-20 11:17:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1381,'2011-06-10','13:43:00','14:00:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'test','test','test',NULL,0,0,NULL,NULL,NULL,'2011-06-10 13:44:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1234,'2011-04-20','13:30:00','14:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'3,4','check','here',NULL,0,0,NULL,NULL,NULL,'2011-04-20 11:17:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1230,'2011-04-20','12:30:00','13:30:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'Check 1,2','Check','Here',NULL,0,0,NULL,NULL,NULL,'2011-04-20 11:11:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1172,'2011-04-20','16:00:00','17:00:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'Internal Review 2','Internal Review 2','3717 N. Ravenswood Ave. #210, Chicago, IL 60613',NULL,0,0,NULL,NULL,NULL,'2011-04-15 15:47:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1217,'2011-04-20','16:00:00','17:00:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'Internal Review 2','Internal Review 2','3717 N. Ravenswood Ave. #210, Chicago, IL 60613',NULL,0,0,NULL,NULL,NULL,'2011-04-19 10:23:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1221,'2011-04-20','11:30:00','12:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'Tickler Sample','Tickler Sample','Room 208',NULL,0,0,NULL,NULL,NULL,'2011-04-19 11:09:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1121,'2011-04-14','11:00:00','12:30:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'LSNC Demonstration Tickler 2','LSNC Demonstration Tickler 2','1200 W. North Street 3',NULL,0,0,NULL,NULL,NULL,'2011-04-13 11:56:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1229,'2011-04-20','12:30:00','13:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'Check 1,2','Check','Here',NULL,0,0,NULL,NULL,NULL,'2011-04-20 11:11:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1120,'2011-04-14','11:00:00','12:30:00',NULL,1,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'LSNC Demonstration Tickler 2','LSNC Demonstration Tickler 2','1200 W. North Street 3',NULL,0,0,NULL,NULL,NULL,'2011-04-13 11:56:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1222,'2011-04-20','11:30:00','12:30:00',NULL,0,'K',NULL,1,86,NULL,NULL,NULL,NULL,NULL,'Tickler Sample','Tickler Sample','Room 205',NULL,0,0,NULL,NULL,NULL,'2011-04-19 11:09:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3313,'2011-07-14','13:11:00',NULL,'10.00',1,'N','CS',2,100502,NULL,'1000','2009',NULL,NULL,NULL,'','',NULL,0,0,0,0,NULL,'2011-07-14 18:11:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3314,'2011-07-14','13:11:00',NULL,NULL,1,'N','CS',2,100502,NULL,'1000','2009',NULL,NULL,'a','','','aaa',0,0,0,0,NULL,'2011-07-14 18:12:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3315,'2011-07-14','13:12:00',NULL,NULL,1,'N','CS',2,100502,NULL,'1000','2009',NULL,NULL,'aa','','','aaaa',0,0,0,0,NULL,'2011-07-14 18:12:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3317,'2011-07-14','15:00:00','15:30:00',NULL,0,'K',NULL,1,100502,NULL,NULL,NULL,NULL,NULL,'This is a tickler event','Demo Tickler','3717 N. Ravenswood Ave. #210',NULL,0,0,NULL,NULL,NULL,'2011-07-14 13:32:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activities2`
--

DROP TABLE IF EXISTS `activities2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities2` (
  `act_id` int(11) NOT NULL DEFAULT '0',
  `act_date` date DEFAULT NULL,
  `act_time` time DEFAULT NULL,
  `act_end_time` time DEFAULT NULL,
  `hours` decimal(4,2) DEFAULT NULL,
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `act_type` char(1) NOT NULL DEFAULT 'T',
  `category` char(3) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pba_id` int(11) DEFAULT NULL,
  `funding` varchar(4) DEFAULT NULL,
  `funding1` varchar(4) DEFAULT NULL,
  `funding2` varchar(4) DEFAULT NULL,
  `funding3` varchar(4) DEFAULT NULL,
  `summary` varchar(75) DEFAULT NULL,
  `notes` text,
  `paitime` tinyint(4) NOT NULL DEFAULT '0',
  `seniorrep` tinyint(4) NOT NULL DEFAULT '0',
  `senior_cc` tinyint(4) DEFAULT NULL,
  `senior_ce` tinyint(4) DEFAULT NULL,
  `med_time` char(3) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `om_code` char(3) DEFAULT NULL,
  `ph_measured` mediumint(9) DEFAULT NULL,
  `ph_estimated` mediumint(9) DEFAULT NULL,
  `estimate_notes` tinytext,
  `act_end_date` date DEFAULT NULL,
  `problem` char(3) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `media_items` smallint(6) DEFAULT NULL,
  `subject` varchar(256) NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `ud` (`user_id`,`act_date`),
  KEY `case_id` (`case_id`),
  KEY `act_type` (`act_type`),
  KEY `act_date` (`act_date`),
  KEY `act_time` (`act_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities2`
--

LOCK TABLES `activities2` WRITE;
/*!40000 ALTER TABLE `activities2` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aliases`
--

DROP TABLE IF EXISTS `aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aliases` (
  `alias_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `primary_name` tinyint(4) NOT NULL DEFAULT '0',
  `first_name` char(50) DEFAULT NULL,
  `middle_name` char(50) DEFAULT NULL,
  `last_name` char(50) DEFAULT NULL,
  `extra_name` char(20) DEFAULT NULL,
  `mp_first` char(8) DEFAULT NULL,
  `mp_last` char(8) DEFAULT NULL,
  `ssn` char(11) DEFAULT NULL,
  PRIMARY KEY (`alias_id`),
  KEY `first_name` (`first_name`),
  KEY `middle_name` (`middle_name`),
  KEY `extra_name` (`extra_name`),
  KEY `ssn` (`ssn`),
  KEY `contact_id` (`contact_id`),
  KEY `mp_first` (`mp_first`),
  KEY `mp_last` (`mp_last`),
  KEY `sorting` (`last_name`,`first_name`,`extra_name`,`middle_name`),
  KEY `last_name` (`last_name`),
  KEY `test` (`primary_name`,`contact_id`,`mp_first`,`mp_last`,`ssn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aliases`
--

LOCK TABLES `aliases` WRITE;
/*!40000 ALTER TABLE `aliases` DISABLE KEYS */;
INSERT INTO `aliases` VALUES (1,1,1,'Ivan',NULL,'Asteyich',NULL,'IFN','ASTYX','222-22-2222');
/*!40000 ALTER TABLE `aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `case_id` int(11) NOT NULL DEFAULT '0',
  `number` varchar(24) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cocounsel1` int(11) DEFAULT NULL,
  `cocounsel2` int(11) DEFAULT NULL,
  `cocounsel3` int(11) DEFAULT NULL,
  `office` char(3) DEFAULT NULL,
  `problem` char(3) DEFAULT NULL,
  `sp_problem` char(3) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `open_date` date DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `lsc` tinyint(4) DEFAULT NULL,
  `iolta_only` tinyint(4) DEFAULT NULL,
  `mlro_pro_service` char(3) DEFAULT NULL,
  `mediation_check` tinyint(4) DEFAULT NULL,
  `close_code` char(3) DEFAULT NULL,
  `reject_code` char(3) DEFAULT NULL,
  `poten_conflicts` tinyint(4) NOT NULL DEFAULT '1',
  `conflicts` tinyint(4) DEFAULT NULL,
  `funding` varchar(4) DEFAULT NULL,
  `funding1` varchar(4) DEFAULT NULL,
  `funding2` varchar(4) DEFAULT NULL,
  `funding3` varchar(4) DEFAULT NULL,
  `undup` tinyint(4) DEFAULT NULL,
  `referred_by` char(3) DEFAULT NULL,
  `intake_type` char(3) DEFAULT NULL,
  `intake_user_id` int(11) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `doc_path` varchar(32) DEFAULT NULL,
  `income` decimal(9,2) DEFAULT NULL,
  `assets` decimal(9,2) DEFAULT NULL,
  `poverty` decimal(5,2) DEFAULT NULL,
  `eligd` tinyint(4) DEFAULT NULL,
  `income_type0` char(3) DEFAULT NULL,
  `annual0` decimal(9,2) DEFAULT NULL,
  `income_type1` char(3) DEFAULT NULL,
  `annual1` decimal(9,2) DEFAULT NULL,
  `income_type2` char(3) DEFAULT NULL,
  `annual2` decimal(9,2) DEFAULT NULL,
  `income_type3` char(3) DEFAULT NULL,
  `annual3` decimal(9,2) DEFAULT NULL,
  `income_type4` char(3) DEFAULT NULL,
  `annual4` decimal(9,2) DEFAULT NULL,
  `asset_type0` char(3) DEFAULT NULL,
  `asset0` decimal(9,2) DEFAULT NULL,
  `asset_type1` char(3) DEFAULT NULL,
  `asset1` decimal(9,2) DEFAULT NULL,
  `asset_type2` char(3) DEFAULT NULL,
  `asset2` decimal(9,2) DEFAULT NULL,
  `asset_type3` char(3) DEFAULT NULL,
  `asset3` decimal(9,2) DEFAULT NULL,
  `asset_type4` char(3) DEFAULT NULL,
  `asset4` decimal(9,2) DEFAULT NULL,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `persons_helped` tinyint(4) DEFAULT NULL,
  `citizen` char(3) DEFAULT NULL,
  `citizen_check` tinyint(4) DEFAULT NULL,
  `noncitizentype` char(3) DEFAULT NULL,
  `noncitizendoc` char(3) DEFAULT NULL,
  `noncitizendocnum` varchar(50) DEFAULT NULL,
  `noncitizendocref` varchar(50) DEFAULT NULL,
  `client_age` smallint(3) DEFAULT NULL,
  `dom_abuse` tinyint(4) DEFAULT NULL,
  `outcome` char(3) DEFAULT NULL,
  `just_income` char(3) DEFAULT NULL,
  `income_prospects` tinyint(4) DEFAULT NULL,
  `main_benefit` varchar(4) DEFAULT NULL,
  `sex_assault` tinyint(4) DEFAULT NULL,
  `stalking` tinyint(4) DEFAULT NULL,
  `case_county` varchar(25) DEFAULT NULL,
  `rural` tinyint(4) DEFAULT NULL,
  `low_income` tinyint(4) DEFAULT NULL,
  `senior_ethnicity` char(3) DEFAULT NULL,
  `formcompletion` tinyint(4) DEFAULT NULL,
  `lives_alone` tinyint(4) DEFAULT NULL,
  `repeat_client` tinyint(4) DEFAULT NULL,
  `functionally_impaired` tinyint(4) DEFAULT NULL,
  `good_story` tinyint(4) DEFAULT NULL,
  `grandparent_case` tinyint(4) DEFAULT NULL,
  `seta` tinyint(4) DEFAULT NULL,
  `homebound` tinyint(4) DEFAULT NULL,
  `institutionalized` tinyint(4) DEFAULT NULL,
  `elder_victim` tinyint(4) DEFAULT NULL,
  `limited_english` tinyint(4) DEFAULT NULL,
  `comm_barrier` tinyint(4) DEFAULT NULL,
  `senior_rep` tinyint(4) DEFAULT NULL,
  `packet` tinyint(4) DEFAULT NULL,
  `disabledcase` tinyint(4) DEFAULT NULL,
  `seniors_dv_victim` tinyint(4) DEFAULT NULL,
  `seniors_checked` tinyint(4) DEFAULT NULL,
  `hud_7a` char(2) DEFAULT NULL,
  `hud_7b` char(2) DEFAULT NULL,
  `hud_7c` char(2) DEFAULT NULL,
  `hud_7d` char(2) DEFAULT NULL,
  `hud_7e` char(2) DEFAULT NULL,
  `hrh_payer_1` char(3) DEFAULT NULL,
  `hrh_payer_2` char(3) DEFAULT NULL,
  `hrh_ref_1` char(3) DEFAULT NULL,
  `hrh_ref_2` varchar(15) DEFAULT NULL,
  `hrh_health_plan` varchar(4) DEFAULT NULL,
  `hrh_plan_type` char(3) DEFAULT NULL,
  `hrh_med_group` char(3) DEFAULT NULL,
  `hrh_hospital` char(3) DEFAULT NULL,
  `hrh_medi_cal_type` char(3) DEFAULT NULL,
  `hrh_outcome` char(3) DEFAULT NULL,
  `hrh_plantime` char(3) DEFAULT NULL,
  `hrh_employer_type` char(3) DEFAULT NULL,
  `hrh_health_status` char(3) DEFAULT NULL,
  `hrh_health_cond` char(3) DEFAULT NULL,
  `hrh_income_source` char(3) DEFAULT NULL,
  `hrh_service_language` varchar(40) DEFAULT NULL,
  `hrh_follow_up` char(3) DEFAULT NULL,
  `hrh_notes` text,
  `hrh_service_provided` char(3) DEFAULT NULL,
  `hrh_issue_1` varchar(5) DEFAULT NULL,
  `hrh_actor_1` varchar(5) DEFAULT NULL,
  `hrh_subject_1` varchar(5) DEFAULT NULL,
  `hrh_issue_2` varchar(5) DEFAULT NULL,
  `hrh_actor_2` varchar(5) DEFAULT NULL,
  `hrh_subject_2` varchar(5) DEFAULT NULL,
  `hrh_issue_3` varchar(5) DEFAULT NULL,
  `hrh_actor_3` varchar(5) DEFAULT NULL,
  `hrh_subject_3` varchar(5) DEFAULT NULL,
  `hrh_dmhc_opa_hmo_check` tinyint(4) DEFAULT NULL,
  `hrh_case_review` tinyint(3) DEFAULT NULL,
  `case_zip` varchar(15) DEFAULT NULL,
  `elig_notes` text,
  `cause_action` varchar(100) DEFAULT NULL,
  `lit_status` char(3) DEFAULT NULL,
  `judge_name` varchar(50) DEFAULT NULL,
  `court_name` varchar(50) DEFAULT NULL,
  `court_address` varchar(50) DEFAULT NULL,
  `court_address2` varchar(50) DEFAULT NULL,
  `court_city` varchar(25) DEFAULT NULL,
  `court_state` varchar(25) DEFAULT NULL,
  `court_zip` varchar(15) DEFAULT NULL,
  `docket_number` varchar(20) DEFAULT NULL,
  `date_filed` date DEFAULT NULL,
  `protected` tinyint(4) DEFAULT NULL,
  `why_protected` varchar(50) DEFAULT NULL,
  `pba_id1` int(11) DEFAULT NULL,
  `pba_id2` int(11) DEFAULT NULL,
  `pba_id3` int(11) DEFAULT NULL,
  `pbacocounsel` tinyint(4) DEFAULT NULL,
  `referral_date` date DEFAULT NULL,
  `compensated` tinyint(4) DEFAULT NULL,
  `thank_you_sent` tinyint(4) DEFAULT NULL,
  `date_sent` date DEFAULT NULL,
  `payment_received` tinyint(4) DEFAULT NULL,
  `program_filed` tinyint(4) DEFAULT NULL,
  `dollars_okd` decimal(8,2) DEFAULT NULL,
  `hours_okd` decimal(8,2) DEFAULT NULL,
  `destroy_date` date DEFAULT NULL,
  `source_db` varchar(16) DEFAULT NULL,
  `in_holding_pen` tinyint(4) DEFAULT NULL,
  `doc1` int(11) DEFAULT NULL,
  `doc2` int(11) DEFAULT NULL,
  `vawa_served` tinyint(4) DEFAULT NULL,
  `nuke` char(2) NOT NULL DEFAULT '1',
  `med_2partyaddress` varchar(255) DEFAULT NULL,
  `med_2partycity` varchar(255) DEFAULT NULL,
  `med_2partystate` varchar(255) DEFAULT NULL,
  `med_2partyzip` varchar(6) DEFAULT NULL,
  `med_2partyareacode` varchar(4) DEFAULT NULL,
  `med_2partyphone` varchar(9) DEFAULT NULL,
  `med_2partymobileareacode` varchar(4) DEFAULT NULL,
  `med_2partymobile` varchar(60) DEFAULT NULL,
  `med_2partyphoneref` varchar(255) DEFAULT NULL,
  `med_2partysenior` tinyint(2) DEFAULT NULL,
  `med_2partyfamily` tinyint(2) DEFAULT NULL,
  `med_2partybusinessmerch` tinyint(2) DEFAULT NULL,
  `med_2partysent` tinyint(2) DEFAULT NULL,
  `med_2partyacknow` tinyint(2) DEFAULT NULL,
  `med_notes` text,
  `med_agreeattached` int(2) DEFAULT NULL,
  `med_outmediaprogram` int(2) DEFAULT NULL,
  `med_surveysent` int(2) DEFAULT NULL,
  `med_dispute` varchar(60) DEFAULT NULL,
  `med_outcome` varchar(60) DEFAULT NULL,
  `med_user_id` int(11) DEFAULT NULL,
  `med_user_id2` int(11) DEFAULT NULL,
  `med_open` date DEFAULT NULL,
  `med_closed` date DEFAULT NULL,
  `med_2partyname` varchar(55) DEFAULT NULL,
  `serve` varchar(80) DEFAULT NULL,
  `hud_ethnicity` tinyint(4) DEFAULT NULL,
  `hud_race` tinyint(4) DEFAULT NULL,
  `hud_ami_v2006` tinyint(4) DEFAULT NULL,
  `hud_outreach` tinyint(4) DEFAULT NULL,
  `hud_9902_7a` tinyint(4) DEFAULT '10',
  `hud_9902_7b` tinyint(4) DEFAULT '19',
  `hud_9902_7c` tinyint(4) DEFAULT '17',
  `hud_9902_7e` tinyint(4) DEFAULT '11',
  `hud_referred_by` tinyint(4) DEFAULT NULL,
  `hud_job_duration` int(4) DEFAULT NULL,
  `hud_debt` decimal(9,2) DEFAULT NULL,
  `hud_highest_edu` tinyint(4) DEFAULT NULL,
  `hud_hoh` tinyint(1) DEFAULT NULL,
  `hud_farm_worker` tinyint(1) DEFAULT NULL,
  `hud_colonias` tinyint(1) DEFAULT NULL,
  `hud_hecm_certificate` tinyint(1) DEFAULT NULL,
  `hud_predatory_lending` tinyint(1) DEFAULT NULL,
  `hud_homeownership_voucher` tinyint(1) DEFAULT NULL,
  `hud_housing_voucher` tinyint(1) DEFAULT NULL,
  `hud_first_homebuyer` tinyint(1) DEFAULT NULL,
  `hud_housing_discrim` tinyint(1) DEFAULT NULL,
  `hud_disabled` tinyint(1) DEFAULT NULL,
  `hud_assistance` tinyint(4) DEFAULT NULL,
  `hud_finance_before` tinyint(4) DEFAULT NULL,
  `hud_finance_after` tinyint(4) DEFAULT NULL,
  `hud_mortgage_before` tinyint(4) DEFAULT NULL,
  `hud_mortgage_after` tinyint(4) DEFAULT NULL,
  `hud_counsel_start_date` date DEFAULT NULL,
  `hud_counsel_end_date` date DEFAULT NULL,
  `hud_session_duration` int(4) DEFAULT NULL,
  `hud_counseling_type` tinyint(4) DEFAULT NULL,
  `hud_counseling_term` tinyint(4) DEFAULT NULL,
  `hud_counseling_fee` decimal(9,2) DEFAULT NULL,
  `hud_counseling_grant` tinyint(4) DEFAULT NULL,
  `hud_9902_7d` tinyint(4) DEFAULT '18',
  PRIMARY KEY (`case_id`),
  UNIQUE KEY `number` (`number`),
  KEY `client_id` (`client_id`),
  KEY `office` (`office`),
  KEY `problem` (`problem`),
  KEY `status` (`status`),
  KEY `funding` (`funding`),
  KEY `open_date` (`open_date`),
  KEY `close_date` (`close_date`),
  KEY `user_id` (`user_id`),
  KEY `cocounsel1` (`cocounsel1`),
  KEY `cocounsel2` (`cocounsel2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (1,'80-11-00001',1,86,100502,1000016,NULL,'80','08',NULL,'2','2011-02-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'1000','2009',NULL,NULL,1,NULL,'L',86,'2011-07-13 19:05:28','2011-02-18 18:31:01',NULL,'7800.00','0.00','72.02',0,'1','7800.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9','0.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'A',NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,'D',1,NULL,NULL,NULL,'Cook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,19,17,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18),(2,'80-11-00002',2,86,100502,1000016,NULL,'80','08',NULL,'2','2011-02-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'1000','2009',NULL,NULL,1,NULL,'L',86,'2011-02-18 19:02:21','2011-02-18 19:02:21',NULL,'7800.00','0.00','72.02',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9','0.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'A',NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,'D',1,NULL,NULL,NULL,'Cook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,19,17,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18);
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_fees`
--

DROP TABLE IF EXISTS `cases_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_fees` (
  `case_id` int(11) NOT NULL DEFAULT '0',
  `number` varchar(24) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cocounsel1` int(11) DEFAULT NULL,
  `cocounsel2` int(11) DEFAULT NULL,
  `cocounsel3` int(11) DEFAULT NULL,
  `office` char(3) DEFAULT NULL,
  `open_date` date DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  PRIMARY KEY (`case_id`),
  UNIQUE KEY `number` (`number`),
  KEY `client_id` (`client_id`),
  KEY `office` (`office`),
  KEY `open_date` (`open_date`),
  KEY `close_date` (`close_date`),
  KEY `user_id` (`user_id`),
  KEY `cocounsel1` (`cocounsel1`),
  KEY `cocounsel2` (`cocounsel2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_fees`
--

LOCK TABLES `cases_fees` WRITE;
/*!40000 ALTER TABLE `cases_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compens`
--

DROP TABLE IF EXISTS `compens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compens` (
  `compen_id` int(11) NOT NULL DEFAULT '0',
  `case_id` int(11) NOT NULL DEFAULT '0',
  `billing_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `billing_amount` decimal(8,2) DEFAULT NULL,
  `payment_amount` decimal(8,2) DEFAULT NULL,
  `billing_hours` decimal(8,2) DEFAULT NULL,
  `notes` varchar(128) DEFAULT NULL,
  `time_amount` decimal(8,2) DEFAULT NULL,
  `expenses_amount` decimal(8,2) DEFAULT NULL,
  `donated_amount` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`compen_id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compens`
--

LOCK TABLES `compens` WRITE;
/*!40000 ALTER TABLE `compens` DISABLE KEYS */;
/*!40000 ALTER TABLE `compens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conflict`
--

DROP TABLE IF EXISTS `conflict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conflict` (
  `conflict_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `case_id` int(11) NOT NULL DEFAULT '0',
  `relation_code` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`conflict_id`),
  KEY `contact_id` (`contact_id`),
  KEY `case_id` (`case_id`),
  KEY `relation_code` (`relation_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conflict`
--

LOCK TABLES `conflict` WRITE;
/*!40000 ALTER TABLE `conflict` DISABLE KEYS */;
INSERT INTO `conflict` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `conflict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL DEFAULT 'NONAME',
  `extra_name` varchar(10) DEFAULT NULL,
  `alt_name` varchar(50) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `mp_first` varchar(8) DEFAULT NULL,
  `mp_last` varchar(8) DEFAULT NULL,
  `mp_alt` varchar(8) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `county` varchar(25) DEFAULT NULL,
  `area_code` char(3) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `phone_notes` varchar(50) DEFAULT NULL,
  `area_code_alt` char(3) DEFAULT NULL,
  `phone_alt` varchar(15) DEFAULT NULL,
  `phone_notes_alt` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `org` varchar(35) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `age` smallint(3) DEFAULT NULL,
  `ssn` varchar(11) DEFAULT NULL,
  `languageold` varchar(80) DEFAULT NULL,
  `language` varchar(3) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `organization` tinyint(4) DEFAULT NULL,
  `nodob` tinyint(4) DEFAULT NULL,
  `ethnicity` char(3) DEFAULT NULL,
  `amernative` tinyint(4) DEFAULT NULL,
  `asian` tinyint(4) DEFAULT NULL,
  `africanamer` tinyint(4) DEFAULT NULL,
  `hiwaiianpinative` tinyint(4) DEFAULT NULL,
  `white` tinyint(4) DEFAULT NULL,
  `otherrace` tinyint(4) DEFAULT NULL,
  `racedeclined` tinyint(4) DEFAULT NULL,
  `hispanic` char(3) DEFAULT NULL,
  `notes` text,
  `disabled` tinyint(4) DEFAULT NULL,
  `residence` char(3) DEFAULT NULL,
  `marital` char(3) DEFAULT NULL,
  `frail` tinyint(4) DEFAULT NULL,
  `r_zip` tinyint(4) DEFAULT NULL,
  `know_about` char(3) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `sorting` (`last_name`,`first_name`,`extra_name`,`middle_name`),
  KEY `mp_names` (`mp_last`,`mp_first`),
  KEY `ssn` (`ssn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'John',NULL,'Doe',NULL,NULL,NULL,'IFN','ASTYX',NULL,'4438 N. Malden, 2N',NULL,'Chicago','IL','60640','Cook','111','111-1111',NULL,NULL,NULL,NULL,NULL,NULL,'1984-01-17',41,'222-22-2222',NULL,'A','M',0,NULL,NULL,0,0,0,0,1,0,0,'B','Test Client',2,'C','W',NULL,NULL,'B');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counters` (
  `id` char(16) NOT NULL DEFAULT 'COUNTERNAME',
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES ('cases',7),('case_number',7),('contacts',1),('conflict',1),('aliases',1),('activities',3317),('google_sync',853),('noname',47),('doc_storage',331);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_storage`
--

DROP TABLE IF EXISTS `doc_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_storage` (
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `doc_name` varchar(255) NOT NULL DEFAULT 'NONAME.txt',
  `doc_data` mediumblob,
  `doc_text` mediumtext,
  `doc_size` mediumint(9) DEFAULT '0',
  `mime_type` varchar(50) DEFAULT 'application/octet-stream',
  `doc_type` char(3) DEFAULT 'C',
  `description` varchar(255) DEFAULT NULL,
  `created` date DEFAULT '0000-00-00',
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `folder` tinyint(1) DEFAULT '0',
  `folder_ptr` int(11) DEFAULT NULL,
  PRIMARY KEY (`doc_id`),
  KEY `case_id` (`case_id`),
  KEY `folder` (`folder`),
  KEY `folder_ptr` (`folder_ptr`),
  KEY `doc_type` (`doc_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_storage`
--

LOCK TABLES `doc_storage` WRITE;
/*!40000 ALTER TABLE `doc_storage` DISABLE KEYS */;
INSERT INTO `doc_storage` VALUES (323,'testpikaup.txt','x�+I-.)��N,-�)-MLI\\0:o�',NULL,16,'application/octet-stream','C',NULL,'2011-07-08',1,100502,0,NULL),(324,'google-queue.php','xڍTko�H�l$����|\\0o�mVJ�4Є�\rl�n�M�5�/x`:�z��*���0Ƅ(*B��9�>�=���4I�5	RR�#�p�Z��z\r�z-P(���k,!F�JDF���F���`f�oD����D?���p��c�S�ڔ[<�@%J�\\\'A��%�0A0�������\\\\�9���r��vϔi��%�W�hq���_�\r?��|æ/��s��|�����}��G���N�������r�P�k�Z��z���şg^鐽Z9�5:kQ)A���� ��m�d�x��~�k�:�T�v�g1<&w���d���3z����b,�0��wps돯�����*��#�D�*)n��t�F�?�`��LG��f-��	|S0��9� �\\0j�f�s*��aB�T�T�pi��a�II��<�	CV\\\"L,r����K�Q���w��b���p�����~�i��΁~�_m�s��U+R�d�I���2�X��\Z�9(׏Z{�-U��#�5�D�$Ea��p���O�ּ���V7 s�L�9c]ϳG&���10��5\Z.���D�F�n��F׆��M�s�j\Z(�E*k��������^c���?7�+�5�4����N6�־{6�z=���8�\\\\�R/b��Aw+�(_:\\\'W��OMX��}�d0�V	v�<��2��w�)7Ti\Z@�L�ג~~�Š����u-TB�)�R��l���b��Y�����a�4c_���t⡵�2�|&�+�[�ߡ=��;�ז�����Iԍl����ގ\r�� �7-ߖ?1-�+׽ifg��ld��`�/7�B؝��v*	v6sv�s�+�',NULL,1835,'application/json','C',NULL,'2011-07-08',1,100502,0,NULL),(325,'testpikaup.txt','x�+I-.)��N,-�)-MLI\\0:o�',NULL,16,'application/octet-stream','C',NULL,'2011-07-08',2,100502,0,NULL),(326,'google-queue.php','xڍTko�H�l$����|\\0o�mVJ�4Є�\rl�n�M�5�/x`:�z��*���0Ƅ(*B��9�>�=���4I�5	RR�#�p�Z��z\r�z-P(���k,!F�JDF���F���`f�oD����D?���p��c�S�ڔ[<�@%J�\\\'A��%�0A0�������\\\\�9���r��vϔi��%�W�hq���_�\r?��|æ/��s��|�����}��G���N�������r�P�k�Z��z���şg^鐽Z9�5:kQ)A���� ��m�d�x��~�k�:�T�v�g1<&w���d���3z����b,�0��wps돯�����*��#�D�*)n��t�F�?�`��LG��f-��	|S0��9� �\\0j�f�s*��aB�T�T�pi��a�II��<�	CV\\\"L,r����K�Q���w��b���p�����~�i��΁~�_m�s��U+R�d�I���2�X��\Z�9(׏Z{�-U��#�5�D�$Ea��p���O�ּ���V7 s�L�9c]ϳG&���10��5\Z.���D�F�n��F׆��M�s�j\Z(�E*k��������^c���?7�+�5�4����N6�־{6�z=���8�\\\\�R/b��Aw+�(_:\\\'W��OMX��}�d0�V	v�<��2��w�)7Ti\Z@�L�ג~~�Š����u-TB�)�R��l���b��Y�����a�4c_���t⡵�2�|&�+�[�ߡ=��;�ז�����Iԍl����ގ\r�� �7-ߖ?1-�+׽ifg��ld��`�/7�B؝��v*	v6sv�s�+�',NULL,1835,'application/json','C',NULL,'2011-07-08',2,100502,0,NULL),(328,'php_errors.log','x�-��\n�@{!���sA�k��\\\"V��%٘%�ݲI�z��{�0�������PP[�)М���P5��<3,���@{��-�⋞�¾��(@e�mF�ݕ��k��D�/��D�fI��������cj��^F���TI�L�e��68�',NULL,167,'application/octet-stream','C',NULL,'2011-07-08',1,86,0,NULL),(329,'php1.png','x�\\06@ɿ�PNG\r\n\Z\n\\0\\0\\0\rIHDR\\0\\0�\\0\\0�\\0\\0\\0:\\\'�\\0\\0\\0sRGB\\0���\\0\\0\\0gAMA\\0\\0���a\\0\\0\\0	pHYs\\0\\0�\\0\\0��o�d\\0\\0��IDATx^�	�ŵ?���>��<�_^��{YML�n�DM���E�����(����ʾ��,�3303̾��>�;��U������o�;���T{�vWUW��:�:�NU�y���O<5��3������ߞ�����Ӂ��4t��<p \n�w}i���n:�\\\\����[^���!��\\\"y����f����R��@C��Sh���۴w�^�ڻ�Ӿh��Xi����l�L�+���M�0A�JQ��l��ƣ��6�F��`t���!�����ws�Ŝ���<@ +��B�:����Ç�<�P���ӧ�7���&c����G}|��z��W&Ϝ���y�>X���Vo���}F>5�{���ܹ����v�7�9�����TWjqS]K-�fI5�MD�*�4U�4���%5TU7TJ�j�T_YeQe}Ee��B�ڲ\n��k�*-��PYMIYu	�[SjQYy\r#�S^�g��F�\Z�s^��eg>؄�zb\\\\j�%�q��2�a����!��j�*�A���*P��ʆrPE=���TZV[¨��TRuqIuQ1��������Q!QE~�</�<7�LRN^YN^iNnivNiVNIVN1Qf6��QVQ�M�Y6��,Yo)\n���[��[��s�+�\n�id���������������E�/CAXqP(Pc��A\re��7���\re�\n��OA%e�����:TMqimQ	��������\\\"4���BP%j�Q~j67�<\\\'��,;�����^�orr��@24K��(��KV(��+�7=!�JAX�P�\\0�ŏ@��U1��	|�/-#�G VSV}��7Q��N5D]L�Vt=ꀈ�E���C�~�$#DUT��n�DQ5D�NPM]KM}K�M��\\\\�b�wۀ��]{[���Ժ�՟ZZ�pj���©���hOG���S���/�D{���f������5��A�yٕ�\\0�~��n5���+�-o�g��NFK��^�o�����x�fپ5���Y��hEǚ{֬h[��u͊&F+֬��T�zeՇ+[w��Ͽ/))^�����?i�7�,]�����~��G��@#睹{�t54���XΞ�2�l�d�RI�k�����Lr��40R�����X^QU_QU�p.��������Z,�(,W��C~Y���@��p��q,�°X�\n��J���\Z��ƶ��VN>X.�DCuюY�f�a\r��Q#�s��N8�D/bTVQWZQ+��a9#��E�Յ%�*��b�y(��\\\"�Qy༠<��	���<�oI� �Y����8ڔU��A�Y��̜\\\"�bc�tHjHg 0�(Bf���b���DX)����*�\Z{<ɬW7$�ɀsA��\\0�F{��1D�a������rF�y�sF�-�f�3B\\\"B��z��\r�r4?�K��I�i�r�h�̀}�\\\\��a�(�]E�@(>c�?qF�\\\"�X���濬���E�[�L��	#�Z�b�,�<a\\\"E!z��D\\\'�U� $�y%�1��1��UK\\\"qǤ(��9�(X�&8r孅����ZZ�:b�rDt�����W�l�ɬZ���f��wA�]���w��Ǩ㽅�������}Q�E�/j{Q���Z�[��ޢ��ս����%5�.��Դ+����=���k��ໆ�ya���o����K׬|]��a\\\\mljsPc[#\\\'�8���7��C{3��Q����Z\\\"KY��.�y��ګ��	P���$p���Dw ��F%��пI/����k�A���a�*�i�1dXΌ\r(�4�87�369�@�Ї#:�4Xk&4~����\r����6�aca�`�1�)��!���V�V�0**�,*�,dTQ�������<�!z���|���<F9L��b-(؜ShSva��\n��F�\\\"��>�\n7�$�<!K�lŇM0�q��>\r��@���O��DZM��K�����{1{7�p3��03*QXz��������4�\Z��ڕm���(��Ajh��x�h9�Dӕ7j6�yS�4����+��T���#cF��E�/\rq^�\\\"���/�Щ��]�Oh������TEKv���w1+���\\0	R��U����dJW�Y�S۞�$6��H|1%M�e����^h�>�0�z��rUAw���oom����;\\\'N�,�rB�`�\\\\䈥`��;ni��]�d.�r�ܪ%sk�ͭ]6�n���es���Ӳ��6N+��d��^�R_�|�s�;�+�v���g�ܶs[W�m�Ը|^��y����,�W�t^��yeK�5%m���߰Y����ڗ]q5l�/O|��7�3��%+>���;s[�:��ۈ\ZUr\\0|k�����FFԉ�7�74�sD��D$�\\\\�z���Hu���X�.������ʪZF�]`�H�uꌪ�W�W����tX�uU��z���Y�YA��c��ֆ�6����=�M�\nn���S\Z�Ј�k��b|�F3b@#��6K�1�E1F)����9��b��@t���2P~!Q)�</��s��9��s��e�]�;������,�%,�s,G\nH\n��+�(˫JʪJ�m8R��9��mt�X�#o�� �1�x�iMܨB�FW ��\\0�L>�K��D�����PV����5R�E�Ozho���>A�f#Q7�lPfXٓ�t��R�$�Yd��\\\'�_RZ�.�F�ZX�P h5E\\\'Xu\\\'EaT�u�$����=��(��\n� �Q$�9~3T[��H���Ѕl����+π�vvv5���ȅ�J������&A-M�-MM���t���D����jTh�����?$��MK��&8u��M黊��,�7�4f���U�g�,�Yǩ�S낙m�س���otr���H�9�w.�<�Î�o�/�پ��օo6/|�i���j�Y����o���Y:��������B8K��wB5���~q�m��y`ģO<?j�+c�O�\\\'2�L��4�5+d�����(�����{Cc3�IM\r\rM�	t�k�sPCm�B��5D5���cT-����C5U�5�U\Z���Q����Q%�\ZF|dP��E�55u�zm-��XW�X_���B���M(�E�%��	�+�3��a��la�Fb�#y\\\"�@���Al4#�14v���F$���Uee�J�*KJ�*8����2*-(�)��XR^~q^~QnQ�J9���F�������_P���b|�e\\0�)E���	�L�Ƙ���Fo�`�R\\\"����|�*�~I���\\\\��%��4���+T� ޢP��P���E��Jg���)��7V\n�k-a�jۢ��9�YUn#+��b��ӣ8Ti ��F4{��{\r�a��tH,p�Cc��P���d��O�G�!S�$�!���Xf]��$�j5�fG��qʤ(���o�gOGCcQc$!Dx�KCC#�ޢ����_�\\0,��o�s`������|�\Z\Z��ۧ�xu����ΚZĩ�-F�oM�zkj��u��6̞�4{J��)m���ϞL�~�Ӈ�p=�BNi�=���0�~�4P��iճ�UΞV>{Z�[ӊ9�5�n�~���}��:�����W�~��K���O��}���&g#ܳNc�22��En�g5G�	b�.�xQ\r@MAu\ru��kAS	�H�q]%Ì,�g�����P	_� GS�5��\r�C<_D��(�\rU��ǒ������f��G�x+,�v>�����vaY��,�&\Z���Pũ������Qi!:�u��ť�J\n���6����8��3Rq=/����~.(!A$[F�#,/+G�0rb&�H^\\\".XYI�m���X#9���J���*ց�hWj�b�\n�(��y��F��qY�u�?Նg�[cM�>��/2�٠v@��{M�^p�\\\"�߽�j��KK���E_�D\\\'���h6jqI�x�R��^�è��r�F�7�ii_$$y&�M�7�\\\\fB�b*�����8p`kku���0g\\\"��EL�#����U�D�����_x�E zeeU���`9b�	�r�_�oʜ<.{���r\\\'�+�:�p���cK����:�r�ؚick��i�6����͜�=����X��y�PӴ�����q��6�j�؊ic˦�-�6�pڸ�)/�My!w�9S^��|������0?\\0��:�{�gԨQ�&M�5k��>|��}�Jmm{8��|W�B�֖�47R���!�5��a��\\\"�$��]d�|]m-#�6���8����l7��E�I�C�]��O�6JĊ	��|qC^.��O�d3\rY��Ù�mAր�\Z�hX�F6lp#�5���tT�*ޠ���������:����rPi)���DRiq�J%EE�\n��\n\n\\\"��ňX\\\\b�!}|����F6�%����e���e�5n�\\\"�ʏy\\05���C�P�j�z��v�jZ�j�BQusbm�76���m�j�����@Jg�Kpʡ��.�z:�2.)�����{�W�����y��!�iy������*�ֽ%քpc,�uIA��q)T��bҾ����JBj���\\\\oa`�W6Y�Y8�*�� �<TA\Z��/�\\0�\\\\�/�{DV�fv�X<�X�%��?�nݰ��gA�/=��ҳ��͟0\nT<aT�+��_U9qT��QuG�sjd�h�C�c�m����S��gj8U�&>S6�W�)x��W��{������z�������䃿�s:�����}�Yg<��\\\'�x��_���s�2,�����R0��mÝR[@;�m\\\\oV.�U0��B\\\\�-�W��.t�s]��Kb<^�=\r$���.r��<�-��[%w�u�CXt΀Kr��5YL`��E�c�`E�Q��*\r0E�碓�ڸ���\n*)$KHG \n��\nB�H�B�C�8��\ncE����چ�W��%E?���s�>e��E�#`g�b�E\\\"��ԟ\\\\�z%��īQ�	 ��ڼk������^����:\Z�U-��R���!�C�tHpy�Q㖔fjE���c��+~�s;Y�[�s-͍T8U����R%��A�!:�N!�\\\\7��Nr���$�7n�8��R�r	J7�-n��S$����lZ�:f$(}��̱#�Ǎ��x����x񋏗��x���+�?^3��:N\r�� �z����)�= �֍T;��*Ne��(y����{ቜ���d��\\\'w�}2m�e�W]��T,臋P��Ͼ��I/�={��ŋ��嵧��A��%1@L6q䂚*H G/�P�6��$����H伨��\\0W��K�@>/q���\\\"�2��$p܂r����	(�:��qVv�-��g,.��!.99� 8C|���<iK*���@��pzJ�ldP� +H]�\\0�D%��*��\\\"�%wA9���IJ��\Zw�\n����xs��e���f�v�63�Jj�a\r��140��D��m�Fn��f?�WNR������5qʉE�>��h�XP�F���z�!�������U�y�;E�t(�j0�l��h�%p�.C�Ւƶa��\\\\�8�]R�)\\\'�*I?$,��H�]�6�U\r(ގD;��ؑ����㏣%n���[�!5R�p#<߶m;(//�O�_ޢ�߻�7^��W���+�ٕ�]{��_\\\\u��.�~Յ��0��Ӯ�0�����0ע��/�t]?�i�:��]s!#\\0�1��ӯ�p�����m�p��/���Y���|���~��߮��o���i/���_�Vnp ,�$����ǎ;e���9�wvڤ��;:��0�����J�Ю*�J�v5>w���ue\\\\���O!�N����l��2y1�t�٢{��X�\rw�R[vB9�q�d�����$\\\"2�)���\rG_�u-���?%�C1g@na�N\\\'���	�$�H:�����\ZUS{�Ʀ8*cb46�]���^�%WK��t����ˇZ��i�s?����\Z�J��6��x��~>$P߲	�-A>S^�f�����`���jQW��*�Cf��nw^a����n���ܼ#F�\Z��_��~!A2�{��\\\\����>��o��k�/x�����/���K/��������/��˭���t�y�W��z�yW��u�y9\n���j�]1�3��2X6���S@:�.?o�e�m�����]��_.��/�Z��_}�_��R\\\'�p��X��%�|��?���ѣ\\\'O�&p3�w*��ݿ�Vx�K�ڕjT��q+s�qP�!90Tuu���r�/�^}BFlU�T5s\ZtZh.q\\\\;5�x�P��wn̐���CoTVP٩�j�d���L��.�.�i)ٰ�˾�W��j�R�x{.�r_����!�s@��Z��8r@�zt�v=�����jf�F\r\r��{�F���mU�hg�ԇ�^��{�.�_�O�,��ש����e~�\\\'�+dn����P��R�u-ӖlZDW��i�D۷������ضm�l�\nں�eKNn�#F@�شy�M�6o&DGx�.�c��N�[0��K/|��?�˯���ן\\\\��O/�պ�����\\\\q~ҕ�\\\\y~�������Y;?�o��a���kԏ��_��j򗈲�o����]W��|��ۮ8���#�������~��e������O_�6X�5�o��z�瞛8q�o���8//�q��VW\\\\W�Km�]��Я/	a�ޯ�����9� !�2�5svQ��,\n�w�\\\\���u��Fq&�G2��^i뒞.9K��ڹ��}�A�|.�\\\\3[��r�e�3�1�\n\\\\���SL��G9��;�Ʀ\\\"��]O����q�vum���D������!JH���˘�O�ju���ʘW�C))6�M�[(W7#&@��\rn�[��\\0y�<�%��gq�n߼e���[7mښ��3�Q`y�7�6nڂ�xB����c�6���=	����_u��W_���K�\\\\}ɧ�\\\\���%�]���%[�]��~��^����/��IN���_d�x��\\\\O���\r(������i�]��:���~�l�)���wk���g�~��5�[s��>��w�g�|���˟}��W^y�on,\\\'P�\n�U�\n�ڦ�׶���^�{Z\\\\\\\'�%�\\\\vi�k�<XO�媞����*�EUV�ڹ\n粷����#��4����܆v[/��=*�e�8��f�j��]p�pRᶫ0� ���Q�y�X��%�����W��0.���]eW��~�Ax_�oc[��5�-X�v���XȺyk2h�֤�ۈ��I�G<<_��c��nOٺ-y˶�M�wlܴ}��m�ٹÆ��r�u6�߰e�ƭ_lچW�6on�+�	�;y b��ܼ��?����W�t���/����?���7_����6�|ٖ���u��I.�9��݃��1�/Y���c�K��(��{<�<�\rٷ�9��?g�������y۟�o��������?o���_�|����W|v���r�G�\\\\������7�;�ˡ�c��3�<,����l���5Z����ݫ��\rϵ\n���_\r�s�F�j��ydk;M�;/�-4~���g��n_^K���\Z�ZK;��!Q\\\\U�I����×K^�\n˭P��v�*T,��6&���ec���Q!ܥ�G�唲��z{tD���!��()�q���$��<��e٥��Bu�q�c!��\\\\�f��8�w߾!w݅���l۹y+(�m����Sv�v�ܑ�kGRZr\n(=9e7�MJNߑ��=)m���-�vmܒ�Ŧ�u_lߝ�7���V��u[֮ߊ\\\'_lڱiK�fN[؈!D?7oNڼY�ڹu�m�w��]�F�����2�����>���!�7���=�������\\\'�{��{�O{���\\\\��@����>د`�\Zz�_������k��&��:���grJ��\ZPʽ�&�}�{��r�u�����=������!��\rk�%k�[���w�5ig�z뭄�&L���f�0XN�Jk`�����DwM�Š��fН��^7�(&�]���&nD4|��/ә.��5w.��I����*�kg���4i�p�	�UH3�{�����5���A?zXN�4ZDw\r���*Fex�a���,[���]�z���_�i�٦a�X���;�?2lxjzfRJ���i�v�mߑ\n�NJڕ��+9%5%%m�δ]�2v�f��e��夥礦	ڹ+;egVRJ��雷�}�y纍���C�=�ͭ?_�m�h�ɛ�@wߵ�%��v�=�\\0<�F�J�c������l�Y?-����o6��ጶ<z����FNy�δ�w�yg��;���#��;�A��(����p��>=�����n/x���\\\'���Ā���?60��A��#i�ۇ߉myt��G����zd�ʥW���l���v�+F��3f��r��=��yT��u\\\\m����V\\\\��0NpZ\r�����N����\\\'�:~3�.P�zh\r줗���~X.}⤙]j�!�ഊ{x\\\'8��g�<�����.��N�v��\\\'���Z���ԽB#$�G�?�\n�Cp,W�2 �6{�[�x�KIH���h�\r���lՎSX�ʫ�Z���9k��W&�U��e\\\'��H�ν3=eW���ݩiii��Y�3�32�2��yNt.3r�*L�(ؕ������3kKR��mi�6�dd<4�	�����6&}�%e���,ٌ�]�L\\\"�\\0�Rvog�}�@8`{gVʮ���9�0VH�����([���Q�l~摭�<�㹇��{x���=�p�����=�;���.�p�K��^z�ܢ����{~�@�x���/�W�½%��-wO�ػ��ޛ;���1�g=w����=4u��]�=���C۟{xǘ)��[�Ϊ�3_��&�M����}����hg�]ڹ���gi��	���tnwy�����\\\'���5�IA)K8�݆��7���=����	�=�:�֍_;_�ӮΚ������&΍�=���;j��0���~p����i�~έ������h̝�D��T�0D��y��eZ��Ԏԑ�eRe\Zym}CUmmY%NC��c\\\'�[n0f�;Sӫkq�\Z۱���n�l��\r���>\\0�	�O��9q6UU-Nbő�8�G-W�x�)l�]TR^�m�˱��=�#6�N�l3Z~��%��{K���l3Z��۳��sJ׬,[��|͊ʏW��?^Y����OW�}��i�\nP��m�V����\ra�.o�|y�g�Z>]����O5}����E\r/�c����%U-�Z�������֮N_�j�S�:�T�j�Y�\\0<��8�8`9�\n���-�&YW��*�\\\\.G¼V��W����\\\\Y�+�yex�����\ZiP�� �G��R�b���O�n�Z~�[j��S����<�eJ��4�J��]�k�u�8��(/����=��;Z���[WG��)��L�΃}ڥA��q��\\\\kf��4?D�QX�:�D��\\0.����h��N;�a���Z�V]TV�WT��#����53g���C_߿�\r7�����7������r�\r��z�[o\Zp�-��u������?���o��[n��&����͵�]uM��]}���\\\\{�5�@��������i�x�nf�?7��\r�X�8�On������o��[A�at��w������~��O��}ﺟ}������S��?���o8���8��3zSߟ����[���-g��ֳO���S�W�9��z����fN�����?����n�{J�3O����^w�O�=��מ~r�_���S�����}4�S��q#�H�R[K�駟�],�r��\\0����������>�2煃\\\\�גH��S�E���w]B\\\\�/�\\0�,��\\\\ɼS���,q�A��b���NY�+�,�<���z�y��5�ya����\\\"�V�Z�nF�a\\\\	8W7���u��P��ޓ\r�qH�yȉ�c�v������:��Fkl�&�G��T�����,�#<�V�u�s�lGX\\\\ͻ�����<��dwnQzN~^q��l�v8���Ͻ���bGGkgG[Wg�ޮ�}{���ۻ�>yu�݋�ϰ\Z��}�����@��D.{˿:!��locD{za�m���Uh���7�wM��vş8�$�e_l��^vQ6aw\\\\x�woWgٯ!��i�Q��X�Ԉ���W���7(r�=X��b�E�Ǡ=C��\\\"���/~�{ק!#�0�Y@qhh�H4�,9�7s\\0-ƆիW�\\\\�j:�j�y�oĩ���UM�= �CJ�E���Np�U�.�h�ڣZq~T�s?c{�(.�\\\'�#Ne�ꖃi0�v�\\\'r��N�	bt����ł����̼´��]Yy;3s0˽swfZ���ٻ�s���Ӌ3�J�*�rj*�jJ뫀y�d�f�8\\\'���,��0#;{Wz����M۶�ݸ���>߰v통�6|�i����-�w����.*�**�.*�)*�-�����ܝ���h���]i��0�2�+̟0��������\n(l��H�fjZ�TPZ*§�hK��kΘ*.�>Y�o;)��\\\'0ra�l�*F*X�ܢ����҂�����]���O�b���;��رcSҎ-���w����̜L*��\\\'K*`������ 8�ބݽJ������O�\Z�Չs��R\\09��=b]��Lك9 Ɇ\r\\0����~T�\\\\ukw��=�zO6\\\\~�ډsr�p-	Xq�%jG�C:�,Q�ˏ��=d�\\\\`��&�TY��+�c��X{=&��u%e�E%���Y��Y9;3�S2�v��H����N\\\',/*�(-Ϊ(˩�ȯ�.i���u�9�n�pyeeAQQVNv��I[�oٸy���u������\r�~���-[֥�l�؝���V\\\\�ɰ<?�0?\\\'?\\\'++##=5ugJJrR2�|:�!:ͪҴ% <=\r������B�=�w�Hށ�Fh%<Vzz@9;���i�拓V��`�-�a���f��b�G������ₒܬ��iY)�iX%�~��u[wlغc��[��w�Y��0������N\\\"���*�{γ���������ׯ�1�9_?vu38��Ru\n�F.e4n��q��	�-��{��`䋉s�j��\Z�<�9�����y��r9\r���`�W�c�������	ׅ��y�\\\\�\Z�RN�P+K��󋋳��wg�ee�ff��ȄOM:��sv���ƛ��̒���ܪ����҆�*f�n��]�b�a��Ҽ�܌��)�vlKڼe농�?����6�ٸ��-�?ٺ�Ӥ���R7gg&��e�fC/��B��HO��LIb����ᜮt`x\ZT�]���-;��,m�Om�Q-���\\\\���B�ޝ��������\\0�#��p�;����hp�leMeqEQNq���I�R7oJZ�������7mݱe;����ݙ���r��\nK�QP���\Z~0���Q�i��v�)�^~������פ��hg��D���`���0�X�Ƈn��s�R��,�f�<�@.7{�N\rzE�\\\\L�]!�nXq�����\Z�Ʈ����A�c��έ\r�`�r��^���z\Z��9�WW�]XT������J��J��J��`Ӷ������L�/-�-/ͯ�,��)k���t2�A�\rG\n�8i97�Հ�[�o߰m��[�|�y��-�Wo��Q���v&}��kCVƶ�ܝ�E��%9eŹ�EyŅ��y���Y��	��v3$�/v�� g�\\0Ǳ�;m�����[�8	C��iP�sr�\r[;v��h��l\\\\ñ��247�G����������]I�;��nސ�n�����g{��غ�?Y�t�����K_j�*;\\\\Z����\Z��`�����rZ\\\\��Θ��㏡f`9�������O<#�M����`�E����g�a]��CM�Y\n��E� ���I� %�=�&�%�Ǽ��E?_�0�M�v?q�=g��[ڏ-��M�x�޼�������YV�\n:W�q^3���*uUeiyYAq!�޲r�3s\\0ZY�9e�d��g�dewK�+�\n�*Kjj*��k��}���9��������+esr�Z�w򶏓��Nٶ:5�����g�m���\\\\��\\\\Z�^Y�[]QPYVP^RPZR8�����<x:�ù*�/�̰α���!w��C!�N^c�0�X��\\0L�32ah��9��r�k3,�z���򚊂r���v���ܱ9\rS���n����͛0jHJNNMO;r\n�\nJ�J*�ʫ�|]\rƹ�e�^,��>������������bp\\\\��:��@���ѓq�ܵ�^�]���3ҡ�Ih�+8���\\\'�|9�K�������\Z�/��_�x]���skdS�|��w+�Ho\\0�D�1��3	k�Fڽ]]p�=]-@A�;3-*8�֭]�$q���+6C��2�v�B�\\0U[�ʕ�\\\\�����-����s�������e����p�_�̃.\n�����|h���E�~�rv�z��p�Ƭ1T���L���S7���K��y\Z <yMF�GYi��el(��\\\\��TV�V�����ꪒ���J(��m�\\\"��|�ݖ���q���M��e�����aiO���Ʀ�q� �IJ9�*�	.p��A9�������c��zyS]c=����(�8\\\'5/=)+eKڶ����ذ~��\r۶lęo;R�w�N����-sةJ9[_W��9��L5���}�㗷���#���V�0\\\\���\\\\b9����DU@8���`\nnH���GX\Z�\\0�{���k\\\"KX�Ys,��-�6n܈��,��y��q�:�,�m�`��p@]\nq����Ts�a?��jZ����~p����\n�rV�����{��.,���|������JgnN^�;x\n�����·�yQ^Qq~	�R`yIUU\\\"���B/��=�{�rϐFv^ή��[3�7d���N�<\\\'�Ӽݟfn(��RV�\\\\Q�V]�UWU�P+}e]memuEM5F��G>�\\\\c5sY�<����^����)�֙�N��0�Û(���;����9�����kn���}��Ƿ��f6_^[U\\\\U�[��Q��3\\\'u�;�nH��Ŏm�|ۈsev�Jޕ�;Y*.**��s�c+�0�Pk�9�c��/����}�_���!F!4?��S�`?,��}����i�4�.0�\\\"\\\"A�����r�ٚ!�;^�>M.�	�\n&_2n��\\\"#j��7�Hqc-��\r�<YC�bM\\\\I�J�\\\'F嗕Ѻ�Q��@5��\rcŊ�+hQh���	��f��7��zhr�B���xY(g�Nq�1���,W���\Zl��kŹ�.�C�b�B{TG�ŰO���/P��ǯv��r�ro�e��WZ��V=X�oL/��<+��΁�y�Q�<���%Eee���\n�tz���Ø\\0킹Е���.�I���Z���0�����%9_��o�,J�.M��Ȫ��o�-mj�jn�ml��H�[��\nm(��\\0�R���J=��:�uڗ���\\\'�L��.�&u�]�\\\'���I@$olb0N�L;onhn��reL5/�)�K��ڙ��-=eˮ�-;S�$�ܲ}N�ٕ��pyyl �(,�1���\r��1�3Q�/K߭�OQ�(��5SN�\Z���qs\n�����?	v��������<s�6&E��1!�3RH,L����UT�a<\\\"�1q��2J�Iy�n%2��L`�Vá����\\\'���R�o����n����\\0�R���9��ځ��½�ţ3�#$>\Zp����]�	o���5`��1��#\Z؏�\\\\��r�������*�N�DDtk��l�\\0QH�����\\\"t\\\\�7Vsa�6#��CI.,��Xaii	慁��Օ\\0o@8�cZ���������´���҂����Vl�.N�)�]_��PS�XW��P��T���_6ca�z���L���!���4a���?~��tѿ�k=�/�D�G=�x��T69�b��\rY~��lY\ZԔ&䣱������p��HF>)�ӓ�vô�#ew����ݰQ�`�q���m�8%\\\'��-Ƃ��(�}sa9�����ܫ��û\rn��$�5��$�Qu����{/�T.�bħȀ�	�[!�%\n�m�N�(�H�a�&�h�@���`��D1��O�ˁ�@읇���-m�~�z40?8��O�\Zу1�b9�f�x�1W�80_�5����Uܧ��#\Z�	�R�]��Ϛ��]��!��U͵3���k�\\\\e�v7\\\\���0P�2l�Щa\\\"lCg�0��|K)/*����W��P���)g�O@*:|��z9&«�s�J3�JwW��ה�֖��Ud6T�6�6ח�42 okilc��M�T~qWi�爎�qӻ}�#���b/�����9�p�k����<����=����8�fY���|,�+����ݝ����N��ge�C)/��0���M��4u�3�<3�^1*�C%��H��\n�����h_��}�7a9@@~�K���tnfg��t����\\\\Գ������a7C/�����+��\\\\4��a[&�SX3�L�\\\\0�Bi<�٥��y2Wuy>)AdG,�w�� �+��I��u�����r{��Iv�\n&�|�O!�̐!x�\nH���Vp�3H�ɋ[a%�ٸ�Q�ɣ�Lc�\\0��Yx�Yg���E6w^��Z�r�3\rWP�7ۤ>7w��U������ڊh1����,�x0����>���VM�	���Ͱ�>�ޏ��f�\Z�qaȬ\Z���\r�z}BȽK��t5�{���L�6���g��X?8������7:	0��Ю\Z�U��d�pqTa��\\\\�\rV���b�6f��X\\0Ȣf����B�ϴZic�����;��V^_�W_��P��T[�\\\\_��P��T��R��ڈ�R��k;�T�ҥ���x���s y��R;|���y��2�Kjy�a8���̚Α���:���B����4��87�(\\\'T\\\\P\\0�6���T�O\\0s8U�����-h�>\\\'���#24-�R���?����]de<�g\\0w�\\09��0? \\\'`:r�~��a����EA.d�Ă�!�\\\\��3��c�������j�6�v4�ˠ���4V��ϱ$�@�%�?�1��#e�x*��>&F�Ryd9�)O�9ʲ��,=�;Q@�ϼh������H0Q̓���а���A��Ě!�2��m�<��������ª >�p֚LM�1ㅝ�p��Rl�9�^X�aM���o�>�w�ٱ\rv*�va�B�3��x+=��0˓&n��\\\"D�rD�#J����\\0��.�)��]N������@��cت�;qR/v���..�^�ۛ,!�+�vA�?�#&�H�9�����|�2L1��^�-Ya������\\\\�e\Z9r6]��x���3�a���tS}ec}Ec]yc}i,�L�hi�je�x=���������d؅쉜1x� �ךc�UeKK�y,�l(�#0�3sl��X��I���*lW\\\\T^R��L���i��\\\"��E;��G���_���{��U��N���?�!�%��.r�\\0�P�\\\'��eK��y[�r\n�\\0��\\\"�D\\\\�7�D����x\\\\m����\\\'����N��OP��(��K\rFO�R�9v2@e�\r1QBJ�\\0�	ا��RI�����m�����\\\'j�4_��+E�5\\\'L�y͂�A�W��\\\\)!U��	��;%�m�5�1�5�A�z3:0\Z��$�-�O�A�R�܁���<�K�t\\\\\Z��\\\"�	T��=\\\"��\n�z/��.�̺�l��?�F��R���.��*�$qD,��pN@�Rǵ%�2D;���\r��u:\\\'\\0����Z�M�ܢ�\\\'x���:9	(��F&��[���\\\'ki�kn�mn�in�n5մ6׵6���3�X(�\\\\zԊa+/_�n�6�E�8��[�{�b�s?t��y30=`k���++�S��c�#���{�!H�:�,��=\\0ˑ\n4l�]t�CL0�?ʿ���׭_/4�#G���fb���T�쇏����Yz9I{��&,�i������<u\nm�}�&������2Ya/��6��/�����$��\r�#���P��L��9v&�Of\nE΢YE��\\\'X~��D�s�e*�	�bhC)�E���4�ʇ(�LQ��DN�KʽUPf�Q�B����#X��b�J��`��r�\nX�D���&s�j7�;����������p�vx��2�#jj�O�>}�ر�@�F��?��/����c�׊5��c�4q�\\0���Η��r����5�X�Zk�B83q*W�s�p�=*D�����~V���8�>n��YX/�i�)���@5En����p/��`��\\0��M�Z+.�G�0jn\\0~�o[ ��&�-��u�B���R���#���[�S\\0�Zx�\n�\\0^BuL,-���������ͭ��9��o��ϯ-�=��]K}ԟHr�{�<f������!H�g�E�T�����K����,�òJ�O!��^�G���\nK�F�H0���p���|��)\\0n�w0�y	̇-�c߳p��H\\\"�|h�>�4C����d�(�&�]X��*��D8,lƸ��(�uc*\Z{ȇ�,a9YS ��\n7xX1!�(�\\\"YE��\\\"\\\"�9^,G�,�3�b�DL��<|uX�_�-�!�݂�tJK*�H�t��Н\\\")R�Ҋ43t\r-�0��943����w�����>����>�}�9���A���rE���\n�X�MT�FVҸTę����������s!$�W\\0�ئ*맇����b..�F�t�M�H��bO�?lrX;�ٸ��zq��J��ꯅ0z��͛\\\'l�˰=�ͧ�u�4/��&�\\0�/��N�!W[�E<!��i�ے<�w�@e.!�p�ʵ����W�^\\0���}i���8폴�9��i=~7I�y2���eY:����89.�y��X�6ޙ���c�S�������s����\r��:�G5-k���E��!4�����Ԇ��va�$����9��Oo�$��=�I��?���,�k^��z��ҋ-r�MX���6K�����K������X������?F���U�;,��lNg(Z�*�V֥SJ��}�/����@�m9�ԆuF ��=�\r�>�����eY�����f�8ױL��;�L]�XXi�T>����,is�}s��Qr�UOt��ϐ�a��#�;[+>�\\0�e��Q0.J\Z\\\\x㻜Q{`\ra-�P�S� ���3���E;��y�}oť`�E��D�1��>����^��1��j2����ڐy]^r&AC�v�Y�ʡ�fi����!���iS�t��7���>F�*�oU\nh#O=:\\0���zO8A����G�^B�4{��c��i���~��Z�P&�$#9�|RO�\\\'^���/��\\\'d�[D�DHvY�����Q˓��вe�C��̹��9�,GL�V�p�����1��{�s��|�O+�I����X	��,K$��B^լ1��aj-n:N�c�Ih5�C��-(�����ʶ��2�zB\Z\r,p1|�_����@��ӕ�����D����_�����m]w!M�OW3��Hi\r3���{��5�j������6�xg\\\"[�������h����Q��������yZ���+�������\\\' �z��*+<�q���y���H�6�;���f��&Lf���	<H�S짮�h�h��t��w�[�\n��x�?��Xa9⸊�5e�a�ET��<���kyedq�V��t#�5Ô)�A�b����rmB)��n��2�n��_+D�]0�4qy����s��������7�#<�z���D,4���u0w�������ŵU�&��D���+��Q��<G+���)8GZ�U���o	�1Į*�K�mW��d�������(�B��;�=C��Y����j&�ˮ�>�o~�~��$��b�о�w]�N��2��0�vr@)��de��1��T�]�\\\"V������^��U\\\\�c˛t�=�=q�Nk���.�؉�>!�@�f\Z�Q�9�S��H=P�\Z�1o�h��	��f�\\\"����<Ðс�Y4��\\\\(�Kmk�T��,\\\"_\nI�����n��t�`^�o\\\"�Wbq�h+�+Kh3N噢�p�Z�O`ɨ�������O�N��*��Ʉ��N>~�g\r<�_д�Kr4���=��ݻ�M���аu�V�ԯc)u�tiv����5ԍ	�����\r�p	ؠE��0�,�C߄$�^%^����9��1�5�������U#������0�eӥ\n�v�w/�>1O3cgs�������\n��r���Z���ʖ�)yγi^u\n7�����jJ�|�PGw��#��|i�Ac=�;��\\\\f۔��=��zOҎ@�]|��t�����fLȖ���]q�����ި߾��	R*�M+���`��oK�,�<��):I7_+E�c�6��hJYc�G�R琩\n�`l��h\Z�\Z��ț.��g���������}��K��#Ӟ\\\'�tlb{�Yw�2�/��m���*�ؖ����Z�}�)�A�{�(�{�G���~SO˂��!11�uD#��t˱[�[X�_qXrd��H=���I/4�4���=���7\n-c�&=?��U��˸~\\\\��S|�R�-NB�E�I1�D;+*oa���e�rٮk���$��e�*�֗���1lǶ����ID,F=���&K��%�����F�g�T�v�[��E@����s�x:ȇz72�=�������Q�G��ڃ��1åٷ����_ޥJ9�}��%r�c\r@K�W�����>y����}\\0n���\\\"����>����ho�8�&�F\Z�A.��L���mN\\\"�~x �hŶk\\\\Қ�`�&���S���61{3H�i��O�,]-�{�Գ~?cKEݥ؊�B���ߕ��[�:�V��Y���AC���\\\"�eQ��2K��T5�l^D�۴���$�~�?9�����Kh���̚�n\\\'��h�����m�Lɖb*��+\\\'���uY�PO���w޸3�����n\\\'l�|���)М§��{���u�J0��������4\nW`b�#��#k$�}0�t.�Ֆ\\\\ �-_�v��o\Z�rP���&R9�=w�~6	�l�(�N;W��\n#�����I]��!i�mH/���TJ���d(\\\'�$^�>��Lo?N|�J���J�J;�\\\"(���;^r2/b�:�-Ibb�!҉Jb?;��*�O�p��.d��]����M\ZR���br�e ���X�۪�6�o�g�L̫l�Tti�/-���܀_>�3�%t�i}<���Z�p���l�X���ڸ�9�:4R�����=�f~[���ǣ�����H+�Wf,�e��;T��%j���-�� �@s�*�ҝ�t�1V$qP����~�f���Ɉ���b�\\\\�q�=�1\\\'�ډ y<��w5Θ�\Z��W�x$�\r�y��Y˺������v���=�S�n*y�i-�7�:$\\\\�DPS�������m��}��.o�H�{��n	�v�T*���y���&�q�yl�\\\\�W�ވTA׏v��ފ��#oz��rj_v�⚍!�ɿ��;;�z6��HN�f\\\'�?�5*��%�b��}	h�i��x\n\r7�>6b����vۓ�I<�uS�u���h0��qR�����^&���n\\\"�85��2#�I�G�z#�ݜ.K�O0���nL���	���ǯ�@zja6�B80f̃�c���_|�����I�&l���h2�g�K�h\r��F�xx�L�L)��LӜ�����\\\'\\\'6�A�T���	1�\\\'��I�c���6*J?��ޱ�׆�p�`��(����5���-Q�M�{�ӽ�d?~��G91G��u����3(VM��+/!-��1l6�4	�\r��R�Y\\\"VE볬O��0v�3�I�:fWp������\\\"�ǁ�;�_�7���I����ҭ��p*����w�x��\r�W��L�*c�PM>7:N��b���j���\\\"Օ�S�y��x����͒#�:�?r�o{�˔6�N�Z����|AJ~3p��\\\'\rzك�y%�fYj?�K�U6�X(��r>2m4���d��a2$r8��K5R���b�rN�h����I\\\"�P��%�O������\\\'�|u��b�ui7ח$o����{E��:|_����I����z/��Z5��%1DN�!��� ���4Fq����,fO�LR�>���C9�	��y �F��q�P[�H{���@��e����K�d�mte;2�����wo�y,ci*���)Pfo�S���P��6Q���;6��8�@n�Z�=��/\\\\��BM���R*��P!/��J9��� �A��[��\ZCE�xT�]��o��k�X�T���\\\\����K�8����NlӢc�p4����ñ���-N=����η��hf���^�OBo-W�|Ge3��D�1�����w��<fݒL�2g��h�L��E���e>ĳ�X�pYY�Xe���ȗ��I���W�%��N�Q\\\"B��ǴM�6��\\\"�ͧw��F,��r5��f��Z#����F�*%HY\Z���C<���$U���k]��G�y`o5�yM]�\\\'�y���t��%�RRh3*��8x~D�E�\\0uy�	!%��~7Q��y����r�|G�n0��pBn����|�@f9Ϥ\\\\c_hv�4��=�ߑ{�)M�Δm�ij�U���%�J��p��SB^2\n�C|\n�3��K\n�ׅ=}`ʺ����֚���ZЬ������Q&9�\\0Z�Sd~3�\\0�/�E��{)+)4ŌH�X�p�{�w�n�܊�@��S����q��\\\'�	ǳ���-���4V�`ޱ�=Y���R��%E�W��E�u���-�#Q��#Ej\n��Տ�g�(�?FF�x��`�����������]63[��i;�!f:A��HI��N�\Z݉�Z��~15:��k���nr;���������8x�KӀڶ@^��̂�;Ç���`5s�H��<Рe\Z;�C��*��;��6�Ps�?9�-�R\\\'�����Jj�s�+g]6D\\0�jG2�m�鮯a�R�:�?]��\\\"?��o��`�Bo�L�ov�����#�W�|�rǉ�_6�r�Eq�d���h��G&Q��\\\"�VZ���ఀ����f����\\\'\\\'n�˝�V�B|\\\'���A�^a��A����$!P�m���*����|�Ф;�g�u���L��f}Љm��v�>�+z���΋�VE�Nof�\r	:��To�Q��!��]4E���1����ZI�\\\'~�*��`�K�.�ʙ�0Y�j����݌)�o65g?%u��%®C*�(��(��h�d�^hڬBH��K߂w{T%�m�gB#����lL����}|��0�:\\\'.�\\\"�|���H*�\\0X�N�~�����ò�\n�EaI��\n[�+�G,^6l\n�F}WLN�{�Ͼ�7��%?�0Y��|������o�a\\\"�s_����0pӰ���1��┸����o�8O��?��/��/�,��o��@~���Բ���,ǡ޶\\\"�Gf,\\\'���ԛi�}E��K�끶�d�GC]���>����bxS�?�����,\r@��\\0�<2W�t�Px\r+��2t_�uuѧ����ԗ4�ъ�,]Nva�r\n����\\0���iLW���?]�+�BYt�(�S�c���\\0Z�}l\Z��\Z˧C�#IaO�ȦK\nmL�3�ko۵%|!��m��f�uժ���B����-��i@���F�E!���7���$�<A�D���k}��5;}�U�f��6g_<�\\0���/;�\\\"�9Pw�\\0���R\\0b���f�����1��4���;�lJ�*�0u�7�7���}�F0/���?s�Z�f�\\\"� Ѣ�G����`\\0����n�g�)���ٴ��:QA��a0V\\\"jcV�n`�j��\\06�i\\0��ܷ��M��h�P�*,\\0$��H�>���/>\r���|(�0��jc���fc���<��g����۝L]��$H�%��J����kf��\\\'�LУ�a+XK�\\0����UZ>��\Z���Q.��\\\"h��+����a(��\\\'�<������v85q1���s���*��V.��re���^�z�	��9^t9�GZHz�<��<�������n�\nI��.�6yBE�J3Q4��$|�����e\\\"F2��n(`v1;���L�㿶-�6��*���F+Uݠ��?~_s�,50��)]9yֵT�d\\\'�Է�T&o�!�x�]=��ߙ*QL?���2�~�u��(rV�vf�չE�\\\"t%�H�X���!}����A`��\\\'s���!��D���\Z�����\\\'-u���F=oC��9e�2LMy�}�ۤ!O�vSF~�g+5�d���O���=\\0\\0>±^������ur��(�����s�B�k����k^R:m�Fٳ.��Kq����p�E���\Zj�并r,��@�+x*#7�WB=܈�qQ���x-~�~�?ߓ��O�ݨ�#nS\rGF�������&��\\\\;5��	?����\\0O�����`�nC�NK���d�<��RtSWĎ���IB�Pf����(ֵ���/X t����£���\Z�5SIR�q-,�t饛�Ђ����4��Z�)m�5����W<���G:�wޛ�{j=D����X��2c�O� 	=��DN�\r�;X�n\nqq���/=�\Z��c�p�-�:�2�:(���!��]vi�.ݎ�L�T����<���G�2>AK�3[�]�{���>z�fG�zn�!%	���~��@�ʽ�K�	M8I�$v��˨�����#IמTI觽�K�eb���9G�O����˳�֥���gr�<�³�����٦���W�u}��~������Koá��܌Ԯ������W�h%���}��{��{Ăv�B��0�qI���Z����Ns�M~�Re^�b�㟘�w0��H���K��+�\\\'㊨d�-�R�n1뺷è1��\r��nLW��=m��������Y���}ݙR�+�]n+���g�V�1����	��7����u���	X������l��G��UR�i�4:e��	�ɹ���m�/�MӺ@~�g@��n���lj�б[\\\"�\\\\�p�R�.��E5ʇp�]7��4<\rO�.�DA����cb����AC�Y��H�PX�L6������}v�24������kp�������?ǌ,����G��_ȉ<Rw,���@���o�ϑ\\\'�KG�f&^c�B4��j�C�x���1�ZQ!������!W������}�S\Z9�+2ː{2�G%� �sc�s\Z��(d ��q�R-�UB�ĉ묮��vg}j�زicz;��}������0M�dJ��{�� �#{\n������c��,Iδ����v�����\Z1��ǭ�%\n�)����ݔ Xւ��R��j^r���W�������UY���]�Y�G��8D�h��6u�,�q�lL��~�0)h]r����e%y㦟�e���Th|�5�1\\\"2�v�\\\\2m;��PP-	2f���t�N�mdff����I�3u�t��ܖ�M@�I{���j	�l��m��c��o��-`�H�\Z�ЭR��Z����B\\0�=����pLp�7bP^�����lk�R�/T��woFI)�s�:[���iy��c����xz�9¬L���ŷ�R��[�}����\r��3䌢\r�ݏ��һ����Z-�6�AJ�a{O�Ї\\\"��$z�����	��9_|��̓�����ӹ�Vft�S��B�0X9�j�����l�}v�L+��gG�w��t���\Z�m�jD�r��<�G�\\0���Y}Y\\0LV�9��a��\\0{��M�qG��4e�z_��\nhi��AduL���F��	��H�Ƚ���j�0J1닋���\\\\x���b�W��U�$�/+lJ���O����+\Z���%hh^#]����*I2v=�\\\"z�M��n�\n��jI���O:Yt+]�۝8Ε�u�m��\\\"DG�\Z�� %��3WMm]&�}fŻ����Ћ�N���^2B��������^�����(]�k�I}�4��\rY��o_�`�XQ����L���sA��Wq�q:l|4	3H�Yd�1e�1����`9=�ϐ��W��\\\\\\\\\\\\t�GpI�»�?t9F�\r���ҙ�.�o	4�\r���7\\\\t�*p,?[\\\'��?�Ws�N��?p�M�1<>���|\nJ��4(��7��~�)��y1\\\\�޾�B��h=[<=\\\\.���S����-����\\\\3P.��ߦ���[[U�V|@�*\n�.���ۆ�b8;b�z��H\\\\�8in��3��S8o�!���Җ���g%I�o��	�5-�t�U,�?��+X��_�$�׬&��i&��᜽�X�GAe����\\\'s_YP���|�e0j�z�������r\\\\?�G�a��n�ck���x���Zh\Z�j�G�bҜ �f�[�ca�\\\"\\\'l�?��z��%�������h`���q�d������7/ϳv4��g��>��:+[�e���,����-uᚥ��%ß���b�ǖ�8�o�v����{��5�Y�[���Q���03;@�����讓sgw�+\\0����p���ΝG?��~����B��Ym��\\\"m��W(kb8-pS�y�����IbS�i2Ђ�\\0��n���T��\\\'��\nwCeB��@����?C�`�����!oLc����௑�_��6����\\\'��@���AAs��s������1�[c3)�T$�ܼ_��|��Q0�_�R���J����[���4��~7u!�G��2N����8�������̒0���Ev�}���i��N�+������\\\"�IԎ������F�aa�H~\\\\��NQ搿��z�����i�s,?��f���v#b%t�#̌�s����;wǿ���1�]�sE�7�2�r��}6��%��o�b�J�9�\\\\V����v[�t��d�[��ި[W��b������\rx}\\\'æIB��\\\\\r�򛩁ۓQ\n��z\n���_��d~t#�mKߵ4��GM��I��|iR���i�������,������Q��\nX��;C_\\\'®�@�O�e�nn��vaK���QO�E��\\\'�����J9�\\\\M\r`�>��K�6Z97����ؘ��������#��X�4Y��F�da��q��֏��jq�Û�vM�%ŏ	b�:{g��\\\"e���ӭ�	\nd7��uE����%����̣�Y;�}�C��3��zMX�{\\\\�Iz0wE��D��a0�r�i�����t��.g��/����K��`��M�%�tbr�S�Kv����BH����g�2�H�C/��c�e�F�(�\\\';��ZE�LO��g��HY@�m3����A? t�D-N�a���#�a�\\0N����u�l�4X8/ɋ6���V�Q�N/�m�+�2��a^\\\\�:dj��W)E{B��D��Z :�!ܖ1��\\\\c�<��J@{�X$����u:�{��M��o\\\"?�������=�8�Ҏj`�����\r��I����V��]�:[F��/Y�������H�磡&a�c���5�ٱ�wv����_X������I1ǉ� �m�j\\\\NS�d�\\\'	����[���u\n�M=]F�s9�{�`[�=�m����;�Qa\\\\�(^^#��7Х����K���\nW�`&A�5~��1v�7��(c�\r���\Z\\0��\Z,�uZ�#�.����Ψ_�Q���\nwtLe�M����Co��ê�+\\\")s�׿�6r�Bn��\Za<�xM�M�eǒ0���Uch��n�Z�W�����a�ч��4�4�x�I���11B*e�CCJ��C��\\\'1�\r��}�5Y�-gU�?>_�>�Wkچ���\\\\Q��\\\'z�%�#�e�o���5F\rܰ�~R@� ��L�B	��=�xno�G� ��&FF�X/E��X�匓s��E�L_g���>dp���v��a��J�f����3�i�,7�\\\\��<ް,�r�,�;ub�V?�\n�R����y>%�G:�m(�R���O�8/����V�Y�\\\"�h�����\\\"B:��y������<Q����� C����4���M4�������1���{�y���>���M�9t�|<�xt�\n7�Xx0!evure�x=\r+�����o֢���������[x��V;�B��\ZgXt��_��\n�%t���d~���n�qF�&����$�&p��e�+�\r!��^H��V��y�ai��?���I\\0������i�*��G�a�� �&s�53$�]y�?�g�%�!L��Td�T.�j;y�����d�j�#�ڧ�59d�����4���t�B�ig��V��;Ռ��1אMY?Ā�O}B1\\\\\\\'�����~2�/�v�d����ܽ9E������-��E��\\\"�%~��O�C�F��dd:�R��xS[�_�ħ�p�p6zⷻ�p=m�8x%�30G\\\"�����>��h�0oQ\Z���¢����߲T5BBr�\ZRjd��э����9�naѷX\Z�	c�4E��b���3k	��������H��|\\\\\rF��PS�{��*�a\\\\D�+\n	dEF���ŬP�5�5�tm�\\\\�ˮr����m?^p�\\0�����h>V�ƕ�Ie�Sg�:�X��	>r�=��<����io�L�0y*����/M�q9�R$���tȁN�z�k���Ղ��F5����Sf�O}CD�w=Qir��5�g�UK!���v�����P �0���E�\\\"����a�V����sL4�k>�]\rvA	�T�P�c#	w�=��t๞���[�ɐ}X]݀���*�3�19�ѡ�)��b�ݎ\rۄ���Sܗ�\\\"��@J����Oh2C�XG�������/�.	\nb�=��3�����,\\\"�0_L2�\r��!�އM��<;C؎�K)\\\"q��!��arW!A[���W��źv���P\Z�䑰������hF�4�p�XFʑ�!SUobO�׻��o5w�/�ü�q�!�4w�:�{���$���?��`���t�z�lJ˫{�B�6	Kd���k~�\\0�F�}��Δ�ujD��\n�D�p.��?�\r��w��FA.�P����e���(����� mԍ����\\\"P���ocvpx�gb������������*VY�0v#:n��Z��^��3�VƗc��S\n�Tn\\\\��#�;�`�%�����!�#d�;q�{w4��bA��oݷ��@&,��(��QT���^�;�A0(����Ej�@�Pߑ��8��Vr�Y�U�ȭ�|��b��Z	2�-\\\'�S���K#������Qij �\\\'�G��CThV}@\\\'��Z�\\\\�,x�`a-�q�����a�W��,��Hȃklr�C��H�0x}�g�L<GC�zB]���]W�<�g[?����<�$��>G-�ܭ�.�*�V�#K�lb��&ۥ/ Kv�v:lٚ�\\\'+��!����[�C�N֍�ͽaI=B�<_�b�m��*OA�s�_D���@	�|�nc��E{��r�#F�����p}���K[]Oe���J��h��1G���\n���N�(O8��7>��v*�,����N�c�⦬�b��k��-	\ZFل�n`^�ƣ��@E|]���4���u���;T�;�\\\'�9��@ָ��oJÂ����LE7C!�/��>�����!ɽgf\rK��3��g2j&���n폗)f\\0���#K���΂t6!�����`c�\\\'�����D`0���s�ѥ\\\\j`b�4�����%����;!�����Z�*���聙c���x���9x�j�l�|dod�g���?4�#��D�-B.Q�)T�`� ��z`g4\\0W�����\r�0�U���w!�;�#˩��U{zaw�%J���\\03A�3�%��%���\rxg��BLB����f��X�8c�>f���	S�TH�\Z��e�	����p��-��ן�	;Ϩ<�\\\"#�\\\"=S��K>n/�$��!���%�{y7��>�ᮥ?��aj�O}S�95�΃���[�5���]z��X��̤��[\\\'� �����r\r�l�D�!!���<[ߨp���]R��\n8����K�{_��셫�I��L��f�cag������5&�xZSx<��&�dfhě��g3�*��Wހz�`ޡ��U��N�9S��2���?��O�5��j�58F\\\'�{}v�\r³����(����3�}��|���T�AE�9�e\\\'U�ӻ���&9-JI�A��n#�9�sS��6�\r���e=�A%Aȿ;zJ 3�2�ـ��?����(� \\\'vҀ�K�a��B�c`��P�\\\"go�Z�D�A1n!4/;3K�s8Tw\r�6|Ns�XÄ��_���$Þ�5q�z�N��,���K+rݥ�ϋ��Ǜ�fX���ڿS��:�*5�Y�~��\n�h�ڜBuB��>�\\\"�4���\r�G �:��衄�:��v�S̃v�z:2nD�$	��QA��\\\'�=�`\\0�CP���g[t�B�\\\"=�W|X	��I_w���]?u\\\\��\\0k���f�;\\\"F)�}�9��9��U�/T04���7Tf$:�܌�I�ִ�����6���&t��K��&i��U��K��*GK��Ձ�.��,�p=�\Zz�����\\\"�r �e��r��{}oz2B�:>��ކs�q�do�\\\'��/�\n�,xޤYTP�ms ��1T�[���c���{�/_#��Od����y{�mEn�x[&M�L#;�e�QU�I��XqD��_�a��pI�+�EX=�	��@o���?��F>�H�N�#j���P�0wVgoz�7��фT2�Ql���_z���9�������qW^:�P[�u��l��g��&6�ƶ���K���u4W`�\\0���_$B�9�bl���TIߪfqݼ���~?�)��\n<�%�/���%��!Ek/ẗ�׏����S�67�b����R�M�c�(z�9����}�i��ɭ�hء9bP�pCz��������0gs����D�?-,�]���{�:L&K�G`RVؾ8�%0n������ g�Qn��F7x����5CB�\\0������2����ޭ�u�QHq�h�s��������$�`�x�Ŕ�^�q\\\\Q��I�F�\\\\���\\\"�Ag�g�o�v�ϒs�[��e���,��̧PT��2��\\0��|=��Pp������=qσ9��t���Z��mE_n���\\\'�p���8��oa=��i��/�a3�i��F6y¡�ݶ��Y&�v8G�0����Na>צj��+���I\\\"���i�\Z��hҢ�H��ꖳǢ�!o-��֢��f��ĬpI��������wL�;]��Q(&w�B�ڇS�������V�1�I��+r3��^��x����Z\\\"���Uj\\\'�å&]��2d��%�b�g��)\\0�@��8���\r���벜1~7O��YX_�tc;�E��$~�u��cS�1�B��Y�рH�\\\"�4�Y�amϠ�{�i����H�AJ&���vJ�>�$����0��h���/�I�[�\\0ݏi�>��{,gǞ�%���tչ8��1D�Y٠y�e�Ƨ�j:����������H��WmmiM\r���2��z \\0��G\ZCx����d�+`P���폆��2D���1�?�|I�quŸ��P1L#�]�*��\\\\�yHɡGcB�𬆐����Gu� �8��ѡ^}��GY��>lܫk��X��q9���t���t�{�wفjʜU�[��6����y�6i�T�rs�P��2�>\\\\�:�K:�͘�,[\r�޳��QJ���z����G��\\\'/��l<b���X���փx\Z���[�.׼$$���<0t��+�IŁ�d�D�F�N�Ƕ��[~��YܹQk��V,��Vٗ9�r�_rC��kou�x�z��@8��<�����gD�D%��������\\0��\r�ݠ	>u�� d�~�:�NU��0,RvfU<L%�p3��I[\Z=b������b��T~[v�CB4L���2��$������U�J�*�qx�yMU��H���*��꽦�\r����d�/��k���X;z���U��a��C�n����b\\08���=\n��|�[i��A^Q�U�ָn����pX�Q�-��wa�6�Z�_Ҁ��*0n%�l!?��j�˦��o����E47O�ҀZ�����e��)�uX�j��AC�|�Xq�Aa�^�֐ů[(\\016\\\'��z�w�t_{j�G���ҠN?CQ��9C��ʁ�6����%���lЋ���>0y�v���nm鼗�f��@J\Z�`��&���\\\"�GX>���Ө����4C�T�[:�-<����ն�_�]�Yأ^B){@z���B���U�-ΙB�j\\\\Z�������v������l)`�Ѽ�qa[�a�,�:���9mQX.�eQ�u,�aU��|e�����sU��Z�]4����.��T\r!�C.>��A��]ȱ2:!݂T��i����[\\0+��Qg��Oɮ��)i�����_��{�U�b�������CvƲ$�e��x��$I�2sݔ#�I�w�86-���|����G�A�>\r�zO>��1�+<?�5�S�T/�v{��5}E�Zf�cc�[�90MBr�p)�Ie����j��s�*Nn�/�i�Wx2�_d�����\rs�	��2}��g�)�FEÙO�S��J{�+�23���i�ȼ�Lg)P\ZL��Ϣ��lj��sь��5u������;�k�v��s��>���\Z���>nO�©�$ܐ��[blyvs��y,��DK�4���\\\"^Խ���]Dh*/�34��s�8Y�-־�/9�\\\"�?r�\\0����]\Z��U�4��5�\n66�y8;?���;>�7<�[k.9�Ra�2k	u�3(���H�/�ǒ7,]\\0����-.-ݞ��;�-Ua�m�%�c�ȡ���f�������<4��hY���1Y�L��97��ۦɎ�Kz��}? ����5\\\')�@�\\\"�W\\\\�7��܊���yg5#�� {*��V�߱�+U�p�������l/�B1P�zb��q�Ǹb�R�B׃�\Z[Ȉ�\r\\0�x���SY�BOv@��k���R=��r�̃:c:�	�W��y��|����w��\\\\��?]a�T4T��6�/�y���q;&��I�œ���J�a��Jz~�tB������=�6&@��EE�8�#Oʆ\\\\$�{�F�N�iXH������ ��N���<�V��8��8���Օ��Df����&�\\0���3V��o�,~uN[�����\rk���Q�1	4gk+$�+�z����gH{�����>��p���]�\r�KQ���O�8&�Q�ӥ�+.\\\"O,q���\\\'���LI	)M@n����<u�u�	u�7MrO�3\\\'ы���H�_�����&�9w�w@��<�����r�������?��X�\r����t]�5>=��>�D��k, :~�󬫪��xq�����)�޶�$7����bzU��Ù�w��+:��Jc\\\'i6\\\'ϷLݤ\\\"��׫$��̴�(�;t�����.�i��B��_�V�\\\'j;���$�_aƛ\\\'�[/B��n�5��@�6��е�U��w�8�;9�6���K�\\\'N�wI�\n�;����T�y�c�:[�b����u;U83y�O��\r�h<V-뛇1:��!�!S`-�\\\\��#^�Ԟ+���t�S����m��I�����i��ЈK�E��!r�T�����:5�~\\\"�o#u��~�Ua4/���~�I+����X~M��l.u(��!jk�u	�Q�HZ(\\\\=���q�_�/��X�t^�N_��PM�݄rx�V3ǰȚ��;faH#��u�WYN���H�@,��M���>�>�i�x�Τ���)���gh.�5��U�Hǁ�Όg��;[f�\Z��a�;��xآZ�D%	���	Z��0�\\\\Su���.K?��C��h�y|�qS�������P�kd0\\\"����������**��YgCj�d!2O]gM������+)1x;�R�t�?t�c��~O�A���^,uz��>�^�.��i좑Pӷ��ȴR�x� �6�Ch\\\'�ʣˤa�2�W�,���4Q7��a�o܉����㌁>�c�&��_��J$эA�K�}�}��:�P�\\\'�I�Ҙ?q��*����f9��sY:���%$�|-YWa��.�K�����0>�3=s&�>��?��0����]_|��P1�/�����#d���)I���9Ag�T���nQS7O�̿q�|F�!nRo�+\\\"p�ս�^8(\\0eQ���g� ����%�axv~��{L���o�c�<�y(\Z�F��}�[6���6�G�\r�~c��|�x��^n8�>�-�*D������⍶y]m�������g���:��Ǫy���������D}���Io���:ʆy^����m]���������o�����\nAWú��ğ�nc�[�d���O�a�aH��ȫ[,��-�$�K���e�Wq$L2{����<�-\n�!U�m��r�o�\\\'#iEC�Lo���.�!bʍ{d��`�>S�@�̡�(i�+ͦ�#��~�����V�ưg����n�Y�7�l{�5W�vq閪�+k��g�#�-���1K�(RB/D����VT���Åϻm\\\"H���F?!s�ө��T��z�-�7����l7��4�l[�Τ�Zps�1!͋��	gwgww{,���G�*�����q5�T\Z��X3~(	�������/`���w6AE\n:�9>���1\Z��b\\\"�����$;_mE]f���%���[pdzS�o��祿T�4�\\\\�#�`�S�w�>��t�O�.�#�ji���;��n�.l��d�8-��4#\\\"�40)I(S[jI�L���a�Zy����ݼ�5.���EY_�g��Z~M*hF�ܘꔃbړrS� ߪ�KbzJ������r���d{�Kve,G�����i�{��^[=�T��?�:��\\\"	j��?���;*��|��%�x7s��m�A���?/�����p�w�f��G����~�8��s�I��hL����\\0��K*�<fp�1�qgS��6pR(ĥG;�\Z�y����Gp@�>�LoT��ϋW�w��Q߫hR3#c������\ra��<v�$���v�݄L��ض�ڦ�ct�#�`bbMq���}���z�4�2J��M��z�j�R71��M<g�\\\"��)ҷq����]������I�p�-����\\\'ft�e��a��.�&V�E\Z0d�>G�b���[�Vҝ��=�CӕY�e�b��bL(�y��z�&��}D	)�Q���HI*\n\\\"RR����)%\\\"���lt7�0\ZF���7����<��߶���3��8�{H̖�g�f�GG%�@��g�v\Z������O��)1fݛ�ч1S�j&AfO*lzo�\\\"����71�nIы�Ֆ%z��aJ�Hw��*-�tɽ���p.<nJi��Ά���6S-�\\0� ���])g�u	{�SU�i�jt�)�1g�n��j_���FQ�N�QPUڐ��(��<�3��lb��3.����@Ak���\Z�qk�����˩��ɂ�����MRX����.��i�8���a����y~n\\\\�~�R�􉰝᤼%��N����y@��g�q��o�ǠD!M�8م�1��ͼ\\\\MԜẶOn�0\rx�6��\\\\��uNx5��t�D�ꨶB��C�F^�\rh-,\\\'L�QGM65CU���r��3��o�b2�y^���}�2�F��\rxß0�O�mV��@���A���D�D[���R���Bt��R�۝dP�Ȗ���4Z����Z�\r~.>��K���;U��S��ړ���q3�+��s��`/�-4n�]�?v\ZC,���i��<��8�3΢?��~��m�\\\'��G�gJ�\\\"m �~b�Z�m�cA�]��=��u�8$�)�a77���o\n���v\\0�x�I=WSٮ\\\\?\Z@�n!��v<���xVW	\Z�N~:3lP-�g8zٛ�N�Q��K��x�P���C4V�!7~�(�m\\\\D�x�Mrkƒ;Ő��9�b��p���|�n�3�QMv����2�Y�+��^��]��$����wo����l(�ZΑ~��K�-�Ÿ���taߍ�5[4�>��C� ��ք%�X����D\n������q�7�F��w�I$h��-�\ZAD�oJ�bQC��@X\\\"zb�T��7��b��ųv�JnȾw5��A>��G�V�:Y�o\rJ`���tg�v�x��~�_=��惛J_�R��6>��<���Ӄ�z+OP�jN0�!����#�v3�9%cD�d�y�����IZ����7ki��$��P�M�KD<��1y�J��t!��\r��;�V�\\\'�\r�9�T�0�o���F@�Q{l��m��ֽO�I}�o5������`U)�����S��4�\\0�/u2���U�\\\"X��\rPؽ�>�\\0�4.�O\n��*h��^l\rOwGh7���@��3���Ǖ2R�5��y%�`I���̘ �	\\\'���wp��\\\'��~�� �5;�wcZln�+8��ҽ�ߏ�c��+�sjW��������:D�{�Be�d�x�ʗ�k㿆N<W�\\\"���H���p�\rJ�Ŭ���uh©�P�S�YhN\r�D �ov1�,�&\r>�Ӝ�x�->�s[>\rv�o�jj�)98����LLr����Z���KK�����ٓ�%</W�ǜTg`S�n#�\\\"u��&��ſ���\n��\\\'Ӹ��\\0�Kb��P�tV�d�\\0�[?_�\\0�XBg�adER���{s�^.�NN=�8ki=�F�2n��nW������9�\rG��~�^�GG������7m��o�jx,g���|���h��L�!�B�0�s����T�z%r�hí�������D�.|¨��3Gc���i4�Ť�h`�������/je����P�(f�\\\\�\\\"	���s��<���ou����q`_��Kto	Wx��.��ʗ���황����͛񵡡�[��O@A�}�^Dwg�u��\\\\�8�w/��:�S����Ό��=b<\\\"��UkIN��Y5�j��[�ᛟ�)r��뿾\\\'�\Z���KPj�=�A.��C-.��ǩ>�=�ת��//հN��/���E[[R�S_M���u�7a\rY��z*�ǧm �\\\\_bW�S#.��� ��uҥT�1�C�#����e�D��W� �G�#�����T2��`��&)�>Q.�`d���qv�άÊ�$-�����{Q{ą��]�*���1�=��S^^v�	�o�K�ܤ?�.�M�����Jw��JG$�9�&�S6.�*��&t�� �����G	�Nnt\nR�Ҷ̳p7���&lo�}V~.T����{�������dE��0�!p���ZV(����4��ҸM�V8��\\\\/�o@O�\\\"��R�Q֥碰\rf��C��l�XHDp��S��44�\\\'���&-j��6M	E���N��i�7q\\\".��Z�\nX��ú��l��vMM�����kBapp�Ӭǘ���e�M�?x9А-I������S}{�q�cn\\0��$�����!7/�s,+����4b�����{ċ��G�.�nظ.7+��E�Ċ>�҉{��\Z@��N;: �1C��PJ{���N�1��(��ϑX���Ҩ&f��D���3n�;R�eG���x�)�E_g��g,�ޙ�hk�\n��%@쩟w	�\n�lZ��9=��za�M�����2�%�10�5X<�q~�5]Qa�GV]{���mjm�xQ�p�%�#����1	X�2��fo:g�K#��]����&��.����=�=;�m�?�Y~n������\r��嗘\\\'6�OxG�\\\"�f��Z[UUU�K\\\\�5�3�{���V&��T-_��rB�~#����\Z�\Z.P���[҉�|�9�ܢ!�6Z����c�J��Pǳ�<@q~�l��\r 5��c�<�ב����B�XQ��֊�8���B���=��Mm�����^�J����tG�hk1�ٳIЏ @�\Z]y}Q˵�ŀv��q������/JO��*�RI5̣��Ͷ�@&�v�IA\r����\r��^(�7��B����U�����zp���fA;Ӗ���uG%�	X����C�K���*��ş�}jX�\Z�`.G�!9݉��x��{�������]�\Z��#�B���Y�1o��\n�c)|�I^=�\nHÅ@o�xZ5��q�3=@��\\0�G�x0R�\Z\\\"05��uq\\0\Z�����\\\"z�z��zma��L��S��p��c�y&���B2\\\"`�cJ=�&L���I��,�����*�XY%X��y՗$�i���şI�t��V�y�_\\\"���x��Z�����Ϋ��X���\rA�e��*v�l�J���E�`S�z�<�E)���2DS���o��\\\\�>�2��#���p0No��̆k�����̋�\r���=�m����D��so@�}�f����爭�\\\\$C��OL�;V�\\\"��&͸F�o�Ax�����S�<�M�]��_�F�r7��]^�@�T`n����y]��i��s�>�H�� ��˄�$a�,�~zMx9X�:�6�v���$����D����?��ugFʎB8��4N\\\"Wㆯ��<�Fr}|�0�>_G�{n��]��M�&S���w�]���;�}aqwND�=��\Z�&?����u�e����O�h�N(��͟��ۥw5:o���=s��n�R[Өq����;%b��:�H�\\\'���h�\\\'�l�\n7I�j�lh�iy\r}T��y��b�3�\ZȜIcv2�����.���<XB��.�[���(�����t��C�x�����֍��׿��X��޴=������A8�*8���r��8Jzjbn6��G�2L�@]Ƶ�2�ֆ�!(wM�r^-ӏ��l=�YuU+?��1f��yᰏC�s+> ��i�Al~�k���Q���9������+l�����ٱD��\r3\\\"Yt�tQ�w\\\\E�3�hA�>��-\\\'$h}�&�\\0z>:��L�;�{�W��nķ҂F��ֺ7>2%�y��C��cL��k�u�5��y:h;���-C{&�e��k���fG^�x-7K�Ô��5+t�z������ߕ�;�-�Ѣn/&��^�}B\n.[���+�_ߚ,\\\'�^iLb,�S������������Q�L������\n���x�.���lq�92�m!�rH�%4/��L�H+�I7���eeٔ䭶�߄���N�G���zͭ�Ǣ�x6��\\\\��pk�w@)��?�	M��Ј��\Z�}��u־�Tx|Vy�����JbˣR��2Kd���}����� r|=:>>5>>�?+j�����B����\\\\^��\\\\i\\\"[�7��7��o����*eq3�n��ا�T������D��1L\\\"\r��+lݟ��Q*���?02��[Vv�7yVz���\r��9�W���6s�Y�����si�����-*�ع}�~�I�8��~т�f��8���񦺰������M@T�n����]ۭ�1�.7�/��dn�r��,||�[N˘6=�ۆs~K^�[�$-R��f8Qz�hY�r�E�7�w\\\'\\\"�p�oN��\\\"W�pK=���wr?\r�S���&��s����\\0����Xp��W��� �e���9�}�?�-�	b�O���F.w\\\\z�\Z��j����V	������e��^�^ض���ĝ#�I�%[\\\'���ı�57�*�p�z�1D^n�K�*0u�E+MD�7~Ie�?J4�U�������e_!���͟���InsSN�n��[{D�\\\"��zi8�K\\0��hL]P,�����\n\\\"�GWG����)���t�[�F�MQ�S�eI�I`5�un<�#Zp�&q�`�+��|H�K������>&��O�\r�#-��\\\"3~��<A,�s��GQ�G����tv�\n�q����,��Z����B�h���?�]�[�zg&�wM��Q��ǿ�ꥠe�u�~��R]ہ�j��O�����>�h	��l����\Z_T]��υ�0>xE��{�0�.�<Cmo��0�#�*?��7܍Z�����親��;���#$.�M_���X���^�jcQ�����Ys:��oI%��|#x�ˎ��C	�&�ACG���n�p�Ę�=�@J��&!�ő��l���y��9�_L�$��n$p� F:�{�޹bޞ��<tAe��4+��22B�w}�R�q���E1KY?��KI�l��$l,v�4ٌH�g�q�+�����B���͠9���QQ�=qFP��|0��lH^�d�C夺eWli�����q�M���ϲCB����]E@���,��^n�\n5z�]���Y�[���]�6���i*I6E�y7:v��\n.7c�?\r^$�X�j���2O���l���������o��D�l���.*���/�$3��Iy8�VI�.W{\\\"[@��Ӡ�},�M�W��w8	�E�|�&���7�Nkv�]f<=�*���)ع����l���W\\\"u]��G����={�f7�]�HZ=.����,�2����;��QvJ(��t쑝x�z(�z�}���w�\\\"�Q�& ഷ���^���ѽ���<����1����5�?�]�=Y�fuYSj^����6\Z�2����½�W�����}����C�-��{]�?��h��ҲeuxH\\\\V� $tJE5��S�d9Qm8}6^my�vxx(���*�.���6�(6�E���������;Y�<��%-�\\\"}6��})�XK��\Z�M<�@�f�y CEE:����4�5y�����W����̜�9Y�a��Y`>�1�Ʉ�x����r�f��xΓƂk*W��o<��eq8.D���g��l0B��}�ISS�Ύ0����Ô8Jr��e������ϟw�#CY�s 8��^��gY=�㍑t����w���F�ې��pcw��o�Rb����:��!�7:G�4�q���;�_�!y�j������̤@�=���囒����fư��P����N�>.��������rIb��B^��/)�?٩;NmE�j�۠h0η��w���V��=�\rZ@�}a�` m=S��Y���|������`����8	�̤���)�/���{�˵�Sf�e%��;�8�pP#��	0���܅nl_���l�^��}������￉hk,.b�[1*����AE���x��F܀@^̒�)LB�\rLo�%��FӟTvu����\\0���\\\'�i��wȒ<`O	���bx�ࡽ�J	�ҕt��[�]}��6�q����`����3ԕ�]&��z��=���\n0Q�������;sY{������������I݁{�tD֝��\r�ԅ5�X�|��g{�e	\\\'��x�ת��d71\\\\>է95CBŮ`��?���`r�M-����V�j%�m;��/��XMU�\re���f�2!45�� �}\nh��sVe���G�Ϯ[�.d�R�Ф�틊ykmb�0�����9ZQ�6�L���f1��oΫc�zo��s������z�	���S�A�f�>&�YYuw���8�g\\\\lf</ij%�N�ϟH3mh��?���#�[���f�\\\'�0e�G�:��Ω)��R�=`��MoL���E�)�GJz_�7za��_��1��=�[�z�\\\"�F�%i�A̻�prt�b@�	x�+����1�Ԛ8?ں�Đм8�5N���o�����k�rp��OM��=b�\\\\��i`UҘV��FZ�)���(��	��J_�.^9���&��?c�\Zp��wv)�v���Lci��ڌȧ��ɶ����}���v�{x)�X~J�:��>7�T����ssL���}ζ�O��[�Ȍ���@�|�{�V_]g�[4A�ëq���e�����\\\'��y^\\\"���+\\\"�M�4/�>h�6t��8H�|zZ�o��ݍ4��3J�c�s���浮^�<߮�^���m�fU�B�=Ԑ!�0����ֽ�pj�TH�o������n�gO�e�\\0�^���/��|	�\\\"�LM^�7�4��q�;0��qS�ɜk�m�)������?�Z�e��qk�GG��Ҹ��-������\\\\��ɗ~��\\\'��>�t�Rrf��A�?q�2_Jm����ժ������_�(��ߔUl���l{D��GN�#{��c,M�!�D�W���+�X�QH-�̝�}{{�p;vk�\\\'�]�/��+�N��R�/�v�T���4���F�!�����\r,�\n���Ěmʋ��zJ���Ge�����k^�װ~���dW�8�s��>�j\r��oE�>H@�����c�z��|�nog��0\ZV)���}\\\".iX5�5���;g�:���N!�VB����Q��u�9��R\\\\���\Z�/+��f���|��%�@9�\\\"��ءyx�GP9�+�5�y�����5��T��\\\'4��όہ�YCՕ�M��)g����`��O:�Z#���#�#ְ)�n��ɢT�$KD�iE���\r(`hYn�V�)؂�(�E���ةZI�o	?V&B�S#�K�+��{!:�qN\\0j-!�[	�<��l���dM\nVQ�X���\\\\y�ϽQ`x�#����^��*��yO��-���e.f2=t�������~�i\n�<�S���8G�2\\\"�2o2��nJ(�j�E�p� j�d��5p���Ȩ�)�}\r�o~T�Ia�r6%/oJ>� �#t_�K\\\'������IE9���Srޞ����]d��=�o\Z�ҫ��C�[��z{a��R������w{�یq��DHȷ,�S�ն�,�ᆧG[Hm��~�/\\0�\r��MS�������&߀���;[��1z��C� =\\\\?d2��%�+�bؖ�}]�Ho3}�=��.�)���Z����oT`��^�iY��\\\'z�W�%�+��M)݇����*\r�7�\n�4��uI�X�>K>-mVx\\\"�	YX�����h7Ost��,ќ���IWҫ��&���|H9ve7�T����L�Hn��Y�.X~�ѭ�%k:����7d���9�s%����K�˾���P�hєD���Y8�k+P��#<�~榙{�V�h�ZDԩ��>�&���!�v���^�gZ�����}6���H�4�8\r&{���N���-�ȒR3JpM��ˈ&PJ����n��[�(���� E��5?]����9l���&��ߢ� J{���6�6�,q(&�ߜ�:�-���~Ű�Y��	Lfp�\\\"��� �A���h�G�v�M����u�B:�(R�X�X�֎Y�>x;?�\Z���\\\\1�\\\'Ll*�e���te��b�|P��W��>�%��� \r���{��v�|n�qӦ^�pJv]�M \\\'\\\'�\\0(/��ϗ�В?�%zhj�n�p��rA�`����V��c��D�V��W>GeՒ���gͼ^s�-����]�;�U%UkU봭�/6��y������<]N�]�P�zj,��8	���]I��Ko\n������>������`wd,�]�5PA.���y����iQ�qv��}�9>���,�H��ᣑ,k9\\\\��[�e��H�e��D�M{H�d�-�+�~�2��lB�=B��y�2��	��F�,2W��922��!4�^u�!l�a�\\\"�j��^�*v	S[m����Ė�kpXB^�^�]4	5L��D9��]kU@��}o�(s䩧t#���]$&-�yre�5!m.�\\\\���;�mgܖ�%o���{pnT��K<��r=������R4C�F_\Ze��?��ߢ��d�կ�줠�?�,�:0T_!\r�\\0ǥ����O\\\'	�6�I\Z�ܛH��P5�����&�t�Y0���U��k\\\'[����|i�4�:�zP;5�AF�k�7E5�4pĦ��q�Sn�n@�gj]�������92sr������\\\\R;;�r���S�l�+��\Z���Ҡ���f���K�6�z�#%b��{�xp=Zmm�v��xKM�C1���j������=�םq��	2j�[Kn3��B��왽�9w,r6�k�qNEAf���g��;�%��V��o�X�\\\\���L-�#�4c�����g�P�S��>a�,z�\\\"��M^?UÓ4�y`��t�>��D���V��<�G�	�)����o�\\\'}�����4p���i�N�|��S�d-Һ>9�/�j2+�z[N�f��k�Cy���{\\\"@1q6ᚪ����[_LI�Ҿ��[�}����)���d=6�p�s�^2���3f^�t^cܫ�S!!���0�FP��S[�|��+�_���{��MG�X�Bpp{\nQ\Z\\\\K���a+K�7�ֲ���?L���v���5^�/�|���V=�^sk�,Ib��]QL��ٍ倓PV�t�E��*���l%|\nՙ�q�b-�C�I!.-6���x����ǩ��aʁ��\n���>����x��7��r���4-B,��R������{?��&�g��ʺ�~�8�ߏ�ُ}��źFk�hu�#/&g]_dFJyT?��!�fG�µ~To͜����>�����^���������%��귧�_L�L�d?>���6�#��\n}�b�>�0���~3e�Rq\\0:�����JZ�Uey��~v\\\'X\\\\2��.m��bN��f�kq]���}��B�A�k#�B����;�A����@�Ԓ�5�R�R�B�o�2��o���h�N������� 𪰃��\\\'�XXl2�p�����X`.�(�sS��b\\\"P�x�E�	�|�ᡶ��P�w�Ԍ�Tv\\\'�\\\"\n�}s�*��I�R�,��M�C۾Ą��w���J������Fێk���&D\\\\r�1�3?9<)��Y��W���+\\\"}�Hb�`����8MXo�\\\\��sN1 �̼���Zow��E��>�a�\\\'�Cqn[��(�DH��_�M�����a�e�l\n��@\\\"P�t�DɥU<�WE����hM�9p��u��WuS���n���YԐ��g���tB�[�B�\r�m�;�:0���(�R��������Q{���p�b��\\0s�V�Aq���0N����#����^�3�V�q���Gp����\\\\\\\\\\\\��Q�	��_W���#r��p\Z�)�>Q:��,sq����(�0���|�1��O#�F�:;R�lY��\\\\I��z�q��E�KJkT�MK���yI�L+1*3��=����[��j�W��Y��\\\"���o���u�A8�5%~��=��	;�z����bS���*�0W�<|�����WQH]�.�Fo޼IHH��\\0m�3���|zf���v9����#�eb����)h^�3Sȩ�ED\\0���1��V��]<�O��<;(����-1mGsr:��:�R�g�76��!�W*U����5�yuS���NwiȲݿ����]�ڱ+��ŝ��_\nj���H�U4t`?`��|��r9�:\\0YNP+���	8�*&S��L=�V��6P���0�7���k�ʎv��0�g7s�zB��%��>#W�>�i�lC	�{֔���.3�cYG��;|c]��vZ識94ğ���\n;=��ܶ�7Іlr/6�O����Yx�㑖Cƿ��6^���dF�,th�U���\\0��=�����q\ZA[�8�_��a�Yr�>�0�W[8�է<\\\\���F�bJûZ���{X+��zs,.���KJ������~�c�$ƶ�)G�v����΍���֗d����Ћк���ǂ>�J�&�z*��������2F���lD��GP�~^�)�\\\\��5��{a|4]6�V)�AF��]!ϵ��\\\'Q��c�vօ��f���;�Xv!Wq��\\\"�)��nD�FI��?l�|˾��k�-H�2Gc�O� ��s�P�Έ�U塬K�W�^#��~��T�_�@��}xxjOA��#���N ��Hb�/u\r�+�ؿxvǰ��mN�e����}�:�V�+\Ze��V�UD�V7_��]�p��2x��]r��Y��>�D+�g�@L\\\\�8&�	�����;d��?K��ş��4������.�~.����\\\"Ex	�ͰoyPVv�������b���-���,�*������2��r|��n�0���o.XՒ[�����_��O�S���[���J����&�HH�Y�I��Ʃe�����v�6���\\\\e���-��젮O�d�\Zcn\\\\�t�HJ1\nnD�z��C@\n=I��R��knW_�,�/�A�$F`�I�7�.��o �$X���Z�N�e1��g�]�~YTS�1J��$ʈ��V]�V���U�����n��f��U�ކ_Q8V\r��ҴT��I\\\".�?�������NM-F�l·�A9\\0�T�!芣���d_��%��p�np�e�头�Plܡ9G�|��mR0�˪��IgS���->V��Ofl)��	���ܫD��L��E����k�\\\\��)V8*M���]��k�㣩�s����n wCs����\\0�s/������[�*j��]������;�	a�)ծ�3.Nș�Sy\\\'����]x߸Mk�XS#K�f���ﮣ��c���ם��\\\\���;ة����R��s>s�#G5��!�P���i^�+n�SmSXݜ�u9��z�_Q��6MC>��#\n���e��@0�R-=�U˪�y��gh�l�O��_w��s\\\\z��鮡���.Q�~!D!N�4,��|��m�\\\"�],|�QI��1���;���ʴ��pp��b�bCz.��M��/���Z�[n���PHLW,�bW��7s���#YH����}�\\\\��B���}�Ph����i�۔�&%��F�I�:a��{!;pm�/����J���N�ʨ{��3x�<��+�a~����M�?+��K�y�s�?Lox����o�?Ҵ�B5�ѹ��\\0��{����R�=�c�r���kP�BX�i��Zڷ�Ѕ8n����L=�([R&�=c1��ƻ�OFh�B�{VXʰ��	Au�dNkw�q����s�:�|�@�\\\'�=�3��Zc�8!S2Ygz��a���tyU$B��`\r�\r>��h�i	P�询�#�\\\"R��{\Z��W��AGBПS?w���)��a��)-ғ5GN4X(JW�~у��Tap&���-������^.cgF��Ӟ[CCeO򊇪���&��[A����PW.$s#z]��4��;Ȋ.I��A^�X��#���&�Xl��#9��� ��P&,�:��!��K�@��s��G$\\\\�b��w�rMA={K��c��{�5n����@���(�ݒ�vl.t�S�\\0[=c�gf�$9r?�m̀ѭ����y�̡S�}�O��	ϿY�l���r%�\\\"�[j���.HK�<�G�_�W�o�wP�(����]Ԧ/��j�:J�DW��u(q��Ŀ���B[���\\\\�x�M;���Sb)EĚ{Jlb\\\'r����t���Ka�o������%��W����\\\'�f�ʧ$�w��#p4Ӳ����KFu�T��*��7��,Q���#P�0_�XK9^Aro���kGD�G�Y��q�a��{�3;%Zђ�wJr�}�+�0����8jr����<u�����Gy���+����W(Ρ\nq�i���N��Fņ�o�д��8Jy��1���׍�Gf�?<�G���=!�A�7�b�ٟB*��]B�T�l�l̤>^��΂\\\'i�P� \n�0��x���b��<Iw��>A�\r{�����s˭�P�܄~$�0�İʧVHK�ذ1a��Q�`����mw����\r�k�⫯�����jd��|@���A�LԌ����L�u�kA/�<W���M=!���g^G�]�e������5�?T��VY�^\\\'gnBB�lW����\\\'�Q*�8��#��ռ�<�u�q1�ׇ�lטX�P룚Zy��b���`���������K_\\\\[L_W�T����/\Z� ;�����\\\\�ˈ*B�9��g&oo��{�V\\\"ⷵH��m������+��r$�z�Ǌ|:9q����`e4��Y3(�5�1�����!=�ǽ�4S�9\r:Vˈ�|��k\nZxK�@ t�6^s���ho<sp��\re^C������D�US�&-��\n�ws��+���=)�p��x�}l�h�>l��� ߳	eƜ����$��*AZ�6�O��5�Q�AI�s�J.��������>%AL2(����8�k)�ѹu��n�]6[��f�j>��7�)8`��ox�J�6\\\"i_#[��K�)�؏\r]�Ё�u�����kNs�%v�y��v�Bh�vW\\\'��=��G���&�3O`�ڟ�N31n����N�]N=��=E�\\\\\\\"���ux�1;��*��	��>�١������(����P�?�����w�q@�������L�8��%����`{����2|��\\0}�$~T99�3��Ĥ��_p�<�����ikKH����d��~��<}[����ď��&����B�oaRɗ\ZX����u�8��E]�!]4(B�>F,�\ZL�f�ɚ��w~\r���Y�2�����\\\'6���ڠ�\\\'�8Ӎ ��%�������2�F;��8T-V\\\'�7��7:�\n7!ߊ{�RZ���c[� �\Z	~O2d�o�FN\n��\\0=9p����#ď�e��\ZΤ�����$�a�t%������΃�!D2��x\\\\3��\\\\A\\\\_��5�]wP����x�$���:R��V�0jqS��p�\\\'��İ���Q����r�4Ѭ $��c�2�1* �8��r.�n���\\0X(������u/�~A�Gox�7xgBQ�ZU�H��]����\\\\�tZ�`r�K��8\\\\�uwq<�u�<���	vj�HP�{1n��Xd	)�<]E�ؐ�&�[i.��h!�Mƃqw�����MM�����\n�#+�B9S�F�P�9�x���n������b(NP;Z4!��gm�-��~�.!���\\\\�@���+CHy͊���\Z����F�el����u�\rK�*Ʃ4γ9�SB��kc0���S��`��~��ڣ{@O28�9�z�5Hy��.d��S\Z/�	ڼ��b���Xq0�*a#HfQ�}�GQ��N�7��3����������K;Q]q�<+$Z�K�b��WK�-��\\\'b��n�o��ek���5:ۋ]�����|���,���D����̋�΢?��J+�	��X?���RI8Sw\n´��Ө\r��\rT.n�8tJ��0�P~F�7s�I�Z�&A����c�r�1=>��y����-)������D\nkHXvo���@�T��eL��ln%P^�7���_\\\"t��8�X��yp�Q�2\ZZ�E&�۰h����d\\\'EI�b|�h#.�zŒ��9+�a�T���Q3}f��C{�)8:{{��,��L��L��W�ײ�\\\\.��!t]\\\\��S�n�.�5��k6d��0%<G�l����[G��y;QE,��P��V� dHLZu�\\\"�T��xxڏ(�\\\"Z�ȉ�I�4������v�l�����gKm�����Fo_q�C�1[v��V�*vRk%n �$���߳aο�ZQ\\\'u3WU�\\\'ٹ�y�d]l��M;o|s����鼊\nGi���Iԛ�-����������p�VAA���������uQQ�3��s�������N՗_WIW�Q\\\\U�����0�O\\\"P�ZG��箧����>��8��us��N�ԅ\\\';�}����R֯��/Z�%����l�q\\\"0��U��_�&�:b���,�@���\rz��:YJ�Xf������=@�]e+$�Dl�MI�(�T?/�oq�FUw�g=������q�\Z��-g#��j+��Ӊ���N�%�,��H����$-j�u�a�#U��MGjg�:���9�����V9.ʀ����H���ש±�=u�\r� �+��W,JɊ/k\\\"߸��Ǿ�˽�X��M�Ú	6}Vm����7�[v�+�!F��J��(M����Wt��k���C�%�oo|���ͨfI�w\\\'0X��]�Sn�^�ͬ��?j��t��Bw !8�6�d��h�I��y�6�\Z�w�o)J�n�.ϐ.�������A��_� V.~�ao/Y&���=`\\\'m���9Q}��r]��3��%�2?4t>�d�����?]�;��D�o{�����k�Ak{����գ֩��WN���ws�ZB���oOs���1�S\Z�����4\Z ��o�p�\\\\�h�Uh}&�����ُ8���݆zn��� V3�,p�����2\Z�� ����=��Sb3+��}�6zS��Y\\\'&�S$b���21�fr��<1�M+�Kk�N\\\\M�@`u��p��v>o˼��9?����&Ӑ;�>��~�4=��qA����0�D��k�L��V\\\\��*)M>����9nQ�\n��GɂI�XY�yX�{r\\\"��m�0c��Z�\Z\r�d�δI�i�ɟ�V�꟮S��X�LC�AN4;7�vc*���ye;�K\Z���`��gߙĄ�V����\n�mሶ����7*Wg[d2�����k|/c�c�Zs��h�ʌ�����ݍڔ	��N���Njcd��T����O�����eJ�Y���)�d���@:��!	�Շ-�N�\\\'`���{�4rJ���w2(�6o�{�ȫ ��Q-E�&�s$���%c���@��z�V��r�S��nHa4p�&�T_0s�ފ�8��,\\0i�@ڽQP��bq�Ml�Ǥ��nI�!u�	� �$���1U�n��m_Ga�u��.=�m9�b��0a�g9\\\\O�wV1�y@�wM�\\0,5:W�T;�8Ҁ��n�<_������mܝ��H^��9�Ϣ����n��I� <�e����̣g)\\\\�����0�TO6�}�Nn�����\\\'�ԯ���zդk�a�Ɲm�\\\"���tBC�S$�N��ѭr�jy\Z\r����x��`U����។-�����#�\\\"�-i�n�\nޱ��<��>���8�U咷\ZU�{x]�����6�O�i���)�WK�P���c�U�(���<o�r����\\\"��I�&�^w;��x�gUo�x\\\'���<p�uV�,p$G��塯�&�V�>=���&Ƒh�5�bΓ�-d�\\\'��,�U��Q�w8\ZX(�H�r��}�Q��^�8ɼ#(_w�WUs���\\\'���d�	��b���9�q6{B�bWֆ��1lj��n�Y��f�aW� ˃���O�����R��e��z��=\nA��P~ŵ��5Glo���e�<F8VԄ���{cw�!���+��5�fLTݒ�p$�}q2ԋ&}���N�DQ#���y��sjV�?q�%h!�J:EӦ@��Q�z.^�2�)\\\"��(�����Y!L��g�L��T}f�/��&Rj�W�]&�,ٵ��<����{Oh����ҤAZj#xD�*5���.7�����\Z���m{���~\\\\X_ʏ����Oy����Y7�� �\Z⍫&}3��j-Y,�J���˭�lD�Y8Ā3�s�=�����v����z����Tp���x��5c\Z�wJK��l_����Ӷ���ʇz���l�H����qF�m!g�2�#~���m׽j�Hq&�Zl>����3У������r�\\\\��	�O.r\n�c��n1����ri�>\\0��Rv7�t�w�\\\\�Cev��F0���I���&��U�)����\r��o�?@񙓇��x�]���$�#�2�]�$W�~����j�Qw��2�G.G�\Z�#D��RElK-�|�+�H�?4�{�V�\\\"�n�&�p��F�c�5t��B����\\0��\n�ǐ[IZ�� Թ���GF<���ǪB��cy%C�\\\"�w�[A<7���������\\\"D���À�آ�5ކ��Y��\\\"3�{�AץPg��qO����t6󽜪N0�g⮪�n���搪�(�	{���;��f�FM�\r���U�t�Q�����\\0\\0�X�\\\\䊴`��~��+N�������BKڡ��X����A�H�̼����{4��~�X۰o 8Kg\\\"�MEIZxx�u�7�Ҥ&:S~���n����P�V}!m��%�yF[j��+���\\\"��W0T����m��ަl\Zܮ.�h�_�\\\'iTWc�@��\r�ek�=�W*?������;	��u�⭁	���1��}vFb`V���kF7�:�76��po�0\\\'���:1}��|�Uh\\\"�����b{C�J���&v�&�m��[�R.�G!q��T�I6`�/߻9��:aV&\\\\�a���ݦv�:-_T��y��-��H�и�7��E���aD���Č��S\\\\���puVT�2��ˌ�е��J�>�����\ZDX�)�	}���ʰ���mJi�C��nPi������n	ABbF�;�k�f�DBJj��}��z�_��f��{�u��^��}>�\\\'�������e|��e:��������<��O~����$����_�%¯ރ������.@�ྮ�*n�����\\\'�~��Z���<�]�u������\\0�Ula�B�?4�ɂ����W�����&46\\\"ulc�d�����]�}}7λZQE���\\\\���$[w�߸M^	Ԡh���#��_=����NN������C�ۡ�3��*�ũ��k?��y��,.�_�4�:+����蹙�]�����-�O��=�ɏF�1�%,>*�v���Þp�|�L_��(���\\\\}�Ahd�*G���d�O�=v�f�5cM��py��+ii�@B���Aà_\\\\$敎[\ZS���N-F忡��f�P;�H�\\06�X�&9gb��S�I&����1�f��Z�_)E�)6��	����Th�-��x��>�H�f\r.�X�X8JK�ʵ�1O�=��q��n�2b&8`\r�CB��N�Y�]��}����89zCa��!�Р�uN�Y	d�[帚�Q+tz�d�J�bM�ƎTM�h|���{@��`$��u�ך9���=�̫���O���E���Ӝ�tL2�_��.�_.�����{��{����*����)	�&���F��E�Ԋ�.9	�;�i�E����s�G�۶�o>�-�� �O�X|�>��ׯ%�}�����z@9����FJ�e��ҡ�����T$c�����=������J�T�L�Mk�o��P�9\n�{�T�u���]�A:�+��7��1�ӷ��h8�	��q;�k�\\\'�E��5F\r+lB<�6(;,/A&��\nO���g��f�5�\\\"u>��8X��Z(j���[m�	!M�\\0Ɵ��/���~#�@��)G$�̲�|�^�A�c�.�5��6�z~�]���\\\'��>%V�WW�c	���m�9�-	�d�0�T�\Z������ZP]�~�,f<!��-��͙+~�1ekD\\\"��4	f���/�h�?�\\0]NM}����IPV�WNX���܌��ҶL�:d�RW\Z�Y=��=��y�ᫎ`�W_x�d(��ky�W4!J�������8��ݧ�:�GS>�J	���.Yn!e��Lt\rk�\\\\\\0��z}���\Z���\Zx�5�?��[�E���M�Cn(�>�Gjr�̑���Ud��J�@#�\\0��H��;�?�\\\'\\0g{�\rCV�$�|��k�x\\\'ᡝ\\\",�����^{��9]�� �{cu��8cM4��/sh�u#���b<J��[�#�hu}�(\\\'¾t1g<��\\\\����<�ki|e�Ƕ��sM���Bh���,����k}�I*y5��1�	J���QH�w��+W��\r��V�M�/�1�W���.Y���\\0�6ފpQ�n��æI�U�̋D�j�k/o�42��a�`!�c�eh�\\0��]��N�m[�!l\\\"�1B�R]4��Fثz	zЪ��k�oGJ˕�Oxޟ�dA�5F�C��/�����Gj/�\r\n���S��M�;-��\ZO+�*��r�%���W$$1�?��ކL+�.P��t�B�X\r<j*\\\"-.��\n�����эL$!�(�\\0�Ks@�Bn�5�]�v9���H���-�/�J���s2֐X�+��Z��-������o&R��ֽ��N!��&\\\\���[���0Q�E\\\"J��gl��$�V�\Z�8�0|J����G���~�f���)�`�oJ��>�\\\\�Ox��S���\n��-+�/��.���:�f��N�y�D���{ϳ�F\Z9g��\\\"��zl-���\\\"���^<B�����\\0��-fj���福a����Vn�bw%Ї	�ݴ��fF��ݷ|��s��\\\\�!P��<(�n� �\n�=�8�@ΫP�T���U��m����i,b��LA�e�#\Z����Z���>�SOYbb\\\"��)�AM`@��H�D@0��k�����T�v���[�c$�\\\"�һ�4.~�ڎ�0A�0����ԿMt�����g`���/4QV/��Z���}j	W���v��J����A��}w>Q�.Gۏ�:��Y�R���\r����~-ۥ�]���{������@�H�ld��y�z\\\\���͵�=,��gss��yw!�$T���\rF%f�͆�ێ�+��CZ�iCbh�Jn����o�*pӅ������|�#Ͼ����7��^�|zB�ʈy\\\\\n?�,&i��pwx�W@ݴ�\\\\a���VE�7��仛*�J]��s��^����[E ���v��5Qӣ\\\\�jj2w~���ϼ|B\\\'�:f�JH�P�c|�+��l�:�{��KF�C�Q�2��4U��V=_�T����˭e\Zb>�T��|��@o�A\Z��C��rI���\Z�3�������5o��&�\Zɯ�UH\\\\t�4{�Z>/���Dj�˭�Jߚ���n�vo�=�=%\\0�<S7�}�w��B�I%2x\n�=�����|�������8l�<�Uݟ�s�AV]a!G>UY�����l\\0���ڱ���Pi\\\'ʨ.Y�+��C`�jMz�Z-�K��AY\\0�%�E�w�!��gN`����I�����ę�K�_`����/�U�D_�-�M?��.\Z,v^]S7\\0�B��!\\\"	�\Z=����=�7����5��LE�5v�3V̨o�°Tʈj�����x޼��|�9���F�֣j��J��\\\'��p���i�f�j)F��C`0�jJ�`�8Y.�H���\\\'\\\"C�=[x&�\\\"�GH��+y\n!���%@~�\ZŦS9����+�,�_���t����@�\\\\��G�:�U�e\\\'�2����c�{��-���W�A�T����⶷��x�\\\'�z��[�N�������E`d/�q~� L�5�8W���z��#(+B��k����g��?�Eu?�<�˕�DD�St#ߒ�w+;�[k�b�1ʇ�NIQ�ҫD�դD�mR����Ƴ>�b�����Π�:Z@�Y�c�JD��\\0ϏR�\Z�q���ʪ\\\"ء�/��A]��&5vG��2Q��7(҄�=�+�������L��Z��\\0N���OՑ��<+P�`g�l_�͏3��fXT�m:2,�n9��p�1\n�$�����e_���ۖ�#��IT��@���>N����¡�A�������Z�n�����\nE��8��}�P�і4%�a�2os���Ty�K��鸢�A:T���Fq3���ꂇ�~R�r�}�,�=����.>�9�ҡ0i*.�i��ĭhF�(�I�����l������>�ކ�Qsl��N6�F�\\\"�E�Al�u�����I,����-����SЃ�����X�N3���h��g[���RQD-�����O��Z7�͊���wvN<\\\"\\\'��s��y��~�J0f��C����SWs� *�S���K���v�:>���G�x�<H	C?��5���s��\\\\}�X���Ho�K]����+r��Lj����f�$\r�\r�lG�	�0DG�n�����?9�*�����mYuT���3if�r*{/���d�3YC�1(�� �Bj�u�r��D��R�N�j�LF\nQ���,Z�\n&��hV:t���ҶqK\n�YP_��8���{R�@�ӽ���_��H�l�?m:E�\\\\M�?������ #9�����_G�RI��K흊�4��}~��(�jX)����%���]�w�m��U+x��]}n5ܝ��a;���& �~0L����S7Q�X^H�ʐ����.�^a<���Vn����֤Dm������b�:X�t�D�iYh��+��˩�*Y�.Wʟ���.<vٔ�Ŏ���Y�>\\\'y�j��㨈8h�}\r�Q� B�:.��Ԩ�D���Md=��wOǽu�����ɤt�\ZNC�I\\\"X>�r�\\\'l!�{�X�f�:5?��l(���d���K��i�����\ngW�.z�����C�(a.���Im���y\\\\S��+5��������5R��U���d\\\'\\\"���̺�Q	~xm0ɉc�o���`�P�ľ��B�<�S�}9é�����\r��Ć���\\0x�0p_SJ���E9>�G��������w�m���\\\'��ߢ� |\\0��#�~��@~�*�`~}zCN���p�ko�,M ���iVa�D(��E����C�/�^�_>\\\'%��R���V�>К���U��^����J.�\n3�)��J�G)~U�-C�r\n���I�+��1�ޱ�����Y5�J��fR�T�zK�P4A�˦̷��J]\r��A����\Z\\\\��|�:sðz�$�$�/�{b�W���~9���\\\\��?Xe��Ɩ<�)��S�Q<Jz����@^��ݳ���ӈz�7.�^>����zK�%�߃��� (�NXȕ(Զ�4r�i�٥�\n4�wEP*�-��Z��v3�I�����2FJ�5g��(�fDlJ7]*[�}�Z?���n�D�G_�֥]�������@���|_U����Ԋ*4�~�;Z�����Q�c�ۨ��*�2޵�Rm��\Zѯ5�dںy�X�`k����Z��b�Dd��6x)��m]YV�\Z[���d`祝�y7�.m���eEhl�o=��F6�����|q������/�o�=\Z�q�7OmG�\rH{�L��J�9ٝ���	ꁁB+�Q��梍n���^����9\\\'�|�5/��jLJ��q$�e�4��0��́��I�L�f1�7n����q|��U9�2�j<7r#������,��+�	��ʾ݂�5�fv��0/�_59�\\0uR8u���j͜\\\\]/�9�5��4��J��vޮ\\\'k���s��B�w\\\\���;M�7�9h���|�R���G���S\\\\Y��߻`���}\\0wX�3+D���2?j���=�@�Y�f\\0�����}g�V��v�����Q\\\\�c>�k�9�;J��ni_6�-<f�b��qw�z�K��tj�f,xp�w�b�b?q��:ˏ~�+�T���C~��5X�������!5�Gn�g�`���6)jQ_�#�����*�)�@�zc��E�?�߀e�_��\\0��X� �A:����������X���\\\'�w��L�-sQ��v?��?��\Z߈;�/]�Gh��3U���c���Mg]�?�;�����֛��^��H���p��5�\\\"�89-�q|:���sK\n��.<�ٴ�\\\\i����B�^��36������F/h�z�5���\\0i������m\Z��}!2C�)�qL�r����s���b���Es�	�~�&߆-�:i������u���}�︚��:q�K�3�s����\\\"&m�r��^쟻�н��o�=c�9������׶�MO@EK�\\\'?�?�=�\Z4����8��Y��@�G����������Ag��5���l����^��惎H�8��p�^U!}��+�m�C��L���O�̰��@ob���B>�y>%ڃ�\\0�:^�\\\\�䋎z��\Z�mZr;h\\\'�<��Z��ԧ����qqg��o�t�x��:`o&y)\\\\�.��{��G�?����w�*��������1`�����d? �Lܻ*��[l���D�ۼd��g䵏<���_��~����ڨpq�&.W\\\'�����Y~��Zjj����[���V$��,C������BřA�)z�N��%o�@Gʮ#�O&�\n�FK�����uAkɮtK;]��3xI��N�>jj���Q�e���D�S����\\\"N�=#�^�³���ږ|�VW�y·I\nT�C��,�Eu�C���.K�3��ײ�Tz���D\\\\�#m�s�w��*�<<���3x�s�����{h`���}�PĨ�]5�%_xֽ&���>Q�YK\\\'V�C�_��Z&+�2~�9�W462m>9��MجR�T\n�4��#��`#Q�ŗ�D��Ʀ����\\\\�vX�f�,\rɬo}���˔8y�g������|=�#�2:�X��.5ݞ��H���>�*n��]~��ۄ���q�d4�i�F����Z�i\\\"D����W4do���_���b��2:�2j���0�8�v��PJ!���i�l�ɐ7� ������-Ńi��	�p��y�ɅBɮ�mq�q\nΔ0�)�蕸�i�vb\\\'GQ�Xv�gOt%e^�R���pZ��-�+i��\r�.�JS�=SoC,ޙ���Q1����Q��aU�r�?�+n;�C�L�����ɶ��:��.�5�7��1��l�g�lG$T�R���K�����qe*�ۑ�oFW9%\n6+x#?j���Vf�~a�q3��k��8����1Q�UYE�4�K��S��5%5�z.���@�yH.-83�m��E���G�ȋ�A�(m�Tt2~��Zu\ni2Sx\\\\.�MQ���HJ��z�2�+�xn\\\\��2�)�CH��?c�\r�QM�q����-��M���Q,U�L��@����I$G�d&N��Ȧ�DR����w�)��c�i�+�������c�\\\'�pb-���^���3<Xuߑ�Tw���Q^(b�z[&�F�����Z�����:�Ojbز��qo0:����	y�\r������$ASp�\r:�:��������Q�H��_��m�)���&�2�t�#s$�O���w�`\n��5,R���dgo	�(�������YP��_�uJ�֔����dɄҔO32��y�^���*[�:�1?T��*4Ԍ��A������	aK�94��D�N�;�rgΦ	�������nQ�E���hC��c2X�k��q?>2\\\\\\\\�HH\\\'�ݴ��ppx������>2���c[Y���8$�X^Y�a�H\Z����ǚ����>b6��B���2�_���i|��_L�cVE�u�UMB.�qL�n�n��[�F���:�\\\"1�_X·��Ě�NL�z���8/��Þ���+=������;,﬊\Z��<`?�.�:�lc�~�{����/�J���s�\r�yWΛ��킪�z��(��7h`�����w�Y#HI��E�X�m���������h�QS����5M��0�}_�7+G���K\\\\�x��w=T����￲<�*�:SL�|���z�6�x�Ud��a7�$�?[��>�騨r~�c�W\\\'_�nV�!z�kM��\\0�i�8]��G��w�Ԏ\ZM$�Z�*�7m�^sL�*nV.d2�z�ntJ�J���E�E9�Uw�!�`�\\\'O�x{zzzy���E@0P�@Ggx �]�\Z���t�7��34q�k��-�Zc��#�Ss.�x���td(oiu�}���t�2�Z_��#ÞF�ɖ��9��������u��7<�>��W���?l#}=aW���,�������x^EڣP�����&���#�g��������\\\\Ǘ/�n���d�e?1)��}U���;z;��N�v(���&4���@�j����*zjz����GA0��B�b6QU3I�%Fu@�{�����]���:���!���3���z�ǅc�w#{瞖 J=��f��f\n<ҏ}�噙�����ˎ�\\0��.�bHrr\\0��/�\\\'16g��w�n3��c�\r��9����ĭ��_���]5օ���c�b�����Y�j��\\\\\\\"�&���>�8��U�l�bÞ�+���Y߼�ϳx�n𮵂=z���hll���[	���r�kqoE1z�Zn>S��m7�G�Sr�M>�����?��ӲM�vĒ�_^f]��O�\\\"�;/G���.�oo��_�g��|�3�K����S�������� ���ݕ1#�I��AP����������S���U�%�j�)��q��\\\\�@��ޟ�<ꉁ�ol\n7��RP�yy>)����^��IK\ZmYM6]����O�oQp�γ�Ʌ��|�ȿ�5�/&��-����i�������yיD���ė���w��\\\"�\\\"	�\\\\��N���Uv�<\\\\���Z�г&��F���,;��lwG��6�;(��?����g\Z��k�9�2k	�{7ͼ	�B&|�{���.$$��;�؀xz�_���_nK����_!\\\"m���⩸�bf��kӕ����5�2�}�t3�D���ܝ�YA==��l��m�*���\rr�+H�_���<��Z��jq���j���L������z�x�Z��}�	��J\\\"���p�_� A��s3�@��U��uh�n�-ը5����g8�c�`,y<�v�/�r>�r��	�婺�����]z�\\\\�(�j��JH%��pl���y\Z��M�J��g���|��2TZ,� \r��p�GI����\reP���~v�\\\",���c��x���2]�?�e0~���!������؃�=Q\n������W*�c\r_\\\\+g?��\\\'	��B7��uno���]i�Vp�+���^�{�㟞+?�\\\'�\Z��]��Y�v]Y��U7����z�l)�0O�J����\\\'TV)9�I��y�	�MR�_�X�h�	XJ	��O���<t�u��j����k��;��5��89w�of ��+�J��!+�ޫ2��<7�����7#���x=����A��4T���Y��9��x��-����8s�h��B�g1�\n���U6��^������m��iࠀ�eۇ�gF]�܂ڷh�g�ɰ��/����	y�Z?��KT1��\\0� >T��`CVݓmxS����h�ͺ��e�y�m>���đ$��@��:ް��t�o2Oì�����7�\\0�\\\\��؀�c��{ݮ���8n�j��f��2�[v�˟�\\\'K?:�6�9�0�\\\\o��\\\"zp��e�H�XK	I��\\0|(w>���Y���S����X�C	�i�&I�N�*[<�����eF�s�������|�y��qk����w�}W�;[0�]~lt�`8�N8��)�]���a���ET]�q�=�J�����y���*` ����m��D�񪽩A�f�/#\Z.����YH5u��ӟ_�7���_P����[��ۛ����s(�j��fw�;�j�(�+&GT�H��&�M^�S�mw�j\n�F�w��6~6�.���L�)$��y*�4�|��q�7��6��;o4x��Y͂��T�6ɥ8��]�$�K��}��(�/;K�F��9��@�����_�	l��,���g�˞��}+א�?.��k�¹��8HR��~��-MfYPQ��*8�J=���xήʜ��5�\r�,�y�=d��0�g8{�PSln�[6�+�h�$�Wg�a|��Ew�9\\\\����\\0�i���1�/��W�\\\'����\Z�S��II��5��42�����6�-:7\\\'귗�>W���B��%dMw��>�m�oJ�L�*-P\r�}\naFױ/���8��\\0k��D��\\0+\r\r�^��9��ы�:����$UB���*��ZC�z�hpBI_\\\"l���>%P�����Qp��I߬e�^m�J�	/�t�Y���M�m}����a�D�\Z|�N�_6,:������6���@\\\'F��\r�~��z\\\"$(8=;;��\\\"�����yz�X|A���shh��I\\\"k�����#���z<�\\\'��Go�V~Z�4�ۄ�=yi�KY\r�M�{,�;� o	m��Ȳ;�=]�jAļ��Ʀ�ٯ޻1����`�ϸ3��T�	�;z{P�	CKִ�G��u�7)�W\\\'�L|��d3G?4�$y���L�I;1\rUպs���rVN�h$v�i��愼�m�H�q)�f�U\n�v��\\\\OB�x�cù�B\\02�5��S>A{���-;���UWu�׻�o�=�^��z��Y�>\r�/�V��qh�%:7T��\\\"�G�%�VW�J���s\r%��.�IP떢�yu���Z6n�C-��?�M岥��~-h�\\0��0���H��-܉�Y�椇�Cn������o�W����B��S�\Z�\Z�S{��lK�;���& hȖ~�Z�$������mp\\\'p���Dppt\\02�%���R�҇f�c��pZ��W���Z��\\\'\Z���V���� �6�9�#<F��KD6)g%���)63\\0ރ=��i\n\\\\h�L7��o��1PZtmzc�݌�&t��O�˖�Y�K0)��ɿ���g<�k���Қ�c?@�g�;a�_���J\\\'m�����wf~����~v@G�|tI��^�N��^؜��A�i�2���:4�Ua�t����l��:K�OM;�_X��?���x�\\0-��o�^�b��g6H:4`��T�f$..6�s`���J��)P�Wm���c�-��@�交��bZ�>��@q���L�Q��~��J%-��bh��T�s-�r\nr���ݑ}���b�����o_%R�D����㎠�H��,\Z��wP\\\\\\0d3����!���s|@��t�i�vi�շ�����\\0Q`�Rʪ�����m��	$\r�ϒ�_V�	�&��o��B��:�d��7:��~����n;n���;/�e��Q/�F��^���_����{.�fj�\\\"��N���\\0���3я�\n{�����\\\\�m&��D}�O�/=�Kt����.(�<q��n�#���e=�\\0����d<�K�:�^^[�-qe��������Kܕ7�ŐS����y��\n�_�GP\\\"����H�A��+��\Zq$��:��zT��rd��}��,;��Q�i0?V �7�������L(\Z� ��~.����Dޘ��<$��Mh�l}%�%���Y̑�E²Y�\\0j䌍�g��!��b�N2@p�x�K\r�AK�i�ȱ]i���P�1X�@BI�<}𦨸��c0��<=�3v�x*\\\'�Q��8p_	4ȗ[iK�p�5�{�����1��{(ۖ:E	���[����&�%��nj���F\nK�a�Odxɚ}���˪�E�JQ��@t+�S2->�T*�?	��=3�R��V���8HT���k:�Fu�`�ET�Q<��!��W1竭eט��\n�+R0�\\\\Yi�	��8�P�\\\\kb���8�����N��}��^F�gl��\\\'�h(Y��׹�0*&��M�kV�ÿ���x,p�؅c;`V9�%N�TWe�%�jK�s���`?#^�;���\\01�wP\\\\+�.�ysyg�����}�R�A��t<�j�,1�V�����?E�>��\n�P�������14�ଫ��٨��X6��m�\ZLK��z��sj���D\\\\6#,V�5��ml9� �!@i�ǰ\\\'��}�\n�B�\\0�����I�m-.S�\n���V9�8��>z �x��g1AVt��	]�}kD�y�9`�P\rӚ\rg��F�Ov�XJ�&\\\\�o΁jK�-���gt�0�F�}��B�8���.h/GP�v����Qya��������*\Z�1�!��x�}ʡaq�~+\\0�Oqwv�w|������T¯�3燱�JSF�|7+��P�k�F�&k�5=tɘ���џ��8;j	<����,��Y��oԷ��Z2��~	�����w��mE͛�T�?��P[���ޱ�*Vdn\\\\O���)�`+���\\0֐��|�M.�W�������&V�W��&��֗�C	�����oЀ�\\0�����.Vzݾm�OK;u�����ϮU�ׇ��O�.nu��W�ǌ�Y��$��	t/�(��h�>Y	jzM�x�|�C���9Tq��a0\r\Z��ݔ(�>�~���5�������ΐ�1)�WHh�[d7���e�[&FD��1ؙ���>�/y�+�Z\\0����!\\\"���S��)�֘[J}Qn]��S��;�����f��%e�$����gA;�6��0�V�x��e�U8������2���T5.o�YV��1��*���@;7��+�&�_�o�0z`V�HX�_��-�`-�8v��l\n��(�sm���q�j���1����Z����r+A\Z�?�&���r٢��pdlw�{�dF�d�Y���Կ�R=}\\\'����ꫂ�TG՗%��?��=��f�k<�Q�[M�p\Z;����?���%�\rh_\Z�;\r����\\0�+]�E�= ���� Q�2g$�{�:}�#O�w���lNk�w��%����v�eHF�*��m![����%��6j�u��re$����޿�%ňh�h�\\\';�)�q�ߒ��q��iM8����J�n��4ϰ1�d����\r	.^א�����!�;ޔ!��Oz�#���#&b�˅�K2/a�U��$�`p�����Z�1,�E�߉Y[�H��T�d��|C@�#�@M�	Ϸ黴��3j���p\\\"�D�%���:K֪���H�޺�ٍ��+v�4�D-Av{�gR~��g	�\\0ȳj^�S/Q�9�����+�1B��������\\\'�w�RPPPʡ��1��w�b�w���ε���]�fR3<�&H��Ku�h�cL:,J��}��=Z�[pk��tU��	�����h�N����\\07��][���d�s�p���P�}�Z�xw��0I7hR�v*z?x����5�ٷo)�i�/��*dwxT��m��>�,w�(���OO�XX�H�e`�DF��*{b j�AQ����Lأ�\\\'H�2n��gN��\\\'�m����B��n��#�W\\0�3--J/�(j��}��CK��OA��V�0���oTUO�~P(\\\"B����\\\\��\\\'�<+��\n�����Q�w\Z��f$�E����c!�������11�bg��&�^EpGpD�Cy��c��O�lI�<b�H�e˷w����/���(ޟ�k��<*9�C�\\\"ԢfHד��F\r}u�N�\r��y6�e�Zod��Rv��8�	:=!fO�Y�J�`(��L�h������U�2=������fK����_��`X�_\rQ�Cⓢv-QƦ&����ڌ�`����M��u�fQ��ڧݼ\\0��F��[��Bx�d�ѹ�mp�}K�Ơ^m���`���i9�h���?�������>��/�����?{�_W�D\\0�Y$FDD���mll���\Z$�\rY��W+���r�n���\\0�\r�o\\0��!��FR�2��%ߔ�p�g�^��5(A]�Aa2\r�AOC�<���ʿ��6R4��+V�T[9,����CG��?y��5�C�}0ݖ�bQ�����멣2����́�.QxZ��fv�?ߘ\Z����|��0���0=���lP�7�+�7l�»ᨗp�\\0P�-�`~��D�^Q�V�=��\rt�M��\\\'T��͉�N�s�E��p��Yo��^��=���L�f[�+��Ht�Qv��	]��Y��v^��zĮ(��q��1e���s�ن�ЬO�$��2x�αt#��đ�}(e��.�^��Ǳ��	T���&��Y�_TF�us�i`OV1u\\\"#���?CC���qm[����_�+��tzv�`NM-:Y�(��c�Dy~#�^��J��Z�h�����p�ٖ\nq�U� ��@�(�W�6��7�{�N=�ođP��\\0����\\\\�k��ɺ�\\\'�s�01r����2�я�z�wmFA�[\\\'��*�����r���8����3�{S�׊���4չ�<���_�>���~p 9Xu�;#<br��{��͏��]�����v��K��\\\'j.�\\\"F�QUs����(PM����^;T	�C�1S�<�����b�y���A]S3_���p)��~��\\\'=�Y���(_��e�J�9��m��%cc��y�@���r^��\\\\\\\"���$V����$�>����6�Q9�n��0鬺�^/l�K?]`�b�3t���i�լO��6��n��\\\"h?��kc�]K~�H��ofjm��\\\'g������_��2�<�޶i��Yr;���.���O�i�3,�~d<��ZϾ�gƳ�&;[mBR��������v~T��N�n�v�v��`\\\\����%f��W�)RK^�5��}U��~���78e��p�����^��$^�ҵ͞ׁП�G!`uIu�ϋ��HpI��� �PH��a�ԏ�������s?�Π���l�%���Mt�b�T\\\'G���^�Wc��KKѶ�+��wl�i�_#�da}E�p\\\"@��l<��?=����3җM���wy������o+z�� E�_m!1�:��nu��d���1f$�x\n����[�B��SY?����R��L!���\\\\;~���P����^��g�/��\\0�E<�?}����!y���G�񚑊�3�ٸʶe��Kr�M�b�k��G��s@�\\\'`Gl�Z̒^Cw�$�+PW�!�� �&�/]�����g��\\\\\\\\��V�b�2�d�e�	}��������S����MP�}�8�l�E����t`ŝ���P���Uֲߪ�.+��5-.G>-iM��ߴ�bz*+�t_>L[,n�����&[M�˭����%�;?�[¨�޽��A�`n�IA;=Rä\r�Ǩ��������\\0+���O�-7X�����6H���M�-�6�ޗSf����*b&�^�d��O�06�����n3�{	��Em9��1���oJZc�z���%��*NFB��\\0�] *�v���5����[����%t�d���^\\0�=5����G[�F�1Q�j�*���+�ޓ@N4�ϕW�|��z�K�r\\0�4+0��2��t��*��F���p`a�&���	���7V�7�uf����߽K}����#�H�ƃ�V\\\'�pW���J�.�f�3Ԝ��:lȃu	.�\n��ߧ��Q��%zX�@{ZIAfB\\\"�o~f�4x��^��,�t8��鸸d���wYӔ/\\\'V�ʋ,rs��.!�`Z�ZGfY}#y����aq��:��ج�=BCS4W�}����te�o��^�Vfӱ�!�Q.7y�cS��_�Q��(�߿o\n��G���9;$R!�a$���~Dԏ�/E��dG��4�x�Ѿ������������+�\n��8�0ݿ3m�Kg\\\'��b�W��y�&\\\"�p$���7�{x�?�(��u\Z�ey[8���ێ���s��:i2�w}??�\\\'2a).����u��y�24�݂R\\0��.s��W���Y!`~_�~�,����D�\\\\0�M�&,�!t�v7\\\'��\\0/�}jV��M��Z�Ό��L�ԣ����6|Y<����L���(\r�Fꆾ��2��~���	ڰ&�����gńcד�VgstP#����P�]�EľcAo���I�!��Â�ȇ��k�1!n\\0�q���ߐ�����|3{*�|�m!��j*�!峷3.�jwh,�Ewv�g�8�A�m�\r���Áu]�ZO�b�Xp��s���X�������})����l��3<O��ҁ=�	<^\\\',�2\\0C�3U����]�%9�GJ�1j$�\Z��Q�0�U����(�t�Mט��+m������Y�I❡���z߸yN7�w��.�~�;���1�g��Ϳo����\\\\�:��cs�F ���%����GP��9�{8���hg��������[�\\01һ\\\"�����	�{}GC\\\"�_�@��{�I�7��N�S�.�)��߸�RBC�aRǎD��L!v|�^�(�~?Zĭ{�]�a���ܳf����m/�۔�����[Ӟx���S�+W�����ݬ7]����Bo�A�ڰ�����\\0S���Cf]-jG�dP[��!�ge�5\\\\-Tu�z��Rҥ��:��⺳\ZG��{�����y�%�}8^�>�㶫��\n?�lΊ�� so����Hl�����ުP2I������Cg�Oh� �7&b��\\\\h@4]J���N�X\\09P���%�!S���8��c$�Dv\\\'��F�w��Ț�mQ�O�x�l���;21�o�Es>9��|s��9��޻�W�I��@x�CM:����C��:�eꑁ�&u��QY�2L��Z^Iyf�|�/�/L=��v�`�b)0�/l̥j��S�B���Y3�:V���W�J,C��d`]�9�jg��LMl��|V>�82��8���)��k1�H_�]KHU��L�����o��K�\\0O�A�N�yj��g�A$��������z8��&��ӻ8�\Z�o�y�Ė����QÂ�/grP�׆�\\\"�)�Fqw�{�/�󌔘1z�V�D�c	](��/�ҧ��Ns�H�e~�MW3�v�@t?�\\0@g�k@�S-۶�NcT��TM�0�j4+Դ�r��My�^�m�=�G?3Zc����Ɵ��~��U�D)eIy�l|�J�2aD�G�9��_l���+mG3qq5S����8}�����1��V�����C%M�Y���x�#�H�$�N2��T�\\\"8(P�d�\\0D@�J7������D;��d=B�����rEn̢���ü��S�V�L��`��l0,��Zd@��1n6c�R8�q_:�[<��E�s��f��\\\"�1D}��/��Sǡ|e��`+u��� �UT���y ���� 66�\\0��Þkσ}��*�n������Tp{yw\\\'1A�0��Rj����H����>2�iI��A,�ςc͝Ca����_@�c6X��mMm~�k�kJ4��{�?�p#u� k��hN&~bpgr޺��FLK�wD��g�^���~D$�����K���o˭����١�Y��\r%X���;s~K��I�)��g\Z�t>�J��[\r�\Z\\\'�]����,zB�c���c��(/���	h�37	�!\\\'��ZSU�����\\\"u>���HΙ�\\\\}�4Ϯ�FR��$���C�� 4�^(\\0�^Y�R\\\"C������\\\'گat+>\Zd�΂x�	�q|�܁Uѡ������7������K�[iL�	�l\\\'6�JN\\\"�A��<�Q�� �)n���s�>��׻�u�m�R��j�Ԯ�������&�%`��Yػ�i�\n�$��#��f��ﰘ9�6��\\\"W�g�$jg�4�#ZǊ�Y�7�\\\"b��I�oL���\r���������CL��\\\\�}�t��E$x��r�B(�t3(~/F,��4·�2]N��qo��Z��V�aKC������7Y���v�{�1�\rpP�wr1\\\"Q��S�\Z��1�Q\r�ŷ���/~\r�i�I�Sc��Gq�<��~���j�y���x��n��d�~&�-����Ǘjԡӓ�%KI����y<���>-�JRIB%$�$�\ZE�3�(;c��%�B��dϖ�0��Vvc�Ʈ0&̐�}����|~������לs����<��y=L�?�{�3�c��wْY�x�t�RڀZ�˛�N;��cK���X=\ZiL�����7l\\\"�R���J��v���*6�`M_���h�૑4��羪����,u}Hl�\\\'F��$0�uh�}<Ċ2I�$��#�jxT�.Z\\\\;��3��zTh�uԥ0�)!����e��K/���e����c)�r�X��g���ǝn��.8��T{�%��q���LL�	D�|0;�(�\\\\\r<�i�A��x� ������0�7\\\"|��	1���\r��G`K����u��&�_y/��I�;���@?i�3gdj����O0��#=מ�@g������{t�ћ�k\\\"Nl�2�WӰ��/4����҃�L���jxq�#@���d*�cm��΢/�XH��2}��4O�yQ�\\\'��z�]�{�*oh|8qؔ����O�̘�䀪ݓ���)�4;��7_l\\\"\\\\�?���`p�A\\\"����$�O�:ӥO��]6޸��N����<AU�Iu�mg�)���T?.D�����U=�ϵE���.�cE�b�^�9�bA�aF��J��&|����	�<NvZ~y���������\\\'��͒�ˑ���ڣ\Z��5{x�U	<��:���0yѢ�U�?�P\\\"�����xT��6Tf�c��~b{\rwv�̈��5]R&�����#�^һ�\\\'���+QFJ�j��בj�f/t�N/�l\Z����x�	�{��2+Qv��\n�[�>F�hf+�B����mk�����』3+��/��0O�7B�d8qU{� ��ѹg�h��XM��4Sd�\\\"w��<�>cN�5_��~����X(��K���爌�GP������݊RjAվ�f1�1��_�y��\\0�具db;�}�R���5���G�l�2�����~i%Tk������L��J$�����LY�P��.���)����p��� �`�������1Zќ��1���\r�\\0Q\\\'�)���N/��x��{���}	i��;(�a�5 /���M�>��r5��ܾJO7S��t��xxѳ�C��F�w@�~��!|f������\\\\�<��y�Wt���{�@��Dz�s���0�_�q�	<�y��Xb�Y��=�e���p�Iݱ��8`��$_t���(ҏ\\\"K���)ƛ�|��{�羘ЋgS��W�:��(��[0�=�/���\\\'�����Q\\\\\\\"�}�r^�X[^�ho�5����w?�\\\\;�`^u����^*(�m�����\nO,�{��Ԕl�$D�q�:���+���x]Ҭ>i\Z��D�1�#A��B�����dZ�d*H0�ٻ}ΆK63_��j����	�2����8�R����1�K����U�N�x2Sa?��3�c�^Hg\Z��	�s���*\\\'�=z_Y�ŷ{p�3N6��e?\r���cL?\rw҃΀**�?��%�����ZE���\Z<��<�l\\\"��E[V�=��у���z�dx�p$,�ܓ�{C�t�6Aٽ/��>t��+lk�ⲅ���	\rhS���W�������)m�s\r�\\\\\\\\\\\\���/_����9�\\\\��`R���9UP�\Z��<�.�\\0�8ڤ!��`-g��1=%V�0�{�ל�k_�\n0��P��e���Y��a_B��%�{��0���^�l�[h�\Z?�|��Ӧ�ύ7�.�|#گ:�\\\"O�������p9�N7<@��\r\nmK,)�E_J��b��;y�u\\\\���G��3��K(���?i���OW����vUg���qX���,��;�n�~7�����,�u)� ���lx�KrŏSJ&���e8i\n\\\\\\\'�Z-Η�2���$J����~ [���V[S}f\\\"rR|rR�8��\r�n���o%`��$RE����4MB	��\Z}ϼ��\\\'p������#9�^h3�du�\Z���E8��4:|ah\\\"}6\\\'���`�T�ZХ`p�����Oͱ��潶t������74@\\\\6s�%G��w��W�wl��r�jg�R�[h�i�!=E�]��\\\\yZs��T�SօQC;�<\\\'\\\\�����Vς�f�i��r�W���� �����p�]z��҄��f��ܧ�K~�#\\\\��*�TI���X5İ�{s)ʷmD�&��;7�`��:	$Q��+�r\\0\\\'��\Z?dV*�Z���*��^,1g�K�^�.��?J���Ď��m��\\\'qe��v��[�ܽM�>��	��8.++�0�� �~81�2[M5=�uu�Y��f�w�hM��i�\n���\\0���[�6�D���‐�;,�8}k��?cY#vu�K�w&_��+��d3���in?�Z\\\\�o1_�Y��W)�i&Yg�r��.*�r^��^�a��A��G�PFZ��u*R&��dF7��$D��V��1�M�Y�F����\\0��7���e�o#��UhH�9Yp�S��(MjR����*�R��$p<pf)\Zb�]_����o5�oES�tr�㴔��e��q�Y�5��%��$�zT\Z@@�H������f[j+W&nQΫ8frآGn�/n��,���+��ݢ��\\\"������\n��#�A�<�S��M��a�_@Y��9/? Tl�ǳ֘�T�*�J�w�F~Ł�ݎ���o�����ވ�z�e�)EG��AW���Ph�rr�X ���Nr��k�=�Ak�ƈp�� מP���fW��I���sO1��镡�}�i��t�_�A������\n����l\\0�����%��4�\\\'^ۇd�]�D5?(�&50{;ٓ!\\\"��N��/�}z����&��\Z��L��bCt�+/�����\\\'��J�y�9\\\\D��+=\\\\������ɇNkl�1��E�ܩ<�IU?l��JK���y1��s��\\\'&��T��V�7�yO��l���.������8�P<L�6?�6�ېB�u�:�J̙s���ȒpX��Y76^\n��E��,a��W�+O���V�V��>X[i$�X�8#�N[��HR^.0�f09_\\\"_$A^���H�;w�s���I��v�Z���&�|I�.�&�n�ҝ��U���^{����\Z	��Nhø�WN:PC-12�Iy��L�b�/6�-bW���7�&]���HO[1�5fMN���\Z\\\"+�:�m\\\'�~�+�z����$��Nѐ�-�b����/qf�Z�	P�3NĻ�2��U/��Fى,Vk���Z��ѬI�w����hҿh��/QƼ����EKN|g����=�[���fn�Uk�t]��U��uf�f\n9H�a�ퟦ�~e� ��r�R�!ZV�I��%9����1��֘��gvH^��0�:�h-�	�V�;E��\rzґ{�N��3�Ml�Ѝ��RdCn֏*_?���\r��啛E�^�.��M����*������3�O֟�E�dW�-�q).Uc�LJ�K���\\\"����G�`�\r�	1j�D��u>u�z6g\Z>H�ظ��T^1g��D���F�4_�x�����!Ws �X�䧧���V=���\r��{�p\\\'5)�R�?��`�U��P)Qy�\\\"���y~Djk���I�\Z(��wƩ�{xp��hl�G��a�����ĳOS��\\0��S_2?����\ZE̘ۜ�4\\\'�a��n�9;��֏c���H�Y<�g}��`���O\\\\?��>fU�v�i�4�G�U�P �^�(�C0=�`C��Cx(�X�>��C� ��8L��lR��\n����\\\'V��L�E��q߶U=�#�ra���zW��#q7���K�����^�ϸ�1_��#�p<JԬf�����n4N��ٮ7���5t�mg�KY���h�Aw�FF�lQI��?0�\Z�ぬs�����O���~�\\\"��eaAW	�\\\"c�O��>�9�{��d��\Z�B��rT$��\\\'\\\"�d3��)��⭙����ة\Z\\\\���y�c4�N�����ZNI�	�E;���W!*Z-Y6\\\'�Z[S�@˧ �Ꚇo�#�>b$d���귷���r�X�n5u��%�M�=�E��:�����/��,z��(�\r�0���S�e�T_@�5n���ǵ;Iz\r��+=�6�^�;\\0�\\\\p�\\0�L��0}\Z~b�<MY�E~�j�ߝ�ֳ~�;ص\\0[�j�������U0*g=�,oE!��dH�v=\n�Wφ��r�S���r^������::=r��E�a6�Ҷ���v�pxN	S:5�����fYۻ���\nbb�A/���`�e��~��%Ez_�G��z��<w�yO�{�%�c�����0�t��	l:N��lw�j�)j��٘�;�k|�.��u�}7�Q�3̊W�և�:��MMM�ހԬ�o:��Zt��o^c��ڿ����/����+ԙ3g�7�mK���ݽ{����w.U��Y�M�����7l��᠔���\\\'�YJM��6����]�h�:s��[������FnT�\\\"���/؅ӱ�]1��1�#a�7��M*d�n{k� Z\n���+}��^��ZZ�i�~���ܸO��e�o�n�IvM�� ��ӟ��\rE���i9D�\\\"@\rr���\\\'���=��}����}���Mt]��A�Q�G8�4����wM�[9�i�AAQ�m!R�rv*h}�#����S��x\rl�Iq:k�����6}��/�æ��N���v�op3��+������P����!p��8�`m\\\'mh4Ü#C������T6;�\\\\�[c���\r�p�Ɖ���b��8��M��5��A���pS�ܲ�^�3<���u;�GDc��4��R6��Q�b��0�5|G�|[���t�(�`D�v~�X3�+�xnQ8�v�/��M�C\\\\|�oJ�uQW �f��D�2_�Y�&�kQ�z��1������-�\\\'ܑX.���d��4��Cϝ�ܐ,�p�&=vT�(��h8�X�|7&�/��S�q�/�)�s(2Zk)#���x|s����L4cZ,�[�V�8	���{����$�w]Y(�_���t�sK���QSG�>�K\\0RK��)f�L����;�G��8-n4�s�J\\\\���_�-��z��j̸d�[0��=�3�1xu��I��[TX�!&��j�.���9��{F:�V�j����$G��dz>��Z���WXy�ͯ�〖��\\\\��,��{���ɔ�=x�K��>I���S�*���{�*ۘ׻�1m\\\"��ﾷ8m��d�V�\n�ٴ1E���#[Z�՞~?�]��+Agؗ��r9]��\\\'0��k?��#�b)>�14�����L��njót~�+(���E8���>�+�S�p�L��<艇d8�����\\0�xe�Pr	�` u	Ք%uA6�<�h�t��~����ؚ�Q\\\\mbՑ_�QI�H��O��FB�	C����!)�\n�N-��K�!0����$)��%���U0�����f����y�7Ų1�\\\\V�M������O�R�%�R���7��)��l�s~�ػW��d���|���C4²��d��PG��$t��\r��lE�]D�{���(L�b��[qH�l�skL�y����x+�Ͳ�2ƾ�r�:�OݗvuX��i�\Z��g�L�6H��f[Iʎ늬_�iP~pi(�V��%q��IC6��Q��G	����**Y�,cT�85�^�6��g3?Q\\\\NI��ϋ�bT^�۪����\nhz��	�Q��*0\\0Ղ\nTF]��O�1�����#����\\0*��7]��g���G�\\\"�E� %UNњ\ZBVS���Ws����t;BB��J-Z)wF�ɳ~�M���|wk/�q�{[.�nP����G��Ώ���i:u�\\0j:4��V���Qp�װ�#�d�\\\\�	�/<)>ؕoH���K0�0#�K4��b���KD�,{�D�&�ˠ��9Bsg�Ǒ�ݢZ5���s(?�;o�����O�\\\\���8=Κ�ۂ/�=��h*�=��x�+�P���[�0N�$�d\\\\�C�s�G�i�\\\\K+�-��4s����\\\"4M&_�P������5�ݴ��(\\\\ܬI%�!�J3p/���@�w|�Ë�oџ��k|�`�l��+�Z\\\"��[e���$���43*aD�`��Ϳ9A|�x��L���d	��V��ei�\Z�\rSY�z��q�7��꿦�����ʹW��x,B�`��z�C����2h�\n;}�\\0ɟ�=Q�����A�-g�&|�ū<6�c�<��ˌ�+T�Y����Ҩ���ͪzP�C�-{l��d��)�Y���|��-��}c\\\'��0a/���9��_F*��e�\\\"m��tڡ�=]\Z��F�\rsޜ>ő����5�<��0(�����K�M�P�z&we\n�w��Ì�No��V��ˮ\\\\H���j��\Z�7��%��?��H��Y��.1����rNvմ)�H�����|�0w�Ll����\n^�F���+U�:�cd����W�D�/#,�O �sR��w�����{����_��Aˬ�O����f�՘�w�\rR/-DPIٺHۺ�bʮ�y���z黕�|U�߇���L�u�N�@d�mI�8uEY�Tz�q�K���Q�mJ9��v�%�q������\\\'j������zH� �����V0����bl(Bi�|B����4��o¥\ZAFq�<�Z�����o�/2����s�Rq�`Byʋ]j֟�����5B~3j|����$�x�a+�F	�P{�J���||8�|�ڹ9�3r�+�ް���&��\\0R�]j5�ِ���k]D�]��ٌ�}�cH�ҵ��ڴ\n�k�\\0���!���m�������M�zI��J稼B�Z9�\\0������^�d�����7t��\\\\�f�~{�c��\\0ק���$4�����w��1\\\\/t����0}�55��2�q5Z����N��5M`��(7+�F7l\\\\X�tj���?�ծ=�o���b.�l�������xxL��g����IF\\0u������-_p�8�T?tN��.�[3�Î��弆�uv��&��#�t}\ZK�H͑�˵��Tc�Iy��Y5q����+z@8�76v4D~�䤩�<���ӱ�v�N��ŲEer�0Iށ�ݴ>�\\0Wmcpό��!:����T[KOqH��Jl\Zm���jU7@�,��M�$��GH�~DX�.\\\\��l��U��V�^�98�;T�����lS����-�	���M0\\\';0e`kd�s�j���Tp��Pu�}j	�5q�C�v�0����\r{��S/0Wr��Y�\\\\�\\\'�8l�� kG-���0��ɉҠF[��3�$w�{o[���3ݚ����ۆ?o�����<0ԋjy>��T�E\Z���1=��6��e����6k-��`8�f�>f`л�J=1Q��E� ��R��ذ4�9*������D�)x�a���.�L�����$�����,2��;���\\0���q��?ɊmH�[����t<���^��=���T/�1ً;�9$͈�[�j����3��� X��]�t�M�N���Ԏ<�7�=j͍�C�0ŃT���X\n��}���`�r��*�!�p��%g`v忊�(/7��m��w�0�9���x;tnu5�\\\"˖9��3�?w��Bn��i��x�i$�/�e�En+��v?_#�姑r��Q\ZP�{l�=�#��H�&����*px��*�5��I9��z�誮$T�@�ظhFͶ�נ�5s�V��t=�����-2��L����yZ|u�+���\\\'�B�Dq&#X2�z�U��H�_BI��/}�{9vzI�\r�\\\"�S�V49`ө�_۫7o�I+��`��?HA=�\\\'�k����n����\n\\0k��u�5~�\rC߿ԲC�����9���׿�PE% ����$� \Z<�1�ŵ���s����oV�6=���	ܺo=}��܃����5.&���J��1�^a���G��\r�����\\\'�\\\"IcmUҴ�D/�\\\"�%�M	�VW8�.2�`���fgw��+SO��$n/x�#v�x/�{��̋���TG����O���uKu1�AK���ܣD9{<2_/z����T�d��|��$S��L����%�Dő�%�Ѽ8T�z&g�In�m|4�y��mN2�Vop.��mG��Ƭ{Is��癮�)�����Z�N:7���.�Ga�#����^o���3�������C�����\\0[��T����>��7�2��q�5I#]߃��~�*�ƍ��A��ʿ��,ҭ�l����%�j3PYe/U���(/�&n��np�+�e�z�MI������ pu��i��KP������A�Y-���JK��KI�~�Ѿ�V��?p��Yt��M	���+n~�$*��l>Y�j�ە�њ�]	��ǘ#��Y�j�����~c���r��Q��ykĚ�6Xj�fA��ߓ�x��_�H�:�y���w��R^C�����	1��C��\nd��^��\Z�����ID��Z����XZZ��뻻���r���3�I��/�K���­�R4���@�\Z7��(�n��g�)2#������𯃋\r�:	�����������;w6�����_RZ����b3Τ��dŠU3���c�x\\\'S�o�ر�L���(}\Zj�qM�EK��\\\'\Z8w6Z~�aL��@½�5�J��ᢏ4�7>���T�g�x��.�H���C\\\\rm߱@:G�f�B�[�l�\\\\���o4��,�D��i��%�P@as*����������jO���Oڡ{Ah���ڕ�a�����v]L�c4\ne/��sL�K��f�~�N�b:�E���?�����0���A�����6��^dJh�kP��g�r[��%��/)&��x	m���[R/?�����I\n�-A��,iT��h��c�R�ORP6؞ryB�~-,<WV���_�i�R����\\\'�ԥ��cT�N���+/�yt���W�ׂ�\r}ꖮo=|��*Òg�~G;�W���a7*qh�M�T����n8����^uH����}r��B�p���k�HBwj�B;.va����3���/�n-|�\Z\\\'���|%���\\\"<�zWδ2���L��J_K�c8�8}N�n.��W>c�o\np��l�;F����\\\'�d,A��i�:�����(��ˋ�۝|����s�k}����QKK)a~�V��y�<�=^IR*s{kN5�o-��Z/�3_�C)�:����fT��W�O{|�{B��<K��6�@�wwNyS�?dS��s���	�$�}�#����qk=\r#�3����ep8_��qob�D��\\\"[��c�#\ndb&�` �G�g�)�c|��3��|�e��g��B�s �I��ß��מڊĭm�x?�v�]�4�,�ي�P����J�Mi�U�ĽC��s$��@s�����ն���SH��Ht�P�Evz��vt�[\Zx`}�c1�3���Ӳ�S%4���I�����͂��*^���\\0ũ����k��D���r=\\\"	��|��_5�-�$^=�l鈟y�H�)����O����\\0�������\\0�ʿ���X��ؘM��܄9F$5����4�Y7�G�\\0-�f��\n`2�hj2��\\\\\Z�%�`r�S�<W_����`8�^C��V�kH9B�қH�o2��rDs�D	7T�y�0�Ϡ�J���;H�u����jv7����� �L;|,�bg�.��7>L�i�����f����R�>�>���y����,Њm��9N�M\\\'�~�e,[��%B��Fe�=����va\\0�T�}y��w�b�<@�_}�f�3�^ښ��{�ſ����!y���?�=`&���}.M������N��� ��i��^��{tTz�vM�0	ˎ�Fb�[���=V�f;Wy�>DQ9�E!x���E��;آ̹+Ǩ�����4<�K�8on<���]sY/��\\\\��h5���Q-�1JG�ґ:o��m\nK-*�9])��;:�E�{Y�����%�\n����P�OA���\r\\0�x#�.JP�JGķ�K.�M��:H��]�]�%\r�����mV�a�Ԅ���D�s���d�\\\'p��J:��y/6@ }��R��������jR��5��G�t����a�ˍZ�jkH?T�Y�5��j��H���܎��m����~F��X1��b@�oi��p]�MK&�nS�qV\\\"jkoidb�t�f��۴p���9:��W�wZ��9`ܨ���~(~���^�Q5ܒTzG��J�W����Hj���� ���5���4���Ic�|��P�W�%��3֊�Y��Y�s�36���pA&�o�\\\\��!�镹���������p<x�v��3��1oߞ>}���t;LcYv��j\r�j�D�Cɝ�U���w�������46~YD�[��S�xw��uZ����y1��u�Eݥ�1��������G���=-?��Z5k��\\\"��n�e�n,<Nb~�4���p.вQe�{x�?$>�C*��,W�\\0���}ݜ/z�zf�i�p��^��m\r������U��]]mkɕ�(s}��p���&٬S2EWk&2��par�/���u}������\Z�=I�ʓ�s�\\0���pL����C~vU�ƢQ�/�XHxr�0�>�wq����X�� ��KC���2�H8j����BN;��]�N}Ho�7�}���yg���|k��_E��X(Ig�T��`��$��f��>���P��{�[���W(�ٜ	�<H1�z}�`|��,���ʚ���ve (��2fƲ��I旋�MI�=�B�e#o<��xn\\0�[��.���\\\'tҰ8G�Q�K�:u�����\\\'���~ş�5$[�\Z�4���9Kx�B:�s%\\\'���e���88�2R�i���6�뗄W�\\\\IV��U���aw$,�U+��KE�=jb��(`.2V:ȎY��1=a,��g���ŹRQ������\\\'8f��3H6�b�&��3rԜ�7��A��&&���ȾV�I4���`��c8�I�����(}�$�%��̇u�(U+VpD��7ٹ�z�L?kY�ߔ[��Ӏ��9�y���Mf���TPE5[��b��B�<$�2Tѹ^�a���}���5UBҹ�7ȗ�h��!!��ű؂oY��S׍8$��,��V}\\\'r�-�2�/hM����NC���v[���x6l���?sV�C����\r?�t�=�^y|`��%�B��o�5)8U����m�����hT�`�G �ID��	��\\\"�nݍ�M+\\\'�!�:75Hp���>!)֮m~�&bR�����D\\\"�w�F;C��c.�����ɞ�6��VG�uZ��6����_��d�����T���q�H���FP#w�/���^��{���\\\'�+�D�+=���@�)�\\\',q[,�<b!��r݌�e|\\0���t�;���ď��D˙����=q\\0�\\\";����)�9w�V�����T$��A���$���n0�=I3*�+��\\\\���8�D�]۵���w�-\nq�pP\\\"	U�ĨCi�#駷6B&7\\\"�L���:\Z/�*�=�f�^���x#6_�G����.Q�\Zv�dlF�[9���ӔL�Co2@r������5���;(T�K����\\0�+Wn��f�Ц�,F������fe��+d��t�W\\\"��\n�Eӵ�~�h�!J�^��0�]JǕ���P�ƥ����Aܻh�\\0�T�aq��������S^O��ǋ����ټ��\r��m�s�R�e^���fWi���9t�@�mg���S�����p������\\\"�����:�!X�a�p�	a\\0��/Q�3p�q�@������@��:���tP���5�AZ���W��j$W.��gF����n�ݢ:����C�Mc^�K��77ƻ瑞C/�%������\Z�)]�\\0�k0�B��l��`c�/���=�ЙD$�X��=�Yh�*�Æe��jO��>��S��ʨ�!=��\Zp���G�\\\\}׊^C�DN�����C�N���4�T\n�K��j�9�I�߳��L��;=�U�~Uk&^XPF�d��O�^��F�[���ai��g���]�4��qO91wU�\\\"����	}��L��\\\"�M�ĀS��0�4#^%߯Pq=�v5���Z�Ѓke@���\Z�c/-����:�1�9��Z�mj#^�IzUa���WFkk\rZ�u�H|���`��),�u�%����{���\\0����;8��AV�T弤_�_�)��(��F Uj?���k��츈�v��nkZ\n>���Jq����H�~��,�sjяAS�z\\0�A��d:�3TV���#<&*J�f�Ҽ�M��\\\"�;�L�+\n�MB��wd���ff-[`�/�.�c]��Ti���QJ3��ܖ�HH����:(\Z#��z*>����bs�L�;��@Y:����[M���b%C�mOJ���ó\n���`�ԖR���-�A�9W��YV���lSՋ�+�s��Ѻ�:����Ș�3^0�/�.��8$���r	ƚ|��r�yH����?QT%L� ��P����Dj`z�e[�	c8�oGU�7������RT��M�R�]<�.��]]�Z�7jӵ%�$�I�dL�dD�\\\\�=�2��\Z�u>���x�й��ی�\\\'\\\\��S:�a�����sK+ 5͔,j\n�UկG8����\\\"�S��r�\\\'\\\'y���7�����3�\\\\z�}��r�e�9�؊0�~�����?�t���}�6�Z3�8��V!0S�h ��(�]�c�*�E;u�h��ݍ.\\0�K$����Mq:��Ɏ��\\\\���]��N�5��9�J�l�ڬ�3�ܜۼ���8\Z�b�M�,�l���p�k�V��a���OW෢�櫵\\\"�ɲ�j����<������^�����nw�3�E#�E�T-�\\\"�\\\"vH�qH�yx<�3rv\n�ϴ\r�\\0r�Ĕ�$�4������a��r�bZ��5����r�A���рyd�b@��OKc����h6�����{�d�s�F�Qp�eۇ�I�(^���N�;�Uզf .����ԯ�ה��7����$��;��TH�I�ݵ����$��u��= Ț�����ar@P5q��dY���]X��?���}���/ӻm�3��&��;7�=�U�WN�0�8���Vgn���!}�n]ONZic��$s�fqp���JB��=�(Jh-�^��A\\\\�l;����>>n�Z�T���=�\\\"�?�K�YH����1�����}�K6A���*T=K�R\n���g�R�a�D���~��lz�\\\\���w�!��4�OU{<��@Z�gq&Z���}������Il{�G����r%��ś1��j�b�Sno0+�����7��U��F����&s�\\0ѵ��\\0a��a�w�~�{��ˏ�1���Mv�z7Dف͛����v����ď2/�	xn�R�JŨ�{Rm�`��`-����M�{�f��>�/ǭp��|�LM�珉��^	�8(Q��VnV\\0?�$\r��w\Z�Wc[qH�˦�*�?c�}[in?�{����̌Yb����b�����=��G�`Qb�0!\r>(Ng`���.|��OLl��.�r��vdP�?�i	\\\\�ײ�y\\\\�M��w���򤖗�%.}�����y�F@(k����»���L��A ��H֚���z���)A�麕_�,È��I�!ݮ/����7��Wgf���q�Os�| ����5b����J?��f�ʖ���Xw_�\\\'t?s�\\0�㾋>�Lyg��T$�&�7$>8djA1[))E/�ܵ*��\\0�-���5f��ɱ^2�꫺�|{s�jo���j�m\r��b���s�Pw�J�|�YM���\n�u���.X&s�_����y܅���E�R���]�*��\\\'3F�23�sPh��O<�ܶ��\\\"�����_�!<��pw�#�������\\\\\\\\S��D�,nB��\Z01CD?�����D+�\\0�y�����t����<�&���G{���!I���ʘ\\\\���͖|g�gl���d�m���>�oE!�\\\'\r�k��,C-$�����k�\\\"�M�Lq���e�1<:�X3u�,^w�e#C)��lml�o ��߳E�+�x�<��FQ�o��`���7��[������8���)�O���v��%��:{��J�p*x���!����ٚZ>n�	jr��kZ���9�X�sb}1�¾�[u��f��\n5��fp�ϼ�z����Q���۝��(c,�~��fQ\ZF�u�_��=)�R�N\Z%��#�|��������G��Ɖ\\\\��IJ3������.4�+ʝ���m��\\\\������G�Uq\\0$���XW��\rֶ�\ruDU����7���E�1S�c������f�צv�I�.ىBh�\rE�i{�����v��U\\\'u�7%p���p}� ���G�=��)Q��c�r���!E�jŒ�˯z�\\\"tX\\\"��XZ]]��pq2n�5̏�?^;�y�n�(��ae*���-�]��.�8�X�����\\\'d��\\\\4��?�#�~v\r�03�3lREj{2�ՙ�A\nF����Q�b2���S>i�:NL_\\\\\Z�y`Y\\\\X9\\\'n_��pM���*�G,����3J�&EpA�-�Kv�\\\"�~yggg�-�|���������������dQ��{wc��xL��)M[c�/c&ۘ���Pb�zM�6�!����/�KGS�7^A]u�~+gWEk��dAiQj�mn-���|�vY�!�����՚��&.�QX��\\\'��d-(W��D\\\'�;rG�w�W>�C��J����MW���>Kjs~����\Z �\\\'�)���_�\\\\)ð`+}���y�g���W�~M��;z��<�q�>�]�����Q��|�=D;4�K0 ´����8�L�B�-�$�ySL!\\\"�h��F!JQ�;+t��{�f��3`BX��C�R�P��j?(R~���\\0����',NULL,84094,'image/png','C',NULL,'2011-07-08',2,86,0,NULL),(330,'error.txt','x��}o�6��ϧ ��\\\"�E�k�i��:n6�l�X{���AK��[I�R��l��~�w�&�Ĺ��B�bٜ��!�,\r���|0�Fh|������71#�������D����O��x��xx�4�{c�h�4�Я;���KJ��dM�O\\\"^7,��ǌr�$�/��휟��O�ׂ%#IL�����.e�L>����v?j�%aɆ���h�k�y`�\Z.�����usOl�$�s�D�V���S�9�w�)_P���t��a���\\\'*u�~��!�\r�c&�8X����G��#���F�2LYV�1���.ߏgj����Z�ǻ;-�H�U�W����rM�~��AxV��G�������y������]��O�\\\"As��`%�-}��nP��|Ј���b����?N�ap��f	�g���k=�,vDsA��@�k�y3	���B|�A2şr��U��Q���F4���L.7c8ܬ�e_����������Ս\\\\�>I�2��U�*�,�S�R<���,�A��%�Zᗣ�\\\"��\\\'+s7��ޔ<�KsJ��\\\'V�y\\\\/��?}7~�}���/����z�m���^������w��B�]n�o?�I����U���q����J�j��g9Q4+,���!c�!�\Z������\\\'��z�I}���O�j�+�����A^U��#�u�a��[������e�9�ٸv����W�y1���=�2�汪�T6���3?x*�Nm}�YV%����u�:���T�rM��G�9��W�m���8�Y��dR�z�`����h��7#_�����*�7�GiY%5~�цM�)b��(3��H��$�N�\\0\\\'�ZS��6��TԵ��вOe���W�_�18ՔW�nGmҁ��j���P���\\\"�nF�������i�5�,�Fe��4V{�V Q��齖u��v\nO�PP��L[���Ǧ{58֡%��o��\\0�H~Vw�c}[�)�*�A�(H���;����;�~�iX�y��|���I8�D�ƬQn�6��6��\\\\*-�U$�e�ȸuNa�y����~�U=>׌,a���-8�}��EW�����{�jC����v������C�1�c�w���q���ش���7�8�W�\nA^+Z;������\\0��[�I�4��T�E2������\\\\��k�a-q��Q�ӥ�\rS�&�a�`,���(�l�E8�d����B�`�8(�9��޼]��ߓtc��l\\\'���5�WFi8���%�3�,൭|~n7�>���@���U�������=ts����#��޼�#�����l$��!��>��FG�Q��[�/h$�e�4�X��u	��V��C\Z�Ͱ��<tAr,Z4����\\0NN͓�z���d�\Zp��B�(�oyj�mY�U~��`*ȮY@��1���AuY�>���G�l�ܞ�^ɴOrމa�A�g�s���x��u��1^�x�u��1^�xO1^��c�;>|	�դ�?�U���LG0�t�LG0%��/>�.4��;�\\\"m�E�Q�R��(e�Q*��져�h��/�(۰_tI��֏Ȃa�?MYMu4��TGSMu4���oCS-�q��D>�Ή^8�}IIJ^�=��������M�z9��q�w�S�=oq��`t$��-e���֚&a(ē��r�X����#���Y�3�������uj��e�=�%SC#^���0\Z�ى3�93��U�x�����l��S��8�H�w�\\\'�J�G�W��[�%�a��Ӧ$K� �p�|{q\n��W�\\\'��U��<#�\\\"quZ�ZAj�l<Ճ�/�\r�m�~(�S���M*ى�3���J3�%\\\"a�\\\"���2Bx�D�\ZU$�)Dyǅ�H��2���@H��t�ʧ�*��k��W?��̅�8���j2i�W>�e�*��iѢ�u	�4�eo�:$qX�c��\Z++��\\\'ꉩNҩ��4����6\\\\���>��=w�ѳg9^����N���',NULL,14554,'application/octet-stream','C',NULL,'2011-07-08',1,86,0,NULL),(331,'dorman_stems (4).txt','x�M�M�0��=�$,mz��<�I�C�J����	�3�|������Nű�Uw�ؠ�/K�1�NS�K�s�Ơ��\rG���P�`���Z�!�3��В!ױD�=��{��4�g�I����=ّ�G�[���7ر���v���>W��nM_',NULL,217,'application/octet-stream','C','Dorman Stem Files','2011-07-14',1,100502,0,NULL);
/*!40000 ALTER TABLE `doc_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `doc_id` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(64) NOT NULL DEFAULT 'NONAME.txt',
  `filepath` varchar(32) DEFAULT NULL,
  `file_size` mediumint(9) NOT NULL DEFAULT '0',
  `summary` varchar(128) DEFAULT NULL,
  `creation_date` date NOT NULL DEFAULT '0000-00-00',
  `file_type` varchar(64) NOT NULL DEFAULT 'text/plain',
  `case_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `keywords` varchar(64) DEFAULT NULL,
  `doc_text` text,
  `orphaned` tinyint(4) NOT NULL DEFAULT '0',
  `nuke` text,
  PRIMARY KEY (`doc_id`),
  KEY `filepath` (`filepath`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `flag_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT 'pika_flag',
  `description` varchar(255) DEFAULT NULL,
  `rules` text,
  `enabled` tinyint(1) DEFAULT '0',
  `created` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`flag_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags`
--

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
INSERT INTO `flags` VALUES (1,'poverty_125','Client Over Income [125%]','a:1:{i:0;a:4:{s:10:\"field_name\";s:13:\"cases.poverty\";s:10:\"comparison\";s:1:\"5\";s:5:\"value\";s:3:\"125\";s:3:\"and\";a:2:{i:0;a:3:{s:14:\"and_field_name\";s:13:\"cases.poverty\";s:14:\"and_comparison\";s:1:\"7\";s:9:\"and_value\";s:5:\"187.5\";}i:1;a:3:{s:14:\"and_field_name\";s:17:\"cases.just_income\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}}}}',1,'2008-10-03 17:32:25','0000-00-00 00:00:00'),(10,'income','Income Info is Blank','a:1:{i:0;a:4:{s:10:\"field_name\";s:13:\"cases.annual0\";s:10:\"comparison\";s:1:\"1\";s:5:\"value\";s:0:\"\";s:3:\"and\";a:4:{i:0;a:3:{s:14:\"and_field_name\";s:13:\"cases.annual1\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}i:1;a:3:{s:14:\"and_field_name\";s:13:\"cases.annual2\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}i:2;a:3:{s:14:\"and_field_name\";s:13:\"cases.annual3\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}i:3;a:3:{s:14:\"and_field_name\";s:13:\"cases.annual4\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}}}}',1,'2008-10-03 17:26:13','0000-00-00 00:00:00'),(11,'problem','LSC Problem Code is Blank','a:1:{i:0;a:3:{s:10:\"field_name\";s:13:\"cases.problem\";s:10:\"comparison\";s:1:\"1\";s:5:\"value\";s:0:\"\";}}',1,'2008-10-03 17:40:36','0000-00-00 00:00:00'),(12,'num_opposings','No Opposing Parties Have Been Entered','a:1:{i:0;a:3:{s:10:\"field_name\";s:15:\"relation_code.2\";s:10:\"comparison\";s:1:\"7\";s:5:\"value\";s:1:\"1\";}}',1,'2008-10-03 17:41:38','0000-00-00 00:00:00'),(2,'poverty_187.5','Client Over Income [187.5%]','a:1:{i:0;a:3:{s:10:\"field_name\";s:13:\"cases.poverty\";s:10:\"comparison\";s:1:\"5\";s:5:\"value\";s:5:\"187.5\";}}',1,'2008-10-03 17:29:02','0000-00-00 00:00:00'),(3,'assets','Asset information is blank','a:1:{i:0;a:4:{s:10:\"field_name\";s:12:\"cases.asset0\";s:10:\"comparison\";s:1:\"1\";s:5:\"value\";s:0:\"\";s:3:\"and\";a:4:{i:0;a:3:{s:14:\"and_field_name\";s:12:\"cases.asset1\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}i:1;a:3:{s:14:\"and_field_name\";s:12:\"cases.asset2\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}i:2;a:3:{s:14:\"and_field_name\";s:12:\"cases.asset3\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}i:3;a:3:{s:14:\"and_field_name\";s:12:\"cases.asset4\";s:14:\"and_comparison\";s:1:\"1\";s:9:\"and_value\";s:0:\"\";}}}}',1,'2008-10-02 15:58:04','0000-00-00 00:00:00'),(4,'household_size','Household Size Info is Blank','a:1:{i:0;a:4:{s:10:\"field_name\";s:14:\"cases.children\";s:10:\"comparison\";s:1:\"7\";s:5:\"value\";s:1:\"1\";s:3:\"and\";a:1:{i:0;a:3:{s:14:\"and_field_name\";s:12:\"cases.adults\";s:14:\"and_comparison\";s:1:\"7\";s:9:\"and_value\";s:1:\"1\";}}}}',1,'2008-10-02 19:51:08','0000-00-00 00:00:00'),(5,'citizenship','Citizenship Status is Blank','a:1:{i:0;a:3:{s:10:\"field_name\";s:13:\"cases.citizen\";s:10:\"comparison\";s:1:\"1\";s:5:\"value\";s:0:\"\";}}',1,'2008-10-02 20:06:22','0000-00-00 00:00:00'),(6,'invalid_citizenship','Invalid Citizenship Status','a:1:{i:0;a:4:{s:10:\"field_name\";s:13:\"cases.citizen\";s:10:\"comparison\";s:1:\"3\";s:5:\"value\";s:1:\"A\";s:3:\"and\";a:2:{i:0;a:3:{s:14:\"and_field_name\";s:13:\"cases.citizen\";s:14:\"and_comparison\";s:1:\"3\";s:9:\"and_value\";s:1:\"B\";}i:1;a:3:{s:14:\"and_field_name\";s:13:\"cases.citizen\";s:14:\"and_comparison\";s:1:\"2\";s:9:\"and_value\";s:0:\"\";}}}}',1,'2008-10-02 20:14:33','0000-00-00 00:00:00'),(7,'conflicts','This Case has a Conflict of Interest','a:1:{i:0;a:3:{s:10:\"field_name\";s:15:\"cases.conflicts\";s:10:\"comparison\";s:1:\"5\";s:5:\"value\";s:1:\"0\";}}',1,'2008-10-02 21:04:32','0000-00-00 00:00:00'),(8,'potential_conflicts','This Case has a Potential Conflict of Interest','a:1:{i:0;a:4:{s:10:\"field_name\";s:21:\"cases.poten_conflicts\";s:10:\"comparison\";s:1:\"5\";s:5:\"value\";s:1:\"0\";s:3:\"and\";a:1:{i:0;a:3:{s:14:\"and_field_name\";s:15:\"cases.conflicts\";s:14:\"and_comparison\";s:1:\"7\";s:9:\"and_value\";s:1:\"1\";}}}}',1,'2008-10-03 17:21:09','0000-00-00 00:00:00'),(9,'funding','Funding Code is Blank','a:1:{i:0;a:3:{s:10:\"field_name\";s:13:\"cases.funding\";s:10:\"comparison\";s:1:\"1\";s:5:\"value\";s:0:\"\";}}',1,'2008-10-03 17:23:32','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_docs`
--

DROP TABLE IF EXISTS `google_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `google_docs` (
  `google_doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  `synced` tinyint(1) DEFAULT '0',
  `del` tinyint(4) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `document_uri` varchar(512) DEFAULT NULL,
  `collection_uri` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`google_doc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_docs`
--

LOCK TABLES `google_docs` WRITE;
/*!40000 ALTER TABLE `google_docs` DISABLE KEYS */;
INSERT INTO `google_docs` VALUES (181,320,'2011-07-08 19:48:47','2011-07-08 19:54:48',1,1,100502,'file%3A0B3mDsZcKUb2BYzllZjQyZTEtMzIzYi00Zjc4LWE0ODMtZGI1OGUxZTljMjhj','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BNmNkM2MwOTgtODdmMi00ZDQyLTllNjctYmE5NDA0NzRjNTFh'),(182,321,'2011-07-08 19:48:54','2011-07-08 19:54:55',1,1,100502,'file%3A0B3mDsZcKUb2BZDYwMTc1MjctNmQyOS00ZWRiLWExMjItZjBiMDJmYWMzNjdi','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzMzY2IyMDctNWEwNi00ZThhLWFlNjctMjk4MTc1ODFhZWJh'),(183,322,'2011-07-08 19:49:21','2011-07-08 19:54:55',1,1,100502,'file%3A0B3mDsZcKUb2BYTRiZjYxMzQtMTc1ZS00YjUxLTg0NzAtYTVmMmRhYTFiNGUw','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BOTg1YjhmZmMtMTMwNi00ZmM5LTkxODctYjcyYzcyNWQzMmMw'),(176,315,'2011-07-08 19:43:44','2011-07-08 19:48:36',1,1,100502,'file%3A0B3mDsZcKUb2BN2U4NzZhM2MtNmJiNy00Y2Q1LWIzMjMtODQ2ZGJjYjM5YTli','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BNmNkM2MwOTgtODdmMi00ZDQyLTllNjctYmE5NDA0NzRjNTFh'),(177,316,'2011-07-08 19:43:49','2011-07-08 19:48:37',1,1,100502,'file%3A0B3mDsZcKUb2BM2M3Yzg0ZjYtMTU1NS00MTQxLWE5NmUtM2IxNDNiNjI2YTk2','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BNmNkM2MwOTgtODdmMi00ZDQyLTllNjctYmE5NDA0NzRjNTFh'),(178,317,'2011-07-08 19:44:00','2011-07-08 19:48:38',1,1,100502,'file%3A0B3mDsZcKUb2BZmM2NDVjOWUtOTdmZi00NTI2LWE1ZjYtODg0YjljY2ZlMTI3','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BNmNkM2MwOTgtODdmMi00ZDQyLTllNjctYmE5NDA0NzRjNTFh'),(179,318,'2011-07-08 19:44:28','2011-07-08 19:48:38',1,1,100502,'file%3A0B3mDsZcKUb2BYzQyNjkxNmYtN2FkNi00OTM5LWJkMWMtZTFhMDQzNWJhYzM5','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzM0NjA1MWQtZDZmYy00MjYwLWJkNWMtZjVhMDNiOTk0Mzc0'),(180,319,'2011-07-08 19:44:36','2011-07-08 19:48:39',1,1,100502,'file%3A0B3mDsZcKUb2BNmFjYzUzZWItNmJlYS00NDFmLThlZWEtMTExNDE2MWQ4MDE4','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzM0NjA1MWQtZDZmYy00MjYwLWJkNWMtZjVhMDNiOTk0Mzc0'),(173,312,'2011-07-08 19:41:39','2011-07-08 19:43:09',1,1,100502,'file%3A0B3mDsZcKUb2BODYxNTU5Y2ItODMxNC00N2JjLWE2ZWEtNmI1N2NhZDI4NDQy','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BM2MzNDQzOWQtYmNlZS00NGU0LTk2ZWItMTkyZDAwYjI4ZmE0'),(174,313,'2011-07-08 19:41:55','2011-07-08 19:43:10',1,1,100502,'file%3A0B3mDsZcKUb2BZWUxYmYyNTMtZDdiNC00MDlhLTlkNDctODg1OGY1ODkwNzE2','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzM0OWI4MGEtYzJlOC00MTBlLThiYzQtNTk2MzU4ZTJlNTE2'),(175,314,'2011-07-08 19:42:03','2011-07-08 19:43:10',1,1,100502,'file%3A0B3mDsZcKUb2BMDE5OGE2NmMtNDgyZi00NWIyLWE4MGYtMjAyYzY1NjE2MjJh','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzM0OWI4MGEtYzJlOC00MTBlLThiYzQtNTk2MzU4ZTJlNTE2'),(169,308,'2011-07-08 19:36:21','2011-07-08 19:41:25',1,1,100502,'file%3A0B3mDsZcKUb2BMTU1Yzk1NmEtNTNhZS00OWRkLWEzZTktZDQ0YmJjNzE1MTE0','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BM2MzNDQzOWQtYmNlZS00NGU0LTk2ZWItMTkyZDAwYjI4ZmE0'),(170,309,'2011-07-08 19:36:27','2011-07-08 19:41:25',1,1,100502,'file%3A0B3mDsZcKUb2BMjVmY2Q0YmMtZDM1MS00MDg5LTg0NDMtZDdiZTUwYjczMTc3','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BM2MzNDQzOWQtYmNlZS00NGU0LTk2ZWItMTkyZDAwYjI4ZmE0'),(171,310,'2011-07-08 19:36:47','2011-07-08 19:41:26',1,1,100502,'file%3A0B3mDsZcKUb2BOWJkODkwZmYtNTI4Ny00MmViLWI3NjgtNTAyODhlMzRlOWU2','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzM0OWI4MGEtYzJlOC00MTBlLThiYzQtNTk2MzU4ZTJlNTE2'),(172,311,'2011-07-08 19:37:02','2011-07-08 19:41:29',1,1,100502,'file%3A0B3mDsZcKUb2BNDA4MDQ1OTktYTM3Yi00YjJhLWJkYTUtZDYzZDBkNzFiYzhm','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzM0OWI4MGEtYzJlOC00MTBlLThiYzQtNTk2MzU4ZTJlNTE2'),(165,304,'2011-07-08 19:29:58','2011-07-08 19:35:58',1,1,100502,'file%3A0B3mDsZcKUb2BODM1YmRlMzYtN2I4Ny00ZWUxLTkxMjktYmZhYThhODgzNzQ4','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYjc2OWQ4ZTMtZTI0My00ZTM5LWI5MjEtZmVmOGVjNDkyYTJi'),(166,305,'2011-07-08 19:30:09','2011-07-08 19:35:59',1,1,100502,'file%3A0B3mDsZcKUb2BNzc0YmZmZjgtN2E3Zi00MDcyLWJiMDItODg0NTcyMDkwNWVk','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYjc2OWQ4ZTMtZTI0My00ZTM5LWI5MjEtZmVmOGVjNDkyYTJi'),(167,306,'2011-07-08 19:30:40','2011-07-08 19:35:59',1,1,100502,'file%3A0B3mDsZcKUb2BNTUzODc5MWUtYWUzNi00YWU3LThmYWItZjE2ODExN2ViY2Zk','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BZTQ2YjM5YzctMDUzZi00ZTFkLWE0MTgtODI5ZTA0OTQ5ODJh'),(168,306,'2011-07-08 19:30:49','2011-07-08 19:35:59',1,1,100502,'file%3A0B3mDsZcKUb2BNTUzODc5MWUtYWUzNi00YWU3LThmYWItZjE2ODExN2ViY2Zk','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BZTQ2YjM5YzctMDUzZi00ZTFkLWE0MTgtODI5ZTA0OTQ5ODJh'),(159,298,'2011-07-08 19:10:20','2011-07-08 19:29:05',1,1,100502,'file%3A0B3mDsZcKUb2BMmI1N2U5MjQtNDM0MC00ODNjLWIzNzItNTEyZmQ0ZmZkZDBk','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BMGY0NDkyNjMtNTE3OC00NTIyLTg4OWQtMTQxYTc1YTJjM2M3'),(160,299,'2011-07-08 19:10:26','2011-07-08 19:29:06',1,1,100502,'file%3A0B3mDsZcKUb2BNDFmODU2MWMtODgyMC00Mjg2LThjZTktMzM2ODhkY2Q0OTMz','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BODE0Mjc2OGUtOGRkYy00YjJkLTlmNjEtNGZlN2QxM2ViNjkz'),(161,299,'2011-07-08 19:22:05','2011-07-08 19:29:06',1,1,100502,'file%3A0B3mDsZcKUb2BNDFmODU2MWMtODgyMC00Mjg2LThjZTktMzM2ODhkY2Q0OTMz','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BODE0Mjc2OGUtOGRkYy00YjJkLTlmNjEtNGZlN2QxM2ViNjkz'),(162,301,'2011-07-08 19:22:20','2011-07-08 19:27:36',1,1,100502,'file%3A0B3mDsZcKUb2BZTIxMDZmZTEtZTJlNi00MTAwLWEwMzQtMmY3MDYxYjY3YjY3','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BNGIyZmRhZDAtYzIzMi00NmRiLTg3ZGUtOGM3ZGU1ZjA4NGY1'),(163,302,'2011-07-08 19:22:28','2011-07-08 19:27:37',1,1,100502,'file%3A0B3mDsZcKUb2BNTU4NDQxNTYtNzgzMC00NTY5LWFmZDAtNDdkOWFjNTliN2Y4','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BNGIyZmRhZDAtYzIzMi00NmRiLTg3ZGUtOGM3ZGU1ZjA4NGY1'),(164,303,'2011-07-08 19:22:38','2011-07-08 19:27:37',1,1,100502,'file%3A0B3mDsZcKUb2BZGYxOWE2NjItYjdmYi00M2NjLTg1OWQtNDdjOGE1ODljYTFh','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BNGIyZmRhZDAtYzIzMi00NmRiLTg3ZGUtOGM3ZGU1ZjA4NGY1'),(155,294,'2011-07-08 19:02:20','2011-07-08 19:05:50',1,1,100502,'file%3A0B3mDsZcKUb2BOTk0M2Q2YjgtZjRiNi00OTliLWIwZTctNmMwYjFmNTgxZmE0','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BZTc3YjE0OTEtZTA5ZC00NjExLWJkOTgtZDhjOGMyOWNhNTky'),(156,295,'2011-07-08 19:02:26','2011-07-08 19:05:50',1,1,100502,'file%3A0B3mDsZcKUb2BNmVlNzcwYzAtOTY4Ni00MjM0LTljZjktNmEwMmVmYTI4Y2U2','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BZTc3YjE0OTEtZTA5ZC00NjExLWJkOTgtZDhjOGMyOWNhNTky'),(157,296,'2011-07-08 19:07:46','2011-07-08 19:10:00',1,1,100502,'file%3A0B3mDsZcKUb2BYWUyZjE3N2UtYTg4Yi00ZmM5LThkNTQtYjU3ZWZiM2Y0Yzgz','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BMGY0NDkyNjMtNTE3OC00NTIyLTg4OWQtMTQxYTc1YTJjM2M3'),(158,297,'2011-07-08 19:07:58','2011-07-08 19:10:01',1,1,100502,'file%3A0B3mDsZcKUb2BODFlYWM4ODktMTY5Mi00MTI3LWE1OWYtMDUyNDU0NWI3MDA0','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BMGY0NDkyNjMtNTE3OC00NTIyLTg4OWQtMTQxYTc1YTJjM2M3'),(184,323,'2011-07-08 19:55:06','2011-07-08 19:55:37',1,0,100502,'file%3A0B3mDsZcKUb2BYmE2NzM4OGUtZmUxNy00NzQyLWI1ZTMtZWFjNzY5YTEyMGU3','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BOTg1YjhmZmMtMTMwNi00ZmM5LTkxODctYjcyYzcyNWQzMmMw'),(185,324,'2011-07-08 19:55:12','2011-07-08 19:55:41',1,0,100502,'file%3A0B3mDsZcKUb2BNTdlZTBmNmEtYjdiNS00ZjBmLTg2NDctMzZhOWZkNWFjYWY0','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BOTg1YjhmZmMtMTMwNi00ZmM5LTkxODctYjcyYzcyNWQzMmMw'),(186,325,'2011-07-08 19:55:25','2011-07-08 19:55:43',1,0,100502,'file%3A0B3mDsZcKUb2BNWVkMjFkYTUtMzM4YS00MjY0LWJmYWQtNTI5NmRhM2RhYzM4','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzMzY2IyMDctNWEwNi00ZThhLWFlNjctMjk4MTc1ODFhZWJh'),(187,326,'2011-07-08 19:55:31','2011-07-08 19:55:45',1,0,100502,'file%3A0B3mDsZcKUb2BY2E1NmI4MGMtYzgwYi00OTlhLWIyNWQtNzJkZDVhNWNhYzhh','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzMzY2IyMDctNWEwNi00ZThhLWFlNjctMjk4MTc1ODFhZWJh'),(188,327,'2011-07-08 19:59:07',NULL,0,1,86,NULL,NULL),(189,328,'2011-07-08 19:59:21','2011-07-08 20:02:05',1,0,86,'file%3A0B3mDsZcKUb2BOGFiNzU4YmUtNTk0NS00NDgzLTg4ZTQtNTU2NDNiZjVhODA2','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BOTg1YjhmZmMtMTMwNi00ZmM5LTkxODctYjcyYzcyNWQzMmMw'),(190,329,'2011-07-08 19:59:43','2011-07-08 20:02:19',1,0,86,'file%3A0B3mDsZcKUb2BY2E0NGVhMWEtMmFjZS00MzQxLTg5YTgtMWZmOTdkODY3ZGIz','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BYzMzY2IyMDctNWEwNi00ZThhLWFlNjctMjk4MTc1ODFhZWJh'),(191,330,'2011-07-08 20:22:14','2011-07-08 20:23:03',1,0,86,'file%3A0B3mDsZcKUb2BOGVjOTg4NDktZmU1YS00ODRjLTgyMGUtMDViNTY2MDMzOThj','http://docs.google.com/feeds/documents/private/full/folder%3A0B3mDsZcKUb2BOTg1YjhmZmMtMTMwNi00ZmM5LTkxODctYjcyYzcyNWQzMmMw'),(192,331,'2011-07-14 18:43:26',NULL,0,0,100502,NULL,NULL);
/*!40000 ALTER TABLE `google_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_sync`
--

DROP TABLE IF EXISTS `google_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `google_sync` (
  `google_sync_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id` int(11) NOT NULL,
  `uri` varchar(512) DEFAULT NULL,
  `link` varchar(512) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  `synced` tinyint(1) DEFAULT '0',
  `del` tinyint(4) DEFAULT '0',
  `email` varchar(256) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `act_group` varchar(40) DEFAULT NULL,
  `organizer` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`google_sync_id`)
) ENGINE=MyISAM AUTO_INCREMENT=566 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_sync`
--

LOCK TABLES `google_sync` WRITE;
/*!40000 ALTER TABLE `google_sync` DISABLE KEYS */;
INSERT INTO `google_sync` VALUES (554,2896,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/r9shk87f6n7iohq28pt7uqep5g','https://www.google.com/calendar/event?eid=cjlzaGs4N2Y2bjdpb2hxMjhwdDd1cWVwNWcgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-30 18:34:18','2011-06-30 18:34:26',1,0,'admin@mcplusa-dev.com',100502,'{33cedea6-68bb-1f79-3ff8-ff931a946d9f}','admin@mcplusa-dev.com'),(555,2897,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/issm4japt5mdsku5om3rpmrot4','https://www.google.com/calendar/event?eid=aXNzbTRqYXB0NW1kc2t1NW9tM3JwbXJvdDQgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-06-30 18:34:18','2011-06-30 18:34:27',1,0,'Test.User1@mcplusa-dev.com',86,'{33cedea6-68bb-1f79-3ff8-ff931a946d9f}','admin@mcplusa-dev.com'),(552,2795,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/o45if6ir8f44et72m7u7n1kd84','https://www.google.com/calendar/event?eid=bzQ1aWY2aXI4ZjQ0ZXQ3Mm03dTduMWtkODQgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-29 20:51:01','2011-06-29 20:51:06',1,0,'admin@mcplusa-dev.com',100502,'{1d90032e-1244-0812-382e-f655bd6056b6}','admin@mcplusa-dev.com'),(553,2799,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/o076csq1l9o94p28fkhrhv71jg','https://www.google.com/calendar/event?eid=bzA3NmNzcTFsOW85NHAyOGZraHJodjcxamcgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-29 22:36:24','2011-06-30 18:32:06',1,0,'admin@mcplusa-dev.com',100502,'{b31421c8-ceb0-ed88-8ac8-0bf94ff4f0e8}','admin@mcplusa-dev.com'),(550,2435,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/6q53epbnnit6abeaq5jsisubg4','https://www.google.com/calendar/event?eid=NnE1M2VwYm5uaXQ2YWJlYXE1anNpc3ViZzQgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-27 16:01:35','2011-06-27 16:01:41',1,0,'admin@mcplusa-dev.com',100502,'{474e1869-4e8e-e43e-981c-849e7e681ae7}','Test.User1@mcplusa-dev.com'),(551,2436,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/9j2o8ag380k72tto9p8ki09k4s','https://www.google.com/calendar/event?eid=OWoybzhhZzM4MGs3MnR0bzlwOGtpMDlrNHMgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-06-27 16:01:35','2011-06-27 16:01:42',1,0,'Test.User1@mcplusa-dev.com',86,'{474e1869-4e8e-e43e-981c-849e7e681ae7}','Test.User1@mcplusa-dev.com'),(548,2431,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/btp4n1mu38sb4v7kst8c1j9hjk','https://www.google.com/calendar/event?eid=YnRwNG4xbXUzOHNiNHY3a3N0OGMxajloamsgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-27 14:31:57','2011-06-27 14:32:08',1,0,'admin@mcplusa-dev.com',100502,'{2ba1ffdd-b1ca-4caf-54a6-48b84ae0270a}','Test.User1@mcplusa-dev.com'),(549,2432,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/qtuagt8l8the6iodlmtm5hr978','https://www.google.com/calendar/event?eid=cXR1YWd0OGw4dGhlNmlvZGxtdG01aHI5NzggdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-06-27 14:31:57','2011-06-27 14:32:09',1,0,'Test.User1@mcplusa-dev.com',86,'{2ba1ffdd-b1ca-4caf-54a6-48b84ae0270a}','Test.User1@mcplusa-dev.com'),(546,1764,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/5069pbii8dtongjmm4h0pfbmuc','https://www.google.com/calendar/event?eid=NTA2OXBiaWk4ZHRvbmdqbW00aDBwZmJtdWMgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-17 15:01:11','2011-06-17 15:01:15',1,0,'admin@mcplusa-dev.com',100502,'{cbc21ede-0de2-4b58-82d3-2c3a86f31d67}','admin@mcplusa-dev.com'),(547,1767,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/1k5bbr1skgh936setv56hb7s4s','https://www.google.com/calendar/event?eid=MWs1YmJyMXNrZ2g5MzZzZXR2NTZoYjdzNHMgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-17 15:07:54','2011-06-17 15:08:42',1,0,'admin@mcplusa-dev.com',100502,'{3eb1fd81-f736-439e-9277-913500024779}','admin@mcplusa-dev.com'),(545,1720,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/3rpjm6qnafjep4bjkpdgmke5ao','https://www.google.com/calendar/event?eid=M3Jwam02cW5hZmplcDRiamtwZGdta2U1YW8gYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-16 22:11:31','2011-06-17 14:52:46',1,0,'admin@mcplusa-dev.com',100502,'{08753848-cd6b-41e8-a72e-af481e7bec72}','admin@mcplusa-dev.com'),(544,1404,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/vq86kqbl24gmh74uc2uir7bngg','https://www.google.com/calendar/event?eid=dnE4NmtxYmwyNGdtaDc0dWMydWlyN2JuZ2cgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-14 17:26:12','2011-06-14 17:26:20',1,0,'admin@mcplusa-dev.com',100502,'{aa7d77ef-a39a-fc01-cc0f-6069abb70f7a}','admin@mcplusa-dev.com'),(543,1400,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/rnb86arsm5giuo95f4d09sdo1s','https://www.google.com/calendar/event?eid=cm5iODZhcnNtNWdpdW85NWY0ZDA5c2RvMXMgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-14 17:22:07','2011-06-14 17:22:16',1,0,'admin@mcplusa-dev.com',100502,'{34613860-d2fe-2d9a-617c-10ad7af5ede9}','admin@mcplusa-dev.com'),(542,1397,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/tdcn6rom3v19vdha5ik46minn8','https://www.google.com/calendar/event?eid=dGRjbjZyb20zdjE5dmRoYTVpazQ2bWlubjggYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-14 17:17:57','2011-06-14 17:18:08',1,0,'admin@mcplusa-dev.com',100502,'{dc6a6ab1-831f-a769-d837-0ff83dd707a6}','admin@mcplusa-dev.com'),(541,1392,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/194fhoasd8l4q8pcv8ec5m1l8k','https://www.google.com/calendar/event?eid=MTk0ZmhvYXNkOGw0cThwY3Y4ZWM1bTFsOGsgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-10 19:20:25','2011-06-10 19:20:39',1,0,'admin@mcplusa-dev.com',100502,'{d89a9a4b-7005-4530-9094-1e7a33c1adb0}','admin@mcplusa-dev.com'),(540,1381,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/3mmhkjiat9doqhcdjj2b98lsq4','https://www.google.com/calendar/event?eid=M21taGtqaWF0OWRvcWhjZGpqMmI5OGxzcTQgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-06-10 18:45:02','2011-06-10 19:17:43',1,0,'admin@mcplusa-dev.com',100502,'{ad91f96a-88c9-492a-b70d-c26f624dc4d8}','admin@mcplusa-dev.com'),(538,1234,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/8d179b4k3lp661nrm48a3cfabk','https://www.google.com/calendar/event?eid=OGQxNzliNGszbHA2NjFucm00OGEzY2ZhYmsgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-20 16:18:05','2011-04-20 16:23:20',1,0,'admin@mcplusa-dev.com',100502,'{fbea0975-c96a-46e0-a9ed-74b86bce2b40}','admin@mcplusa-dev.com'),(539,1235,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/men7jrh2j2cfdo8m4b5190d7jc','https://www.google.com/calendar/event?eid=bWVuN2pyaDJqMmNmZG84bTRiNTE5MGQ3amMgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-20 16:18:05','2011-04-20 16:23:21',1,0,'Test.User1@mcplusa-dev.com',86,'{fbea0975-c96a-46e0-a9ed-74b86bce2b40}','admin@mcplusa-dev.com'),(537,1230,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/3ljtts0lor6v63f8us1ai2hv88','https://www.google.com/calendar/event?eid=M2xqdHRzMGxvcjZ2NjNmOHVzMWFpMmh2ODggdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-20 16:11:24','2011-04-20 16:12:17',1,0,'Test.User1@mcplusa-dev.com',86,'{28312333-ab7d-47ad-b86a-d21bed410ac0}','admin@mcplusa-dev.com'),(536,1229,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/lgcpiah1s9cm9c3k2kkq37g9j8','https://www.google.com/calendar/event?eid=bGdjcGlhaDFzOWNtOWMzazJra3EzN2c5ajggYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-20 16:11:24','2011-04-20 16:12:18',1,0,'admin@mcplusa-dev.com',100502,'{28312333-ab7d-47ad-b86a-d21bed410ac0}','admin@mcplusa-dev.com'),(535,1222,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/1ou1lbnukal3b3efg175vb5tko','https://www.google.com/calendar/event?eid=MW91MWxibnVrYWwzYjNlZmcxNzV2YjV0a28gdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-19 16:09:45','2011-04-19 16:16:44',1,0,'Test.User1@mcplusa-dev.com',86,'{f675642d-c403-7d65-130e-3fc34bbaeee0}','admin@mcplusa-dev.com'),(534,1221,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/540e9i6id9hd0p5lvaorvvn5qg','https://www.google.com/calendar/event?eid=NTQwZTlpNmlkOWhkMHA1bHZhb3J2dm41cWcgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-19 16:09:45','2011-04-19 16:16:45',1,0,'admin@mcplusa-dev.com',100502,'{f675642d-c403-7d65-130e-3fc34bbaeee0}','admin@mcplusa-dev.com'),(533,1217,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/d4vjahadpmvuk13pqf1sr4dtlg','https://www.google.com/calendar/event?eid=ZDR2amFoYWRwbXZ1azEzcHFmMXNyNGR0bGcgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-19 15:23:43','2011-04-19 15:25:16',1,0,'Test.User1@mcplusa-dev.com',86,'{b6326320-2b73-e5d8-fc10-5b5a333b0720}','admin@mcplusa-dev.com'),(532,1172,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/dvf6d3b6gdap9vn1ru1kj2rdek','https://www.google.com/calendar/event?eid=ZHZmNmQzYjZnZGFwOXZuMXJ1MWtqMnJkZWsgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-15 20:47:25','2011-04-19 15:25:17',1,0,'admin@mcplusa-dev.com',100502,'{b6326320-2b73-e5d8-fc10-5b5a333b0720}','admin@mcplusa-dev.com'),(530,1152,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/sngv34v34remqgobl06846co5c','https://www.google.com/calendar/event?eid=c25ndjM0djM0cmVtcWdvYmwwNjg0NmNvNWMgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-14 20:03:25','2011-04-15 20:01:08',1,1,'admin@mcplusa-dev.com',100502,'{3bc23b82-c906-9649-6442-4ae3e836b5c9}','admin@mcplusa-dev.com'),(531,1153,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/qaqsjbgetl5hllrf0bhnb0st20','https://www.google.com/calendar/event?eid=cWFxc2piZ2V0bDVobGxyZjBiaG5iMHN0MjAgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-14 20:03:25','2011-04-15 20:01:09',1,1,'Test.User1@mcplusa-dev.com',86,'{3bc23b82-c906-9649-6442-4ae3e836b5c9}','admin@mcplusa-dev.com'),(529,1127,NULL,'','2011-04-13 19:16:13','2011-04-14 19:21:53',1,1,'admin@mcplusa-dev.com',100502,'{7c2ae7df-73c1-4a93-aa8f-012a3fc265f8}','admin@mcplusa-dev.com'),(528,1125,NULL,'','2011-04-13 19:15:37','2011-04-14 19:21:53',1,1,'admin@mcplusa-dev.com',100502,'{edef670f-3e04-4e4c-94b9-72291b8414d5}','admin@mcplusa-dev.com'),(527,1121,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/3jomtg2ivo7prtfsnvopnbt0g4','https://www.google.com/calendar/event?eid=M2pvbXRnMml2bzdwcnRmc252b3BuYnQwZzQgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-13 16:56:07','2011-04-14 19:21:54',1,0,'Test.User1@mcplusa-dev.com',86,'{31202f28-9424-9c5f-ebbb-5c2318d30d68}','admin@mcplusa-dev.com'),(526,1120,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/6rk0qk5g9aa9i1sgo0tsfqkh24','https://www.google.com/calendar/event?eid=NnJrMHFrNWc5YWE5aTFzZ28wdHNmcWtoMjQgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-13 16:56:07','2011-04-14 19:21:56',1,0,'admin@mcplusa-dev.com',100502,'{31202f28-9424-9c5f-ebbb-5c2318d30d68}','admin@mcplusa-dev.com'),(525,1113,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/1br6rsit2ov6tn8pupkvei7mnk','https://www.google.com/calendar/event?eid=MWJyNnJzaXQyb3Y2dG44cHVwa3ZlaTdtbmsgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-13 16:24:57','2011-04-14 19:21:57',1,1,'Test.User1@mcplusa-dev.com',86,'{e0aad17e-4947-b6b5-3a6c-6b61b32e5eed}','admin@mcplusa-dev.com'),(524,1112,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/qq3npjupeiulfa5eflsh8hba94','https://www.google.com/calendar/event?eid=cXEzbnBqdXBlaXVsZmE1ZWZsc2g4aGJhOTQgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-13 16:24:57','2011-04-14 19:21:58',1,1,'admin@mcplusa-dev.com',100502,'{e0aad17e-4947-b6b5-3a6c-6b61b32e5eed}','admin@mcplusa-dev.com'),(522,1102,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/u6or6htg3sj24uc3k08avpb308','https://www.google.com/calendar/event?eid=dTZvcjZodGczc2oyNHVjM2swOGF2cGIzMDggYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-13 16:13:16','2011-04-13 16:20:56',1,1,'admin@mcplusa-dev.com',100502,'{ecd400aa-89c9-b126-f726-4024286f6cf1}','admin@mcplusa-dev.com'),(523,1103,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/2hmfe47s0teno7mf73p9ktpons','https://www.google.com/calendar/event?eid=MmhtZmU0N3MwdGVubzdtZjczcDlrdHBvbnMgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-13 16:13:16','2011-04-13 16:20:58',1,1,'Test.User1@mcplusa-dev.com',86,'{ecd400aa-89c9-b126-f726-4024286f6cf1}','admin@mcplusa-dev.com'),(520,1087,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/n7ogi0rf5frrgm2i2mdn093mr4','https://www.google.com/calendar/event?eid=bjdvZ2kwcmY1ZnJyZ20yaTJtZG4wOTNtcjQgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-04-11 15:36:56','2011-04-13 15:47:16',1,1,'admin@mcplusa-dev.com',100502,'{36fc5dc4-f9a4-4962-ac58-59ac63be9433}','admin@mcplusa-dev.com'),(521,1088,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/pf25qgqpnqv661tapnuiutvpus','https://www.google.com/calendar/event?eid=cGYyNXFncXBucXY2NjF0YXBudWl1dHZwdXMgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-04-11 15:36:56','2011-04-13 15:47:16',1,1,'Test.User1@mcplusa-dev.com',86,'{36fc5dc4-f9a4-4962-ac58-59ac63be9433}','admin@mcplusa-dev.com'),(556,2963,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/475g56er29gikm0c8edqo2otq4','https://www.google.com/calendar/event?eid=NDc1ZzU2ZXIyOWdpa20wYzhlZHFvMm90cTQgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-07-01 21:38:02','2011-07-01 21:38:46',1,0,'admin@mcplusa-dev.com',100502,'{16489aba-0602-463f-8523-1da929f651cb}','admin@mcplusa-dev.com'),(557,2965,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/ii5lt7f51faskgqcltqgibd2vo','https://www.google.com/calendar/event?eid=aWk1bHQ3ZjUxZmFza2dxY2x0cWdpYmQydm8gYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-07-01 21:38:20','2011-07-01 21:38:47',1,0,'admin@mcplusa-dev.com',100502,'{d349d092-8593-4be8-950d-ed958148f490}','admin@mcplusa-dev.com'),(558,2966,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/q5epmdb6se4cofpnaqd0efltps','https://www.google.com/calendar/event?eid=cTVlcG1kYjZzZTRjb2ZwbmFxZDBlZmx0cHMgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-07-01 21:38:20','2011-07-01 21:38:48',1,0,'Test.User1@mcplusa-dev.com',86,'{d349d092-8593-4be8-950d-ed958148f490}','admin@mcplusa-dev.com'),(559,3008,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/iau3qtro4fj5u698b287ia59j0','https://www.google.com/calendar/event?eid=aWF1M3F0cm80Zmo1dTY5OGIyODdpYTU5ajAgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-07-07 16:17:10','2011-07-07 16:17:15',1,0,'admin@mcplusa-dev.com',100502,'{589961a8-a846-40ed-8873-2cdaec7411bb}','admin@mcplusa-dev.com'),(560,3009,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/443qiatgl191mvuag560e3jo1s','https://www.google.com/calendar/event?eid=NDQzcWlhdGdsMTkxbXZ1YWc1NjBlM2pvMXMgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-07-07 16:17:10','2011-07-07 16:17:16',1,0,'Test.User1@mcplusa-dev.com',86,'{589961a8-a846-40ed-8873-2cdaec7411bb}','admin@mcplusa-dev.com'),(561,3297,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/45m8ebf1ejr2acl5posbjf022s','https://www.google.com/calendar/event?eid=NDVtOGViZjFlanIyYWNsNXBvc2JqZjAyMnMgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-07-08 19:59:55','2011-07-08 20:00:10',1,0,'admin@mcplusa-dev.com',100502,'{fb7a2bee-05a8-4c64-beff-8aa02f3bdd7a}','Test.User1@mcplusa-dev.com'),(562,3298,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/bgmrta5fhobg6qguo8j1pm53g8','https://www.google.com/calendar/event?eid=YmdtcnRhNWZob2JnNnFndW84ajFwbTUzZzggdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-07-08 19:59:55','2011-07-08 20:00:17',1,0,'Test.User1@mcplusa-dev.com',86,'{fb7a2bee-05a8-4c64-beff-8aa02f3bdd7a}','Test.User1@mcplusa-dev.com'),(563,3306,'http://www.google.com/calendar/feeds/admin%40mcplusa-dev.com/private/full/dkv7r5334ckrvo1e7au00h4ga4','https://www.google.com/calendar/event?eid=ZGt2N3I1MzM0Y2tydm8xZTdhdTAwaDRnYTQgYWRtaW5AbWNwbHVzYS1kZXYuY29t','2011-07-08 20:22:33','2011-07-08 20:22:55',1,0,'admin@mcplusa-dev.com',100502,'{c3d2906b-f063-e0b1-592e-d8c4650c9f8a}','Test.User1@mcplusa-dev.com'),(564,3307,'http://www.google.com/calendar/feeds/Test.User1%40mcplusa-dev.com/private/full/7m2us0mi5ffhe8is1vfpejmhfs','https://www.google.com/calendar/event?eid=N20ydXMwbWk1ZmZoZThpczF2ZnBlam1oZnMgdGVzdC51c2VyMUBtY3BsdXNhLWRldi5jb20','2011-07-08 20:22:33','2011-07-08 20:22:57',1,0,'Test.User1@mcplusa-dev.com',86,'{c3d2906b-f063-e0b1-592e-d8c4650c9f8a}','Test.User1@mcplusa-dev.com'),(565,3317,NULL,'','2011-07-14 18:32:48',NULL,0,0,'admin@mcplusa-dev.com',100502,'{822239a5-212d-6eb8-8f7a-a42f7110f243}','admin@mcplusa-dev.com');
/*!40000 ALTER TABLE `google_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `group_id` char(12) NOT NULL DEFAULT 'NOGROUP',
  `read_office` char(64) DEFAULT NULL,
  `read_all` tinyint(4) NOT NULL DEFAULT '0',
  `edit_office` char(64) DEFAULT NULL,
  `edit_all` tinyint(4) NOT NULL DEFAULT '0',
  `users` tinyint(4) NOT NULL DEFAULT '0',
  `pba` tinyint(4) NOT NULL DEFAULT '0',
  `motd` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES ('Med Mgr',NULL,1,NULL,1,0,1,0),('Mediator','80',0,'80',0,0,0,0),('OM',NULL,1,NULL,1,0,1,0),('default',NULL,1,NULL,1,0,1,0),('nocase','99',0,'99',0,0,0,0),('system',NULL,1,NULL,1,1,1,1);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_tickle`
--

DROP TABLE IF EXISTS `has_tickle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_tickle` (
  `case_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_tickle`
--

LOCK TABLES `has_tickle` WRITE;
/*!40000 ALTER TABLE `has_tickle` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_tickle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intakes`
--

DROP TABLE IF EXISTS `intakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intakes` (
  `intake_id` int(11) NOT NULL DEFAULT '0',
  `number` varchar(24) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cocounsel1` int(11) DEFAULT NULL,
  `cocounsel2` int(11) DEFAULT NULL,
  `office` char(3) DEFAULT NULL,
  `problem` char(3) DEFAULT NULL,
  `sp_problem` char(3) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `poten_conflicts` tinyint(4) NOT NULL DEFAULT '1',
  `conflicts` tinyint(4) DEFAULT NULL,
  `funding` varchar(4) DEFAULT NULL,
  `funding1` varchar(4) DEFAULT NULL,
  `funding2` varchar(4) DEFAULT NULL,
  `funding3` varchar(4) DEFAULT NULL,
  `undup` tinyint(4) DEFAULT NULL,
  `referred_by` char(3) DEFAULT NULL,
  `intake_type` char(3) DEFAULT NULL,
  `intake_user_id` int(11) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `doc_path` varchar(32) DEFAULT NULL,
  `income` decimal(9,2) DEFAULT NULL,
  `assets` decimal(9,2) DEFAULT NULL,
  `poverty` decimal(5,2) DEFAULT NULL,
  `eligd` tinyint(4) DEFAULT NULL,
  `just_income` char(3) DEFAULT NULL,
  `income_prospects` tinyint(4) DEFAULT NULL,
  `income_type0` char(3) DEFAULT NULL,
  `annual0` decimal(9,2) DEFAULT NULL,
  `income_type1` char(3) DEFAULT NULL,
  `annual1` decimal(9,2) DEFAULT NULL,
  `income_type2` char(3) DEFAULT NULL,
  `annual2` decimal(9,2) DEFAULT NULL,
  `income_type3` char(3) DEFAULT NULL,
  `annual3` decimal(9,2) DEFAULT NULL,
  `income_type4` char(3) DEFAULT NULL,
  `annual4` decimal(9,2) DEFAULT NULL,
  `asset_type0` char(3) DEFAULT NULL,
  `asset0` decimal(9,2) DEFAULT NULL,
  `asset_type1` char(3) DEFAULT NULL,
  `asset1` decimal(9,2) DEFAULT NULL,
  `asset_type2` char(3) DEFAULT NULL,
  `asset2` decimal(9,2) DEFAULT NULL,
  `asset_type3` char(3) DEFAULT NULL,
  `asset3` decimal(9,2) DEFAULT NULL,
  `asset_type4` char(3) DEFAULT NULL,
  `asset4` decimal(9,2) DEFAULT NULL,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `persons_helped` tinyint(4) DEFAULT NULL,
  `citizen` char(3) DEFAULT NULL,
  `citizen_check` tinyint(4) DEFAULT NULL,
  `noncitizentype` char(3) DEFAULT NULL,
  `noncitizendoc` char(3) DEFAULT NULL,
  `noncitizendocnum` varchar(50) DEFAULT NULL,
  `noncitizendocref` varchar(50) DEFAULT NULL,
  `client_age` char(3) DEFAULT '0',
  `dom_abuse` tinyint(4) DEFAULT NULL,
  `sex_assault` tinyint(4) DEFAULT NULL,
  `stalking` tinyint(4) DEFAULT NULL,
  `intake_notes` text,
  `source_db` varchar(16) DEFAULT NULL,
  `t1` tinyint(4) NOT NULL DEFAULT '0',
  `t2` tinyint(4) NOT NULL DEFAULT '0',
  `t3` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intake_id`),
  UNIQUE KEY `number` (`number`),
  KEY `client_id` (`client_id`),
  KEY `office` (`office`),
  KEY `problem` (`problem`),
  KEY `status` (`status`),
  KEY `funding` (`funding`),
  KEY `user_id` (`user_id`),
  KEY `cocounsel1` (`cocounsel1`),
  KEY `cocounsel2` (`cocounsel2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intakes`
--

LOCK TABLES `intakes` WRITE;
/*!40000 ALTER TABLE `intakes` DISABLE KEYS */;
/*!40000 ALTER TABLE `intakes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediation`
--

DROP TABLE IF EXISTS `mediation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediation` (
  `MediationCaseNumber` int(11) NOT NULL AUTO_INCREMENT,
  `DateOpened` datetime DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `CaseNumber` varchar(50) DEFAULT NULL,
  `SecondPartyName` varchar(50) DEFAULT NULL,
  `SecondPartyAddress` varchar(255) DEFAULT NULL,
  `SecondPartyCity` varchar(50) DEFAULT NULL,
  `SecondPartyState` varchar(50) DEFAULT NULL,
  `SecondPartyZip` varchar(50) DEFAULT NULL,
  `SecondPartyAreaCode` int(11) DEFAULT NULL,
  `SecondPartyPhone` varchar(30) DEFAULT NULL,
  `SecondPartyMobilePhone` varchar(30) DEFAULT NULL,
  `SecondPartyPhoneRef` varchar(25) DEFAULT NULL,
  `DateMediationCompleted` datetime DEFAULT NULL,
  `DateUpdated` datetime DEFAULT NULL,
  `MediatorEvaluation` tinyint(4) DEFAULT NULL,
  `Notes` longtext,
  `PrimaryMediator` int(11) DEFAULT NULL,
  `TypeOfDispute` varchar(100) DEFAULT NULL,
  `MaritalStatus` varchar(20) DEFAULT NULL,
  `SecondaryMediator` int(11) DEFAULT NULL,
  `SecondPartyFamily` tinyint(4) DEFAULT NULL,
  `SecondPartySenior` tinyint(4) DEFAULT NULL,
  `SecondPartyBusinessMerchant` tinyint(4) DEFAULT NULL,
  `SecondPartyLetterSent` tinyint(4) DEFAULT NULL,
  `SecondPartyLetterAcknowledged` tinyint(4) DEFAULT NULL,
  `MediationAgreementReceived` tinyint(4) DEFAULT NULL,
  `ConfidentialityReceived` tinyint(4) DEFAULT NULL,
  `MediationAgreementSecondPartyReceived` tinyint(4) DEFAULT NULL,
  `ConfidentialityReceivedSecondParty` tinyint(4) DEFAULT NULL,
  `WaiverReceived` tinyint(4) DEFAULT NULL,
  `SettlementAgreementAttached` tinyint(4) DEFAULT NULL,
  `ReferredOtherProgram` tinyint(4) DEFAULT NULL,
  `SoliciationLetter` tinyint(4) DEFAULT NULL,
  `EvaluationByClient` tinyint(4) DEFAULT NULL,
  `EvaluationBySecondParty` tinyint(4) DEFAULT NULL,
  `Outcome` varchar(255) DEFAULT NULL,
  `MediationAgreementSigned` tinyint(4) DEFAULT NULL,
  `ConfidentialitySigned` tinyint(4) DEFAULT NULL,
  `ConfidentialitySignedSecondParty` tinyint(4) DEFAULT NULL,
  `MediationAgreementSecondPartySigned` tinyint(4) DEFAULT NULL,
  `WaiverSigned` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`MediationCaseNumber`),
  KEY `case_id` (`case_id`),
  KEY `SecondPartyAreaCode` (`SecondPartyAreaCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediation`
--

LOCK TABLES `mediation` WRITE;
/*!40000 ALTER TABLE `mediation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_act_type`
--

DROP TABLE IF EXISTS `menu_act_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_act_type` (
  `value` char(1) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_order`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_act_type`
--

LOCK TABLES `menu_act_type` WRITE;
/*!40000 ALTER TABLE `menu_act_type` DISABLE KEYS */;
INSERT INTO `menu_act_type` VALUES ('N','Case Note',0),('L','OSR Data',1),('T','Time Slip',2),('K','Tickler',3),('C','Appointment',4);
/*!40000 ALTER TABLE `menu_act_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_annotate_activities`
--

DROP TABLE IF EXISTS `menu_annotate_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_annotate_activities` (
  `value` char(32) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_order`),
  KEY `label` (`label`),
  KEY `val` (`value`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_annotate_activities`
--

LOCK TABLES `menu_annotate_activities` WRITE;
/*!40000 ALTER TABLE `menu_annotate_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_annotate_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_annotate_cases`
--

DROP TABLE IF EXISTS `menu_annotate_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_annotate_cases` (
  `value` char(32) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_order`),
  KEY `label` (`label`),
  KEY `val` (`value`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_annotate_cases`
--

LOCK TABLES `menu_annotate_cases` WRITE;
/*!40000 ALTER TABLE `menu_annotate_cases` DISABLE KEYS */;
INSERT INTO `menu_annotate_cases` VALUES ('number','Case Number',0),('user_id','Primary Attorney ID',1),('close_code','Closing Code',10),('reject_code','Rejection Code',11),('poten_conflicts','Potential Conflicts Exist',12),('conflicts','Conflicts Exist',13),('funding','Funding Source Code',14),('undup','LSC Unduplicated Service',15),('cocounsel1','Co-counsel #1 ID',2),('cocounsel2','Co-counsel #2 ID',3),('office','Office Code',4),('problem','LSC Problem Code',5),('sp_problem','Special Problem Code',6),('status','Case Status',7),('open_date','Open Date',8),('close_date','Closing Date',9);
/*!40000 ALTER TABLE `menu_annotate_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_annotate_contacts`
--

DROP TABLE IF EXISTS `menu_annotate_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_annotate_contacts` (
  `value` char(32) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_order`),
  KEY `label` (`label`),
  KEY `val` (`value`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_annotate_contacts`
--

LOCK TABLES `menu_annotate_contacts` WRITE;
/*!40000 ALTER TABLE `menu_annotate_contacts` DISABLE KEYS */;
INSERT INTO `menu_annotate_contacts` VALUES ('102','102 Court/Hearing',0),('104','104 Deposition',1),('122','122 Prepare for',10),('612','612 Meeting',100),('630','630 Data Conversion',101),('124','124 Pre-litigation Work',11),('126','126 Review Document(s)',12),('128','128 Telephone Call',13),('130','130 Trial Preparation',14),('132','132 Trial',15),('134','134 Travel',16),('135','135 Case Acceptance',17),('136','136 Case Completion',18),('138','138 Email',19),('106','106 Draft',2),('142','142 Fax Documents',20),('143','143 Fax Cover Page',21),('150','150 Social Work',22),('1X0','1X0 Clt sent to Lgl Ed',23),('1X1','1X1 Clt recd Lgl Ed brochure',24),('1X5','1X5 Clt recd other Lgl Ed',25),('1X6','1X6 Clt ref to wrkshop/clinic',26),('1X8','1X8 Clt recd self-help matls',27),('1XB','1XB Clt recd other ProSe help',28),('1XC','1XC Clt refs to other CLS',29),('108','108 Edit & Revise',3),('1XD','1XD Clt refd to private bar',30),('1XE','1XE Clt refd to non-lgl svcs',31),('1XF','1XF Clt refd to other agency',32),('1XQ','1XQ Clt refd to mediation/ADR',33),('1XR','1XR Clt recd other lgl help',34),('202','202 Draft',35),('204','204 Meeting',36),('206','206 Misc',37),('208','208 Prepare for',38),('210','210 Research',39),('110','110 Interview',4),('212','212 Review',40),('214','214 Telephone Call',41),('216','216 Correspondence',42),('218','218 Email',43),('2X0','2X0 Presentation to group',44),('2X1','2X1 Radio spots or PSAs',45),('2X2','2X2 Lgl Ed matl on web',46),('2X3','2X3 Lgl Ed newsletter artic',47),('2X4','2X4 Lgl Ed video matls',48),('2X5','2X5 Lgl Ed - other',49),('112','112 Investigation',5),('2X6','2X6 Workshop/clinic',50),('2X7','2X7 Help desk at court',51),('2X8','2X8 Self-help matl - printed',52),('2X9','2X9 Self-help matl - web',53),('2XA','2XA Self-help matl - kiosk',54),('2XB','2XB Other Pro Se help',55),('2XC','2XC Refd - other CLS',56),('2XD','2XD Refd - private bar',57),('2XE','2XE Refd - non-lgl svcs',58),('2XF','2XF Refd - other assistance',59),('114','114 Legal Research',6),('2XG','2XG Published info notices',60),('2XH','2XH TV spots or PSAs',61),('2XJ','2XJ External newsletter(s)',62),('2XK','2XK Ref agreement w/other',63),('2XL','2XL \"How to Reach Us\" web',64),('2XM','2XM Other outreach',65),('2XN','2XN Lgl Ed for lay providers',66),('2XO','2XO Collaborative svcs',67),('2XP','2XP Other indirect svcs',68),('2XQ','2XQ Mediation/ADR service',69),('116','116 Letter',7),('2XR','2XR Other Matter',70),('302','302 Draft',71),('304','304 Meeting',72),('306','306 Misc',73),('308','308 Prepare for',74),('310','310 Telephone Call',75),('312','312 Email',76),('402','402 Bar Examination',77),('404','404 Bereavement',78),('406','406 Comp. Time from',79),('118','118 Meeting',8),('407','407 Holiday',80),('408','408 Jury Duty',81),('410','410 Parenthood',82),('412','412 Sick',83),('414','414 Vacation/Personal',84),('502','502 Advice & Counsel',85),('504','504 Brief Service',86),('506','506 Referral',87),('508','508 Schedule for appoint',88),('510','510 Other',89),('120','120 Misc',9),('601','601 Telephone Call',90),('602','602 Email',91),('603','603 Response to RFP',92),('604','604 Software Prep',93),('605','605 Analysis/Design',94),('606','606 Program/Test',95),('607','607 Implement',96),('608','608 Research',97),('609','609 Documentation',98),('610','610 Letter',99);
/*!40000 ALTER TABLE `menu_annotate_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_asset_type`
--

DROP TABLE IF EXISTS `menu_asset_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_asset_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_asset_type`
--

LOCK TABLES `menu_asset_type` WRITE;
/*!40000 ALTER TABLE `menu_asset_type` DISABLE KEYS */;
INSERT INTO `menu_asset_type` VALUES ('1','Checking',3),('10','Exempt - Vehicles',0),('11','Exempt - Home',1),('12','Exempt - Other',2),('2','Savings',4),('3','Trusts',7),('5','Real Property',6),('6','Other Assets',8),('7','Cash-on-hand',5),('9','No Assets',9);
/*!40000 ALTER TABLE `menu_asset_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_attorney_status`
--

DROP TABLE IF EXISTS `menu_attorney_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_attorney_status` (
  `value` char(1) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_order`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_attorney_status`
--

LOCK TABLES `menu_attorney_status` WRITE;
/*!40000 ALTER TABLE `menu_attorney_status` DISABLE KEYS */;
INSERT INTO `menu_attorney_status` VALUES ('0','N/A',0),('1','Staff',1),('2','Volunteer',2);
/*!40000 ALTER TABLE `menu_attorney_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_case_status`
--

DROP TABLE IF EXISTS `menu_case_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_case_status` (
  `value` char(1) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_case_status`
--

LOCK TABLES `menu_case_status` WRITE;
/*!40000 ALTER TABLE `menu_case_status` DISABLE KEYS */;
INSERT INTO `menu_case_status` VALUES ('1','Pending',0),('2','Accepted',1),('4','Transferred',3),('5','Accepted/PAI',2),('6','Not Served',4);
/*!40000 ALTER TABLE `menu_case_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_case_tabs`
--

DROP TABLE IF EXISTS `menu_case_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_case_tabs` (
  `value` char(8) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_case_tabs`
--

LOCK TABLES `menu_case_tabs` WRITE;
/*!40000 ALTER TABLE `menu_case_tabs` DISABLE KEYS */;
INSERT INTO `menu_case_tabs` VALUES ('act','Notes',2),('close','Close/Reopen',7),('conflict','Conflict',6),('custom','Seniors',4),('docs','Docs',3),('elig','Eligibility',0),('info','Case Info',1),('pb','Pro Bono',5);
/*!40000 ALTER TABLE `menu_case_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_case_tabs2`
--

DROP TABLE IF EXISTS `menu_case_tabs2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_case_tabs2` (
  `value` char(8) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_case_tabs2`
--

LOCK TABLES `menu_case_tabs2` WRITE;
/*!40000 ALTER TABLE `menu_case_tabs2` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_case_tabs2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_case_tabs_hrh`
--

DROP TABLE IF EXISTS `menu_case_tabs_hrh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_case_tabs_hrh` (
  `value` char(8) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_case_tabs_hrh`
--

LOCK TABLES `menu_case_tabs_hrh` WRITE;
/*!40000 ALTER TABLE `menu_case_tabs_hrh` DISABLE KEYS */;
INSERT INTO `menu_case_tabs_hrh` VALUES ('act','Notes',2),('close','Close/Reopen',8),('conflict','Conflict',1),('docs','Docs',4),('elig','Eligibility',3),('hrh','HRH',7),('info','Case Info',0),('pb','Pro Bono',5),('seniors','Seniors',6);
/*!40000 ALTER TABLE `menu_case_tabs_hrh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_case_tabs_med`
--

DROP TABLE IF EXISTS `menu_case_tabs_med`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_case_tabs_med` (
  `value` char(8) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `val` (`value`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_case_tabs_med`
--

LOCK TABLES `menu_case_tabs_med` WRITE;
/*!40000 ALTER TABLE `menu_case_tabs_med` DISABLE KEYS */;
INSERT INTO `menu_case_tabs_med` VALUES ('med','Mediation',0);
/*!40000 ALTER TABLE `menu_case_tabs_med` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_case_tabs_medmgr`
--

DROP TABLE IF EXISTS `menu_case_tabs_medmgr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_case_tabs_medmgr` (
  `value` char(8) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_case_tabs_medmgr`
--

LOCK TABLES `menu_case_tabs_medmgr` WRITE;
/*!40000 ALTER TABLE `menu_case_tabs_medmgr` DISABLE KEYS */;
INSERT INTO `menu_case_tabs_medmgr` VALUES ('act','Notes',2),('close','Close/Reopen',9),('conflict','Conflict',1),('docs','Docs',4),('elig','Eligibility',3),('hud','HUD',7),('info','Case Info',0),('med','Mediation',8),('pb','Pro Bono',5),('seniors','Seniors',6);
/*!40000 ALTER TABLE `menu_case_tabs_medmgr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_case_tabs_slh`
--

DROP TABLE IF EXISTS `menu_case_tabs_slh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_case_tabs_slh` (
  `value` char(8) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_case_tabs_slh`
--

LOCK TABLES `menu_case_tabs_slh` WRITE;
/*!40000 ALTER TABLE `menu_case_tabs_slh` DISABLE KEYS */;
INSERT INTO `menu_case_tabs_slh` VALUES ('act','Notes',2),('close','Close/Reopen',9),('conflict','Conflict',1),('docs','Docs',4),('elig','Eligibility',3),('hud','HUD',7),('info','Case Info',0),('med','Mediation',8),('pb','Pro Bono',5),('seniors','Seniors',6);
/*!40000 ALTER TABLE `menu_case_tabs_slh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_category`
--

DROP TABLE IF EXISTS `menu_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_category` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_category`
--

LOCK TABLES `menu_category` WRITE;
/*!40000 ALTER TABLE `menu_category` DISABLE KEYS */;
INSERT INTO `menu_category` VALUES ('AF','AF - Activity Funding',0),('AG','AG - Activity General',1),('AM','AM - Activity Management',2),('BL','BL - Bereavement Leave',10),('CL','CL - Comp Leave',6),('CS','CS - Case Related',3),('JL','JL - Jury Leave',11),('MO','MO - Matter Other',4),('OL','OL - Other Leave',14),('PL','PL - Personal Leave',9),('PS','PS - Program Services',5),('RL','RL - Bar Leave',12),('SL','SL - Sick Leave',7),('TL','TL - Parental Leave',13),('VL','VL - Vacation Leave',8);
/*!40000 ALTER TABLE `menu_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_citizen`
--

DROP TABLE IF EXISTS `menu_citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_citizen` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_citizen`
--

LOCK TABLES `menu_citizen` WRITE;
/*!40000 ALTER TABLE `menu_citizen` DISABLE KEYS */;
INSERT INTO `menu_citizen` VALUES ('A','Citizen',0),('B','Eligible Immigrant',1),('C','Undocumented Immigrant',2);
/*!40000 ALTER TABLE `menu_citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_close_code`
--

DROP TABLE IF EXISTS `menu_close_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_close_code` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_close_code`
--

LOCK TABLES `menu_close_code` WRITE;
/*!40000 ALTER TABLE `menu_close_code` DISABLE KEYS */;
INSERT INTO `menu_close_code` VALUES ('A','Counsel and Advice',0),('B','Limited Action',1),('F','Negot. Settlement (w/o Lit.)',2),('G','Negot. Settlement (w/ Lit.)',3),('H','Admin. Agency Decision',4),('IA','Uncontested Court Decision',5),('IB','Contested Court Decision',6),('IC','Appeals',7),('K','Other',8),('L','Extensive Service',9);
/*!40000 ALTER TABLE `menu_close_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_close_code_2007`
--

DROP TABLE IF EXISTS `menu_close_code_2007`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_close_code_2007` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_close_code_2007`
--

LOCK TABLES `menu_close_code_2007` WRITE;
/*!40000 ALTER TABLE `menu_close_code_2007` DISABLE KEYS */;
INSERT INTO `menu_close_code_2007` VALUES ('A','Counsel and Advice',0),('B','Brief Service',1),('C','Referred after Legal Assess.',2),('D','Insufficient Merit to Proceed',3),('E','Client Withdrew',4),('F','Negot. Settlement (w/o Lit.)',5),('G','Negot. Settlement (w/ Lit.)',6),('H','Admin. Agency Decision',7),('I','Court Decision',8),('J','Change in Eligibility Status',9),('K','Other',10);
/*!40000 ALTER TABLE `menu_close_code_2007` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_close_code_2008`
--

DROP TABLE IF EXISTS `menu_close_code_2008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_close_code_2008` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_close_code_2008`
--

LOCK TABLES `menu_close_code_2008` WRITE;
/*!40000 ALTER TABLE `menu_close_code_2008` DISABLE KEYS */;
INSERT INTO `menu_close_code_2008` VALUES ('A','Counsel and Advice',0),('B','Limited Action',1),('F','Negot. Settlement (w/o Lit.)',2),('G','Negot. Settlement (w/ Lit.)',3),('H','Admin. Agency Decision',4),('IA','Uncontested Court Decision',5),('IB','Contested Court Decision',6),('IC','Appeals',7),('K','Other',8),('L','Extensive Service',9);
/*!40000 ALTER TABLE `menu_close_code_2008` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_comparison`
--

DROP TABLE IF EXISTS `menu_comparison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_comparison` (
  `value` tinyint(4) NOT NULL DEFAULT '0',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_comparison`
--

LOCK TABLES `menu_comparison` WRITE;
/*!40000 ALTER TABLE `menu_comparison` DISABLE KEYS */;
INSERT INTO `menu_comparison` VALUES (1,'is blank',0),(2,'is NOT blank',1),(3,'!= (NOT Equal)',2),(4,'== (Equals)',3),(5,'> (Greater Than)',4),(6,'>= (Greater Than or Equal)',5),(7,'< (Less Than)',6),(8,'<= (Less Than or Equal)',7),(9,'Between',8);
/*!40000 ALTER TABLE `menu_comparison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_disabled`
--

DROP TABLE IF EXISTS `menu_disabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_disabled` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_disabled`
--

LOCK TABLES `menu_disabled` WRITE;
/*!40000 ALTER TABLE `menu_disabled` DISABLE KEYS */;
INSERT INTO `menu_disabled` VALUES ('1','Physical disability',0),('2','Mental disability',1),('3','Declined to provide',3),('4','Both categories',2);
/*!40000 ALTER TABLE `menu_disabled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_disposition`
--

DROP TABLE IF EXISTS `menu_disposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_disposition` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_disposition`
--

LOCK TABLES `menu_disposition` WRITE;
/*!40000 ALTER TABLE `menu_disposition` DISABLE KEYS */;
INSERT INTO `menu_disposition` VALUES ('11','Dismissed by Court',11),('12','Convicted: At Trial--Top Count',12),('13','Acquitted',13),('15','Convicted: At Trial--Lesser',15),('17','Extradited',17),('18','Conviction: By Plea-- Lesser',18),('28','Bench Warrant Issued',28),('31','ACD',31),('32','Relieved-LAS/18-B',32),('33','Relieved-Retained Counsel',33),('34','Transfered to different court',34),('35','Conviction: By Plea--Top Count',35),('36','Remand to Family Court',36),('37','Dismissed by Grand Jury',37),('38','Cut Slip Ordered',38),('39','Warrant Vacated',39),('40','Conflict Of Interest',40),('41','Dismissed by Prosecution',41),('42','Dismissed & Sealed',42),('43','Abated',43),('44','Hung Jury',44),('45','Consolidated',45),('46','Resentenced',46),('47','Resentenced to Probation',47),('48','Bench Trial-Guilty',48),('49','Bench Trial-Not Guilty',49),('50','Jury Trial-Guilty',50),('51','Jury Trial-Not Guilty',51),('52','No True Bill',52),('53','VOCD',53),('54','VOCD',54),('55','Relieved-Retained PVT. Counsel',55),('56','Dismissed-No True Bill',56),('57','D-730 EXAM',57),('58','Transferred to Family Court',58),('59','Probation Terminated',59);
/*!40000 ALTER TABLE `menu_disposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_doc_type`
--

DROP TABLE IF EXISTS `menu_doc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_doc_type` (
  `value` char(1) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_order`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_doc_type`
--

LOCK TABLES `menu_doc_type` WRITE;
/*!40000 ALTER TABLE `menu_doc_type` DISABLE KEYS */;
INSERT INTO `menu_doc_type` VALUES ('C','Case Files',0),('F','Forms',2);
/*!40000 ALTER TABLE `menu_doc_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_dom_viol`
--

DROP TABLE IF EXISTS `menu_dom_viol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_dom_viol` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_dom_viol`
--

LOCK TABLES `menu_dom_viol` WRITE;
/*!40000 ALTER TABLE `menu_dom_viol` DISABLE KEYS */;
INSERT INTO `menu_dom_viol` VALUES ('0','No',0),('1','Yes - Abuse to Female',1),('2','Yes - Abuse to Male',2),('3','Yes (Don\'t Use)',3);
/*!40000 ALTER TABLE `menu_dom_viol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_ethnicity`
--

DROP TABLE IF EXISTS `menu_ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_ethnicity` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_ethnicity`
--

LOCK TABLES `menu_ethnicity` WRITE;
/*!40000 ALTER TABLE `menu_ethnicity` DISABLE KEYS */;
INSERT INTO `menu_ethnicity` VALUES ('10','White',0),('20','Black',1),('30','Hispanic',2),('40','Native American',3),('50','Asian, Pacific Islander',4),('99','Other',6);
/*!40000 ALTER TABLE `menu_ethnicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_funding`
--

DROP TABLE IF EXISTS `menu_funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_funding` (
  `value` char(4) NOT NULL,
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_funding`
--

LOCK TABLES `menu_funding` WRITE;
/*!40000 ALTER TABLE `menu_funding` DISABLE KEYS */;
INSERT INTO `menu_funding` VALUES ('1000','1000 - LSC/IOLTA/EA',0),('1002','1002 - Asian Legal Svcs Outreach',1),('1003','1003 - Grant Union High School',2),('1004','1004 - Irmas Fellowship',3),('1005','1005 - T Clinkenbeard Clinic',4),('1008','1008 - Regents of UC Davis',5),('1009','1009 - HPRP Sacramento',6),('2001','2001 - City of Woodland',7),('2002','2002 - Yolo County Housing Authority',8),('2003','2003 - A4AA - Yolo',9),('2005','2005 - Equal Justice Works Fellow',10),('2006','2006 - HPRP Yolo',11),('2007','2007 - CW Foreclosure Prevention',12),('2008','2008 - Yolo EAP Partnership',13),('2009','2009 - A4AA Information & Assistance',14),('2010','2010 - Davis CDBG',15),('3001','3001 - A3AA',16),('3003','3003 - Butte Ct Dispute Resolution Pr',17),('3004','3004 - City of Chico CDBG',18),('3005','3005 - Chico Fair Housing',19),('3006','3006 - Butte Superior Court Pro Per',20),('3007','3007 - Elder Abuse Training',21),('3008','3008 - Guardianship',22),('3009','3009 - Butte Pro Per Mediation',23),('3010','3010 - CT UD Mediation',24),('4001','4001 - A4AA - Placer, Nevada Sierra County',25),('4003','4003 - Alpine Superior Court Pro Per',26),('4004','4004 - Calaveras Superior Court Pro Per',27),('4005','4005 - El Dorado Superior Court Pro Per',28),('4006','4006 - Amador Small Claims',29),('4007','4007 - Placer Small Claims',30),('4008','4008 - Calaveras Small Claims',31),('4009','4009 - El Dorado Small Claims',32),('4010','4010 - Placer County Disability',33),('4011','4011 - United Auburn Indian Community',34),('4012','4012 - HPRP Placer',35),('4013','4013 - HPRP Nevada',36),('4091','4091 - A4AA Placer County Community Ed',37),('4092','4092 - A4AA Nevada County Community Ed',38),('4093','4093 - A4AA Sierra County Community Ed',39),('4094','4094 - A4AA Sierra County Legal Representation',40),('4095','4095 - A4AA Sierra County Legal Assistance',41),('4096','4096 - A4AA Placer Legal Representation',42),('4097','4097 - A4AA Nevada Legal Representation',43),('4098','4098 - Nevada Legal Assistance',44),('5001','5001 - Shasta Small Claims',45),('5002','5002 - Shasta County Superior Ct Self Help',46),('5003','5003 - Shasta Equal Access  Pro Per',47),('5004','5004 - Redding Fair Housing Wkshp',48),('5006','5006 - A2AA  Legal',49),('5007','5007 - A2AA  Grandparents',50),('5009','5009 - A2AA Grandparents OTO',51),('5011','5011 - HPRP Trinity',52),('5012','5012 - Ca Bar Foundation-LIAP',53),('5013','5013 - Shasta Faces',54),('6001','6001 - LSC - TIG',55),('6002','6002- CA Endowment (BHCLS Trng)',56),('6030','6030 - Fundraising',57),('6101','6101 - HICAP State',58),('6111','6111 - A2AA  HICAP Med Mgmt',59),('6151','6151 - A2AA  Omb IIIB',60),('6201','6201 - Self Advocacy Housing',61),('6202','6202 - Self Advocacy Health Care & In',62),('6204','6204 - DERA',63),('8001','8001 - A4AA Sacramento Seniors Legal',64),('8002','8002 - A4AA Sacramento Seniors Legal OTO',65),('8003','8003 - A4AA Grandparents',66),('8004','8004 - A4AA Grandparents OTO',67),('8005','8005 - State of California',68),('8006','8006 - SETA FSS',69),('8007','8007 - SETA Safety Net',70),('8008','8008 - Pension Counseling',71),('8010','8010 - SLH Food Stamp Outreach',72),('8011','8011 -Sutter',73),('8012','8012 - Financial Planning',74),('8013','8013 - AT&T Foundation',75),('8014','8014 - WTLS Foreclosure',76),('8015','8015 - Dispute Resolution',77),('8016','8016 - NCOA-HECM',78),('8017','8017 -Borchard Foundation',79),('8018','8018 - Vitamin',80),('8019','8019 - AOA Earmark',81),('8020','8020 - CCPF',82),('8021','8021 - HUD Counseling',83),('8023','8023 - WTLS Legal',84),('8024','8024 - SETA Stimulus',85),('8025','8025 - AOA Model Approaches',86),('8026','8026 - HUD HECM',87),('8027','8027 - HUD Loan Doc Review',88),('8028','8028 - Sierra Health Foundation',89),('8029','8029 - RCAC',90),('8030','8030 - LAV',91),('8031','8031 - Unity Council',92),('8032','8032 - CDPH',93),('8033','8033 - CalHFA Counseling',94),('8034','8034 - HUD Foreclosure',95),('8090','8090 - SLH Unrestricted',96),('9001','9001 - A28AA Legal',97),('9002','9002 - Solano Equal Access Pro Per',98),('9003','9003 - Marin Fair Housing',99),('9004','9004 - Bay Area United Way',100),('9101','9101 - A1AA',101),('9103','9103 - HPRP Eureka',102),('9201','9201 - Ukiah Equal Access Pro Per',103),('9202','9202 - HPRP Ukiah',104),('9250','9250 - Ukiah Fire',105),('9501','9501 - California Endowment',106),('9502','9502 - Hmong',107),('9503','9503 - DMHC OPA',108),('9504','9504 - Wellness Foundation',109),('9505','9505 - Sierra Health Foundation',110),('9506','9506 - Health Consumer Alliance',111),('9507','9507 - CHCF',112),('9508','9508 - IOU Project',113),('9509','9509 - Health Policy',114),('9510','9510 - BHC',115),('9801','9801 - V - LSNC',116),('9802','9802 - Ca State Bar Trust',117),('9803','9803 - Equal Access',118),('9804','9804 - V - Sac County Bar Assoc',119),('9805','9805 - V - Superior Ct Self Help Center',120),('9806','9806 - V - County of Sacramento DHA',121),('9807','9807 - V - SETA',122),('9830','9830 - Van Loben Sels General',123),('9831','9831 - VLSP',124),('9832','9832 - Wells Fargo Foundation',125),('9941','9941 - LRS',126),('9942','9942 - LSNC allocation to VLSP',127),('9943','9943 - SLH Archstone Foundation',127),('9944','9944 - ML Van Loben Sels',127),('9945','9945 - Shasta Regional Community Foundation',127),('9946','9946 - Asian Resources',127),('9947','9947 - United Way - Solano',127),('9948','9948 - United Way - Placer / Sacto JCNI',127),('9949','9949 - HUD',127),('9950','9950 - Lawyers 4 Civil Justice',127),('9951','9951 - MAN',127),('9952','9952 - Great Valley Ctr II',127),('9953','9953 - Blue Shield',127),('9954','9954 - Boys & Girls Club - Dreams',127),('9955','9955 - Ukiah CCPF',127),('9956','9956 - Calaveras Human Resource Counc',127),('9957','9957 - ML - Pro Per Project (EAP)',127),('9958','9958 - Sr. Hotline PUC',127),('9959','9959 - Sr. Hotline Selnik',127),('9960','9960 - DERA - CAP Writ',127),('9961','9961 - Redding Van Loben Sels',127),('9962','9962 - CSBG - Placer',127),('9963','9963 - Roseville (Placer) Homeless',127),('9964','9964 - FosterCare/SSI',127),('9965','9965 - CDBG - Roseville',127),('9966','9966 - City of Redding CDBG',127),('9967','9967 - Catholic HealthCare West',127),('9968','9968 - Berkeley Law Foundation',127),('9969','9969 - Great Valley Center',127),('9970','9970 - SWBC (Sac)',127),('9971','9971 - Borchard Foundation',127),('9972','9972 - NAPIL',127),('9973','9973 - SSA',127),('9974','9974 - Mendocino SHP',127),('9975','9975 - SLH - Tobacco',127),('9976','9976 - Administration on Aging',127),('9977','9977 - SLH - CA Endow',127),('9978','9978 - State Bar Foundation',127),('9979','9979 - SLH - Van Loben Foundation',127),('9980','9980 - CA Wellness - Grandparents',127),('9981','9981 - SVOC CA Endow II',127),('9982','9982 - Liman Fellow',127),('9983','9983 - Ca Endowment Fund',127),('9984','9984 - SLH Dispute Resolution',127),('9985','9985 - ML Sac Regional Comm Fdtn',127),('9986','9986 - SLH Taper Foundation',127),('9987','9987 - SLH Jams Foundation',127),('9988','9988 - Chico BCBH',127),('9989','9989 - VLSP EA Partnership',127),('9998','9998 - Unrestricted Funds',127);
/*!40000 ALTER TABLE `menu_funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_funding1`
--

DROP TABLE IF EXISTS `menu_funding1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_funding1` (
  `value` char(4) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE,
  KEY `val` (`value`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_funding1`
--

LOCK TABLES `menu_funding1` WRITE;
/*!40000 ALTER TABLE `menu_funding1` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_funding1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_funding2`
--

DROP TABLE IF EXISTS `menu_funding2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_funding2` (
  `value` char(4) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE,
  KEY `val` (`value`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_funding2`
--

LOCK TABLES `menu_funding2` WRITE;
/*!40000 ALTER TABLE `menu_funding2` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_funding2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_funding3`
--

DROP TABLE IF EXISTS `menu_funding3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_funding3` (
  `value` char(4) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE,
  KEY `val` (`value`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_funding3`
--

LOCK TABLES `menu_funding3` WRITE;
/*!40000 ALTER TABLE `menu_funding3` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_funding3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_gender`
--

DROP TABLE IF EXISTS `menu_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_gender` (
  `value` char(1) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_gender`
--

LOCK TABLES `menu_gender` WRITE;
/*!40000 ALTER TABLE `menu_gender` DISABLE KEYS */;
INSERT INTO `menu_gender` VALUES ('F','Female',0),('M','Male',1),('X','Male to Female',3),('Y','Female to Male',2);
/*!40000 ALTER TABLE `menu_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hispanic`
--

DROP TABLE IF EXISTS `menu_hispanic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hispanic` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hispanic`
--

LOCK TABLES `menu_hispanic` WRITE;
/*!40000 ALTER TABLE `menu_hispanic` DISABLE KEYS */;
INSERT INTO `menu_hispanic` VALUES ('A','Hispanic',0),('B','Non-Hispanic',1),('C','Declined to provide',2);
/*!40000 ALTER TABLE `menu_hispanic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_actor`
--

DROP TABLE IF EXISTS `menu_hrh_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_actor` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` varchar(50) NOT NULL DEFAULT '',
  `menu_order` int(3) NOT NULL DEFAULT '0',
  `groups` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_actor`
--

LOCK TABLES `menu_hrh_actor` WRITE;
/*!40000 ALTER TABLE `menu_hrh_actor` DISABLE KEYS */;
INSERT INTO `menu_hrh_actor` VALUES ('0','Other',0,'0'),('1','PCP',1,'1'),('10','Other',10,'1'),('100','Healthy Families',100,'16'),('101','AIM',101,'16'),('102','PCP',102,'17'),('103','Medical Group',103,'17'),('104','Insurer/TPA',104,'17'),('105','Health Plan',105,'17'),('106','Medi-Cal/HCO',106,'17'),('107','Medicare/Social Secu',107,'17'),('108','Other',108,'17'),('109','Healthy Families',109,'17'),('11','CHAMPUS',11,'2'),('110','Dentist',110,'17'),('111','PCP',111,'18'),('112','Specialist',112,'18'),('113','Dentist',113,'18'),('114','Medical Group',114,'18'),('115','Health Plan',115,'18'),('116','Pharmacy',116,'18'),('117','CMISP',117,'18'),('118','Medi-Cal',118,'18'),('119','Healthy Families',119,'18'),('12','Medi-Cal/GMC',12,'2'),('120','AIM',120,'18'),('121','MRMIP',121,'18'),('122','Other',122,'18'),('123','Hospital',123,'18'),('124','PCP',124,'19'),('125','Health Plan',125,'19'),('126','Specialist',126,'19'),('127','Dentist',127,'19'),('128','Medical Group',128,'19'),('129','Other',129,'19'),('13','Medicare',13,'2'),('130','Pharmacy',130,'19'),('131','CMISP',131,'19'),('132','AIM',132,'19'),('133','Medi-Cal',133,'19'),('134','Healthy Families',134,'19'),('135','MRMIP',135,'19'),('136','Insurer/TPA',136,'19'),('137','Employer',137,'20'),('138','Health Plan',138,'20'),('139','Insurer/TPA',139,'20'),('14','MRMIP',14,'2'),('140','Private',140,'14'),('141','PCP',141,'21'),('142','Specialist',142,'21'),('143','Dentist',143,'21'),('144','Rehab',144,'21'),('145','Hospital',145,'21'),('146','Medical Group',146,'21'),('147','Health Plan',147,'21'),('148','Ancillary Provider',148,'21'),('149','Out of Plan Provider',149,'21'),('15','Private',15,'2'),('150','Other',150,'21'),('151','Pharmacy',151,'21'),('152','PCP',152,'22'),('153','Specialist',153,'22'),('154','Dentist',154,'22'),('155','Rehab',155,'22'),('156','Hospital',156,'22'),('157','Medical Group',157,'22'),('158','Health Plan',158,'22'),('159','Ancillary Provider',159,'22'),('16','Practice Full',16,'3'),('160','Out of Plan Provider',160,'22'),('161','Other',161,'22'),('162','Pharmacy',162,'22'),('163','Dental Plan',163,'22'),('164','PCP',164,'23'),('165','Specialist',165,'23'),('166','Dentist',166,'23'),('167','Rehab',167,'23'),('168','Hospital',168,'23'),('169','Medical Group',169,'23'),('17','Unavailable in Netwo',17,'3'),('170','Health Plan',170,'23'),('171','Ancillary Provider',171,'23'),('172','Out of Plan Provider',172,'23'),('173','Other',173,'23'),('174','Pharmacy',174,'23'),('175','Dental Plan',175,'23'),('176','CMISP',176,'23'),('177','PCP',177,'24'),('178','Specialist',178,'24'),('179','Dentist',179,'24'),('18','Does Not Take Payer',18,'3'),('180','Rehab',180,'24'),('181','Hospital',181,'24'),('182','Medical Group',182,'24'),('183','Health Plan',183,'24'),('184','Ancillary Provider',184,'24'),('185','Out of Plan Provider',185,'24'),('186','Other',186,'24'),('187','Medicare',187,'1'),('188','Can\'t Get Referral',188,'3'),('189','Dental Plan',189,'5'),('19','Other',19,'3'),('190','CMISP',190,'15'),('191','Dental Plan',191,'18'),('194','Barton Memorial',194,'26'),('195','Kaiser',195,'26'),('196','Marshall',196,'26'),('197','Mercy',197,'26'),('198','Methodist',198,'26'),('199','Sutter',199,'26'),('2','Specialist',2,'1'),('20','Health Plan',20,'4'),('200','UCDMC',200,'26'),('201','Woodland Memorial',201,'26'),('202','AIM',202,'27'),('203','CMISP',203,'27'),('204','Healthy Families',204,'27'),('205','Medi-Cal',205,'27'),('206','Medicare',206,'27'),('207','MRMIP',207,'27'),('208','TRICARE',208,'27'),('209','CCS',209,'27'),('21','Medical Group',21,'4'),('210','Dental Plan',210,'28'),('211','Health Plan',211,'28'),('212','Mental Health Plan',212,'28'),('213','Allied Health',213,'29'),('214','Ancillary Provider',214,'29'),('215','Dentist',215,'29'),('216','Hospital',216,'29'),('217','Medical Group',217,'29'),('218','Mental Health Provid',218,'29'),('219','Out-of-Plan Provider',219,'29'),('22','PCP',22,'4'),('220','Pharmacy',220,'29'),('221','Primary Care Provide',221,'29'),('222','Specialist',222,'29'),('224','Employer Group',224,'30'),('225','Individual',225,'30'),('226','Vision Plan',226,'28'),('228','Blank',228,'0'),('23','PCP',23,'5'),('230','Other Actor',230,'31'),('24','Medical Group',24,'5'),('243','Copayment',243,'25'),('244','Share of Cost',244,'25'),('245','Reached Maximum',245,'25'),('246','Premium',246,'25'),('248','Deductible',248,'25'),('249','Cost of Service',249,'25'),('25','Insurer/TPA',25,'5'),('250','Medicare D LIS/SSA',250,'27'),('251','Medicare D LIS/Count',251,'27'),('252','Medicare Savings Pro',252,'27'),('253','Prescription Drug Pl',253,'28'),('254','Social Security',254,'27'),('26','Health Plan',26,'5'),('27','Insurer/TPA',27,'6'),('28','Health Plan',28,'6'),('29','Employer',29,'6'),('30','Internal to Plan',30,'7'),('31','External to Plan',31,'7'),('32','Network',32,'8'),('33','H. Plan',33,'8'),('34','Dentist',34,'1'),('35','Dentist',35,'5'),('36','Copayment',36,'9'),('37','Deductible',37,'9'),('38','Premium',38,'9'),('39','Reached Maximum',39,'9'),('4','Rehab',4,'1'),('40','Terminated By Provid',40,'3'),('41','Other',41,'9'),('42','Health Care Options',42,'2'),('43','Specialist',43,'5'),('44','Healthy Families',44,'2'),('45','Medi-Cal',45,'1'),('46','Dental Plan',46,'1'),('47','Share of Cost',47,'9'),('48','Pharmacy',48,'1'),('49','AIM',49,'2'),('5','Hospital',5,'1'),('50','HIPAA',50,'2'),('51','Pharmacy',51,'5'),('52','Healthy Families',52,'6'),('53','PCP',53,'10'),('54','Medical Group',54,'10'),('55','Insurer/TPA',55,'10'),('56','Health Plan',56,'10'),('57','Medi-Cal/HCO',57,'10'),('58','Medicare/Social Secu',58,'10'),('59','Other',59,'10'),('6','Medical Group',6,'1'),('60','PCP',60,'12'),('61','Specialist',61,'12'),('62','Dentist',62,'12'),('63','Rehab',63,'12'),('64','Ancillary Provider',64,'12'),('65','Mental Health Provid',65,'12'),('66','Other',66,'12'),('67','Primary Care Physici',67,'13'),('68','Primary Care Dentist',68,'13'),('69','Medi-Cal',69,'14'),('7','Health Plan',7,'1'),('70','CMISP',70,'14'),('71','AIM',71,'14'),('72','Healthy Families',72,'14'),('73','Medicare',73,'14'),('74','CHAMPUS',74,'14'),('75','MRMIP',75,'14'),('76','CMISP',76,'1'),('77','CMISP',77,'5'),('78','CMISP',78,'4'),('79','Medi-Cal',79,'4'),('8','Ancillary Provider',8,'1'),('80','Healthy Families',80,'1'),('81','AIM',81,'1'),('82','MRMIP',82,'1'),('83','Medi-Cal',83,'5'),('84','Healthy Families',84,'5'),('85','AIM',85,'5'),('86','MRMIP',86,'5'),('87','Cost of Service',87,'9'),('88','HIPAA',88,'15'),('89','Medi-Cal/HCO',89,'15'),('9','Out-of-Plan Provider',9,'1'),('90','Medicare/Social Secu',90,'15'),('91','Other',91,'15'),('92','Private',92,'15'),('93','Healthy Families',93,'15'),('94','AIM',94,'15'),('95','CHAMPUS',95,'16'),('96','Medi-Cal/HCO',96,'16'),('97','Medicare',97,'16'),('98','MRMIP',98,'16'),('99','Private',99,'16');
/*!40000 ALTER TABLE `menu_hrh_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_employer_type`
--

DROP TABLE IF EXISTS `menu_hrh_employer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_employer_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_employer_type`
--

LOCK TABLES `menu_hrh_employer_type` WRITE;
/*!40000 ALTER TABLE `menu_hrh_employer_type` DISABLE KEYS */;
INSERT INTO `menu_hrh_employer_type` VALUES ('1','Private <2 employees',13),('10','Government - State/Local',16),('11','In School/Child',15),('12','Refused',5),('13','Retired',3),('14','Unemployed',2),('15','Unknown',1),('16','N/A',14),('2','Private 2-19 employees',8),('3','Private 20-49 employees',10),('4','Private 50-99 employees',6),('5','Private 100-499 employees',11),('6','Private 500-999 employees',7),('7','Private 1000+ employees',12),('8','Religous',4),('9','Government - Federal',17);
/*!40000 ALTER TABLE `menu_hrh_employer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_follow_up`
--

DROP TABLE IF EXISTS `menu_hrh_follow_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_follow_up` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_follow_up`
--

LOCK TABLES `menu_hrh_follow_up` WRITE;
/*!40000 ALTER TABLE `menu_hrh_follow_up` DISABLE KEYS */;
INSERT INTO `menu_hrh_follow_up` VALUES ('1','Yes-Day',1),('2','Yes-Eve',2),('3','No',4),('4','N/A',5),('5','Yes-NP',3);
/*!40000 ALTER TABLE `menu_hrh_follow_up` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_health_cond`
--

DROP TABLE IF EXISTS `menu_hrh_health_cond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_health_cond` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_health_cond`
--

LOCK TABLES `menu_hrh_health_cond` WRITE;
/*!40000 ALTER TABLE `menu_hrh_health_cond` DISABLE KEYS */;
INSERT INTO `menu_hrh_health_cond` VALUES ('13','Cancer - All Other',6),('15','Dental Conditions',13),('16','Refused',40),('18','Injuries/Poisoning',30),('2','Cancer - Lung',8),('20','Respiratory Conditions',41),('21','Preventive Care',39),('23','Pregnancy',38),('24','Skin Conditions',43),('25','Alcohol and Drug Abuse',1),('26','Gynecological Conditions',23),('3','Infectious Diseases (not HIV/AIDS)',29),('30','Vision Conditions',49),('32','High Blood Pressure',26),('33','Cancer - Breast',7),('34','HIV/AIDS',27),('35','Digestive Conditions',17),('36','Diabetes',16),('37','Epilepsy',21),('39','Mental Health Conditions',32),('4','Heart Conditions',25),('40','Musculoskeletal Conditions',33),('42','Stroke',44),('44','Other',37),('45','Unknown',47),('48','Neurological Conditions',35),('49','Birth Defects',3),('5','Hearing Impairment',24),('50','Connective Tissue Conditions',12),('51','Endocrine, Immunology',20),('52','Surgical Procedures/Other Invasive',45),('53','Urinary Tract Conditions',48),('54','Eating Disorders',18),('55','No Condition',36),('56','Undiagnosed Condition',46),('58','Allergy Conditions',2),('6','Cancer - Prostate',9),('60','Blood Conditions',5),('61','Developmental Disability',15),('62','N/A',34),('63','Circulatory Conditions',11),('64','Gastrointestinal Conditions',22),('65','Kidney Conditions',31),('66','Developmental Conditions',14),('67','Endocrine and Metabolic Conditions',19),('68','Immunologic Conditions',28),('69','Rheumatological Condtions',42),('9','Childbirth Complications',10),('99','Blank',4);
/*!40000 ALTER TABLE `menu_hrh_health_cond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_health_plan`
--

DROP TABLE IF EXISTS `menu_hrh_health_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_health_plan` (
  `value` varchar(4) NOT NULL DEFAULT '',
  `label` varchar(50) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  `agency_id` varchar(10) NOT NULL DEFAULT '',
  `agency_type` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_health_plan`
--

LOCK TABLES `menu_hrh_health_plan` WRITE;
/*!40000 ALTER TABLE `menu_hrh_health_plan` DISABLE KEYS */;
INSERT INTO `menu_hrh_health_plan` VALUES ('1','Aetna Health of California',1,'000010','PLN'),('10','Community Care Network (CCN)',10,'000011','PLN'),('100','Secure Horizons Direct Premier 200 (FFS)',100,'007009','MPD'),('101','Secure Horizons Part B Only',101,'007010','MPD'),('102','WHA Care+',102,'007011','MPD'),('103','N/A',103,'N/A','N/A'),('104','Aetna Medicare Rx Essentials',104,'006000','PDP'),('105','Aetna Medicare Rx Plus',105,'006001','PDP'),('106','Aetna Medicare Rx Premier',106,'006002','PDP'),('107','Blue Cross MedicareRx Gold',107,'006005','PDP'),('108','Blue Cross MedicareRx Plus',108,'006004','PDP'),('109','Blue Cross MedicareRx Value',109,'006003','PDP'),('11','Core Source',11,'000012','PLN'),('110','Blue Shield Medicare Rx Plan-001',110,'006006','PDP'),('111','Blue Shield Medicare Rx Plan-002',111,'006007','PDP'),('112','CIGNAture Rx Complete Plan',112,'006010','PDP'),('113','CIGNAture Rx Plus Plan',113,'006009','PDP'),('114','CIGNAture Rx Value Plan',114,'006008','PDP'),('115','Coventry AdvantraRx Premier',115,'006012','PDP'),('116','Coventry AdvantraRx Premier Plus',116,'006013','PDP'),('117','Coventry AdvantraRx Value',117,'006011','PDP'),('118','Health Net Orange-002',118,'006015','PDP'),('119','Health Net Orange-008',119,'006014','PDP'),('12','FEHBP - APWU (American Postal Workers Union)',12,'000051','PLN'),('120','Humana PDP Complete',120,'006018','PDP'),('121','Humana PDP Enhanced',121,'006017','PDP'),('122','Humana PDP Standard',122,'006016','PDP'),('123','Marquette National Life Prescription Pathway Gold',123,'006020','PDP'),('124','Marquette National Life Prescription Pathway Plati',124,'006021','PDP'),('125','Marquette National Life Prescription Pathway Silve',125,'006019','PDP'),('126','MedCo YOURx Plan',126,'006022','PDP'),('127','Member Health Community Care Rx Basic',127,'006023','PDP'),('128','Member Health Community Care Rx Choice',127,'006024','PDP'),('129','Member Health Community Care Rx Gold',127,'006025','PDP'),('13','FEHBP - GEHA (Government Employees Hospital Associ',13,'000052','PLN'),('130','Other PDP',127,'006047','PDP'),('131','PacifiCare Comprehensive Plan',127,'006028','PDP'),('132','PacifiCare Saver Plan',127,'006026','PDP'),('133','PacifiCare Select Plan',127,'006027','PDP'),('134','Pennsylvania Life Prescription Pathway Bronze',127,'006029','PDP'),('135','Pennsylvania Life Prescription Pathway Gold',127,'006031','PDP'),('136','Pennsylvania Life Prescription Pathway Silver',127,'006030','PDP'),('137','Rx America Advantage Freedom Plan',127,'006033','PDP'),('138','Rx America Advantage Star Plan',127,'006032','PDP'),('139','SierraRx',127,'006034','PDP'),('14','FEHBP - Mail Handlers',14,'000053','PLN'),('140','SilverScript',127,'006035','PDP'),('141','SilverScript Plus',127,'006036','PDP'),('142','UA Medicare Part D Prescription Drug Coverage',127,'006040','PDP'),('143','Unicare Medicare Rx Rewards',127,'006037','PDP'),('144','Unicare Medicare Rx Rewards Plus',127,'006038','PDP'),('145','Unicare Medicare Rx Rewards Premier',127,'006039','PDP'),('146','United Health AARP MedicareRx Plan',127,'006042','PDP'),('147','United Health Medicare MedAdvance',127,'006043','PDP'),('148','United HealthRx',127,'006041','PDP'),('149','WellCare Complete',127,'006046','PDP'),('15','FEHBP - NALC (National Association of Letter Carri',15,'000054','PLN'),('150','WellCare Premier',127,'006045','PDP'),('151','WellCare Signature',127,'006044','PDP'),('152','California Vision Foundation',127,'001072','VIS'),('153','Eyexam 2000 of California, Inc.(Lens Crafters)',127,'000990','VIS'),('154','Foundation Health Systems',127,'001010','VIS'),('155','NVAL Visioncare Systems of California, Inc.',127,'001020','VIS'),('156','Other Vision Plan',127,'001071','VIS'),('157','Vision Plan of America',127,'001050','VIS'),('158','Vision Service Plan',127,'001060','VIS'),('159','Visioncare of California (Sterling Visioncare)',127,'001070','VIS'),('16','FEHBP - Other',16,'000057','PLN'),('17','FEHBP - Postmaster',17,'000056','PLN'),('18','FHP/Take Care',18,'000055','PLN'),('19','First Health',19,'000070','PLN'),('2','Blue Cross of California',2,'000030','PLN'),('20','First Health Group Corporation',20,'000070','PLN'),('21','Foundation Health Systems',21,'000060','PLN'),('22','Great West Health Care',22,'000067','PLN'),('23','Guardian',23,'000013','PLN'),('24','Health Net of California',24,'000090','PLN'),('25','Interplan Corp.',25,'000110','PLN'),('26','Kaiser Foundation Health Plan',26,'000100','PLN'),('27','Lifeguard, Inc.',27,'000120','PLN'),('28','Marshall Medical Plan',28,'000123','PLN'),('29','Maxicare',29,'000125','PLN'),('3','Blue Cross/Blue Shield PPO',3,'000035','PLN'),('30','Mega Health Plan',30,'000126','PLN'),('31','Midwest Life Insurance Company of TN',31,'000127','PLN'),('32','Molina Healthcare, Inc.',32,'000140','PLN'),('33','Mutual of Omaha',33,'000014','PLN'),('34','Nationwide Health Plans',34,'000021','PLN'),('35','Omni Healthcare',35,'000150','PLN'),('36','Other Health Plan',36,'000211','PLN'),('37','Pacific Foundation for Medical Care',37,'000080','PLN'),('38','Pacific Health Alliance',38,'000170','PLN'),('39','Pacific Health Care Systems (PHCS)',39,'000016','PLN'),('4','Blue Shield of California',4,'000040','PLN'),('40','PacifiCare of California',40,'000160','PLN'),('41','Partnership HealthPlan of California',41,'000175','PLN'),('42','Preferred Health Network',42,'000180','PLN'),('43','Principal Life Insurance Company',43,'000184','PLN'),('44','Prudential Health Care',44,'000190','PLN'),('45','Refused',45,'REF','PLN'),('46','Strategic Resource Company',46,'000015','PLN'),('47','Tri West',47,'000065','PLN'),('48','United Healthcare',48,'000130','PLN'),('49','Unknown',49,'UNK','PLN'),('5','BPS Healthcare',5,'000020','PLN'),('50','Western Health Advantage',50,'000210','PLN'),('51','Worker\'s Compensation',51,'000209','PLN'),('52','CIGNA Behavioral Care of California',52,'000640','BHN'),('53','CMG Behavioral Health of California, Inc.',53,'000620','BHN'),('54','El Dorado County Mental Health Plan',54,'000625','BHN'),('55','Foundation Health Systems',55,'000630','BHN'),('56','Merit Behavioral Healthcare',56,'000650','BHN'),('57','Other Behavioral Health Plan',57,'000691','BHN'),('58','PacifiCare Behavioral Health',58,'000660','BHN'),('59','Placer County Mental Health Plan',59,'000662','BHN'),('6','California Advantage, Inc.',6,'000025','PLN'),('60','Sacramento County Mental Health Plan',60,'000664','BHN'),('61','United Behavioral Health Plan',61,'000670','BHN'),('62','Value Behavioral Health',62,'000680','BHN'),('63','Vista Behavioral Health Plans',63,'000690','BHN'),('64','Yolo County Mental Health Plan',64,'000695','BHN'),('65','Access Dental Plan',65,'000700','DEN'),('66','Aetna Dental of California, Inc.',66,'000720','DEN'),('67','Alternative Dental Care',67,'000730','DEN'),('68','Assurant Employee Benefits',68,'000850','DEN'),('69','Blue Cross Dental Services (Wellpoint)',69,'000950','DEN'),('7','CaliforniaKids Healthcare Foundation',7,'000027','PLN'),('70','California Dental - see PacifiCare Dental & Vision',70,'000760','DEN'),('71','CIGNA Dental PPO',71,'000771','DEN'),('72','Community Dental Services',72,'000780','DEN'),('73','Delta Dental Plan',73,'000810','DEN'),('74','Dental Benefit Providers of California, Inc.',74,'000820','DEN'),('75','First Dental Health',75,'000931','DEN'),('76','HealthDent of California, Inc.',76,'000860','DEN'),('77','Jaimini Health, Inc.',77,'000860','DEN'),('78','Liberty Dental Plan of California',78,'000870','DEN'),('79','MetLife',79,'000891','DEN'),('8','Care 1st Health Plan',8,'000208','PLN'),('80','Other Dental Plan',80,'000961','DEN'),('81','Pacific Union Dental, Inc.',81,'000910','DEN'),('82','PacifiCare Dental and Vision',82,'001025','DEN'),('83','Preventive Dental Systems, Inc.',83,'000920','DEN'),('84','Primecare Dental Plan',84,'000930','DEN'),('85','Safeguard Dental',85,'000840','DEN'),('86','SafeGuard Health Plan',86,'000935','DEN'),('87','United Concordia',87,'000900','DEN'),('88','United Dental Care',88,'000940','DEN'),('89','Western Dental Services, Inc.',89,'000960','DEN'),('9','CIGNA Healthcare',9,'000050','PLN'),('90','BC Freedom Blue I (PPO)',90,'007000','MPD'),('91','BC Freedom Blue II (PPO)',91,'007001','MPD'),('92','Blue Cross Smart Value Classic (FFS)',92,'007002','MPD'),('93','Blue Cross Smart Value Plus (FFS)',93,'007003','MPD'),('94','Health Net Seniority Plus',94,'007004','MPD'),('95','Kaiser Senior Advantage',95,'007005','MPD'),('96','Other MA-PD',96,'007012','MPD'),('97','Secure Horizons Classic',97,'007006','MPD'),('98','Secure Horizons Direct 1',98,'007007','MPD'),('99','Secure Horizons Direct 2 (FFS)',99,'007008','MPD');
/*!40000 ALTER TABLE `menu_hrh_health_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_health_status`
--

DROP TABLE IF EXISTS `menu_hrh_health_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_health_status` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_health_status`
--

LOCK TABLES `menu_hrh_health_status` WRITE;
/*!40000 ALTER TABLE `menu_hrh_health_status` DISABLE KEYS */;
INSERT INTO `menu_hrh_health_status` VALUES ('1','Excellent',1),('2','Very Good',2),('3','Good',3),('4','Fair',4),('5','Poor',5),('6','Refused',6),('8','Unknown',7),('9','N/A',8);
/*!40000 ALTER TABLE `menu_hrh_health_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_hospital`
--

DROP TABLE IF EXISTS `menu_hrh_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_hospital` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_hospital`
--

LOCK TABLES `menu_hrh_hospital` WRITE;
/*!40000 ALTER TABLE `menu_hrh_hospital` DISABLE KEYS */;
INSERT INTO `menu_hrh_hospital` VALUES ('1','Adventist Health Hospital',1),('10','Mercy General Hospital',11),('11','Mercy Hospital of Folsom',12),('12','Mercy San Juan Hospital',13),('13','Methodist Hospital of Sacramento',14),('14','Sacramento County Mental Health Center',15),('15','Shriners Hospitals for Children',16),('16','Sierra Nevada Hospital',17),('17','Sierra Vista Hospital',18),('18','Sutter Auburn Faith Hospital',19),('19','Sutter Davis Hospital',20),('2','Barton Memorial Hospital',2),('20','Sutter General Hospital',21),('21','Sutter Memorial Hospital',22),('22','Sutter Roseville Hospital',23),('23','Tahoe Forest Hospital',24),('24','UC Davis Med Center',25),('25','Woodland Memorial Hospital',26),('26','Other Hospital',27),('27','Kaiser Out of Area',7),('28','Out of Area Hospital',28),('29','Unknown',29),('3','Heritage Oaks Hospital',3),('30','',30),('4','Kaiser-Roseville',4),('5','Kaiser-Sacramento',5),('6','Kaiser-South Sacramento',6),('7','Kindred Hospital - Folsom',8),('8','Lodi Memorial Hospital',9),('9','Marshall Hospital',10);
/*!40000 ALTER TABLE `menu_hrh_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_income_source`
--

DROP TABLE IF EXISTS `menu_hrh_income_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_income_source` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_income_source`
--

LOCK TABLES `menu_hrh_income_source` WRITE;
/*!40000 ALTER TABLE `menu_hrh_income_source` DISABLE KEYS */;
INSERT INTO `menu_hrh_income_source` VALUES ('1','Unknown',1),('2','Loans',2),('3','Refugee Assistance',3),('A','Employment',4),('B','CalWorks',5),('C','General Assistance',6),('D','Social Security (disability or retirement)',7),('E','Supplemental Security Income (SSI)',8),('F','Disability (private)',9),('G','Retirement (private)',10),('I','Retirement (public)',11),('N','None',12),('O','Unemployment',13),('P','Worker\'s Compensation',14),('S','Child Support/Spousal Support',15),('T','Other',16),('U','Refused',17),('V','Veteran\'s Benefits',18),('W','Investments',19),('X','Savings',20),('Y','SDI (State Disability Insurance)',21),('z','N/A',22);
/*!40000 ALTER TABLE `menu_hrh_income_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_issue`
--

DROP TABLE IF EXISTS `menu_hrh_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_issue` (
  `value` varchar(5) NOT NULL DEFAULT '',
  `label` varchar(60) NOT NULL DEFAULT '',
  `menu_order` int(3) NOT NULL DEFAULT '0',
  `groups` varchar(50) NOT NULL DEFAULT '',
  `show_subject` tinyint(3) NOT NULL DEFAULT '0',
  `Old_Value` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_issue`
--

LOCK TABLES `menu_hrh_issue` WRITE;
/*!40000 ALTER TABLE `menu_hrh_issue` DISABLE KEYS */;
INSERT INTO `menu_hrh_issue` VALUES ('001','Appointment Time Too Long Wait',1,'(\'28\',\'29\')',1,'A1'),('002','Authorization Delay',2,'(\'27\',\'28\',\'29\')',1,'A2'),('003','Authorized Care Not Scheduled',3,'(\'27\',\'28\',\'29\')',1,'A3'),('004','Affordability',4,'(\'25\')',1,'A4'),('005','Difficulty Changing Plans, Group or Provider',5,'(\'27\',\'28\',\'29\')',0,'A5'),('006','Disability Access Problem',6,'(\'27\',\'28\',\'29\')',0,'A6'),('007','Disenrollment or Terminated for Cause',7,'(\'28\',\'29\')',0,'A7'),('008','Lack of In-Person Telephone Accessibility',8,'(\'27\',\'28\',\'29\')',0,'A10'),('009','Language Barrier',9,'(\'27\',\'28\',\'29\')',1,'A11'),('010','Medical Records Access',10,'(\'29\')',0,'A12'),('011','Difficulty Finding a Provider',11,'(\'29\')',1,'A19'),('012','Billing Problem',12,'(\'28\',\'29\')',1,'C3'),('013','Premium Concerns',13,'(\'27\',\'28\',\'30\')',1,'C5'),('014','Slow Payment',14,'(\'28\',\'29\')',1,'C6'),('015','Fraudulent Billing',15,'(\'28\',\'29\')',1,'C9'),('016','Finding a Provider',16,'(\'29\')',1,'CE2'),('017','Choosing a Health Plan',17,'(\'28\')',0,'CE3'),('018','Care/Treatment/Facilities Inappropriate or Inadequate',18,'(\'29\')',1,'CS1'),('019','Care - Diagnosis Inappropriate',19,'(\'29\')',1,'CS2'),('020','Care - Denial',20,'(\'27\',\'28\',\'29\')',1,'CS3'),('021','Care - Inappropriate Facility Discharge',21,'(\'28\',\'29\')',1,'CS4'),('022','Care/Service - Communication/Courtesy Problem',22,'(\'27\',\'28\',\'29\')',1,'CS5'),('023','Care/Service - Slow Response to Any Inquiries',23,'(\'27\',\'28\',\'29\')',1,'CS6'),('024','Care/Service - Cultural Barrier',24,'(\'27\',\'28\',\'29\')',1,'CS8'),('025','Care/Service - Continuity of Care',25,'(\'27\',\'28\',\'29\')',1,'CS9'),('026','Procedural Problems',26,'(\'27\',\'28\',\'30\')',0,'E10'),('027','Afraid to Apply',27,'(\'27\')',0,'E2'),('028','Application Denied',28,'(\'27\',\'30\')',0,'E3'),('029','Application Processing Delayed',29,'(\'27\',\'30\')',0,'E4'),('030','Continuation Coverage',30,'(\'28\',\'30\')',0,'E5'),('031','Consumer Not Screened for Coverage',31,'(\'26\')',0,'E6'),('032','Eligibility Terminated or Proposed for Termination',32,'(\'27\',\'30\')',0,'E7'),('033','Confidentiality',33,'(\'27\',\'28\',\'29\')',1,'M2'),('034','Transportation Problem',34,'',1,'A14'),('035','Inaccurate Plan Information',35,'',0,'A15'),('036','Other Access Issue',36,'',0,'A16'),('037','Liens/Accident Payments',37,'',1,'C 4'),('038','Other Billing Issue',38,'',0,'C 7'),('039','Coordination of Benefits',39,'',1,'C 8'),('040','Hotline/Program Services',40,'',0,'CE 1'),('041','Patient Education',41,'',0,'CE 4'),('042','Health Care Policy & Politics',42,'',0,'CE 5'),('043','Other Consumer Education Issue',43,'',0,'CE 6'),('044','Coverage Options',44,'',0,'CE 8'),('045','Other Care or Service Issue',45,'',0,'CS 7'),('046','Other Eligibility Issue',46,'',0,'E 1'),('047','Inter-County Transfer Problem',47,'',0,'E 8'),('048','Medi-Cal/Healthy Families Disconnect',48,'',0,'E 9'),('049','Other Inappropriate Issue',49,'',0,'I 1'),('050','Non-Health Care Related',50,'',0,'I 2'),('051','Out-of-Area',51,'',0,'I 3'),('052','Other Health Related',52,'',0,'I 4'),('053','Provider Inquiry/Complaint',53,'',0,'I 5'),('054','Other Miscellaneous Issue',54,'',0,'M 1'),('055','Long Term Care Insurance',55,'',0,'M 4'),('056','Duplicate/Reassigned',56,'',0,'M 5'),('057','Workers\' Compensation',57,'',0,'M 6'),('058','Systemic Issue',58,'',0,'M 7'),('059','Complaint about Regulator/Agency',59,'',0,'M 8'),('060','Call Back Incomplete',60,'',0,'M 9'),('061','Organization Inquiry',61,'',0,'M10'),('062','Issue Resolved',62,'',0,'M11'),('063','GA to SSI',63,'',0,'M12');
/*!40000 ALTER TABLE `menu_hrh_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_issue_bak`
--

DROP TABLE IF EXISTS `menu_hrh_issue_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_issue_bak` (
  `value` varchar(5) NOT NULL DEFAULT '',
  `label` varchar(60) NOT NULL DEFAULT '',
  `menu_order` int(3) NOT NULL DEFAULT '0',
  `groups` varchar(50) NOT NULL DEFAULT '',
  `show_subject` tinyint(3) NOT NULL DEFAULT '0',
  `Old_Value` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_issue_bak`
--

LOCK TABLES `menu_hrh_issue_bak` WRITE;
/*!40000 ALTER TABLE `menu_hrh_issue_bak` DISABLE KEYS */;
INSERT INTO `menu_hrh_issue_bak` VALUES ('001','Appointment Time Too Long Wait',0,'',0,NULL),('002','Authorization Delay',1,'',0,NULL),('003','Authorized Care Not Scheduled',2,'',0,NULL),('004','Affordability',3,'',0,NULL),('005','Difficulty Changing Plans, Group or Provider',4,'',0,NULL),('006','Disability Access Problem',5,'',0,NULL),('007','Disenrollment or Terminated for Cause',6,'',0,NULL),('008','Lack of In-Person Telephone Accessibility',7,'',0,NULL),('009','Language Barrier',8,'',0,NULL),('010','Medical Records Access',9,'',0,NULL),('011','Difficulty Finding a Provider',10,'',0,NULL),('012','Billing Problem',11,'',0,NULL),('013','Premium Concerns',12,'',0,NULL),('014','Slow Payment',13,'',0,NULL),('015','Fraudulent Billing',14,'',0,NULL),('016','Finding a Provider',15,'',0,NULL),('017','Choosing a Health Plan',16,'',0,NULL),('018','Care/Treatment/Facilities Inappropriate or Inadequate',17,'',0,NULL),('019','Care - Diagnosis Inappropriate',18,'',0,NULL),('020','Care - Denial',19,'',0,NULL),('021','Care - Inappropriate Facility Discharge',20,'',0,NULL),('022','Care/Service - Communication/Courtesy Problem',21,'',0,NULL),('023','Care/Service - Slow Response to Any Inquiries',22,'',0,NULL),('024','Care/Service - Cultural Barrier',23,'',0,NULL),('025','Care/Service - Continuity of Care',24,'',0,NULL),('026','Procedural Problems',25,'',0,NULL),('027','Afraid to Apply',26,'',0,NULL),('028','Application Denied',27,'',0,NULL),('029','Application Processing Delayed',28,'',0,NULL),('030','Continuation Coverage',29,'',0,NULL),('031','Consumer Not Screened for Coverage',30,'',0,NULL),('032','Eligibility Terminated or Proposed for Termination',31,'',0,NULL),('033','Confidentiality',32,'',0,NULL),('034','Transportation Problem',33,'',0,NULL),('035','Inaccurate Plan Information',34,'',0,NULL),('036','Other Access Issue',35,'',0,NULL),('037','Liens/Accident Payments',36,'',0,NULL),('038','Other Billing Issue',37,'',0,NULL),('039','Coordination of Benefits',38,'',0,NULL),('040','Hotline/Program Services',39,'',0,NULL),('041','Patient Education',40,'',0,NULL),('042','Health Care Policy & Politics',41,'',0,NULL),('043','Other Consumer Education Issue',42,'',0,NULL),('044','Coverage Options',43,'',0,NULL),('045','Other Care or Service Issue',44,'',0,NULL),('046','Other Eligibility Issue',45,'',0,NULL),('047','Inter-County Transfer Problem',46,'',0,NULL),('048','Medi-Cal/Healthy Families Disconnect',47,'',0,NULL),('049','Other Inappropriate Issue',48,'',0,NULL),('050','Non-Health Care Related',49,'',0,NULL),('051','Out-of-Area',50,'',0,NULL),('052','Other Health Related',51,'',0,NULL),('053','Provider Inquiry/Complaint',52,'',0,NULL),('054','Other Miscellaneous Issue',53,'',0,NULL),('055','Long Term Care Insurance',54,'',0,NULL),('056','Duplicate/Reassigned',55,'',0,NULL),('057','Workers\' Compensation',56,'',0,NULL),('058','Systemic Issue',57,'',0,NULL),('059','Complaint about Regulator/Agency',58,'',0,NULL),('060','Call Back Incomplete',59,'',0,NULL),('061','Organization Inquiry',60,'',0,NULL),('062','Issue Resolved',61,'',0,NULL),('063','GA to SSI',62,'',0,'M12');
/*!40000 ALTER TABLE `menu_hrh_issue_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_med_group`
--

DROP TABLE IF EXISTS `menu_hrh_med_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_med_group` (
  `value` varchar(4) NOT NULL DEFAULT '',
  `label` varchar(50) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  `agency_id` varchar(10) NOT NULL DEFAULT '',
  `agency_type` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_med_group`
--

LOCK TABLES `menu_hrh_med_group` WRITE;
/*!40000 ALTER TABLE `menu_hrh_med_group` DISABLE KEYS */;
INSERT INTO `menu_hrh_med_group` VALUES ('1','Direct Network (Health Net)',1,'000212','GRP'),('10','Permanente Medical Group',10,'000240','GRP'),('11','Refused',11,'REF','GRP'),('12','River City Medical Group',12,'000235','GRP'),('13','Sacramento Family Medical Clinic',13,'000237','GRP'),('14','Sacramento Family Medical Group',14,'005005','GRP'),('15','Sutter Independent Physicians',15,'000250','GRP'),('16','Sutter Medical Group',16,'000260','GRP'),('17','Sutter West Medical Group',17,'000270','GRP'),('18','UC Davis Medical Group',18,'000280','GRP'),('19','University Faculty Medical Associates',19,'000290','GRP'),('2','FPA Medical Management',2,'000215','GRP'),('20','Unknown',20,'UNK','GRP'),('21','Woodland Clinic Medical Group',21,'000300','GRP'),('3','Golden State Physicians Medical Group',3,'000218','GRP'),('4','Hill Physicians Medical Group',4,'000220','GRP'),('5','Marshall/El Dorado PHO',5,'000365','GRP'),('6','Mercy Medical Group',6,'000230','GRP'),('7','Molina Medical Centers',7,'000232','GRP'),('8','N/A',8,'N/A','N/A'),('9','Other Medical Group',9,'000301','GRP');
/*!40000 ALTER TABLE `menu_hrh_med_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_medi_cal_type`
--

DROP TABLE IF EXISTS `menu_hrh_medi_cal_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_medi_cal_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_medi_cal_type`
--

LOCK TABLES `menu_hrh_medi_cal_type` WRITE;
/*!40000 ALTER TABLE `menu_hrh_medi_cal_type` DISABLE KEYS */;
INSERT INTO `menu_hrh_medi_cal_type` VALUES ('1','1931(b)',1),('10','CHDP Gateway',10),('11','Express Enrollment',11),('12','Family Pact',12),('13','Federal Poverty Level for Aged & Disabled',13),('14','Federal Poverty Level for Children',14),('15','Foster Care',16),('16','Home & Community Based Waiver Program',17),('17','Long Term Care',19),('18','MC/HF Bridge',20),('19','Medically Needy/Indigent',33),('2','250% Working Disabled',2),('20','Medicare Savings Programs (QMB/SLMB/Q1-1)',23),('21','Minor Consent',24),('22','Other',25),('23','Other Special Programs (Dialysis, TPN & TB)',26),('24','Presumptive (disabled/pregnant)',27),('25','Qualified Disabled Working',28),('26','Refugee Medical Assistance',29),('27','Transitional/Continuing',30),('28','Unknown',32),('29','Federal Poverty Level for Pregnant Women',15),('3','Accelerated Enrollment',3),('30','IHSS',18),('31','Pending Reserved',31),('32','Medically Needy',22),('33','Medically Indigent',21),('4','Adoption Assistance Program',4),('5','Aged, Blind, or Disabled',5),('6','Breast & Cervical Cancer Treatment Program',6),('7','cash related: (TANF/CalWorks)',7),('8','cash related: CAPI',8),('9','cash related: SSI',9);
/*!40000 ALTER TABLE `menu_hrh_medi_cal_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_outcome`
--

DROP TABLE IF EXISTS `menu_hrh_outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_outcome` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_outcome`
--

LOCK TABLES `menu_hrh_outcome` WRITE;
/*!40000 ALTER TABLE `menu_hrh_outcome` DISABLE KEYS */;
INSERT INTO `menu_hrh_outcome` VALUES ('1','Problem resolved',1),('2','Received all or some of the information they needed',2),('3','Ability to get health care improved',3);
/*!40000 ALTER TABLE `menu_hrh_outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_paytype`
--

DROP TABLE IF EXISTS `menu_hrh_paytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_paytype` (
  `label` varchar(30) NOT NULL DEFAULT '',
  `value` char(3) NOT NULL DEFAULT '',
  `menu_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_paytype`
--

LOCK TABLES `menu_hrh_paytype` WRITE;
/*!40000 ALTER TABLE `menu_hrh_paytype` DISABLE KEYS */;
INSERT INTO `menu_hrh_paytype` VALUES ('Veteran\'s Benefits','0',0),('Medi-Cal','1',1),('COBRA','10',10),('CMISP','11',11),('Healthy Families','12',12),('MRMIP','13',13),('N/A','14',14),('CCS','15',15),('Student Group','16',16),('Family PACT','17',17),('California Kids','18',18),('AIM','19',19),('Medicare','2',2),('CHDP','20',20),('Medicare Part A','21',21),('Medicare Part B','22',22),('Medicare Part D','23',23),('Medicare LIS','24',24),('Medicare Savings Program','25',25),('Indian Health Services','26',26),('CMSP','27',27),('YCHIP','28',28),('MCSP','29',29),('Employer - Insured','3',3),('Health Kids','30',30),('Kaiser Child Health','31',31),('PCIP','32',32),('Employer - Self-insured','4',4),('TRICARE','5',5),('Individual','6',6),('PERS','7',7),('Uninsured','8',8),('STRS','9',9);
/*!40000 ALTER TABLE `menu_hrh_paytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_pcodes`
--

DROP TABLE IF EXISTS `menu_hrh_pcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_pcodes` (
  `Issuenum` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(60) NOT NULL DEFAULT '',
  `value` varchar(5) NOT NULL DEFAULT '',
  `grouper` char(3) NOT NULL DEFAULT '',
  `grouper2` char(3) NOT NULL DEFAULT '',
  `new` char(2) NOT NULL DEFAULT '',
  `visible` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Issuenum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_pcodes`
--

LOCK TABLES `menu_hrh_pcodes` WRITE;
/*!40000 ALTER TABLE `menu_hrh_pcodes` DISABLE KEYS */;
INSERT INTO `menu_hrh_pcodes` VALUES ('1','Appointment Time Too Long Wait','A 1','28','','0',1),('10','Affordability','A 4','25','','0',1),('100','Care/Service - Slow Response to Any Inquiries','CS 6','29','','1',1),('101','Other Care or Service Issue','CS 7','','','1',0),('102','Other Health Related','I 4','','','1',0),('103','Provider Inquiry/Complaint','I 5','','','1',0),('104','Transportation Problem (Non-Health Related)','I 6','','','1',0),('105','Other Miscellaneous Issue','M 1','','','1',0),('106','Confidentiality','M 2','29','','1',1),('107','Fee-for-Service Matters','M 3','','','1',0),('108','Long Term Care Insurance','M 4','','','1',0),('109','Duplicate/Reassigned','M 5','','','1',0),('11','Difficulty Changing Plans, Group or Provider','A 5','29','','0',1),('110','Non-Health Care Related','I 2','','','1',0),('111','Workers\' Compensation','M 6','','','1',0),('112','Other Inappropriate Issue','I 1','','','1',0),('113','Out-of-Area','I 3','','','1',0),('114','Other Consumer Education Issue','CE 6','0','','1',0),('115','Systemic Issue','M 7','','','1',0),('12','Disability Access Problem','A 6','29','','0',1),('121','Complaint about Regulator/Agency','M 8','','','1',0),('122','Call Back Incomplete','M 9','','','1',0),('123','Cultural or Racial Barriers','CS 8','29','','1',1),('124','Organization Inquiry','M10','','','1',0),('125','Continuation Coverage','A17','','','0',0),('126','Continuation Coverage','A17','','','1',0),('129','Eligibility Problem','U 4','28','','1',1),('130','Brief Service and Referrals Only','CE 7','0','','0',0),('131','Brief Service and Referrals Only','CE 7','0','','1',0),('132','Medical Care Referral','U 5','','','1',0),('133','Billing Problem','U 3','','','1',0),('134','Affordability','U 2','','','1',0),('135','Other','U 1','','','1',0),('14','Lack of In-Person Telephone Accessibility','A10','29','','0',1),('15','Language Barrier','A11','28','','0',1),('16','Medical Records Access','A12','29','','0',1),('17','Primary Care Provider - Lack of Availability or Consumer Can','A13','','','0',0),('18','Transportation Problem','A14','','','0',0),('19','Inaccurate Plan Information','A15','','','0',0),('2','Authorization Delay','A 2','27','','0',1),('20','Other Access Issue','A16','','','0',0),('21','Marketing/Solicitation Improper','B 3','','','0',0),('22','Other Benefits or Coverage Issue','B 4','','','0',0),('23','Balance Billing','C 2','','','0',0),('24','Billing Problem','C 3','29','','0',1),('25','Liens/Accident Payments','C 4','','','0',0),('26','Premium Concerns','C 5','27','','0',1),('27','Slow Payment','C 6','29','','0',1),('28','Other Billing Issue','C 7','','','0',0),('29','Hotline/Program Services','CE 1','0','','0',0),('3','Authorized Care Not Scheduled','A 3','28','','0',1),('30','Finding a Provider','CE 2','29','','0',1),('31','Choosing a Health Plan','CE 3','28','','0',0),('32','Patient Education','CE 4','0','','0',0),('33','Health Care Policy & Politics','CE 5','0','','0',0),('34','Care/Treatment/Facilities Inappropriate or Inadequate','CS 1','29','','0',1),('35','Care - Diagnosis Inappropriate','CS 2','29','','0',1),('36','Care - Inappropriate Facility Discharge','CS 4','29','','0',1),('37','Care/Service - Communication/Courtesy Problem','CS 5','29','','0',1),('371009','Appointment Time Too Long Wait','A 1','29','','0',1),('371010','Appointment Time Too Long Wait','A 1','29','','1',1),('371011','Authorization Delay','A 2','28','','0',1),('371012','Authorization Delay','A 2','28','','1',1),('371013','Authorization Delay','A 2','29','','0',1),('371014','Authorization Delay','A 2','29','','1',1),('371015','Authorized Care Not Scheduled','A 3','29','','0',1),('371016','Authorized Care Not Scheduled','A 3','27','','1',1),('371017','Authorized Care Not Scheduled','A 3','27','','0',1),('371018','Authorized Care Not Scheduled','A 3','28','','1',1),('371019','Difficulty Changing Plans, Group or Provider','A 5','27','','0',1),('371020','Difficulty Changing Plans, Group or Provider','A 5','27','','1',1),('371021','Difficulty Changing Plans, Group or Provider','A 5','28','','0',1),('371022','Difficulty Changing Plans, Group or Provider','A 5','28','','1',1),('371023','Disability Access Problem','A 6','27','','0',1),('371024','Disability Access Problem','A 6','27','','1',1),('371025','Disability Access Problem','A 6','28','','0',1),('371026','Disability Access Problem','A 6','28','','1',1),('371027','Disenrollment or Terminated for Cause','A 7','29','','0',1),('371028','Disenrollment or Terminated for Cause','A 7','29','','1',1),('371029','Lack of In-Person Telephone Accessibility','A10','27','','0',1),('371030','Lack of In-Person Telephone Accessibility','A10','27','','1',1),('371031','Lack of In-Person Telephone Accessibility','A10','28','','0',1),('371032','Lack of In-Person Telephone Accessibility','A10','28','','1',1),('371033','Language Barrier','A11','27','','0',1),('371034','Language Barrier','A11','27','','1',1),('371035','Language Barrier','A11','29','','0',1),('371036','Language Barrier','A11','29','','1',1),('371037','Language Barrier','A11','29','','0',1),('371038','Language Barrier','A11','29','','1',1),('371043','Slow Payment','C 6','28','','0',1),('371044','Slow Payment','C 6','28','','1',1),('371045','Premium Concerns','C 5','30','','0',1),('371046','Premium Concerns','C 5','30','','1',1),('371047','Care - Denial','CS 3','27','','0',1),('371048','Care - Denial','CS 3','27','','1',1),('371049','Care - Denial','CS 3','28','','0',1),('371050','Care - Denial','CS 3','28','','1',1),('371051','Care - Inappropriate Facility Discharge','CS 4','28','','0',1),('371052','Care - Inappropriate Facility Discharge','CS 4','28','','1',1),('371053','Care/Service - Communication/Courtesy Problem','CS 5','27','','0',1),('371054','Care/Service - Communication/Courtesy Problem','CS 5','27','','1',1),('371055','Care/Service - Communication/Courtesy Problem','CS 5','28','','0',1),('371056','Care/Service - Communication/Courtesy Problem','CS 5','28','','1',1),('371057','Care/Service - Slow Response to Any Inquiries','CS 6','27','','0',1),('371058','Care/Service - Slow Response to Any Inquiries','CS 6','27','','1',1),('371061','Cultural or Racial Barriers','CS 8','27','','0',1),('371062','Cultural or Racial Barriers','CS 8','27','','1',1),('371063','Care/Service - Slow Response to Any Inquiries','CS 6','28','','0',1),('371064','Care/Service - Slow Response to Any Inquiries','CS 6','28','','1',1),('371067','Cultural or Racial Barriers','CS 8','28','','0',1),('371068','Cultural or Racial Barriers','CS 8','28','','1',1),('371069','Confidentiality','M 2','27','','0',1),('371070','Confidentiality','M 2','27','','1',1),('371071','Confidentiality','M 2','28','','0',1),('371072','Confidentiality','M 2','28','','1',1),('371073','Difficulty Finding a Provider','A19','29','','0',1),('371074','Difficulty Finding a Provider','A19','29','','1',1),('371075','Coordination of Benefits','C 8','','','0',0),('371076','Coordination of Benefits','C 8','','','1',0),('371077','Fraudulent Billing','C 9','28','','0',1),('371078','Fraudulent Billing','C 9','28','','1',1),('371079','Fraudulent Billing','C 9','29','','0',1),('371080','Fraudulent Billing','C 9','29','','1',1),('371081','Coverage Options','CE 8','','','0',0),('371082','Coverage Options','CE 8','','','1',0),('371083','Other Eligibility Issue','E 1','','','0',0),('371084','Other Eligibility Issue','E 1','','','1',0),('371085','Afraid to Apply','E 2','27','','0',1),('371086','Afraid to Apply','E 2','27','','1',1),('371087','Application Denied','E 3','27','','0',1),('371088','Application Denied','E 3','27','','1',1),('371089','Application Denied','E 3','30','','0',1),('371090','Application Denied','E 3','30','','1',1),('371091','Application Processing Delayed','E 4','27','','0',1),('371092','Application Processing Delayed','E 4','27','','1',1),('371093','Application Processing Delayed','E 4','30','','0',1),('371094','Application Processing Delayed','E 4','30','','1',1),('371095','Continuation Coverage','E 5','28','','0',1),('371096','Continuation Coverage','E 5','28','','1',1),('371097','Continuation Coverage','E 5','30','','0',1),('371098','Continuation Coverage','E 5','30','','1',1),('371099','Consumer Not Screened for Coverage','E 6','26','','0',1),('371100','Consumer Not Screened for Coverage','E 6','26','','1',1),('371101','Eligibility Terminated or Proposed for Termination','E 7','27','','0',1),('371102','Eligibility Terminated or Proposed for Termination','E 7','27','','1',1),('371103','Eligibility Terminated or Proposed for Termination','E 7','30','','0',1),('371104','Eligibility Terminated or Proposed for Termination','E 7','30','','1',1),('371105','Inter-County Transfer Problem','E 8','','','0',0),('371106','Inter-County Transfer Problem','E 8','','','1',0),('371107','Medi-Cal/Healthy Families Disconnect','E 9','','','0',0),('371108','Medi-Cal/Healthy Families Disconnect','E 9','','','1',0),('371109','Procedural Problems','E10','27','','0',1),('371110','Procedural Problems','E10','27','','1',1),('371111','Procedural Problems','E10','30','','0',1),('371112','Procedural Problems','E10','30','','1',1),('371113','Issue Resolved','M11','','','0',0),('371114','Issue Resolved','M11','','','1',0),('371115','Appointment Time Too Long Wait','A 1','1','','0',0),('371116','Appointment Time Too Long Wait','A 1','1','','1',0),('371117','Authorization Delay','A 2','5','','0',0),('371118','Authorization Delay','A 2','5','','1',0),('371119','Authorized Care Not Scheduled','A 3','1','','0',0),('371120','Authorized Care Not Scheduled','A 3','1','','1',0),('371121','Affordability','A 4','9','','0',0),('371122','Affordability','A 4','9','','1',0),('371123','Difficulty Changing Plans, Group or Provider','A 5','17','','0',1),('371124','Difficulty Changing Plans, Group or Provider','A 5','17','','1',1),('371125','Disability Access Problem','A 6','1','','0',0),('371126','Disability Access Problem','A 6','1','','1',0),('371127','Disenrollment or Terminated for Cause','A 7','16','','0',0),('371128','Disenrollment or Terminated for Cause','A 7','16','','1',0),('371129','Eligibility Problem','A 8','15','','0',1),('371130','Eligibility Problem','A 8','15','','1',1),('371131','Lack of Specialist Availability','A 9','3','','0',0),('371132','Lack of Specialist Availability','A 9','3','','1',0),('371133','Lack of In-Person Telephone Accessibility','A10','1','','0',0),('371134','Lack of In-Person Telephone Accessibility','A10','1','','1',0),('371135','Language Barrier','A11','18','','0',0),('371136','Language Barrier','A11','18','','1',0),('371137','Medical Records Access','A12','21','','0',1),('371138','Medical Records Access','A12','21','','1',1),('371139','Primary Care Provider - Lack of Availability or Consumer Can','A13','3','','0',0),('371140','Primary Care Provider - Lack of Availability or Consumer Can','A13','3','','1',0),('371141','Transportation Problem','A14','1','','0',0),('371142','Transportation Problem','A14','1','','1',0),('371143','Inaccurate Plan Information','A15','19','','0',1),('371144','Inaccurate Plan Information','A15','19','','1',1),('371145','Other Access Issue','A16','0','','0',0),('371146','Other Access Issue','A16','0','','1',0),('371147','Continuation Coverage','A17','20','','0',1),('371148','Continuation Coverage','A17','20','','1',1),('371149','Difficulty Finding FFS Provider','A18','12','','0',1),('371150','Difficulty Finding FFS Provider','A18','12','','1',1),('371151','Coordination of Benefits','B 1','0','','0',0),('371152','Coordination of Benefits','B 1','0','','1',0),('371153','Dispute over Coverage (Service Not Yet Received)','B 2','0','','0',0),('371154','Dispute over Coverage (Service Not Yet Received)','B 2','0','','1',0),('371155','Marketing/Solicitation Improper','B 3','0','','0',0),('371156','Marketing/Solicitation Improper','B 3','0','','1',0),('371157','Other Benefits or Coverage Issue','B 4','0','','0',0),('371158','Other Benefits or Coverage Issue','B 4','0','','1',0),('371159','Assignment of Benefits','C 1','0','','0',0),('371160','Assignment of Benefits','C 1','0','','1',0),('371161','Balance Billing','C 2','22','','0',1),('371162','Balance Billing','C 2','22','','1',1),('371163','Billing Problem','C 3','0','','0',0),('371164','Billing Problem','C 3','0','','1',0),('371165','Liens/Accident Payments','C 4','0','','0',0),('371166','Liens/Accident Payments','C 4','0','','1',0),('371167','Premium Concerns','C 5','6','','0',0),('371168','Premium Concerns','C 5','6','','1',0),('371169','Slow Payment','C 6','23','','0',1),('371170','Slow Payment','C 6','23','','1',1),('371171','Other Billing Issue','C 7','0','','0',0),('371172','Other Billing Issue','C 7','0','','1',0),('371173','Hotline/Program Services','CE 1','0','','0',0),('371174','Hotline/Program Services','CE 1','0','','1',0),('371175','Finding a Provider','CE 2','13','','0',0),('371176','Finding a Provider','CE 2','13','','1',0),('371179','Patient Education','CE 4','0','','0',0),('371180','Patient Education','CE 4','0','','1',0),('371181','Health Care Policy & Politics','CE 5','0','','0',0),('371182','Health Care Policy & Politics','CE 5','0','','1',0),('371183','Other Consumer Education Issue','CE 6','0','','0',0),('371184','Other Consumer Education Issue','CE 6','0','','1',0),('371185','Brief Service and Referrals Only','CE 7','0','','0',0),('371186','Brief Service and Referrals Only','CE 7','0','','1',0),('371187','Care/Treatment/Facilities Inappropriate or Inadequate','CS 1','22','','0',1),('371188','Care/Treatment/Facilities Inappropriate or Inadequate','CS 1','22','','1',1),('371189','Care - Diagnosis Inappropriate','CS 2','22','','0',1),('371190','Care - Diagnosis Inappropriate','CS 2','22','','1',1),('371191','Care - Denial','CS 3','1','','0',0),('371192','Care - Denial','CS 3','1','','1',0),('371193','Care - Inappropriate Facility Discharge','CS 4','24','','0',1),('371194','Care - Inappropriate Facility Discharge','CS 4','24','','1',1),('371195','Care/Service - Communication/Courtesy Problem','CS 5','1','','0',0),('371196','Care/Service - Communication/Courtesy Problem','CS 5','1','','1',0),('371197','Care/Service - Slow Response to Any Inquiries','CS 6','1','','0',0),('371198','Care/Service - Slow Response to Any Inquiries','CS 6','1','','1',0),('371199','Other Care or Service Issue','CS 7','0','','0',0),('371200','Other Care or Service Issue','CS 7','0','','1',0),('371201','Cultural or Racial Barriers','CS 8','1','','0',0),('371202','Cultural or Racial Barriers','CS 8','1','','1',0),('371203','Other Inappropriate Issue','I 1','0','','0',0),('371204','Other Inappropriate Issue','I 1','0','','1',0),('371205','Non-Health Care Related','I 2','0','','0',0),('371206','Non-Health Care Related','I 2','0','','1',0),('371207','Out-of-Area','I 3','0','','0',0),('371208','Out-of-Area','I 3','0','','1',0),('371209','Other Health Related','I 4','0','','0',0),('371210','Other Health Related','I 4','0','','1',0),('371211','Provider Inquiry/Complaint','I 5','0','','0',0),('371212','Provider Inquiry/Complaint','I 5','0','','1',0),('371213','Transportation Problem (Non-Health Related)','I 6','0','','0',0),('371214','Transportation Problem (Non-Health Related)','I 6','0','','1',0),('371215','Other Miscellaneous Issue','M 1','0','','0',0),('371216','Other Miscellaneous Issue','M 1','0','','1',0),('371217','Confidentiality','M 2','1','','0',0),('371218','Confidentiality','M 2','1','','1',0),('371219','Fee-for-Service Matters','M 3','0','','0',0),('371220','Fee-for-Service Matters','M 3','0','','1',0),('371221','Long Term Care Insurance','M 4','0','','0',0),('371222','Long Term Care Insurance','M 4','0','','1',0),('371223','Duplicate/Reassigned','M 5','0','','0',0),('371224','Duplicate/Reassigned','M 5','0','','1',0),('371225','Workers\' Compensation','M 6','0','','0',0),('371226','Workers\' Compensation','M 6','0','','1',0),('371227','Systemic Issue','M 7','0','','0',0),('371228','Systemic Issue','M 7','0','','1',0),('371229','Complaint about Regulator/Agency','M 8','0','','0',0),('371230','Complaint about Regulator/Agency','M 8','0','','1',0),('371231','Call Back Incomplete','M 9','0','','0',0),('371232','Call Back Incomplete','M 9','0','','1',0),('371233','Organization Inquiry','M10','0','','0',0),('371234','Organization Inquiry','M10','0','','1',0),('371235','Other','U 1','0','','0',0),('371236','Other','U 1','0','','1',0),('371237','Affordability','U 2','0','','0',0),('371238','Affordability','U 2','0','','1',0),('371239','Billing Problem','U 3','0','','0',0),('371240','Billing Problem','U 3','0','','1',0),('371241','Eligibility Problem','U 4','14','','0',1),('371242','Eligibility Problem','U 4','14','','1',1),('371243','Medical Care Referral','U 5','0','','0',0),('371244','Medical Care Referral','U 5','0','','1',0),('371245','Appointment Time Too Long Wait','A 1','31','','0',1),('371246','Authorization Delay','A 2','31','','0',1),('371247','Authorized Care Not Scheduled','A 3','31','','0',1),('371248','Affordability','A 4','31','','0',1),('371249','Difficulty Changing Plans, Group or Provider','A 5','31','','0',1),('371250','Disability Access Problem','A 6','31','','0',1),('371251','Disenrollment or Terminated for Cause','A 7','31','','0',1),('371254','Lack of In-Person Telephone Accessibility','A10','31','','0',1),('371255','Language Barrier','A11','31','','0',1),('371256','Medical Records Access','A12','31','','0',1),('371258','Transportation Problem','A14','31','','0',1),('371259','Inaccurate Plan Information','A15','31','','0',1),('371260','Other Access Issue','A16','31','','0',1),('371263','Difficulty Finding a Provider','A19','31','','0',1),('371264','Coordination of Benefits','B 1','31','','0',1),('371265','Dispute over Coverage (Service Not Yet Received)','B 2','31','','0',1),('371266','Marketing/Solicitation Improper','B 3','31','','0',1),('371267','Other Benefits or Coverage Issue','B 4','31','','0',1),('371268','Assignment of Benefits','C 1','31','','0',1),('371270','Billing Problem','C 3','31','','0',1),('371271','Liens/Accident Payments','C 4','31','','0',1),('371272','Premium Concerns','C 5','31','','0',1),('371273','Slow Payment','C 6','31','','0',1),('371274','Other Billing Issue','C 7','31','','0',1),('371275','Coordination of Benefits','C 8','31','','0',1),('371276','Fraudulent Billing','C 9','31','','0',1),('371277','Hotline/Program Services','CE 1','31','','0',1),('371278','Finding a Provider','CE 2','31','','0',1),('371279','Choosing a Health Plan','CE 3','31','','0',1),('371280','Patient Education','CE 4','31','','0',1),('371281','Health Care Policy & Politics','CE 5','31','','0',1),('371282','Other Consumer Education Issue','CE 6','31','','0',1),('371283','Brief Service and Referrals Only','CE 7','31','','0',1),('371284','Coverage Options','CE 8','31','','0',1),('371285','Care/Treatment/Facilities Inappropriate or Inadequate','CS 1','31','','0',1),('371286','Care - Diagnosis Inappropriate','CS 2','31','','0',1),('371287','Care - Denial','CS 3','31','','0',1),('371288','Care - Inappropriate Facility Discharge','CS 4','31','','0',1),('371289','Care/Service - Communication/Courtesy Problem','CS 5','31','','0',1),('371290','Care/Service - Slow Response to Any Inquiries','CS 6','31','','0',1),('371291','Other Care or Service Issue','CS 7','31','','0',1),('371292','Cultural or Racial Barriers','CS 8','31','','0',1),('371293','Other Eligibility Issue','E 1','31','','0',1),('371294','Afraid to Apply','E 2','31','','0',1),('371295','Application Denied','E 3','31','','0',1),('371296','Application Processing Delayed','E 4','31','','0',1),('371297','Continuation Coverage','E 5','31','','0',1),('371298','Consumer Not Screened for Coverage','E 6','31','','0',1),('371299','Eligibility Terminated or Proposed for Termination','E 7','31','','0',1),('371300','Inter-County Transfer Problem','E 8','31','','0',1),('371301','Medi-Cal/Healthy Families Disconnect','E 9','31','','0',1),('371302','Procedural Problems','E10','31','','0',1),('371303','Other Inappropriate Issue','I 1','31','','0',1),('371304','Non-Health Care Related','I 2','31','','0',1),('371305','Out-of-Area','I 3','31','','0',1),('371306','Other Health Related','I 4','31','','0',1),('371307','Provider Inquiry/Complaint','I 5','31','','0',1),('371308','Transportation Problem (Non-Health Related)','I 6','31','','0',1),('371309','Other Miscellaneous Issue','M 1','31','','0',1),('371310','Confidentiality','M 2','31','','0',1),('371311','Fee-for-Service Matters','M 3','31','','0',1),('371312','Long Term Care Insurance','M 4','31','','0',1),('371313','Duplicate/Reassigned','M 5','31','','0',1),('371314','Workers\' Compensation','M 6','31','','0',1),('371315','Systemic Issue','M 7','31','','0',1),('371316','Complaint about Regulator/Agency','M 8','31','','0',1),('371317','Call Back Incomplete','M 9','31','','0',1),('371318','Organization Inquiry','M10','31','','0',1),('371319','Issue Resolved','M11','31','','0',1),('371320','Other','U 1','31','','0',1),('371321','Affordability','U 2','31','','0',1),('371322','Billing Problem','U 3','31','','0',1),('371323','Eligibility Problem','U 4','31','','0',1),('371324','Medical Care Referral','U 5','31','','0',1),('371325','Procedural Problems','E10','28','','0',1),('371326','Procedural Problems','E10','28','','1',1),('371327','Continuity of Care','CS 9','31','','0',1),('371328','Continuity of Care','CS 9','27','','0',1),('371329','Continuity of Care','CS 9','27','','1',1),('371330','Continuity of Care','CS 9','28','','0',1),('371331','Continuity of Care','CS 9','28','','1',1),('371332','Continuity of Care','CS 9','29','','0',1),('371333','Continuity of Care','CS 9','29','','1',1),('371334','Billing Problem','C 3','28','','0',1),('371335','Billing Problem','C 3','28','','1',1),('371336','Premium Concerns','C 5','28','','0',1),('371337','Premium Concerns','C 5','28','','1',1),('38','Care/Service - Slow Response to Any Inquiries','CS 6','29','','0',1),('39','Other Care or Service Issue','CS 7','','','0',0),('4','Coordination of Benefits','B 1','','','0',0),('40','Other Health Related','I 4','','','0',0),('41','Provider Inquiry/Complaint','I 5','','','0',0),('42','Transportation Problem (Non-Health Related)','I 6','','','0',0),('43','Other Miscellaneous Issue','M 1','','','0',0),('44','Confidentiality','M 2','29','','0',1),('45','Fee-for-Service Matters','M 3','','','0',0),('46','Long Term Care Insurance','M 4','','','0',0),('47','Duplicate/Reassigned','M 5','','','0',0),('48','Non-Health Care Related','I 2','','','0',0),('49','Workers\' Compensation','M 6','','','0',0),('5','Dispute over Coverage (Service Not Yet Received)','B 2','','','0',0),('50','Other Inappropriate Issue','I 1','','','0',0),('51','Out-of-Area','I 3','','','0',0),('52','Other Consumer Education Issue','CE 6','0','','0',0),('53','Systemic Issue','M 7','','','0',0),('54','Other','U 1','','','0',0),('55','Affordability','U 2','','','0',0),('56','Billing Problem','U 3','','','0',0),('57','Eligibility Problem','U 4','28','','0',1),('58','Medical Care Referral','U 5','','','0',0),('59','Complaint about Regulator/Agency','M 8','','','0',0),('6','Disenrollment or Terminated for Cause','A 7','28','','0',1),('60','Call Back Incomplete','M 9','','','0',0),('61','Cultural or Racial Barriers','CS 8','29','','0',1),('62','Organization Inquiry','M10','','','0',0),('63','Appointment Time Too Long Wait','A 1','28','','1',1),('64','Authorization Delay','A 2','27','','1',1),('65','Authorized Care Not Scheduled','A 3','29','','1',1),('66','Coordination of Benefits','B 1','','','1',0),('67','Dispute over Coverage (Service Not Yet Received)','B 2','','','1',0),('68','Disenrollment or Terminated for Cause','A 7','28','','1',1),('69','Assignment of Benefits','C 1','','','1',0),('7','Assignment of Benefits','C 1','','','0',0),('70','Care - Denial','CS 3','29','','1',1),('71','Lack of Specialist Availability','A 9','','','1',1),('72','Affordability','A 4','25','','1',1),('73','Difficulty Changing Plans, Group or Provider','A 5','29','','1',1),('74','Disability Access Problem','A 6','29','','1',1),('76','Lack of In-Person Telephone Accessibility','A10','29','','1',1),('77','Language Barrier','A11','28','','1',1),('78','Medical Records Access','A12','29','','1',1),('79','Primary Care Provider - Lack of Availability or Consumer Can','A13','','','1',0),('8','Care - Denial','CS 3','29','','0',1),('80','Transportation Problem','A14','','','1',0),('81','Inaccurate Plan Information','A15','','','1',0),('82','Other Access Issue','A16','','','1',0),('83','Marketing/Solicitation Improper','B 3','','','1',0),('84','Other Benefits or Coverage Issue','B 4','','','1',0),('85','Balance Billing','C 2','','','1',0),('86','Billing Problem','C 3','29','','1',1),('87','Liens/Accident Payments','C 4','','','1',0),('88','Premium Concerns','C 5','27','','1',1),('89','Slow Payment','C 6','29','','1',1),('9','Lack of Specialist Availability','A 9','','','0',1),('90','Other Billing Issue','C 7','','','1',0),('91','Hotline/Program Services','CE 1','0','','1',0),('92','Finding a Provider','CE 2','29','','1',1),('93','Choosing a Health Plan','CE 3','28','','1',0),('94','Patient Education','CE 4','0','','1',0),('95','Health Care Policy & Politics','CE 5','0','','1',0),('96','Care/Treatment/Facilities Inappropriate or Inadequate','CS 1','29','','1',1),('97','Care - Diagnosis Inappropriate','CS 2','29','','1',1),('98','Care - Inappropriate Facility Discharge','CS 4','29','','1',1),('99','Care/Service - Communication/Courtesy Problem','CS 5','29','','1',1);
/*!40000 ALTER TABLE `menu_hrh_pcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_plan_type`
--

DROP TABLE IF EXISTS `menu_hrh_plan_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_plan_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_plan_type`
--

LOCK TABLES `menu_hrh_plan_type` WRITE;
/*!40000 ALTER TABLE `menu_hrh_plan_type` DISABLE KEYS */;
INSERT INTO `menu_hrh_plan_type` VALUES ('1','HMO',1),('10','UNKNOWN',10),('11','SOC',11),('12','DSCNT',12),('13','PDP',13),('14','MA-PD',14),('15','HMO/SNP',15),('16','MSA',16),('17','PFFS',17),('2','PPO',2),('3','POS',3),('4','EPO',4),('5','FFS',5),('6','OTHER',6),('7','COHS',7),('8','N/A',8),('9','REFUSED',9);
/*!40000 ALTER TABLE `menu_hrh_plan_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_plantime`
--

DROP TABLE IF EXISTS `menu_hrh_plantime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_plantime` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_plantime`
--

LOCK TABLES `menu_hrh_plantime` WRITE;
/*!40000 ALTER TABLE `menu_hrh_plantime` DISABLE KEYS */;
INSERT INTO `menu_hrh_plantime` VALUES ('10','4 years or longer',5),('11','Unknown',6),('15','N/A',7),('16','Refused',8),('2','Less than 6 months',1),('3','At least 6 months, but less than 1 year',2),('4','At least 1 year, but less than 2 years',3),('5','At least 2 years, but less than 4 years',4);
/*!40000 ALTER TABLE `menu_hrh_plantime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_ref_1`
--

DROP TABLE IF EXISTS `menu_hrh_ref_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_ref_1` (
  `value` varchar(10) NOT NULL DEFAULT '',
  `refid` char(3) NOT NULL DEFAULT '',
  `label` varchar(50) NOT NULL DEFAULT '',
  `menu_order` int(4) NOT NULL DEFAULT '0',
  `chunk` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_ref_1`
--

LOCK TABLES `menu_hrh_ref_1` WRITE;
/*!40000 ALTER TABLE `menu_hrh_ref_1` DISABLE KEYS */;
INSERT INTO `menu_hrh_ref_1` VALUES ('001','1','Collection Agency',1,'005000'),('002','2','Community Agency/Advocate',2,'006000'),('003','3','Employer - Private',3,'007000'),('004','4','Employer - Public',4,'007100'),('005','5','Employer - Union',5,'007200'),('006','6','Funder',6,'008000'),('007','7','Government Agency - Federal',7,'009000'),('008','8','Government Agency - State',8,'009100'),('009','9','Government Agency - County',9,'009200'),('010','10','Government Agency - City',10,'009300'),('011','11','Government Agency - Other',11,'009400'),('012','12','Government - Elected Official - Federal',12,'009500'),('013','13','Government - Elected Official - State',13,'009600'),('014','14','Government - Elected Official - County',14,'009700'),('015','15','Government - Elected Official - Other',15,'009800'),('016','16','Health Provider - Dental Plan',16,'010000'),('017','17','Health Provider - Health Plan',17,'010100'),('018','18','Health Provider - Health System',18,'010200'),('019','19','Health Provider - Hospital',19,'010300'),('020','20','Health Provider - Individual Provider',20,'010400'),('021','21','Health Provider - Medical Groups',21,'010500'),('022','22','Health Provider - Mental Health',22,'010600'),('023','23','Health Provider - Nursing Home',23,'010700'),('024','24','Health Provider - Provider Associations',24,'010800'),('025','25','Health Provider - Vision Plans',25,'010900'),('026','26','Health Provider - Other',26,'008100'),('027','27','Health Rights Hotline',27,'011000'),('028','28','Individual (non-health)',28,'012000'),('029','29','I&R - Agency',29,'013000'),('030','30','I&R - Library',30,'013100'),('031','31','I&R - Other',31,'013200'),('032','32','Insurance',32,'014000'),('033','33','Media - Newspaper/Magazine',33,'015000'),('034','34','Media - Radio',34,'015100'),('035','35','Media - Television',35,'015200'),('036','36','Media - Other',36,'015300'),('037','37','Other',37,'016000'),('038','38','Pharmacy',38,'017000'),('039','39','Phone Book',39,'018000'),('040','40','Postcard',40,'019000'),('041','41','Religious Group/Institution',41,'020000'),('042','42','School',42,'021000'),('043','43','Unknown',43,'022000'),('044','44','Walk-In',44,'023000'),('045','45','I&R - Directory',45,'013300'),('046','46','Health Provider - Clinic',46,'009900');
/*!40000 ALTER TABLE `menu_hrh_ref_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_ref_2`
--

DROP TABLE IF EXISTS `menu_hrh_ref_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_ref_2` (
  `spec_id` varchar(10) NOT NULL DEFAULT '',
  `refid` char(3) NOT NULL DEFAULT '',
  `label` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(10) NOT NULL DEFAULT '',
  `menu_order` int(4) NOT NULL DEFAULT '0',
  `grouper` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`value`),
  UNIQUE KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_ref_2`
--

LOCK TABLES `menu_hrh_ref_2` WRITE;
/*!40000 ALTER TABLE `menu_hrh_ref_2` DISABLE KEYS */;
INSERT INTO `menu_hrh_ref_2` VALUES ('10302','19','Lodi Memorial Hospital','10',10,'019'),('6079','02','Woodland Senior Center','100',100,'002'),('6080','02','Other','101',101,'002'),('6081','02','Citizens for the Right to Know','102',102,'002'),('6082','02','Senior Nutrition Site','103',103,'002'),('6083','02','Chamber of Commerce','104',104,'002'),('6084','02','Protection and Advocacy','105',105,'002'),('6085','02','Slavic Community Center','106',106,'002'),('6086','02','Regional Children\'s Health Project','107',107,'002'),('6087','02','TMJ Society','108',108,'002'),('6088','02','Parkinson\'s Disease Association','109',109,'002'),('10407','20','Other','11',11,'020'),('6089','02','AARP','110',110,'002'),('6090','02','WEAVE','111',111,'002'),('6091','02','La Familia Counseling Center','112',112,'002'),('6092','02','Loaves & Fishes','113',113,'002'),('6093','02','California Welfare Rights','114',114,'002'),('6094','02','American Lung Association','115',115,'002'),('6095','02','Slavic Assistance Center','116',116,'002'),('6096','02','Hmong Women\'s Heritage Association','117',117,'002'),('6097','02','CA Health Incentives Improvement Project (CHIIP)','118',118,'002'),('7001','03','Other','119',119,'003'),('10510','21','Sutter Medical Group','12',12,'021'),('7101','04','PERS','120',120,'004'),('7102','04','STRS','121',121,'004'),('7103','04','Other','122',122,'004'),('7201','05','Other','123',123,'005'),('7202','05','SEIU','124',124,'005'),('8001','06','California Wellness Foundation','125',125,'006'),('8002','06','Kaiser Family Foundation','126',126,'006'),('8003','06','Sierra Health Foundation','127',127,'006'),('8004','06','The California Endowment','128',128,'006'),('9001','07','Centers for Disease Control','129',129,'007'),('10803','24','Placer Nevada Medical Society','13',13,'024'),('9002','07','Lumetra (CMRI) - California Medical Review Inc','130',130,'007'),('9003','07','Department of Labor','131',131,'007'),('9004','07','CMS-Centers for Medicare and Medicaid Services','132',132,'007'),('9005','07','Social Security Administration','133',133,'007'),('9006','07','Veterans Administration','134',134,'007'),('9007','07','Other','135',135,'007'),('9101','08','Department of Aging','136',136,'008'),('9102','08','Department of Consumer Affairs','137',137,'008'),('9103','08','Department of Corporations','138',138,'008'),('9104','08','Department of Health Services','139',139,'008'),('10908','25','Other','14',14,'025'),('9105','08','Department of Insurance','140',140,'008'),('9106','08','Health Care Options-Maximus','141',141,'008'),('9107','08','Department of Rehabilitation','142',142,'008'),('9108','08','Department of Managed Health Care','143',143,'008'),('9109','08','Employment Development Department (EDD)','144',144,'008'),('9110','08','CMAC-CA Medical Assistance Commission','145',145,'008'),('9111','08','Medical Board of California','146',146,'008'),('9112','08','MRMIB','147',147,'008'),('9113','08','Office of the Patient Advocate','148',148,'008'),('9114','08','Department of Social Services','149',149,'008'),('11001','27','Health Fair','15',15,'027'),('9201','09','Developmental Disabilities Advisory Council','150',150,'009'),('9202','09','El Dorado Dept of Community Services','151',151,'009'),('9203','09','El Dorado Medi-Cal Office (Welfare Dept)','152',152,'009'),('9204','09','GMC Commission','153',153,'009'),('9205','09','Placer Dept of Health & Human Services','154',154,'009'),('9206','09','Sacramento Dept of Health & Human Svcs','155',155,'009'),('9207','09','Sacramento Dept of Human Assistance','156',156,'009'),('9208','09','Sacramento District Attorneys Office','157',157,'009'),('9209','09','Sacramento Housing & Redevelop Agency','158',158,'009'),('9210','09','Sacramento Mental Health & Aging Comm','159',159,'009'),('12002','28','Family Member/Relative','16',16,'028'),('9211','09','Yolo County Dept of Health','160',160,'009'),('9212','09','Yolo County Dept of Social Services','161',161,'009'),('9213','09','Women Infant and Children (WIC)','162',162,'009'),('9214','09','California Childrens Services','163',163,'009'),('9215','09','CHDP','164',164,'009'),('9216','09','Sacramento County Dept. of Mental Health','165',165,'009'),('9217','09','First 5 Commission','166',166,'009'),('9501','12','House (Doolittle, Matsui, Ose, Pombo)','167',167,'012'),('9502','12','Senate (Boxer, Feinstein)','168',168,'012'),('9601','13','Assembly (Cox, Leslie, Nakanishi, Steinberg, Wolk)','169',169,'013'),('13102','30','Community Health Library (Placerville)','17',17,'030'),('9602','13','Senate (Aanestad, Machado, Oller, Ortiz)\n)','170',170,'013'),('9701','14','El Dorado Board of Supervisors','171',171,'014'),('9702','14','Placer Board of Supervisors','172',172,'014'),('9703','14','Sacramento Board of Supervisors','173',173,'014'),('9704','14','Yolo Board of Supervisors','174',174,'014'),('9901','46','Other','175',175,'046'),('9902','46','Community Clinic','176',176,'046'),('9903','46','County Clinic','177',177,'046'),('9904','46','Planned Parenthood','178',178,'046'),('9905','46','Feminist Women\'s Health Specialists','179',179,'046'),('15003','33','Davis Senior Scene','18',18,'033'),('10001','16','Access Dental','180',180,'016'),('10002','16','Aetna Dental Care','181',181,'016'),('10003','16','Alternative Dental Care','182',182,'016'),('10004','16','California Dental (see PacifiCare Dental & Vision)','183',183,'016'),('10005','16','CIGNA Dental','184',184,'016'),('10006','16','Community Dental Services','185',185,'016'),('10007','16','Delta Dental Plan','186',186,'016'),('10008','16','Dental Benefit Providers','187',187,'016'),('10009','16','Fortis Dental','188',188,'016'),('10010','16','HealthDent of California','189',189,'016'),('15204','35','Public Service Announcement','19',19,'035'),('10011','16','Mida Dental (Oral Health Services)','190',190,'016'),('10012','16','Pacific Union Dental','191',191,'016'),('10013','16','PacifiCare Dental & Vision','192',192,'016'),('10014','16','Preventive Dental','193',193,'016'),('10015','16','Prudent Buyer Dental (Wellpoint)','194',194,'016'),('10016','16','United Dental Care (UDC)','195',195,'016'),('10017','16','Wellpoint Dental Services (Blue Cross)','196',196,'016'),('10018','16','Western Dental Services','197',197,'016'),('10019','16','Other','198',198,'016'),('10101','17','Aetna/US Healthcare','199',199,'017'),('20001','41','Other','20',20,'041'),('10102','17','Blue Cross','200',200,'017'),('10103','17','Blue Shield','201',201,'017'),('10104','17','BPS Healthcare','202',202,'017'),('10105','17','CIGNA Healthcare','203',203,'017'),('10106','17','FEHBP - APWU (American Postal Workers\' Union)','204',204,'017'),('10107','17','FEHBP - Blue Cross/Blue Shield PPO','205',205,'017'),('10108','17','FEHBP - GEHA (Government Employee Hospital Associa','206',206,'017'),('10110','17','FEHBP - NALC (National Association of Letter Carri','208',208,'017'),('10111','17','FEHBP - Other','209',209,'017'),('5001','01','Assetcare','21',21,'001'),('10112','17','FEHBP - Postmasters','210',210,'017'),('10113','17','FHP/Take Care','211',211,'017'),('10114','17','First Health Group Corp.','212',212,'017'),('10115','17','Foundation/Health Net','213',213,'017'),('10116','17','Great West Life (One Health Plan)','214',214,'017'),('10117','17','Interplan Corp.','215',215,'017'),('10118','17','Kaiser Foundation Health Plan','216',216,'017'),('10119','17','Marshall Medical Plan','217',217,'017'),('10120','17','Maxicare','218',218,'017'),('10121','17','Omni','219',219,'017'),('5002','01','Other','22',22,'001'),('10122','17','Pacific Foundation for Medical Care','220',220,'017'),('10123','17','Pacific Health Alliance','221',221,'017'),('10124','17','PacifiCare','222',222,'017'),('10125','17','Preferred Health Network','223',223,'017'),('10126','17','Prudential','224',224,'017'),('10127','17','United Healthcare','225',225,'017'),('10128','17','Western Health Advantage','226',226,'017'),('10129','17','Other','227',227,'017'),('10130','17','Health Net','228',228,'017'),('10201','18','Mercy Healthcare Sacramento','229',229,'018'),('6001','02','AIDS Action League','23',23,'002'),('10202','18','Sutter Health','230',230,'018'),('10203','18','UC Davis Health System','231',231,'018'),('10204','18','Other','232',232,'018'),('10301','19','Barton Hospital','233',233,'019'),('10303','19','Marshall Hospital','235',235,'019'),('10304','19','Shriners Hospital for Children','236',236,'019'),('10305','19','Sierra Nevada Hospital','237',237,'019'),('10306','19','Tahoe Forest Hospital','238',238,'019'),('10307','19','Other','239',239,'019'),('6002','02','AIDS Task Force-Lake Tahoe','24',24,'002'),('10401','20','Dentist','240',240,'020'),('10402','20','Doctor/Physician','241',241,'020'),('10403','20','Non-Physician Provider','242',242,'020'),('10404','20','Nurse','243',243,'020'),('10405','20','Psychiatrist','244',244,'020'),('10406','20','Psychologist','245',245,'020'),('10408','20','Pharmacist','247',247,'020'),('10501','21','FPA Medical Management','248',248,'021'),('10502','21','Golden State Physicians Medical Group','249',249,'021'),('6003','02','Alliance for the Mentally Ill-Placer','25',25,'002'),('10503','21','Hill Physicians','250',250,'021'),('10504','21','Marshall El Dorado PHO','251',251,'021'),('10505','21','MedClinic','252',252,'021'),('10506','21','Molina Medical Centers','253',253,'021'),('10507','21','Permanente Medical Group','254',254,'021'),('10508','21','River City Medical Group','255',255,'021'),('10509','21','Sutter Independent Physicians','256',256,'021'),('10511','21','Sutter West Medical Group','258',258,'021'),('10512','21','UC Davis Medical Group','259',259,'021'),('6004','02','Alta Regional Center','26',26,'002'),('10513','21','University Faculty Medical Associates','260',260,'021'),('10514','21','Woodland Clinic','261',261,'021'),('10515','21','Other','262',262,'021'),('10601','22','Counseling Center','263',263,'022'),('10602','22','Facility','264',264,'022'),('10603','22','Plan','265',265,'022'),('10604','22','Other','266',266,'022'),('10701','23','Other','267',267,'023'),('10801','24','California Medical Association','268',268,'024'),('10802','24','California Nurses Association','269',269,'024'),('6005','02','Alzheimers Support Group','27',27,'002'),('10804','24','Sacramento District Dental Society','271',271,'024'),('10805','24','Sacramento El Dorado Medical Society','272',272,'024'),('10806','24','Sacramento Valley Pharmacists Assoc','273',273,'024'),('10807','24','Other','274',274,'024'),('10901','25','EyeExam 2000 (Lens Crafters)','275',275,'025'),('10902','25','NVAL Visioncare Systems','276',276,'025'),('10903','25','PacifiCare Dental & Vision','277',277,'025'),('10904','25','Pearle Visioncare','278',278,'025'),('10905','25','Vision Plan of America','279',279,'025'),('6006','02','American Cancer Society','28',28,'002'),('10906','25','Vision Service Plan','280',280,'025'),('10907','25','Visioncare of California (Sterling Visioncare)','281',281,'025'),('11002','27','Presentation','284',284,'027'),('11003','27','Prior Client','285',285,'027'),('11004','27','Web Site','286',286,'027'),('11005','27','Other','287',287,'027'),('11006','27','Presentation-Women Infant Children (WIC)','288',288,'027'),('11007','27','Presentation-Sacramento Lao Family Community','289',289,'027'),('6007','02','American Heart Association','29',29,'002'),('11008','27','Presentation-Slavic Community Center','290',290,'027'),('11009','27','Presentation-La Familia','291',291,'027'),('11010','27','Brochure','292',292,'027'),('12001','28','Attorney','293',293,'028'),('12003','28','Friend','295',295,'028'),('12004','28','Minister','296',296,'028'),('12005','28','Supervisor','297',297,'028'),('12006','28','Other','298',298,'028'),('12007','28','Social Worker','299',299,'028'),('6008','02','Area 4 Agency on Aging','30',30,'002'),('13001','29','InfoLine Sacramento','300',300,'029'),('13002','29','Placer Information & Referral','301',301,'029'),('13003','29','YoloLink','302',302,'029'),('13004','29','Eldercare Referral Service','303',303,'029'),('13101','30','Auburn Public Library','304',304,'030'),('13103','30','El Dorado County Library-So Lake Tahoe','306',306,'030'),('13104','30','Guttman Library & Information Center','307',307,'030'),('13105','30','Kaiser Health Education Center','308',308,'030'),('13106','30','MedClinic Resource Library','309',309,'030'),('6009','02','Area Agency on Aging-El Dorado','31',31,'002'),('13107','30','Roseville Public Library','310',310,'030'),('13108','30','Sacramento Public Library','311',311,'030'),('13109','30','South Lake Tahoe Public Library','312',312,'030'),('13110','30','Sutter Resource Library','313',313,'030'),('13111','30','UC Davis Library','314',314,'030'),('13112','30','Woodland Public Library','315',315,'030'),('13113','30','Yolo County Library','316',316,'030'),('13301','45','Women\'s Resource Directory','317',317,'045'),('13302','45','Sacramento County Bar Directory','318',318,'045'),('13303','45','Lesbian Health Resource Guide','319',319,'045'),('6010','02','Arthritis Foundation','32',32,'002'),('13304','45','Senior Health Resource Guide','320',320,'045'),('13305','45','Sierra Sacramento Valley Medical Society','321',321,'045'),('13306','45','Community Resources for Older Adults','322',322,'045'),('14001','32','Broker/Agent','323',323,'032'),('14002','32','Company/TPA','324',324,'032'),('15001','33','Auburn Journal','325',325,'033'),('15002','33','Davis Enterprise','326',326,'033'),('15004','33','Fresno Bee','328',328,'033'),('15005','33','La Voz','329',329,'033'),('6011','02','Arthritis Support Group-Mercy Rehab','33',33,'002'),('15006','33','Los Angeles Times','330',330,'033'),('15007','33','Modesto Bee','331',331,'033'),('15008','33','Parents Magazine','332',332,'033'),('15009','33','Placerville Mountain Democrat','333',333,'033'),('15010','33','Sacramento Bee','334',334,'033'),('15011','33','Sacramento Business Journal','335',335,'033'),('15012','33','Sacramento News & Review','336',336,'033'),('15013','33','Senior Spectrum','337',337,'033'),('15014','33','Tahoe Daily Tribune','338',338,'033'),('15015','33','Wall Street Journal','339',339,'033'),('6012','02','Bar Association-El Dorado','34',34,'002'),('15016','33','San Francisco Chronicle','340',340,'033'),('15017','33','Fresno Bee','341',341,'033'),('15018','33','Russian Paper','342',342,'033'),('15099','33','Other','343',343,'033'),('15101','34','Advertisement','344',344,'034'),('15102','34','News Story','345',345,'034'),('15103','34','Public Service Announcement','346',346,'034'),('15104','34','Talk Show','347',347,'034'),('15199','34','Other','348',348,'034'),('15201','35','Advertisement','349',349,'035'),('6013','02','Bar Association-Placer','35',35,'002'),('15202','35','Call 3 - KCRA','350',350,'035'),('15203','35','News Story','351',351,'035'),('15205','35','Talk Show','353',353,'035'),('15299','35','Other','354',354,'035'),('18001','39','Information 411','355',355,'039'),('18002','39','Local Talk','356',356,'039'),('18003','39','Toll Free Operator','357',357,'039'),('18004','39','White Pages','358',358,'039'),('18005','39','Yellow Pages/ Community Service Listing','359',359,'039'),('6014','02','Bar Association-Sacramento','36',36,'002'),('18006','39','Russian Yellow Pages','360',360,'039'),('19001','40','Lost? Photo/Red 998-1','361',361,'040'),('19002','40','Not Knowing Blue/Orange 998-2','362',362,'040'),('19003','40','Throw Away Manilla/Black 998-3','363',363,'040'),('19004','40','Unknown','364',364,'040'),('20002','41','Publication/Newsletter','366',366,'041'),('21001','42','Nurse','367',367,'042'),('21002','42','Other','368',368,'042'),('21003','43','Unknown','369',369,'043'),('6015','02','Bar Association-Yolo','37',37,'002'),('21004','42','Head Start','370',370,'042'),('21005','42','Office','371',371,'042'),('21006','42','School Office','372',372,'042'),('21007','42','School District','373',373,'042'),('21008','42','Teacher','374',374,'042'),('6016','02','California Advocates for Nursing Home Reform (CANH','38',38,'002'),('6017','02','California Alliance for Mentally Ill','39',39,'002'),('6019','02','California Womenâ€™s Law Center','40',40,'002'),('6020','02','Cancer Information Service','41',41,'002'),('6021','02','Center for Health Care Rights','42',42,'002'),('6022','02','CFIDS Foundation','43',43,'002'),('6023','02','Community Services Planning Council','44',44,'002'),('6024','02','Congress of California Seniors','45',45,'002'),('6025','02','Consumer Self-Help North','46',46,'002'),('6026','02','Court Appointed Special Assistance','47',47,'002'),('6027','02','Del Oro Caregiver Resource Center','48',48,'002'),('6028','02','DERA-Disability & Employment Rights','49',49,'002'),('6029','02','East Area Mental Health Clinic','50',50,'002'),('6030','02','Easter Seal Society','51',51,'002'),('6031','02','Epilepsy Support Group','52',52,'002'),('6032','02','Families for Early Autism Treatment','53',53,'002'),('6033','02','Family Resource Center','54',54,'002'),('6034','02','Fibromyalgia Support Group','55',55,'002'),('6035','02','Galt Concilio','56',56,'002'),('6036','02','Hart Senior Center','57',57,'002'),('6037','02','Health Communication Research Institute','58',58,'002'),('6038','02','Health Education Council','59',59,'002'),('6039','02','HICAP-Local','60',60,'002'),('6040','02','HICAP-Other/Out of Area','61',61,'002'),('6041','02','Interstitial Cystitis Support Group','62',62,'002'),('6042','02','LCED-Legal Ctr for Elderly & Disabled','63',63,'002'),('6043','02','Legal Foundation for Health Care Rights','64',64,'002'),('6044','02','Leukemia Society','65',65,'002'),('6045','02','Long Term Care Ombudsman-El Dorado','66',66,'002'),('6046','02','Long Term Care Ombudsman-N CA','67',67,'002'),('6047','02','LSNC - Auburn','68',68,'002'),('6048','02','LSNC - Sacramento','69',69,'002'),('6049','02','LSNC - Yolo','70',70,'002'),('6050','02','LSNC - Other','71',71,'002'),('6051','02','Lupus Foundation','72',72,'002'),('6052','02','Maidu Community Center','73',73,'002'),('6053','02','McGeorge School of Law','74',74,'002'),('6054','02','Mental Health Association, Sacramento','75',75,'002'),('6055','02','Mexican American Alcoholism Association','76',76,'002'),('6056','02','Mission Oaks Senior Center','77',77,'002'),('6057','02','Multiple Sclerosis Society','78',78,'002'),('6058','02','Muscular Dystrophy Association','79',79,'002'),('6059','02','National Scoliosis Foundation','80',80,'002'),('6060','02','Parents & Children Experiencing Diabetes','81',81,'002'),('6061','02','Patients Rights Advocate (Mental Health)','82',82,'002'),('6062','02','Placer Independent Resources Services','83',83,'002'),('6063','02','Placerville Senior Center','84',84,'002'),('6064','02','Planned Parenthood','85',85,'002'),('6065','02','Resources for Independent Living','86',86,'002'),('6066','02','Respect Your Elders','87',87,'002'),('6067','02','Sacramento AIDS Foundation','88',88,'002'),('6068','02','Sacramento Alliance for Mentally Ill','89',89,'002'),('10109','17','FEHBP - Mail Handlers','9',9,'017'),('6069','02','Sacramento Association for Retarded','90',90,'002'),('6070','02','Sacramento Lao Family Community','91',91,'002'),('6071','02','Sacramento Mediation Center','92',92,'002'),('6072','02','Sacramento Retinitis Pigmentosa Society','93',93,'002'),('6073','02','Sacramento Tourette Syndrome Support Group','94',94,'002'),('6074','02','SALSA','95',95,'002'),('6075','02','Senior Legal Hotline','96',96,'002'),('6076','02','Society for the Blind','97',97,'002'),('6077','02','Stanford Settlement Senior Center','98',98,'002'),('6078','02','VLSP-Voluntary Legal Services Program','99',99,'002');
/*!40000 ALTER TABLE `menu_hrh_ref_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_service_provided`
--

DROP TABLE IF EXISTS `menu_hrh_service_provided`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_service_provided` (
  `label` varchar(50) NOT NULL DEFAULT '',
  `value` char(3) NOT NULL DEFAULT '',
  `menu_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_service_provided`
--

LOCK TABLES `menu_hrh_service_provided` WRITE;
/*!40000 ALTER TABLE `menu_hrh_service_provided` DISABLE KEYS */;
INSERT INTO `menu_hrh_service_provided` VALUES ('Counseling Provided','A',1),('Clarified Plan, Provider, or Program Policies','B',2),('Facilitation and Advocacy','C',3),('Negotiated Resolution of Dispute','D',4),('Assisted with Grievance/Appeal','E',5),('Direct Representation','F',6),('Brief Service and Referral','G',7);
/*!40000 ALTER TABLE `menu_hrh_service_provided` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hrh_subject`
--

DROP TABLE IF EXISTS `menu_hrh_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hrh_subject` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hrh_subject`
--

LOCK TABLES `menu_hrh_subject` WRITE;
/*!40000 ALTER TABLE `menu_hrh_subject` DISABLE KEYS */;
INSERT INTO `menu_hrh_subject` VALUES ('1','Other',1),('10','Emergency/Urgent Care',10),('11','Experimental Treatment',11),('12','General Office Visit',12),('13','Home Health',13),('14','Hospice/Terminal Care',14),('15','Hospital Care',15),('16','Maternity',16),('17','Mental Health',17),('18','Hearing',18),('19','Out-of-Area Care',19),('2','Alternative Therapies',2),('20','Pre-Existing Conditions',20),('21','Prescription Drugs/Formularies',21),('22','Preventive Services',22),('23','Rehabilitation/Developmental Therapies',23),('24','Specialty Care',24),('25','Substance Abuse Treatment',25),('26','Surgery',26),('27','Vision Care',27),('28','Second Opinion',28),('3','Ambulance/Transportation',3),('30','Coverage',30),('4','Chiropractic Services',4),('5','Continuing/Extended Care/Skilled Nurse Facility',5),('6','Dental Care',6),('7','Dental/Medical Overlap',7),('8','Diagnostic Testing',8),('9','DME/Medical Supplies',9);
/*!40000 ALTER TABLE `menu_hrh_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_7a`
--

DROP TABLE IF EXISTS `menu_hud_7a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_7a` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_7a`
--

LOCK TABLES `menu_hud_7a` WRITE;
/*!40000 ALTER TABLE `menu_hud_7a` DISABLE KEYS */;
INSERT INTO `menu_hud_7a` VALUES ('1','Purchased Housing',0),('2','Client Mortgage ready within 90 days',1),('3','Client Mortgage ready 90 <==> 180 days',2),('4','Received long term >180 days pre purch. counseling',3),('5','Entered lease purchase program',4),('6','Decided not to purchase (no further effort needed)',5),('7','Withdrew from counseling',6),('8','Other',7);
/*!40000 ALTER TABLE `menu_hud_7a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_7b`
--

DROP TABLE IF EXISTS `menu_hud_7b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_7b` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_7b`
--

LOCK TABLES `menu_hud_7b` WRITE;
/*!40000 ALTER TABLE `menu_hud_7b` DISABLE KEYS */;
INSERT INTO `menu_hud_7b` VALUES ('1','Brought mortgage curent',0),('10','Counseled & referred other soc serv or emerg assit agency',9),('11','Obtained partial claim loan from FHA lender',10),('12','Bankrutcy',11),('13','Entered debt management plan',12),('14','Counseled and referred for legal assistance',13),('15','Currently receiving foreclosure prevention/budget counseling',14),('16','Withdrew from counseling',15),('17','Other',16),('2','Mortgage refinanced',1),('3','Mortgage modified',2),('4','Received second mortgage',3),('5','Initiated forbearance agreement/repayment plan',4),('6','Executed deed-in-lieu',5),('7','Sold property chose alternative housing solution',6),('8','Pre-foreclosure sale',7),('9','Mortgage foreclosed',8);
/*!40000 ALTER TABLE `menu_hud_7b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_7c`
--

DROP TABLE IF EXISTS `menu_hud_7c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_7c` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_7c`
--

LOCK TABLES `menu_hud_7c` WRITE;
/*!40000 ALTER TABLE `menu_hud_7c` DISABLE KEYS */;
INSERT INTO `menu_hud_7c` VALUES ('1','Obtained home equity conv mortgage (HECM)',0),('10','Completed home maintenance counseling',9),('11','Counseled and utilities brought current',10),('12','Counseled and referred for legal assistance',11),('13','Currently receiving counseling',12),('14','Withdrew from counseling',13),('15','Other',14),('2','Counseled on HECM; decided not to obtain mortgage',1),('3','Obtained a non-FHA reverse mortgage',2),('4','Received home equity,home improvement loan or other home repair',3),('5','Received consumer loan (unsecured)',4),('6','Mortgage refinanced',5),('7','Counseled and referred to other social service agency',6),('8','Sold house/chose alternative housing solution',7),('9','Completed financial management/budget counseling',8);
/*!40000 ALTER TABLE `menu_hud_7c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_7d`
--

DROP TABLE IF EXISTS `menu_hud_7d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_7d` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_7d`
--

LOCK TABLES `menu_hud_7d` WRITE;
/*!40000 ALTER TABLE `menu_hud_7d` DISABLE KEYS */;
INSERT INTO `menu_hud_7d` VALUES ('1','Received housing search assistance',0),('10','Resolved issue in current tenancy',9),('11','Entered debt management/repayment plan',10),('12','Counseled and utilities brought current',11),('13','Resolved security deposit dispute',12),('14','Currently receiving counseling',13),('15','Withdrew from counseling',14),('16','Other',15),('2','Obtained temporary rental relief',1),('3','Counseled & refer to agency with rental assistance program',2),('4','Advised on recertification for HUD/other subsidy program',3),('5','Counseled & refer to other social service agency',4),('6','Counseled & refer to legal aid agency for fair housing assistance',5),('7','Counseled & refer to legal aid agency for assistance w\\eviction',6),('8','Found alternative rental housing',7),('9','Decided to remain in current housing situation',8);
/*!40000 ALTER TABLE `menu_hud_7d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_7e`
--

DROP TABLE IF EXISTS `menu_hud_7e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_7e` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_7e`
--

LOCK TABLES `menu_hud_7e` WRITE;
/*!40000 ALTER TABLE `menu_hud_7e` DISABLE KEYS */;
INSERT INTO `menu_hud_7e` VALUES ('1','Occupied emergency shelter',0),('2','Occupied transitional housing',1),('3','Occupied permanent housing with rental assistance',2),('4','Occupied permanent housing without rental assistance',3),('5','Counseled Referred to other social service agency',4),('6','Remained homeless',5),('7','Currently receiving counseling',6),('8','Withdrew from counseling',7),('9','Other',8);
/*!40000 ALTER TABLE `menu_hud_7e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_9902_7a`
--

DROP TABLE IF EXISTS `menu_hud_9902_7a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_9902_7a` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_9902_7a`
--

LOCK TABLES `menu_hud_9902_7a` WRITE;
/*!40000 ALTER TABLE `menu_hud_9902_7a` DISABLE KEYS */;
INSERT INTO `menu_hud_9902_7a` VALUES ('10','N/A',8),('2','7.a.1 Purchased Housing',0),('3','7.a.2 Mortgage Ready within 90 Days',1),('4','7.a.3 Mortgage Ready after 90 days and < 180 days',2),('5','7.a.4 Long Term > 180 days Pre-purchase Counseling',3),('6','7.a.5 Entered Lease Purchase Program',4),('7','7.a.6 Decided Not to Purchase Housing',5),('8','7.a.7 Withdrew from Counseling',6),('9','7.a.8 Other',7);
/*!40000 ALTER TABLE `menu_hud_9902_7a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_9902_7b`
--

DROP TABLE IF EXISTS `menu_hud_9902_7b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_9902_7b` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_9902_7b`
--

LOCK TABLES `menu_hud_9902_7b` WRITE;
/*!40000 ALTER TABLE `menu_hud_9902_7b` DISABLE KEYS */;
INSERT INTO `menu_hud_9902_7b` VALUES ('10','7.b.9 Mortgage Foreclosed',8),('11','7.b.10 Referred to Other Social Agency',9),('12','7.b.11 Obtained Partial-claim Loan from FHA Lender',10),('13','7.b.12 Bankruptcy',11),('14','7.b.13 Entered Debt Management/Repayment Plan',12),('15','7.b.14 Referred for Legal Assistance',13),('16','7.b.15 Currently Receiving Foreclosure/Budget Counseling',14),('17','7.b.16 Withdrew from Counseling',15),('18','7.b.17 Other',16),('19','N/A',17),('2','7.b.1 Brought Mortgage Current',0),('3','7.b.2 Mortgage Refinanced',1),('4','7.b.3 Mortgage Modified',2),('5','7.b.4 Received Second Mortgage',3),('6','7.b.5 Initiated Forbearance Agreement/Repayment Plan',4),('7','7.b.6 Executed a Deed-in-Lieu',5),('8','7.b.7 Sold Property; Chose Alternative Housing Solution',6),('9','7.b.8 Pre-foreclosure Sale',7);
/*!40000 ALTER TABLE `menu_hud_9902_7b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_9902_7c`
--

DROP TABLE IF EXISTS `menu_hud_9902_7c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_9902_7c` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_9902_7c`
--

LOCK TABLES `menu_hud_9902_7c` WRITE;
/*!40000 ALTER TABLE `menu_hud_9902_7c` DISABLE KEYS */;
INSERT INTO `menu_hud_9902_7c` VALUES ('10','7.c.9 Completed Financial Mgmt./Budget Counseling',8),('11','7.c.10 Completed Home Maintenance Counseling',9),('12','7.c.11 Counseled and Utilities Brought Current',10),('13','7.c.12 Referred for Legal Assistance',11),('14','7.c.13 Currently Receiving Counseling',12),('15','7.c.14 Withdrew from Counseling',13),('16','7.c.15 Other',14),('17','N/A',15),('2','7.c.1 Obtained a Home Equity Conversion Mortgage (HECM)',0),('3','7.c.2 Counseled on HECM; Decided Not to Obtain Mortgage',1),('4','7.c.3 Obtained a Non-FHA Reverse Mortgage',2),('5','7.c.4 Received Home Equity or Home Improvement Loan',3),('6','7.c.5 Received Consumer Loan (Unsecured)',4),('7','7.c.6 Mortgage Refinanced',5),('8','7.c.7 Referred to Other Social Agency',6),('9','7.c.8 Sold Property; Chose Alternative Housing Solution',7);
/*!40000 ALTER TABLE `menu_hud_9902_7c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_9902_7d`
--

DROP TABLE IF EXISTS `menu_hud_9902_7d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_9902_7d` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_9902_7d`
--

LOCK TABLES `menu_hud_9902_7d` WRITE;
/*!40000 ALTER TABLE `menu_hud_9902_7d` DISABLE KEYS */;
INSERT INTO `menu_hud_9902_7d` VALUES ('10','7.d.9 Decided to Remain in Current Housing Situation',8),('11','7.d.10 Resolved Issue in Current Tenancy',9),('12','7.d.11 Entered Debt Management/Repayment Plan',10),('13','7.d.12 Counseled and Utilities Brought Current',11),('14','7.d.13 Resolved Security Deposit Dispute',12),('15','7.d.14 Currently Receiving Counseling',13),('16','7.d.15 Withdrew from Counseling',14),('17','7.d.16 Other',15),('18','N/A',16),('2','7.d.1 Received Housing Search Assistance',0),('3','7.d.2 Obtained Temporary Rental Relief',1),('4','7.d.3 Referred to Agency with Rental Assistance Program',2),('5','7.d.4 Advised on Re-cert. for HUD/Other Subsidy Program',3),('6','7.d.5 Referred to Other Social Agency',4),('7','7.d.6 Referred to Legal Aid Agency (Fair Housing)',5),('8','7.d.7 Referred to Legal Aid Agency (Eviction)',6),('9','7.d.8 Found Alternative Rental Housing',7);
/*!40000 ALTER TABLE `menu_hud_9902_7d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_9902_7e`
--

DROP TABLE IF EXISTS `menu_hud_9902_7e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_9902_7e` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_9902_7e`
--

LOCK TABLES `menu_hud_9902_7e` WRITE;
/*!40000 ALTER TABLE `menu_hud_9902_7e` DISABLE KEYS */;
INSERT INTO `menu_hud_9902_7e` VALUES ('10','7.e.9 Other',8),('11','N/A',9),('2','7.e.1 Occupied Emergency Shelter',0),('3','7.e.2 Occupied Transitional Housing',1),('4','7.e.3 Occupied Permanent Housing with Rental Assist',2),('5','7.e.4 Occupied Permanent Housing w/o Rental Assist',3),('6','7.e.5 Referred to Other Social Agency',4),('7','7.e.6 Remained Homeless',5),('8','7.e.7 Currently Receiving Counseling',6),('9','7.e.8 Withdrew from Counseling',7);
/*!40000 ALTER TABLE `menu_hud_9902_7e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_ami_v2006`
--

DROP TABLE IF EXISTS `menu_hud_ami_v2006`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_ami_v2006` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_ami_v2006`
--

LOCK TABLES `menu_hud_ami_v2006` WRITE;
/*!40000 ALTER TABLE `menu_hud_ami_v2006` DISABLE KEYS */;
INSERT INTO `menu_hud_ami_v2006` VALUES ('2','5.a < 50% AMI',0),('3','5.b 50 - 80% of AMI',1),('4','5.c 80 - 100% of AMI',2),('5','5.d > 100% AMI',3),('6','5.e Chose not to respond',4);
/*!40000 ALTER TABLE `menu_hud_ami_v2006` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_assistance`
--

DROP TABLE IF EXISTS `menu_hud_assistance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_assistance` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_assistance`
--

LOCK TABLES `menu_hud_assistance` WRITE;
/*!40000 ALTER TABLE `menu_hud_assistance` DISABLE KEYS */;
INSERT INTO `menu_hud_assistance` VALUES ('2','Rental Voucher',0),('3','Place Based Rental Assistance',1),('4','Home Ownership Voucher',2),('5','Purchase REO Property',3),('6','Down Payment Assistance',4),('7','Other HUD Program',5),('8','Not Applicable',6);
/*!40000 ALTER TABLE `menu_hud_assistance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_counseling_grant`
--

DROP TABLE IF EXISTS `menu_hud_counseling_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_counseling_grant` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_counseling_grant`
--

LOCK TABLES `menu_hud_counseling_grant` WRITE;
/*!40000 ALTER TABLE `menu_hud_counseling_grant` DISABLE KEYS */;
INSERT INTO `menu_hud_counseling_grant` VALUES ('2','Comprehensive',0),('3','Colonias',1),('4','HECM',2),('5','S8',3),('6','Predatory Lending',4),('7','N/A',5);
/*!40000 ALTER TABLE `menu_hud_counseling_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_counseling_term`
--

DROP TABLE IF EXISTS `menu_hud_counseling_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_counseling_term` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_counseling_term`
--

LOCK TABLES `menu_hud_counseling_term` WRITE;
/*!40000 ALTER TABLE `menu_hud_counseling_term` DISABLE KEYS */;
INSERT INTO `menu_hud_counseling_term` VALUES ('2','Completed',0),('3','Dropped Out',1),('4','Referred',2),('5','No Further Contact',3);
/*!40000 ALTER TABLE `menu_hud_counseling_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_counseling_type`
--

DROP TABLE IF EXISTS `menu_hud_counseling_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_counseling_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_counseling_type`
--

LOCK TABLES `menu_hud_counseling_type` WRITE;
/*!40000 ALTER TABLE `menu_hud_counseling_type` DISABLE KEYS */;
INSERT INTO `menu_hud_counseling_type` VALUES ('2','Phone',0),('3','Internet',1),('5','Face to Face',2);
/*!40000 ALTER TABLE `menu_hud_counseling_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_ethnicity`
--

DROP TABLE IF EXISTS `menu_hud_ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_ethnicity` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_ethnicity`
--

LOCK TABLES `menu_hud_ethnicity` WRITE;
/*!40000 ALTER TABLE `menu_hud_ethnicity` DISABLE KEYS */;
INSERT INTO `menu_hud_ethnicity` VALUES ('0','3.a No',0),('1','3.b Yes',1),('2','3.c Chose Not to Respond',2);
/*!40000 ALTER TABLE `menu_hud_ethnicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_finance_type`
--

DROP TABLE IF EXISTS `menu_hud_finance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_finance_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_finance_type`
--

LOCK TABLES `menu_hud_finance_type` WRITE;
/*!40000 ALTER TABLE `menu_hud_finance_type` DISABLE KEYS */;
INSERT INTO `menu_hud_finance_type` VALUES ('2','FHA',0),('3','VA',1),('4','Conventional',2),('5','USDA',3);
/*!40000 ALTER TABLE `menu_hud_finance_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_highest_edu`
--

DROP TABLE IF EXISTS `menu_hud_highest_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_highest_edu` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_highest_edu`
--

LOCK TABLES `menu_hud_highest_edu` WRITE;
/*!40000 ALTER TABLE `menu_hud_highest_edu` DISABLE KEYS */;
INSERT INTO `menu_hud_highest_edu` VALUES ('2','Elementary',0),('3','Junior High School',1),('4','High School',2),('5','Junior College',3),('6','University',4),('7','Graduate School',5),('8','Other',6);
/*!40000 ALTER TABLE `menu_hud_highest_edu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_mortgage_type`
--

DROP TABLE IF EXISTS `menu_hud_mortgage_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_mortgage_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_mortgage_type`
--

LOCK TABLES `menu_hud_mortgage_type` WRITE;
/*!40000 ALTER TABLE `menu_hud_mortgage_type` DISABLE KEYS */;
INSERT INTO `menu_hud_mortgage_type` VALUES ('10','10-year ARM',8),('11','Interest Only',9),('12','40-year fixed',10),('13','2-year ARM',11),('14','N/A',12),('15','Other',13),('2','30-year fixed',0),('3','20-year fixed',1),('4','15-year fixed',2),('5','10-year fixed',3),('6','1-year ARM',4),('7','3-year ARM',5),('8','5-year ARM',6),('9','7-year ARM',7);
/*!40000 ALTER TABLE `menu_hud_mortgage_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_outreach`
--

DROP TABLE IF EXISTS `menu_hud_outreach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_outreach` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_outreach`
--

LOCK TABLES `menu_hud_outreach` WRITE;
/*!40000 ALTER TABLE `menu_hud_outreach` DISABLE KEYS */;
INSERT INTO `menu_hud_outreach` VALUES ('2','6.a Pre-Purchase Homebuyer Education',0),('3','6.b Financial Literacy',1),('4','6.c Resolve or Prevent Mortgage Delinquency',2),('5','6.d Home Maint Financial Mgmt',3),('6','6.e Fair Housing',4),('7','6.f Predatory Lending',5),('8','6.g Rental',6),('9','6.h Other',7);
/*!40000 ALTER TABLE `menu_hud_outreach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_race_v2006`
--

DROP TABLE IF EXISTS `menu_hud_race_v2006`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_race_v2006` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_race_v2006`
--

LOCK TABLES `menu_hud_race_v2006` WRITE;
/*!40000 ALTER TABLE `menu_hud_race_v2006` DISABLE KEYS */;
INSERT INTO `menu_hud_race_v2006` VALUES ('10','4.i Multi-Race - Am. Indian or AK Native and Black or Af. American',8),('11','4.j Multi-Race - Other multiple race',9),('12','4.k Multi-Race - Chose not to respond',10),('2','4.a American Indian/Alaskan Native',0),('3','4.b Asian',1),('4','4.c Black or African American',2),('5','4.d Native Hawaiian or Other Pacific Islander',3),('6','4.e White',4),('7','4.f Multi-Race - Am. Indian or AK Native and White',5),('8','4.g Multi-Race - Asian and White',6),('9','4.h Multi-Race - Black or Af. American and White',7);
/*!40000 ALTER TABLE `menu_hud_race_v2006` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_hud_referred_by`
--

DROP TABLE IF EXISTS `menu_hud_referred_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_hud_referred_by` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_hud_referred_by`
--

LOCK TABLES `menu_hud_referred_by` WRITE;
/*!40000 ALTER TABLE `menu_hud_referred_by` DISABLE KEYS */;
INSERT INTO `menu_hud_referred_by` VALUES ('2','HUD Outreach',0),('3','Agency Outreach',1),('4','Another Person',2),('5','Lender',3),('6','Another Agency',4),('7','Real Estate Agent',5),('8','Other',6),('9','N/A',7);
/*!40000 ALTER TABLE `menu_hud_referred_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_income_freq`
--

DROP TABLE IF EXISTS `menu_income_freq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_income_freq` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_income_freq`
--

LOCK TABLES `menu_income_freq` WRITE;
/*!40000 ALTER TABLE `menu_income_freq` DISABLE KEYS */;
INSERT INTO `menu_income_freq` VALUES ('A','Annual',0),('B','Bi-Weekly',2),('M','Monthly',1),('W','Weekly',3);
/*!40000 ALTER TABLE `menu_income_freq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_income_type`
--

DROP TABLE IF EXISTS `menu_income_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_income_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_income_type`
--

LOCK TABLES `menu_income_type` WRITE;
/*!40000 ALTER TABLE `menu_income_type` DISABLE KEYS */;
INSERT INTO `menu_income_type` VALUES ('1','Employment',20),('11','Workers Comp',17),('12','Other Disability',18),('13','Other Retirement',19),('14','Investment',22),('15','Unemployment',21),('16','Veteran Benefits',16),('18','Other',23),('2','SDI',7),('20','SS - Disability',9),('21','SS - Retirement',10),('22','SS - Survivor',11),('23','SSI - Elderly',14),('24','SSI - Disability',13),('25','SSI - Child',12),('26','IHSS',5),('27','SS - Dependent',8),('28','FTDI',6),('29','CAPI',3),('4','GA',4),('5','CalWORKs',2),('6','Child Support',0),('7','Combo SS/SSI',15),('8','No Income',24),('9','Spousal Support',1);
/*!40000 ALTER TABLE `menu_income_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_intake_type`
--

DROP TABLE IF EXISTS `menu_intake_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_intake_type` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_intake_type`
--

LOCK TABLES `menu_intake_type` WRITE;
/*!40000 ALTER TABLE `menu_intake_type` DISABLE KEYS */;
INSERT INTO `menu_intake_type` VALUES ('E','Email',4),('I','In-house',1),('L','Letter',3),('O','Outreach',2),('T','Telephone',0);
/*!40000 ALTER TABLE `menu_intake_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_just_income`
--

DROP TABLE IF EXISTS `menu_just_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_just_income` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_just_income`
--

LOCK TABLES `menu_just_income` WRITE;
/*!40000 ALTER TABLE `menu_just_income` DISABLE KEYS */;
INSERT INTO `menu_just_income` VALUES ('A','No limit - only income = SSI, CalWORKs or GA/GR',0),('B','No limit - maintain low-income government benefits',1),('C','No limit - most income for nursing/medical expenses',2),('D','200% limit - obtain low-income government benefits',3),('E','200% limit - obtain/maintain disability benefits',4),('F','200% limit - seasonal / limited income prospects',5),('G','200% limit - unreimbursed medical expenses',6),('H','200% limit - fixed debts (rent, support, loans, etc.)',7),('I','200% limit - work or dependent care expenses',8),('J','200% limit - age or disability expenses',9),('K','200% limit - current taxes / employment deductions',10),('L','200% limit - no other affordable alternative',11);
/*!40000 ALTER TABLE `menu_just_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_language`
--

DROP TABLE IF EXISTS `menu_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_language` (
  `value` char(80) NOT NULL,
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_language`
--

LOCK TABLES `menu_language` WRITE;
/*!40000 ALTER TABLE `menu_language` DISABLE KEYS */;
INSERT INTO `menu_language` VALUES ('A','English',0),('B','Spanish',1),('C','Arabic',2),('D','Armenian',3),('E','Cantonese',4),('F','Farsi',5),('G','Hmong',6),('H','Hindi',7),('I','Japanese',8),('J','Korean',9),('K','Lao',10),('L','Mandarin',11),('M','Mien',12),('N','Punjabi',13),('O','Russian',14),('P','Sign Language',15),('Q','Tagalog',16),('R','Thai',17),('S','Ukranian',18),('T','Urdu',19),('U','Vietnamese',20),('V','Chinese',21),('W','Other',22);
/*!40000 ALTER TABLE `menu_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_languagefull`
--

DROP TABLE IF EXISTS `menu_languagefull`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_languagefull` (
  `value` char(80) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE,
  KEY `val` (`value`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_languagefull`
--

LOCK TABLES `menu_languagefull` WRITE;
/*!40000 ALTER TABLE `menu_languagefull` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_languagefull` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_lit_status`
--

DROP TABLE IF EXISTS `menu_lit_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_lit_status` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_lit_status`
--

LOCK TABLES `menu_lit_status` WRITE;
/*!40000 ALTER TABLE `menu_lit_status` DISABLE KEYS */;
INSERT INTO `menu_lit_status` VALUES ('1','Defendant',0),('2','Petitioner',1),('3','Plaintiff',2),('4','Respondent',3),('5','Appellant',4);
/*!40000 ALTER TABLE `menu_lit_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_lsc_other_matters`
--

DROP TABLE IF EXISTS `menu_lsc_other_matters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_lsc_other_matters` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_lsc_other_matters`
--

LOCK TABLES `menu_lsc_other_matters` WRITE;
/*!40000 ALTER TABLE `menu_lsc_other_matters` DISABLE KEYS */;
INSERT INTO `menu_lsc_other_matters` VALUES ('101','101 - Presentations to community groups',0),('102','102 - Legal education brochures',1),('103','103 - Legal education materials posted on web sites',2),('104','104 - Newsletter articles addressing Legal Ed topics',3),('105','105 - Video legal education materials',4),('109','109 - Other CLE',5),('111','111 - Workshops or Clinics',6),('112','112 - Help desk at court',7),('113','113 - Self-help printed materials (e.g. divorce kits)',8),('114','114 - Self-help materials posted on web site',9),('115','115 - Self-help materials posted on kiosks',10),('119','119 - Other Pro Se assistance',11),('121','121 - Referred to other provider of civil legal services',12),('122','122 - Referred to private bar',13),('123','123 - Referred to provider of human or social services',14),('129','129 - Referred to other source of  assistance',15),('131','131 - Informational notices published in print media',16),('132','132 - TV spots or PSAs',17),('133','133 - Radio spots or PSAs',18),('134','134 - Newsletters - external to program',19),('135','135 - Referral agreements with other agencies',20),('136','136 - \"How to reach us\" pages on web sites',21),('139','139 - Other Outreach',22),('141','141 - Legal education for lay service providers',23),('142','142 - Collaborative service delivery models',24),('149','149 - Other indirect services',25),('151','151 - Mediation/alternative dispute resolution services',26),('152','152 - Direct services',27),('159','159 - Other Matters, none of the above',28);
/*!40000 ALTER TABLE `menu_lsc_other_matters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_main_benefit`
--

DROP TABLE IF EXISTS `menu_main_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_main_benefit` (
  `value` char(4) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_main_benefit`
--

LOCK TABLES `menu_main_benefit` WRITE;
/*!40000 ALTER TABLE `menu_main_benefit` DISABLE KEYS */;
INSERT INTO `menu_main_benefit` VALUES ('0000','0000 00 No Main Benefit for Client',0),('0101','0101 01 Obtained federal bankruptcy protection',1),('0201','0201 02 Stopped debt collection harassment',2),('0301','0301 03 Overcame illegal sales contracts and/or warranties',3),('0401','0401 04 Overcame discrimination in obtaining credit',4),('0501','0501 05 Prevented or overcame utility termination',5),('0601','0601 06 Loans/Installment Purch.',6),('0701','0701 07 Prevented or overcame utility termination',7),('0801','0801 08 Unfair Sales Practices',8),('0901','0901 09 Obtained advice, brief services or referral on Consumer matter',9),('1103','1103 11 Obtained advice, brief services or referral on an Ed. matter',10),('2101','2101 21 Overcame job discrimination',11),('2201','2201 22 Obtained wages due',12),('2903','2903 29 Obtained advice, brief services or referral on Employment. matter',13),('3001','3001 30 Successful Adoption',14),('3102','3102 31 Obtained or preserved right to visitation',15),('3201','3201 32 Obtained a divorce, legal separation, or annulment',16),('3302','3302 33 Obtained guardianship for adoption for dependent child',17),('3401','3401 34 Name Change',18),('3501','3501 35 Prevented termination of parental rights',19),('3601','3601 36 Established paternity for a child',20),('3701','3701 37 Obtained protective order for victim of domestic violence',21),('3802','3802 38 Removed/Reduced Unfair Child Support',22),('3901','3901 39 Obtained advice, brief services or referral on a Family matter',23),('4101','4101 41 Delinquent',24),('4203','4203 42 Obtained advice, brief services or referral on Juvenile matter',25),('4901','4901 49 Other Juvenile',26),('5101','5101 51 Gained access to Medicare or Medicaid provider',27),('5201','5201 52 Obtained/preserved/increased Medicare or Medicaid benefits/rights',28),('5907','5907 59 Obtained advice, brief services or referral on a Health matter',29),('6101','6101 61 Obtained access to housing',30),('6201','6201 62 Avoided foreclosure or other loss of home',31),('6305','6305 63 Obtained repairs to dwelling',32),('6401','6401 64 Prevented denial of public housing tenant\'s rights',33),('6902','6902 69 Obtained advice, brief services or referral on a Housing matter',34),('7101','7101 71 Obtained/preserved/increased AFDC/other welfare benefit/right',35),('7201','7201 72 Black Lung',36),('7301','7301 73 Obtained/preserved/increased food stamps eligibility/right',37),('7401','7401 74 Social Security',38),('7501','7501 75 Obtained/preserved/increased SSI/SSD benefit/right',39),('7601','7601 76 Obtained/preserved/increased Unemployment comp. benefit/right',40),('7701','7701 77 Obtained/preserved/increased Veterans Benefits',41),('7801','7801 78 Obtained/preserved/increased Worker\'s Compensation',42),('7901','7901 79 Obtained advice, brief services or referral on an Income M. matter',43),('8105','8105 81 Other Immigration Benefit',44),('8201','8201 82 Mental Health',45),('8301','8301 83 Prisoner\'s Rights',46),('8402','8402 84 Obtained/preserved/increased benefits/rights of instit. persons',47),('8901','8901 89 Obtained advice, brief services or referral on an Ind. Rights matter',48),('9102','9102 91 Obtained assistance with other structural or governance issues.',49),('9201','9201 92 Indian / Tribal Law',50),('9301','9301 93 Overcame illegal taking of or restriction to a driver\'s license',51),('9401','9401 94 Defended a Torts action',52),('9502','9502 95 Obtained a living will or health proxy or power of attorney',53),('9901','9901 99 Obtained other benefit',54);
/*!40000 ALTER TABLE `menu_main_benefit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_marital`
--

DROP TABLE IF EXISTS `menu_marital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_marital` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_marital`
--

LOCK TABLES `menu_marital` WRITE;
/*!40000 ALTER TABLE `menu_marital` DISABLE KEYS */;
INSERT INTO `menu_marital` VALUES ('D','Divorced',2),('M','Married',1),('P','Separated',4),('R','Domestic Partner',5),('S','Single',0),('U','Not Provided',6),('W','Widowed',3);
/*!40000 ALTER TABLE `menu_marital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_med_dispute`
--

DROP TABLE IF EXISTS `menu_med_dispute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_med_dispute` (
  `value` varchar(3) NOT NULL DEFAULT '',
  `label` varchar(60) DEFAULT NULL,
  `menu_order` int(3) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_med_dispute`
--

LOCK TABLES `menu_med_dispute` WRITE;
/*!40000 ALTER TABLE `menu_med_dispute` DISABLE KEYS */;
INSERT INTO `menu_med_dispute` VALUES ('A','Family Law',0),('B','Consumer/Merchant',1),('C','Contract',2),('D','Neighbor',3),('E','Landlord/Tenant',4),('F','Family disputes over senior care',5),('G','Personal Injury',6),('H','Other',7);
/*!40000 ALTER TABLE `menu_med_dispute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_med_outcome`
--

DROP TABLE IF EXISTS `menu_med_outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_med_outcome` (
  `value` varchar(4) NOT NULL DEFAULT '',
  `label` varchar(60) DEFAULT NULL,
  `menu_order` int(3) DEFAULT NULL,
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_med_outcome`
--

LOCK TABLES `menu_med_outcome` WRITE;
/*!40000 ALTER TABLE `menu_med_outcome` DISABLE KEYS */;
INSERT INTO `menu_med_outcome` VALUES ('A','Settled',0),('B','Mediated / Not Settled',1),('C','2nd Party Declined',2),('D','1st Party Withdrew',3),('E','Partial Settlement',4),('F','Pre-Negotiation Counseling',5),('G','Inappropriate for Mediation',6),('H','Party 2 Withdrew',7),('I','Party 2 did not Respond',8);
/*!40000 ALTER TABLE `menu_med_outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_mlro_service`
--

DROP TABLE IF EXISTS `menu_mlro_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_mlro_service` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_mlro_service`
--

LOCK TABLES `menu_mlro_service` WRITE;
/*!40000 ALTER TABLE `menu_mlro_service` DISABLE KEYS */;
INSERT INTO `menu_mlro_service` VALUES ('1','Education/Advice/Material',0),('2','Prep Docs-Init appearance/Pre-lit',1),('3','Prep Docs-Pending litigation',2),('4','Orders/Judgment after hearing',3),('5','Hearing Preparation',4);
/*!40000 ALTER TABLE `menu_mlro_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_noncitizendoc`
--

DROP TABLE IF EXISTS `menu_noncitizendoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_noncitizendoc` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_noncitizendoc`
--

LOCK TABLES `menu_noncitizendoc` WRITE;
/*!40000 ALTER TABLE `menu_noncitizendoc` DISABLE KEYS */;
INSERT INTO `menu_noncitizendoc` VALUES ('A','Resident alien card',6),('B','Proof of relationship + INS document',4),('C','Alien registration receipt',1),('D','Record of arrival or depature',5),('E','Temporary resident card (SAW)',7),('F','Employment authorization',3),('G','Emergency (eligible but no documents)',2),('H','Not required (phone-only \"brief service\")',0);
/*!40000 ALTER TABLE `menu_noncitizendoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_noncitizentype`
--

DROP TABLE IF EXISTS `menu_noncitizentype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_noncitizentype` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL,
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_noncitizentype`
--

LOCK TABLES `menu_noncitizentype` WRITE;
/*!40000 ALTER TABLE `menu_noncitizentype` DISABLE KEYS */;
INSERT INTO `menu_noncitizentype` VALUES ('A','has \"green card\" (lawful permanent resident)',0),('B','has applied in U.S. for adjustment of status',1),('C','has filed abroad to adjust to LPR status',2),('D','pending self-petition (as widow, spouse, child or fiancÃ©)',3),('E','Asylum granted',4),('F','Family Unity',6),('G','Withholding or Deferral of Deportation / Removal',14),('H','IRCA',7),('I','NACARA (certain Guatemalans, Salvadorans &  Eastern Europeans)',9),('J','Refugee admission',10),('K','Registry',11),('L','Suspension of Deportation',12),('M','K visa applicant or holder',15),('N','S visa holder',16),('O','T visa applicant (includes derivative family member)',17),('P','U visa applicant (includes derivative family member)',18),('Q','V visa applicant or holder',19),('R','H-2B visa holder (rep limited to employment issues)',20),('S','â€  VAWA (rep limited to begin or pending petition)',23),('T','Conditional Entrant',5),('U','â€  Domestic violence exception (rep limited to escape)',21),('V','â€  Other violence (rep limited to escape or U/VAWA pet.)',22),('W','Marshall Islands, Micronesia, Northern Marianas Islands or Palau citizen',8),('X','VAWA petition granted',13);
/*!40000 ALTER TABLE `menu_noncitizentype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_office`
--

DROP TABLE IF EXISTS `menu_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_office` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  `map` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_office`
--

LOCK TABLES `menu_office` WRITE;
/*!40000 ALTER TABLE `menu_office` DISABLE KEYS */;
INSERT INTO `menu_office` VALUES ('10','Sacramento',0,NULL),('20','Woodland',1,NULL),('30','Chico',2,NULL),('40','Auburn',3,NULL),('50','Redding',4,NULL),('51','Shasta Senior',5,NULL),('60','Exec',6,NULL),('61','Hicap',7,NULL),('62','Dera',8,NULL),('63','Fundraising',9,NULL),('64','Public Relations',10,NULL),('65','SSA/WIEP',11,NULL),('70','VLSP',12,NULL),('80','SLH',13,NULL),('90','Solano',14,NULL),('91','Eureka',15,NULL),('92','Ukiah',16,NULL),('95','HRH',17,NULL);
/*!40000 ALTER TABLE `menu_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_outcome`
--

DROP TABLE IF EXISTS `menu_outcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_outcome` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_outcome`
--

LOCK TABLES `menu_outcome` WRITE;
/*!40000 ALTER TABLE `menu_outcome` DISABLE KEYS */;
INSERT INTO `menu_outcome` VALUES ('1','Hearing Won',0),('2','Hearing Lost',1),('3','Settled Favorably',2),('4','Settled Unfavorably',3),('5','Other Favorable',4),('6','Other Unfavorable',5),('7','No Effect',6),('8','Dismissed',7);
/*!40000 ALTER TABLE `menu_outcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_paitype`
--

DROP TABLE IF EXISTS `menu_paitype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_paitype` (
  `value` char(1) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `val` (`value`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_paitype`
--

LOCK TABLES `menu_paitype` WRITE;
/*!40000 ALTER TABLE `menu_paitype` DISABLE KEYS */;
INSERT INTO `menu_paitype` VALUES ('1','Pro Bono (In House)/Your Local VLSP program',0),('2','Pro Bono (Subgrant-Bar Association)',1),('3','Judicare/Reduced Fee Panel (Not typically used)',2),('4','Contract (Volume Case Services)',3),('5','Contract (Individual Cases) (Not typically used)',4),('6','Co-Counsel',5),('7','Lawyer Referral Service (See PAI policy)',6),('8','Other',7);
/*!40000 ALTER TABLE `menu_paitype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_poverty`
--

DROP TABLE IF EXISTS `menu_poverty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_poverty` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_poverty`
--

LOCK TABLES `menu_poverty` WRITE;
/*!40000 ALTER TABLE `menu_poverty` DISABLE KEYS */;
INSERT INTO `menu_poverty` VALUES ('0','3740',0),('1','10830',1),('2','14570',2),('3','18310',3),('4','22050',4),('5','25790',5),('6','29530',6),('7','33270',7),('8','37010',8);
/*!40000 ALTER TABLE `menu_poverty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_problem`
--

DROP TABLE IF EXISTS `menu_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_problem` (
  `value` char(3) NOT NULL DEFAULT '0',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_problem`
--

LOCK TABLES `menu_problem` WRITE;
/*!40000 ALTER TABLE `menu_problem` DISABLE KEYS */;
INSERT INTO `menu_problem` VALUES ('01','01 - Bankruptcy/Debtor Relief',0),('02','02 - Collection (Repo/Def/Garnish)',1),('03','03 - Contracts/Warranties',2),('04','04 - Collection Practices/Creditor Harassment',3),('05','05 - Predatory Lending Practices (Not Mortgages)',4),('06','06 - Loans/Installment Purch.',5),('07','07 - Public Utilities',6),('08','08 - Unfair and Deceptive Sales Practices',7),('09','09 - Other Consumer/Finance.',8),('11','11 - Student Financial Aid',9),('12','12 - Discipline (Including Expulsion and Suspension)',10),('13','13 - Special Education/Learning Disabilities',11),('14','14 - Access to Education (Including Bilingual, Residency, Testing)',12),('15','15 - Vocational Education',13),('19','19 - Other Education',14),('21','21 - Employment Discrimination',15),('22','22 - Wage Claims and other FLSA (Fair Labor Standards Act) Issues',16),('23','23 - EITC (Earned Income Tax Credit)',17),('24','24 - Taxes (Not EITC)',18),('25','25 - Employee Rights',19),('26','26 - Agricultural Worker Issues (Not Wage Claims/FLSA Issues)',20),('29','29 - Other Employment',21),('30','30 - Adoption',22),('31','31 - Custody/Visitation',23),('32','32 - Divorce/Separ./Annul.',24),('33','33 - Adult Guardianship/Conservatorship',25),('34','34 - Name Change',26),('35','35 - Parental Rights Termin.',27),('36','36 - Paternity',28),('37','37 - Domestic Abuse',29),('38','38 - Support',30),('39','39 - Other Family',31),('41','41 - Delinquent',32),('42','42 - Neglected/Abused/Depend.',33),('43','43 - Emancipation',34),('44','44 - Minor Guardianship/Conservatorship',35),('49','49 - Other Juvenile',36),('51','51 - Medicaid',37),('52','52 - Medicare',38),('53','53 - Government Children\'s Health Insurance Program',39),('54','54 - Home and Community Based Care',40),('55','55 - Private Health Insurance',41),('56','56 - Long Term Health Care Facilities',42),('57','57 - State and Local Health',43),('59','59 - Other Health',44),('61','61 - Fed. Subsidized Housing',45),('62','62 - Homeownership/Real Prop. (Not Foreclosure)',46),('63','63 - Private Landlord/Tenant',47),('64','64 - Public Housing',48),('65','65 - Mobile Homes',49),('66','66 - Housing Discrimination',50),('67','67 - Mortgage Foreclosure (Not Predatory Lending Practices)',51),('68','68 - Mortgage Predatory Lending/Practices',52),('69','69 - Other Housing',53),('71','71 - TANF',54),('72','72 - Social Security (Not SSDI)',55),('73','73 - Food Stamps / Commodities',56),('74','74 - SSDI',57),('75','75 - SSI',58),('76','76 - Unemployment Compensation',59),('77','77 - Veterans Benefits',60),('78','78 - State and Local Income Maintenance',61),('79','79 - Other Income Maintanence',62),('81','81 - Immigration / Natural.',63),('82','82 - Mental Health',64),('83','83 - Prisoner\'s Rights',65),('84','84 - Physically Disabled Rghts',66),('85','85 - Civil Rights',67),('86','86 - Human Trafficking',68),('89','89 - Other Individual Rights',69),('91','91 - Legal Assistance to Non-Profit Organization or Group (Including Inc./Dis.)',70),('92','92 - Indian / Tribal Law',71),('93','93 - Licenses (Drivers, Occupational, and Others)',72),('94','94 - Torts',73),('95','95 - Wills and Estates',74),('96','96 - Advance Directives/Powers of Attorney',75),('97','97 - Municipal Legal Needs',76),('99','99 - Other Miscellaneous',77);
/*!40000 ALTER TABLE `menu_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_problem_2007`
--

DROP TABLE IF EXISTS `menu_problem_2007`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_problem_2007` (
  `value` char(3) NOT NULL DEFAULT '0',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_problem_2007`
--

LOCK TABLES `menu_problem_2007` WRITE;
/*!40000 ALTER TABLE `menu_problem_2007` DISABLE KEYS */;
INSERT INTO `menu_problem_2007` VALUES ('01','01 - Bankruptcy/Debtor Relief',0),('02','02 - Collection (Repo/Def/Garnish)',1),('03','03 - Contracts/Warranties',2),('04','04 - Credit Access',3),('05','05 - Energy (Other than Public Utils)',4),('06','06 - Loans/Installment Purch.',5),('07','07 - Public Utilities',6),('08','08 - Unfair Sales Practices',7),('09','09 - Other Consumer/Finance.',8),('11','11 - Education',9),('21','21 - Job Discrimination',10),('22','22 - Wage Claims',11),('29','29 - Other Employment',12),('30','30 - Adoption',13),('31','31 - Custody/Visitation',14),('32','32 - Divorce/Separ./Annul.',15),('33','33 - Guardianship / Conserv.',16),('34','34 - Name Change',17),('35','35 - Parental Rights Termin.',18),('36','36 - Paternity',19),('37','37 - Spouse Abuse',20),('38','38 - Support',21),('39','39 - Other Family',22),('41','41 - Delinquent',23),('42','42 - Neglected/Abused/Depend.',24),('49','49 - Other Juvenile',25),('51','51 - Medicaid',26),('52','52 - Medicare',27),('59','59 - Other Health',28),('61','61 - Fed. Subsidized Housing',29),('62','62 - Homeownership/Real Prop.',30),('63','63 - Landlord/Tenant not Pub.H',31),('64','64 - Other Public Housing',32),('69','69 - Other Housing',33),('71','71 - AFDC / Other Welfare',34),('72','72 - Black Lung',35),('73','73 - Food Stamps / Commodities',36),('74','74 - Social Security',37),('75','75 - SSI',38),('76','76 - Unemployment Compensation',39),('77','77 - Veterans Benefits',40),('78','78 - Worker\'s Compensation',41),('79','79 - Other Income Maintanence',42),('81','81 - Immigration / Natural.',43),('82','82 - Mental Health',44),('83','83 - Prisoner\'s Rights',45),('84','84 - Physically Disabled Rghts',46),('89','89 - Other Individual Rights',47),('91','91 - Incorporation / Diss.',48),('92','92 - Indian / Tribal Law',49),('93','93 - Licenses (Auto and Other)',50),('94','94 - Torts',51),('95','95 - Wills and Estates',52),('99','99 - Other Miscellaneous',53);
/*!40000 ALTER TABLE `menu_problem_2007` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_problem_2008`
--

DROP TABLE IF EXISTS `menu_problem_2008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_problem_2008` (
  `value` char(3) NOT NULL DEFAULT '0',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_problem_2008`
--

LOCK TABLES `menu_problem_2008` WRITE;
/*!40000 ALTER TABLE `menu_problem_2008` DISABLE KEYS */;
INSERT INTO `menu_problem_2008` VALUES ('01','01 - Bankruptcy/Debtor Relief',0),('02','02 - Collection (Repo/Def/Garnish)',1),('03','03 - Contracts/Warranties',2),('04','04 - Collection Practices/Creditor Harassment',3),('05','05 - Predatory Lending Practices (Not Mortgages)',4),('06','06 - Loans/Installment Purch.',5),('07','07 - Public Utilities',6),('08','08 - Unfair and Deceptive Sales Practices',7),('09','09 - Other Consumer/Finance.',8),('11','11 - Student Financial Aid',9),('12','12 - Discipline (Including Expulsion and Suspension)',10),('13','13 - Special Education/Learning Disabilities',11),('14','14 - Access to Education (Including Bilingual, Residency, Testing)',12),('15','15 - Vocational Education',13),('16','16 - Student Financial Aid',14),('19','19 - Other Education',15),('21','21 - Employment Discrimination',16),('22','22 - Wage Claims and other FLSA (Fair Labor Standards Act) Issues',17),('23','23 - EITC (Earned Income Tax Credit)',18),('24','24 - Taxes (Not EITC)',19),('25','25 - Employee Rights',20),('26','26 - Agricultural Worker Issues (Not Wage Claims/FLSA Issues)',21),('29','29 - Other Employment',22),('30','30 - Adoption',23),('31','31 - Custody/Visitation',24),('32','32 - Divorce/Separ./Annul.',25),('33','33 - Adult Guardianship/Conservatorship',26),('34','34 - Name Change',27),('35','35 - Parental Rights Termin.',28),('36','36 - Paternity',29),('37','37 - Domestic Abuse',30),('38','38 - Support',31),('39','39 - Other Family',32),('41','41 - Delinquent',33),('42','42 - Neglected/Abused/Depend.',34),('43','43 - Emancipation',35),('44','44 - Minor Guardianship/Conservatorship',36),('49','49 - Other Juvenile',37),('51','51 - Medicaid',38),('52','52 - Medicare',39),('53','53 - Government Children\'s Health Insurance Program',40),('54','54 - Home and Community Based Care',41),('55','55 - Private Health Insurance',42),('56','56 - Long Term Health Care Facilities',43),('57','57 - State and Local Health',44),('59','59 - Other Health',45),('61','61 - Fed. Subsidized Housing',46),('62','62 - Homeownership/Real Prop. (Not Foreclosure)',47),('63','63 - Private Landlord/Tenant',48),('64','64 - Public Housing',49),('65','65 - Mobile Homes',50),('66','66 - Housing Discrimination',51),('67','67 - Mortgage Foreclosure (Not Predatory Lending Practices)',52),('68','68 - Mortgage Predatory Lending/Practices',53),('69','69 - Other Housing',54),('71','71 - TANF',55),('72','72 - Social Security (Not SSDI)',56),('73','73 - Food Stamps / Commodities',57),('74','74 - SSDI',58),('75','75 - SSI',59),('76','76 - Unemployment Compensation',60),('77','77 - Veterans Benefits',61),('78','78 - State and Local Income Maintenance',62),('79','79 - Other Income Maintanence',63),('81','81 - Immigration / Natural.',64),('82','82 - Mental Health',65),('83','83 - Prisoner\'s Rights',66),('84','84 - Physically Disabled Rghts',67),('85','85 - Civil Rights',68),('86','86 - Human Trafficking',69),('89','89 - Other Individual Rights',70),('91','91 - Legal Assistance to Non-Profit Organization or Group (Including Inc./Dis.)',71),('92','92 - Indian / Tribal Law',72),('93','93 - Licenses (Drivers, Occupational, and Others)',73),('94','94 - Torts',74),('95','95 - Wills and Estates',75),('96','96 - Advance Directives/Powers of Attorney',76),('97','97 - Municipal Legal Needs',77),('99','99 - Other Miscellaneous',78);
/*!40000 ALTER TABLE `menu_problem_2008` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_referred_by`
--

DROP TABLE IF EXISTS `menu_referred_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_referred_by` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_referred_by`
--

LOCK TABLES `menu_referred_by` WRITE;
/*!40000 ALTER TABLE `menu_referred_by` DISABLE KEYS */;
INSERT INTO `menu_referred_by` VALUES ('A','Advertisement',0),('B','Private Bar',1),('C','Court',2),('D','Community Organization',3),('E','Family',4),('F','Friend',5),('G','Outreach',6),('L','Other LS Program',7),('O','Other',12),('P','Prior Use',8),('Q','GA > SSI via DHS',9),('S','Social Agency',10),('T','Telephone Book',11),('U','Unknown',13),('Y','Adult Farm Mgmt.',14),('Z','Farm Advocate',15);
/*!40000 ALTER TABLE `menu_referred_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_reject_code`
--

DROP TABLE IF EXISTS `menu_reject_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_reject_code` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_reject_code`
--

LOCK TABLES `menu_reject_code` WRITE;
/*!40000 ALTER TABLE `menu_reject_code` DISABLE KEYS */;
INSERT INTO `menu_reject_code` VALUES ('1','Over Income',0),('10','Other',9),('2','Out of Service Area',1),('3','Fee Generating',2),('4','Affordable Altern. Avail.',3),('5','LSC Exclusion',4),('6','Non-critical Legal Need',5),('7','Conflict of Interest',6),('8','Likelihood of Success',7),('9','Excessive Assets',8);
/*!40000 ALTER TABLE `menu_reject_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_relation_codes`
--

DROP TABLE IF EXISTS `menu_relation_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_relation_codes` (
  `value` tinyint(4) NOT NULL DEFAULT '0',
  `label` char(30) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_relation_codes`
--

LOCK TABLES `menu_relation_codes` WRITE;
/*!40000 ALTER TABLE `menu_relation_codes` DISABLE KEYS */;
INSERT INTO `menu_relation_codes` VALUES (1,'Client',0),(2,'Opposing Party',1),(3,'Opposing Counsel',2),(5,'Judge',5),(50,'Referral Agency',6),(6,'Non Adv. Household',4),(7,'Adverse Household',3),(99,'Other',7);
/*!40000 ALTER TABLE `menu_relation_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_report_format`
--

DROP TABLE IF EXISTS `menu_report_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_report_format` (
  `value` char(4) NOT NULL DEFAULT '',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_order`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_report_format`
--

LOCK TABLES `menu_report_format` WRITE;
/*!40000 ALTER TABLE `menu_report_format` DISABLE KEYS */;
INSERT INTO `menu_report_format` VALUES ('html','Normal',0),('pdf','PDF',1),('csv','Spreadsheet',2);
/*!40000 ALTER TABLE `menu_report_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_residence`
--

DROP TABLE IF EXISTS `menu_residence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_residence` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_residence`
--

LOCK TABLES `menu_residence` WRITE;
/*!40000 ALTER TABLE `menu_residence` DISABLE KEYS */;
INSERT INTO `menu_residence` VALUES ('A','Boarding Home',0),('B','Homeless',1),('C','Motel',2),('D','Nursing Home',3),('E','Owner Condo',4),('F','Owner House',5),('G','Owner Mobile Home',6),('H','Rental Apartment',7),('I','Rental Condo',8),('J','Rental House',9),('K','Rental Mobile Home',10),('L','Rental Room',11),('M','Rec Vehicle',12),('N','Shelter',13),('P','Other',14),('R','Relative or Friend',15);
/*!40000 ALTER TABLE `menu_residence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_senior_ethnicity`
--

DROP TABLE IF EXISTS `menu_senior_ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_senior_ethnicity` (
  `value` char(3) NOT NULL DEFAULT '',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_senior_ethnicity`
--

LOCK TABLES `menu_senior_ethnicity` WRITE;
/*!40000 ALTER TABLE `menu_senior_ethnicity` DISABLE KEYS */;
INSERT INTO `menu_senior_ethnicity` VALUES ('AS','Asian Indian',4),('B','Black',2),('C','Caucasian',0),('CA','Cambodian',5),('CH','Chinese',6),('FI','Filipino',7),('GU','Guamanian',8),('H','Hispanic',1),('HA','Native Hawaiian',9),('JA','Japanese',10),('KO','Korean',11),('LA','Laotian',12),('N','American Indian/Alaska Native',3),('O','Other',15),('SA','Samoan',13),('VI','Vietnamese',14);
/*!40000 ALTER TABLE `menu_senior_ethnicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_sp_problem`
--

DROP TABLE IF EXISTS `menu_sp_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_sp_problem` (
  `value` char(3) NOT NULL DEFAULT '0',
  `label` char(80) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_sp_problem`
--

LOCK TABLES `menu_sp_problem` WRITE;
/*!40000 ALTER TABLE `menu_sp_problem` DISABLE KEYS */;
INSERT INTO `menu_sp_problem` VALUES ('010','010 - Chapter 7 Bankruptcy',0),('011','011 - Chapter 13 Wage Bank.',1),('012','012 - Chapter 12 Bank. Farm',2),('015','015 - Farm Repossession Moratorium',3),('020','020 - Garnishment/Attachment',4),('021','021 - Repossession/Deficiency',5),('022','022 - Other Collection Practice',6),('023','023 - Liens - Mechanics, etc.',7),('024','024 - Farm Chattel Repossession',8),('025','025 - Farm Chattel Release',9),('026','026 - Farm Chattel Other Art. 9',10),('027','027 - Farm Foreclosure Non Home',11),('030','030 - Sales Contracts',12),('031','031 - Service Contracts',13),('032','032 - Inadequate Repairs',14),('033','033 - Defective Goods',15),('034','034 - Insurance Claims',16),('035','035 - Insurance Questions/Analysis',17),('036','036 - Cemetery Lots',18),('037','037 - Farm Lease - Chattel',19),('038','038 - Farm Lease - Realty',20),('040','040 - Credit Access',21),('041','041 - Farm Loan App FmHA',22),('042','042 - Farm Loan App Private Lender',23),('050','050 - Energy Other than Utilities.',24),('060','060 - Truth-in-Lending',25),('062','062 - Loans, Non-collection',26),('063','063 - Farm Loan - Negotiated w/ FmHA',27),('064','064 - Farm Loan - Negotiated w Priva',28),('065','065 - Farm Loan - Non-collection',29),('070','070 - Utility Shut-off',30),('071','071 - Other Utility',31),('080','080 - Unfair Sales Practices',32),('090','090 - Financial Problems Generally',33),('091','091 - Other Consumer',34),('092','092 - Farm Financial - Other',35),('110','110 - Sch. Disc.-Suspension',36),('111','111 - Sch. Disc.-Expulsion',37),('112','112 - Sch. Disc.-Other',38),('113','113 - Special Ed. - Elig/Assess',39),('114','114 - Special Ed. - Services',40),('115','115 - Special Ed. - Placement',41),('116','116 - Special Ed. - Discipline',42),('117','117 - Special Ed. - Other',43),('118','118 - Early Interv/Childhd Educ',44),('119','119 - Sec. 504 Sch. Accom',45),('120','120 - Homeless Student',46),('121','121 - LEP Student',47),('122','122 - Extracurricular Activity',48),('123','123 - Other Education Programs',49),('124','124 - Low Student Achievement',50),('125','125 - Grad. Requirements',51),('126','126 - Sch. Enrollment/Placement',52),('127','127 - Sch. Dist. Transfer',53),('128','128 - Truancy',54),('129','129 - Sch. Bus Transportation',55),('130','130 - Discrimination/Bias',56),('131','131 - Harassment/Maltreatment',57),('132','132 - Mental Health.Social Serv',58),('133','133 - Vocational Ed.',59),('134','134 - Student Loans',60),('135','135 - Other Education',61),('210','210 - Job Discrimination',62),('220','220 - Wage Claims',63),('221','221 - AWPA',64),('230','230 - Migrant & SAWPA Claims',65),('240','240 - Fair Labor Standards Act',66),('250','250 - Farm Labor Contract Regis',67),('260','260 - Pesticide Claims',68),('270','270 - H-2 & H-2a Workers',69),('280','280 - Wagner-Peyser Act',70),('290','290 - Employment Termination',71),('291','291 - CETA, WIN Other Training',72),('292','292 - Employment Conditions',73),('293','293 - Employment Contracts',74),('294','294 - Other Employment',75),('300','300 - Adoption',76),('310','310 - Visitation',77),('311','311 - Custody',78),('312','312 - Custody with Abuse',79),('313','313 - Visitation w/ Safety Iss.',80),('314','314 - Teenage Client Safety',81),('320','320 - Divorce/Separation',82),('330','330 - Guardian/Conservator',83),('340','340 - Name Change',84),('350','350 - Par. Rgts.Term. Prv.',85),('360','360 - Paternity',86),('370','370 - Family/HH Abuse',87),('371','371 - OFP threats/old evid.',88),('372','372 - OFP Custody',89),('373','373 - OFP Screening Problem',90),('374','374 - OFP Language/Cultural',91),('375','375 - OFP Interstate/Foreign',92),('376','376 - OFP for Minor',93),('377','377 - Abuse - Mediation',94),('378','378 - Abuse - Victim\'s Rights',95),('379','379 - Abuse - Other',96),('380','380 - Child Support',97),('383','383 - Rem/Red Unfair Csupport',98),('390','390 - Other Family',99),('410','410 - Delinquent',100),('420','420 - Dependency/Neglect',101),('490','490 - Status Offense',102),('491','491 - Other Juvenile',103),('510','510 - Medical Assistance',104),('520','520 - Medicare',105),('530','530 - Hill-Burton',106),('531','531 - GAMC',107),('532','532 - Other Health',108),('591','591 - Minnesota Care',109),('620','620 - Default, Delinquency',110),('621','621 - HUD Assignment',111),('622','622 - Contract for Deed Cancel',112),('623','623 - Mortgage Foreclosure',113),('625','625 - Purchase/Sale Real Prop.',114),('626','626 - Real Property Liens',115),('627','627 - Rehab Prog for Homeowners',116),('628','628 - Homestead Transfers',117),('629','629 - Other Real Property',118),('630','630 - Tenant Remedies Actions',119),('631','631 - Rent W/H & UD (Fritz)',120),('632','632 - Other Maint/Repair Prob',121),('633','633 - Other Private UD',122),('634','634 - Lockout/Distraint',123),('635','635 - Utility shut-off by LL',124),('636','636 - Action for Rent by LL',125),('637','637 - Security Deposits',126),('638','638 - Other $ Claim by Tenant',127),('639','639 - Other Private LL/Tenant',127),('640','640 - Public Housing Admissions',127),('641','641 - Public Hsng Evict - No UD',127),('642','642 - Public Hsng UD',127),('649','649 - Public Hsing - Other',127),('650','650 - Sec 8 Admission/Cert',127),('651','651 - Sec 8 Evictions - No UD',127),('652','652 - Sec 8 UD',127),('653','653 - Sec 8 Term of Certificate',127),('659','659 - Other Section 8',127),('660','660 - Sec 221/236 Admissions',127),('661','661 - Sec 221/236 Evict - No UD',127),('662','662 - Sec 221/236 Subsidized',127),('681','681 - Farm Moratorium - Homeste',127),('682','682 - Farm Cont Cancel - Home',127),('683','683 - Farm Foreclosure - Home',127),('684','684 - Farm Loan - FmHA - Home',127),('685','685 - Farm Loan/ Private/  Home',127),('690','690 - Discrimination',127),('691','691 - Displacement',127),('697','697 - Expungement - Criminal',127),('699','699 - Miscellaneous Other',127),('710','710 - MFIP Appl/Eligibility',127),('711','711 - MFIP Financial',127),('712','712 - MFIP Social Svcs IV-D',127),('713','713 - GA Eligibility',127),('714','714 - GA Financial',127),('715','715 - GA - Service',127),('716','716 - MSA',127),('717','717 - Other Soc Svcs - WIN',127),('718','718 - Other Welfare - Child Wel',127),('719','719 - EA and EGA',127),('720','720 - Mental Health',127),('721','721 - Child Care Disputes',127),('722','722 - Employment Sanction',127),('723','723 - Paternity Sanction',127),('724','724 - Full Family Sanction',127),('725','725 - Five Year Limit Terminati',127),('726','726 - Expungement - Criminal',127),('730','730 - Food Stamps - Eligibility',127),('731','731 - Food Stamps - Financial',127),('732','732 - Other Food Stamps',127),('740','740 - OASDI - Overpay/Financial',127),('741','741 - OASDI Disability Issues',127),('742','742 - OASDI - SSA Other',127),('750','750 - SSI - Overpayments/Financ',127),('751','751 - SSI Disability',127),('752','752 - SSI - Other',127),('753','753 - Ramsey County SSI Contrac',127),('760','760 - Unemployment Compens.',127),('770','770 - Veteran\'s Benefits',127),('780','780 - Worker\'s Compensation',127),('790','790 - Other Government Benefits',127),('810','810 - Immigration/Nat.',127),('811','811 - Citizenship',127),('820','820 - Commitment Generally',127),('821','821 - Restoration to Capacity',127),('822','822 - Challenge to Orig Commit',127),('823','823 - Condition of Confinement',127),('824','824 - Change in Commitment',127),('825','825 - Other Mental Health',127),('830','830 - Prisoner\'s Rights',127),('840','840 - Physically Disabled Rgts.',127),('841','841 - Other Disabled Person Rts',127),('890','890 - Other Individual Rights',127),('910','910 - Incorporation/Dissolution',127),('920','920 - Indian Tribal Law',127),('930','930 - Licenses (Auto & Other)',127),('940','940 - Torts',127),('941','941 - Negligence - Plaintiff',127),('942','942 - Negligence - Defendant',127),('943','943 - Intentional Torts',127),('950','950 - Wills',127),('951','951 - Estate Plan/Inheritance',127),('952','952 - Cert. of Survivorship',127),('953','953 - Other Estate / Probate',127),('960','960 - Tax Issues',127),('990','990 - Other Miscellaneous',127);
/*!40000 ALTER TABLE `menu_sp_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_state`
--

DROP TABLE IF EXISTS `menu_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_state` (
  `value` char(2) NOT NULL DEFAULT '',
  `label` char(2) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_order`),
  KEY `label` (`label`),
  KEY `val` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_state`
--

LOCK TABLES `menu_state` WRITE;
/*!40000 ALTER TABLE `menu_state` DISABLE KEYS */;
INSERT INTO `menu_state` VALUES ('AK','AK',0),('AL','AL',1),('GA','GA',10),('HI','HI',11),('IA','IA',12),('ID','ID',13),('IL','IL',14),('IN','IN',15),('KS','KS',16),('KY','KY',17),('LA','LA',18),('MA','MA',19),('AR','AR',2),('MD','MD',20),('ME','ME',21),('MI','MI',22),('MN','MN',23),('MO','MO',24),('MS','MS',25),('MT','MT',26),('NC','NC',27),('ND','ND',28),('NE','NE',29),('AZ','AZ',3),('NH','NH',30),('NJ','NJ',31),('NM','NM',32),('NV','NV',33),('NY','NY',34),('OH','OH',35),('OK','OK',36),('OR','OR',37),('PA','PA',38),('PR','PR',39),('CA','CA',4),('RI','RI',40),('SC','SC',41),('SD','SD',42),('TN','TN',43),('TX','TX',44),('UT','UT',45),('VA','VA',46),('VT','VT',47),('WA','WA',48),('WI','WI',49),('CO','CO',5),('WV','WV',50),('WY','WY',51),('CT','CT',6),('DC','DC',7),('DE','DE',8),('FL','FL',9);
/*!40000 ALTER TABLE `menu_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_tickle_times`
--

DROP TABLE IF EXISTS `menu_tickle_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_tickle_times` (
  `value` varchar(8) NOT NULL,
  `label` varchar(8) NOT NULL,
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE,
  KEY `val` (`value`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_tickle_times`
--

LOCK TABLES `menu_tickle_times` WRITE;
/*!40000 ALTER TABLE `menu_tickle_times` DISABLE KEYS */;
INSERT INTO `menu_tickle_times` VALUES ('7:00 AM','7:00 AM',0),('7:30 AM','7:30 AM',1),('8:00 AM','8:00 AM',2),('8:30 AM','8:30 AM',3),('9:00 AM','9:00 AM',4),('9:30 AM','9:30 AM',5),('10:00 AM','10:00 AM',6),('10:30 AM','10:30 AM',7),('11:00 AM','11:00 AM',8),('11:30 AM','11:30 AM',9),('12:00 PM','12:00 PM',10),('12:30 PM','12:30 PM',11),('1:00 PM','1:00 PM',12),('1:30 PM','1:30 PM',13),('2:00 PM','2:00 PM',14),('2:30 PM','2:30 PM',15),('3:00 PM','3:00 PM',16),('3:30 PM','3:30 PM',17),('4:00 PM','4:00 PM',18),('4:30 PM','4:30 PM',19),('5:00 PM','5:00 PM',20),('5:30 PM','5:30 PM',21),('6:00 PM','6:00 PM',22),('6:30 PM','6:30 PM',23),('7:00 PM','7:00 PM',24),('7:30 PM','7:30 PM',25),('8:00 PM','8:00 PM',26),('8:30 PM','8:30 PM',27),('9:00 PM','9:00 PM',28),('9:30 PM','9:30 PM',29),('10:00 PM','10:00 PM',30),('10:30 PM','10:30 PM',31),('11:00 PM','11:00 PM',32),('11:30 PM','11:30 PM',33),('12:00 AM','12:00 AM',34),('12:30 AM','12:30 PM',35),('1:00 AM','1:00 AM',36),('1:30 AM','1:30 AM',37),('2:00 AM','2:00 AM',38),('2:30 AM','2:30 AM',39),('3:00 AM','3:00 AM',40),('3:30 AM','3:30 AM',41),('4:00 AM','4:00 AM',42),('4:30 AM','4:30 AM',43),('5:00 AM','5:00 AM',44),('5:30 AM','5:30 AM',45),('6:00 AM','6:00 AM',46),('6:30 AM','6:30 AM',47);
/*!40000 ALTER TABLE `menu_tickle_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_transfer_mode`
--

DROP TABLE IF EXISTS `menu_transfer_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_transfer_mode` (
  `value` tinyint(4) NOT NULL DEFAULT '0',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_transfer_mode`
--

LOCK TABLES `menu_transfer_mode` WRITE;
/*!40000 ALTER TABLE `menu_transfer_mode` DISABLE KEYS */;
INSERT INTO `menu_transfer_mode` VALUES (1,'Pika->Pika',0);
/*!40000 ALTER TABLE `menu_transfer_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_undup`
--

DROP TABLE IF EXISTS `menu_undup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_undup` (
  `value` tinyint(4) NOT NULL DEFAULT '0',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_undup`
--

LOCK TABLES `menu_undup` WRITE;
/*!40000 ALTER TABLE `menu_undup` DISABLE KEYS */;
INSERT INTO `menu_undup` VALUES (0,'Duplicated Service',1),(1,'Unduplicated Service',0);
/*!40000 ALTER TABLE `menu_undup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_yes_no`
--

DROP TABLE IF EXISTS `menu_yes_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_yes_no` (
  `value` tinyint(4) NOT NULL DEFAULT '0',
  `label` char(65) NOT NULL DEFAULT '',
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`),
  KEY `menu_order` (`menu_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_yes_no`
--

LOCK TABLES `menu_yes_no` WRITE;
/*!40000 ALTER TABLE `menu_yes_no` DISABLE KEYS */;
INSERT INTO `menu_yes_no` VALUES (0,'No',1),(1,'Yes',0);
/*!40000 ALTER TABLE `menu_yes_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motd`
--

DROP TABLE IF EXISTS `motd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motd` (
  `motd_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`motd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motd`
--

LOCK TABLES `motd` WRITE;
/*!40000 ALTER TABLE `motd` DISABLE KEYS */;
/*!40000 ALTER TABLE `motd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pb_attorneys`
--

DROP TABLE IF EXISTS `pb_attorneys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pb_attorneys` (
  `pba_id` int(11) NOT NULL DEFAULT '0',
  `atty_id` varchar(20) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `extra_name` varchar(20) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `firm` varchar(25) DEFAULT NULL,
  `phone_notes` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `address2` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `languages` varchar(100) DEFAULT NULL,
  `practice_areas` varchar(100) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `last_case` date DEFAULT NULL,
  `pbactive` tinyint(4) DEFAULT '0',
  `hourlyfee` decimal(4,2) DEFAULT NULL,
  `pbposition` varchar(10) DEFAULT NULL,
  `recruited` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pba_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pb_attorneys`
--

LOCK TABLES `pb_attorneys` WRITE;
/*!40000 ALTER TABLE `pb_attorneys` DISABLE KEYS */;
/*!40000 ALTER TABLE `pb_attorneys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pika_sync`
--

DROP TABLE IF EXISTS `pika_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pika_sync` (
  `pika_sync_id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(512) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  `synced` tinyint(1) DEFAULT '0',
  `del` tinyint(4) DEFAULT '0',
  `subject` varchar(128) DEFAULT NULL,
  `location_long` varchar(128) DEFAULT NULL,
  `summary` varchar(512) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pika_sync_id`)
) ENGINE=MyISAM AUTO_INCREMENT=427 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pika_sync`
--

LOCK TABLES `pika_sync` WRITE;
/*!40000 ALTER TABLE `pika_sync` DISABLE KEYS */;
/*!40000 ALTER TABLE `pika_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contents` mediumtext,
  PRIMARY KEY (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_options`
--

DROP TABLE IF EXISTS `transfer_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_options` (
  `transfer_option_id` int(11) NOT NULL DEFAULT '0',
  `label` varchar(64) NOT NULL DEFAULT 'NONAME',
  `url` varchar(128) NOT NULL DEFAULT '',
  `transfer_mode` tinyint(4) DEFAULT '1',
  `user` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`transfer_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_options`
--

LOCK TABLES `transfer_options` WRITE;
/*!40000 ALTER TABLE `transfer_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(25) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `group_id` varchar(12) NOT NULL DEFAULT 'NOGROUP',
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT 'NONAME',
  `nick_name` varchar(80) DEFAULT NULL,
  `extra_name` varchar(20) DEFAULT NULL,
  `search_name` varchar(80) DEFAULT NULL,
  `full_nick_name` varchar(80) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `attorney` tinyint(4) DEFAULT NULL,
  `atty_id` varchar(20) DEFAULT NULL,
  `session_data` text,
  `last_addr` varchar(50) DEFAULT NULL,
  `last_active` varchar(11) DEFAULT NULL,
  `firm` varchar(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `address2` varchar(64) DEFAULT NULL,
  `city` varchar(24) DEFAULT NULL,
  `state` varchar(24) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `county` varchar(64) DEFAULT NULL,
  `phone_notes` varchar(64) DEFAULT NULL,
  `languages` varchar(64) DEFAULT NULL,
  `practice_areas` varchar(64) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `last_case` date DEFAULT NULL,
  `user_office` varchar(3) DEFAULT NULL,
  `photo` varchar(80) DEFAULT NULL,
  `has_photo` tinyint(3) DEFAULT NULL,
  `usersite` varchar(225) DEFAULT NULL,
  `staff_phone` varchar(30) DEFAULT NULL,
  `sp_program` tinyint(3) DEFAULT NULL,
  `on_payroll` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (100502,'Michael.Cizmar','5f4dcc3b5aa765d61d8327deb882cf99',1,'system','Michael',NULL,'Cizmar','',NULL,'Michael Cizmar','','','admin@mcplusa-dev.com',1,NULL,'def_office|s:1:\"X\";def_group|s:7:\"default\";def_intake_type|s:1:\"T\";paging|i:30;r_format|s:3:\"pdf\";theme|s:4:\"Blue\";font_size|s:6:\"Medium\";def_relation_code|i:1;def_ical_interval|i:30;def_rss_interval|i:7;popup|b:0;intake|s:1:\"T\";REQUEST_TOKEN|s:218:\"O:24:\"Zend_Oauth_Token_Request\":1:{s:10:\"\0*\0_params\";a:3:{s:11:\"oauth_token\";s:30:\"4/acrW7c8cWXIdRQAjZW4_pla7JHnU\";s:18:\"oauth_token_secret\";s:24:\"92HNM-tRbDyst7wC5Z1PaWIV\";s:24:\"oauth_callback_confirmed\";s:4:\"true\";}}\";ACCESS_TOKEN|s:189:\"O:23:\"Zend_Oauth_Token_Access\":1:{s:10:\"\0*\0_params\";a:2:{s:11:\"oauth_token\";s:45:\"1/rP-mAGc-5ZZSYn_jQtFaIFAqrtxLypfdKecQBRjI3SI\";s:18:\"oauth_token_secret\";s:24:\"n9qe0GeHrceJXKLlv2fgiQfk\";}}\";','10.10.10.170','1310669006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10','<img src=https://lsncweb.net/pika/onebox/images/.png>',0,'https://lsncweb.net/pika/onebox/staffurl.php?bugs= NONAME',NULL,0,1),(86,'Richard.Loerzel','5f4dcc3b5aa765d61d8327deb882cf99',1,'system','Richard','','Loerzel','',NULL,'Richard Loerzel','','','Test.User1@mcplusa-dev.com',1,'86','def_office|s:1:\"X\";def_group|s:7:\"default\";def_intake_type|s:1:\"T\";paging|i:30;r_format|s:3:\"pdf\";theme|s:4:\"Blue\";font_size|s:6:\"Medium\";def_relation_code|i:1;def_ical_interval|i:30;def_rss_interval|i:7;popup|b:0;case_id|s:1:\"1\";summary|s:22:\"Here is my description\";user_id|s:2:\"86\";act_date|s:10:\"03/02/2011\";act_time|s:8:\"12:01 PM\";act_end_time|s:0:\"\";completed|s:1:\"0\";act_url|s:11:\"cal_day.php\";act_id|s:0:\"\";act_type|s:1:\"K\";next_act|s:10:\"Save + New\";intake|s:1:\"T\";subject|s:12:\"Test Tickler\";where|s:5:\"Yeah!\";location_long|s:45:\"3717 N. Ravenswood Ave. #210, Chicago IL 6013\";last_changed|s:19:\"2011-03-02 14:03:47\";close_act|s:12:\"Save + Close\";sessionToken|s:45:\"1/aQ8j6ElCsBv70KxDEb4uooPw1-ctSVapMUlZhInDq5Q\";REQUEST_TOKEN|s:218:\"O:24:\"Zend_Oauth_Token_Request\":1:{s:10:\"\0*\0_params\";a:3:{s:11:\"oauth_token\";s:30:\"4/sD54rycGpiPqsIwma9JYVQBBegkA\";s:18:\"oauth_token_secret\";s:24:\"YlJ59qYRtu2ivoGOB3YNmo3O\";s:24:\"oauth_callback_confirmed\";s:4:\"true\";}}\";ACCESS_TOKEN|s:189:\"O:23:\"Zend_Oauth_Token_Access\":1:{s:10:\"\0*\0_params\";a:2:{s:11:\"oauth_token\";s:45:\"1/OId8jzgILN2R4R_APZKmUX7wHxMQblnJ5mnR7cpZkb8\";s:18:\"oauth_token_secret\";s:24:\"k-D_F7g9Ep4PRykhjvxcogHf\";}}\";','10.10.10.153','1310156794',NULL,'517 12th Street',NULL,'Sacramento','CA','95814','Sacramento','916-551-2114',NULL,NULL,NULL,NULL,'60','<img src=https://lsncweb.net/pika/onebox/images/msawyer.png>',1,'https://lsncweb.net/pika/onebox/staffurl.php?bugs=Mark Sawyer','916-551-2114',NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersbak`
--

DROP TABLE IF EXISTS `usersbak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersbak` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(25) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `group_id` varchar(12) NOT NULL DEFAULT 'NOGROUP',
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT 'NONAME',
  `nick_name` varchar(80) DEFAULT NULL,
  `extra_name` varchar(20) DEFAULT NULL,
  `search_name` varchar(80) DEFAULT NULL,
  `full_nick_name` varchar(80) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `attorney` tinyint(4) DEFAULT NULL,
  `atty_id` varchar(20) DEFAULT NULL,
  `session_data` text,
  `last_addr` varchar(50) DEFAULT NULL,
  `last_active` varchar(11) DEFAULT NULL,
  `firm` varchar(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `address2` varchar(64) DEFAULT NULL,
  `city` varchar(24) DEFAULT NULL,
  `state` varchar(24) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `county` varchar(64) DEFAULT NULL,
  `phone_notes` varchar(64) DEFAULT NULL,
  `languages` varchar(64) DEFAULT NULL,
  `practice_areas` varchar(64) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `last_case` date DEFAULT NULL,
  `user_office` varchar(3) DEFAULT NULL,
  `photo` varchar(80) DEFAULT NULL,
  `has_photo` tinyint(3) DEFAULT NULL,
  `usersite` varchar(225) DEFAULT NULL,
  `staff_phone` varchar(30) DEFAULT NULL,
  `sp_program` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersbak`
--

LOCK TABLES `usersbak` WRITE;
/*!40000 ALTER TABLE `usersbak` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersbak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip_codes`
--

DROP TABLE IF EXISTS `zip_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_codes` (
  `city` char(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) NOT NULL DEFAULT '',
  `area_code` char(3) DEFAULT NULL,
  `county` char(27) DEFAULT NULL,
  `rural_zip` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`zip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip_codes`
--

LOCK TABLES `zip_codes` WRITE;
/*!40000 ALTER TABLE `zip_codes` DISABLE KEYS */;
INSERT INTO `zip_codes` VALUES ('Los Angeles','CA','0','916','Los Angeles',0),('Los Angeles','CA','90001','916','Los Angeles',0),('Los Angeles','CA','90002','916','Los Angeles',0),('Los Angeles','CA','90003','916','Los Angeles',0),('Los Angeles','CA','90004','916','Los Angeles',0),('Los Angeles','CA','90005','916','Los Angeles',0),('Los Angeles','CA','90006','916','Los Angeles',0),('Los Angeles','CA','90007','916','Los Angeles',0),('Los Angeles','CA','90008','916','Los Angeles',0),('Los Angeles','CA','90009','916','Los Angeles',0),('Los Angeles','CA','90010','916','Los Angeles',0),('Los Angeles','CA','90011','916','Los Angeles',0),('Los Angeles','CA','90012','916','Los Angeles',0),('Los Angeles','CA','90013','916','Los Angeles',0),('Los Angeles','CA','90014','916','Los Angeles',0),('Los Angeles','CA','90015','916','Los Angeles',0),('Los Angeles','CA','90016','916','Los Angeles',0),('Los Angeles','CA','90017','916','Los Angeles',0),('Los Angeles','CA','90018','916','Los Angeles',0),('Los Angeles','CA','90019','916','Los Angeles',0),('Los Angeles','CA','90020','916','Los Angeles',0),('Los Angeles','CA','90021','916','Los Angeles',0),('Los Angeles','CA','90022','916','Los Angeles',0),('Los Angeles','CA','90023','916','Los Angeles',0),('Los Angeles','CA','90024','916','Los Angeles',0),('Los Angeles','CA','90025','916','Los Angeles',0),('Los Angeles','CA','90026','916','Los Angeles',0),('Los Angeles','CA','90027','916','Los Angeles',0),('Los Angeles','CA','90028','916','Los Angeles',0),('Los Angeles','CA','90029','916','Los Angeles',0),('Los Angeles','CA','90030','916','Los Angeles',0),('Los Angeles','CA','90031','916','Los Angeles',0),('Los Angeles','CA','90032','916','Los Angeles',0),('Los Angeles','CA','90033','916','Los Angeles',0),('Los Angeles','CA','90034','916','Los Angeles',0),('Los Angeles','CA','90035','916','Los Angeles',0),('Los Angeles','CA','90036','916','Los Angeles',0),('Los Angeles','CA','90037','916','Los Angeles',0),('Los Angeles','CA','90038','916','Los Angeles',0),('Los Angeles','CA','90039','916','Los Angeles',0),('Los Angeles','CA','90040','916','Los Angeles',0),('Los Angeles','CA','90041','916','Los Angeles',0),('Los Angeles','CA','90042','916','Los Angeles',0),('Los Angeles','CA','90043','916','Los Angeles',0),('Los Angeles','CA','90044','916','Los Angeles',0),('Los Angeles','CA','90045','916','Los Angeles',0),('Los Angeles','CA','90046','916','Los Angeles',0),('Los Angeles','CA','90047','916','Los Angeles',0),('Los Angeles','CA','90048','916','Los Angeles',0),('Los Angeles','CA','90049','916','Los Angeles',0),('Los Angeles','CA','90050','916','Los Angeles',0),('Los Angeles','CA','90051','916','Los Angeles',0),('Los Angeles','CA','90052','916','Los Angeles',0),('Los Angeles','CA','90053','916','Los Angeles',0),('Los Angeles','CA','90054','916','Los Angeles',0),('Los Angeles','CA','90055','916','Los Angeles',0),('Los Angeles','CA','90056','916','Los Angeles',0),('Los Angeles','CA','90057','916','Los Angeles',0),('Los Angeles','CA','90058','916','Los Angeles',0),('Los Angeles','CA','90059','916','Los Angeles',0),('Los Angeles','CA','90060','916','Los Angeles',0),('Los Angeles','CA','90061','916','Los Angeles',0),('Los Angeles','CA','90062','916','Los Angeles',0),('Los Angeles','CA','90063','916','Los Angeles',0),('Los Angeles','CA','90064','916','Los Angeles',0),('Los Angeles','CA','90065','916','Los Angeles',0),('Los Angeles','CA','90066','916','Los Angeles',0),('Los Angeles','CA','90067','916','Los Angeles',0),('Los Angeles','CA','90068','916','Los Angeles',0),('Los Angeles','CA','90069','916','Los Angeles',0),('Los Angeles','CA','90070','916','Los Angeles',0),('Los Angeles','CA','90071','916','Los Angeles',0),('Los Angeles','CA','90072','916','Los Angeles',0),('Los Angeles','CA','90073','916','Los Angeles',0),('Los Angeles','CA','90074','916','Los Angeles',0),('Los Angeles','CA','90075','916','Los Angeles',0),('Los Angeles','CA','90076','916','Los Angeles',0),('Los Angeles','CA','90077','916','Los Angeles',0),('Los Angeles','CA','90078','916','Los Angeles',0),('Los Angeles','CA','90079','916','Los Angeles',0),('Los Angeles','CA','90080','916','Los Angeles',0),('Los Angeles','CA','90082','916','Los Angeles',0),('Los Angeles','CA','90083','916','Los Angeles',0),('Los Angeles','CA','90084','916','Los Angeles',0),('Los Angeles','CA','90086','916','Los Angeles',0),('Los Angeles','CA','90087','916','Los Angeles',0),('Los Angeles','CA','90088','916','Los Angeles',0),('Los Angeles','CA','90089','916','Los Angeles',0),('Los Angeles','CA','90091','916','Los Angeles',0),('Los Angeles','CA','90093','916','Los Angeles',0),('Los Angeles','CA','90094','916','Los Angeles',0),('Los Angeles','CA','90095','916','Los Angeles',0),('Los Angeles','CA','90096','916','Los Angeles',0),('Los Angeles','CA','90097','916','Los Angeles',0),('Los Angeles','CA','90099','916','Los Angeles',0),('Los Angeles','CA','90101','916','Los Angeles',0),('Los Angeles','CA','90102','916','Los Angeles',0),('Los Angeles','CA','90185','916','Los Angeles',0),('Bell','CA','90201','916','Los Angeles',0),('Bell Gardens','CA','90202','916','Los Angeles',0),('Beverly Hills','CA','90209','916','Los Angeles',0),('Beverly Hills','CA','90210','916','Los Angeles',0),('Beverly Hills','CA','90211','916','Los Angeles',0),('Beverly Hills','CA','90212','916','Los Angeles',0),('Beverly Hills','CA','90213','916','Los Angeles',0),('Compton','CA','90220','916','Los Angeles',0),('Compton','CA','90221','916','Los Angeles',0),('Compton','CA','90222','916','Los Angeles',0),('Compton','CA','90223','916','Los Angeles',0),('Compton','CA','90224','916','Los Angeles',0),('Culver City','CA','90230','916','Los Angeles',0),('Culver City','CA','90231','916','Los Angeles',0),('Culver City','CA','90232','916','Los Angeles',0),('Culver City','CA','90233','916','Los Angeles',0),('Downey','CA','90239','916','Los Angeles',0),('Downey','CA','90240','916','Los Angeles',0),('Downey','CA','90241','916','Los Angeles',0),('Downey','CA','90242','916','Los Angeles',0),('El Segundo','CA','90245','916','Los Angeles',0),('Gardena','CA','90247','916','Los Angeles',0),('Gardena','CA','90248','916','Los Angeles',0),('Gardena','CA','90249','916','Los Angeles',0),('Hawthorne','CA','90250','916','Los Angeles',0),('Hawthorne','CA','90251','916','Los Angeles',0),('Hermosa Beach','CA','90254','916','Los Angeles',0),('Huntington Park','CA','90255','916','Los Angeles',0),('Lawndale','CA','90260','916','Los Angeles',0),('Lawndale','CA','90261','916','Los Angeles',0),('Lynwood','CA','90262','916','Los Angeles',0),('Malibu','CA','90263','916','Los Angeles',0),('Malibu','CA','90264','916','Los Angeles',0),('Malibu','CA','90265','916','Los Angeles',0),('Manhattan Beach','CA','90266','916','Los Angeles',0),('Manhattan Beach','CA','90267','916','Los Angeles',0),('Maywood','CA','90270','916','Los Angeles',0),('Pacific Palisades','CA','90272','916','Los Angeles',0),('Palos Verdes Peninsula','CA','90274','916','Los Angeles',0),('Rancho Palos Verdes','CA','90275','916','Los Angeles',0),('Redondo Beach','CA','90277','916','Los Angeles',0),('Redondo Beach','CA','90278','916','Los Angeles',0),('South Gate','CA','90280','916','Los Angeles',0),('Topanga','CA','90290','916','Los Angeles',0),('Venice','CA','90291','916','Los Angeles',0),('Marina Del Rey','CA','90292','916','Los Angeles',0),('Playa Del Rey','CA','90293','916','Los Angeles',0),('Venice','CA','90294','916','Los Angeles',0),('Marina Del Rey','CA','90295','916','Los Angeles',0),('Playa Del Rey','CA','90296','916','Los Angeles',0),('Inglewood','CA','90300','916','Los Angeles',0),('Inglewood','CA','90301','916','Los Angeles',0),('Inglewood','CA','90302','916','Los Angeles',0),('Inglewood','CA','90303','916','Los Angeles',0),('Inglewood','CA','90304','916','Los Angeles',0),('Inglewood','CA','90305','916','Los Angeles',0),('Inglewood','CA','90306','916','Los Angeles',0),('Inglewood','CA','90307','916','Los Angeles',0),('Inglewood','CA','90308','916','Los Angeles',0),('Inglewood','CA','90309','916','Los Angeles',0),('Inglewood','CA','90310','916','Los Angeles',0),('Inglewood','CA','90311','916','Los Angeles',0),('Inglewood','CA','90312','916','Los Angeles',0),('Inglewood','CA','90313','916','Los Angeles',0),('Inglewood','CA','90397','916','Los Angeles',0),('Inglewood','CA','90398','916','Los Angeles',0),('Santa Monica','CA','90400','916','Los Angeles',0),('Santa Monica','CA','90401','916','Los Angeles',0),('Santa Monica','CA','90402','916','Los Angeles',0),('Santa Monica','CA','90403','916','Los Angeles',0),('Santa Monica','CA','90404','916','Los Angeles',0),('Santa Monica','CA','90405','916','Los Angeles',0),('Santa Monica','CA','90406','916','Los Angeles',0),('Santa Monica','CA','90407','916','Los Angeles',0),('Santa Monica','CA','90408','916','Los Angeles',0),('Santa Monica','CA','90409','916','Los Angeles',0),('Santa Monica','CA','90410','916','Los Angeles',0),('Santa Monica','CA','90411','916','Los Angeles',0),('Torrance','CA','90500','916','Los Angeles',0),('Torrance','CA','90501','916','Los Angeles',0),('Torrance','CA','90502','916','Los Angeles',0),('Torrance','CA','90503','916','Los Angeles',0),('Torrance','CA','90504','916','Los Angeles',0),('Torrance','CA','90505','916','Los Angeles',0),('Torrance','CA','90506','916','Los Angeles',0),('Torrance','CA','90507','916','Los Angeles',0),('Torrance','CA','90508','916','Los Angeles',0),('Torrance','CA','90509','916','Los Angeles',0),('Torrance','CA','90510','916','Los Angeles',0),('Whittier','CA','90601','916','Los Angeles',0),('Whittier','CA','90602','916','Los Angeles',0),('Whittier','CA','90603','916','Los Angeles',0),('Whittier','CA','90604','916','Los Angeles',0),('Whittier','CA','90605','916','Los Angeles',0),('Whittier','CA','90606','916','Los Angeles',0),('Whittier','CA','90607','916','Los Angeles',0),('Whittier','CA','90608','916','Los Angeles',0),('Whittier','CA','90609','916','Los Angeles',0),('Whittier','CA','90610','916','Los Angeles',0),('Whittier','CA','90612','916','Los Angeles',0),('Buena Park','CA','90620','916','Orange',0),('Buena Park','CA','90621','916','Orange',0),('Buena Park','CA','90622','916','Orange',0),('Buena Park','CA','90623','916','Orange',0),('Buena Park','CA','90624','916','Orange',0),('Cypress','CA','90630','916','Orange',0),('La Habra','CA','90631','916','Orange',0),('La Habra','CA','90632','916','Orange',0),('La Habra','CA','90633','916','Orange',0),('La Mirada','CA','90637','916','Los Angeles',0),('La Mirada','CA','90638','916','Los Angeles',0),('La Mirada','CA','90639','916','Los Angeles',0),('Montebello','CA','90640','916','Los Angeles',0),('Norwalk','CA','90650','916','Los Angeles',0),('Norwalk','CA','90651','916','Los Angeles',0),('Norwalk','CA','90652','916','Los Angeles',0),('Norwalk','CA','90659','916','Los Angeles',0),('Pico Rivera','CA','90660','916','Los Angeles',0),('Pico Rivera','CA','90661','916','Los Angeles',0),('Pico Rivera','CA','90662','916','Los Angeles',0),('Pico Rivera','CA','90665','916','Los Angeles',0),('Santa Fe Springs','CA','90670','916','Los Angeles',0),('Santa Fe Springs','CA','90671','916','Los Angeles',0),('Stanton','CA','90680','916','Orange',0),('Artesia','CA','90701','916','Los Angeles',0),('Artesia','CA','90702','916','Los Angeles',0),('Cerritos','CA','90703','916','Los Angeles',0),('Avalon','CA','90704','916','Los Angeles',0),('Bellflower','CA','90706','916','Los Angeles',0),('Bellflower','CA','90707','916','Los Angeles',0),('Harbor City','CA','90710','916','Los Angeles',0),('Lakewood','CA','90711','916','Los Angeles',0),('Lakewood','CA','90712','916','Los Angeles',0),('Lakewood','CA','90713','916','Los Angeles',0),('Lakewood','CA','90714','916','Los Angeles',0),('Lakewood','CA','90715','916','Los Angeles',0),('Hawaiian Gardens','CA','90716','916','Los Angeles',0),('Lomita','CA','90717','916','Los Angeles',0),('Los Alamitos','CA','90720','916','Orange',0),('Los Alamitos','CA','90721','916','Orange',0),('Paramount','CA','90723','916','Los Angeles',0),('San Pedro','CA','90731','916','Los Angeles',0),('San Pedro','CA','90732','916','Los Angeles',0),('San Pedro','CA','90733','916','Los Angeles',0),('San Pedro','CA','90734','916','Los Angeles',0),('Seal Beach','CA','90740','916','Orange',0),('Sunset Beach','CA','90742','916','Orange',0),('Surfside','CA','90743','916','Orange',0),('Wilmington','CA','90744','916','Los Angeles',0),('Carson','CA','90745','916','Los Angeles',0),('Carson','CA','90746','916','Los Angeles',0),('Carson','CA','90747','916','Los Angeles',0),('Wilmington','CA','90748','916','Los Angeles',0),('Carson','CA','90749','916','Los Angeles',0),('Long Beach','CA','90800','916','Los Angeles',0),('Long Beach','CA','90801','916','Los Angeles',0),('Long Beach','CA','90802','916','Los Angeles',0),('Long Beach','CA','90803','916','Los Angeles',0),('Long Beach','CA','90804','916','Los Angeles',0),('Long Beach','CA','90805','916','Los Angeles',0),('Long Beach','CA','90806','916','Los Angeles',0),('Long Beach','CA','90807','916','Los Angeles',0),('Long Beach','CA','90808','916','Los Angeles',0),('Long Beach','CA','90809','916','Los Angeles',0),('Long Beach','CA','90810','916','Los Angeles',0),('Long Beach','CA','90813','916','Los Angeles',0),('Long Beach','CA','90814','916','Los Angeles',0),('Long Beach','CA','90815','916','Los Angeles',0),('Long Beach','CA','90822','916','Los Angeles',0),('Long Beach','CA','90831','916','Los Angeles',0),('Long Beach','CA','90832','916','Los Angeles',0),('Long Beach','CA','90833','916','Los Angeles',0),('Long Beach','CA','90834','916','Los Angeles',0),('Long Beach','CA','90835','916','Los Angeles',0),('Long Beach','CA','90840','916','Los Angeles',0),('Long Beach','CA','90842','916','Los Angeles',0),('Long Beach','CA','90844','916','Los Angeles',0),('Long Beach','CA','90845','916','Los Angeles',0),('Long Beach','CA','90846','916','Los Angeles',0),('Long Beach','CA','90847','916','Los Angeles',0),('Long Beach','CA','90848','916','Los Angeles',0),('Long Beach','CA','90853','916','Los Angeles',0),('Long Beach','CA','90888','916','Los Angeles',0),('Altadena','CA','91001','916','Los Angeles',0),('Altadena','CA','91003','916','Los Angeles',0),('Arcadia','CA','91006','916','Los Angeles',0),('Arcadia','CA','91007','916','Los Angeles',0),('Duarte','CA','91009','916','Los Angeles',0),('Duarte','CA','91010','916','Los Angeles',0),('La Canada Flintridge','CA','91011','916','Los Angeles',0),('La Canada Flintridge','CA','91012','916','Los Angeles',0),('Monrovia','CA','91016','916','Los Angeles',0),('Monrovia','CA','91017','916','Los Angeles',0),('Montrose','CA','91020','916','Los Angeles',0),('Montrose','CA','91021','916','Los Angeles',0),('Mount Wilson','CA','91023','916','Los Angeles',0),('Sierra Madre','CA','91024','916','Los Angeles',0),('Sierra Madre','CA','91025','916','Los Angeles',0),('South Pasadena','CA','91030','916','Los Angeles',0),('South Pasadena','CA','91031','916','Los Angeles',0),('Sunland','CA','91040','916','Los Angeles',0),('Sunland','CA','91041','916','Los Angeles',0),('Tujunga','CA','91042','916','Los Angeles',0),('Tujunga','CA','91043','916','Los Angeles',0),('Verdugo City','CA','91046','916','Los Angeles',0),('Pasadena','CA','91050','916','Los Angeles',0),('Pasadena','CA','91051','916','Los Angeles',0),('Arcadia','CA','91066','916','Los Angeles',0),('Arcadia','CA','91077','916','Los Angeles',0),('Pasadena','CA','91100','916','Los Angeles',0),('Pasadena','CA','91101','916','Los Angeles',0),('Pasadena','CA','91102','916','Los Angeles',0),('Pasadena','CA','91103','916','Los Angeles',0),('Pasadena','CA','91104','916','Los Angeles',0),('Pasadena','CA','91105','916','Los Angeles',0),('Pasadena','CA','91106','916','Los Angeles',0),('Pasadena','CA','91107','916','Los Angeles',0),('San Marino','CA','91108','916','Los Angeles',0),('Pasadena','CA','91109','916','Los Angeles',0),('Pasadena','CA','91110','916','Los Angeles',0),('Pasadena','CA','91114','916','Los Angeles',0),('Pasadena','CA','91115','916','Los Angeles',0),('Pasadena','CA','91116','916','Los Angeles',0),('Pasadena','CA','91117','916','Los Angeles',0),('San Marino','CA','91118','916','Los Angeles',0),('Pasadena','CA','91121','916','Los Angeles',0),('Pasadena','CA','91122','916','Los Angeles',0),('Pasadena','CA','91123','916','Los Angeles',0),('Pasadena','CA','91124','916','Los Angeles',0),('Pasadena','CA','91125','916','Los Angeles',0),('Pasadena','CA','91126','916','Los Angeles',0),('Pasadena','CA','91127','916','Los Angeles',0),('Pasadena','CA','91128','916','Los Angeles',0),('Pasadena','CA','91129','916','Los Angeles',0),('Pasadena','CA','91131','916','Los Angeles',0),('Pasadena','CA','91175','916','Los Angeles',0),('Pasadena','CA','91182','916','Los Angeles',0),('Pasadena','CA','91183','916','Los Angeles',0),('Pasadena','CA','91184','916','Los Angeles',0),('Pasadena','CA','91185','916','Los Angeles',0),('Pasadena','CA','91186','916','Los Angeles',0),('Pasadena','CA','91187','916','Los Angeles',0),('Pasadena','CA','91188','916','Los Angeles',0),('Pasadena','CA','91189','916','Los Angeles',0),('Pasadena','CA','91191','916','Los Angeles',0),('Glendale','CA','91200','916','Los Angeles',0),('Glendale','CA','91201','916','Los Angeles',0),('Glendale','CA','91202','916','Los Angeles',0),('Glendale','CA','91203','916','Los Angeles',0),('Glendale','CA','91204','916','Los Angeles',0),('Glendale','CA','91205','916','Los Angeles',0),('Glendale','CA','91206','916','Los Angeles',0),('Glendale','CA','91207','916','Los Angeles',0),('Glendale','CA','91208','916','Los Angeles',0),('Glendale','CA','91209','916','Los Angeles',0),('Glendale','CA','91210','916','Los Angeles',0),('Glendale','CA','91214','916','Los Angeles',0),('Glendale','CA','91221','916','Los Angeles',0),('Glendale','CA','91222','916','Los Angeles',0),('La Crescenta','CA','91224','916','Los Angeles',0),('Glendale','CA','91225','916','Los Angeles',0),('Glendale','CA','91226','916','Los Angeles',0),('Agoura Hills','CA','91301','916','Los Angeles',0),('Calabasas','CA','91302','916','Los Angeles',0),('Canoga Park','CA','91303','916','Los Angeles',0),('Canoga Park','CA','91304','916','Los Angeles',0),('Canoga Park','CA','91305','916','Los Angeles',0),('Winnetka','CA','91306','916','Los Angeles',0),('Canoga Park','CA','91307','916','Los Angeles',0),('Canoga Park','CA','91308','916','Los Angeles',0),('Canoga Park','CA','91309','916','Los Angeles',0),('Castaic','CA','91310','916','Los Angeles',0),('Chatsworth','CA','91311','916','Los Angeles',0),('Chatsworth','CA','91312','916','Los Angeles',0),('Chatsworth','CA','91313','916','Los Angeles',0),('Encino','CA','91316','916','Los Angeles',0),('Newbury Park','CA','91319','916','Ventura',0),('Newbury Park','CA','91320','916','Ventura',0),('Newhall','CA','91321','916','Los Angeles',0),('Newhall','CA','91322','916','Los Angeles',0),('Northridge','CA','91324','916','Los Angeles',0),('Northridge','CA','91325','916','Los Angeles',0),('Northridge','CA','91326','916','Los Angeles',0),('Northridge','CA','91327','916','Los Angeles',0),('Northridge','CA','91328','916','Los Angeles',0),('Northridge','CA','91329','916','Los Angeles',0),('Northridge','CA','91330','916','Los Angeles',0),('Pacoima','CA','91331','916','Los Angeles',0),('Pacoima','CA','91333','916','Los Angeles',0),('Pacoima','CA','91334','916','Los Angeles',0),('Reseda','CA','91335','916','Los Angeles',0),('Reseda','CA','91337','916','Los Angeles',0),('San Fernando','CA','91340','916','Los Angeles',0),('San Fernando','CA','91341','916','Los Angeles',0),('Sylmar','CA','91342','916','Los Angeles',0),('Sepulveda','CA','91343','916','Los Angeles',0),('Granada Hills','CA','91344','916','Los Angeles',0),('Mission Hills','CA','91345','916','Los Angeles',0),('Mission Hills','CA','91346','916','Los Angeles',0),('Santa Clarita','CA','91350','916','Los Angeles',0),('Canyon Country','CA','91351','916','Los Angeles',0),('Sun Valley','CA','91352','916','Los Angeles',0),('Sun Valley','CA','91353','916','Los Angeles',0),('Valencia','CA','91354','916','Los Angeles',0),('Valencia','CA','91355','916','Los Angeles',0),('Tarzana','CA','91356','916','Los Angeles',0),('Tarzana','CA','91357','916','Los Angeles',0),('Thousand Oaks','CA','91358','916','Ventura',0),('Thousand Oaks','CA','91359','916','Ventura',0),('Thousand Oaks','CA','91360','916','Ventura',0),('Thousand Oaks','CA','91361','916','Los Angeles',0),('Thousand Oaks','CA','91362','916','Ventura',0),('Thousand Oaks','CA','91363','916','Ventura',0),('Woodland Hills','CA','91364','916','Los Angeles',0),('Woodland Hills','CA','91365','916','Los Angeles',0),('Woodland Hills','CA','91367','916','Los Angeles',0),('Woodland Hills','CA','91370','916','Los Angeles',0),('Woodland Hills','CA','91371','916','Los Angeles',0),('Calabasas','CA','91372','916','Los Angeles',0),('Agoura Hills','CA','91375','916','Los Angeles',0),('Agoura Hills','CA','91376','916','Los Angeles',0),('Santa Clarita','CA','91380','916','Los Angeles',0),('Newhall','CA','91381','916','Los Angeles',0),('Newhall','CA','91382','916','Los Angeles',0),('Santa Clarita','CA','91383','916','Los Angeles',0),('Castaic','CA','91384','916','Los Angeles',1),('Valencia','CA','91385','916','Los Angeles',0),('Canyon Country','CA','91386','916','Los Angeles',0),('Van Nuys','CA','91388','916','Los Angeles',0),('Sylmar','CA','91392','916','Los Angeles',0),('North Hills','CA','91393','916','Los Angeles',0),('Granada Hills','CA','91394','916','Los Angeles',0),('Mission Hills','CA','91395','916','Los Angeles',0),('Winnetka','CA','91396','916','Los Angeles',0),('Woodland Hills','CA','91399','916','Los Angeles',0),('Van Nuys','CA','91400','916','Los Angeles',0),('Van Nuys','CA','91401','916','Los Angeles',0),('Panorama City','CA','91402','916','Los Angeles',0),('Sherman Oaks','CA','91403','916','Los Angeles',0),('Van Nuys','CA','91404','916','Los Angeles',0),('Van Nuys','CA','91405','916','Los Angeles',0),('Van Nuys','CA','91406','916','Los Angeles',0),('Van Nuys','CA','91407','916','Los Angeles',0),('Van Nuys','CA','91408','916','Los Angeles',0),('Van Nuys','CA','91409','916','Los Angeles',0),('Van Nuys','CA','91410','916','Los Angeles',0),('Van Nuys','CA','91411','916','Los Angeles',0),('Panorama City','CA','91412','916','Los Angeles',0),('Sherman Oaks','CA','91413','916','Los Angeles',0),('Encino','CA','91416','916','Los Angeles',0),('Sherman Oaks','CA','91423','916','Los Angeles',0),('Encino','CA','91426','916','Los Angeles',0),('Encino','CA','91436','916','Los Angeles',0),('Van Nuys','CA','91470','916','Los Angeles',0),('Van Nuys','CA','91482','916','Los Angeles',0),('Van Nuys','CA','91494','916','Los Angeles',0),('Van Nuys','CA','91495','916','Los Angeles',0),('Van Nuys','CA','91496','916','Los Angeles',0),('Van Nuys','CA','91497','916','Los Angeles',0),('Van Nuys','CA','91499','916','Los Angeles',0),('Burbank','CA','91500','916','Los Angeles',0),('Burbank','CA','91501','916','Los Angeles',0),('Burbank','CA','91502','916','Los Angeles',0),('Burbank','CA','91503','916','Los Angeles',0),('Burbank','CA','91504','916','Los Angeles',0),('Burbank','CA','91505','916','Los Angeles',0),('Burbank','CA','91506','916','Los Angeles',0),('Burbank','CA','91507','916','Los Angeles',0),('Burbank','CA','91508','916','Los Angeles',0),('Burbank','CA','91510','916','Los Angeles',0),('Burbank','CA','91520','916','Los Angeles',0),('Burbank','CA','91521','916','Los Angeles',0),('Burbank','CA','91522','916','Los Angeles',0),('Burbank','CA','91523','916','Los Angeles',0),('Burbank','CA','91526','916','Los Angeles',0),('North Hollywood','CA','91600','916','Los Angeles',0),('North Hollywood','CA','91601','916','Los Angeles',0),('Toluca Lake','CA','91602','916','Los Angeles',0),('North Hollywood','CA','91603','916','Los Angeles',0),('Studio City','CA','91604','916','Los Angeles',0),('North Hollywood','CA','91605','916','Los Angeles',0),('North Hollywood','CA','91606','916','Los Angeles',0),('North Hollywood','CA','91607','916','Los Angeles',0),('Universal City','CA','91608','916','Los Angeles',0),('North Hollywood','CA','91609','916','Los Angeles',0),('Toluca Lake','CA','91610','916','Los Angeles',0),('North Hollywood','CA','91611','916','Los Angeles',0),('North Hollywood','CA','91612','916','Los Angeles',0),('Studio City','CA','91614','916','Los Angeles',0),('North Hollywood','CA','91615','916','Los Angeles',0),('North Hollywood','CA','91616','916','Los Angeles',0),('Valley Village','CA','91617','916','Los Angeles',0),('Universal City','CA','91618','916','Los Angeles',0),('Alta Loma','CA','91701','916','San Bernardino',0),('Azusa','CA','91702','916','Los Angeles',0),('Baldwin Park','CA','91706','916','Los Angeles',0),('Chino','CA','91708','916','San Bernardino',0),('Chino','CA','91709','916','San Bernardino',0),('Chino','CA','91710','916','San Bernardino',0),('Claremont','CA','91711','916','Los Angeles',0),('City Of Industry','CA','91714','916','Los Angeles',0),('City Of Industry','CA','91715','916','Los Angeles',0),('City Of Industry','CA','91716','916','Los Angeles',0),('Corona','CA','91718','916','Riverside',0),('Corona','CA','91719','916','Riverside',0),('Corona','CA','91720','916','Riverside',0),('Covina','CA','91722','916','Los Angeles',0),('Covina','CA','91723','916','Los Angeles',0),('Covina','CA','91724','916','Los Angeles',0),('Rancho Cucamonga','CA','91729','916','San Bernardino',0),('Rancho Cucamonga','CA','91730','916','San Bernardino',0),('El Monte','CA','91731','916','Los Angeles',0),('El Monte','CA','91732','916','Los Angeles',0),('El Monte','CA','91733','916','Los Angeles',0),('El Monte','CA','91734','916','Los Angeles',0),('El Monte','CA','91735','916','Los Angeles',0),('Alta Loma','CA','91737','916','San Bernardino',0),('Etiwanda','CA','91739','916','San Bernardino',0),('Glendora','CA','91740','916','Los Angeles',0),('Glendora','CA','91741','916','Los Angeles',0),('Guasti','CA','91743','916','San Bernardino',0),('La Puente','CA','91744','916','Los Angeles',0),('La Puente','CA','91745','916','Los Angeles',0),('La Puente','CA','91746','916','Los Angeles',0),('La Puente','CA','91747','916','Los Angeles',0),('La Puente','CA','91748','916','Los Angeles',0),('La Puente','CA','91749','916','Los Angeles',0),('La Verne','CA','91750','916','Los Angeles',0),('Mira Loma','CA','91752','916','Riverside',0),('Monterey Park','CA','91754','916','Los Angeles',0),('Monterey Park','CA','91755','916','Los Angeles',0),('Monterey Park','CA','91756','916','Los Angeles',0),('Ontario','CA','91758','916','San Bernardino',0),('Mt Baldy','CA','91759','916','Los Angeles',0),('Norco','CA','91760','916','Riverside',0),('Ontario','CA','91761','916','San Bernardino',0),('Ontario','CA','91762','916','San Bernardino',0),('Montclair','CA','91763','916','San Bernardino',0),('Ontario','CA','91764','916','San Bernardino',0),('Pomona','CA','91765','916','Los Angeles',0),('Pomona','CA','91766','916','Los Angeles',0),('Pomona','CA','91767','916','Los Angeles',0),('Pomona','CA','91768','916','Los Angeles',0),('Pomona','CA','91769','916','Los Angeles',0),('Rosemead','CA','91770','916','Los Angeles',0),('Rosemead','CA','91771','916','Los Angeles',0),('Rosemead','CA','91772','916','Los Angeles',0),('San Dimas','CA','91773','916','Los Angeles',0),('San Gabriel','CA','91775','916','Los Angeles',0),('San Gabriel','CA','91776','916','Los Angeles',0),('San Gabriel','CA','91778','916','Los Angeles',0),('Temple City','CA','91780','916','Los Angeles',0),('Upland','CA','91784','916','San Bernardino',0),('Upland','CA','91785','916','San Bernardino',0),('Upland','CA','91786','916','San Bernardino',0),('Walnut','CA','91788','916','Los Angeles',0),('Walnut','CA','91789','916','Los Angeles',0),('West Covina','CA','91790','916','Los Angeles',0),('West Covina','CA','91791','916','Los Angeles',0),('West Covina','CA','91792','916','Los Angeles',0),('West Covina','CA','91793','916','Los Angeles',0),('Walnut','CA','91795','916','Los Angeles',0),('Baldwin Park','CA','91797','916','Los Angeles',0),('Ontario','CA','91798','916','San Bernardino',0),('Pomona','CA','91799','916','Los Angeles',0),('Alhambra','CA','91800','916','Los Angeles',0),('Alhambra','CA','91801','916','Los Angeles',0),('Alhambra','CA','91802','916','Los Angeles',0),('Alhambra','CA','91803','916','Los Angeles',0),('Alhambra','CA','91804','916','Los Angeles',0),('Alhambra','CA','91805','916','Los Angeles',0),('Alhambra','CA','91825','916','Los Angeles',0),('Alhambra','CA','91841','916','Los Angeles',0),('Alhambra','CA','91896','916','Los Angeles',0),('Alhambra','CA','91899','916','Los Angeles',0),('Alpine','CA','91901','916','San Diego',0),('Bonita','CA','91902','916','San Diego',0),('Alpine','CA','91903','916','San Diego',0),('Boulevard','CA','91905','916','San Diego',0),('Campo','CA','91906','916','San Diego',0),('Bonita','CA','91908','916','San Diego',0),('Chula Vista','CA','91909','916','San Diego',0),('Chula Vista','CA','91910','916','San Diego',0),('Chula Vista','CA','91911','916','San Diego',0),('Chula Vista','CA','91912','916','San Diego',0),('Chula Vista','CA','91913','916','San Diego',0),('Chula Vista','CA','91914','916','San Diego',0),('Chula Vista','CA','91915','916','San Diego',0),('Descanso','CA','91916','916','San Diego',0),('Dulzura','CA','91917','916','San Diego',0),('Guatay','CA','91931','916','San Diego',0),('Imperial Beach','CA','91932','916','San Diego',0),('Imperial Beach','CA','91933','916','San Diego',0),('Jacumba','CA','91934','916','San Diego',0),('Jamul','CA','91935','916','San Diego',0),('La Mesa','CA','91941','916','San Diego',0),('La Mesa','CA','91942','916','San Diego',0),('La Mesa','CA','91943','916','San Diego',0),('La Mesa','CA','91944','916','San Diego',0),('Lemon Grove','CA','91945','916','San Diego',0),('Lemon Grove','CA','91946','916','San Diego',0),('Lincoln Acres','CA','91947','916','San Diego',0),('Mount Laguna','CA','91948','916','San Diego',0),('National City','CA','91950','916','San Diego',0),('National City','CA','91951','916','San Diego',0),('Pine Valley','CA','91962','916','San Diego',0),('Potrero','CA','91963','916','San Diego',0),('Spring Valley','CA','91976','916','San Diego',0),('Spring Valley','CA','91977','916','San Diego',0),('Spring Valley','CA','91978','916','San Diego',0),('Spring Valley','CA','91979','916','San Diego',0),('Tecate','CA','91980','916','San Diego',0),('Tecate','CA','91987','916','San Diego',0),('Potrero','CA','91990','916','San Diego',0),('Alpine','CA','92001','916','San Diego',0),('Bonita','CA','92002','916','San Diego',0),('Bonsall','CA','92003','916','San Diego',0),('Borrego Springs','CA','92004','916','San Diego',1),('Boulevard','CA','92005','916','San Diego',0),('Campo','CA','92006','916','San Diego',0),('Cardiff By The Sea','CA','92007','916','San Diego',0),('Carlsbad','CA','92008','916','San Diego',0),('Carlsbad','CA','92009','916','San Diego',0),('Chula Vista','CA','92010','916','San Diego',0),('Chula Vista','CA','92011','916','San Diego',0),('Chula Vista','CA','92013','916','San Diego',0),('Del Mar','CA','92014','916','San Diego',0),('Descanso','CA','92016','916','San Diego',0),('Dulzura','CA','92017','916','San Diego',0),('Carlsbad','CA','92018','916','San Diego',0),('El Cajon','CA','92019','916','San Diego',0),('El Cajon','CA','92020','916','San Diego',0),('El Cajon','CA','92021','916','San Diego',0),('El Cajon','CA','92022','916','San Diego',0),('Encinitas','CA','92023','916','San Diego',0),('Encinitas','CA','92024','916','San Diego',0),('Escondido','CA','92025','916','San Diego',0),('Escondido','CA','92026','916','San Diego',0),('Escondido','CA','92027','916','San Diego',0),('Fallbrook','CA','92028','916','San Diego',0),('Escondido','CA','92029','916','San Diego',0),('Escondido','CA','92030','916','San Diego',0),('Pine Valley','CA','92031','916','San Diego',0),('Imperial Beach','CA','92032','916','San Diego',0),('Escondido','CA','92033','916','San Diego',0),('Jacumba','CA','92034','916','San Diego',0),('Jamul','CA','92035','916','San Diego',0),('Julian','CA','92036','916','San Diego',1),('La Jolla','CA','92037','916','San Diego',0),('La Jolla','CA','92038','916','San Diego',0),('La Jolla','CA','92039','916','San Diego',0),('Lakeside','CA','92040','916','San Diego',0),('La Mesa','CA','92041','916','San Diego',0),('La Mesa','CA','92042','916','San Diego',0),('Lemon Grove','CA','92045','916','San Diego',0),('Escondido','CA','92046','916','San Diego',0),('Oceanside','CA','92049','916','San Diego',0),('National City','CA','92050','916','San Diego',0),('Oceanside','CA','92051','916','San Diego',0),('Oceanside','CA','92052','916','San Diego',0),('Oceanside','CA','92054','916','San Diego',0),('Oceanside','CA','92055','916','San Diego',0),('Oceanside','CA','92056','916','San Diego',0),('Oceanside','CA','92057','916','San Diego',0),('Oceanside','CA','92058','916','San Diego',0),('Pala','CA','92059','916','San Diego',1),('Palomar Mountain','CA','92060','916','San Diego',0),('Pauma Valley','CA','92061','916','San Diego',0),('Pine Valley','CA','92062','916','San Diego',0),('Potrero','CA','92063','916','San Diego',0),('Poway','CA','92064','916','San Diego',0),('Ramona','CA','92065','916','San Diego',1),('Warner Springs','CA','92066','916','San Diego',1),('Rancho Santa Fe','CA','92067','916','San Diego',0),('San Luis Rey','CA','92068','916','San Diego',0),('San Marcos','CA','92069','916','San Diego',0),('Santa Ysabel','CA','92070','916','San Diego',1),('Santee','CA','92071','916','San Diego',0),('Santee','CA','92072','916','San Diego',0),('San Ysidro','CA','92073','916','San Diego',0),('Poway','CA','92074','916','San Diego',0),('Solana Beach','CA','92075','916','San Diego',0),('Spring Valley','CA','92077','916','San Diego',0),('Spring Valley','CA','92078','916','San Diego',0),('San Marcos','CA','92079','916','San Diego',0),('Tecate','CA','92080','916','San Diego',0),('Valley Center','CA','92082','916','San Diego',0),('Vista','CA','92083','916','San Diego',0),('Vista','CA','92084','916','San Diego',0),('Vista','CA','92085','916','San Diego',0),('Warner Springs','CA','92086','916','San Diego',1),('Fallbrook','CA','92088','916','San Diego',0),('El Cajon','CA','92090','916','San Diego',0),('Rancho Santa Fe','CA','92091','916','San Diego',0),('La Jolla','CA','92092','916','San Diego',0),('La Jolla','CA','92093','916','San Diego',0),('Tecate','CA','92094','916','San Diego',0),('San Marcos','CA','92096','916','San Diego',0),('San Diego','CA','92100','916','San Diego',0),('San Diego','CA','92101','916','San Diego',0),('San Diego','CA','92102','916','San Diego',0),('San Diego','CA','92103','916','San Diego',0),('San Diego','CA','92104','916','San Diego',0),('San Diego','CA','92105','916','San Diego',0),('San Diego','CA','92106','916','San Diego',0),('San Diego','CA','92107','916','San Diego',0),('San Diego','CA','92108','916','San Diego',0),('San Diego','CA','92109','916','San Diego',0),('San Diego','CA','92110','916','San Diego',0),('San Diego','CA','92111','916','San Diego',0),('San Diego','CA','92112','916','San Diego',0),('San Diego','CA','92113','916','San Diego',0),('San Diego','CA','92114','916','San Diego',0),('San Diego','CA','92115','916','San Diego',0),('San Diego','CA','92116','916','San Diego',0),('San Diego','CA','92117','916','San Diego',0),('Coronado','CA','92118','916','San Diego',0),('San Diego','CA','92119','916','San Diego',0),('San Diego','CA','92120','916','San Diego',0),('San Diego','CA','92121','916','San Diego',0),('San Diego','CA','92122','916','San Diego',0),('San Diego','CA','92123','916','San Diego',0),('San Diego','CA','92124','916','San Diego',0),('San Diego','CA','92126','916','San Diego',0),('San Diego','CA','92127','916','San Diego',0),('San Diego','CA','92128','916','San Diego',0),('San Diego','CA','92129','916','San Diego',0),('San Diego','CA','92130','916','San Diego',0),('San Diego','CA','92131','916','San Diego',0),('San Diego','CA','92132','916','San Diego',0),('San Diego','CA','92133','916','San Diego',0),('San Diego','CA','92134','916','San Diego',0),('San Diego','CA','92135','916','San Diego',0),('San Diego','CA','92136','916','San Diego',0),('San Diego','CA','92137','916','San Diego',0),('San Diego','CA','92138','916','San Diego',0),('San Diego','CA','92139','916','San Diego',0),('San Diego','CA','92140','916','San Diego',0),('San Diego','CA','92142','916','San Diego',0),('San Ysidro','CA','92143','916','San Diego',0),('San Diego','CA','92145','916','San Diego',0),('San Diego','CA','92147','916','San Diego',0),('San Diego','CA','92149','916','San Diego',0),('San Diego','CA','92150','916','San Diego',0),('San Diego','CA','92152','916','San Diego',0),('San Diego','CA','92153','916','San Diego',0),('San Diego','CA','92154','916','San Diego',0),('San Diego','CA','92155','916','San Diego',0),('San Diego','CA','92158','916','San Diego',0),('San Diego','CA','92159','916','San Diego',0),('San Diego','CA','92160','916','San Diego',0),('San Diego','CA','92161','916','San Diego',0),('San Diego','CA','92162','916','San Diego',0),('San Diego','CA','92163','916','San Diego',0),('San Diego','CA','92164','916','San Diego',0),('San Diego','CA','92165','916','San Diego',0),('San Diego','CA','92166','916','San Diego',0),('San Diego','CA','92167','916','San Diego',0),('San Diego','CA','92168','916','San Diego',0),('San Diego','CA','92169','916','San Diego',0),('San Diego','CA','92170','916','San Diego',0),('San Diego','CA','92171','916','San Diego',0),('San Diego','CA','92172','916','San Diego',0),('San Diego','CA','92173','916','San Diego',0),('San Diego','CA','92174','916','San Diego',0),('San Diego','CA','92175','916','San Diego',0),('San Diego','CA','92176','916','San Diego',0),('San Diego','CA','92177','916','San Diego',0),('Coronado','CA','92178','916','San Diego',0),('San Diego','CA','92179','916','San Diego',0),('San Diego','CA','92180','916','San Diego',0),('San Diego','CA','92181','916','San Diego',0),('San Diego','CA','92182','916','San Diego',0),('San Diego','CA','92183','916','San Diego',0),('San Diego','CA','92184','916','San Diego',0),('San Diego','CA','92185','916','San Diego',0),('San Diego','CA','92186','916','San Diego',0),('San Diego','CA','92187','916','San Diego',0),('San Diego','CA','92188','916','San Diego',0),('San Diego','CA','92189','916','San Diego',0),('San Diego','CA','92190','916','San Diego',0),('San Diego','CA','92191','916','San Diego',0),('San Diego','CA','92192','916','San Diego',0),('San Diego','CA','92193','916','San Diego',0),('San Diego','CA','92194','916','San Diego',0),('San Diego','CA','92195','916','San Diego',0),('San Diego','CA','92196','916','San Diego',0),('San Diego','CA','92197','916','San Diego',0),('San Diego','CA','92198','916','San Diego',0),('San Diego','CA','92199','916','San Diego',0),('Indio','CA','92201','916','Riverside',1),('Indio','CA','92202','916','Riverside',0),('Indio','CA','92203','916','Riverside',0),('Indian Wells','CA','92210','916','Riverside',0),('Palm Desert','CA','92211','916','Riverside',0),('Banning','CA','92220','916','Riverside',0),('Bard','CA','92222','916','Imperial',1),('Beaumont','CA','92223','916','Riverside',0),('Blythe','CA','92225','916','Riverside',1),('Blythe','CA','92226','916','Riverside',0),('Brawley','CA','92227','916','Imperial',1),('Cabazon','CA','92230','916','Riverside',0),('Calexico','CA','92231','916','Imperial',1),('Calexico','CA','92232','916','Imperial',1),('Calipatria','CA','92233','916','Imperial',1),('Cathedral City','CA','92234','916','Riverside',0),('Cathedral City','CA','92235','916','Riverside',1),('Coachella','CA','92236','916','Riverside',1),('Desert Center','CA','92239','916','Riverside',1),('Desert Hot Springs','CA','92240','916','Riverside',0),('Desert Hot Springs','CA','92241','916','Riverside',0),('Earp','CA','92242','916','San Bernardino',1),('El Centro','CA','92243','916','Imperial',1),('El Centro','CA','92244','916','Imperial',1),('Heber','CA','92249','916','Imperial',1),('Holtville','CA','92250','916','Imperial',1),('Imperial','CA','92251','916','Imperial',1),('Joshua Tree','CA','92252','916','San Bernardino',1),('La Quinta','CA','92253','916','Riverside',0),('Mecca','CA','92254','916','Riverside',0),('Palm Desert','CA','92255','916','Riverside',0),('Morongo Valley','CA','92256','916','San Bernardino',0),('Niland','CA','92257','916','Imperial',1),('North Palm Springs','CA','92258','916','Riverside',0),('Ocotillo','CA','92259','916','Imperial',1),('Palm Desert','CA','92260','916','Riverside',0),('Palm Desert','CA','92261','916','Riverside',0),('Palm Springs','CA','92262','916','Riverside',0),('Palm Springs','CA','92263','916','Riverside',0),('Palm Springs','CA','92264','916','Riverside',0),('Palo Verde','CA','92266','916','Imperial',1),('Parker Dam','CA','92267','916','San Bernardino',1),('Pioneertown','CA','92268','916','San Bernardino',0),('Rancho Mirage','CA','92270','916','Riverside',0),('Ripley','CA','92272','916','Riverside',0),('Seeley','CA','92273','916','Imperial',1),('Thermal','CA','92274','916','Riverside',1),('Salton City','CA','92275','916','Imperial',1),('Thousand Palms','CA','92276','916','Riverside',0),('Twentynine Palms','CA','92277','916','San Bernardino',1),('Twentynine Palms','CA','92278','916','San Bernardino',1),('Blythe','CA','92280','916','San Bernardino',1),('Westmorland','CA','92281','916','Imperial',1),('Cabazon','CA','92282','916','Riverside',0),('Winterhaven','CA','92283','916','Imperial',1),('Yucca Valley','CA','92284','916','San Bernardino',0),('Landers','CA','92285','916','San Bernardino',0),('Yucca Valley','CA','92286','916','San Bernardino',0),('Palm Springs','CA','92292','916','Riverside',0),('Adelanto','CA','92301','916','San Bernardino',0),('Aguanga','CA','92302','916','Riverside',0),('Amboy','CA','92304','916','San Bernardino',1),('Angelus Oaks','CA','92305','916','San Bernardino',0),('Anza','CA','92306','916','Riverside',0),('Apple Valley','CA','92307','916','San Bernardino',0),('Apple Valley','CA','92308','916','San Bernardino',1),('Baker','CA','92309','916','San Bernardino',1),('Fort Irwin','CA','92310','916','San Bernardino',1),('Barstow','CA','92311','916','San Bernardino',1),('Barstow','CA','92312','916','San Bernardino',0),('Grand Terrace','CA','92313','916','San Bernardino',0),('Big Bear City','CA','92314','916','San Bernardino',0),('Big Bear Lake','CA','92315','916','San Bernardino',0),('Bloomington','CA','92316','916','San Bernardino',0),('Blue Jay','CA','92317','916','San Bernardino',0),('Bryn Mawr','CA','92318','916','San Bernardino',0),('Cadiz','CA','92319','916','San Bernardino',0),('Calimesa','CA','92320','916','Riverside',0),('Cedar Glen','CA','92321','916','San Bernardino',0),('Cedarpines Park','CA','92322','916','San Bernardino',0),('Cima','CA','92323','916','San Bernardino',0),('Colton','CA','92324','916','San Bernardino',0),('Crestline','CA','92325','916','San Bernardino',0),('Crest Park','CA','92326','916','San Bernardino',0),('Daggett','CA','92327','916','San Bernardino',0),('Death Valley','CA','92328','916','Inyo',1),('Phelan','CA','92329','916','San Bernardino',0),('Lake Elsinore','CA','92330','916','Riverside',0),('Essex','CA','92332','916','San Bernardino',1),('Fawnskin','CA','92333','916','San Bernardino',0),('Fontana','CA','92334','916','San Bernardino',0),('Fontana','CA','92335','916','San Bernardino',0),('Fontana','CA','92336','916','San Bernardino',0),('Fontana','CA','92337','916','San Bernardino',0),('Newberry Springs','CA','92338','916','San Bernardino',1),('Forest Falls','CA','92339','916','San Bernardino',0),('Hesperia','CA','92340','916','San Bernardino',0),('Green Valley Lake','CA','92341','916','San Bernardino',0),('Helendale','CA','92342','916','San Bernardino',0),('Hemet','CA','92343','916','Riverside',0),('Hemet','CA','92344','916','Riverside',0),('Hesperia','CA','92345','916','San Bernardino',0),('Highland','CA','92346','916','San Bernardino',0),('Hinkley','CA','92347','916','San Bernardino',0),('Homeland','CA','92348','916','Riverside',0),('Idyllwild','CA','92349','916','Riverside',0),('Loma Linda','CA','92350','916','San Bernardino',0),('Lake Arrowhead','CA','92352','916','San Bernardino',0),('Loma Linda','CA','92354','916','San Bernardino',0),('Sun City','CA','92355','916','Riverside',0),('Lucerne Valley','CA','92356','916','San Bernardino',0),('Loma Linda','CA','92357','916','San Bernardino',0),('Lytle Creek','CA','92358','916','San Bernardino',0),('Mentone','CA','92359','916','San Bernardino',0),('Moreno Valley','CA','92360','916','Riverside',0),('Mountain Center','CA','92361','916','Riverside',0),('Murrieta','CA','92362','916','Riverside',0),('Needles','CA','92363','916','San Bernardino',1),('Baker','CA','92364','916','San Bernardino',1),('Newberry Springs','CA','92365','916','San Bernardino',1),('Mountain Pass','CA','92366','916','San Bernardino',0),('Nuevo','CA','92367','916','Riverside',0),('Oro Grande','CA','92368','916','San Bernardino',0),('Patton','CA','92369','916','San Bernardino',0),('Perris','CA','92370','916','Riverside',0),('Phelan','CA','92371','916','San Bernardino',0),('Pinon Hills','CA','92372','916','San Bernardino',0),('Redlands','CA','92373','916','San Bernardino',0),('Redlands','CA','92374','916','San Bernardino',0),('Redlands','CA','92375','916','San Bernardino',0),('Rialto','CA','92376','916','San Bernardino',0),('Rialto','CA','92377','916','San Bernardino',0),('Rimforest','CA','92378','916','San Bernardino',0),('Perris','CA','92379','916','Riverside',0),('Sun City','CA','92380','916','Riverside',0),('Sun City','CA','92381','916','Riverside',0),('Running Springs','CA','92382','916','San Bernardino',0),('San Jacinto','CA','92383','916','Riverside',0),('Shoshone','CA','92384','916','Inyo',1),('Skyforest','CA','92385','916','San Bernardino',0),('Big Bear City','CA','92386','916','San Bernardino',0),('Moreno Valley','CA','92387','916','Riverside',0),('Moreno Valley','CA','92388','916','Riverside',0),('Tecopa','CA','92389','916','Inyo',1),('Temecula','CA','92390','916','Riverside',0),('Twin Peaks','CA','92391','916','San Bernardino',0),('Victorville','CA','92392','916','San Bernardino',0),('Victorville','CA','92393','916','San Bernardino',0),('Victorville','CA','92394','916','San Bernardino',0),('Wildomar','CA','92395','916','Riverside',0),('Winchester','CA','92396','916','Riverside',0),('Wrightwood','CA','92397','916','San Bernardino',0),('Yermo','CA','92398','916','San Bernardino',0),('Yucaipa','CA','92399','916','San Bernardino',0),('San Bernardino','CA','92400','916','San Bernardino',0),('San Bernardino','CA','92401','916','San Bernardino',0),('San Bernardino','CA','92402','916','San Bernardino',0),('San Bernardino','CA','92403','916','San Bernardino',0),('San Bernardino','CA','92404','916','San Bernardino',0),('San Bernardino','CA','92405','916','San Bernardino',0),('San Bernardino','CA','92406','916','San Bernardino',0),('San Bernardino','CA','92407','916','San Bernardino',0),('San Bernardino','CA','92408','916','San Bernardino',0),('San Bernardino','CA','92409','916','San Bernardino',0),('San Bernardino','CA','92410','916','San Bernardino',0),('San Bernardino','CA','92411','916','San Bernardino',0),('San Bernardino','CA','92412','916','San Bernardino',0),('San Bernardino','CA','92413','916','San Bernardino',0),('San Bernardino','CA','92414','916','San Bernardino',0),('San Bernardino','CA','92415','916','San Bernardino',0),('San Bernardino','CA','92416','916','San Bernardino',0),('San Bernardino','CA','92417','916','San Bernardino',0),('San Bernardino','CA','92418','916','San Bernardino',0),('San Bernardino','CA','92420','916','San Bernardino',0),('San Bernardino','CA','92423','916','San Bernardino',0),('San Bernardino','CA','92424','916','San Bernardino',0),('San Bernardino','CA','92427','916','San Bernardino',0),('Riverside','CA','92500','916','Riverside',0),('Riverside','CA','92501','916','Riverside',0),('Riverside','CA','92502','916','Riverside',0),('Riverside','CA','92503','916','Riverside',0),('Riverside','CA','92504','916','Riverside',0),('Riverside','CA','92505','916','Riverside',0),('Riverside','CA','92506','916','Riverside',0),('Riverside','CA','92507','916','Riverside',0),('Riverside','CA','92508','916','Riverside',0),('Riverside','CA','92509','916','Riverside',0),('Riverside','CA','92513','916','Riverside',0),('Riverside','CA','92514','916','Riverside',0),('Riverside','CA','92515','916','Riverside',0),('Riverside','CA','92516','916','Riverside',0),('Riverside','CA','92517','916','Riverside',0),('March Air Force Base','CA','92518','916','Riverside',0),('Riverside','CA','92519','916','Riverside',0),('Riverside','CA','92520','916','Riverside',0),('Riverside','CA','92521','916','Riverside',0),('Riverside','CA','92522','916','Riverside',0),('Riverside','CA','92523','916','Riverside',0),('Lake Elsinore','CA','92530','916','Riverside',0),('Lake Elsinore','CA','92531','916','Riverside',0),('Lake Elsinore','CA','92532','916','Riverside',0),('Aguanga','CA','92536','916','Riverside',0),('Anza','CA','92539','916','Riverside',0),('Hemet','CA','92543','916','Riverside',0),('Hemet','CA','92544','916','Riverside',0),('Hemet','CA','92545','916','Riverside',0),('Hemet','CA','92546','916','Riverside',0),('Homeland','CA','92548','916','Riverside',0),('Idyllwild','CA','92549','916','Riverside',0),('Moreno Valley','CA','92551','916','Riverside',0),('Moreno Valley','CA','92552','916','Riverside',0),('Moreno Valley','CA','92553','916','Riverside',0),('Moreno Valley','CA','92554','916','Riverside',0),('Moreno Valley','CA','92555','916','Riverside',1),('Moreno Valley','CA','92556','916','Riverside',0),('Moreno Valley','CA','92557','916','Riverside',0),('Mountain Center','CA','92561','916','Riverside',0),('Murrieta','CA','92562','916','Riverside',0),('Murrieta','CA','92563','916','Riverside',0),('Murrieta','CA','92564','916','Riverside',0),('Nuevo','CA','92567','916','Riverside',0),('Perris','CA','92570','916','Riverside',0),('Perris','CA','92571','916','Riverside',0),('Perris','CA','92572','916','Riverside',0),('San Jacinto','CA','92581','916','Riverside',0),('San Jacinto','CA','92582','916','Riverside',0),('San Jacinto','CA','92583','916','Riverside',0),('Menifee','CA','92584','916','Riverside',0),('Sun City','CA','92585','916','Riverside',0),('Sun City','CA','92586','916','Riverside',0),('Sun City','CA','92587','916','Riverside',0),('Temecula','CA','92589','916','Riverside',0),('Temecula','CA','92590','916','Riverside',0),('Temecula','CA','92591','916','Riverside',0),('Temecula','CA','92592','916','Riverside',0),('Temecula','CA','92593','916','Riverside',0),('Wildomar','CA','92595','916','Riverside',0),('Winchester','CA','92596','916','Riverside',0),('Perris','CA','92599','916','Riverside',0),('Atwood','CA','92601','916','Orange',0),('Irvine','CA','92602','916','Orange',0),('Irvine','CA','92603','916','Orange',0),('Irvine','CA','92604','916','Orange',0),('Huntington Beach','CA','92605','916','Orange',0),('Irvine','CA','92606','916','Orange',0),('Laguna Niguel','CA','92607','916','Orange',0),('Foothill Ranch','CA','92610','916','Orange',0),('Irvine','CA','92612','916','Orange',0),('Orange','CA','92613','916','Orange',0),('Irvine','CA','92614','916','Orange',0),('Huntington Beach','CA','92615','916','Orange',0),('Irvine','CA','92616','916','Orange',0),('Irvine','CA','92618','916','Orange',0),('Irvine','CA','92619','916','Orange',0),('Irvine','CA','92620','916','Orange',0),('Brea','CA','92621','916','Orange',0),('Irvine','CA','92623','916','Orange',0),('Capistrano Beach','CA','92624','916','Orange',0),('Corona Del Mar','CA','92625','916','Orange',0),('Costa Mesa','CA','92626','916','Orange',0),('Costa Mesa','CA','92627','916','Orange',0),('Costa Mesa','CA','92628','916','Orange',0),('Dana Point','CA','92629','916','Orange',0),('El Toro','CA','92630','916','Orange',0),('Fullerton','CA','92631','916','Orange',0),('Fullerton','CA','92632','916','Orange',0),('Fullerton','CA','92633','916','Orange',0),('Fullerton','CA','92634','916','Orange',0),('Fullerton','CA','92635','916','Orange',0),('Garden Grove','CA','92640','916','Orange',0),('Garden Grove','CA','92641','916','Orange',0),('Garden Grove','CA','92642','916','Orange',0),('Garden Grove','CA','92643','916','Orange',0),('Garden Grove','CA','92644','916','Orange',0),('Garden Grove','CA','92645','916','Orange',0),('Huntington Beach','CA','92646','916','Orange',0),('Huntington Beach','CA','92647','916','Orange',0),('Huntington Beach','CA','92648','916','Orange',0),('Huntington Beach','CA','92649','916','Orange',0),('East Irvine','CA','92650','916','Orange',0),('Laguna Beach','CA','92651','916','Orange',0),('Laguna Beach','CA','92652','916','Orange',0),('Laguna Hills','CA','92653','916','Orange',0),('Laguna Hills','CA','92654','916','Orange',0),('Midway City','CA','92655','916','Orange',0),('Laguna Beach','CA','92656','916','Orange',0),('Newport Coast','CA','92657','916','Orange',0),('Newport Beach','CA','92658','916','Orange',0),('Newport Beach','CA','92659','916','Orange',0),('Newport Beach','CA','92660','916','Orange',0),('Newport Beach','CA','92661','916','Orange',0),('Newport Beach','CA','92662','916','Orange',0),('Newport Beach','CA','92663','916','Orange',0),('Orange','CA','92664','916','Orange',0),('Orange','CA','92665','916','Orange',0),('Orange','CA','92666','916','Orange',0),('Orange','CA','92667','916','Orange',0),('Orange','CA','92668','916','Orange',0),('Orange','CA','92669','916','Orange',0),('Placentia','CA','92670','916','Orange',0),('San Clemente','CA','92672','916','Orange',0),('San Clemente','CA','92673','916','Orange',0),('San Clemente','CA','92674','916','Orange',0),('San Juan Capistrano','CA','92675','916','Orange',0),('Silverado','CA','92676','916','Orange',0),('Laguna Beach','CA','92677','916','Orange',0),('Trabuco Canyon','CA','92678','916','Orange',0),('San Juan Capistrano','CA','92679','916','Orange',0),('Tustin','CA','92680','916','Orange',0),('Tustin','CA','92681','916','Orange',0),('Westminster','CA','92683','916','Orange',0),('Westminster','CA','92684','916','Orange',0),('Yorba Linda','CA','92686','916','Orange',0),('Yorba Linda','CA','92687','916','Orange',0),('Rancho Santa Margarita','CA','92688','916','Orange',0),('Mission Viejo','CA','92690','916','Orange',0),('Mission Viejo','CA','92691','916','Orange',0),('Mission Viejo','CA','92692','916','Orange',0),('San Juan Capistrano','CA','92693','916','Orange',0),('Irvine','CA','92697','916','Orange',0),('Irvine','CA','92698','916','Orange',0),('Santa Ana','CA','92701','916','Orange',0),('Santa Ana','CA','92702','916','Orange',0),('Santa Ana','CA','92703','916','Orange',0),('Santa Ana','CA','92704','916','Orange',0),('Santa Ana','CA','92705','916','Orange',0),('Santa Ana','CA','92706','916','Orange',0),('Santa Ana','CA','92707','916','Orange',0),('Fountain Valley','CA','92708','916','Orange',0),('Irvine','CA','92709','916','Orange',0),('Irvine','CA','92710','916','Orange',0),('Santa Ana','CA','92711','916','Orange',0),('Santa Ana','CA','92712','916','Orange',0),('Irvine','CA','92713','916','Orange',0),('Irvine','CA','92714','916','Orange',0),('Irvine','CA','92715','916','Orange',0),('Irvine','CA','92716','916','Orange',0),('Irvine','CA','92717','916','Orange',0),('Irvine','CA','92718','916','Orange',0),('Irvine','CA','92720','916','Orange',0),('Fountain Valley','CA','92728','916','Orange',0),('Irvine','CA','92730','916','Orange',0),('Santa Ana','CA','92735','916','Orange',0),('Tustin','CA','92780','916','Orange',0),('Tustin','CA','92781','916','Orange',0),('Tustin','CA','92782','916','Orange',0),('Santa Ana','CA','92799','916','Orange',0),('Anaheim','CA','92800','916','Orange',0),('Anaheim','CA','92801','916','Orange',0),('Anaheim','CA','92802','916','Orange',0),('Anaheim','CA','92803','916','Orange',0),('Anaheim','CA','92804','916','Orange',0),('Anaheim','CA','92805','916','Orange',0),('Anaheim','CA','92806','916','Orange',0),('Anaheim','CA','92807','916','Orange',0),('Anaheim','CA','92808','916','Orange',0),('Atwood','CA','92811','916','Orange',0),('Anaheim','CA','92812','916','Orange',0),('Anaheim','CA','92814','916','Orange',0),('Anaheim','CA','92815','916','Orange',0),('Anaheim','CA','92816','916','Orange',0),('Anaheim','CA','92817','916','Orange',0),('Brea','CA','92821','916','Orange',0),('Brea','CA','92822','916','Orange',0),('Brea','CA','92823','916','Orange',0),('Anaheim','CA','92825','916','Orange',0),('Fullerton','CA','92831','916','Orange',0),('Fullerton','CA','92832','916','Orange',0),('Fullerton','CA','92833','916','Orange',0),('Fullerton','CA','92834','916','Orange',0),('Fullerton','CA','92835','916','Orange',0),('Fullerton','CA','92836','916','Orange',0),('Fullerton','CA','92837','916','Orange',0),('Fullerton','CA','92838','916','Orange',0),('Garden Grove','CA','92840','916','Orange',0),('Garden Grove','CA','92841','916','Orange',0),('Garden Grove','CA','92842','916','Orange',0),('Garden Grove','CA','92843','916','Orange',0),('Garden Grove','CA','92844','916','Orange',0),('Garden Grove','CA','92845','916','Orange',0),('Garden Grove','CA','92846','916','Orange',0),('Anaheim','CA','92850','916','Orange',0),('Orange','CA','92856','916','Orange',0),('Orange','CA','92857','916','Orange',0),('Orange','CA','92859','916','Orange',0),('Villa Park','CA','92861','916','Orange',0),('Orange','CA','92862','916','Orange',0),('Orange','CA','92863','916','Orange',0),('Orange','CA','92864','916','Orange',0),('Orange','CA','92865','916','Orange',0),('Orange','CA','92866','916','Orange',0),('Orange','CA','92867','916','Orange',0),('Orange','CA','92868','916','Orange',0),('Orange','CA','92869','916','Orange',0),('Placentia','CA','92870','916','Orange',0),('Placentia','CA','92871','916','Orange',0),('Yorba Linda','CA','92885','916','Orange',0),('Yorba Linda','CA','92886','916','Orange',0),('Yorba Linda','CA','92887','916','Orange',0),('Anaheim','CA','92899','916','Orange',0),('Ventura','CA','93001','916','Ventura',0),('Ventura','CA','93002','916','Ventura',0),('Ventura','CA','93003','916','Ventura',0),('Ventura','CA','93004','916','Ventura',0),('Ventura','CA','93005','916','Ventura',0),('Ventura','CA','93006','916','Ventura',0),('Ventura','CA','93007','916','Ventura',0),('Ventura','CA','93009','916','Ventura',0),('Camarillo','CA','93010','916','Ventura',0),('Camarillo','CA','93011','916','Ventura',0),('Camarillo','CA','93012','916','Ventura',0),('Carpinteria','CA','93013','916','Santa Barbara',0),('Carpinteria','CA','93014','916','Santa Barbara',0),('Fillmore','CA','93015','916','Ventura',1),('Fillmore','CA','93016','916','Ventura',0),('Moorpark','CA','93020','916','Ventura',0),('Moorpark','CA','93021','916','Ventura',0),('Oak View','CA','93022','916','Ventura',0),('Ojai','CA','93023','916','Ventura',0),('Ojai','CA','93024','916','Ventura',0),('Oxnard','CA','93030','916','Ventura',0),('Oxnard','CA','93031','916','Ventura',0),('Oxnard','CA','93032','916','Ventura',0),('Oxnard','CA','93033','916','Ventura',0),('Oxnard','CA','93034','916','Ventura',0),('Oxnard','CA','93035','916','Ventura',0),('Ventura','CA','93039','916','Ventura',0),('Piru','CA','93040','916','Ventura',0),('Port Hueneme','CA','93041','916','Ventura',0),('Port Hueneme','CA','93042','916','Ventura',1),('Port Hueneme','CA','93043','916','Ventura',0),('Port Hueneme','CA','93044','916','Ventura',0),('Santa Paula','CA','93060','916','Ventura',0),('Santa Paula','CA','93061','916','Ventura',0),('Simi Valley','CA','93062','916','Ventura',0),('Simi Valley','CA','93063','916','Ventura',0),('Simi Valley','CA','93064','916','Ventura',0),('Simi Valley','CA','93065','916','Ventura',0),('Somis','CA','93066','916','Ventura',0),('Summerland','CA','93067','916','Santa Barbara',0),('Simi Valley','CA','93093','916','Ventura',0),('Simi Valley','CA','93097','916','Ventura',0),('Simi Valley','CA','93099','916','Ventura',0),('Santa Barbara','CA','93101','916','Santa Barbara',0),('Santa Barbara','CA','93102','916','Santa Barbara',0),('Santa Barbara','CA','93103','916','Santa Barbara',0),('Santa Barbara','CA','93105','916','Santa Barbara',0),('Santa Barbara','CA','93106','916','Santa Barbara',0),('Santa Barbara','CA','93107','916','Santa Barbara',0),('Santa Barbara','CA','93108','916','Santa Barbara',0),('Santa Barbara','CA','93109','916','Santa Barbara',0),('Santa Barbara','CA','93110','916','Santa Barbara',0),('Santa Barbara','CA','93111','916','Santa Barbara',0),('Goleta','CA','93116','916','Santa Barbara',0),('Santa Barbara','CA','93117','916','Santa Barbara',0),('Goleta','CA','93118','916','Santa Barbara',0),('Santa Barbara','CA','93120','916','Santa Barbara',0),('Santa Barbara','CA','93121','916','Santa Barbara',0),('Santa Barbara','CA','93130','916','Santa Barbara',0),('Santa Barbara','CA','93140','916','Santa Barbara',0),('Santa Barbara','CA','93150','916','Santa Barbara',0),('Santa Barbara','CA','93160','916','Santa Barbara',0),('Santa Barbara','CA','93190','916','Santa Barbara',0),('Goleta','CA','93199','916','Santa Barbara',0),('Alpaugh','CA','93201','916','Tulare',0),('Armona','CA','93202','916','Kings',1),('Arvin','CA','93203','916','Kern',1),('Avenal','CA','93204','916','Kings',1),('Bodfish','CA','93205','916','Kern',1),('Buttonwillow','CA','93206','916','Kern',1),('California Hot Springs','CA','93207','916','Tulare',0),('Camp Nelson','CA','93208','916','Tulare',0),('Coalinga','CA','93210','916','Fresno',1),('Corcoran','CA','93212','916','Kings',1),('Cuyama','CA','93214','916','Santa Barbara',0),('Delano','CA','93215','916','Kern',1),('Delano','CA','93216','916','Kern',0),('Di Giorgio','CA','93217','916','Kern',0),('Ducor','CA','93218','916','Tulare',0),('Earlimart','CA','93219','916','Tulare',1),('Edison','CA','93220','916','Kern',0),('Exeter','CA','93221','916','Tulare',1),('Frazier Park','CA','93222','916','Kern',0),('Farmersville','CA','93223','916','Tulare',0),('Fellows','CA','93224','916','Kern',0),('Frazier Park','CA','93225','916','Kern',1),('Glennville','CA','93226','916','Kern',1),('Goshen','CA','93227','916','Tulare',0),('Hanford','CA','93230','916','Kings',1),('Hanford','CA','93231','916','Kings',1),('Hanford','CA','93232','916','Kings',1),('Huron','CA','93234','916','Fresno',1),('Ivanhoe','CA','93235','916','Tulare',0),('Kaweah','CA','93237','916','Tulare',0),('Kernville','CA','93238','916','Kern',1),('Kettleman City','CA','93239','916','Kings',1),('Lake Isabella','CA','93240','916','Kern',1),('Lamont','CA','93241','916','Kern',0),('Laton','CA','93242','916','Fresno',1),('Lebec','CA','93243','916','Kern',1),('Lemoncove','CA','93244','916','Tulare',0),('Lemoore','CA','93245','916','Kings',1),('Lemoore','CA','93246','916','Kings',1),('Lindsay','CA','93247','916','Tulare',1),('Lost Hills','CA','93249','916','Kern',1),('Mc Farland','CA','93250','916','Kern',1),('Mc Kittrick','CA','93251','916','Kern',1),('Maricopa','CA','93252','916','Kern',0),('New Cuyama','CA','93254','916','Santa Barbara',1),('Onyx','CA','93255','916','Kern',1),('Pixley','CA','93256','916','Tulare',0),('Porterville','CA','93257','916','Tulare',0),('Porterville','CA','93258','916','Tulare',0),('Posey','CA','93260','916','Tulare',0),('Richgrove','CA','93261','916','Tulare',0),('Sequoia National Park','CA','93262','916','Tulare',0),('Shafter','CA','93263','916','Kern',1),('Springville','CA','93265','916','Tulare',0),('Stratford','CA','93266','916','Kings',1),('Strathmore','CA','93267','916','Tulare',0),('Taft','CA','93268','916','Kern',1),('Terra Bella','CA','93270','916','Tulare',0),('Three Rivers','CA','93271','916','Tulare',0),('Tipton','CA','93272','916','Tulare',0),('Tulare','CA','93274','916','Tulare',0),('Tulare','CA','93275','916','Tulare',0),('Tupman','CA','93276','916','Kern',0),('Visalia','CA','93277','916','Tulare',0),('Visalia','CA','93278','916','Tulare',0),('Visalia','CA','93279','916','Tulare',0),('Wasco','CA','93280','916','Kern',1),('Waukena','CA','93282','916','Tulare',0),('Weldon','CA','93283','916','Kern',1),('Wofford Heights','CA','93285','916','Kern',1),('Woodlake','CA','93286','916','Tulare',1),('Woody','CA','93287','916','Kern',1),('Visalia','CA','93291','916','Tulare',0),('Visalia','CA','93292','916','Tulare',0),('Bakersfield','CA','93300','916','Kern',0),('Bakersfield','CA','93301','916','Kern',0),('Bakersfield','CA','93302','916','Kern',0),('Bakersfield','CA','93303','916','Kern',0),('Bakersfield','CA','93304','916','Kern',0),('Bakersfield','CA','93305','916','Kern',0),('Bakersfield','CA','93306','916','Kern',0),('Bakersfield','CA','93307','916','Kern',1),('Bakersfield','CA','93308','916','Kern',1),('Bakersfield','CA','93309','916','Kern',0),('Bakersfield','CA','93311','916','Kern',1),('Bakersfield','CA','93312','916','Kern',0),('Bakersfield','CA','93313','916','Kern',0),('Bakersfield','CA','93380','916','Kern',0),('Bakersfield','CA','93381','916','Kern',0),('Bakersfield','CA','93382','916','Kern',0),('Bakersfield','CA','93383','916','Kern',0),('Bakersfield','CA','93384','916','Kern',0),('Bakersfield','CA','93385','916','Kern',0),('Bakersfield','CA','93386','916','Kern',0),('Bakersfield','CA','93387','916','Kern',0),('Bakersfield','CA','93388','916','Kern',0),('Bakersfield','CA','93389','916','Kern',0),('Bakersfield','CA','93390','916','Kern',0),('Bakersfield','CA','93399','916','Kern',0),('San Luis Obispo','CA','93401','916','San Luis Obispo',0),('San Luis Obispo','CA','93402','916','San Luis Obispo',1),('San Luis Obispo','CA','93403','916','San Luis Obispo',0),('San Luis Obispo','CA','93405','916','San Luis Obispo',0),('San Luis Obispo','CA','93406','916','San Luis Obispo',0),('San Luis Obispo','CA','93407','916','San Luis Obispo',0),('San Luis Obispo','CA','93408','916','San Luis Obispo',0),('San Luis Obispo','CA','93409','916','San Luis Obispo',0),('San Luis Obispo','CA','93410','916','San Luis Obispo',0),('Los Osos','CA','93412','916','San Luis Obispo',0),('Arroyo Grande','CA','93420','916','San Luis Obispo',0),('Arroyo Grande','CA','93421','916','San Luis Obispo',0),('Atascadero','CA','93422','916','San Luis Obispo',1),('Atascadero','CA','93423','916','San Luis Obispo',0),('Avila Beach','CA','93424','916','San Luis Obispo',0),('Bradley','CA','93426','916','Monterey',1),('Buellton','CA','93427','916','Santa Barbara',0),('Cambria','CA','93428','916','San Luis Obispo',1),('Casmalia','CA','93429','916','Santa Barbara',0),('Cayucos','CA','93430','916','San Luis Obispo',1),('Cholame','CA','93431','916','San Luis Obispo',0),('Creston','CA','93432','916','San Luis Obispo',1),('Grover City','CA','93433','916','San Luis Obispo',0),('Guadalupe','CA','93434','916','Santa Barbara',0),('Harmony','CA','93435','916','San Luis Obispo',0),('Lompoc','CA','93436','916','Santa Barbara',0),('Lompoc','CA','93437','916','Santa Barbara',0),('Lompoc','CA','93438','916','Santa Barbara',0),('Los Alamos','CA','93440','916','Santa Barbara',0),('Los Olivos','CA','93441','916','Santa Barbara',0),('Morro Bay','CA','93442','916','San Luis Obispo',1),('Morro Bay','CA','93443','916','San Luis Obispo',0),('Nipomo','CA','93444','916','San Luis Obispo',0),('Oceano','CA','93445','916','San Luis Obispo',0),('Paso Robles','CA','93446','916','San Luis Obispo',1),('Paso Robles','CA','93447','916','San Luis Obispo',0),('Pismo Beach','CA','93448','916','San Luis Obispo',0),('Pismo Beach','CA','93449','916','San Luis Obispo',0),('San Ardo','CA','93450','916','Monterey',1),('San Miguel','CA','93451','916','San Luis Obispo',1),('San Simeon','CA','93452','916','San Luis Obispo',1),('Santa Margarita','CA','93453','916','San Luis Obispo',1),('Santa Maria','CA','93454','916','Santa Barbara',0),('Santa Maria','CA','93455','916','Santa Barbara',0),('Santa Maria','CA','93456','916','Santa Barbara',0),('Santa Maria','CA','93457','916','Santa Barbara',0),('Santa Ynez','CA','93460','916','Santa Barbara',0),('Shandon','CA','93461','916','San Luis Obispo',1),('Solvang','CA','93463','916','Santa Barbara',1),('Solvang','CA','93464','916','Santa Barbara',0),('Templeton','CA','93465','916','San Luis Obispo',1),('Grover Beach','CA','93483','916','San Luis Obispo',0),('Mojave','CA','93501','916','Kern',1),('Mojave','CA','93502','916','Kern',0),('California City','CA','93504','916','Kern',0),('California City','CA','93505','916','Kern',1),('Acton','CA','93510','916','Los Angeles',1),('Benton','CA','93512','916','Mono',1),('Big Pine','CA','93513','916','Inyo',1),('Bishop','CA','93514','916','Inyo',1),('Bishop','CA','93515','916','Inyo',1),('Boron','CA','93516','916','Kern',1),('Bridgeport','CA','93517','916','Mono',1),('Caliente','CA','93518','916','Kern',1),('Cantil','CA','93519','916','Kern',1),('Darwin','CA','93522','916','Inyo',1),('Edwards','CA','93523','916','Kern',1),('Edwards','CA','93524','916','Kern',0),('Independence','CA','93526','916','Inyo',1),('Inyokern','CA','93527','916','Kern',1),('Johannesburg','CA','93528','916','Kern',1),('June Lake','CA','93529','916','Mono',1),('Keeler','CA','93530','916','Inyo',1),('Keene','CA','93531','916','Kern',0),('Lake Hughes','CA','93532','916','Los Angeles',1),('Lancaster','CA','93534','916','Los Angeles',0),('Lancaster','CA','93535','916','Los Angeles',1),('Lancaster','CA','93536','916','Los Angeles',1),('Lancaster','CA','93539','916','Los Angeles',0),('Lee Vining','CA','93541','916','Mono',1),('Little Lake','CA','93542','916','Inyo',1),('Littlerock','CA','93543','916','Los Angeles',0),('Llano','CA','93544','916','Los Angeles',1),('Lone Pine','CA','93545','916','Inyo',1),('Mammoth Lakes','CA','93546','916','Mono',1),('Olancha','CA','93549','916','Inyo',1),('Palmdale','CA','93550','916','Los Angeles',0),('Palmdale','CA','93551','916','Los Angeles',0),('Palmdale','CA','93552','916','Los Angeles',0),('Pearblossom','CA','93553','916','Los Angeles',0),('Randsburg','CA','93554','916','Kern',1),('Ridgecrest','CA','93555','916','Kern',1),('Ridgecrest','CA','93556','916','Kern',0),('Red Mountain','CA','93558','916','San Bernardino',0),('Rosamond','CA','93560','916','Kern',1),('Tehachapi','CA','93561','916','Kern',1),('Trona','CA','93562','916','San Bernardino',1),('Valyermo','CA','93563','916','Los Angeles',0),('Keene','CA','93570','916','Kern',0),('Tehachapi','CA','93581','916','Kern',1),('Tehachapi','CA','93582','916','Kern',0),('Lancaster','CA','93584','916','Los Angeles',0),('Lancaster','CA','93586','916','Los Angeles',0),('Palmdale','CA','93590','916','Los Angeles',0),('Palmdale','CA','93591','916','Los Angeles',0),('Trona','CA','93592','916','San Bernardino',0),('Boron','CA','93596','916','Kern',0),('Palmdale','CA','93599','916','Los Angeles',0),('Ahwahnee','CA','93601','916','Madera',1),('Auberry','CA','93602','916','Fresno',1),('Badger','CA','93603','916','Tulare',0),('Bass Lake','CA','93604','916','Madera',1),('Big Creek','CA','93605','916','Fresno',0),('Biola','CA','93606','916','Fresno',0),('Burrel','CA','93607','916','Fresno',0),('Cantua Creek','CA','93608','916','Fresno',1),('Caruthers','CA','93609','916','Fresno',0),('Chowchilla','CA','93610','916','Madera',1),('Clovis','CA','93611','916','Fresno',0),('Clovis','CA','93612','916','Fresno',1),('Clovis','CA','93613','916','Fresno',0),('Coarsegold','CA','93614','916','Madera',1),('Cutler','CA','93615','916','Tulare',1),('Del Rey','CA','93616','916','Fresno',0),('Dinuba','CA','93618','916','Tulare',1),('Dos Palos','CA','93620','916','Merced',1),('Dunlap','CA','93621','916','Fresno',1),('Firebaugh','CA','93622','916','Fresno',1),('Fish Camp','CA','93623','916','Mariposa',1),('Five Points','CA','93624','916','Fresno',0),('Fowler','CA','93625','916','Fresno',0),('Friant','CA','93626','916','Fresno',1),('Helm','CA','93627','916','Fresno',1),('Hume','CA','93628','916','Fresno',0),('Huntington Lake','CA','93629','916','Fresno',0),('Kerman','CA','93630','916','Fresno',0),('Kingsburg','CA','93631','916','Fresno',0),('Kings Canyon National Pk','CA','93633','916','Tulare',1),('Lakeshore','CA','93634','916','Fresno',0),('Los Banos','CA','93635','916','Merced',1),('Madera','CA','93637','916','Madera',1),('Madera','CA','93638','916','Madera',0),('Madera','CA','93639','916','Madera',0),('Mendota','CA','93640','916','Fresno',1),('Miramonte','CA','93641','916','Fresno',1),('Mono Hot Springs','CA','93642','916','Fresno',0),('North Fork','CA','93643','916','Madera',1),('Oakhurst','CA','93644','916','Madera',1),('O Neals','CA','93645','916','Madera',0),('Orange Cove','CA','93646','916','Fresno',1),('Orosi','CA','93647','916','Tulare',1),('Parlier','CA','93648','916','Fresno',1),('Piedra','CA','93649','916','Fresno',0),('Pinedale','CA','93650','916','Fresno',0),('Prather','CA','93651','916','Fresno',1),('Raisin','CA','93652','916','Fresno',0),('Raymond','CA','93653','916','Madera',1),('Reedley','CA','93654','916','Fresno',1),('Riverdale','CA','93656','916','Fresno',1),('Sanger','CA','93657','916','Fresno',1),('San Joaquin','CA','93660','916','Fresno',1),('Santa Rita Park','CA','93661','916','Merced',0),('Selma','CA','93662','916','Fresno',1),('Shaver Lake','CA','93664','916','Fresno',1),('South Dos Palos','CA','93665','916','Merced',0),('Sultana','CA','93666','916','Tulare',0),('Tollhouse','CA','93667','916','Fresno',1),('Tranquillity','CA','93668','916','Fresno',0),('Wishon','CA','93669','916','Madera',1),('Yettem','CA','93670','916','Tulare',0),('Traver','CA','93673','916','Tulare',0),('Squaw Valley','CA','93675','916','Fresno',1),('Fresno','CA','93700','916','Fresno',0),('Fresno','CA','93701','916','Fresno',0),('Fresno','CA','93702','916','Fresno',0),('Fresno','CA','93703','916','Fresno',0),('Fresno','CA','93704','916','Fresno',0),('Fresno','CA','93705','916','Fresno',0),('Fresno','CA','93706','916','Fresno',0),('Fresno','CA','93707','916','Fresno',0),('Fresno','CA','93708','916','Fresno',0),('Fresno','CA','93709','916','Fresno',0),('Fresno','CA','93710','916','Fresno',0),('Fresno','CA','93711','916','Fresno',0),('Fresno','CA','93712','916','Fresno',0),('Fresno','CA','93714','916','Fresno',0),('Fresno','CA','93715','916','Fresno',0),('Fresno','CA','93716','916','Fresno',0),('Fresno','CA','93717','916','Fresno',0),('Fresno','CA','93718','916','Fresno',0),('Fresno','CA','93720','916','Fresno',0),('Fresno','CA','93721','916','Fresno',0),('Fresno','CA','93722','916','Fresno',0),('Fresno','CA','93724','916','Fresno',0),('Fresno','CA','93725','916','Fresno',0),('Fresno','CA','93726','916','Fresno',0),('Fresno','CA','93727','916','Fresno',0),('Fresno','CA','93728','916','Fresno',0),('Fresno','CA','93729','916','Fresno',0),('Fresno','CA','93740','916','Fresno',0),('Fresno','CA','93741','916','Fresno',0),('Fresno','CA','93744','916','Fresno',0),('Fresno','CA','93745','916','Fresno',0),('Fresno','CA','93747','916','Fresno',0),('Fresno','CA','93750','916','Fresno',0),('Fresno','CA','93755','916','Fresno',0),('Fresno','CA','93759','916','Fresno',0),('Fresno','CA','93760','916','Fresno',0),('Fresno','CA','93761','916','Fresno',0),('Fresno','CA','93762','916','Fresno',0),('Fresno','CA','93764','916','Fresno',0),('Fresno','CA','93765','916','Fresno',0),('Fresno','CA','93771','916','Fresno',0),('Fresno','CA','93772','916','Fresno',0),('Fresno','CA','93773','916','Fresno',0),('Fresno','CA','93774','916','Fresno',0),('Fresno','CA','93775','916','Fresno',0),('Fresno','CA','93776','916','Fresno',0),('Fresno','CA','93777','916','Fresno',0),('Fresno','CA','93778','916','Fresno',0),('Fresno','CA','93779','916','Fresno',0),('Fresno','CA','93780','916','Fresno',0),('Fresno','CA','93782','916','Fresno',0),('Fresno','CA','93784','916','Fresno',0),('Fresno','CA','93786','916','Fresno',0),('Fresno','CA','93790','916','Fresno',0),('Fresno','CA','93791','916','Fresno',0),('Fresno','CA','93792','916','Fresno',0),('Fresno','CA','93793','916','Fresno',0),('Fresno','CA','93794','916','Fresno',0),('Fresno','CA','93844','916','Fresno',0),('Fresno','CA','93888','916','Fresno',0),('Salinas','CA','93901','916','Monterey',0),('Salinas','CA','93902','916','Monterey',0),('Salinas','CA','93905','916','Monterey',0),('Salinas','CA','93906','916','Monterey',0),('Salinas','CA','93907','916','Monterey',0),('Salinas','CA','93908','916','Monterey',0),('Salinas','CA','93911','916','Monterey',0),('Salinas','CA','93912','916','Monterey',0),('Salinas','CA','93915','916','Monterey',0),('Big Sur','CA','93920','916','Monterey',1),('Carmel','CA','93921','916','Monterey',0),('Carmel','CA','93922','916','Monterey',0),('Carmel','CA','93923','916','Monterey',0),('Carmel Valley','CA','93924','916','Monterey',0),('Chualar','CA','93925','916','Monterey',0),('Gonzales','CA','93926','916','Monterey',0),('Greenfield','CA','93927','916','Monterey',1),('Jolon','CA','93928','916','Monterey',0),('King City','CA','93930','916','Monterey',1),('Lockwood','CA','93932','916','Monterey',1),('Marina','CA','93933','916','Monterey',0),('Monterey','CA','93940','916','Monterey',0),('Fort Ord','CA','93941','916','Monterey',0),('Monterey','CA','93942','916','Monterey',0),('Monterey','CA','93943','916','Monterey',0),('Monterey','CA','93944','916','Monterey',0),('Pacific Grove','CA','93950','916','Monterey',0),('Pebble Beach','CA','93953','916','Monterey',0),('San Lucas','CA','93954','916','Monterey',0),('Seaside','CA','93955','916','Monterey',0),('Soledad','CA','93960','916','Monterey',1),('Spreckels','CA','93962','916','Monterey',0),('Belmont','CA','94002','916','San Mateo',0),('Belmont','CA','94003','916','San Mateo',0),('Brisbane','CA','94005','916','San Mateo',0),('Burlingame','CA','94010','916','San Mateo',0),('Burlingame','CA','94011','916','San Mateo',0),('Burlingame','CA','94012','916','San Mateo',0),('Daly City','CA','94014','916','San Mateo',0),('Daly City','CA','94015','916','San Mateo',0),('Daly City','CA','94016','916','San Mateo',0),('Daly City','CA','94017','916','San Mateo',0),('El Granada','CA','94018','916','San Mateo',0),('Half Moon Bay','CA','94019','916','San Mateo',0),('La Honda','CA','94020','916','San Mateo',0),('Loma Mar','CA','94021','916','San Mateo',0),('Los Altos','CA','94022','916','Santa Clara',0),('Los Altos','CA','94023','916','Santa Clara',0),('Los Altos','CA','94024','916','Santa Clara',0),('Menlo Park','CA','94025','916','San Mateo',0),('Menlo Park','CA','94026','916','San Mateo',0),('Menlo Park','CA','94027','916','San Mateo',0),('Menlo Park','CA','94028','916','San Mateo',0),('Menlo Park','CA','94029','916','San Mateo',0),('Millbrae','CA','94030','916','San Mateo',0),('Millbrae','CA','94031','916','San Mateo',0),('Mountain View','CA','94035','916','Santa Clara',0),('Montara','CA','94037','916','San Mateo',0),('Moss Beach','CA','94038','916','San Mateo',0),('Mountain View','CA','94039','916','Santa Clara',0),('Mountain View','CA','94040','916','Santa Clara',0),('Mountain View','CA','94041','916','Santa Clara',0),('Mountain View','CA','94042','916','Santa Clara',0),('Mountain View','CA','94043','916','Santa Clara',0),('Pacifica','CA','94044','916','San Mateo',0),('Pacifica','CA','94045','916','San Mateo',0),('Redwood City','CA','94059','916','San Mateo',0),('Pescadero','CA','94060','916','San Mateo',0),('Redwood City','CA','94061','916','San Mateo',0),('Redwood City','CA','94062','916','San Mateo',0),('Redwood City','CA','94063','916','San Mateo',0),('Redwood City','CA','94064','916','San Mateo',0),('Redwood City','CA','94065','916','San Mateo',0),('San Bruno','CA','94066','916','San Mateo',0),('San Bruno','CA','94067','916','San Mateo',0),('San Carlos','CA','94070','916','San Mateo',0),('San Carlos','CA','94071','916','San Mateo',0),('San Gregorio','CA','94074','916','San Mateo',0),('South San Francisco','CA','94080','916','San Mateo',0),('South San Francisco','CA','94083','916','San Mateo',0),('Sunnyvale','CA','94086','916','Santa Clara',0),('Sunnyvale','CA','94087','916','Santa Clara',0),('Sunnyvale','CA','94088','916','Santa Clara',0),('Sunnyvale','CA','94089','916','Santa Clara',0),('Sunnyvale','CA','94090','916','Santa Clara',0),('Sunnyvale','CA','94091','916','Santa Clara',0),('San Bruno','CA','94096','916','San Mateo',0),('San Bruno','CA','94098','916','San Mateo',0),('San Bruno','CA','94099','916','San Mateo',0),('San Francisco','CA','94100','916','San Francisco',0),('San Francisco','CA','94101','916','San Francisco',0),('San Francisco','CA','94102','916','San Francisco',0),('San Francisco','CA','94103','916','San Francisco',0),('San Francisco','CA','94104','916','San Francisco',0),('San Francisco','CA','94105','916','San Francisco',0),('San Francisco','CA','94106','916','San Francisco',0),('San Francisco','CA','94107','916','San Francisco',0),('San Francisco','CA','94108','916','San Francisco',0),('San Francisco','CA','94109','916','San Francisco',0),('San Francisco','CA','94110','916','San Francisco',0),('San Francisco','CA','94111','916','San Francisco',0),('San Francisco','CA','94112','916','San Francisco',0),('San Francisco','CA','94114','916','San Francisco',0),('San Francisco','CA','94115','916','San Francisco',0),('San Francisco','CA','94116','916','San Francisco',0),('San Francisco','CA','94117','916','San Francisco',0),('San Francisco','CA','94118','916','San Francisco',0),('San Francisco','CA','94119','916','San Francisco',0),('San Francisco','CA','94120','916','San Francisco',0),('San Francisco','CA','94121','916','San Francisco',0),('San Francisco','CA','94122','916','San Francisco',0),('San Francisco','CA','94123','916','San Francisco',0),('San Francisco','CA','94124','916','San Francisco',0),('San Francisco','CA','94125','916','San Francisco',0),('San Francisco','CA','94126','916','San Francisco',0),('San Francisco','CA','94127','916','San Francisco',0),('San Francisco','CA','94128','916','San Mateo',0),('San Francisco','CA','94129','916','San Francisco',0),('San Francisco','CA','94130','916','San Francisco',0),('San Francisco','CA','94131','916','San Francisco',0),('San Francisco','CA','94132','916','San Francisco',0),('San Francisco','CA','94133','916','San Francisco',0),('San Francisco','CA','94134','916','San Francisco',0),('San Francisco','CA','94135','916','San Francisco',0),('San Francisco','CA','94136','916','San Francisco',0),('San Francisco','CA','94137','916','San Francisco',0),('San Francisco','CA','94138','916','San Francisco',0),('San Francisco','CA','94139','916','San Francisco',0),('San Francisco','CA','94140','916','San Francisco',0),('San Francisco','CA','94141','916','San Francisco',0),('San Francisco','CA','94142','916','San Francisco',0),('San Francisco','CA','94143','916','San Francisco',0),('San Francisco','CA','94144','916','San Francisco',0),('San Francisco','CA','94145','916','San Francisco',0),('San Francisco','CA','94146','916','San Francisco',0),('San Francisco','CA','94147','916','San Francisco',0),('San Francisco','CA','94150','916','San Francisco',0),('San Francisco','CA','94151','916','San Francisco',0),('San Francisco','CA','94152','916','San Francisco',0),('San Francisco','CA','94153','916','San Francisco',0),('San Francisco','CA','94154','916','San Francisco',0),('San Francisco','CA','94155','916','San Francisco',0),('San Francisco','CA','94156','916','San Francisco',0),('San Francisco','CA','94157','916','San Francisco',0),('San Francisco','CA','94159','916','San Francisco',0),('San Francisco','CA','94160','916','San Francisco',0),('San Francisco','CA','94161','916','San Francisco',0),('San Francisco','CA','94162','916','San Francisco',0),('San Francisco','CA','94163','916','San Francisco',0),('San Francisco','CA','94164','916','San Francisco',0),('San Francisco','CA','94165','916','San Francisco',0),('San Francisco','CA','94166','916','San Francisco',0),('San Francisco','CA','94167','916','San Francisco',0),('San Francisco','CA','94168','916','San Francisco',0),('San Francisco','CA','94169','916','San Francisco',0),('San Francisco','CA','94170','916','San Francisco',0),('San Francisco','CA','94171','916','San Francisco',0),('San Francisco','CA','94172','916','San Francisco',0),('San Francisco','CA','94175','916','San Francisco',0),('San Francisco','CA','94177','916','San Francisco',0),('San Francisco','CA','94188','916','San Francisco',0),('Sacramento','CA','94203','916','Sacramento',0),('Sacramento','CA','94204','916','Sacramento',0),('Sacramento','CA','94205','916','Sacramento',0),('Sacramento','CA','94206','916','Sacramento',0),('Sacramento','CA','94207','916','Sacramento',0),('Sacramento','CA','94208','916','Sacramento',0),('Sacramento','CA','94209','916','Sacramento',0),('Sacramento','CA','94211','916','Sacramento',0),('Sacramento','CA','94229','916','Sacramento',0),('Sacramento','CA','94230','916','Sacramento',0),('Sacramento','CA','94232','916','Sacramento',0),('Sacramento','CA','94234','916','Sacramento',0),('Sacramento','CA','94235','916','Sacramento',0),('Sacramento','CA','94236','916','Sacramento',0),('Sacramento','CA','94237','916','Sacramento',0),('Sacramento','CA','94239','916','Sacramento',0),('Sacramento','CA','94240','916','Sacramento',0),('Sacramento','CA','94243','916','Sacramento',0),('Sacramento','CA','94244','916','Sacramento',0),('Sacramento','CA','94245','916','Sacramento',0),('Sacramento','CA','94246','916','Sacramento',0),('Sacramento','CA','94247','916','Sacramento',0),('Sacramento','CA','94248','916','Sacramento',0),('Sacramento','CA','94249','916','Sacramento',0),('Sacramento','CA','94250','916','Sacramento',0),('Sacramento','CA','94252','916','Sacramento',0),('Sacramento','CA','94253','916','Sacramento',0),('Sacramento','CA','94254','916','Sacramento',0),('Sacramento','CA','94256','916','Sacramento',0),('Sacramento','CA','94257','916','Sacramento',0),('Sacramento','CA','94258','916','Sacramento',0),('Sacramento','CA','94259','916','Sacramento',0),('Sacramento','CA','94261','916','Sacramento',0),('Sacramento','CA','94262','916','Sacramento',0),('Sacramento','CA','94263','916','Sacramento',0),('Sacramento','CA','94267','916','Sacramento',0),('Sacramento','CA','94268','916','Sacramento',0),('Sacramento','CA','94269','916','Sacramento',0),('Sacramento','CA','94271','916','Sacramento',0),('Sacramento','CA','94273','916','Sacramento',0),('Sacramento','CA','94274','916','Sacramento',0),('Sacramento','CA','94277','916','Sacramento',0),('Sacramento','CA','94278','916','Sacramento',0),('Sacramento','CA','94279','916','Sacramento',0),('Sacramento','CA','94280','916','Sacramento',0),('Sacramento','CA','94282','916','Sacramento',0),('Sacramento','CA','94283','916','Sacramento',0),('Sacramento','CA','94284','916','Sacramento',0),('Sacramento','CA','94285','916','Sacramento',0),('Sacramento','CA','94286','916','Sacramento',0),('Sacramento','CA','94287','916','Sacramento',0),('Sacramento','CA','94288','916','Sacramento',0),('Sacramento','CA','94289','916','Sacramento',0),('Sacramento','CA','94290','916','Sacramento',0),('Sacramento','CA','94291','916','Sacramento',0),('Sacramento','CA','94293','916','Sacramento',0),('Sacramento','CA','94294','916','Sacramento',0),('Sacramento','CA','94295','916','Sacramento',0),('Sacramento','CA','94296','916','Sacramento',0),('Sacramento','CA','94297','916','Sacramento',0),('Sacramento','CA','94298','916','Sacramento',0),('Sacramento','CA','94299','916','Sacramento',0),('Palo Alto','CA','94300','916','Santa Clara',0),('Palo Alto','CA','94301','916','Santa Clara',0),('Palo Alto','CA','94302','916','Santa Clara',0),('Palo Alto','CA','94303','916','San Mateo',0),('Palo Alto','CA','94304','916','Santa Clara',0),('Palo Alto','CA','94305','916','Santa Clara',0),('Palo Alto','CA','94306','916','Santa Clara',0),('Palo Alto','CA','94307','916','San Mateo',0),('Palo Alto','CA','94308','916','San Mateo',0),('Palo Alto','CA','94309','916','Santa Clara',0),('Palo Alto','CA','94310','916','Santa Clara',0),('San Mateo','CA','94400','916','San Mateo',0),('San Mateo','CA','94401','916','San Mateo',0),('San Mateo','CA','94402','916','San Mateo',0),('San Mateo','CA','94403','916','San Mateo',0),('San Mateo','CA','94404','916','San Mateo',0),('San Mateo','CA','94405','916','San Mateo',0),('San Mateo','CA','94406','916','San Mateo',0),('San Mateo','CA','94407','916','San Mateo',0),('San Mateo','CA','94408','916','San Mateo',0),('San Mateo','CA','94409','916','San Mateo',0),('San Mateo','CA','94497','916','San Mateo',0),('Alameda','CA','94501','916','Alameda',0),('Alameda','CA','94502','916','Alameda',0),('Walnut Creek','CA','94504','916','Contra Costa',0),('Danville','CA','94506','916','Contra Costa',0),('Alamo','CA','94507','916','Contra Costa',0),('Angwin','CA','94508','916','Napa',0),('Antioch','CA','94509','916','Contra Costa',0),('Benicia','CA','94510','916','Solano',0),('Bethel Island','CA','94511','916','Contra Costa',0),('Birds Landing','CA','94512','916','Solano',0),('Brentwood','CA','94513','916','Contra Costa',0),('Byron','CA','94514','916','Contra Costa',0),('Calistoga','CA','94515','916','Napa',0),('Canyon','CA','94516','916','Contra Costa',0),('Clayton','CA','94517','916','Contra Costa',0),('Concord','CA','94518','916','Contra Costa',0),('Concord','CA','94519','916','Contra Costa',0),('Concord','CA','94520','916','Contra Costa',0),('Concord','CA','94521','916','Contra Costa',0),('Concord','CA','94522','916','Contra Costa',0),('Pleasant Hill','CA','94523','916','Contra Costa',0),('Concord','CA','94524','916','Contra Costa',0),('Crockett','CA','94525','916','Contra Costa',0),('Danville','CA','94526','916','Contra Costa',0),('Concord','CA','94527','916','Contra Costa',0),('Diablo','CA','94528','916','Contra Costa',0),('Concord','CA','94529','916','Contra Costa',0),('El Cerrito','CA','94530','916','Contra Costa',0),('Antioch','CA','94531','916','Contra Costa',0),('Fairfield','CA','94533','916','Solano',0),('Fairfield','CA','94535','916','Solano',0),('Fremont','CA','94536','916','Alameda',0),('Fremont','CA','94537','916','Alameda',0),('Fremont','CA','94538','916','Alameda',0),('Fremont','CA','94539','916','Alameda',0),('Hayward','CA','94540','916','Alameda',0),('Hayward','CA','94541','916','Alameda',0),('Hayward','CA','94542','916','Alameda',0),('Hayward','CA','94543','916','Alameda',0),('Hayward','CA','94544','916','Alameda',0),('Hayward','CA','94545','916','Alameda',0),('Castro Valley','CA','94546','916','Alameda',0),('Hercules','CA','94547','916','Contra Costa',0),('Knightsen','CA','94548','916','Contra Costa',0),('Lafayette','CA','94549','916','Contra Costa',0),('Livermore','CA','94550','916','Alameda',0),('Livermore','CA','94551','916','Alameda',0),('Hayward','CA','94552','916','Alameda',0),('Martinez','CA','94553','916','Contra Costa',0),('Fremont','CA','94555','916','Alameda',0),('Moraga','CA','94556','916','Contra Costa',0),('Hayward','CA','94557','916','Alameda',0),('Napa','CA','94558','916','Napa',0),('Napa','CA','94559','916','Napa',0),('Newark','CA','94560','916','Alameda',0),('Oakley','CA','94561','916','Contra Costa',0),('Oakville','CA','94562','916','Napa',0),('Orinda','CA','94563','916','Contra Costa',0),('Pinole','CA','94564','916','Contra Costa',0),('Pittsburg','CA','94565','916','Contra Costa',0),('Pleasanton','CA','94566','916','Alameda',0),('Pope Valley','CA','94567','916','Napa',0),('Dublin','CA','94568','916','Alameda',0),('Port Costa','CA','94569','916','Contra Costa',0),('Moraga','CA','94570','916','Contra Costa',0),('Rio Vista','CA','94571','916','Solano',0),('Rodeo','CA','94572','916','Contra Costa',0),('Rutherford','CA','94573','916','Napa',0),('Saint Helena','CA','94574','916','Napa',0),('Moraga','CA','94575','916','Contra Costa',0),('Deer Park','CA','94576','916','Napa',0),('San Leandro','CA','94577','916','Alameda',0),('San Leandro','CA','94578','916','Alameda',0),('San Leandro','CA','94579','916','Alameda',0),('San Lorenzo','CA','94580','916','Alameda',0),('Napa','CA','94581','916','Napa',0),('Pleasanton','CA','94582','916','Alameda',0),('San Ramon','CA','94583','916','Contra Costa',0),('Suisun City','CA','94585','916','Solano',0),('Sunol','CA','94586','916','Alameda',0),('Union City','CA','94587','916','Alameda',0),('Pleasanton','CA','94588','916','Alameda',0),('Vallejo','CA','94589','916','Solano',0),('Vallejo','CA','94590','916','Solano',0),('Vallejo','CA','94591','916','Solano',0),('Mare Island','CA','94592','916','Solano',0),('Walnut Creek','CA','94593','916','San Francisco',0),('Walnut Creek','CA','94594','916','Contra Costa',0),('Walnut Creek','CA','94595','916','Contra Costa',0),('Walnut Creek','CA','94596','916','Contra Costa',0),('Walnut Creek','CA','94597','916','Contra Costa',0),('Walnut Creek','CA','94598','916','Contra Costa',0),('Yountville','CA','94599','916','Napa',0),('Oakland','CA','94601','916','Alameda',0),('Oakland','CA','94602','916','Alameda',0),('Oakland','CA','94603','916','Alameda',0),('Oakland','CA','94604','916','Alameda',0),('Oakland','CA','94605','916','Alameda',0),('Oakland','CA','94606','916','Alameda',0),('Oakland','CA','94607','916','Alameda',0),('Emeryville','CA','94608','916','Alameda',0),('Oakland','CA','94609','916','Alameda',0),('Oakland','CA','94610','916','Alameda',0),('Oakland','CA','94611','916','Alameda',0),('Oakland','CA','94612','916','Alameda',0),('Oakland','CA','94613','916','Alameda',0),('Oakland','CA','94614','916','Alameda',0),('Oakland','CA','94615','916','Alameda',0),('Oakland','CA','94616','916','Alameda',0),('Oakland','CA','94617','916','Alameda',0),('Oakland','CA','94618','916','Alameda',0),('Oakland','CA','94619','916','Alameda',0),('Piedmont','CA','94620','916','Alameda',0),('Oakland','CA','94621','916','Alameda',0),('Oakland','CA','94623','916','Alameda',0),('Oakland','CA','94624','916','Alameda',0),('Oakland','CA','94625','916','Alameda',0),('Oakland','CA','94626','916','Alameda',0),('Oakland','CA','94627','916','Alameda',0),('Oakland','CA','94643','916','Alameda',0),('Oakland','CA','94649','916','Alameda',0),('Oakland','CA','94650','916','Alameda',0),('Oakland','CA','94659','916','Alameda',0),('Oakland','CA','94660','916','Alameda',0),('Oakland','CA','94661','916','Alameda',0),('Emeryville','CA','94662','916','Alameda',0),('Oakland','CA','94666','916','Alameda',0),('Berkeley','CA','94701','916','Alameda',0),('Berkeley','CA','94702','916','Alameda',0),('Berkeley','CA','94703','916','Alameda',0),('Berkeley','CA','94704','916','Alameda',0),('Berkeley','CA','94705','916','Alameda',0),('Albany','CA','94706','916','Alameda',0),('Berkeley','CA','94707','916','Alameda',0),('Berkeley','CA','94708','916','Alameda',0),('Berkeley','CA','94709','916','Alameda',0),('Berkeley','CA','94710','916','Alameda',0),('Berkeley','CA','94712','916','Alameda',0),('Berkeley','CA','94720','916','Alameda',0),('Richmond','CA','94801','916','Contra Costa',0),('Richmond','CA','94802','916','Contra Costa',0),('El Sobrante','CA','94803','916','Contra Costa',0),('Richmond','CA','94804','916','Contra Costa',0),('Richmond','CA','94805','916','Contra Costa',0),('San Pablo','CA','94806','916','Contra Costa',0),('Richmond','CA','94807','916','Contra Costa',0),('Richmond','CA','94808','916','Contra Costa',0),('El Sobrante','CA','94820','916','Contra Costa',0),('Richmond','CA','94850','916','Contra Costa',0),('San Rafael','CA','94901','916','Marin',0),('San Rafael','CA','94903','916','Marin',0),('San Rafael','CA','94904','916','Marin',0),('San Rafael','CA','94911','916','Marin',0),('San Rafael','CA','94912','916','Marin',0),('San Rafael','CA','94913','916','Marin',0),('Kentfield','CA','94914','916','Marin',0),('San Rafael','CA','94915','916','Marin',0),('Belvedere Tiburon','CA','94920','916','Marin',0),('Bodega','CA','94922','916','Sonoma',0),('Bodega Bay','CA','94923','916','Sonoma',0),('Bolinas','CA','94924','916','Marin',0),('Corte Madera','CA','94925','916','Marin',0),('Cotati','CA','94926','916','Sonoma',0),('Rohnert Park','CA','94927','916','Sonoma',0),('Rohnert Park','CA','94928','916','Sonoma',0),('Dillon Beach','CA','94929','916','Marin',0),('Fairfax','CA','94930','916','Marin',0),('Cotati','CA','94931','916','Sonoma',0),('Forest Knolls','CA','94933','916','Marin',0),('Inverness','CA','94937','916','Marin',0),('Lagunitas','CA','94938','916','Marin',0),('Larkspur','CA','94939','916','Marin',0),('Marshall','CA','94940','916','Marin',0),('Mill Valley','CA','94941','916','Marin',0),('Mill Valley','CA','94942','916','Marin',0),('Novato','CA','94945','916','Marin',0),('Nicasio','CA','94946','916','Marin',0),('Novato','CA','94947','916','Marin',0),('Novato','CA','94948','916','Marin',0),('Novato','CA','94949','916','Marin',0),('Olema','CA','94950','916','Marin',0),('Penngrove','CA','94951','916','Sonoma',0),('Petaluma','CA','94952','916','Sonoma',0),('Petaluma','CA','94953','916','Sonoma',0),('Petaluma','CA','94954','916','Sonoma',1),('Petaluma','CA','94955','916','Sonoma',0),('Point Reyes Station','CA','94956','916','Marin',0),('Ross','CA','94957','916','Marin',0),('San Anselmo','CA','94960','916','Marin',0),('San Geronimo','CA','94963','916','Marin',0),('San Quentin','CA','94964','916','Marin',0),('Sausalito','CA','94965','916','Marin',0),('Sausalito','CA','94966','916','Marin',0),('Stinson Beach','CA','94970','916','Marin',0),('Tomales','CA','94971','916','Marin',0),('Valley Ford','CA','94972','916','Sonoma',0),('Woodacre','CA','94973','916','Marin',0),('Tamal','CA','94974','916','Marin',0),('Petaluma','CA','94975','916','Sonoma',0),('Corte Madera','CA','94976','916','Marin',0),('Larkspur','CA','94977','916','Marin',0),('Fairfax','CA','94978','916','Marin',0),('San Anselmo','CA','94979','916','Marin',0),('Novato','CA','94998','916','Marin',0),('Petaluma','CA','94999','916','Sonoma',0),('Aptos','CA','95001','916','Santa Cruz',0),('Alviso','CA','95002','916','Santa Clara',0),('Aptos','CA','95003','916','Santa Cruz',0),('Aromas','CA','95004','916','Monterey',0),('Ben Lomond','CA','95005','916','Santa Cruz',0),('Boulder Creek','CA','95006','916','Santa Cruz',0),('Brookdale','CA','95007','916','Santa Cruz',0),('Campbell','CA','95008','916','Santa Clara',0),('Campbell','CA','95009','916','Santa Clara',0),('Capitola','CA','95010','916','Santa Cruz',0),('Campbell','CA','95011','916','Santa Clara',0),('Castroville','CA','95012','916','Monterey',0),('Coyote','CA','95013','916','Santa Clara',0),('Cupertino','CA','95014','916','Santa Clara',0),('Cupertino','CA','95015','916','Santa Clara',0),('Cupertino','CA','95016','916','Santa Clara',0),('Davenport','CA','95017','916','Santa Cruz',0),('Felton','CA','95018','916','Santa Cruz',0),('Freedom','CA','95019','916','Santa Cruz',0),('Gilroy','CA','95020','916','Santa Clara',0),('Gilroy','CA','95021','916','Santa Clara',0),('Hollister','CA','95023','916','San Benito',1),('Hollister','CA','95024','916','San Benito',1),('Holy City','CA','95026','916','Santa Clara',0),('Los Gatos','CA','95030','916','Santa Clara',0),('Los Gatos','CA','95031','916','Santa Clara',0),('Los Gatos','CA','95032','916','Santa Clara',0),('Los Gatos','CA','95033','916','Santa Clara',0),('Milpitas','CA','95035','916','Santa Clara',0),('Milpitas','CA','95036','916','Santa Clara',0),('Morgan Hill','CA','95037','916','Santa Clara',0),('Morgan Hill','CA','95038','916','Santa Clara',0),('Moss Landing','CA','95039','916','Monterey',0),('Mount Hermon','CA','95041','916','Santa Cruz',0),('New Almaden','CA','95042','916','Santa Clara',0),('Paicines','CA','95043','916','San Benito',1),('Redwood Estates','CA','95044','916','Santa Clara',0),('San Juan Bautista','CA','95045','916','San Benito',1),('San Martin','CA','95046','916','Santa Clara',0),('Santa Clara','CA','95050','916','Santa Clara',0),('Santa Clara','CA','95051','916','Santa Clara',0),('Santa Clara','CA','95052','916','Santa Clara',0),('Santa Clara','CA','95053','916','Santa Clara',0),('Santa Clara','CA','95054','916','Santa Clara',0),('Santa Clara','CA','95055','916','Santa Clara',0),('Santa Clara','CA','95056','916','Santa Clara',0),('Santa Cruz','CA','95060','916','Santa Cruz',0),('Santa Cruz','CA','95061','916','Santa Cruz',0),('Santa Cruz','CA','95062','916','Santa Cruz',0),('Santa Cruz','CA','95063','916','Santa Cruz',0),('Santa Cruz','CA','95064','916','Santa Cruz',0),('Santa Cruz','CA','95065','916','Santa Cruz',0),('Scotts Valley','CA','95066','916','Santa Cruz',0),('Scotts Valley','CA','95067','916','Santa Cruz',0),('Saratoga','CA','95070','916','Santa Clara',0),('Saratoga','CA','95071','916','Santa Clara',0),('Soquel','CA','95073','916','Santa Cruz',0),('Tres Pinos','CA','95075','916','San Benito',1),('Watsonville','CA','95076','916','Santa Cruz',0),('Watsonville','CA','95077','916','Santa Cruz',0),('San Jose','CA','95100','916','Santa Clara',0),('San Jose','CA','95101','916','Santa Clara',0),('San Jose','CA','95102','916','Santa Clara',0),('San Jose','CA','95103','916','Santa Clara',0),('San Jose','CA','95106','916','Santa Clara',0),('San Jose','CA','95108','916','Santa Clara',0),('San Jose','CA','95109','916','Santa Clara',0),('San Jose','CA','95110','916','Santa Clara',0),('San Jose','CA','95111','916','Santa Clara',0),('San Jose','CA','95112','916','Santa Clara',0),('San Jose','CA','95113','916','Santa Clara',0),('San Jose','CA','95114','916','Santa Clara',0),('San Jose','CA','95115','916','Santa Clara',0),('San Jose','CA','95116','916','Santa Clara',0),('San Jose','CA','95117','916','Santa Clara',0),('San Jose','CA','95118','916','Santa Clara',0),('San Jose','CA','95119','916','Santa Clara',0),('San Jose','CA','95120','916','Santa Clara',0),('San Jose','CA','95121','916','Santa Clara',0),('San Jose','CA','95122','916','Santa Clara',0),('San Jose','CA','95123','916','Santa Clara',0),('San Jose','CA','95124','916','Santa Clara',0),('San Jose','CA','95125','916','Santa Clara',0),('San Jose','CA','95126','916','Santa Clara',0),('San Jose','CA','95127','916','Santa Clara',0),('San Jose','CA','95128','916','Santa Clara',0),('San Jose','CA','95129','916','Santa Clara',0),('San Jose','CA','95130','916','Santa Clara',0),('San Jose','CA','95131','916','Santa Clara',0),('San Jose','CA','95132','916','Santa Clara',0),('San Jose','CA','95133','916','Santa Clara',0),('San Jose','CA','95134','916','Santa Clara',0),('San Jose','CA','95135','916','Santa Clara',0),('San Jose','CA','95136','916','Santa Clara',0),('San Jose','CA','95137','916','Santa Clara',0),('San Jose','CA','95138','916','Santa Clara',0),('San Jose','CA','95139','916','Santa Clara',0),('San Jose','CA','95140','916','Santa Clara',1),('San Jose','CA','95141','916','Santa Clara',0),('San Jose','CA','95142','916','Santa Clara',0),('San Jose','CA','95148','916','Santa Clara',0),('San Jose','CA','95150','916','Santa Clara',0),('San Jose','CA','95151','916','Santa Clara',0),('San Jose','CA','95152','916','Santa Clara',0),('San Jose','CA','95153','916','Santa Clara',0),('San Jose','CA','95154','916','Santa Clara',0),('San Jose','CA','95155','916','Santa Clara',0),('San Jose','CA','95156','916','Santa Clara',0),('San Jose','CA','95157','916','Santa Clara',0),('San Jose','CA','95158','916','Santa Clara',0),('San Jose','CA','95159','916','Santa Clara',0),('San Jose','CA','95160','916','Santa Clara',0),('San Jose','CA','95161','916','Santa Clara',0),('San Jose','CA','95164','916','Santa Clara',0),('San Jose','CA','95170','916','Santa Clara',0),('San Jose','CA','95171','916','Santa Clara',0),('San Jose','CA','95172','916','Santa Clara',0),('San Jose','CA','95173','916','Santa Clara',0),('San Jose','CA','95190','916','Santa Clara',0),('San Jose','CA','95191','916','Santa Clara',0),('San Jose','CA','95192','916','Santa Clara',0),('San Jose','CA','95193','916','Santa Clara',0),('San Jose','CA','95194','916','Santa Clara',0),('San Jose','CA','95196','916','Santa Clara',0),('Stockton','CA','95201','916','San Joaquin',0),('Stockton','CA','95202','916','San Joaquin',0),('Stockton','CA','95203','916','San Joaquin',0),('Stockton','CA','95204','916','San Joaquin',0),('Stockton','CA','95205','916','San Joaquin',0),('Stockton','CA','95206','916','San Joaquin',0),('Stockton','CA','95207','916','San Joaquin',0),('Stockton','CA','95208','916','San Joaquin',0),('Stockton','CA','95209','916','San Joaquin',1),('Stockton','CA','95210','916','San Joaquin',0),('Stockton','CA','95211','916','San Joaquin',0),('Stockton','CA','95212','916','San Joaquin',0),('Stockton','CA','95213','916','San Joaquin',0),('Stockton','CA','95215','916','San Joaquin',0),('Stockton','CA','95219','916','San Joaquin',0),('Acampo','CA','95220','916','San Joaquin',0),('Altaville','CA','95221','916','Calaveras',1),('Angels Camp','CA','95222','916','Calaveras',1),('Arnold','CA','95223','916','Calaveras',1),('Avery','CA','95224','916','Calaveras',1),('Burson','CA','95225','916','Calaveras',1),('Valley Springs','CA','95226','916','Calaveras',1),('Clements','CA','95227','916','San Joaquin',0),('Copperopolis','CA','95228','916','Calaveras',1),('Douglas Flat','CA','95229','916','Calaveras',1),('Farmington','CA','95230','916','San Joaquin',0),('French Camp','CA','95231','916','San Joaquin',0),('Glencoe','CA','95232','916','Calaveras',1),('Hathaway Pines','CA','95233','916','Calaveras',1),('Holt','CA','95234','916','San Joaquin',0),('Linden','CA','95236','916','San Joaquin',0),('Lockeford','CA','95237','916','San Joaquin',0),('Lodi','CA','95240','916','San Joaquin',0),('Lodi','CA','95241','916','San Joaquin',0),('Lodi','CA','95242','916','San Joaquin',1),('Mokelumne Hill','CA','95245','916','Calaveras',1),('Mountain Ranch','CA','95246','916','Calaveras',1),('Murphys','CA','95247','916','Calaveras',1),('Rail Road Flat','CA','95248','916','Calaveras',1),('San Andreas','CA','95249','916','Calaveras',1),('Sheep Ranch','CA','95250','916','Calaveras',1),('Vallecito','CA','95251','916','Calaveras',1),('Valley Springs','CA','95252','916','Calaveras',1),('Victor','CA','95253','916','San Joaquin',0),('Wallace','CA','95254','916','Calaveras',1),('West Point','CA','95255','916','Calaveras',1),('Wilseyville','CA','95257','916','Calaveras',1),('Woodbridge','CA','95258','916','San Joaquin',0),('Stockton','CA','95267','916','San Joaquin',0),('Stockton','CA','95269','916','San Joaquin',0),('Stockton','CA','95290','916','San Joaquin',0),('Stockton','CA','95296','916','San Joaquin',0),('Stockton','CA','95297','916','San Joaquin',0),('Stockton','CA','95298','916','San Joaquin',0),('Atwater','CA','95301','916','Merced',0),('Ballico','CA','95303','916','Merced',1),('Banta','CA','95304','916','San Joaquin',0),('Big Oak Flat','CA','95305','916','Tuolumne',1),('Catheys Valley','CA','95306','916','Mariposa',1),('Ceres','CA','95307','916','Stanislaus',0),('Chinese Camp','CA','95309','916','Tuolumne',1),('Columbia','CA','95310','916','Tuolumne',1),('Coulterville','CA','95311','916','Mariposa',1),('Cressey','CA','95312','916','Merced',0),('Crows Landing','CA','95313','916','Stanislaus',1),('Dardanelle','CA','95314','916','Tuolumne',1),('Delhi','CA','95315','916','Merced',1),('Denair','CA','95316','916','Stanislaus',0),('El Nido','CA','95317','916','Merced',0),('El Portal','CA','95318','916','Mariposa',1),('Empire','CA','95319','916','Stanislaus',0),('Escalon','CA','95320','916','San Joaquin',0),('Groveland','CA','95321','916','Tuolumne',1),('Gustine','CA','95322','916','Merced',1),('Hickman','CA','95323','916','Stanislaus',0),('Hilmar','CA','95324','916','Merced',1),('Hornitos','CA','95325','916','Mariposa',1),('Hughson','CA','95326','916','Stanislaus',0),('Jamestown','CA','95327','916','Tuolumne',1),('Keyes','CA','95328','916','Stanislaus',0),('La Grange','CA','95329','916','Stanislaus',0),('Lathrop','CA','95330','916','San Joaquin',1),('Lathrop','CA','95331','916','San Joaquin',0),('Le Grand','CA','95333','916','Merced',1),('Livingston','CA','95334','916','Merced',0),('Long Barn','CA','95335','916','Tuolumne',1),('Manteca','CA','95336','916','San Joaquin',0),('Manteca','CA','95337','916','San Joaquin',0),('Mariposa','CA','95338','916','Mariposa',1),('Merced','CA','95340','916','Merced',0),('Merced','CA','95341','916','Merced',0),('Castle Afb','CA','95342','916','Merced',0),('Merced','CA','95343','916','Merced',0),('Merced','CA','95344','916','Merced',0),('Midpines','CA','95345','916','Mariposa',1),('Mi Wuk Village','CA','95346','916','Tuolumne',1),('Moccasin','CA','95347','916','Tuolumne',1),('Merced','CA','95348','916','Merced',0),('Modesto','CA','95350','916','Stanislaus',0),('Modesto','CA','95351','916','Stanislaus',0),('Modesto','CA','95352','916','Stanislaus',0),('Modesto','CA','95353','916','Stanislaus',0),('Modesto','CA','95354','916','Stanislaus',0),('Modesto','CA','95355','916','Stanislaus',0),('Modesto','CA','95356','916','Stanislaus',0),('Modesto','CA','95357','916','Stanislaus',0),('Modesto','CA','95358','916','Stanislaus',0),('Newman','CA','95360','916','Stanislaus',1),('Oakdale','CA','95361','916','Stanislaus',1),('Patterson','CA','95363','916','Stanislaus',1),('Pinecrest','CA','95364','916','Tuolumne',1),('Planada','CA','95365','916','Merced',0),('Ripon','CA','95366','916','San Joaquin',0),('Riverbank','CA','95367','916','Stanislaus',0),('Salida','CA','95368','916','Stanislaus',0),('Snelling','CA','95369','916','Merced',1),('Sonora','CA','95370','916','Tuolumne',1),('Soulsbyville','CA','95372','916','Tuolumne',1),('Standard','CA','95373','916','Tuolumne',1),('Stevinson','CA','95374','916','Merced',1),('Pinecrest','CA','95375','916','Tuolumne',1),('Tracy','CA','95376','916','San Joaquin',0),('Tracy','CA','95378','916','San Joaquin',0),('Tuolumne','CA','95379','916','Tuolumne',1),('Turlock','CA','95380','916','Stanislaus',0),('Turlock','CA','95381','916','Stanislaus',0),('Turlock','CA','95382','916','Stanislaus',0),('Twain Harte','CA','95383','916','Tuolumne',1),('Tracy','CA','95385','916','San Joaquin',0),('Waterford','CA','95386','916','Stanislaus',0),('Westley','CA','95387','916','Stanislaus',0),('Winton','CA','95388','916','Merced',1),('Yosemite National Park','CA','95389','916','Mariposa',1),('Riverbank','CA','95390','916','Stanislaus',0),('Modesto','CA','95397','916','Stanislaus',0),('Santa Rosa','CA','95401','916','Sonoma',0),('Santa Rosa','CA','95402','916','Sonoma',0),('Santa Rosa','CA','95403','916','Sonoma',0),('Santa Rosa','CA','95404','916','Sonoma',1),('Santa Rosa','CA','95405','916','Sonoma',0),('Santa Rosa','CA','95406','916','Sonoma',0),('Santa Rosa','CA','95407','916','Sonoma',0),('Santa Rosa','CA','95408','916','Sonoma',0),('Santa Rosa','CA','95409','916','Sonoma',0),('Albion','CA','95410','916','Mendocino',1),('Alderpoint','CA','95411','916','Humboldt',0),('Annapolis','CA','95412','916','Sonoma',1),('Blocksburg','CA','95414','916','Humboldt',0),('Boonville','CA','95415','916','Mendocino',1),('Boyes Hot Springs','CA','95416','916','Sonoma',0),('Branscomb','CA','95417','916','Mendocino',1),('Calpella','CA','95418','916','Mendocino',1),('Camp Meeker','CA','95419','916','Sonoma',0),('Fort Bragg','CA','95420','916','Mendocino',1),('Cazadero','CA','95421','916','Sonoma',1),('Clearlake','CA','95422','916','Lake',1),('Clearlake Oaks','CA','95423','916','Lake',1),('Clearlake Park','CA','95424','916','Lake',1),('Cloverdale','CA','95425','916','Sonoma',1),('Cobb','CA','95426','916','Lake',1),('Comptche','CA','95427','916','Mendocino',1),('Covelo','CA','95428','916','Mendocino',1),('Dos Rios','CA','95429','916','Mendocino',1),('Duncans Mills','CA','95430','916','Sonoma',0),('Eldridge','CA','95431','916','Sonoma',0),('Elk','CA','95432','916','Mendocino',1),('El Verano','CA','95433','916','Sonoma',0),('Finley','CA','95435','916','Lake',1),('Forestville','CA','95436','916','Sonoma',0),('Fort Bragg','CA','95437','916','Mendocino',1),('Fulton','CA','95439','916','Sonoma',0),('Garberville','CA','95440','916','Humboldt',0),('Geyserville','CA','95441','916','Sonoma',1),('Glen Ellen','CA','95442','916','Sonoma',0),('Glenhaven','CA','95443','916','Lake',1),('Graton','CA','95444','916','Sonoma',0),('Gualala','CA','95445','916','Mendocino',1),('Guerneville','CA','95446','916','Sonoma',0),('Healdsburg','CA','95448','916','Sonoma',1),('Hopland','CA','95449','916','Mendocino',1),('Jenner','CA','95450','916','Sonoma',1),('Kelseyville','CA','95451','916','Lake',1),('Kenwood','CA','95452','916','Sonoma',0),('Lakeport','CA','95453','916','Lake',1),('Laytonville','CA','95454','916','Mendocino',1),('Leggett','CA','95455','916','Mendocino',0),('Littleriver','CA','95456','916','Mendocino',1),('Lower Lake','CA','95457','916','Lake',1),('Lucerne','CA','95458','916','Lake',1),('Manchester','CA','95459','916','Mendocino',1),('Mendocino','CA','95460','916','Mendocino',1),('Middletown','CA','95461','916','Lake',1),('Monte Rio','CA','95462','916','Sonoma',0),('Navarro','CA','95463','916','Mendocino',1),('Nice','CA','95464','916','Lake',1),('Occidental','CA','95465','916','Sonoma',1),('Philo','CA','95466','916','Mendocino',1),('Piercy','CA','95467','916','Mendocino',0),('Point Arena','CA','95468','916','Mendocino',1),('Potter Valley','CA','95469','916','Mendocino',1),('Redwood Valley','CA','95470','916','Mendocino',1),('Rio Nido','CA','95471','916','Sonoma',0),('Sebastopol','CA','95472','916','Sonoma',0),('Sebastopol','CA','95473','916','Sonoma',0),('Sonoma','CA','95476','916','Sonoma',0),('Stewarts Point','CA','95480','916','Sonoma',1),('Talmage','CA','95481','916','Mendocino',1),('Ukiah','CA','95482','916','Mendocino',1),('Upper Lake','CA','95485','916','Lake',1),('Villa Grande','CA','95486','916','Sonoma',0),('Vineburg','CA','95487','916','Sonoma',0),('Westport','CA','95488','916','Mendocino',1),('Whitethorn','CA','95489','916','Humboldt',0),('Willits','CA','95490','916','Mendocino',1),('Windsor','CA','95492','916','Sonoma',0),('Upper Lake','CA','95493','916','Lake',1),('Yorkville','CA','95494','916','Mendocino',1),('Zenia','CA','95495','916','Trinity',0),('The Sea Ranch','CA','95497','916','Sonoma',1),('Eureka','CA','95501','916','Humboldt',1),('Eureka','CA','95502','916','Humboldt',1),('Eureka','CA','95503','916','Humboldt',1),('Alderpoint','CA','95511','916','Humboldt',1),('Blocksburg','CA','95514','916','Humboldt',1),('Arcata','CA','95518','916','Humboldt',1),('McKinleyville','CA','95519','916','Humboldt',1),('Arcata','CA','95521','916','Humboldt',1),('Bayside','CA','95524','916','Humboldt',1),('Blue Lake','CA','95525','916','Humboldt',1),('Bridgeville','CA','95526','916','Humboldt',1),('Burnt Ranch','CA','95527','916','Trinity',1),('Carlotta','CA','95528','916','Humboldt',1),('Crescent City','CA','95531','916','Del Norte',1),('Crescent City','CA','95532','916','Del Norte',1),('Eureka','CA','95534','916','Humboldt',1),('Ferndale','CA','95536','916','Humboldt',1),('Fields Landing','CA','95537','916','Humboldt',1),('Crescent City','CA','95538','916','Del Norte',1),('Fortuna','CA','95540','916','Humboldt',1),('Garberville','CA','95542','916','Humboldt',1),('Gasquet','CA','95543','916','Del Norte',1),('Honeydew','CA','95545','916','Humboldt',1),('Hoopa','CA','95546','916','Humboldt',1),('Hydesville','CA','95547','916','Humboldt',1),('Klamath','CA','95548','916','Del Norte',1),('Kneeland','CA','95549','916','Humboldt',1),('Korbel','CA','95550','916','Humboldt',1),('Loleta','CA','95551','916','Humboldt',1),('Mad River','CA','95552','916','Trinity',1),('Miranda','CA','95553','916','Humboldt',1),('Myers Flat','CA','95554','916','Humboldt',1),('Orick','CA','95555','916','Humboldt',1),('Orleans','CA','95556','916','Humboldt',1),('Petrolia','CA','95558','916','Humboldt',1),('Phillipsville','CA','95559','916','Humboldt',1),('Redway','CA','95560','916','Humboldt',1),('Rio Dell','CA','95562','916','Humboldt',1),('Salyer','CA','95563','916','Trinity',1),('Samoa','CA','95564','916','Humboldt',1),('Scotia','CA','95565','916','Humboldt',1),('Smith River','CA','95567','916','Del Norte',1),('Orleans','CA','95568','916','Siskiyou',1),('Redcrest','CA','95569','916','Humboldt',1),('Trinidad','CA','95570','916','Humboldt',1),('Weott','CA','95571','916','Humboldt',1),('Willow Creek','CA','95573','916','Humboldt',1),('Leggett','CA','95585','916','Mendocino',1),('Piercy','CA','95587','916','Mendocino',1),('Whitethorn','CA','95589','916','Humboldt',1),('Zenia','CA','95595','916','Trinity',1),('Amador City','CA','95601','916','Amador',1),('Auburn','CA','95602','916','Placer',0),('Auburn','CA','95603','916','Placer',0),('Auburn','CA','95604','916','Placer',0),('Broderick','CA','95605','916','Yolo',0),('Brooks','CA','95606','916','Yolo',0),('Capay','CA','95607','916','Yolo',0),('Carmichael','CA','95608','916','Sacramento',0),('Carmichael','CA','95609','916','Sacramento',0),('Citrus Heights','CA','95610','916','Sacramento',0),('Citrus Heights','CA','95611','916','Sacramento',0),('Clarksburg','CA','95612','916','Yolo',0),('Coloma','CA','95613','916','El Dorado',0),('Cool','CA','95614','916','El Dorado',1),('Courtland','CA','95615','916','Sacramento',0),('Davis','CA','95616','916','Yolo',0),('Davis','CA','95617','916','Yolo',0),('El Macero','CA','95618','916','Yolo',0),('Diamond Springs','CA','95619','916','El Dorado',1),('Dixon','CA','95620','916','Solano',0),('Citrus Heights','CA','95621','916','Sacramento',0),('Nicolaus','CA','95622','916','Sutter',0),('El Dorado','CA','95623','916','El Dorado',1),('Elk Grove','CA','95624','916','Sacramento',0),('Elmira','CA','95625','916','Solano',0),('Elverta','CA','95626','916','Sacramento',0),('Esparto','CA','95627','916','Yolo',0),('Fair Oaks','CA','95628','916','Sacramento',0),('Fiddletown','CA','95629','916','Amador',1),('Folsom','CA','95630','916','Sacramento',0),('Foresthill','CA','95631','916','Placer',1),('Galt','CA','95632','916','Sacramento',0),('Garden Valley','CA','95633','916','El Dorado',0),('Georgetown','CA','95634','916','El Dorado',1),('Greenwood','CA','95635','916','El Dorado',1),('Grizzly Flats','CA','95636','916','El Dorado',1),('Guinda','CA','95637','916','Yolo',0),('Herald','CA','95638','916','Sacramento',0),('Hood','CA','95639','916','Sacramento',0),('Ione','CA','95640','916','Amador',1),('Isleton','CA','95641','916','Sacramento',0),('Jackson','CA','95642','916','Amador',1),('Kelsey','CA','95643','916','El Dorado',0),('Kit Carson','CA','95644','916','Amador',1),('Knights Landing','CA','95645','916','Yolo',0),('Kirkwood','CA','95646','916','Alpine',1),('Lincoln','CA','95648','916','Placer',1),('Loomis','CA','95650','916','Placer',0),('Lotus','CA','95651','916','El Dorado',1),('Mc Clellan A F B','CA','95652','916','Sacramento',0),('Madison','CA','95653','916','Yolo',0),('Martell','CA','95654','916','Amador',1),('Mather A F B','CA','95655','916','Sacramento',0),('Mount Aukum','CA','95656','916','El Dorado',0),('Newcastle','CA','95658','916','Placer',0),('Nicolaus','CA','95659','916','Sutter',0),('North Highlands','CA','95660','916','Sacramento',0),('Roseville','CA','95661','916','Placer',0),('Orangevale','CA','95662','916','Sacramento',0),('Penryn','CA','95663','916','Placer',0),('Pilot Hill','CA','95664','916','El Dorado',1),('Pine Grove','CA','95665','916','Amador',1),('Pioneer','CA','95666','916','Amador',1),('Placerville','CA','95667','916','El Dorado',1),('Pleasant Grove','CA','95668','916','Sutter',0),('Plymouth','CA','95669','916','Amador',1),('Rancho Cordova','CA','95670','916','Sacramento',0),('Represa','CA','95671','916','Sacramento',0),('Rescue','CA','95672','916','El Dorado',0),('Rio Linda','CA','95673','916','Sacramento',0),('Rio Oso','CA','95674','916','Sutter',0),('River Pines','CA','95675','916','Amador',1),('Robbins','CA','95676','916','Sutter',0),('Rocklin','CA','95677','916','Placer',0),('Roseville','CA','95678','916','Placer',0),('Rumsey','CA','95679','916','Yolo',0),('Ryde','CA','95680','916','Sacramento',0),('Sheridan','CA','95681','916','Placer',0),('Shingle Springs','CA','95682','916','El Dorado',0),('Sloughhouse','CA','95683','916','Sacramento',0),('Somerset','CA','95684','916','El Dorado',1),('Sutter Creek','CA','95685','916','Amador',1),('Thornton','CA','95686','916','San Joaquin',0),('Vacaville','CA','95687','916','Solano',0),('Vacaville','CA','95688','916','Solano',0),('Volcano','CA','95689','916','Amador',1),('Walnut Grove','CA','95690','916','Sacramento',0),('West Sacramento','CA','95691','916','Yolo',0),('Wheatland','CA','95692','916','Yuba',0),('Wilton','CA','95693','916','Sacramento',0),('Winters','CA','95694','916','Yolo',0),('Woodland','CA','95695','916','Yolo',0),('Vacaville','CA','95696','916','Solano',0),('Yolo','CA','95697','916','Yolo',0),('Zamora','CA','95698','916','Yolo',0),('Drytown','CA','95699','916','Amador',1),('Alta','CA','95701','916','Placer',1),('Applegate','CA','95703','916','Placer',1),('Camino','CA','95709','916','El Dorado',1),('Chicago Park','CA','95712','916','Nevada',1),('Colfax','CA','95713','916','Placer',1),('Dutch Flat','CA','95714','916','Placer',0),('Emigrant Gap','CA','95715','916','Placer',1),('Gold Run','CA','95717','916','Placer',0),('Kyburz','CA','95720','916','El Dorado',1),('Twin Bridges','CA','95721','916','El Dorado',1),('Meadow Vista','CA','95722','916','Placer',1),('Norden','CA','95724','916','Nevada',1),('Pollock Pines','CA','95726','916','El Dorado',1),('Soda Springs','CA','95728','916','Nevada',1),('Twin Bridges','CA','95735','916','El Dorado',0),('Weimar','CA','95736','916','Placer',0),('Rancho Cordova','CA','95741','916','Sacramento',0),('Rancho Cordova','CA','95742','916','Sacramento',0),('Rancho Cordova','CA','95743','916','Sacramento',0),('Granite Bay','CA','95746','916','Placer',0),('Roseville','CA','95747','916','Placer',0),('Elk Grove','CA','95758','916','Sacramento',0),('Elk Grove','CA','95759','916','Sacramento',0),('El Dorado Hills','CA','95762','916','El Dorado',0),('Folsom','CA','95763','916','Sacramento',0),('Rocklin','CA','95765','916','Placer',0),('Woodland','CA','95776','916','Yolo',0),('West Sacramento','CA','95798','916','Yolo',0),('Sacramento','CA','95799','916','Sacramento',0),('Sacramento','CA','95800','916','Sacramento',0),('Sacramento','CA','95811','916','Sacramento',0),('Sacramento','CA','95812','916','Sacramento',0),('Sacramento','CA','95813','916','Sacramento',0),('Sacramento','CA','95814','916','Sacramento',0),('Sacramento','CA','95815','916','Sacramento',0),('Sacramento','CA','95816','916','Sacramento',0),('Sacramento','CA','95817','916','Sacramento',0),('Sacramento','CA','95818','916','Sacramento',0),('Sacramento','CA','95819','916','Sacramento',0),('Sacramento','CA','95820','916','Sacramento',0),('Sacramento','CA','95821','916','Sacramento',0),('Sacramento','CA','95822','916','Sacramento',0),('Sacramento','CA','95823','916','Sacramento',0),('Sacramento','CA','95824','916','Sacramento',0),('Sacramento','CA','95825','916','Sacramento',0),('Sacramento','CA','95826','916','Sacramento',0),('Sacramento','CA','95827','916','Sacramento',0),('Sacramento','CA','95828','916','Sacramento',0),('Sacramento','CA','95829','916','Sacramento',0),('Sacramento','CA','95830','916','Sacramento',0),('Sacramento','CA','95831','916','Sacramento',0),('Sacramento','CA','95832','916','Sacramento',0),('Sacramento','CA','95833','916','Sacramento',0),('Sacramento','CA','95834','916','Sacramento',0),('Sacramento','CA','95835','916','Sacramento',0),('Sacramento','CA','95836','916','Sacramento',0),('Sacramento','CA','95837','916','Sacramento',0),('Sacramento','CA','95838','916','Sacramento',0),('Sacramento','CA','95840','916','Sacramento',0),('Sacramento','CA','95841','916','Sacramento',0),('Sacramento','CA','95842','916','Sacramento',0),('Antelope','CA','95843','916','Sacramento',0),('Sacramento','CA','95851','916','Sacramento',0),('Sacramento','CA','95852','916','Sacramento',0),('Sacramento','CA','95853','916','Sacramento',0),('Sacramento','CA','95857','916','Sacramento',0),('Sacramento','CA','95860','916','Sacramento',0),('Sacramento','CA','95864','916','Sacramento',0),('Sacramento','CA','95865','916','Sacramento',0),('Sacramento','CA','95866','916','Sacramento',0),('Sacramento','CA','95867','916','Sacramento',0),('Sacramento','CA','95873','916','Sacramento',0),('Sacramento','CA','95887','916','Sacramento',0),('Sacramento','CA','95894','916','Sacramento',0),('Sacramento','CA','95899','916','Sacramento',0),('Marysville','CA','95901','916','Yuba',0),('Marysville','CA','95903','916','Yuba',0),('Alleghany','CA','95910','916','Sierra',1),('Arbuckle','CA','95912','916','Colusa',1),('Artois','CA','95913','916','Glenn',1),('Bangor','CA','95914','916','Butte',1),('Belden','CA','95915','916','Plumas',1),('Berry Creek','CA','95916','916','Butte',1),('Biggs','CA','95917','916','Butte',1),('Browns Valley','CA','95918','916','Yuba',0),('Brownsville','CA','95919','916','Yuba',0),('Butte City','CA','95920','916','Glenn',1),('Camptonville','CA','95922','916','Yuba',0),('Canyondam','CA','95923','916','Plumas',1),('Cedar Ridge','CA','95924','916','Nevada',1),('Challenge','CA','95925','916','Yuba',0),('Chico','CA','95926','916','Butte',0),('Chico','CA','95927','916','Butte',0),('Chico','CA','95928','916','Butte',0),('Chico','CA','95929','916','Butte',0),('Clipper Mills','CA','95930','916','Butte',0),('College City','CA','95931','916','Colusa',1),('Colusa','CA','95932','916','Colusa',1),('Crescent Mills','CA','95934','916','Plumas',1),('Dobbins','CA','95935','916','Yuba',0),('Downieville','CA','95936','916','Sierra',1),('Dunnigan','CA','95937','916','Yolo',0),('Durham','CA','95938','916','Butte',0),('Elk Creek','CA','95939','916','Glenn',1),('Feather Falls','CA','95940','916','Butte',0),('Forbestown','CA','95941','916','Butte',1),('Forest Ranch','CA','95942','916','Butte',0),('Glenn','CA','95943','916','Glenn',1),('Goodyears Bar','CA','95944','916','Sierra',1),('Grass Valley','CA','95945','916','Nevada',1),('Grass Valley','CA','95946','916','Nevada',1),('Greenville','CA','95947','916','Plumas',1),('Gridley','CA','95948','916','Butte',1),('Grass Valley','CA','95949','916','Nevada',1),('Grimes','CA','95950','916','Colusa',1),('Hamilton City','CA','95951','916','Glenn',1),('Keddie','CA','95952','916','Plumas',0),('Live Oak','CA','95953','916','Sutter',0),('Magalia','CA','95954','916','Butte',0),('Maxwell','CA','95955','916','Colusa',1),('Meadow Valley','CA','95956','916','Plumas',1),('Meridian','CA','95957','916','Sutter',0),('Nelson','CA','95958','916','Butte',0),('Nevada City','CA','95959','916','Nevada',1),('North San Juan','CA','95960','916','Nevada',1),('Olivehurst','CA','95961','916','Yuba',0),('Oregon House','CA','95962','916','Yuba',0),('Orland','CA','95963','916','Glenn',1),('Oroville','CA','95965','916','Butte',1),('Oroville','CA','95966','916','Butte',1),('Paradise','CA','95967','916','Butte',0),('Palermo','CA','95968','916','Butte',1),('Paradise','CA','95969','916','Butte',0),('Princeton','CA','95970','916','Colusa',1),('Quincy','CA','95971','916','Plumas',1),('Rackerby','CA','95972','916','Yuba',0),('Chico','CA','95973','916','Butte',0),('Richvale','CA','95974','916','Butte',0),('Rough And Ready','CA','95975','916','Nevada',1),('Chico','CA','95976','916','Butte',0),('Smartville','CA','95977','916','Yuba',0),('Stirling City','CA','95978','916','Butte',0),('Stonyford','CA','95979','916','Colusa',1),('Storrie','CA','95980','916','Plumas',1),('Strawberry Valley','CA','95981','916','Yuba',0),('Sutter','CA','95982','916','Sutter',0),('Taylorsville','CA','95983','916','Plumas',1),('Twain','CA','95984','916','Plumas',1),('Washington','CA','95986','916','Nevada',1),('Williams','CA','95987','916','Colusa',1),('Willows','CA','95988','916','Glenn',1),('Yuba City','CA','95991','916','Sutter',0),('Yuba City','CA','95992','916','Sutter',0),('Yuba City','CA','95993','916','Sutter',0),('Redding','CA','96001','916','Shasta',0),('Redding','CA','96002','916','Shasta',0),('Redding','CA','96003','916','Shasta',0),('Adin','CA','96006','916','Modoc',1),('Anderson','CA','96007','916','Shasta',0),('Bella Vista','CA','96008','916','Shasta',1),('Bieber','CA','96009','916','Lassen',1),('Big Bar','CA','96010','916','Trinity',1),('Big Bend','CA','96011','916','Shasta',0),('Burney','CA','96013','916','Shasta',1),('Callahan','CA','96014','916','Siskiyou',1),('Canby','CA','96015','916','Modoc',1),('Cassel','CA','96016','916','Shasta',1),('Castella','CA','96017','916','Shasta',0),('Shasta Lake','CA','96019','916','Shasta',0),('Chester','CA','96020','916','Plumas',1),('Corning','CA','96021','916','Tehama',1),('Cottonwood','CA','96022','916','Shasta',0),('Dorris','CA','96023','916','Siskiyou',1),('Douglas City','CA','96024','916','Trinity',1),('Dunsmuir','CA','96025','916','Siskiyou',1),('Etna','CA','96027','916','Siskiyou',1),('Fall River Mills','CA','96028','916','Shasta',1),('Flournoy','CA','96029','916','Tehama',1),('Forks Of Salmon','CA','96031','916','Siskiyou',1),('Fort Jones','CA','96032','916','Siskiyou',1),('French Gulch','CA','96033','916','Shasta',0),('Gazelle','CA','96034','916','Siskiyou',1),('Gerber','CA','96035','916','Tehama',1),('Greenview','CA','96037','916','Siskiyou',1),('Grenada','CA','96038','916','Siskiyou',1),('Happy Camp','CA','96039','916','Siskiyou',1),('Hat Creek','CA','96040','916','Shasta',1),('Hayfork','CA','96041','916','Trinity',1),('Junction City','CA','96042','916','Trinity',0),('Hornbrook','CA','96044','916','Siskiyou',1),('Horse Creek','CA','96045','916','Siskiyou',0),('Hyampom','CA','96046','916','Trinity',1),('Igo','CA','96047','916','Shasta',0),('Junction City','CA','96048','916','Trinity',1),('Redding','CA','96049','916','Shasta',0),('Klamath River','CA','96050','916','Siskiyou',1),('Lakehead','CA','96051','916','Shasta',0),('Lewiston','CA','96052','916','Trinity',1),('Mc Arthur','CA','96053','916','Lassen',1),('Lookout','CA','96054','916','Modoc',1),('Los Molinos','CA','96055','916','Tehama',1),('Mc Arthur','CA','96056','916','Shasta',1),('Mc Cloud','CA','96057','916','Siskiyou',1),('Macdoel','CA','96058','916','Siskiyou',1),('Manton','CA','96059','916','Tehama',1),('Mineral','CA','96061','916','Tehama',1),('Millville','CA','96062','916','Shasta',1),('Mineral','CA','96063','916','Tehama',1),('Montague','CA','96064','916','Siskiyou',1),('Montgomery Creek','CA','96065','916','Shasta',1),('Mount Shasta','CA','96067','916','Siskiyou',1),('Nubieber','CA','96068','916','Lassen',1),('Oak Run','CA','96069','916','Shasta',1),('Lakehead','CA','96070','916','Shasta',0),('Old Station','CA','96071','916','Shasta',1),('Palo Cedro','CA','96073','916','Shasta',0),('Paskenta','CA','96074','916','Tehama',1),('Red Bluff','CA','96075','916','Tehama',1),('Platina','CA','96076','916','Shasta',0),('Proberta','CA','96078','916','Tehama',1),('Project City','CA','96079','916','Shasta',0),('Red Bluff','CA','96080','916','Tehama',1),('Round Mountain','CA','96084','916','Shasta',0),('Scott Bar','CA','96085','916','Siskiyou',1),('Seiad Valley','CA','96086','916','Siskiyou',1),('Shasta','CA','96087','916','Shasta',0),('Shingletown','CA','96088','916','Shasta',1),('Summit City','CA','96089','916','Shasta',0),('Tehama','CA','96090','916','Tehama',1),('Trinity Center','CA','96091','916','Trinity',1),('Vina','CA','96092','916','Tehama',1),('Weaverville','CA','96093','916','Trinity',1),('Weed','CA','96094','916','Siskiyou',1),('Whiskeytown','CA','96095','916','Shasta',0),('Whitmore','CA','96096','916','Shasta',1),('Yreka','CA','96097','916','Siskiyou',1),('Redding','CA','96099','916','Shasta',0),('Alturas','CA','96101','916','Modoc',1),('Blairsden','CA','96103','916','Plumas',1),('Cedarville','CA','96104','916','Modoc',1),('Chilcoot','CA','96105','916','Plumas',1),('Clio','CA','96106','916','Plumas',1),('Coleville','CA','96107','916','Mono',1),('Davis Creek','CA','96108','916','Modoc',1),('Doyle','CA','96109','916','Lassen',1),('Eagleville','CA','96110','916','Modoc',1),('Floriston','CA','96111','916','Nevada',1),('Fort Bidwell','CA','96112','916','Modoc',1),('Herlong','CA','96113','916','Lassen',1),('Janesville','CA','96114','916','Lassen',1),('Lake City','CA','96115','916','Modoc',1),('Likely','CA','96116','916','Modoc',1),('Litchfield','CA','96117','916','Lassen',1),('Loyalton','CA','96118','916','Sierra',1),('Madeline','CA','96119','916','Lassen',1),('Markleeville','CA','96120','916','Alpine',1),('Milford','CA','96121','916','Lassen',1),('Portola','CA','96122','916','Plumas',1),('Ravendale','CA','96123','916','Lassen',1),('Sattley','CA','96124','916','Sierra',1),('Sierra City','CA','96125','916','Sierra',1),('Sierraville','CA','96126','916','Sierra',1),('Standish','CA','96128','916','Lassen',1),('Beckwourth','CA','96129','916','Plumas',1),('Susanville','CA','96130','916','Lassen',1),('Termo','CA','96132','916','Lassen',1),('Topaz','CA','96133','916','Mono',1),('Tulelake','CA','96134','916','Siskiyou',1),('Vinton','CA','96135','916','Plumas',1),('Janesville','CA','96136','916','Lassen',1),('Westwood','CA','96137','916','Lassen',1),('Carnelian Bay','CA','96140','916','Placer',0),('Homewood','CA','96141','916','Placer',0),('Tahoma','CA','96142','916','Placer',0),('Kings Beach','CA','96143','916','Placer',0),('Tahoe City','CA','96145','916','Placer',0),('Olympic Valley','CA','96146','916','Placer',0),('Tahoe Vista','CA','96148','916','Placer',0),('South Lake Tahoe','CA','96150','916','El Dorado',0),('South Lake Tahoe','CA','96151','916','El Dorado',0),('South Lake Tahoe','CA','96152','916','El Dorado',0),('South Lake Tahoe','CA','96153','916','El Dorado',0),('South Lake Tahoe','CA','96154','916','El Dorado',0),('South Lake Tahoe','CA','96155','916','El Dorado',0),('South Lake Tahoe','CA','96156','916','El Dorado',0),('South Lake Tahoe','CA','96157','916','El Dorado',0),('South Lake Tahoe','CA','96158','916','El Dorado',0),('Truckee','CA','96160','916','Nevada',1),('Truckee','CA','96161','916','Nevada',1),('Truckee','CA','96162','916','Nevada',1);
/*!40000 ALTER TABLE `zip_codes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-14 19:15:58
