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
INSERT INTO `doc_storage` VALUES (323,'testpikaup.txt','xÚ+I-.)ÈÌN,-È)-MLI\\0:oÊ',NULL,16,'application/octet-stream','C',NULL,'2011-07-08',1,100502,0,NULL),(324,'google-queue.php','xÚTkoÚHýl$þÃ¡š|\\0o’mVJ¢4Ð„ª\rlênÛM‘5Œ/x`:ãzÆé’*ÿ½ó0Æ„(*BØÜ9ç>Î=ö«³4Ië5	RRÁ#©p¦ZûÝz\rŸz-P(–ÀÑk,!Fç¹JDFï±ÒÔF£ÔÜ`foD†£À•D?®ÂpŒðcšS¦Ú”[<í@%J¥\\\'AÒ%î0A0³·„ìŽÁ\\\\ˆ9ƒö÷rèèvÏ”i§÷%«Wéhqþ¹ÿ_÷\r?±¾|Ã¦/ûøsª¾|ÒÑáòø}¨îG‹ùñ¿NÈÑõÑôèír¸P×kõZÓô‡zÈ÷»ÅŸg^é½Z9ê5:kQ)AµšÑå ¼õmþd½x‡~ÖkÞ:íT«vüg1<&w×À²dÎõÜ3z¯ÁæÄb,ú0¸ùwpsë¯ÆÑùÇð*ú¨#þD“*)nÿ˜tŸF?í`öÁLG’˜f-¿Ó	|S0ƒï9Í œ\\0jùfís*ŒþaBåTòTŽpi×öaÅIIÚý<Þ	CV\\\"L,r±“¦¯Ké°Q¦ùÜwõšbºÐÓpø¶‹Ù~Ìiû”Î~Ö_m¸s¢èU+R²dIµÆ2ÊXÒÔ\Zô9(×Z{ð-U«–#ì»5ÏD˜$Ea‰šp§ý¯OÍÖ¼¦¾ÏV7 s¦L¿9c]Ï³G&¥ßú10Òë5\Z.­çD Fðn¾òF×†›™MÕsÍj\Z(˜E*kï“€ªòŒú“½^c§À ?7é+í5ò4ÆÏÔØN6¼Ö¾{6Ñz=™Îü8Å\\\\ÃR/b­ÊAw+Î(_:\\\'W’·OMX›¿}šd0ëV	vò<¨2£Ûwµ)7Ti\Z@ãLè×’~~åÅ ºÁŠŽu-TBù)RÇèlìçÜbýÔY§±¢óÑa¯4c_ù¬Ÿtâ¡µâŒ2 |&Œ+¦[‡ß¡=ýö;ð×–õÊóÒæIÔl˜ûÆÄÞŽ\rš± ù7-ß–?1-Ë+×½ifgã•Ýld¨ö`´/7BØýÖv*	v6svús÷+É',NULL,1835,'application/json','C',NULL,'2011-07-08',1,100502,0,NULL),(325,'testpikaup.txt','xÚ+I-.)ÈÌN,-È)-MLI\\0:oÊ',NULL,16,'application/octet-stream','C',NULL,'2011-07-08',2,100502,0,NULL),(326,'google-queue.php','xÚTkoÚHýl$þÃ¡š|\\0o’mVJ¢4Ð„ª\rlênÛM‘5Œ/x`:ãzÆé’*ÿ½ó0Æ„(*BØÜ9ç>Î=ö«³4Ië5	RRÁ#©p¦ZûÝz\rŸz-P(–ÀÑk,!Fç¹JDFï±ÒÔF£ÔÜ`foD†£À•D?®ÂpŒðcšS¦Ú”[<í@%J¥\\\'AÒ%î0A0³·„ìŽÁ\\\\ˆ9ƒö÷rèèvÏ”i§÷%«Wéhqþ¹ÿ_÷\r?±¾|Ã¦/ûøsª¾|ÒÑáòø}¨îG‹ùñ¿NÈÑõÑôèír¸P×kõZÓô‡zÈ÷»ÅŸg^é½Z9ê5:kQ)AµšÑå ¼õmþd½x‡~ÖkÞ:íT«vüg1<&w×À²dÎõÜ3z¯ÁæÄb,ú0¸ùwpsë¯ÆÑùÇð*ú¨#þD“*)nÿ˜tŸF?í`öÁLG’˜f-¿Ó	|S0ƒï9Í œ\\0jùfís*ŒþaBåTòTŽpi×öaÅIIÚý<Þ	CV\\\"L,r±“¦¯Ké°Q¦ùÜwõšbºÐÓpø¶‹Ù~Ìiû”Î~Ö_m¸s¢èU+R²dIµÆ2ÊXÒÔ\Zô9(×Z{ð-U«–#ì»5ÏD˜$Ea‰šp§ý¯OÍÖ¼¦¾ÏV7 s¦L¿9c]Ï³G&¥ßú10Òë5\Z.­çD Fðn¾òF×†›™MÕsÍj\Z(˜E*kï“€ªòŒú“½^c§À ?7é+í5ò4ÆÏÔØN6¼Ö¾{6Ñz=™Îü8Å\\\\ÃR/b­ÊAw+Î(_:\\\'W’·OMX›¿}šd0ëV	vò<¨2£Ûwµ)7Ti\Z@ãLè×’~~åÅ ºÁŠŽu-TBù)RÇèlìçÜbýÔY§±¢óÑa¯4c_ù¬Ÿtâ¡µâŒ2 |&Œ+¦[‡ß¡=ýö;ð×–õÊóÒæIÔl˜ûÆÄÞŽ\rš± ù7-ß–?1-Ë+×½ifgã•Ýld¨ö`´/7BØýÖv*	v6svús÷+É',NULL,1835,'application/json','C',NULL,'2011-07-08',2,100502,0,NULL),(328,'php_errors.log','xÚ-Ž±\nÂ@{!ÿ°¥sAkÁÂ\\\"VžÈ%Ù˜%ëÝ²Iüz¯°{Å0óîæ”×ØææPP[­)Ðœ¨ýâP5ª¨<3,ÖÐã@{ÖÐ-ˆâ‹žŠÂ¾Ãí(@eÝmFÝ•ºÑk¿¿DÔ/²ûDfIœš¼ãû¿¼ˆcjð^F¤åTI—L™e›Û68‡',NULL,167,'application/octet-stream','C',NULL,'2011-07-08',1,86,0,NULL),(329,'php1.png','xÚ\\06@É¿‰PNG\r\n\Z\n\\0\\0\\0\rIHDR\\0\\0™\\0\\0ë\\0\\0\\0:\\\'Ï\\0\\0\\0sRGB\\0®Îé\\0\\0\\0gAMA\\0\\0±üa\\0\\0\\0	pHYs\\0\\0Ã\\0\\0ÃÇo¨d\\0\\0ÿ¥IDATx^ì½	œÅµ?Îï÷>ïŸ¼¼¼<“_^ÞË{YMLŒnÑDMÌò—EÅÁî¢‚¨¨¨(Š¬‚ŠÊ¾ã®,²3303Ì¾ïû>Ì;þ¿U§ººº»ºoß;—ËÀT{úvWUWª:ß:§NUõyñåéO<5æÌ3ÏêÛ÷¬·ßž»ÿÀÁƒÓƒ‡4tàÐ<p \nÂw}iÿÁýn:°\\\\Èþ¨’[^«Œ¹!èÙ\\\"yåæ±Ëf‘¦øºRïÛ@CûìShï¾œöÛ´wÿ^êÚ»ŸÓ¾hˆ¢XiŠ±Šl°L¹+µ¬©Mó0A JQÈÑl¨î¬Æ£Þø6¿Fá¹Ò`tŸÓæ!è¡Úø£¸wsÃÅœØž<@ +¯œBÞ:˜°äá¡Ã‡ï<øP¼¯éÓ§Ç7É×Œ&cÎáúýG}|çŸzæÅW&ÏœùÖây‹>X¶ê³÷Voüøó}F>5ö{ßûþÜ¹óººöµ´vÔ7¶9¨¡­¾¡TWjqS]K-£fI5µMDÕ*Õ4U×4‚ªª%5TU7TJªj¨T_YeQe}Ee¨¼B¥Ú²\n‹ÊkË*-¯ÑPYMIYu	û[SjQYy\r#¤S^Ëgâ­F®\Z‘s^Š—eg>Ø„Ÿzb\\\\j­%ªqþÔ2ªaÔª®!Œªjš*«A Š*Pƒ Ê†rPE=¨¬¼TZV[Â¨¦¸TRuqIuQ1¨ª°¸ª ¨’Q!QE~¨</¿<7¿LRN^YN^iNnivNiVNIVN1Qf6¨ˆQVQ†M…Y6íÎ,Yo)\n‹›[’[Š”só+ò\nðid¦º¨¤¦¸¤¶¸´®¤¬®´E¨/CAXqP(PcÙñA\reÇ•7€á¥å\re \nÜÓOA%eõ¨‘’Ò:TMqimQ	¨¦°¸¦ ¨Ú\\\"4¤ªüBP%j“Q~j67¿<\\\'¨,;—¨”“÷^°orrÑð@24K¥Ì(¯ÀKV(œ+ž7=!çJAX‰P´\\0âÅ@àçU1–º	|®/-#þG VSV}ùµ7Q¡¼N5D]LÿVt=ê€ˆËEŠó¡ÒC­~Ê$#DUT’ nÄDQ5D¨NPM]KM}K­M­µ\\\\¢b´wÛ€]{[ÛöØÔº§ÕŸZZ÷pjÔÒÞÂ©¹¥hOG×äÉS÷íÛ/ŸD{ÓÒÚf§ßÚÞÑÙ5ýžA­yÙ•¬\\0Õ~¸¢n5£ÆÕ+š-oã´gõòNFK÷®^ºoõÒýþäx»fÙ¾5Ëö®YÖÉhEÇš{Ö¬h[³¢uÍŠ&F+Ö¬¬ãT»zeÕ‡+[wïºùÏ¿/))^¾ëÁ§Ÿ?iê¬7ç,]°øÃåï~þÁG›û@#ç¹{öt54¶ÜXÎž´2lãdáºRIÑkêš¹àœýLr¨×40Rá÷¬•ØX^QU_QUÇp.¨¶¼è«À¹‚ëZ,ç(,WàœC~Yÿ‹¡@ÒäpŽÏq,¯Â°XÎ\nÒÌJÇÊË\ZÃòÆ¶ºÆVN>X.¸DCuÑŽY›füa\r½ŠQ#‚s†èN8¯D/bTVQWZQ+¨œa9#çÕE¥Õ…% *¢‚bÀy(¿°\\\"Qyà¼ <Ä	â¼Òì< oI– çYÙÅŒŠ8Ú”U¸ÛAìY€¢Ìœ\\\"ÄbcÈtHjHg 0’(Bf·šb–ÛÚDX)˜øàÊ*‰\Z{<É¬W7$î‰É€sAŒù\\0õF{ŠÕ1D¯a­¨¸º€ÇrF•y€sF¬-¡fœ3B\\\"B¥³z÷¼\rør4?‘K‡µI¤iÃrÑhåÌ€}ƒ\\\\ñ¼é‰a¹(•]E‹@(>c‚?qF…\\\"ÆX…ØÊæ¿¬ý¡E±[LÇæ	#ÑZébÔ,ä†<a\\\"E!zâóD\\\'çUŒ $¹y%•1®¡1©ÎUK\\\"qÇ¤(ôÎ9‚(Xð&8rå­…åêÑÛZZÚ:bÂrDt“…èÀòW‡lÍÉ¬Zµ˜¨fÕâºwAß]ØôîÂ–w¶½Ç¨ã½…œö†§÷í}Q§Eï/j{Qëû‹ZÞ[ÔôÞ¢†÷Õ½·¨öÝ%5ï.©âÔ´+ù†ÿý=¬¿Àk öà»†ŽyaòÔéo¿õÎò…K×¬|]˜Öa\\\\mljsPc[#\\\'ð­’8®·Ô7¸‰C{3¨–Q“ º¦Z\\\"KYçú.Áyƒ‹Ú«ªë	P¯«¬$p½ª¶Dw ¹¢F% µÐ¿I/¯¶ˆîkÊAˆÂÓa€*þiž1dXÎŒ\r(–4œ87ˆ369Ç@ÖÐ‡#:™4Xk&4~® ÛÖ\rÄø†÷6 aca–`Ã1‚)¯¥!‹£”V—V—0**©,*®,dTQÈ½ ¨¼ °<Ÿ!z§ÒÜ|¢’Ü<F9L¥†b-(ØœShSva¦ž\nðœËFø\\\"½ê>Æ\n7À$€<!K¥lÅ‡M0Õq¢‘>\rÜü@¦ˆžO–±DZMŽ·K¯âÌ¢œ{1{7öp3³ô03*QXz˜½‡™™‡‘4ó°\Z·ˆÚ•mòÞó(—¸Ajh™œxâ…h9ŒDÓ•7j6¨ySö4„œ³ü+¤±Tƒ–ã#cFÂîEÖ/\rq^…\\\"«µó/Ð©àºô]ïOhÀŒ¬–æÀTEKv³¡—w1+ºÉÌ\\0	RŸUÒõœÿdJW¨Y¦SÛžÊ$6ÓÊH|1%MÚe¹ä·íµü^h€>–0°z¹ÄrUAwÝÌ¼oom¤êÐË;\\\'Nœ,õrBè`Õ\\\\äˆ¥`ùÔ;niÉÚ]¶d.¨rÉÜª%sk–Í­]6·nÙÜÆes›–¿Ó²ü6N+Þédôö^êR_­|»så;+çv¬œ»gÅÜ¶s[WÌmâÔ¸|^ÝòyµËçÕ,Wµt^åÒyeKç5%mëÿ‡ß°Y°½ûÚ—]q5lê/O|ýµ7¼3ÿÝ%+>éóö;s[Û:ššÛˆ\ZUr\\0|k£€±–†FFÔ‰´7×74×sDçÔD$à\\\\âzê›ÉHu¡¯×Xˆ. ½®ªÚõÊªZF€]`¶HÁuêŒª•W—W€È–³tXšuU šzŽåÎYÎYA–Ûcš¦Ö†¦6¹¡á=ÍMˆ\nnÉàƒS\ZîÐˆ•kÿœb|ÃF3b@#àÜ6K°1ÇE1F)ö†ªÀ9£ÊbÀ¹@t‚óò‚¢2P~!Q)à</ŸƒsŽè9ŒŠsòŠåe»]¢;Ãõ‚¬œ‚,ü%,s,G\nH\nÉâ+ø(Ë«JÊªJËm8Rƒ‰9´·mtÒX×#o”ù —1éxøiMÜ¨BœFW ŒÙ\\0‘L>ÑKˆD„ÂØÃPV ¯²¢5RãEçOzho‡ÅÑ>Aüf#Q7‰lPfXÙ“ùtÜð¾€RØ$¬YdÓò\\\'Î_RZ².èFÎZXãˆP h5E\\\'Xu\\\'EaTÜu„$££‹¼=à(¶¡\n† ’Q$·9~3T[±ÙHº—ÿÐ…l’ø€+Ï€Ûvvv5·´êÈ…ÁJ˜æÖææÖ&A-MÍ-MM‚Ú÷t¼òÊD¤ÙÔÔjThêô·®í?$€¦MK¦£&8uÀõMé»ŠæÍ,™7³4fåü™UógÖ,˜YÇ©‰Së‚™mÞØ³àŽotršñØHù9Üw.Ô<ÁÃŽ…o´/œÙ¾ðÍÖ…o6/|³iá›õœj¾Y½àÍÊo–ƒæ¿Y:ÿÍú­›®»äB8KµµwB5ÿéÏ~qómƒïy`Ä£O<?jô+cÇOï\\\'2ÕLáÅ4·5+d±¯•ŠÚ(©±¥‘£{Cc3£IM\r\rMõ	t¯k¬sPCmBµõ5D5ª®©cT-¨ªºÖC5UÕ5•U\Zª¨¬Q¨º¢’Q%£\ZF|dPª®Eú55uøzm-²ÔXWßX_ü³B¡€M(¸E¢%‰	±+Â3âÌaüálaÃFb #y\\\"ú@ßªAl4#Ç14v±ŠÃF$ÕååUeeŒJË*KJ‰*8•—••2*-(´)¿ XR^~q^~QnQ¡J9¹ ìFü¾Ä°Àˆž_P‚Äñ•¢b|‘e\\0ù)EÆØÈ	æL®Æ˜Œ•ˆFoÖ`ÎR\\\"ôÈ™á|®*ä¶~I£¯Œ\\\\Éè%ÆÄ4ºåæ+Tœ Þ¢P¡’P¿œ¨E•ñJgõ®ý)Ÿ«7V\n”k-aÈjÛ¢‘Û9”YUn#+ŽËbç÷Ó£8Ti ŒáF4{¥ñ{\r“až°tH,p•CcÝŸPƒ‰dïä½OõGå!S™$©!•’Xf]€„$©j5üfÂG¡ûqÊ¤(´çÛo¸gOGCcQc$!Dx€KCC#¨Þ¢¶öö—_ž\\0,¯¯o¨s`õËÀ«žÉ|‹\Z\ZÛÛÛ§ÜxuãÎ³¦ÎšZÄ©ì-F•oM­zkjíì©u³§6ÌžÚ4{JËì)m³§´ÏžL¤~÷Ó‡p=±BNi=µ™¥0µ~ö4PíìiÕ³§UÎžV>{ZÙ[ÓŠ9½5­nãº~¼†}¡š:ôùçŸõÕWß~ûí¥K—öOâ}ÐÞÚ&g#Ü³Nc…22²†EnŒg5GÕ	b¸.ÉxQ\r@MAu\ruŒêkAS	€HÏq]%ÃŒ,€g¸®’ãñP	_‹ GSà5ÊÚ\r€C<_D‘ù(’\rUûŒÇ’Ã’öèƒÇf×èGŒx+,‡v>°åã«ÔvaY†É,Á&\ZÔÉÌPÅ©²¼¼²¬ŒQi!:¥uŽëÅ¥œJ\n‹€¾6©ÐÎï‹8æç3Rq=/¿“À~.(!A$[FŸ#,/+G–0rb&ÈH^\\\".XYIíª—m ÷ÝX#9ªú£J®ˆ*ÖëhWj£bí\n•(‰y£²FŠ¨qYé¼u©?Õ†gß[cMÑ>ù˜/2©Ù v@Îá{Mâ‹^p£\\\"™ß½ŠjÑÞKK¤ÕþE_ãŽD\\\'’Šh6jqI˜xÉRœ¬^ÉÃ¨©·rÝF€7ÿii_$$y&Mâ7˜\\\\fBî©b*µ›û÷ï8p`kkuµƒ„0g\\\"½ÆELª#°íàUÕD•œšš›_xáE zeeU…“Â`9b¹	¾rÍ_ê¶oÊœ<.{ò¸œÉãr\\\'+˜:®pêØâ©cK§Ž­˜:¶rêØšick§i˜6¦‘ÑóÍœ¦=ô°¼åXÏñ¶yÚPÓ´±ÓÆÖqªž6¶jÚØŠicË¦-™6®pÚ¸‚)/äMy!wÊ9S^¨ú|ÍßÙ÷À0?\\0µÏ:ë¬{î¹gÔ¨Q“&Mš5kÖÂ…û>|¸½}Jmm{8µ»|WÉB²Ö–µ47R¬Ìè!É5£áaÙÃ\\\"‘$ÕÝ]dÁ|]m-#Ã6ÕÖÔ8ˆž“l7â§’EçIáCô]–žOÊ6JÄŠ	 à|Â†qC^.æÐOçd3\rYÄøÃ™ÃmAÖ€Ô\ZëhXÃF6lp#‡5¬˜¬tT–*Þ ¹™¨ª¢‚ˆá:§Š²²rPi)¨¬¤DRiq±J%EE‚\n‹‹\n\n\\\"ÂðÅˆX\\\\b©!}|¨¬¬ŸF6%äœçìe¼åìeä5nï\\\"ŽÊy\\05·Çï½CóPÚj‡z³våjZÕj»BQusbmŒ76ñÊïmÒjœ²•²Ö@JgíœKpÊ¡ž”.Ïz:ï2.)¡ÿ©ªÚ{«WÊîöÆÉyÙÜ!¸iy±º’¡Ìª*—Ö½%Ö„pc,ÄuIA®Òq)T¯ˆbÒ¾„µ•²JBj›ö\\\\oa`á‚W6Y Y8Á*£¹ Ö<TA\Zäõ/¼\\0™\\\\Î/’{DV½fv‚X<§XÖ%œð·?ÖnÝ°û¥gA™/=›ýÒ³¹žÍŸ0\nT<aTé+£Ê_U9qTõÄQuGÕsjdôhêƒC½cämšô¨Sý¤gj8U€&>S6ñ™’Wž)xå™üWžÉ{ù¹œ—ŸËzù¹Œ—Ÿ«øäƒ¿s:°¼££¨}ÖYg<ø‰\\\'žxùå—_ýõ¹sç2,‡¡ƒ“æR0öÝmÃR[@;Úm\\\\oV.×U0ãÍB\\\\à-˜WÑ÷.t¯s]µºKb<^Ò=\r$ñ†ËÚ.r†å<×-Å–[%wuœCXtÎ€Kr ã°5YL`ååE–c×`EŒQ¬*\r0E»ç¢“‘Ú¸¹äî\n*)$KHG \nÌã\nB‚HßB—C8ˆÏ\ncE›Äåç¹Ú†ùWÈÖ%E?¡©s‰>eE“#`gëbãE\\\"ÙÀÔŸ\\\\Àz%¯ýÄ«Qƒ	 §ÇÚ¼kÔîúéíÝ^­Àõ„:\ZµU-¹äRøŸ£!»CÄtHpyÈQã–”fjE›‚ècÒÏ+~ùs;Yž[Þs-ÍT8Uµ“¸àR%À¤Aƒ!:ÇN! \\\\7„ÐNr®õ‹$ò7nÜ8ˆÙRë’r	J7ò-nüžS$øòå—ÔlZ›:f$(}ìÈÌ±#³ÇÌ÷xî¾ðxñ‹—¾øxùøÇ+Ç?^3þñ:N\rŒž šzßòôõ)÷= ßÖT;þ‰*Ne Ÿ(yñ‰ÂžÈ{á‰œžÈûdæØ\\\'w}2mì“e«W]Ñ÷T,è‡‹Pûì³Ï¾ûî»I/Ÿ={öâÅ‹–çåµ§£ÃAßÛ%1@L6qä‚š*H G/…PÑ6©Ð$“ÔÔÔHä¼¨‰©\\0W€ÂKµ@>/qŒçà\\\"Þ2€ä$pÜ‚r®–£±	(ç:¹ÄqVv›-àg,.ÙÌ!.99ƒ 8C|°˜€<iK*‹€â@ªá‚pzJ‚ldP· +H]Ë\\0¾D%¥¥*££\\\"Ä%wA9±šîIJ®Ê\Zw´\nµ…˜ûxsÀîe¼Éf†v®63êJjßa\rŒ·140ÙÆDëâmŒFn®Æf?¤WNRª¼§ôýˆ5qÊ‰Eú>®ôh¯XPåFÀ½ìz®!¤˜ŠæÆÁUèyîƒ;EÄt(“j0ßlóþh“%p„.C½Õ’Æ¶a•\\\\¢8ä]Rò)\\\'¦*I?$,‡ÌHÒ]6ØU\r(ÞŽD;¶ïØ‘—ŸÿØã£%n³®­[·!5Rîp#<ß¶m;(//ÔOþ_Þ¢·ß»â7^ñ›ÕWþöã+ûÙ•¿]{åÅ_\\\\uñæ«.Þ~Õ…É¿0åêÓ®¾0ëê³¯¾0×¢¼«/½t]?ùiú:žä]s!#\\0á1ãêÓ¯¾pçÕî¸úÂm¿póß/þâï¿Y÷·ß|ú·ß~ü·ß®ùÛoñéôi/ÿæÛ_ÇVnp ,Ç$ÅðáÃÇŽ;eÊ˜Ù9–wvÚ¤»×;:èå0¦µûã–ÐJµÐ®*ìJ›v5>w×òÃue\\\\ÍôŒÐO!…N®¢š¬l¦Ô2y1‰t¹Ù¢{¢÷Xíž\rwœR[vB9¬qŸd…¸œ…$\\\"2”)ëœÓ\rG_u-´»?%ÒC1g@na¹N\\\'·°Ü	ä$°H:ª¬¶øì\ZUS{£Æ¦8*cb46Ñ]³É^ã%WKöþt·¶ƒË‡Z¨öiís?Œˆ¦¢\Z¼JŒô6ðxÏÌ~>$Pß²	¨-A>S^’fÃìˆüŽ›`š›jQW“*œCf–ìnw^a¦·ƒânµ®ÜÜ¼#FÀ\Z´…_›é~!A2Å{‡ò¹\\\\Üæææ>õÃoäÎkåŸ/xïÏ¼é«/½àãK/øôÒó×ýõü/þúË­——tùyÉWœ—zÅyWœ—uÅy9\n½Ôïjù]1À3€ç2X6˜ÎS@:Û.?oËeçm¼ìüõ—]ðÙ_.øè/¿Zý—_}ð—_½é¯R\\\'½pñ·þXÞÕ%°|À€?üðèÑ£\\\'OÆ&p3–w*—ÊÝ¿¼Vxç€KÑÚ•jTêÚq+s²qPñ¶!90Tuu¦îrï/¯^}BFlUT5s\ZtZh.q\\\\;5áxèPÙ¦wnÌˆ®°CoTVPÙ©ÔjÑdä¬éèL‹².Ø.Õi)Ù°¸Ë¾ W«—jŒRïx{.‚r_»ÍÉÞ!ƒs@ï×ZÌó8r@ízt¯v=ÙÌÔÆæjf®F\r\rÍÌ{ÉF¨½‘mUÞhgÇÔ‡®^©Ó{.ƒ_ðO­,’­×©†„ýåe~È\\\'®+dn´€í÷P¦éRÂu-Ó–lZDW°œiÀDÛ·ïà˜¾€œØ¶m¢lÝ\nÚº´eKNnî£#F@—Ø´yó¦Mœ6o&DGxŒ.ÐcùNÊ[0ûÝK/|ÿÒ?øË¯×üõ×Ÿ\\\\öëO/ûÕºËµñò¶\\\\q~Ò•ç§\\\\y~ÚßÎÏøÛùY;?ço¿ÌaÏéÚkÔºî_ºöjò—ˆ²ûoç§ÿíü]WžŸ|åùÛ®8Ëåç#åõ—ÿú³Ë~ýñe®¹ìÂÿŠO_”6Xþ5Ëo»í¶‡zè¹çž›8qâo¼Á°8//×qíôVW\\\\WÑKm²]ºªÐ¯/	a Þ¯“ûÉÈå„9¾ !‡2Ì5svQÁ½,\n€w‹\\\\ÈîÅu×àFq&°G2²˜^ië’ž.9Kè®âºÚ¹ÿˆ}ùA»|.\\\\3[®Ãr—eÎ3Î1Ž\n\\\\ÍÌõSL«ÃG9‚ô;ÊÆ¦\\\"é¡°]O¼øíöqþvumï°ÞõDØÁ²…Þú!JHôÕ‹Ë˜ÌOju¯ÖäÊ˜WêC))6ªMÝ[(W7#&@É÷\rn³[·í\\0y±<Ø%ÐÈgq·nß¼eûæÍ[7mÚš•3üQ`yå7ƒ6nÚ‚‡xBøüÀ‹cù6åäæ=	û’¹ï_uÉûW_²úêKÖ\\\\}É§×\\\\²¶ß%ú]²±ß%[û]’Ôï’”~—¤^ÿ»Œë/ÉêINÿß©_dºxÿë\\\\O²¯ÿ\r(ëúßî¾þ·i×]²ë:–Ôö~—lá)¯»öwk¯ýÝgý~÷Ñ5¿[sÍï>¸æw»g¼|ñü›ËŸ}öÙW^yîon,\\\'P\nÑUè\nçÚ¦ì×¶ºƒå^Ö{Z\\\\\\\'±%á\\\\vi–ká<XOƒåªžä‡åªæä*‰EUVªÚ¹\nç²·ø©éË#¢¸4±œëßÜ†v[/—Œ=*Øeµ8 ÌfÚj“Ë]pîpRá¶«0¦ ¯ŒèQÁy´X®Í%®‡Áòžç¤Wü0.«˜¹]eW­§~ÃAx_Œoc[ªñ5½-X“vûÀXÈºyk2hËÖ¤­Ûˆ€ÐIÃG<<_þèc£·nOÙº-yË¶äM›wlÜ´}ÃÆm™Ù¹Ã†ÀrÜu6¯ß°eÃÆ­_lÚ†W›6onÌ+Á	Ž;y bÉò›Ü¼‚‘?ûÏü•Wßtùš›/ÿøæË?½ùòµ7_¾îæË6Þ|Ù–ÛþºuÀ¥I.Ý9àÒÝƒþ’1è/Yƒþ’cÑK·Ü(¿ˆ{<¯<ó\rÙ·ÿ9ëö?gÞþ§ôÛÿÚyÛŸ“oûóöÛþ¼åÖ?o¾õ¯_Ü|¾òùÍW|vËŸÜrÅG·\\\\‘ñæ´ßþç7¥;æË¡—c‰ù3Ï<,íµ×âŒålòØç’5Z“»ŸÕÝ«šû\rÏµ\nºßÀ_\rì‚sÙF¥j®Âydk;M®;/•-4~þ€”gîån_^K»Ëê\ZùZK;ž¢!Q\\\\UÍI‘—ª¹Ã—K^ä\nË­Píùv*T,÷Â€Ë6&û—Ëec£äšÙQ!Ü¥ G‹å”²¶Ÿz{tDÕÜç!±ü()èqÑÎÃ$çê<—ÑeÙ¥‚¡Bu°qÂc!ÀŠ\\\\Úfƒí8²wß¾!wÝ…§¶lÛ¹y+(ºm» íÛSv€vìÜ‘´kGRZr\n(=9e7ýMJNß‘”¾=)mÛöÔ-ÛvmÜ’üÅ¦¤u_lß™7ô‘ØVèóu[Ö®ßŠ\\\'_lÚ±iKòfN[Øˆ!D?7oNÚ¼Y¾Ú¹u£mÛw©„]°FöýÂ—2¤ÿ§ƒû>¤ÿº!ý7ÞÝã=ý·ÞÓû½×\\\'Ý{ýÎ{¯O{àúÝ\\\\—ý@¿ìûå>Ø¯`èµ\Zz°_þƒýòØßkò¸&ï«óî¿:÷þ¿grJ»ï\ZPÊ½×&Ý}íŽ{®ÛrÏu›ïîÿÅ=ý¿¸»ÿÚ!øî\rkï»%ká[¿ÿîw”5igÝzë­„å&Lˆ–«fö0XNÒJk`÷³´‡ŸDwMõÅ š»fÐÎ×^7¸(&Î]“ªÔ&nD4|¹†/Ó™.ÕÜ5w.µó€Iô¨¬ë*äkgÍåÒ4iðp‰	ÌUH3‰{û Ÿ¥Ý5­à¨áA?zXN4ZDw\r…ã‚å*FexÃaÂ„˜ºŽ,[¨§Ø]¶z—¸ö_•iÈÙ¦aØX¦¦¾;±?2lxjzfRJæÖíiÛv¤mß‘\näNJÚ•œ¼+9%5%%mçÎ´]»2v¥f¦¦e¥¥å¤¥ç¤¦	Ú¹+;egVRJÆöé›·¥}±yçºÉé™ùC‡=ŽÍ­?_¿mÝhêÉ›¶@wßµ%ÎÃv³=ƒ\\0<áF¼JÆc…¢þ· °lÔY?-ùäƒõÃo6ø‹áŒ¶<zçöƒ“FNyüÎ´‘wîygÖÈ;²Ÿº#ïé;òA£î(²¨ø™p²Ÿ>=ˆÓÀ‚§n/xòöü\\\'äŒóÄ€ŒÇ¥?60õ±A»¿#iÄÛ‡ß‰mytðÆG‡€¶Œzd÷Ê¥WÿüÇl¯˜övÚ+FÅò3fèõr¯™=ÌÜyTççu\\\\mËÛñœV\\\\ƒô0NpZ\rÀµŠŒN²óÄà\\\'Ç:~3å.P×zh\rì¤—û©æ~X.}â¤™]jå!ýà´Š{x\\\'8ÕÖgà<ÁƒŒ€Ù.ïäN€v š\\\'ÒÒîZ†¢ÕÔ½B#$¢Gœ?Ž\nÈCp,Wñ2 ¼6{Á[ÅxKIHŠ–Ëhï\rÌÔñlÕŽSXêÊ«ëZÛ÷¼9kö„W&æU¤¤e\\\'íÌH‚Î½3=eWúÎÔÝ©iiiééY»3²32ó2²øyNt.3rÌ*LÏ(Ø•žŸ’–“´3kKRÆÆmië6¥dd<4ì	éôù†ë6&}±%eËöÔ,ÙŒ”] L\\\"Œ\\0’Rvogš}ú@8`{gVÊ®¬©9»0VHÏ”–ô¿([÷ñæQl~æ‘­Ï<´ã¹‡“Ÿ{xçó§=ÿpú˜‡³Ç=’;îáü.ÿpñKÊ^z°Ü¢Š—‡Ê{~ó@ÙxÐý¥/ÞWúÂ½%ãî-wOþØ»óÇÞ›;æÞì1÷g=wÿîÑì=4uôÐ]Ï=”òìCÛŸ{xÇ˜)žÍ[òÎª™3_¼í&ÌM€·Àò¾}û†ÅòhgÍ]Ú¹Ÿ‚îgi÷ë	²µ…tnwyëÈþ¬Õ\\\'¼àç5èIA)K8—Ý†Ììª7œŸ±=À¡ÝÕ	½=:ŒÖ_;_ìÓ®Îšûù¾ÅËý&Î¥=Á°­;jµó0–öˆ~pêØñèiç~Î­Áöö˜áühÌ‡DëˆÁT‰0D¶üy¡ÝeZ÷þÔŽÔ‘ŠeRe\Zym}CUmmY%NC®œc\\\'é[n0fÜ;SÓ«kqÞ\ZÛ±•¶ï’nÈlÇ¶\rÛüÕ>\\0¬	ÇO³“9q6UU-NbÅ‘Ê8¸G-WŒxü)l§]TR^„m¤Ë±íÖ=²#6øN´l3Z~šÖ%‰à{KÓÆÒl3Z½üÛ³šósJ×¬,[³²|ÍŠÊW‚ª?^YóñÊÚOWÕ}¶ªií\nPËÚmëV‚Úý©\raÖ.oý|yëgËZ>]ÒüÉâ¦O5}¼¨ñãE\r/ªc´¸öã%U-¯Z³¼ê£­¬ÀçÖ®N_½jé«S®:óTÈjôYÀ\\0<àÎ8ãŒ8`9°\nµ…Ž-–&YW¡ó*ð\\\\.GÂ¼Vø©WŽóÊö\\\\Yž+Óyex®ÝÎïé\ZiPÂø åGæ…Rêbýô²O¼n•Z~à[j¡ÕS–ÔòÉ<«eJ·®4åJµ®]Îk§u¥8¯ä(/Š´‘=”ê;Z‹±´[WGÒÞ)¯©LÕÎƒ}Ú¥AÈë¥qô°\\\\kf—¶4?DïQX®:‹Dìà\\0.œƒè±ÂhóªÖN;Ðaó×êZ×V]TV™WT–#˜·Õ53g¿ýÀC_ß¿ÿ\r7ö¿ñÆþ7ÝÔÿæ›ûßró\r·Þzã€[o\ZpÛ-·¸uàí„«ˆý?àöÛo½í¶[n½õ&½ñ¦ë®ïÍµ×]uM¿¿]}ÍÕ×\\\\{õ5ý@×ô»öÚë®ëßiÞx¿nf„?7áÉ\røXÿ8áOnº‘½ºåæ›o¹å–[A¸atÓÍwüü®ù© ~§üO¿Ÿ}ïºŸ}ÿºŸÿàúSÐÿ?ìúo8ýäÏ8ùÆ3zSßŸÞÒ÷”[ÎúÙ-gýüÖ³O½íìSñWÐ9§ÞzÖÏñüfN·œÍîò¦¾?»±ïÏnè{Jÿ3O¹þŒŸ^wúO®=íÇ×ž~r¿_üøšSô÷ŸÿðªŸ}4ä¼S§ßq#ôHáªR[Kûé§ŸÞ],‡r‰Î\\0‡ÌÿüóÏßÿýå>×2ç…ƒ\\\\¼×’H¶¦S¯Eö—w]B\\\\ó/™\\0¥,¿\\\\É¼S¹Ôâª,qñAýébˆ‹ËNYò+¢,Ö<ëÂž½òzÇyá¤í5Çya³Àð¢\\\"«V­Z·nFòa\\\\	8W7‚“¦uò‚ÄP½Þ“\r­qHÂyÈ‰óc¹vâüèéåÒ: Fklï&„Gœ¬TÓ©—«¾,Á#<ÕV¡uäsälGX\\\\Í»¬¢ª ¤<» dwnQzN~^q¬îlçv8µµÀÏ½½½ªbGGkgG[WgûÞ®Ž}{»öïÛ»ÿ>yuíÝ‹½Ï°\Z¸­}ÖÆÁŸŸ@úìD.{Ë¿:!àÀlocD{zaëmš–àUh¥„7³wM–×vÅŸ8Ö$óe_lý×^vQ6aw\\\\x´woWgÙ¯!ÜðiõQßÔX×Ôˆ¿ ¶WÛþ°7(rŒ=X±bíEò˜Ç =C°\\\"’þÅ/~–{×§!#¨0¨Y@qhhœH4ø,9ó¶7s\\0-Æ†Õ«W¯\\\\¹j:öj€yŸoÄ©šÑì™UMé= ÚCJªE¿‰óˆNpÞUæ.÷hÝÚ£Zq~Tµs?c{´(.Ã\\\'Î#NeÊê–ƒi0—v¯\\\'r€¦Nû	bt ­¬®Å‚±¼¢ÒÌ¼Â´œü]Yy;3s0Ë½swfZæîÝÙ»³sÓóóÓ‹3ÊJ²*Ërj*êjJë«€yðdØf—8\\\'­¤¬,¯°0#;{WzÚö”äMÛ¶®Ý¸á³õë>ß°ví†µë6|¾iËú¤ä-»w§äçî.*Ì**È.*È)*È-ÈËÉÉÊÜ–¶ÊhÊÎÔ]iéé0Á2³+ÌŸ0‚æççåçåÁ\n(lŠÌH»fjZê®TPZ*Â§ÃhKá±ÉkÎ˜*.Á>YØo;)°ƒ\\\'0raˆl×*F*XàÜ¢ŠªÒâÒ‚¼‚ÌÌì]©˜¯OþbûŽõ;’¾Ø±cSÒŽ-ÉÉÛwîÂ„ÃîôÌœL*Ã\\\'K*`»¨À©˜ü 8æÞ„Ý½JËöïÛêÏO\ZËÕ‰säÆR\\09ö¿=b]½«LÙƒ9 É†\r\\0çÐÎÑ~TÕ\\\\ukw©æ=ázO6\\\\~—Ú‰srÚp-	Xqß%jGÎC:Á,Q‹Ëž¥=d–\\\\`¬&·TYÖË+—c“ýX{=&¤ë€u%eùE%™¹éY¹©Y9;3³S2²vîÎHËÌÈÈN\\\',/*Ì(-Îª(Ë©®È¯«.i¨¯„u™9Ôn¶pyeeAQQVNvêî´¤I[¶oÙ¸yðûóuŸ®Ûðéú\rŸ~±ñÓ-[Ö¥¤lÎØ”Ÿ—V\\\\˜É°<?»0?\\\'?\\\'++##=5ugJJrR2à|:!:ÍªÒ´% <=\rø½Ÿ’ÌB²=ßwìHÞ¹Fh%<Vzz@9;Êäàiœæ‹“V¡¨`å-ÛaŒ¶¦f»ÜbºGÊáÀêÒÊâ‚’Ü¬üÝiY)ÉiX%·~óöu[wlØºcãö[’’w°YÉô0ÇÂòòïËN\\\"¦£Œ*°{Î³‚Žô³Ÿýì§ô×¯ïœ1ã9_?vu38º‡Ru\nå€F.e4nžøq€Ú	í-øÞ{ï¡å`ä‹‰s¯j®ú\Zí<Á9©áçƒóÄy¯Âr9\r‰ Þ`ÝWÐcû´ŠåêÎÏ	×…åÔyÉ\\\\á\ZëRNîP+KËËó‹‹³òòwgç¤ee§ffíÊÈ„OM:ÜÕsvçäîÆ›¢ÂÌ’âìò²ÜªŠ‚ÚêÒ†º*fˆnÂþ]ðb«a‚ÒÒ¼üÜŒÌÝ)»vlKÚ¼eë†›?ßðÅÇ6¬Ù¸ñã-›?ÙºåÓ¤íëÒR7gg&¤—e–fC/–çBÝÎHO–ïLIb°¼¸Ìáœ®t`x\ZTð]ì“Ùá-;°¿,m‹OmÁQ-ø“\\\\’¢§B‹Þ™•Íà›ØÁì\\0»#¼ìp–;À¼»âˆhpöleMeqEQNqöî¼´™IÛR7oJZÿÅöµ›¶Ñ7mÝ±e;ÃòÔÔÝ™»³ò²r‹ò\nKáQPÆôò\Z~0€¼çQâ¨i˜òvÊ)–^~ó¯ûüðºçü×¤¹°hg˜ò„D†Ý`¹Áï0XŽÆ‡nƒésôRÍý,ífâ<Á@.7{ðN\rzE¹\\\\L¡]!¢nXqâü˜ïí\ZóÆ®Á³æÝAôc…åªÎ­\r¨`ïr‰å^ÎðÓz\Zêê9–WWÁ]XT”——‘“JÏÊJËÊJºæ`Ó¶ÌÜüŒü‚L¼/-É-/Í¯ª,ª­)k¨«Æt2ŒA˜\rG\nå•8i97ËÕ€¶[¶oß°mëç[·|²yãê-›WoßòQòöÏv&}ž¶kCVÆ¶‚Ü¥E™å%9eÅ¹¥EyÅ…ù…y¹¹ÙY»Ó	­¡v3$·/vÏß gç·\\0Ç±«;mòŽýÝÙï[ñ8	C†æiPè³srà\r[;v…hÃÖl\\\\Ã±œÍ247ÂG¾¢¦¢°æþ¬ÔÜ]I™;¶¤nÞ´nýöµ¶¯g{ÓíØºê?YÙt”••”áˆK_j‘*;\\\\Z–”À•\Zâô`¹­˜‡ÆrZ\\\\Ž±Î˜ûøã¡f`9¬©ØíýåÂO<#úM˜Œ²`ÜEà÷÷ÙgŸa]ú´CMÇY\n›øEç à¤íÑIò %ô=Œ&%‰Ç¼ÞðE?_ª0ç®Müv?q®=g¥‡[Ú-–ûM”x½Þ¼˜­æœüÃüæYV«\n:WÓq^3Ž ä*uUeiyYAq!œÞ²r³3s\\0ZY»9eådåägçdewKò+Ê\n«*Kjj*êëkøé}Ðí9–——åæÂž¼+esrÒZ€wò¶“¶®NÙ¶:5ù“ôŸg¦mÈÍØ\\\\˜›\\\\Z˜^Y–[]QPYVP^RPZR8ÏÏšÎÙ<x:ÓÃ¹*Î/äÌ°Î±œÛÕ!w ŠC!·N^c¹0µXŽ‘\\0Lí»32ahÇÌ9ÃòrÌk3,—z¹ÄòòšŠ‚r˜û³vå¦îÈÜ±9\rSúë×nœñÅöÍ›0jHJNNMO;r\nó\nJ‹J*ÊÊ«ä|]\rÆ¹–e–^,ÿ>§üíûöÀßËåÆìbp\\\\‚×:þª@®ÚØÑ“qäÜµ×^‹]åà3Ò¡‡IhÇ+8Á°Ê\\\'ä|9ÆK¢«Àë¡šÓ\Z÷/¾ø_Úx]ËôÕskdS„|ÁÚw+‘Ho\\0×D–1ŒÏ3	kïFÚ½]]p®=]-@A÷;3-*8Ö­]î$qÝÏç+6C·ô2ë¾vîBâ\\0U[ûÊ•×\\\\¸üžóÓ- —×Às«¬¼¬¨¨ÞeÙÀÓç˜pÆ_üÌƒ.\n¯¢¼’’|hïååE€~Ârv¨zõµpâÆ¬1TÓüüLØÏÓS7¥¥¬KÝùy\Z <yMFÊGYiŸçel(ÌÞ\\\\œ—TVœVºªÂÚê’êª’ªŠ’J(º˜mÆ\\\"áü|æÝ–•©q¶¨—M”³e¼Ü¢óµ¹ÒaiO¨ïØÆ¦ÌqÇ ‡IJ9–*Ã	.pÌŽA9³±³³²¡—c²¼zyS]c=°¼°¢(«8\\\'5/=)+eKÚ¶õÉ×íØ°~û¦\rÛ¶lÄ™o;R’wíNÏÈÍÎ-Â–sØ©J9[_WØ9„•L5—óå}þã—·ËøË#ÚØÕVÐ0\\\\–»€\\\\b9ªçÑâDU@8ü–á`\nnHÖôÑGX\Zˆ\\0Î{ü«­k\\\"KX‡Ys,¯§-ç6nÜˆ¦¥,ÇÐy÷Ûqá:ä,ºmž`®¸p@]\nqâÜËýTsía?êÑjZ·öŽå~pÝÑÎæ\nçrV÷úÕø®{íê.,—€å|ºœ°¼´¨JgnN^ð;x\nÊÍÎÉËÎ‡“yQ^Qq~	èR`yIUU\\\"Õ××B/çú=”{ørÏFv^Î®ìÝ[3Ó7d§­ÏNÿ<\\\'íÓ¼ÝŸfn(ÉÝRV˜\\\\Q’V]–UWUÐP+}e]memuEM5FìðG>ë\\\\c5sY§<²¡«Ó^´¿ˆ²)ÓÖ™¾N®ì0ªÃ›(ü‡û;ÊÀœ9³——ÃßknáÊÎ}ßøÇ·¦–f6_^[U\\\\U’[–ŸQ˜¹3\\\'uÛî¤;·nHÞòÅŽmð|ÛˆsevìJÞ•±;Y*.**çús¤c+ú0ÁPkÃ9÷cÿù/ÿƒ»¾}ï¼_‡×Ë!F!4?ýôSˆ`?,‡Ú}ÿý÷Âiý4†.0„\\\"\\\"AŠ„•ÐÀró€Ùš!–;^Ÿ>M.ˆ	ì\n&_2nø\\\"#jöø7¢Hqc-‘ƒ\rŽ<YCïbM\\\\IÌJŠ\\\'Få—•ÑººQµµ@5Çè\rcÅŠè+hQhªûÂ	ƒ¼f¤ë7ù†zhrˆBª¼ëxY(gèNq1“ˆœ,W÷“Ñ\Zl¥“kÅ¹Ü.ÎCžb®B{TG¨Å°O»÷Ø/PèèÇ¯v®Årí‚roñeíËWZ½œV=X¾oL/‡…<+Ãò€Îè¹y°QÃ<¿ŽÞ%EeeÅ€²\nàtz¶ùó¡Ã˜\\0í‚¹Ð••æì.ÈIÊÏÚZµ©0û‹âìõ%9_”ço­,J®.M¯­Èª¯Îo¨-mj¨jn¨ml¨ÁH€[úù\nm(¸å\\0ËR˜™áJ=¡:ÃuÚ—ÓßÈ\\\'óLƒ·.ö&u¶]Û\\\'±‘­I@$olb0NóL;onhnÄþreL5/Î)ÍKÏÏÚ™•¾-=eË®ä-;S¶$íÜ²}N‹Ù•Š…pyyl ‡(,¸1éˆÅç\rËð1†3Q¬/Kß­óOQ»(ÀØ5SN’\Z’Žùqs\n„åÐÈñ?	v “½ûî»ØÿÁ<sç6&E’1!¾3RH,L›¡îÄUTÒa<\\\"Ž1q £2JáIyùn%2£ÑL`ôVÃ¡ŸÀ¢Ž\\\'®‘–R o¿ñÆ˜n¢àÐ\\0çR¿ñÂ9šæÚâÐÂ½§Å£3¡#$>\Zp¹úÓÎ]Û	oçÚç5`¹ù1ÑÎ#\ZØž\\\\‚õr—™ìóª•Þå*¡N²DDtk„Çlì\\0QH†’ÒâÂ\\\"t\\\\ 7Vsa6#ø¥CI.,‚ûXaii	æ…¶ÕÕ•\\0o@8ëcZ‡£™÷¢ŠÒìÒÂ´’ü”Ò‚åÛË¶Vl¯.N©)ß]_•ÝPSÐXWÚÜPÙÒTÛÒË_6ca¶zæÏ‘LÖÐÒ!‰°÷4a¬¬ã?~±ŸtÑ¿øk=À/ˆD‚G=Îx®ÀT69óbžœ\rY~Ù¯lY\ZÔ”&ä£±®ª¶º¬¦pŽ‘HF>)»Ó“ÓvÃ´¾#ewÊÎÌôÝ°QÀ`€q²‡Ämõ8%\\\'Óð™-Æ‚ºº(ö}sa9’„ð…Ü«”–Ã»\rnàÙ$÷5œã“$âQu„î÷Þ{/…T.“bÄ§È€£	ò[!ƒ%\nËmïNÆ(·Ha¹&¡h°@ŽÍÝ`“¢D1¤ÃOà´ËÊ@ì‡¶„-m¿~ýz40?8ÿä“OÐ\ZÑƒ1ôb9„f°x¯1WÜ80_ë5º†ÜÛUÜ§ÕË#\ZÛ	é£RÐ]»µÏšËã]Îí!ýøUÍµ3ëêk²\\\\eˆv7\\\\¯¥0PÔ2lÜÐ©a\\\"lCgê0´Ð|K)/*ÒÃåW••PÁø…)g¾O@*:|é°Çz9&Â«ÊsªJ3«JwW—¥×”¦Ö–¥ÕUd6Tç6Ö6×—µ42 okilcÓÖM€T~qWi÷çˆŽÏqÓ»}É#¦˜„b/Ëå¹˜Äæ9üpçkÊŽÓÚ<ÅÄÁ„=ÜÎáÍ8¯fYÇâ´Ò|,¼+ÈÏÈÍÝ•›–ÁNgeæC)/æ¥Ç0¦‰±Màì‘4uÒ3Ï<3Ô^1*–C%ÂÀHã–\nóåÂ¦óh_–¶}Ê7a9@@~äKö–Étnfgªùt¦šóç\\\\Ô³¿«ÉÍï¬a7C/ÀæÈÅä+Éû\\\\4‰Ça[&ÂSX3‰LÄ\\\\0éBi<æÙ¥ª¡y2Wuy>)AdG,›wÿ¶ Ç+öÑI“…ušòÃþ³r{ÑäIvÑ\n&‹|°O!ûÌ!xÆ\nHÜÃöVpˆ3HäÉ‹[a%çÙ¸ùQ˜É£ÛLcì\\0¬¢YxÍYg•‚çE6w^ÎZ³rÈ3\rWPà7Û¤>7wÕÊUø—ëäøŸÚŠh1‡ÂŠˆ¬Ì,Øx0ÿ„®ƒ>„—VMÒ	ð„ïÍ°ãƒ>€Þž²fÍ\ZÛqaÈ¬\ZÛéÄ\rÇz}BÈ½KÔüt5¹{Œº‡LÂ6éágœ÷X?8—Ÿ£Ëîâ7:	0¶«Ð®\ZÞUÕèdäšpqTa¨è\\\\Æ\rVš•”b…6f™X\\0È¢f™í»B“Ï´Zicö¹º¾¶;ÉÔVÂ–^_W_•ÛP×T[Ô\\\\_ÒÜPÑÚTÝÖRÛÖÚˆÝR±k;‡T‰Ò¥Ž‹Ùx®£ãs yÑàR;|¤¥½y°ò2ÛKjyÿa8Ìþ²ÌšÎ‘õÚú:œù‚B—Á«¿4¯ 87¯(\\\'T\\\\P\\0×6Ìé×TÃO\\0s8U»¹Ê»ò-h£>\\\'–˜#24-èR„á‡Ù?¸¹]de<Ãg\\0w¨\\09¬ù0? \\\'`:r²~ßœa¹õãƒEA.d¨Ä‚ã!ƒ\\\\Ý3¬Åc†ˆô‡¬æšåj–6†v4ñË äó4V³ËÏ±$Å@Ž%Æ?À1–…#ex*ÖÅ>&F–Ryd9á)O¾9Ê²‡·,=ž;Q@ŽÏ¼hü¸çÈËH0QÍƒàÏÅÐ°€˜òA¢žÄš!Ä2Ëæm<•“§ƒáçÐØÂª >üpÖšLMÒ1ã…Ýp¡‹Rlþ9Ö^X‹aM…ý³oÿ>´w˜Ù±\rv*Œva³B«3”èµx+=†ƒ0Ë“&nð±\\\"DÅrD„#J¯‡à£Å\\0¯Ž.Á)¢¥]Nœ»ŒíñÝ@ÆËcØªÝ;qR/v‚‹Ù..í^ÍÛ›,!„+¤vAË?#&íHª9¦»«Ó|û2L1ãâ°^Š-Ya¬†¹š©¿\\\\Ûe\Z9r6]ÌÈxîøü3îa±®ÇtS}ec}Ec]yc}i,êL¯hiªjeêx=€¼¼·µ¶·‰òdØ…ì‰œ1x­ µ×šc—UeKKµy,…l(Á#0¶3slµµXŠŽIö²²*lW\\\\T^R¾ÀLÀ¦Éiƒ²\\\"×ØE;³«GŠûž_®ú«{ïÑU°ðNÞö?Ï!°%–ã.r¸\\0çPò‚\\\'ÿÒeKçÌy[Ár\ná\\0ªÕ\\\"–D\\\\à7ðDÀ…†Ëx\\\\m·Á’Á\\\'Áª… Nç”OPª”(ìK\rFO£Rˆ9v2@e£\r1QBJã\\0	Ø§¼ÉRI­çì¢ñƒmö‹…¡ñ‰\\\'jÞ4_¤Ì+Eã5\\\'L·yÍ‚‹A’WŒÌ\\\\)!UØÌ	ËÑ;%óœm†5à1š5‚Aá†z3:0\Zþ’$¥-ÜO¡AëR½Üëð€<ÄKð™t\\\\\Z›·\\\"Ô	T­=\\\"Š«\nz/—ã.×Ìºßlºª?©F¿“RåéÆ.ùí*ï$qD,ïùpN@îRÇµ%Õ2D;…¡´\räÂu:\\\'\\0‹ùŸÁZÍMØÜ¢Ž\\\'x°ÇÌ:9	(ÑäF&àœ[¬çð\\\'kiªknªmnªin¬n5Õ´6×µ6Å ·3X(€\\\\zÔŠa+/_ÿn6¼Eˆ8’ó[€{×b¨s?tØøy30=`kø«Â++áS€¢cä#Œ¤”{ç!HÏ:ë,=\\0Ë‘\n4lˆ]tŒCL0ó?Ê¿¤šž×­_/4¯#Gàðá‡fb³ÚÌT“ì‡àä¸þYz9I{®Ö&,áŠiýì±õ÷„å<u\nmë“}ú&ÝòÈêÁÂ2Ya/œÄ6©Ã/‘ ÑÃô$ŸŒ\rì#Èý•P¤¦Lùâ9v&•Of\nEÎ¢YE°¦\\\'X~¬óDsÄe*Ã	·bhC)¨E“÷Ä4ÆÊ‡(‘LQü¦DNøKÊ½UPfQò©¦BÖâÉá#X±bÅJ¸„`”½rå\nXÍD£½°&sÈj7¸;„‡°’‹ÓàÎÕp·vxÀ‘2›#jjºOŸ>}ìØ±ð®@»FÊÏ?ÿü/¼ðúë¯có×Š5ÈºcÌ4qý\\0Ûå¥Î—»ôrÕÀ®®5—XëZk®B83q*W´sêpî·=*D€óðóë~VëˆÏÖ8½>n®ÙYX/ìiù)ƒÉö@5Enü¸p/ˆŸ`Îå\\0ÛëMµZ+.ÂŸG–0jn\\0~ão[ ¼‘&È-¼uÃB¦“RÎÌÕ#„´¸[…S\\0œZxÄ\n¢\\0^BuL,-¶‚Î§Íê¡…ÃÍ­‹Ð9Šóo²ÑÏ¯-í¤=ÒË]K}ÔŸHrû{<fÿñÅÿìÇ!HógùE¦Túƒ™¥K—°ÿ–,¤Ã²J¨O!…‘^ GŽ©Ì\nKÈFÐH0Éà„péðá|ÒÑ)\\0nðw0ƒy	Ì‡-„cß³påH\\\"·|h£>Ë4C±Áƒdø(Í&]XæÄ*šòD8,lÆ¸…(Êuc*\Z{È‡,a9YS ­Ó\n7xX1!¿(™\\\"YEÃú\\\"\\\"‰9^,GÑ,Æ3þb°DLâü<|uX”_Ô-Ý!ÝÝ‚„tJK*ÒH§tƒÄÐ\\\")R’ÒŠ43t\r-Ò0ÔÐ943×ßýîwŸõçûÇ>ûœµ×>ë}Î9½‚Aø¼™rE¥óµË\nÞX»MTüFVÒ¸TÄ™–ü†õÊ”´©Üì±s!$ÛW\\0¢Ø¦*ë§‡ëÜ‡Ób..©FÜtMÆH¦†bOÛ?lrX;¶Ù¸áÄzqáéJ®ùê¯…0zþèÍ›\\\'l†Ë°=çÍ§­uþ4/•&Ó\\0°/èæ€Nó!W[ÝE<!·’i„Û’<ýwè@e.!ÖpÓÊµˆ›–WÜ^\\0¥¤£}i¡Àà8í´Õ9ÙÛi=~7IŒy2‚ŽªeY:¯Þì¢ó¼89.¤y¥æXï6Þ™¢›ècÃSõ¦¼ ¤íèsÔûÑÌ\r‚¥:ÄG5-k¼£ÈEý´!4Æºª¨ÅÔ†ÔÁvaÒ$Øúšô9Ž¬OoÏ$ÖÏ=õI˜˜?ª§ú,½k^ìÁzµ¦Ò‹-r“MX†¯Þ6K¸§„³éKÖØ”¥³X¦¥þŽ¥é?FÔî‰ÞU«;,ªlNg(Z½*ŠVÖ¥SJÔÄ}‹/„öáå@°m9¯Ô†uF °ñŽ=²\r¬>ú±¹‰eYËïÜì§ÒfÒ8×±LîÞ;ÑL]ÂXXi‚T>‰è¯Ö›,isÞ}sóæQré¯UOtÖçÏîž¡•a¥¿#¾;[+>³\\0¾eëä€Q0.J\Z\\\\xã»œQ{`\ra-îPŸSß ¾ö×3àß×E;¾íyŸ}oÅ¥`ÌEìÑDê1žÖ>õµ»È^¥Î1Œèj2¼ŠÙÎÚy]^r&ACòv§Y‰Ê¡³fiàüÝç°!­ëûiS›tÒå7øÌÑ>FÆ*íoU\nh#O=:\\0ËÔÊzO8Aòï‘ÜåG’^Bä4{ÇÍcÎñišÂÃ~èíZœP&’$#9ž|ROé\\\'^¸•/Õî\\\'dƒ[D–DHvYù´¬žQË“ˆ¾Ð²eŠCüªÌ¹üÕ9û,GLÆV¨pÛÔ©Å1öë{´sßó¨|®O+¢IªþîÃX	åü,K$ú¾B^Õ¬1Ê¢aj-n:Näc«Ih5ÏC¯ù-(¸¦¦ñÑÊ¶ÍÈ2ôzB\Z\r,p1|ã_Œ‹ýö@—ÛÓ•ñü¹™é‚Dü¤ÏÃ_¯ùÖû«m]w!MŒOW3…ÑHi\r3­²¸{ûÚ5‹j–öôƒïÆÄ6ãxg\\\"[š˜ò÷³¨é­h¥…òQÌûŽ­€æÕÔyZŽŸò+É¸±ìÑ\\\' ãz¿ö*+<½qŒï¬ñy¼¼‚HÇ6Ò;ì‚ÎfŒº&Lf“™	<H“Sì§®×hÍh•ŸtˆñwÐ[±\náÝxò?×õXa9â¸Šç5e‡aŠETÖÞ<›æ„kyedqñVö‹t#—5Ã”)‰A‰bôå÷ŒrmB)Îùnôó2¥nçÚ_+DÎ]0«4qy›©›ÙsçÊÞÿ•žü›7“#<˜zÞû¹D,4Á«¥u0wïÑþÑüüÅµUã&«ÍD£‰Š+¨äQÃÚ<G+Â¡Š)8GZ½U“Šo	¥1Ä®*üKïmWŒ“dôôÃùÁº¥(£B·À;æ¢=CòëYò®áûÓj&èË®Âž÷>ßo~ ~ÿ×$¥¼b÷Ð¾—w]Nïü2Ÿ¨0ëvr@)ÿödeáä1¶ÒTë]Œ\\\"V»öÂþÍß^ÌèU\\\\ã€cË›tþ=¬=q½Nk×á¥ç.õØ‰à>!Ä@ÿf\Z‰Q¸9†S¼âH=PŒ\ZÔ1oÄhÖß	¥f§\\\"ø¡šî<ÃÑ÷Y4Ãä\\\\(„Kmk­T ,\\\"_\nI’”ÿîÄnûæ…t’`^o\\\"÷Wbqæ h+©+Kh3Nå™¢øp©Z¤O`É¨õ°¡ºÿáâOÍNîÙ*£‘É„ôéN>~Ûg\r<ž_Ð´¼Kr4±®=ð›ÈÝ»ŸMÞÌìÐ°uÜV†Ô¯c)uÀtiv‚¯ƒ¯5Ô	œÓüµŠ\r£p	Ø E‰Ð0’,žCß„$£^%^úõ·”9­Ñ1­5úšž×ú«ýU#›«âÑþæ0ÉeÓ¥\n¯vÛw/¬>1O3cgsˆ¡ÉãÿÊ\nîìrÚ˜Z¦ÂŽ¥ÚÊ–±)yÎ³i^u\n7½­×íjJõ|¨PGwãÿ#ÃêŠ|i’Ac=ó;òó\\\\fÛ”·ë=‰‹zOÒŽ@þ]|³Öt®¥…ƒÞfLUÌ‘ŸÊ÷]q†õèýÑÞ¨ß¾¥ó	R*ÝM+úŽ‡`®•oK“,‚<ÚÎ):I7_+E‚cº6äÕhJYcÒG“Rç©\nç`l˜»h\Zõ\Zü”È›.’ägÒô¸øÝæþŠš}ÔÞKôØ#Óž\\\'Ãtlb{¸YwÛ2/ÒÞmÑÌÊ*èµØ–Ïèø¾Zƒ}£)î¬AÞ{¿(í¸{íG¦ç¨Ë~SOË‚³ð!11àuD#¢ütË±[ó[Xó_qXrd©³H=›©¯I/4§4² ˜=ž¦˜7\n-cú&=?˜ÃU“ÑË¸~\\\\™ÛS|ÇRà-NBþE‘I1ëµD;+*oa’­eàrÙ®kÁ¥°$¯¬e…*œÖ—ãÌÛ1lÇ¶ÒËõä“ID,F=›çü&K³ë%àÏú—‘FögøTñŸvì[åò¦E@Úâ­ðsÆx:È‡z72í£=ÙýÐæøú¿QŽGÝÏÚƒ–”1Ã¥Ù·°÷‘ê_Þ¥J9á}ÏÇ%rïc\r@K„WÃü¤¹ª>y†§•}\\0nšÄù\\\"åÇÕÙ>¬û ÿho°8ý&¤F\ZÁA.—’L²€µmN\\\"ú~x ÓhYÌ‚k\\\\Òšù`Ï&¸–ÈS–…ï61{3H¡iÿËOš,]-Ã{ßÔ³~?cKEÝ¥ØŠŽB™ÝÐß•“Å[ä:ñV‹ûYÏ×ÒAC—Ÿç\\\"œeQ¡«2K¿§T5£l^D˜Û´Ëõ÷$Á~Ü?9óÅ´ÊKhö°Ìš™n\\\'ØhŸø±¼«m×LÉ–b*ö‰+\\\'•¨ÃuY±POŠ¬wÞ¸3…ô™¤÷n\\\'lØ|ªåÐ)ÐœÂ§û»{¨Âò·ƒu„J0ÌÁ¿ÎïƒÌøƒ4\nW`bº#èÇ#k$ô}0Õt.‡Õ–\\\\ ”-_övÐûo\ZÓrP´ÏØ&R9ý=wß~6	ûl¬(íN;W“ó \n#àþòéÝI]¿û!iÇmH/’™ÅTJôŸÀd(\\\'”$^›>øLo?N|äJåîÿJŠJ;›\\\"(ûÂç³;^r2/bŸ:èœ-Ibb×!Ò‰Jb?;ßÐ* OžpˆÖ.d¸ò]•ý¹ÝM\ZRÂïŒ¿‡—bròe ’ÕÃX›Ûªî6§oÐgªLÌ«lÎTti°/-æùþÜ€_>…3Œ%tÍi}<ƒå›Zõp™…lÛXÝ­ÕÚ¸Õ9ÿ:4R¥Ñå„Îí=­f~[ùñ÷Ç£†­µïÞH+ðWf,çeÙã;T›Ú%jýŒ™-à õ@s‹*ùÒ“tò1V$qP—Š¹~fÁô¦Éˆ¥£¬bÞ\\\\óŒ˜qû=Ä1\\\'¶Ú‰ y<™äw5Î˜õ\Z¬öWÿx$ü\rýy”ÄYËº•¹õýõýv±Žæ=äSñn*yÈi-Ú7Ï:$\\\\áDPSûðóÅË—”mñß}î¤.o·HÓ{—†n	ývá´T*ßîëy³éµî&qÙylˆ\\\\ìWßÞˆTA×võÊÞŠÞë#oz‰ñrj_v¼âš!ŒÉ¿îÔ;;¤z6û˜HNÚf\\\'±?”5*¨ö%Êb»è¾}	hái‚x\n\r7ÿ>6bøÐ§ÖvÛ“ªI<æ…uS«uð¨äh0¥„qRŽ¼€³^&ýÙn\\\"°85‚Œ2#üI«G¤z# Ýœ.KöO0°š™nL©»Ë	Æþ±Ç¯¹@zja6ÁB80fÌƒßc«úÇ_|—ðÏéäI‰&l¢‘ßh2èŽgóKõh\rú£FêxxùLÛL)ÜâLÓœ´ÌÆ\\\'\\\'6ÀAT›¸¦	1›\\\'“ƒIcêÛÉ6*J?Ÿ£Þ±¹×†ßp‚`¯½(ž‘é»Ì5¹½ž-Q¡Mƒ{ðÓ½»d?~ãÑG91G¿àªuõëöæ3(VMœá+/!-Ä1l6ò4	æ\rð×RïY\\\"VEë³¬O×ü0vß3ùI×:fWp§ùúÆ…\\\"§ÇÓ;—_Ÿ7–¿úI‡Ë’ÏÒ­Ìãžp*“ð½ÕÓw©xµÜ\r¹W‰æ‹LÀ*câPM>7:N¢þbìëðjãÞó\\\"Õ•ÏS¢y¸¢xµ¯ë“ßÍ’#î·:Œ?r©o{³Ë”6NÚZ¤•¨ò|AJ~3pŸì\\\'\rzÙƒãy%þfYj?KçU6—X(¹Ôr>2m4œœ›dŠÜa2$r8˜óK5R¿šþbˆrN¯hÀ—æØI\\\"ãP½»%ÂOÈ€ŸÉ×Æ\\\'Ã|u¤¥búui7×—$oÌø“ñ{EžÎ:|_ÙÚíéI‹™øÁz/¼ÀZ5£ñ%1DNó!Îéõ ‡ü4Fq›øŒ,fOãLR‰>ïñ„ÇC9¤	Ïîy F‡q—P[èH{ƒ¼@ˆÒeÒÚÅíKô‹dµmte;2½›ø³woØy,ci*”ŸÉ)Pfo÷SðÞÄP–ð6Q×àú;6þ‘8µ@n”ZÞ=‘×/\\\\ÍŒBM¬±€R*À P!/—³J9¯œð åA’Ð[…ý\ZCEêxTƒ]ÖìoÐkýXåTíÆß\\\\ççòÓKÉ8ú®ÅÛNlÓ¢c‡p4õ¾Ã±¨‘Ã-N=ÞÇý°Î·¶íhf„›²^¶OBo-W÷|Ge3¶›D¹1¤û«ž wÀõ<fÝ’L 2g…®hÈL£•EÄŽ²e>Ä³çX±pYYÅXeÆÆÞÈ—ÎòI¥ùàWó%§±N£Q\\\"Bô¾Ç´Mæ6’÷\\\"ŠÍ§wºŸF,…ìr5¦ùfô»Z#Ÿ£ÞÙFú*%HY\ZƒùÂC<ÖÎí$Uþ‡œk]äøG¾y`o5ÄyM]¡\\\'åy½ˆŸt‰¤%ùRRh3*ýÏ8x~DËEÄ\\0uyó	!%ßâ~7Qôùy®–ïrÖ|GŠn0™ÑpBnÆèïÿ|š@f9Ï¤\\\\c_hvÁ4‹åž=Æß‘{õ)M¶Î”mæij›U¤Èí%ÇJ­ÍpˆêSB^2\nÿC|\næ3ÖðK\nƒ×…=}`Êº¶‘’µÖš÷ŒôZÐ¬á º²Ñ§èQ&9é€\\0Z¶Sd~3Â\\0‡/ðEåÜ{)+)4ÅŒH†X‹p¯{“wïn‡ÜŠÂ@›™SóÀ«Ñq–†\\\'Ï	Ç³äÎÚ-Àôú4V£`Þ±Õ=YÿÐëRä%EùW¾å§EËuÁØé¼-á#Q²¸#Ej\nŸÕÉg³(Ž?FF¶xôï`èìÝðû©û²†¿Ú]63[–•i;Ë!f:Aì¶HI¾¦Né\ZÝ‰áZÒÌ~15:ùÖk‚ŠÛnr;Æåü“¾ÛñŒµô›8xÓKÓ€Ú¶@^¡›Ì‚Ã;Ã‡þ¨‹`5s²HÜÊ<Ð e\Z;ßCìÝ*ã÷;ŸÔ6ëPs¼?9Ù-ßR\\\'ÒÙýËÛJjÖsô+g]6D\\0©jG2 mÞé®¯a´R˜:ï?]˜Ý\\\"?áœoºÂ`¶Bo¶LŸovôÕôˆÞì#ÃWú|ÿrÇ‰_6¿rÉEqíd”¦•h’ÃG&QÒéŸ\\\"ÊVZŽ¥áà°€‰õ³°f‚Ú\\\'\\\'nÁËˆV¨B|\\\'ÇâÓAû^aðÃA¥×ëÝ$!P¼mƒ¤û*ç«áæ|Ð¤;ÈgÃu¹þÜL¸¾f}Ð‰m´‚v´>ï+z“ÄôÎ‹×VE…NofÄ\r	:ÏîToàQû×!´]4E•ˆø1†—öZIÃ\\\'~‚*¿¡`ð´Kÿ.ÔÊ™‰0Y¢jÌÎÎÛÝŒ)Õo65g?%uúü%Â®C*â(Š (»Òh­dá^hÚ¬BHä½ÏKß‚w{T%üm³gB#“»äïlL°œˆÄ}|é–0£:\\\'.è\\\"Ê|¡”ÞH*¤\\0X«Nû~™¾àÃéÃ²ð\nâEaIšÙ\n[Ž+ÌG,^6l\nF}WLNç{£î´ƒÏ¾‘7¦ê²%?¾0Y˜‹|áÚÔàåªoða\\\"–s_•²²Ó0pÓ°Ÿøê1Ñßâ”¸‘ÈÊöo‚8Oãü?ÜÛ/ÃÚ/Í,Ýïoû@~³ßÔ²°¯,Ç¡Þ¶\\\"žGf,\\\'ÛäòÔ›iÝ}E¡»K’ë¶ñd’GC]›±ž>—’¤ôbxS°?££ð˜˜ï,\r@Ÿå\\0ê¥<2W¦t¤Px\r+½˜2t_™uuÑ§ˆ¥ÇðÔ—4ÖÑŠœ,]Nvaÿr\n»ÏÒ„ï‹°\\0¯Ž÷iLW–¹µ?]ÿ+¨BYtÛ(ìS¬c•ñÚ\\0Zß}l\Zóó\ZË§Cà#IaO“È¦K\nmLù3ëkoÛµ%|!³¢m²ëfªuÕªÄ¶­B‚–ÀÑ-èÓi@Ž¹·F˜E!ÞÐæ7›‘¾$†<AÍDÁŒ¶k}ÎÔ5;}ÏUï—f¬Ø6g_<å\\0þäì/;ð\\\"®9PwÃ\\0ÁŽýR\\0b“ˆØf¢¡–›1™4³ÒÞ;élJÍ*™0u7³7ï¨þ}¢F0/ÚâÊ?sàZÝfì\\\"æ Ñ¢íGïÀòÜ`\\0ÈÜ¡Ön g)¨ƒàÙ´°û:QAùƒa0V\\\"jcVì³n`‰j¥í\\06œi\\0¤ÄÜ·’…MÎÿh§PÇ*,\\0$ÂåHâ>õŽ/>\rÿŒ|(Û0ž¬jc±¨ fc¢ôð<¼ëgº¢…á‡ÛL]Œ‘$H%ð’ÉJš‹öÝkf“Ç\\\'¡LÐ£ýa+XKæ\\0¢ºUZ>Â×\ZÂÚ÷Q.¹ˆ\\\"høè+ËéÓîa(ÖÞ\\\'¢<º¶¶ªç‚Çv85q1Œ¾Ùsöö»*úV.š¡reœ”Ã^¼zû	‚ë9^t9‘GZHz·<Àá<Šûòéñª—çðnß\nI÷‰.ô6yBE¡J3Q4ïÇ$|¶¶‰e\\\"F2án(`v1;÷L×ã¿¶-ò¯6‡Í*µ‚ŸF+UÝ  Ç?~_s„,50¹ž)]9yÖµTàd\\\'¸Ô·ãT&oŸ!¯x’]=Ÿ™ß™*QL?÷´û2â~öuÀ»(rVËvfÕ¹E¨\\\"t%ï’HÑXÿÍÕ!}›ÍÃÕA`³¾\\\'sû»ç!à²D½ê\Zý¦€½ß\\\'-uøŽF=oCãÖ9e2LMyåŸ}Û¤!OâªvSF~¢g+5ØdÖÆúOµˆ=\\0\\0>Â±^š°êÅÍÉurîïª(Þì™ü«±s½Bûkº‰˜¾k^R:müFÙ³.âèKq¥ð™ÙÁpœEðå\ZjÃå¹¶r,©µ@ê™+x*#7ãWB=ÜˆÇqQÈÏþx-~­~š?ß“É®OËÝ¨ž#nS\rGF¤ÊËØø“¸&ê÷\\\\;5õå	?˜º÷Í\\0O¨£¹³‚`˜nCèNKáÓÉdà²<ø¶RtSWÄŽ¦ÇèIB¬Pfœâ(Öµ—‡ì/X t°ºåœÕÂ£¥µŽ\ZË5SIRÉq-,Ìté¥›ÍÐ‚¬ƒþº4€‰ZÉ)mò5Þñƒö‚W<¾‚ÏG:¡wÞ›à°{j=D¥àýXÎâ2c‰Oð 	=ŠŒDNü\r·;XÒn\nqq’œ /=•\ZÅÉc”p¥-Ä:Î2²:(Ïéë!¹Þ]viÀ.ÝŽŒL½TˆŠ÷à<××äGŽ2>AK—3[Ž]¯{ÿò“Ö>zÌfG…znü!%	ƒ÷‚~³œ@›Ê½¢KË	M8Iö$vñ”Ë¨ëªÛíÿ#I×žTIè§½•K¨ebû¿×9G—Oœó—ÚË³þÖ¥¥„Ðgr…<ŒÂ³øÍÞþ™Ù¦¿±èWÄu}µä~ò÷ÄÙÅèKoÃ¡ÄÕÜŒÔ®Ìü®¸˜öWÓh%ÞÑã}–±{…å{Ä‚vBž¡0èqI‡™ÐZ®ùâïNsàM~˜Re^ôb„ãŸ˜ßw0­ðH“¡åKÆÒ+º\\\'ãŠ¨dä-ÎRn1ëº·Ã¨1î†™ƒÇ\rÄÔnLWü=m¥µö§»¼Š‰Y©ýÌ}Ý™R½+‘]n+¾¯£gèVð1„òå‚â	—Ñ7åÆÓÅu¦£Ø	XöÒûƒõÈlÐÉG£ÝURÃi×4:e½¶	í¬½É¹µ´Úmð/­MÓº@~Ëg@ÏÁn¨ÂåljÁÐ±[\\\"Ê\\\\ðpRØ.Ë†E5Ê‡p‹]7„í4<\rO.ÖDAòû°·cbí¤òÒACÇY¼‚H’Pï—…X”L6œŠ¯û–ˆ}vÊ24ÿÈØáåÍkpà¦®¦•Ðà‘?ÇŒ,ƒ“¬¥GíÒ_È‰<Rw,Ÿìáƒ@óôÛo’Ï‘\\\'–KGÒf&^cãB4 ¥jCõxõ™ý1éZQ!©è‡›‘!WüŽæ­ãÞâ}ÄS\Z9Ü+2Ë{2G%ø ¢scÚs\Z»€(d Œ¼q«R-¿UB¢Ä‰ë¬®Šávg}jáØ²icz;¸Õ}õ§µ¥›ß0MÑdJºË{³Ä ©#{\nú¸‡ÍÁòc©Û,IÎ´¬çâ“ív¡°×Ð\Z1‹ÈÇ­¹%\nî)ú‹»ÜÝ” XÖ‚¤ÛRÂòj^r÷«èW³¯úïü·ÇUY¬’Ã]YÁGõ8D´hØò6uÕ,ìq²lLŸ~0)h]r° ¿îe%yã¦Ÿ¦e¯ÁÊTh|´5ˆ1\\\"2ßv»\\\\2m;ÐàPP-	2f¿øó†Œt°Nßmdff«„ùIÓ3uÍtû§Ü–ÏM@í™I{×èÑj	ílëÔmçÑc¹Áoºø-`ÿHŽ\Z Ð­RùþZ¯ž÷ÒB\\0÷=…ŽÀpLpŸ7bP^§º×èÙlk°R„/T«äwoFI)îs¾:[–Ûî€ŒÄiyÆ‹c«èÕåµxzÇ9Â¬L½›ÑÅ·šRÙã[ˆ}Û¦›\rüå3äŒ¢\rèÝáùÒ»€„ê¢ÓZ-Ä6ûAJ•a{O Ð‡\\\"Ï$zú¸à¥ïð	ÿ9_|½ò¬Íƒòû£ÚÚÓ¹±VftœSù¯BÎ0X9ûj“±ÔÕël©}vìL+¥½gGÐwÄÔtè¥Ãå\ZšmÆjD½róÍ<ÔG„\\0€§Y}Y\\0LVô9èÞa»Ø\\0{¥ÕM¶qGÖô4e™z_ÙÔ\nhi‚›AduL—ð•ãFúÊ	ÌúHùÈ½æëjë0J1ë‹‹ˆóþ\\\\xå÷îbíWÒÑUÑ$—/+lJ²ö¿O¼˜èí+\Z›™%hh^#]ùí¤³°*I2v=½\\\"z“MÕênÚ\n®ðžjIÁýÁO:Yt+]ŠÛ8Î•üuômÁÇ\\\"DGñ\Z‹à %þù3WMm]&á}fÅ»Õ–ÉÀÐ‹ôN–öÛ^2BêÐÜƒÏù…²^ðäãã“(]ùk±I}Ò4—é«\rYƒ·o_±`æXQý÷äºL£ìsAòúWq¿q:l|4	3H³Yd”1eŸ1„£ô¶`9=ÚÏŽ’WÍå\\\\\\\\\\\\tî¦GpI™Â»º?t9Fð²¦\rŸÞëÒ™¬.¦o	4â\r•¾íš7\\\\t“*p,?[\\\'æ‰Ì?¤Ws¥N„?p¯Mÿ1<>ôÇ|\nJ¦ó4(£Š7¤~Ï)§²y1\\\\”Þ¾­B´«h=[<=\\\\.ùÞôSÁõƒÓ-—ž°•\\\\3P.­ß¦ù[[UÅV|@í*\n®.ý¶¼Û†¨b8;b¾zÅëH\\\\Ì8in‚à3áÞS8oø!·ˆÊÒ–ÉÜÄg%I‘o•³	Ë5-ít²U,¿?ÿÎ+Xâù_ë$ã×¬&ìÄi&ÝÆáœ½ÍX¢GAe· Ò\\\'s_YPÛã¹|¨e0jŸzòøÿ¬ûãr\\\\?GÈaøÅnÑckï¶ÅÌx¸óÓZh\ZèjÑG´bÒœ ÿf×[cað\\\"\\\'l–?ú•z´Ñ%¾ˆÆë”è¸h`æÈæqÅd†’ñ£´˜7/Ï³v4øêgø¨>´Ç:+[½e§öË,§¥µ„-uáš¥œè%ÃŸ¨®bßÇ–“8£o¾v“¨€{ ü5ØY±[Á¯ðQÎù 03;@˜µ•³Íè®“sgwâ+\\0…ðÁðpºìñÎG?ñª~¯±ºýB€øYm¸ÿ\\\"mØåW(kb8-pSýy«ëó ýÉIî³¯bSËi2Ð‚Ÿ\\0žïn»¡TÁ³\\\'üü\nwCeBÐÜ@»±¶Ð?C­`¾Ëàœ‘!oLc¸ÆÉÀà¯‘Å_ñ6º©ÔÂ³\\\'Žõ@—û¾AAs„»sü¡ûöÐ1±[c3)£T$øÜ¼_ãä|¢Q0™_¿RëéŠJµ‡µ[›ª«4Úõ~7u!¨GÏÙ2NÏú¶¶8§Œå×äúÌ’0ËÌÍEvØ}ù–ÙiµÉNÔ+õú°¡¬¬\\\"ØIÔŽþ¬Ï­ËÎFçaa»H~\\\\•ÃNQæ¿íÆzúÍö«Žis,?Òò‚fŸ—¬v#b%t™#ÌŒûs¼´‚Ö;wÇ¿¦úô1‰]ÆsEÐ7Ä2èrŽÓ}6¿˜%çšëoïbÂJò9ìŒ\\\\V‰íüv[št­ã„dÞ[¹¿Þ¨[Wê·b½‚ËÖÓö\rx}\\\'Ã¦IBåÖ\\\\\r‘ò›©Û“Q\nµz\nŽÇ_¶éd~t#ímKßµ4¤ÿGMëçI—ë…|iRõ‰èi°¡®à™»,ž§ËÇÝQÔõ\nXé;C_\\\'Â®¡@±O«eýnn–ÿvaK•¤ßQOÐEÀÍ\\\'ÃÃÓÕŽJ9Ä\\\\M\r`…>¢K…6Z97ÛÊÌêØ˜Ê™ÂØý§”Ó#ÖöXéŽ4YÚúF¹daÄÉqþ™Öû³jqÔÃ› vMá%Å	bƒ:{g·¥\\\"e¬›ÛÓ­Ê	\nd7…ªuEÈö•%£‰»Ì£ÕY;Ä}ÙC¨Ç3”âzMXÓ{\\\\ê¿Iz0wE‰ÈDÄ¯a0šrÆi­ÖÍêt‰×.gáÒ/ÿæ¯ö»KýÍ`˜Mð%çtbrà¾SóKv´±´ùBHáÃÃàg‰2¥H°C/ë–úcåeìFž(¸\\\';‘ÃZE„LO©²g¯ãHY@Ðm3ÿ”ÃA? t¿D-Nþaÿ«¨#›aî\\0NêÎÓÃuÔl 4X8/É‹6œ±ßV¶QÀN/–m¦+è2ÀÑa^\\\\ì:djÎê¾W)E{BÙÄDšZ :’!Ü–1¿Ã\\\\c–<÷ŠJ@{ó‚X$°Áõâu:Í{ÿüMšÞo\\\"?°»ý¤ÙÀÝ=¨8ÖÒŽj`¨÷½à‘\røôI•û«øV¾£]:[Fâ·ð‘/YÒºÈëŽ½ÑHÆç£¡&a³cÐøó5«Ù±ØwvèÁ_X²¿û•Ž¾I1Ç‰² Îmþj\\\\NS“d†\\\'	’«ú»[ÆÁüu\nÜM=]F˜s9›{ú`[å=ñmÃùøÎ;àQa\\\\ò(^^#Ÿý7Ð¥ÈãÕöKºöä°\nWÒ`&A§5~çø1v‡7·ç(c³\r üé\Z\\0ôû\Z,ØuZ½#Ë.½µ‚ÃÎ¨_ëQ—µî\nwtLe®M€Ÿ‘©CoüžÃª¼+\\\")sÏ×¿ã6r€BnØìŸ\Za<ãxMäMÇeÇ’0¸»›UchËÔn¦ZáWÑßü¯aÛÑ‡ËÕ4Ã4þxéIŒŠ¿11B*e¥CCJà–C†¡\\\'1‡\rÝï}à5Y²-gUõ?>_ð>¯WkÚ†­€…\\\\Q·ƒ\\\'zÓ%¥#Ñeç·oÔ÷¡5F\rÜ°Ç~R@´ ‰LÈB	Ÿµ=ÅxnoôGÜ ¼·&FF¸X/EžÞX£åŒ“sâñEL_gÝŸž>dp¤­ÿvìóa²çJá§f’ñÜÐ3¢i,7·\\\\–<Þ°,þrš,‰;ubºV?‰\nøR¤ûÆçy>%òG:Ðm(¹Rµû™Oì³8/¯µ·æ¤VïYÇ\\\"ñh“ˆº¶‘\\\"B:àûy¶´´‚ó­è<QÇ¡û•Ï CýŠæý4‚¦ñM4÷™¯®¹°²1³¬º{¦yŠçç>ÆÔßM®9tº|<úxtø\n7æXx0!evureï³x=\r+ÙßÆóñoÖ¢–˜ý¹§©¯Š[xÑüV;íB§™\ZgXt£¿_ñŠÃ\n%t¦®Ÿd~èË¦nÞqFì&ÄáñÙ$¹&pª„e™+å\r!°º^H¸¯Vˆyéai¸÷?§£«I\\0ŽžÓÓáþià*¹ƒGßa¥ž É&s€53$Í]y°?Ågè%Ö!LðàTdÅT.»j;yƒ¹òÜÍdƒj¥#°Ú§â†59dÃà¹ÓÚÁ4ÌñÃtŠBigÿ®VÂÐ;ÕŒäšä1×MY?Ä€úO}B1\\\\\\\'˜ÒòÛã~2Ê/çvžd‰šÒßÜ½9Eúžêû­ú-÷Eã‡§\\\"Ä%~§ÙO˜CÂF¦÷dd:íR½ÒxS[ñ¶_àÄ§—pÚp6zâ·»Âp=mê8x%«30G\\\"¾ ÁÇû>ÓðhÅ0oQ\Z´ÜýÂ¢£°µ®ß²T5BBrÇ\ZRjd‚ÞÑ—¿«÷9ùnaÑ·X\ZØ	c¸4E…¾b ¼ª3k	Œ½î»ÂãúÚÈHÃÉ|\\\\\rFÀ„PS¨{€ž*êa\\\\DÞ+\n	dEF×ÖÕÅ¬P¼5Þ5™tm‰\\\\ÓË®r’¦°¬m?^p°\\0Þõ®®h>VüÆ••Ie”Sgð:ÕXŸ˜	>r‘=ŸŒ<µŠ¯†io²L¾0y*Œ¯ËÖ/Mq9ŸR$×ÃÌtÈN–z†kÖøÕ‚«óF5óî‡úÎSfñO}CD´w=Qir·5§gªUK!ÖèÆvæý‡§·P ª0øìíE†\\\"…„­ñ†aýV†©ËósL4ïk>Î]\rvA	£TàPžc#	wæ=ótà¹ž’­è[ÃÉ}X]Ý€ÞúÐ*Í3Â19ªÑ¡°)ùñbÚÝŽ\rÛ„ôÂÅSÜ—¡\\\"¡‘@Jµð‡‡Oh2C¾XG´óÒÛú®ô/Ú.	\nb¡=÷û3ßíÄ÷Œ,\\\"ê0_L2Ù\r„²!÷Þ‡M¹¬<;CØŽ¸K)\\\"q”ƒ!íÁarW!A[‡ÐWÒ¾ÅºvçP\Zéä‘°‡ÆÀõÑÛhF¼4‘pôXFÊ‘©!SUobO«×»œÙo5wÆ/ŒÃ¼Áqõ!à»4wä:‹{„º$ôˆÍÖ?Äù`ðê–ÅtõzäŽlJË«{˜Bî6	Kd‹ßàk~¶\\0Fç}ÒÝÎ”‡ujDˆ³\nâD‡p.¶ë?×\rªÞw™ÊFA.³P×ïîóµe™àé(ãü™»Ë mÔá¥îîß\\\"PãÍìocvpxÏgbÑÓÁ¿–›‡ƒ×Œí*VYö0v#:nõÏZ¦Â^›÷3‰VÆ—cÓ­S\n„Tn\\\\Í#á;˜`À%„¸†¸!à#dû;qè{w4éëbAÇ€oÝ·Ÿÿ@&,àÕ(“ßQTÄÞÎ^²;æA0(Âôæµ Ej¿@¬Pß‘¾ã8óíVræYèU‚È­‚|Œ¤bãðZ	2Á-\\\'ÑSÿÁ·K#üˆæáòÓQij Œ\\\'ÜGÈèCThV}@\\\'þûZÙ\\\\è,xÉ`a-ðq£÷–”áañWš¼,ˆ´HÈƒklrâC£“H—0x}„gé‚L<GC½zB]ýÑÅ]Wð<ÿg[?­¸å’÷<÷$˜Ú>G-¾Ü­ž.“*VÁ#KŠlb½êª&Û¥/ Kvöv:lÙšä\\\'+ñë!€‰Š·[ºC²NÖ¯Í½aI=Bü<_’b©mŒ¯*OA‡sÕ_Dø¡ì@	Ì|úncÁ§E{°Ór†#F ”§êÁp}îÐ÷K[]Oe£ÝÝJ›úh¸©1G”ãÐ\nŽÂ‰”Nè(O8ƒÌ7>žà¬v*®,ÎæïðN¢cÜâ¦¬·b²•k«Ò-	\ZFÙ„n`^âÆ£Èï@E|]ù÷Ü4®üéuñ§¡Ð×;Té;æ\\\'ë9Ùþ@Ö¸¨‡oJÃ‚¦ø‘ŠLE7C!ï¦/°¦>œ½¤‹…!É½gf\rK³æ3þüg2j&Ýÿ³ní—)f\\0„ïÉ#KèÍØÎ‚t6!ºäãÇç`c¶\\\'–©œ°ë¥D`0±ÛêsøÑ¥\\\\j`b¾4úÂýîÁ%¥ðË²;!ëïªûæÎZÖ*ä»ÈÌè™c½±’xŒ€Ð9xÍjðlâ|dodÌg¾‘í?4»#ßüDî-B.Qˆ)Tò`Ï ¹z`g4\\0WôæéÇÕ\rÇ0ðU‹Áíw!¡;¯#Ë©³U{zawç%J‹»Ì\\03Aù3ˆ%²ñº‹%§ð±ß\rxgªBLB ¯ËÛføÞXê8có>fð½ÚÉ	SÃTHðµ\Zƒ‚eë	ÌÈáæpŽÄ-¢ÿ×ŸÒ	;Ï¨<Ý\\\"#û\\\"=SºêK>n/¾$òÅ!¦ÇÛ%¢{y7Äà>Ðá®¥?û°ajèO}S¨95ò£Îƒ³ôÞ[òŸ5ö¥•]zƒÑXü¤Ì¤Šî[\\\'„ îÿ¢¡¤r\r‹l¾DÐ!!‚ü<[ß¨pþŽ÷]RîÈ\n8±ÖæÓK{_¡ùì…«¢Ió¿ÐLŒ÷fó˜cagêê¼ïñ®Ú5&‰xZSx<Öç½&ØdfhÄ›Çÿg3–*îÔWÞ€z“`Þ¡íÇU¹èŸN„9S»2¦¼ù?¯°Oü5µ÷j¹58F\\\'û{}vØ\rÂ³ÐÿÙï( ®ï»ÿ3‘}ìÚ|ÐþƒTöAE•9Ûe\\\'UÊÓ»§&9-JIÐAÍân#Ã9ËsSò¤6ä\rÈÙóe=—A%AÈ¿;zJ 3ï2µÙ€Œâ?ù®××(Ô \\\'vÒ€¾Ké™a¾¯B»c`ÆÑPÉ\\\"gošZ°DðA1n!4/;3Kßs8Tw\r‘6|Ns¹XÃ„óß_™‘˜$Ãž„5qµz™N·µ,çÅK+rÝ¥¼Ï‹±îÇ›õfX…Îë­Ú¿S¢‡:Ÿ*5ºY¡~ïï\nëh»ÚœBuB½ß>í\\\"–4üÁ\r™G …:¤™è¡„Ç:ùÛv—SÌƒvŒz:2nDÃ$	—¼QAÏî¿\\\'Ô=§`\\0¢CPð°âg[tÊBã\\\"=‘W|X	½I_wÐ¨¿]?u\\\\½Ï\\0kÁ§·fà;\\\"F)ï}Ö9ŸÕ9ðÝUÉ/T04¦òý7Tf$:âÜŒÁI€Ö´³ÊÕÿã6‹ßÈ&t¡ÍK¨ç&i®ÅUãÛK·Ý*GKÆëÕî.†Ç,àp=ˆ\Zz¶°–ˆ½\\\"ñr Úe£–rƒ–{}oz2Bïœ:>šÞ†sæq×do¿\\\'†‘/ý\nó,xÞ¤YTP®ms Öà1TÔ[ü¹ê™cÍ³Ô{´/_#èøOd¤µ–Çy{žmEnùx[&MÒL#;µeØQUàI¼ÈXqDÒß_Ùa×ßpIŸ+‰EX=ú	÷’@o ‰ø?¡ÒF>éH¯Nû#j½²P¨0wVgoz7ÍÈÑ„T2ØQlŠÙã†_z»Ž¶9ø½²ý‚äðqW^:ªP[ùuõ§l¾¼g‹Ø&6æÆ¶¿¦žK­€Œu4W`Ê\\0µ‹_$BË9­bl½ÍòTIßªfqÝ¼““Þ~?ë‰)ô´\n<°%Œ/€ƒ—%ÃÎ!Ek/áº—þ×µ³ƒS¡67»b¿Œ‡RÒMÖc«(zø9­€´Ù}¯iñÝÉ­‚hØ¡9bP¾pCzýã÷×ÿ‘®0gsš²ýÃDÆ?-,ª]‰Î¤{«:L&K®G`RVØ¾8¨%0n¨«‹ÿÜ gñ•Qnúó¸F7x—ˆ¢5CBè¨\\0ùïïÓäé2š¯¢üÞ­uªQHqëhðs¶’ºÂàÓöï»$ë`×x±Å”˜^Ïq\\\\Qî©ÜIóŸFÂ\\\\¬‰Ã\\\"äAg›gøo¬vÍÏ’só[–æµeÅç,…¨Ì§PTçæ2êä‡\\0À÷|=—ËPpÙçæö¦è=qÏƒ9Òút‘ó»œëZ‡òmE_nŒ‹ð\\\'°p˜œ…8¬ßoa=ÞÏi±Ù/Àa3›iéØF6yÂ¡¦Ý¶™´Y&áv8G–0Ôÿà†Na>×¦jâÓ+ŽçI\\\"üóåiß\ZÎþhÒ¢…HÐ›ê–³Ç¢“!o-™ã•Ö¢ªæf×ÁÄ¬pI­÷’áôôç¤îwLà;]„µQ(&wëBˆÚ‡S½¹±±‡ ÇV1•IžÁ+r3­£^æçx¶¹›©Z\\\"–“•Uj\\\'‡Ã¥&]²£2d÷ñ%ä‹bàgÐø)\\0à@èñ8–‰·\r¿“žë²œ1~7OÓâºYX_˜tc;äEôº$~ûu”ÄcS§1ÌBþYíÑ€Hú\\\"©4”YéamÏ Ë{öiœåäðHçAJ&¦÷þvJá>·$Çôãü0¿hÅâÄ/”Ià[ˆ\\0Ýi…>Ë÷{,gÇžß%ËõútÕ¹8Á¹1DÈYÙ y­eôÆ§æj:ÿú§½ˆš‚»ƒÚH¥ðWmmiM\r„üéµ2®ºz \\0›ùG\ZCxÏ°ÌÏdÊ+`Pöã€Íí†”ä2DòãÞ1î?ª|IïquÅ¸¢ÎP1L#ÿ]æŸ*°“\\\\àyHÉ¡GcBÀð¬†ÇèÐÝGuÊ º8çùÑ¡^}´GYÑà>lÜ«köˆXóÐq9¼Žåt—¹ìtÛ{ŠwÙjÊœU–[†è¼6‹¤ŽÈy6iþTørsùP¼Æ2Ä>\\\\ä:ïK:í¾Í˜’,[\rîÞ³ôœQJ“¾ÏzÚ«†÷GÎã§\\\'/ØÍl<bÿ‘ñ¤X––ÛÖƒx\ZÞö‹[Ý.×¼$$¸×ð<0tÚØ+ðIÅˆdèD›F¼NÀÇ¶ËÝ[~ÈùYÜ¹QkŸÚV,½òVÙ—9¢r´_rCÅükou‚xýzž·@8ÏÀ<ñ•÷ó«ÎágDŸD%Øú ‡‡Ïÿ­\\0˜¨\r„Ý 	>u›Ô d³~¦:NUÄû0,RvfU<L%èp3”žI[\Z=b¡‹ùÁôÕbëõT~[vïCB4LÚáà¬2¬£$þ„€üïõUÛJä*ÆqxêyMUÙÿHÜò«*çÎê½¦¿\r…§½£dÎ/†ÝkÓáŒçX;zŽ˜ÊU†¦a°CºnÎ¶Žòb\\08„‡â=\néÅ|­[i‰¡A^QµUØÖ¸nˆ™Ÿ–pXQþ-Îïwaê£6ƒZÕ_Ò€ïù*0n%¬l!?ØñjáË¦ˆño²ü÷‘E47O£Ò€Z¬ª¢‹µeêƒ×)©uXœj¡÷ACÒ|èXqî¼Aaš^†ÖÅ¯[(\\016\\\'™ëzÈw‘t_{jåG‘¬œÒ N?CQ×å9CöÑÊ–6ƒâÏé%ÕÅÈlÐ‹‚ýŒ>0yÿv½‡—nmé¼—Óf×ã@J\Zÿ`³¸&—¥ó¾œ\\\"ñGX>˜ØÓ¨Òù„è4CßTÇ[:‘-<ÂíùíÕ¶™_è]ãYØ£^B){@z¼‹ÂBŠª×U‰-Î™BÙj\\\\Z¶“´Ïð¾Åæv¯Åö’Ëâl)`ôÑ¼›qa[´aª,ê–:¸ö9mQX.¾eQìu,ÎaUÕþ|eúµ¼ ësU¡èZèŸ]4ü¼‚Ÿ.½¥T\r!ÁC.>¹âAË™]È±2:!Ý‚T˜ã¹i‘ðÁï[\\0+üõQgÛÕOÉ®èè)i»ÒÅÛø_ã©ä{¼Uìb©öååçÃCvÆ²$ße’¿x€Ÿ$IÙ2sÝ”#§IÑw³86-ô£|ÇÞœ†G”Aò>\rÝzO>¼º1¨+<?£5µSÔT/­v{Õá5}EŠZfÍccÏ[´90MBr„p)„IeŽ›­¶jäÜsÿ*Nn½/iƒWx2Å_d‹¾õ™˜\rsÞ	àÏ2}¸‹g)ÈFEÃ™OŽS±ÍJ{¸+–23²±¨iýÈ¼ØLg)P\ZL¤¹Ï¢ð…ljŸ¸sÑŒ ™5uü¥”È;†kŒvñŠîsµ†>Þ…¯\ZðŽá>nO¹Â©»$ÜÎî[blyvsÁŒy,æñDK¤4ˆââ¼\\\"^Ô½õ÷ë]Dh*/ë34Ôçs¹8YÍ-Ö¾¤/9ô\\\"î?rÆ\\0®Ô÷£]\Z¹‚U¼4¼œ5ø\n66Ðy8;?ôáÇ;>Ÿ7<ä[k.9¢Raé2k	uñ3(ïÉýH¡/ÖÇ’7,]\\0ƒÙÿþ-.-Ýž‹Û;Æ-Ua½m %¹cçÈ¡‚Õ³f±êÒãáÀ<4ö¨hYüÑî1YòL…í97¼˜Û¦ÉŽð°Kz§±}? ù‘õÑ5\\\')¿@ˆ\\\"ÕW\\\\¦7‰¯ÜŠÃÛÏyg5#ìÓ {*ËìVúß±Ã+UÅpÅäÀ²¿øìl/‚B1P…zbµÚqÔÇ¸bßR­B×ƒØ\Z[ÈˆÞ\r\\0»xÅÎãˆSYBOv@¾ôk¡ÎßR=‘’røÌƒ:c:¦	ñWãøy˜ü|ü„´¨w”°\\\\òß?]aÂ‡¥T4T½ä6ï/×y£´óˆq;&ÐãIðžÅ“±ñéJáaþÜJz~ÒtBô¡¤©«°=Ã6&@ü±EEÃ8²#OÊ†\\\\$ý{ûFï¶N”iXH»ô£ëš÷  ÁN»½ò<¿V¯Ì8€Ç8ÛûûÕ•»¦Dfø¦¢Ç&Ú\\0¶óÎ3Voš,~uN[…“Åùì–\rk½µ¼Q²1	4gk+$ú+ z¼•–¥gH{‘øÚÄú>®®pËÉ‘]©\r¼KQ×åìƒO–8&šQÊÓ¥Ë+.\\\"O,qÊåë\\\'ðßêLI	)M@n±ø—û<uu	uÿ7MrOÔ3\\\'Ñ‹Áü”H›_ÆìäòÙ&ó9w’w@„è<©š‚²Žr‡¾¤ŠèïŠ×?¬Xƒ\rü¨¸½t]ñ5>=ãÉ>ìªD½k, :~»ó¬«ªïëxq÷á˜åÑ´)ÉÞ¶‰$7Þõ€©bzUÀüÃ™¿w‘+:¿žJc\\\'i6\\\'Ï·LÝ¤\\\"àå×«$…ÛÌ´á(¨;tŠùðáä.íiãB¯ë_òVž\\\'j;‚­õ$ò_aÆ›\\\'Â[/B¿Ìnç5¢Ú@¯6“ÐµžUãýw¾8ð;9°6ø«í¡K³\\\'NéwIõ\nã;–•ÒÁTØy—cº:[¿bÙü¬Ùu;U83y…O™\rÿh<V-ë›‡1:“ý!ž!S`-â\\\\¬î¬#^§Ôž+¯¹£t›Sÿ­ôÄmŸœI¥š¼È£iÁÐˆKùEÛë¼!róT­ý¡Öø:5å~\\\"Óo#u³Ê~ñUa4/»šô~¿I+»¹ô‚æX~Mˆl.u(Óß!jkÔu	¿QöHZ(\\\\=–ÀÖqì_¸/ÕâXët^‡N_‰¦PM¦Ý„rxï­V3Ç°Èšƒ¥;faH#…óuãWYNšø¨H˜@,Ž¡Môü§>Ü>ÛiµxªÎ¤ýºÂ)ŒÊÅgh.ß5¦âU¢HÇ‹ÎŒg©­;[f³\Zá›añ;¡xØ¢ZÀD%	íÿ£	Z†í0ü\\\\Suà•å.K?úÿC„ÅhÄy|“qS£¡õ°ä±¿Pkd0\\\"‹æö—û°°Çû˜**ÔîYgCjôd!2O]gMÖòãñûø+)1x;…Rétî?t§c¢õ~OAŒ„ø^,uz‘±>®^¾.¨³iì¢‘PÓ·ûßÈ´Réx– Æ6‰Ch\\\'ÍÊ£Ë¤aï¤2®W£,ëË4Q7¢ìa½oÜ‰›áÿŠãŒ>†cµ&²»_‡óJ$ÑA¾K³}¥}“õ:ì–P \\\'à­IÐÒ˜?qöð*£¶òÿf9ŠÞsY:ØùŠ%$÷|-YWaâñ.³Kœ¶ýõ0>à3=s&¤>ûä?øì0±„ª­]_|é÷P1ª/©“Û¶µ#dñÉþ)I¨áÛ9AgïTµ¾¤nQS7O£Ì¿qØ|Fô!nRoä¿+\\\"pŸÕ½²^8(\\0eQúùçgž Ëúƒî%Œaxv~¾‚{L–çoÜcº<ªy(\ZßFúü}“[6÷ð«ï6¸GÖ\r…~cÆÍ|›xË÷^n8‹>¶-¨*D‡š®œÏáâ¶y]m›è§“”•”gŸÚ±:ŽºÇªy—›š‰¡Ž›ªáD}ó½±Io¹¥Ž:Ê†y^¬Ð‰³m]ÎŽ­Òòêç˜Ëo½æ÷—Û\nAWÃº©¦ÄŸ®ncå[àd¢OØa©aHÌ„È«[,«û-®$ïK³³åe³Wq$L2{¿äÃî<‡-\nò!Umžðr¯oÞ\\\'#iEC£LoßÜü.Ã!bÊ{dè“Å`>S¨@ëÌ¡Õ(i™+Í¦Ÿ#úŽ~¦°‰ÉÅVšÆ°gçÆÀnÛYï7úl{Ð5W¹vqé–ªÞ+kÌÂg˜#ø-èËü1Kì(RB/DÙÅÉÐVT•úàÃ…Ï»m\\\"H‰ÙÕF?!s Ó©üíTÇãzÞ-é7ù­•©l7‘‚4Âl[èÎ¤ïZpsØ1!Í‹ñÑ	gwgww{,Àãñ¯Gè*êôñìÓq5ÙT\ZËÓX3~(	“ÂÜú’ÎË/`»¥Ïw6AE\n:Õ9>®³ì™1\ZÙ‹b\\\"Ùæþ¼°$;_mE]fø…Æ%ôõù[pdzSÜo¢ùï¤¼T¡4š\\\\ì#ñŽ`ƒSõw®>ùøt†O”.Æ#èjiê²ÀÀ;òžûnÒ.lïÛdÙ8-¦«4#\\\"Æ40)I(S[jIÿLæûµaïZyÌô¢ Ý¼ç5.³ÔùEY_—g±öZ~M*hFÁÜ˜ê”ƒbÚ“rS™ ßªœKbzJöå„ùŒêîr—°‡d{ÇKve,GÏõ£—Ài¢{ÙŒ^[=ÖTÔ‘?”:ÕØ\\\"	j”Â?½Àì;*ìò|©Ý%žx7s´ÉmßA‘Œî¹?/œÛÉÊøp»w·f‹“Gì÷úç~‰8ÒûsìI²ÁhLÒ›ßó\\0ÙÏK*Ä<fpì1ëqgS¤£6pR(Ä¥G;Œ\Zïyö”™°Gp@¨>ÓLoTÄüÏ‹W•wÇàQß«hR3#cçÇ™ŸÓ×\raÕé<v$Šõãv›Ý„L¡©Ø¶Ú¦àct¡#®`bbMqßþÞ}²‚Úz°4Š2JÀ¶MŠ¤zíjøR71¤ÂM<gû\\\"–„)Ò·qîˆÄ‡ú‹]·úÑ¬ãòI¤p³-¡¨‹°\\\'ftôeëèa­.ã&VÔE\Z0dÉ>Gþb€‚‚[‹VÒ±·=æCÓ•Y˜e¸b¬¿bL(ãyþ¸zë¸&ß÷}D	)‘Q¢„´HI*\n\\\"RR“‘®Ñ)%\\\"¸ÒÝlt7Ý0\ZFçèô7ŒÏûû<¯ñß¶û¾®3ã8¯{HÌ–Øg¦fÞGG%•@…¯gÃv\Z¶‡úÎëO‘ã)1fÝ›´Ñ‡1SÓj&AfO*lzoš\\\"‹€«Þ71×nIÑ‹çŽÕ–%zÝýaJ…Hw¦…*-ŒtÉ½¸®³p.<nJiþ÷Î†“Ôá¬6S-û\\0å øò¶û])g“u	{½SUõi¼jtð—)1gçn‡Çj_”×ÖFQÃNë¶QPUÚ¦ó(õ¼<ã3Ãlb§û3.¤ø¿@AkÊøî\Z­qkéë´†¬ÈË©´É‚®˜µãÔMRX¤ÞÖí©‘.ö†i8ÅáÕaº˜· y~n\\\\â~ªRÑô‰°á¤¼%ÈàNÚôûy@ãÓg•q’”oâÇ D!MÕ8Ù…•1ïàÍ¼\\\\MÔœáº¶OnŠ0\rx¯6¢´\\\\…ñ¡uNx5¾¨tˆDçê¨¶B™÷CÞF^Ð\rh-,\\\'LÉQGM65CUŒ¿÷róã3ŒoÐb2Úy^Á”›}¹2öFí«\rxÃŸ0˜Oó£mVú@íïóAÀDÑD[ÎÿíR²±ëBt‚ÂR´ÛdPÑÈ–¸¥á4ZØãÀÓZË\r~.>§öK»™›;UÖÃSÿºÚ“º“ìq3Ì+ÛÖsé¸ç`/Ê-4n…]¼?v\ZC,ú¡¼i§÷<›Ô8ê3Î¢?ê•~³ÊmÁ\\\'ù…GÛgJ \\\"m Æ~bßZmcAâ]Éá„=°ÀuÙ8$)Âa77¥íóo\n¿ƒÞv\\0°x¢I=WSÙ®\\\\?\Z@ã»n!…Îv<ÝøðxVW	\ZÑN~:3lP-«g8zÙ›ÐNéQ˜ÖKÆãx×Pþ£˜C4Vë!7~¢(Ùm\\\\DÏx›MrkÆ’;Åê9ÈbÞçp¶Ôë|õný3·QMvº«î˜ƒˆ§2ÖY’+Ûþ^®‹]‰¹$îù¡Ýwo›¡µÁl(æZÎ‘~±†KŽ-ÚÅ¸§à’taßÏ5[4Ö>£€CÂ ”ÕÖ„%ÿXøãü­D\n©éÖçú‹qó7óF¦‚w¤I$h„©-Ö\ZADoJ°bQC·Ú@X\\\"zbØT»ž7”×b„™Å³v¾JnÈ¾w5£µA>ûüGùV½:Yêšo\rJ`¬ùÚtg¬v¥xùÒ~Ç_=›¥æƒ›J_Rœëµ6>ÍÕ<’ˆ¸Óƒ®z+OP§jN0‘!ÇÝâ½‚#Øv3¤9%cD”d»y“ùÛÇÕIZ„ÛÉà7kiÀŸ$²ÂPÀM¹KD<˜…1yÅJÌt!‹¼\r­ª;¨V°\\\'¹\r©9ÈT”0Åo´ÑøF@÷Q{líÍmõÖ½O–I}Ûo5ñèÝ‡¹Î`U)õã¹ÞÅÓSÇó4ü\\0°/u2¶ÓçUù\\\"Xïâ\rPØ½È>ƒ\\0ž4.ÉO\n±¤*h½‚^l\rOwGh7úÎ@Ëç£3¯ïïÇ•2R’5Úüy%Ø`I‡¼ºÌ˜ Ë	\\\'‹Æ¬wp Á\\\'¨~àè  5;ÔwcZlnÍ+8„áÒ½òß²c¢+ªsjW›ž¹æßË:D{›BeÝdÝxÓÊ—ãkã¿†N<WŒ\\\"þïôHºãËpî°Ã\rJ¸Å¬£Ë›uhÂ©öP²SšYhN\rÛD ¿ov1å,«&\r>½Óœ¬xÇ->§s[>\rv¼oêjjŽ)98­ÍÌÌLLr‹¬³óZî¡ã‹KK§ÙÔòéÙ“„%</WÏÇœTg`Sþn#‘\\\"uêÆ&¼žÅ¿Îàý\nÏï\\\'Ó¸«§\\0çKbÇç‚P‘tVê¦d¶\\0ñ[?_¼\\0ÌXBgÌadERâçñ£{s’^.ùNN=™8ki=ÔF¤2núÑnW·Ùñ°ÇÊ©9À\rG“æ~‹^»GG¢––ääª¨7m§§oÖjx,gÀ‘‘|íöÍhÂåLãŒ!ÜB‡0ÏsØðè€T´z%râ©hÃ­Ÿ€‡¿¡ùˆDâ.|Â¨½û3Gc¥²’i4ÃÅ¤×h` ­×¢«ò/je›º¯ P–(fù\\\\–\\\"	ûœüs…¼<æðôouùÝìÉq`_…¡Kto	Wxô„Ö.ü†Ê——Áíí™©©ƒµµÍ›ñµ¡¡›[ÂêO@A¨}Ê^Dwg¶u¡õ\\\\º8ów/×Î:ýSÎÀ­´ÎŒäû=b<\\\"ÌËUkIN¤¹Y5ûj÷Û[¢á›Ÿè)r’ñë¿¾\\\'ãž\Zô¿KPj–=¦A.þéC-.ÞÛÇ©>×=Ô×ªÎÈ//Õ°NÂÒ/ˆ÷ÛE[[RÇS_MÍÊÕu¹7a\rYþÄz*ÄÇ§m ´\\\\_bWòS#.Ð· ¥ªuÒ¥T’1ÝC“#ÂÂêŽe¢DÿÄW¶ ·G»#à˜€ÔT2Žû`”ó&)ø>Q.ï`d¸µÄqvªÎ¬ÃŠÞ$-‰ÿ±‰ª{Q{Ä…Ÿ·]¾*£ Ó1‹= S^^v§	±o×KûÜ¤?ð.£MáäÁÚÐJwìÐJG$ã9é&óS6.Í*³Œ&tö‹ ‹ßÏêõG	íNnt\nRÜÒ¶Ì³p7§ô‘&lo”}V~.Tßö¾{ÑÓ™úŽ×ÝdE´Ì0å!päèÈZV(ø‡·ø4ûˆÒ¸M—V8•¶\\\\/ o@Oˆ\\\"‘ìR¤QÖ¥ç¢°\rf²þCª”l±XHDpé³ÈS›ß44ö\\\'šÖÅ&-j–ê6M	E£·óN´Çi›7q\\\".‘¦Zæ\nXà–ÃºìÊl²vMM•øñ”äkBapp°Ó¬Ç˜ž‹ÊeëMþ?x9Ð-I ²Á†‘¢S}{ÄqÕcn\\0»ñ$÷¯—´•!7/³s,+ïÈº×4bðÀŒµ£{Ä‹¸ÖGÉ.ŒnØ¸.7+¯ˆEšÄŠ>™Ò‰{«º\Z@•µN;: ¯1C¡®PJ{ý¤ÛN1´î(ÅóÏ‘X÷ñÀÒ¨&fŽ¼Däþì3n¯;RÖeGý÷çxú)áE_g÷ˆg,ßÞ™¼hk¸\n£ì%@ì©Ÿw	ÿ\nÛlZ£É9=íÒzaÝM˜»ƒÅï2’%Š10Õ5X<èq~¼5]QaÎGï‹¸V]{Ðÿ¯mjm°xQŠpì%ý#¿½æŒ1	X–2ßèfo:g”K#÷ˆ]úŸù¡&Õû.©©³Ï=ƒ=;µmÞ?ÍY~nžø€‹\rÙðå—˜\\\'6¢OxG¤\\\"ŒfÓëœZ[UUUŠK\\\\Ç5§3ë{åÆãV&¹ÑT-_¹½rBá~#˜îìû\ZÒ\Z.P”ªà²[Ò‰|¨9Ü¢!Ï6Zº¡ÇÅc€J–ýPÇ³Â<@q~çlÄÚ\r 5ûÎcæ<Æ×‘ˆòÕ÷BÁXQØáÖŠ–8£å§úBŸë½ë=…ëMmŸëñ¼À¢^ºJ®¿§÷tGÌhk1ÂÙ³IÐ @\Z]y}QËµòÅ€vìèqèµ÷öçÈ/JO±ò*“RI5Ì£˜ýÍ¶Û@&¿v­IA\rçÙáò\rë¹ç^(Á7‘®BÐø¹©U”«ÀŸ€zpÆðÉfA;Ó–¡ú—uG%Œ	X–´£â€CåƒKŠ´¨*±ÚÅŸì˜}jXÒ\Zú`.G‡!9Ý‰Îìxñ×{ô¨„ü¤û]„\Z½ç#ŠB©˜ôYù1oŸ©\nÁc)|§I^=ç\nHÃ…@o„xZ5‘áqò3=@ÀÔ\\0üG¾x0R¢\Z\\\"05ûßuq\\0\Z»Ðú¡ù\\\"zöz¬ùzma‚¹L†ÔSÏÒpëcÍy&¯ÄB2\\\"`ÃcJ=¡&LèÌ„IüŽ,’¹›Ûã*ûXY%X—äyÕ—$ªi ‚ÅŸI©tßðVyë_\\\"Ž•»xñ×Zåõ¾¼‡Î«¨ØX¬þ\rA¯e¯ý*vÝlæJ±ÃæEè`Sýzµ<¶E)¬þ 2DSšƒ»o•˜\\\\à>ž2®ç#ã¶ãp0No˜ÎÌ†k±’ÜïÒÌ‹—\r÷¿ö=Ôm±à±ÞãD¬Üso@•}öf­ûÐçˆ­¾\\\\$CøÔOLà;V¸\\\"§ç&Í¸Fo‚Ax‹‚¹ÙúS¶<‚Mö]—­_ÕF·r7¤¥]^³@ºT`n½½Ÿ¹y]„˜iñ ‰s…>÷HÊã ô‹Ë„ó$a¸,¹~zMx9X¥:ù6ûvîûš$´¾‹šD¾âÎÄ?Á¶ugFÊŽB8Ïà4N\\\"Wã†¯•™<Fr}|°0®>_G­{nîÄ]Ž»MÜ&SðŒ½w­]ÝÁÓ;£}aqwNDƒ=À‘\Z’&?¯Œ©€uýeÂõ·ëOähçN(¶ôÍŸ÷âÛ¥w5:oã²Ó=sÞ¶nÛR[Ó¨q´üðá;%bïÝ:ªHâ\\\'°’›hý\\\'ýl±\n7IÅj±lhàiy\r}TÑËyôÄbÓ3Ü\ZÈœIcv2±„‰µÔ.êŒâ<XBÅ‹.Ç[ãÞ(ÁÓ÷Êt¸àC¾x±´¡†‹ÖîÌ×¿µ¯XîœÞ´=—Žš„¤àA8 *8Úóÿr®íƒ8Jzjbn6Ž’Gß2Lø@]Æµ½2„Ö†¤!(wMÁr^-ÓÁäl=±YuU+?‹©1fˆˆyá°CÚs+> ‰ïiÉAl~á kóÕ÷Q¡«ÿ9ž±¼²€+lª‰º¨Ù±DÛî•\r3\\\"YtötQáw\\\\EÅ3hAù>´î-\\\'$h}Ó&á\\0z>:ü¤Lñ;ù{½W¤ŠnÄ·Ò‚F§úÖº7>2%ÌyÍöC±»cLð‚käu°5†Ày:h;÷ç®-C{&“e–ÜkæâÞfG^Øx-7Kð—Ã”„ˆ5+tÜz¦‹•ÚÜËß•ò;¢-›Ñ¢n/&‘Ç^è}B\n.[©…»+»_ßš,\\\'†^iLb,‡SÙÌöÆä»×Èö¡ÈÎûQüL©èãÀŒ¯\n¿òxÜ.°âôlqµ92ð·‰m!ürH‰%4/ÏÉL…H+ƒI7‚¼ÜeeÙ”ä­¶›ß„ƒ“ÞNG·ýÂzÍ­‡Ç¢‚x6á¨å¦\\\\ãÝpk˜w@)ž?Ñ	MøÐˆÚå\Zü}ˆ¬uÖ¾ŠTx|Vyö¶ÞéêJbË£R‡Ñ2KdùÁ}ðÄøÚ r|=:>>5>>Ü?+jÝôÊ•¹BýÚÅë\\\\^àÝ\\\\i\\\"[ñ”7Æä¯7›où¦ÅÏ*eq3·n°ÍØ§ïœT„Úð…ÆÀDø©1L\\\"\r¼ß+lÝŸü’Q*ô€ÕÔ?02çí[Vv˜7yVzê´ÌÁ\rôô9ÔWüÁÛ6sYê¯ýìÄásiò´ÕÚ-*ñØ¹}›~±IÞ8ý¡~Ñ‚üfÐ²8šºñ¦º°«›M@TÔn¥÷Àù]Û­­1¢.7“/®ìdnªrªª,||—[NË˜6=óÛ†s~K^˜[Ö$-Rß¶f8Qz¥hYórìEý7Áw\\\'\\\"²pŽoNÆõ\\\"WÀpK=¡‘Íwr?\r¡S›çŸÿ&ËÆsÇúåË\\0¶øãñXp­W»»É ßeô·Ž9Å}©?ã- 	bñOö¾ÔF.w\\\\zÕ\Z¸öj›ÚÍð»V	ùüñçÜëe¬å^‚^Ø¶Ö×ýÄ#ëI‡%[\\\'÷šÄ±Þ57ì*§pÎzë½1D^nîKÅ*0uÝE+MDÒ7~Ie–?J4÷U†ÂÝêÀÂ’e_!‚¡ãœÍŸ®±îInsSN¤n¢€[{DÑ\\\"õæzi8àK\\0©›hL]P,—úåøå\n\\\"GWGù£ªï)Úéÿtš[€F°MQ’SßeIºI`5ùun<#Zp©&q´`ô+à…|HÇKîåº¦Á¸>&ŒõOµ\rÅ#-Íï\\\"3~÷‹<A,·sÑãžGQÂGþû½Étvø\nïqõ’¾•,ÞÝZª€ÉÖB¾h³ìå?”][Ñzg&ôwMŠÇQì—©Ç¿íê¥ e€uã~‹óR]ÛŽjä¥àO‘ÐœÈ÷>‡h	ö¢l°ïå¡—\Z_T]­áÏ…ë0>xE¢‡{Ù0ã.Ÿ<Cmo¿º0Þ#—*?ý¨7ÜZŠ´Äþªè¦ªÚÖ;¹„ý#$.ÂM_€ÿÍX‰…×^¼jcQ¹µÁ£”Ys:€oI%¹Ï|#xöËŽßøC	…&ÀACG»¹Ìn¥p¢Ä˜š=¢@JŽý&!óÅ‘°¯l›öØyŸ™9_LÎ$ýân$p÷ F: {ÙÞ¹bÞžâ•í<tAeŒ 4+ªå22BÅw}RžqÝàðE1KY?ÏøKIðlòƒ½Í$l,và4ÙŒHàgÜqÿ+âûÌôðªŒBå‹ªÍ 9ÁšïQQÆ=qFP‘ò‡|0¢ßlH^„d®Cå¤ºeWli›ªÑÁÇqîMê¤áåÏ²CB©„à]E@¡¥Ó,í¶ç^n­\n5z‹]€ÿÈYú[ä¾Û¬]Ÿ6Ú÷’i*I6E–y7:v©Ÿ\n.7cÏ?\r^$°Xãj¸™2OÏÒÖl«þ ¬Œñë”ùäoÙ“Dl±’¯.* ¡Ä/Î$3«ñIy8äVIÚ.W{\\\"[@áÖÓ },ëMÉWê×w8	EÍ|—&•ùý7õNkvê©]f<=«*‹‹‹)Ø¹ãêþlï•­ÞÂW\\\"u]°G¿¸ÎÀ={£f7]¦HZ=.’ý§ú,ô2™¡ö…;¿¿QvJ(–á·tì‘xÌz(ë¿zÛ}’“¥wš\\\" QÀ& à´·Ðö¹^„‡£Ñ½í»ÿ<ªëîÂ1…šÃù5×?†]÷=Y´fuYSj^Ëæýó»6\Z÷2«Ÿ¼ÜÂ½ëW£˜·¦Û}¾¹òàC«-…ˆ{]«?ÊíhÓÔÒ²euxH\\\\Væ $tJE5‘“Såd9Qm8}6^myºvxx(±¤è*˜.ÈËÎ6™(6ÂE´Œ¥˜þ¶¢žà;Y¸<Ùû%-í\\\"}6‚þ})ÎXKšà\ZâM<ý@¬f›y CEE:ž‹´4Þ5yõ“£áWìëè¸áÌœµ9YÎaº˜Y`>æ1É„‡xÀ¡ŒÙrêfý®xÎ“Æ‚k*Wµûo<´„eq8.DžñóµgÅùl0Bÿ¢}ÉISSÓÎŽ0³‚úáÃ”8Jrò•ÊeåÒò²‘ñÊçÏŸwÆ#CY­s 8ý×^¨˜gY=—ã‘t½¿»èw¼Ã¶F–Ûœ»pcwˆŸoòRbÀ¢íé:êà!å7:G—4Èq¢šÉ;³_¡!y‚jœˆ‹‹ËÌÌ¤@ù=ô”™å›’°µ¶¶fÆ°ãøPµžœøNí>.ñÃç­¶‹írIb½ñB^»Î/)ù?Ù©;NmE·jýÛ h0Î·­åwïÃüVöë=Î\rZ@À}añ` m=SúßYÞõô|Ùƒ©µÎÿ`Ëßøò8	¿Ì¤ë›ú)Ô/ÇÎÌ{®ËµÓSfÐe%øï­;‰8ÓpP#—ï	0ãý‹Ü…nl_”íçl™^›Ò}€˜¨çÿ³ï¿‰hk,.b±[1*þ¿ùéAEšˆ’xÿªFÜ€@^Ì’à±)LBÿ\rLoÚ%Ÿ­FÓŸTvu¯ýïÆ\\0Àªø\\\'Ÿi¦ÌwÈ’<`O	Ìòÿï’«bxáœà¡½åJ	×Ò•t‡¦[ÿ]}¦Ñ6¼qðôôŽË`†•Ûñº3Ô•Ö]&ÿÛz¿‰=‚ Ã\n0Q ”Û»¢” ;sY{ÿ¿å¸âà´ °©ƒüIÝ{žtDÖÝý\ræÔ…5ë¹X›|Èýg{‚e	\\\'¨»xƒ×ªÐód71\\\\>Õ§95CBÅ®`³÷?Ëà’`rM-Ÿ…ƒãVµj%Ñm;ù¥/ªðXMU®\reõÅòf‘2!45 »}\nh­ÀsVe©ÿìGÏÏ®[ï.dãRäÐ¤¤í‹Šykmb¶0›Àû¥©9ZQõ6Âƒ×LŠÙf1÷ïoÎ«c²zo×ë­sµšñŠëËáˆz¬	óñäSêAèfÕ>&®YYuwýÔâ8ÿg\\\\lf</ij%—NüÏŸH3mhæõ?½ÇÁ#ð[ŒÇðfÊ\\\'¼0e÷G©:„½Î©)™áRÇ=`¸ûMoLñô¹Eˆ)šGJz_˜7za“Š_ì®¤1ËÅ=·[îzè¨\\\"ßFÇ%i¥AÌ»‰prtÿb@	xÕ+¼“ž‘1¤Ôš8?ÚºžÄÐ¼8ˆ5NŒåÖo¥âÑÑÑkÍrpêÞOMä¢Ä=b•\\\\²—i`UÒ˜V—ÛFZË)ð§™(Ÿ®	´åJ_¬.^9åùª&Þâ?cñ‘\Zpæöwv)óv ªÏLci¤ëÚŒÈ§£îÉ¶ßÕþé}Ÿ¶Ýv¢{x)ÜX~J€:òÃ>7€T…¤²ássLú§ö}Î¶þOß÷[ó±ÈŒÿ Û@¯|{ÉV_]gÞ[4A²Ã«q©ÞŠe×–±ˆ\\\'ðây^\\\"õÍ+\\\"üM©4/Ñ>hÃ6tùú8HòŒ–|zZÄoÅåÝ4¦Ñ3JŽcùsæ¿Þïæµ®^Ë<ß®±^êˆäªÝmŽfUöB˜=Ô!æ0­ÚéÖ½pj¬THªo¹ýáÃíÊnÚgO‚eø\\0Ü^€óšéŽ/Ï£|	ï\\\"›LM^°7Ò4ô™qû;0ÇÞqSÈÉœkÁmš)ë¢—»²¾ð?ÊZÎe´þqkGG£ÌÒ¸™Á-•¬ñì‘ù›\\\\ŸáÉ—~ì\\\'¾Ž>õt¥Rrf†ÛA–?qª2_JmšÁðúÕªÁÕ·áÝ™_Þ(ùß”UlÙÿål{DÁ´GNÃ#{÷Æc,M½!œD‚W»ÍÛ+¸X½QH-âÌÙ}{{‹p;vk‹\\\'ï]Æ/íÍ+÷N÷©R½/ëv–T‰†©4ìÒF !ñëÂúâ\r,Ü\nÁº”ÄšmÊ‹¿ÌzJ¶î×GeƒãèÕÞk^ì×°~€•èdWŽ8sËæ©>†j\rééoEü>H@ˆ Ÿòï³cûzçú|ènog®0\ZV)àÖÞ}\\\".iX5„5÷ºœ;g¢:‡²«N!¾VB¡ÝœQ®Àuñ9²ÍR\\\\®êÜ\Zà/+…Éf•“|Ÿ§%ç@9›\\\"Ãç£Ø¡yx¶GP9ô+å5ìy¼‰…ƒ5›ÄTÌ‘\\\'4¸ì¹ÏŒÛìYCÕ•M©ò)gµÉÞÌ`üüO:ÈZ#Ùùþ#Ž#Ö°)þn–‚É¢T†$KDíiE¬–ë\r(`hYnÉVÎ)Ø‚ƒ(ªE¿‹™Ø©ZIœo	?V&B˜S#ƒKÐ+œÀ{!:½qN\\0j-!»[	¾<¼µlßúªdM\nVQÛXŽö¯\\\\yîÏ½Q`xŠ#±™ÝÀ^—Ÿ*—¾yO»Ç-²€Ëe.f2=tóöšÄ¶˜Ã~Ïi\n<ÂSÜàÀ8G¬2\\\"ï2o2½ˆnJ(µj½EÈpË jÕdÔú5p¦ŽîÈ¨…)ì¨}\rÁo~T³Ia–r6%/oJ>£ í…#t_ÍK\\\'³€äÌÕ™IE9ýÞûSrÞž†Çžì]dã®ç=Ño\ZËÒ«ÏïžC»[Ìéz{aœçR˜ø‚ƒäòw{ÛŒq²ëDHÈ·,ˆS‡Õ¶ù,“á†§G[HmàÕ~Ò/\\0­\r¥–MS¥îÅùì¯ú¾&ß€¸£;[½œ1z¦ï…ëCõ =\\\\?d2§½%Ø+ùbØ–ÿ}]¼Ho3}Û=ºÌ.¥)“ÐêZ›áßêoT`õ­^ÊiYèô\\\'zàWò™%ã+îÛM)Ý‡–Îïî*\r‘7â\nŽ4³³uI´X¹>K>-mVx\\\"£	YXèµÍñ×ë‘h7Ost“†,Ñœ«Å‘IWÒ«… &Õæ£Ù|H9ve7ÕTËõºðL…Hn®ïYþ.X~¥Ñ­Ã%k:íÞï7dŸ©9Äs%õÛ÷”K­Ë¾œžšPÿhÑ”D¶”µY8×k+P²á#<–~æ¦™{„Vëh˜ZDÔ©Þ­>å±&”ñÒ!¡vûðá^¹gZˆÅæúè}6ØéÚH¡4¡8\r&{ •øN…•ù-ÛÈ’R3JpMºÓËˆ&PJì¦ó«èn°°[¬(‰ÍûÓ Eö5?]¢ïáÛ9l™À¦&ïÛß¢´ J{´üß6£6Ž,q(&Åßœœ:´-–ûŽ~Å° Y‚¸	Lfp€\\\"¾ü  ñ£AËÖæ¤hÌGäv÷MÄïÅÎu³B:Ê(RëXæXÿÖŽYÉ>x;?\Z÷µÂ\\\\1¨\\\'Ll*¤e‡×teÄÙbÕ|PéëWÕ>Á%„á÷ \r¢Êï{šÙv“|nïqÓ¦^pJv]éM \\\'\\\'„\\0(/ÆçÏ—›Ð’?…%zhjìn¯p„ªrAâ`ÒÛÚãVþ±cçãDÁV–W>GeÕ’ÝÅÁgÍ¼^sµ-›‡ñƒØ]¼;“U%UkUë´­Õ/6ÃãžyáõØû’Ž<]NÀ]‚Pízj,‹ž8	ªœö]I½—Ko\n¾›¬µÙ>©•š©±£`wd,½]§5PA.¤êç»y°ÇýíiQÏqvùÖ}™9>€£Ë,àHŒ—á£‘,k9\\\\üü[øeÓÞHÇeˆ¹D©M{Häºd-«+”~Ç2Ÿ¬lB=Býyì2ÀÚ	§žF‰,2Wªá922¢ï!4š^uì!l‚aä\\\"Œjìê^±*v	S[mËåàÄ–½kpXB^€^Š]4	5L…ãD9ßÛ]kU@—³}o(sä©§t#¨ªë]$&-¼yrï—ˆeÊ5!m.È\\\\œ¤‡;†mgÜ–¸%oø¶ç{pnTùåK<ÞÓr=ïé¿ížµR4C†F_\Ze¨Ž?“Ÿß¢‰ïd©Õ¯˜ì¤ ©?Ø,ß:0T_!\rÿ\\0Ç¥˜©”éO\\\'	÷6¥I\Z¾Ü›H­õP5ý•»°Í&¹tùY0Ïô•UíÁk\\\'[Å°ª¸|i•4Ì:ÅzP;5ÚAF×k’7E5­4pÄ¦ ÷q´SnÝn@Ýgj]¨¨¨ˆ‰‰Ç92sr‚Ž‚…ž­\\\\R;;ér¾ÚÅSÌl–+¿ø\ZÕõ‚Ò ò¾‚À•f¾òÎKà6Åz¸#%b‹¯{êxp=Zmmúvé÷xKMÇC1ø‰¶jŒáåõ¨Û=ñ×qÃð	2jŽ[Kn3®çB¤¬ì™½±9w,r6¶kÞqNEAfˆªŸgÊâ‹;Â%úÌVÀÚoúXØ\\\\¤óîL-½#¿4cø„°Òäg½PöS¾µ>a‰,zù\\\"±†M^?UÃ“4ëy`êÄtã´>ãÞDÖö§Ví‰ù<ÿGû	î)ü‚‡óoÓ\\\'}ž¼²Ïã­4pù™°i¼Nß|÷žSèd-Òº>9ô/áj2+‡z[NfžÃkãCy·¤°{\\\"@1q6ášªªªŒŒ[_LIÇÒ¾¢Ä[Â}ËõÁ¥)åùÆd=6ÉpšsÐ^2¢§¦3f^‚t^cÜ«‹S!!¡ñðº0ÝFPÏÄS[Ì|¾í+Û_ãþ°{à‹MGÆX´Bpp{\nQ\Z\\\\K˜ïÎa+KË7ÚÖ²Ÿ»È?LÐåì•vÒòÚ5^Ë/”|å—ÀïV=¡^skë,Ib°“]QL ƒÙå€“PVút¿Eùò*„éÌl%|\nÕ™©qÍb-øCŠI!.-6‡²’xåéÆÇ©ã„ŸaÊÓ—\nï¡ññ>²®¿øxî½7°×r³Ëý4-B,øä‹RŠ™ŠÕÙþ{?ƒÐ&ùgä÷Êº—~Ç8…ßªÙ}î®óÅºFk÷huÿ#/&g]_dFJyT?å‹â !ŽfG¸Âµ~ToÍœ«³­ã·>ý‹¡²ç–^Õ÷èâ×ÏÆáã%â÷ê·§¸_LæL›d?>ÿ„6þ#“„\n}Ãb >­0‚ŠÜ~3e´Rq\\0:æÿÔÅòJZíUeyú·~v\\\'X\\\\2ø‡.m­£bN©˜fŽkq]â×Ï}—¿B”Aúk#¨B®…°ñ;¦A¤‹Ÿ˜@§Ô’µ5øRªRÛBŽo˜2®µo×ÑÑh†Nääþ”ÊÑì ðª°ƒ‹›\\\'¸XXl2žp·ýæ€·X`.­(ÀsSƒ½b\\\"PîxÇEÁ	Ä|ìá¡¶°î¶PªwþÔŒ²Tv\\\'\\\"\nÞ}s“*Ûê•I›R‹,»ÓM•CÛ¾Ä„©ÛwžãÍJ¾ðëôÿí°FÛŽk†’ú&D\\\\rä1´3?9<) Yª·Wü +\\\"}òHbç`÷ãàÄ8MXo\\\\õçÂŸsN1 ‘Ì¼‰âçZowäÛE¹>ÜaÄ\\\'ŸCqn[µÔ(õDHšê_ÏMû•…¾Ýa×e‡l\ná˜ö@\\\"PátµDÉ¥U<¥WE¹ˆÓºhM¨9pÄÎuàWuS‹³°nó÷‘YÔŒñg”ßøtBþ[èBÛ\r„mù;Ù:0ØÔ(ÂRý´÷Á…Íï˜ðQ{äÍÐpáb€ê¬\\0sòV•AqÅÃÊ0NùžÊÃ#¾¬¼‰^ë3ÛVÛq·÷à¿Gpñîù¢\\\\\\\\\\\\ …Q±	èÙ_WÇêÚ#rÓöp\Z§)»>Q:±â,sq¥—¶ƒ(¶0ÚÂ|‘1ºÏO#¶F’:;R¦lY³Ø\\\\IÎzÙq£E¢KJkT—MKÍÂÜyIâL+1*3–ì´=­ ¢ò¡¼[¯ÊjáWÌæ¼Yéê\\\"Ìð§ÈoùôéuŠA8µ5%~ÖÄ=§Ó	;ýz™ú½bS§ªÓ*‚0Wº<|¬ÀÝÒóWQH]¹.ÅFoÞ¼IHH ¹\\0m‘3Ž¦Ó|zf§çœv9ƒñÙ#êebüùÒ)h^î´3SÈ©¡ED\\0„Š­1¤“V™Ž]<ÿO‹œ<;(³ž­þ-1mGsr:—ò: RµgÖ76¼î!°W*UØé„óû5¨yuSº†ˆNwiÈ²Ý¿›€èõ]…Ú±+ÙÙÅú“_\nj¶¡ðH¶U4t`?`°ó|™r9ç:\\0YNP+ºÎí	8É*&SÕñL=–Vûó6P“¶º0ƒ7¦¦¬k¨ÊŽvÏÅ0ªg7s¯zB×ó%ÖÝ>#Wç>òiìlC	Ý{Ö”ý“—.3ÝcYGóé¹;|c]ÏåvZè­˜94ÄŸµ–›\n;=òÜÜ¶ë7Ð†lr/6ÔO™ßá÷YxÃã‘–CÆ¿Ôï6^Ž–ÕdFÖ,th™U€‡˜\\0ž€=þÌÇßq\ZA[î§Þ8¤_ì»ÇaÊYrþ>á±0ïW[8ÎÕ§<\\\\³€ªFÏbJÃ»Z¯Ü{X+æãzs,.³õ—KJÌãÔäÒ­~¨cî$Æ¶’)GövÔÒŠã±Î”ëÓÖ—dêÕøóÐ‹ÐºšøåÇ‚>ÞJ÷&¨z*þ‡Á’„´¶²2F†ôÜlDë·øGPñ~^Î)ù\\\\×­5Çø{a|4]6¥V)¤AF„¼]!Ïµ²Û\\\'Q¡cÅvÖ…ßÜf€Æò;¸Xv!WqÔÌ\\\"å)Ç¡nDœFI§å?l÷|Ë¾ŸÛká-H˜2GcÎOî ÷òs°PøÎˆËUå¡¬K®Wÿ^#—Ù~šìTž_@Õþ}xxjOA‰Ï#¦åýN ˆžHbí˜/u\r±+ìØ¿xvÇ°ÞÓmNöe–×Ä·}¶:€VÒ+\Ze½íV†UDÝV7_±]Þp©ƒ2x¦¥]r¶¢Y•Ï>®D+ïŽg¼@L\\\\Ž8&´	ßîÕÌ;d€Ë?K¼ëÅŸ²Ë4×ú‘ŸÅÏ.‘~.ÚÞÒç\\\"Ex	¼Í°oyPVv˜•ô‚˜Á³b»‘ú-‰˜•,±*ÏÆó… õª2îÊr|ì”n0íè¾o.XÕ’[¡œ¯¾Õ_›ØO‹S®€ð[¿ÅýJ“––&ŠHHåY‹I²ÞÆ©e´¨…‰Úvž6¬Ÿò\\\\e¥›“-‰ì ®O‚dþ\Zcn\\\\ÿt€HJ1\nnD÷zà¿C@\n=IÕÂR¬©knW_è,ž/§AŸ$F`•I¸7©.³ão $X†ÊËZ¢N©e1öŸg£]«~YTS®1JÉÎ$Êˆû»V]šVèôÊUÃðŠ¿œn ê•ÂfŸÿUñÞ†_Q8V\r—‘Ò´TÄìI\\\".Ë?­ŸÕÕÚýÂNM-FñlÂ·›A9\\0éTä!èŠ£²éÜd_ÌÕ%šâpÎnpÜe®å¤´ÊPlÜ¡9GÒ|äùmR0ÞËªÜæIgSâûµ->V“ã±Ofl)Çè	îïªûÜ«DùƒL¢ð‘Eïÿ¤õkÐ\\\\Œþ)V8*MÜ÷˜]ük•ã£©sŠ÷ª›n wCs¤ÉêÜ\\0¢s/ìþ´ððê[Ñ*j©®]éí«Ìà„Á;´	aÓ)Õ®ì3.NÈ™ÂSy\\\'˜·­°]xß¸Mk°XS#KÐfè²æßï®£Ócö…ð×ŸÒ\\\\âîé†;Ø©ÍßÑÃR˜ðs>sÕ#G5À°!ÚPý„Âi^§+nÞSmSXÝœ°u9Þéz_Q¦º6MC>š©#\nšŽçeâÙ@0’R-=öUËª˜yÚºghýlàO††_w¡¥s\\\\z¸©é®¡øù¦.Qå¥~!D!Nä4,–÷|î½mà\\\"À],|×QI„è1úŸ¾;÷»·Ê´œ¢pp‰æ€bbCz.ØÞM ¡/ÿ¤îZÀ[n°¦«PHLW,®bWçÞ7sùúÖ#YHÑóÈÏ}„\\\\ßßBßâ}ÓPh‹§î¬iå±Û”’&%ºFI…:aµ¿{!;pmÆ/þŸ”îJŠ÷ŠN÷Ê¨{‚¨3xñ<ëºá+îºa~©ãé•MÏ?+À«Kûy÷só?Lox›¬ÓËoá?Ò´ªB5áÑ¹»³\\0¾ó{œÙû¢Râ‘=î§cØrÞûÆkPŒBXÖiÀZÚ·ÛÐ…8n‚ä÷á¥L=«([R&‚=c1âºüÆ»¬OFh÷BÄ{VXÊ°‚¨	Au‘dNkwìqŠŠ¤s¹:ù|Ü@Ð\\\'î=Ê3öìZcØ8!S2Ygzú´aøÉØtyU$BÜÇ`\rÚ\r>Úõhå¢i	Pøè¯¢Ö#ý\\\"R»‚{\ZñäW£AGBÐŸS?w¾ãÀ)Çaú§)-Ò“5GN4X(JW~ÑƒÑáTap&ó—ÉÈ-å’ö„ˆË^.cgF™éÓž[CCeOòŠ‡ªÂë”ã&“Ù[AêñÞïPW.$s#z]í‚Õ4óÑ;ÈŠ.Iáê®A^ƒX–ß#Üœ &ÐXl§¸#9¦Ÿï‡ À­P&,Ý:æÀ!¦­Kÿ@¹ºsùÄG$\\\\½b¶¸w²rMA={Kîâcõ”{­5nŸ«‚Ï@³—§(«Ý’Ævl.t€Sˆ\\0[=cígfÁ$9r?ãmÍ€Ñ­æÌÏãyÌ¡Sâ}©O…‘	Ï¿Yûl¨´Ÿr%‰\\\"ë„[jªÒã¤.HKÖ<µG_ÏW°o€wP­(Çÿ¿]Ô¦/÷Ëj¥:JÞDWµ°u(qÝãÄ¿”æðB[Ž¸±\\\\—x²M;ˆíè³Sb)EÄš{Jlb\\\'r°ñ´÷t¹‡«Ka×oËø÷©“µ%‘£W½„¤€\\\'Ùf•Ê§$²w§˜#p4Ó²ÂÛîÙKFu»TÂ“…*üæ7®é,QÎàô#P·0_æ§XK9^Aro¾–ÃkGDÉG·Yø©qì›a³“{„3;%ZÑ’ÞwJr¹}°+Ü0¥ö•Ï8jrœú¦ <u¹ýÜóGyøœõ+ ¾ŽW(Î¡\nqð¹iíúãNôèFÅ†ìo…Ð´ÜÚ8JyàÓ1±ö×ëGfæ¸?<ãGôàà=!ÎA„7ªbÆÙŸB*ºß]BÆTûl±lÌ¤>^ÑÝÎ‚\\\'i²P“ \nÒ0àöx°—æb„ø<IwÛë>AË\r{³Òò½ÖÛsË­†P¾Ü„~$Ó0èÄ°Ê§VHKõØ°1aÌßQ˜`¯øÃÖmwê¨ñ´¬ÿ\räkþâ«¯­ ìåÒjdÄå|@’›ÕAºLÔŒ³ï‘ÍÖL½u®kA/³<WÅáÎM=!ñ¤ƒg^G¼]Ãeæëü±÷Š5Æ?TÙêVY§^\\\'gnBB·lW„Õ¥Ä\\\'÷Q*ð8¬â#ó’—Õ¼ü<å‡u²q1ƒ×‡žl×˜X½Pë£šZy’®b‚«î`°áê°èòì°åÕþK_\\\\[L_WòTšøþ»/\Z® ;Â•´ò\\\\êËˆ*BÍ9÷ªg&oo‚Í{¹V\\\"â·µH¾’må—ø²å+¿Ðr$¥z“ÇŠ|:9qÜÛÊÚ`e4íÂY3(¤5·1œ“¶ùú!=åÇ½Ð4S½9\r:VËˆ´|²©k\nZxK†@ t‚6^s‘Œho<spß‡\re^C¾Š¥¸ÒñD§USïœ&-Åö\n¼wsþö+·¦=)Úp x‡}l£hý>lˆ¿Ð Â‚ß³	eÆœ€ÀŽÿ$ÈÂ*AZô6˜OìÜ5ŽQñAIæs®J.”‰šö¢¸>%AL2(œÕª†8Êk)„Ñ¹u¼ãnú]6[®Ëf®j>‚ 7â)8`’€oxÒJÕ6\\\"i_#[áüKø)ìØ\r]ë Ð‚uúÎ÷ÀækNsç%v–yšÐv½BhÃvW\\\'ËÍ=ìGÊõÊ&3O`„ÚŸ«N31nú¯¯NÝ]N=ÛÚ=Eô\\\\\\\"š¬uxà¹1;ÿÉ*¿ý	¬·>Ù¡®€±¹žç(œ¢·×Pá?ô—þÏØw¡q@¼ÁýŒÌÚLÝ8›¿%¥¤çæ`{¡Á©Ø2|ÆÕ\\0}Î$~T99¦3£Ä¤û_p’<–à‚™¾ikKH¬­Íšd“º~¾í<}[–’ëÖÄÎÈ&‹Û•éBýoaRÉ—\ZX™•æ¸uî8úñE]­!]4(BÍ>F,ç\ZLçf½ÉšÙýw~\rÁ´ôYÈ2åýòŠ†ö\\\'6³õÆÚ Î\\\'ë8Ó žÃ%¥í…À¥¹²2–F;³ô8T-V\\\'¯7™ã7:ý\n7!ßŠ{î–RZÿñc[‰ ä¯\Z	~O2d÷oßFN\n’Ð\\0=9p¶Ýææ#Ä›e£˜\ZÎ¤¦ ñ–õí$Ôaèt%°““ÂèÉÎƒ´!D2û£x\\\\3¢ª\\\\A\\\\_³˜5æ]wP îƒµîxà$ö—Æ:R‘‹Vå¾0jqSôópÔ\\\'½Ä°„­óQ§ñ‡õˆr•4Ñ¬ $²ñcÖ2ð1* ©8Šør.ºnéíô\\0X(–¾Úìêåu/â~AÂGoxÃ7xgBQ“ZU„HÆÀ]­‹øŸ\\\\ŸtZµ`rK¬®8\\\\žuwq<Ûuß<‘‰º	vjŽHPò¼{1nˆöXd	)Ð<]EŸØÄ&ù[i.øºh!ÛMÆƒqw¤ŒÔãÖMM±œ¼™\nú#+®B9SöF×P€9˜xîƒØÔnÖ£™µ¿ûb(NP;Z4!ÃÁgmö-§~í.!˜åã\\\\Ý@ÔÍŠ+CHyÍŠ„œ«\Z€ýª«Felª˜îðu»\rKª*Æ©4Î³9¾SBö‘kc0³òïSÌ¢`…ò~ÅÎÚ£{@O28š9‰z¡5HyÑµ.dúÔS\Z/™	Ú¼Ýäb©ÐXq0½*a#HfQê}ÏGQüµN‹7¿ëŒ3¿üƒ­Â®ƒ’’K;Q]qª<+$ZûK®bÚãWK„-û—\\\'bÀÂnÍoÙïekû‚ë¨5:Û‹]òÀÞîË|œöƒ,“’–Dµ­§ðÌ‹ŒÎ¢?ýÛJ+á	÷ÓX?©èÑRI8Sw\nÂ´‡ûÓ¨\r¦É\rT.n‘8tJþ0¢P~F˜7s©IßZÝ&A¿ª¿Šc¹rß1=>ž¶y©ò¯¤ÿ-)µÉÚíßÖD\nkHXvo…òžß@ìTï¤ÜeL¢¹ln%P^Ð7¬ð½_\\\"tüù8ŸX™ÏypŒQï2\ZZºE&Û°hüªöd\\\'EIøb|Äh#.­zÅ’¹«9+ßaT£¨Q3}fñï„C{¡)8:{{¬­,­­L­ÍL…Wû×²’\\\\.Ãî!t]\\\\ÐæSÇn®.ö5•¯k6dûð¹0%<GlôŸé÷[G™ñy;QE,ÇúP“„Vä dHLZuœ\\\"T‰‚xxÚ(ã\\\"ZÂÈ‰ÀI»4ƒ÷ûÿÁ½vÓl¬€¸¥ÓgKmÆìÌÂùFo_qñCÊ1[vº«VŽ*vRk%n ­$™€Òß³aÎ¿ÕZQ\\\'u3WUË\\\'Ù¹Ÿyãd]l®ŒM;o|s¸þµÕé¼Š\nGiýë¢ÄIÔ›ã-¤º’’’²òÐððpªVAAÁÉ×´™¹¹¹µuQQ¼3£äsŸŒü„ªšæï£†NÕ—_WIWÑQ\\\\U»¢’¢½0÷O\\\"P‘ZG·ÿç®§â•ü·þ>Þ8ýÝusûðNÆÔ…\\\';Ý}öê’ù×RÖ¯¢¾/ZÎ%­è•ÐÍl²q\\\"0¼¿Uîþ_&ñ:b­ëË,Ý@¶¶ï¦\rzœý:YJºXfö¯»ôä=@Ó]e+$µDl®MI«(ªT?/¿oqùFUwág=šéõ÷·‚q‚\ZÑ­-g#‰Âj+Óó³Ó‰€žèNñª“%±,±ƒH¸ÊÃó$-jÑu¤a¾#UÀðMGjgÌ:ÐðÔ9°’àÁ£V9.Ê€üÓç—H‚«×©Â±‚=uÖ\rž +¥ŽW,JÉŠ/k\\\"ß¸•ÐÇ¾íË½›X°ûMÃš	6}VmüŒä7É[vÎ+Â!FÀ¬Jëî(M÷ˆËÇWtÑÖk³º„Cº%âoo|¶ÃÄÍ¨fIÔw\\\'0XÕë]×SnÝ^ËÍ¬”•?jåètà‡Bw !8ï6¤dª”hÀIÂ€Âûyô6˜\ZŒwÌo)Ján°.Ï.ñþ¥ë‡ÏáAóŒ_‹ V.~Øao/Y&¸»é¾=`\\\'m±–‹9Q}é÷r]Éì3ÆÖ%³2?4t>öd§ºþºÂ?]ë;ÓñDˆo{îêû£ÄkÑAk{ ËÌÕ£Ö©¤WN“«³ws¡ZB¶€•oOs¡È1ÀS\Z»™„ýŽ4\Z ³o´p£\\\\è•hùUh}&ø™ï×éÙ8´íÇÝ†zn•Èò V3ß,pïÏ‡¸Ü2\ZÂå ÔÖÉç¨=«ŽSb3+˜}Ì6zSî™×Y\\\'&·S$bóõå21Ÿfräô<1ªM+ºKkÿN\\\\Mæ@`u¦‚p«Úv>oË¼¼€9?¨’ŠÌ&Ó;æ>Ì~Ý4=±ôqA˜áéé0÷D…êk–L V\\\\²ô*)M>øÎð9nQÓ\n°¡GÉ‚I¡XY¾yX°{r\\\"§ÛmÒ0cÛùZö\Z\rÄdâƒÎ´IßiŽÉŸÞVä£êŸ®S×ÓXÇLCÊAN4;7“vc*Ðý¥ye;æK\Zñàð`—£gß™Ä„«Vµ½Ëð\näœmáˆ¶ÐñÁ–7*Wg[d2¾¥¼ø‡k|/câ‡c°Zsµ¿h²ÊŒ‹ÏÞòÆÝÚ”	úíNüÁÅNjcd¢ÚT²š‘Oú£û€òeJùY“ßÔ)´dúö´@:±½!	ÆÕ‡- N\\\'`ùËÈ{ï4rJ­Çíw2(Õ6o¼{ÉÈ« ´°Q-Eþ&Îs$—êÊ%c¿›ê@¦özÁV˜ÉrÀSÀ¥nHa4pø&üT_0s‹ÞŠý8¤,\\0i‰@Ú½QPš´bq²MlçÇ¤Ž¦nI§!uØ	ô ‚$©ôÍ1UÕn…ãm_Gauî¢ý.=’m9îªbêÚ0aÎg9\\\\OØwV1†y@ÞwM÷\\0,5:WíT;â8Ò€ó¶nê¹<_‰„û ®åmÜÑÓH^è™ý9ãÏ¢¹ý£°nòýIÁ <úeõô¶ªÌ£g)\\\\•¹¸‹0ó˜TO6¨}øNn¾š²ÍÑ\\\'ÕÔ¯›ÛzÕ¤kæŠa¦Æmï\\\"¼”‰tBC‡S$±Nå´ÓÑ­r¸jy\Z\ržúòöxµ`U¡àµõáŸ”-ùØá¢Ã#ã\\\"©-i•nŽ\nÞ±¼´<ëî>â÷Š8ÓUå’·\ZUÞ{x]š¹€ÝÇ6–Oši³®Ì)WK˜P¨²càU(ûŠÌ<oÕr“„½Â\\\"¸üIƒ&ï^w;§ƒx™gUoúx\\\'¹»Ê<pËuVó,p$GËÐå¡¯Ù&˜VË>=³¶¬&Æ‘hž5«bÎ“Õ-d­\\\'—±,ªU ‰Q¼w8\ZX(ŽHråË}ÈQûÂ^±8É¼#(_w¨WUs¿·ˆ\\\'´æéd„	¿üb•¤§9™q6{BêbWÖ†®1lj¢£nñYÁÉfÊaWÈ Ëƒ±Œ»O“õ…–×R™Öe‚íz¦ò=\nAÅôP~ÅµÓí5Glo³öªeõ<F8VÔ„¾§{cw¢!ö–·+¦È5¥fLTÝ’ãp$¡}q2Ô‹&}ˆžë—NòDQ#Žìyž²sjV»?qŒ%h!ÆJ:EÓ¦@àQòz.^·2²)\\\"õª(”ü¯€÷Y!LôÄg¹Ló«T}fö/µ»&RjˆW«]&ð,Ùµö<á‡¹„{Ohå½ÙàÏÒ¤AZj#xD‹*5áŒª¹.7ËË¬—ß\Z®Ï«m{ÕÙæ±~\\\\X_ÊëÁÇOyµ¶•ÂY7¥‰ òŸ\Zâ«&}3¦ÿj-Y,“J›úÛË­ÄlDºY8Ä€3˜s‘=¸¼ªåvó³ÇØÀz“½â©ÚTp¹ü£x×É5c\Zè…wJKíé”l_ÃÁÓ˜Ó¶¨„ŠÊ‡z‹ÓÜl˜HÛ¼·ïqFŽm!gÍ2Â#~¬’Îm×½jãHq&‚Zl>ÿ¢ô3Ð£¨”©úÂþrÈ\\\\žå¸	O.r\nÊc‹n1¨²ª×riÿ>\\0¤±Rv7’tÈw¯\\\\áCev“”F0©—ùI†”&£ãUé)éçüÅ\r­¢oû?@ñ™“‡¾íx‘]Û÷—$«#ý2ï]Æ$W¾~­® ¶jøQw»Ê2¢G.G‘\Zî#DªŸRElK-ä|¾+ñHÐ?4Ð{ŠVä\\\"Ñn×&êpôùFücç5t­ÏB¹¨öë\\0£Ý\n­Ç[IZçþ Ô¹ðñ³æGF<«¨÷ÇªBßòŒcy%C†\\\"´w·[A<7ô¢öº‚–§…\\\"D˜ØÕÃ€ïØ¢Ë5Þ†›¤Y†Õ\\\"3È{ŸA×¥PgØÞqOŒÐÓåt6ó½œªN0Úgâ®ªÝn’¹’æªî(	{…¥÷;ÜÊfFMÝ\r–ÔÄUêtšQ²•ÞëÆ\\0\\0î½Xã\\\\äŠ´` Û~Žé+N—”Î…‘úBKÚ¡¼¢Xé±øŽAÃHÌ¼˜®¯Ì{4·£~ŸXÛ°o 8Kg\\\"¦MEIZxxÓuòŽ7îÒ¤&:S~°³á‘n“óóãPçV}!mñêˆ%ŒyF[jó•+ôï°Ö\\\"ÃíW0TŒÞéÚm°øÞ¦l\ZÜ®.žh†_ü\\\'iTWcóˆ@­Û\r«ek„=êW*?÷ë”¼°‹é;	ÒÄuÅâ­	¶ñ»’1º½}vFb`V ÑÑkF7è:í76‘Špoæ0\\\'Òüš:1}€è|ÍUh\\\"´Îúé¤b{C¿Jô™Ú&vÐ&µm¯×[ÎR.…G!q»ÖT¬I6`ø/ß»Â9¨Þ:aV&\\\\„a°æ±ýÝ¦v’:-_T‚öyÔÚ-ŸÿHÐÐ¸”7æŠEÏÅéaDù¿ÄŒ‚×S\\\\°¦âpuVTà2ÂØËŒ¨Ðµ‚ÖJ—>úŸÞú\ZDXÿ)§	}òÿûÊ°¨¢®mJi¤C¥nPi†¡¤»†n	ABbFº;¤k•fèŽDBJj†æ}ž÷zß_×ÅfÖÙ{­ußë^ûì}>ß\\\'“¬þ³«ÿŸe|¥Ÿe:·°üýãÉ ã®<ÑÉO~ý ¶Î$õÿùþ_Ð%Â¯Þƒ‘’•ŸÄæ.@’à¾®Þ*nÂêÙºÀ\\\'¨~„„Z¬µŒ<ê]âu«áèšØò³\\0±Ula›B¬?4î€É‚ìý†ôW¸ôâ´±&46\\\"ulcþd†¿¦Ÿç]ø}}7Î»ZQE­¦í\\\\ŽßÈ$[wÜß¸M^	Ô hÀ»º#ºÕ_=¢¾¾ÃNN€½½—œ¶CïÛ¡É3ýÏ*ìÅ©õék?Š†yâÁ,.Ì_ˆ4œ:+µÓ÷§è¹™Ç]€‡ú¾È-ÙO“à=‘ÉFð1ô%,>*†v‘Ãžp™|ÉL_„Ï(»ŽÔ\\\\}ÊAhdú*GæëÛd™OŸ=v«fÂ5cMèpy…¾+iië@B¯âžÌAÃ _\\\\$æ•Ž[\ZSþ«N-Få¿¡¥ùf§P;˜Há\\06èX&9gbÎñSæI&œèóõ1§fî„Z‹_)E‘)6žû	í‘ä¥ÆËTh-»xæ­>›HÖf\r.©X’X8JK†Êµå1Oð=¢¤q†õnÏ2b&8`\rãCBÝãN’Y]¿Ù}ÚãÕÅ89zCa¹¹!ÐÐ ÈuNÃY	dØ[å¸š‹Q+tzØdJŠbM±ÆŽTMœh|ºÑð{@îâ`$›ÎuÄ×š9´‡°=ÏÌ«®¾OÒÐðE‹·…ÓœêtL2™_©å.ª_.¡ÌñÊú{”û{Û÷‘¸*¤ŠŒ…)	Ô&¦·ÖFšìEâÔŠ–.9	¿;ÐiÚEÖà¤s°G÷Û¶¬o>¨-Àâ å—OãX|ã’>ƒä×¯%ý}‡ì¸ü¬šz@9Œ ©ÁFJ‰e»¹Ò¡Õþö“T$c‹¿ò›=þ€‚»žöJî¸T—LÏMkªo óPì9\n†{®T›uÑêÇ]ÏA: +Úõ7Žäˆ1ÍÓ·â®Ýh8ê	£Üq;­k³\\\'ÅE½á£5F\r+lB<ê6(;,/A&·ƒ\nOÓé÷gçf‚5ƒ\\\"u>×ö8XºZ(j³ÒÓ[mè¿	!MŸ\\0ÆŸèï/½Ÿ~#Ñ@ñý)G$ÖÌ²ä|Ã^ßA®c¤.Ú5ÚÓ6´z~Ï]ý‚\\\'Îû>%VŸWWÎc	¹âÃm×9Õ-	¶dã’0åTù\Z«ïú«ðãZP]½~Ð,f<!­ˆ-¼ÙÍ™+~Õ1ekD\\\"öá4	fÔõÏ/Ïhä?ü\\0]NM}©³·IPVˆWNXõ×ãÜŒ§åÒ¶LÉ:d¼RW\ZY=ñ¬í„=¿¨y®á«Ž`¦W_x®d(¾ÓkyîW4!Jö˜üñÇø8ÉÕÝ§´:·GS>æJ	úû¶.Yn!eª†Lt\rkß\\\\\\0àËz}—ÊÒ\Z«ÚÜ\ZxÓ5­?…è[ƒE¢âøM©Cn(ï>¥GjrÌ‘–ŠæUd¥ÐJÎ@#÷\\0ûçH—ì;–?ˆ\\\'\\0g{‰\rCVéˆ$þ|ûÂkáx\\\'á¡\\\",í­üêÏ^{ ù9]Îí ”{cu©Î8cM4šë/shŠu#äÏòb<JˆÇ[°#Æhu}¸(\\\'Â¾t1g<îî\\\\ˆŠ•<ôki|e¿Ç¶…¸sMœÆäBhœ˜Â,˜âìk}ËI*y5±å1ß	JÜöŒQHÓwÔñ+Wçþ\r½ßV®M–/á1âW‚ÀÎ.YÚ”ä±\\0©6ÞŠpQœn³ÒÃ¦IõU…Ì‹Dôjæk/oÕ42Þøaª`!Òc™ehä\\0Òò]÷±N¾m[Ö!l\\\"Ý1BÃR]4ÆÐFØ«z	zÐªËõk‡oGJË•÷OxÞŸídA¹5FþCåÆ/ª¤ˆ’óGj/ì\r\n·ÌñSØëMè»;-†ž\ZO+¸*Õèrª%ÅèÿW$$1´?ûºÞ†L+».PÖÜt‘B§X\r<j*\\\"-.œ®\n®´»¬ÌÑL$!(¨\\0ÖKs@ƒBnØ5Õ]ëv9ÎÅÑHôåõ-Å/ÕJÿ¾šs2ÖXÝ+¶¤ZÛÓ-ÿ¢ˆ¬Èo&RúÃÖ½ÉúN!›åµ&\\\\«þÕ[äÇÕ0QßE\\\"Jû®glê«Ê$ŠV…\Z×8€0|JÈñèƒÛG‹çñ¸~f’÷÷)¡`ÂoJ™Œ>Ý\\\\—OxÝøS“µç\n•ï-+¢/Äñ.ŽÉ£:ã²fóÇNìy×D…ëÀ{Ï³ºF\Z9gƒ\\\"éÑzl-âí°Å\\\"ÂÍú^<BŠñôå Î\\0½ã-fjÚ’Ÿç¦aÇî”‡ŠVnÉbw%Ð‡	Ý´·fF¤·Ý·|°°s¿ë\\\\!PÛü<(nñ ±\nÝ=¤8ú@Î«PüTí¹×éUíÉm„‹«¦i,b–îLA÷e½#\Z—–ëñZ©€æ>”SOYbb\\\"Œ)íº¹AM`@ØHD@0ÿÿkÊûùòŽŒåTæ‚vñûÅ[€c$\\\"áÒ»½4.~ëŸÚŽØ0A²0„†€ÙÔ¿Mt³®÷µ×g`¢íý/4QV/µ´Z†Ëñ}j	W£«ûv‡´Jö’ÿ®Aý•}w>Qè.GÛò«¹:ÔàY–Rüêè \rº«íÂ~-Û¥ÿ]ŒÏý{ó¨ÖÃ÷•Ù@ÖH»ld¦ßy¾z\\\\àúÇÍµ–=,½ágssíåyw!æ$Tš»ú\rF%f Í†ç¯ÛŽ˜+ùô†CZ±iCbhÙJnš³Ùäoé®*pÓ…ÿÙè¾î¦°|¡#Ï¾æàÔÜ7ÿ©^ð|zB“Êˆy\\\\\n?¥,&i©”pwxèW@Ý´‰\\\\añËÀVEó7¶å”ä»›*ÌJ]õ°s”Å^ÚôÆì[E žÊÎvüø5QÓ£\\\\þjj2w~äƒüÏ¼|B\\\'Ï:fìJHÅPþc|ð+„l¿:þ{¦ê‡KFøC¸Q¤2ö‰4UÍÍV=_ÆTõ÷­ì¼Ë­e\Zb>øTèï|›Ë@o£A\ZðC‘ðrIç½Ò\ZÊ3äÿíŒ“£áš5oñÄ&¶\ZÉ¯UH\\\\tŒ4{ëZ>/¸¤ÕDjÚË­¢Jßš‹Žén°voÐ=‡=%\\0¦<S7Ù}¢wõÞB I%2x\n€=žÄëÃè|Žžõö×ø8l‘<ŠUÝŸ”s•AV]a!G>UY£¬‘»ûl\\0Þ×ØÚ±Ÿ¤®Pi\\\'Ê¨.Y¸+úãC`¤jMzãZ-àKŸ‘AY\\0’%ÏEâwÜ!…¿gN`üº‹IÃô¤¹Ä™æªK€_`²±Ž/ÕUßD_õ-½M?Íí.\Z,v^]S7\\0’B©†!\\\"	›\Z=ë½ëë=×7È˜ŽÜ5‡°LEÒ5v°3VÌ¨oÌÂ°TÊˆj˜¿Ž€¡xÞ¼æÛ|Í9±ÐþF€Ö£jÉùJ°ù\\\'…épš„i®fÒj)Fµ´C`0ÝjJ `µ8Y.ßHóÚÏ\\\'\\\"Cì=[x&çµ\\\"úGHÞß+y\n!›®ö%@~¨\ZÅ¦S9†ÊÈë+ï,Ë_–”›tñãøå³@Ì\\\\ŽˆGþ:ŒUÄe\\\'ã2¦ô’åcÅ{¯-çø¾WóA’T³·¨¯â¶·ŽŒx§\\\'¾zœü[£NôƒþŒåö‚‘E`d/¸q~õ LÉ5»8Wé¼ûŒz©õ#(+BÖókƒ–Ž´g­†?£Eu?ù<–Ë•íDDÀSt#ß’¢w+;¯[kàbÚ1Ê‡NIQœÒ«D·Õ¤DæŸmR©ÊÏÆ³>þbÿÑþ¨ÌÎ ø:Z@´Y¸cÆJDÄÀ\\0ÏR»\Z®qÀ«¾Êª\\\"Ø¡‰/ïôA]Ìè&5vGÓœ2Q—å7(Ò„ù=Î+¹ŸÉà›ÉÝLÆ­ZÎå\\0N™€½OÕ‘åò<+P—`g³l_«Í3¿ŽfXTÃm:2,±n9ýâpÈ1\nÛ$³¬—æ™Æe_–úÛ–‹#¿ÀIT¾Ó@¦¦»>Nþø´ã”Â¡¹A§¿¤º™íZ‡n±™ýØ\nEøå8Þ}žP·Ñ–4%áaŠ2osµ‡“TyƒKŠ­é¸¢¢A:T«”ÕFq3ïßðê‚‡·~Rrî}‡,¨=ÆÚÞ.>Ü9÷Ò¡0i*.©i¶²Ä­hF®(¶I®®°¢ÁlÚÛÙËëË>ÛÞ††QslÁ¡N6ÈFãœ\\\"éE³AlØuÀŠ¾úÖI,·¤Œ²-û«¹¶SÐƒÉ÷Ž»¯XÐN3ùüÆhòð¶g[öªRQD-«òøŸÞOÓéZ7™ÍŠ¸½ÌwvN<\\\"\\\'µs”y„~©J0f§ŠC‡éÐÄSWsã§ *½S£„ÊKõü²vˆ:>•›ÐG†xÎ<H	C?Ýé5âæõs¼•\\\\}µX‚ûíHoåK]ƒ½õ+rÙLj®•ÉùfÑ$\rå\rœlG»	0DGÐnÛöºš›?9Õ*“Êæ‘ÀmYuTÇì¯ò›3ifr*{/¸ù÷dî3YCç1(·ò êBÂ‚jÖuær‚åD—ýR¿NŽjÏLF\nQ¾ŸÔ,Z€\n& ÍhV:tëãÒ¶qK\n®YP_šñ8Àµî{Ræ@üÓ½¿‚Ç_²íHúlÂ?m:EÃ\\\\MÂ?°à¤§×à #9¢¹µ˜Î_GàRI ëKíŠî4îö}~ôý(®jX)•ñÛù%ƒ“]ÞwÐm»ùU+xéó]}n5ÜÝa;ùµö& ¼~0L³‘ ¼S7QíX^HÈÊô¦‡.Ï^a<ÜÃËVnø­ŽÃÖ¤DmØêÄô·ôb:X±tÿDŸiYhúæ+± Ë©Ú*YÝ.WÊŸ•….<vÙ”¯ÅŽ·ÙòY»>\\\'yòjÙÃã¨ˆ8h»}\rQƒ BñŒ:.©üÔ¨¶DÏ÷½Md=ÑÏwOÇ½u ¼¾’äÉ¤tÐ\ZNCõI\\\"X>ørß\\\'l!Ú{òX£fí:5?Éäl(’È×d¯¹ÇK›ãi¶ñöá\ngWä.z˜¼âCð(a.ÄÛËImž‘Úy\\\\Søñ+5ÿ®ìø—¸5R©ãUùïâd\\\'\\\"ëßÊÌºð“Q	~xm0É‰cÏo½Òï`µPÑÄ¾¡æB‰<½S¥}9Ã©êÿ½õÞ\rÁ”Ä†‰÷£\\0x–0p_SJúÔîE9>ó–Gòëïã¬µŒÃÔw—m•ÿí‹\\\'¦¹ß¢æ |\\0ÏÔ#ù~ÿè@~Ó*ï`~}zCNášÿ±pòœkoâ,M ±ôäiVaÃD(ŠžE˜¨••CÉ/º^±_>\\\'%–³RúÉîVÐ>Ðš­¿ã‰U—ò^»ÊÔJ.š\n3ø)óÀJŒG)~U¢-C„r\n†¯“I¡+ÿ1·Þ±¥ÖåöÜY5±J€fRÔT£zKòP4AŸË¦Ì·àá¨J]\r¯àA™šÒç\Z\\\\üÀ|Á:sÃ°zÛ$õ$Ì/Á{b«W‹ÑÜ~9½ø–\\\\õ»?XeÃÛÆ–<Û)ÒÆS²Q<Jzî¿×õ‚@^¸ÑÝ³þ¡êÓˆz–7.¿^>­¡µözKÉ%ìßƒõì (ëNXÈ•(Ô¶Ç4rËi×Ù¥Ì\n4ÖwEP*È-¾•Zƒãv3…IàŽŠ¢Ã2FJÅ5g´Ê(fDlJ7]*[Ê}¤ZÂ†?ú‹±nîDé˜G_æÖ¥]¡ŸÖäóùÔ@é¡îÙ|_Uû—±ÔŠ*4Ü~ê¿;Z¢¯­×é½QþcÂÛ¨ýÖ*ª2ÞµÆRmóñ\ZÑ¯5’dÚºyÛXß`k—¤©ZíñŠbÝDd—³6x)Þó£m]YVò\Z[­ä‡Éd`ç¥¶y7á.m¢Çí›eEhlëo=±âF6 ÎÜùØ|qÞü¸¯åç/¦o…=\Z„q“7OmG\rH{ëL±¡JÎ9ÙÒûÓ	êB+ÇQ­Èæ¢nÁÃ^ÿž³ù9\\\'Ü|5/ÛïjLJÃÛq$Ñeö4ê¤0Œã³ÌôêIÑLÿf1µ7nøóðŠq|¼¶U9¸2²j<7r#‹Òßéíÿ,šð+Ø	¹ Ê¾Ý‚5öfvîï0/¬_59Î\\0uR8uÆçÆjÍœ\\\\]/‡9Õ5´ï4éØJü¨vÞ®\\\'kõ÷“sþÙBÍw\\\\ŸÒ;MÔ7¯9h–÷þ|ÙR¼ÎäGàûÜS\\\\Yó¾‰Âß»`£¿í}\\0wXÓ3+D£‰ê2î£¾?j€¢¯=Ì@®Yüf\\0·ˆÉÇÈ}gˆV­ŽvÕø„º¥Q\\\\¡c>ìkû9ò;JúÅni_6Õ-<fòb·Æqwìz‘Kœò‘tjÞf,xpëwîbÅb?q‰Î:Ë~Ë+¨T”êC~õ¼5X¦¯ü¼¸¢ã!5üGnºgº`­‚ú6)jQ_#•ì÷*êˆ)@ãzcäºÓEÚ?Üß€eç_¾°\\0ÕÄX‹ ÙA:³Ë—™¨•Ûþ¤øX¿Ãù\\\'Åw‘ùLÏ-sQÆöv?ÓÝ?îÔ\Zßˆ;Å/]¬Ghëø3U¬è›òcì¡íŒîMg]°?ñ;µÍÌßÉÖ›ö‘^†±Hµ‡øp™Ô5ÂƒË\\\"à89-‰q|:®íÙsK\n·.<ßÙ´†\\\\iï™íÂÑBÓ^ý36Ìô…þþÁÁF/hÚzË5²†ë\\0i–ýÚýüm\Z½§}!2C)èqLÍrƒÚæsýÅîbèÓãEsÎ	è~À&ß†-æ:iÆûˆ÷©íuƒ å¼}Çï¸šŠÏ:qÅK„3„sýà†\\\"&m‘ršö^ìŸ»Ð½—½oŸ=c 9ýÁÏó†×Ï×¶½MO@EKñ\\\'?û?ð=Í\Z4‰³òÚ8ýÝYÂÒ@üGÿ÷÷ýÔö´°´Ag 5¯†Íl‡é·Þåƒ^ôÛæƒŽH…8Ÿ‹p›^U!}çê+¬mCÎÑLþ ¶OÌÌ°±Â@ob§šÏB>Ây>%Úƒ¿\\0É:^ó\\\\Ôä‹Žz»õ\ZŽmZr;h\\\'’<ÜÒZ“Ô§½öqqg¹ýoãtˆxù¾:`o&y)\\\\¦.ÞÕ{ÄÚGÍ?°…ç‰wé*ý÷¤…“§„Ï1`Å‡ã•Ûd? ôLÜ»*Ãö[l¶Öâ¥D‘Û¼dàûgäµ<žþ·_¡ã~ˆºïõÚ¨pqÁ&.W\\\'ðÝùŸÏY~ËïZjjúšŒÿ[üÈî·V$µß,CùŽ¼¬ÖÃBÅ™A½)z¨N«±%o¢@GÊ®#½O&ô\níFKÌÝ¾ƒþuAkÉ®tK;]§ö3xI÷ìN£>jjøÔ¨QÌeÿØèDêS²¢½‰\\\"N—=#…^ŽÂ³…€áÚ–|ÓVW¹yÂ·I\nTÙCùô,™Eu³C÷óä.K×3…¦×²„TzêÑÑD\\\\Ü#mÑs§wãÓ*ê<<¨´3xs²û¾ªý{h`¢¶Ë}œPÄ¨´]5Ü%_xÖ½&ÒáƒÐ>QëYK\\\'VøCÇ_÷ýZ&+£2~é€9ôW462m>9þ¸MØ¬R¸T\n‰4¥ì#–Œ`#QÉÅ—‹DãÔÆ¦õŸŒ¡\\\\âvXêf…,\rÉ¬o}–ùðË”8yÇg‡ÚøóÊ¬|=Ì#ä2:Â‰ŽX‡ì.5ÝžðH¼á>ï*n¹ú]~±ä±Û„š¿×qìd4Íi’F˜®ÆïZÚi\\\"Dµ‡W4doÖÁ¸_åûýbœ›2:º2jÅîú0¦8˜v¡öPJ!ÒÆåi›lûÉ7• ëæ¹½žŸ-Åƒi¨‰	ƒpÊëy¢É…BÉ®ömq‡q\nÎ”0ì)¶è•¸‡iÁvb\\\'GQþXv˜gOt%e^ÑRý„ØpZµ€-ú+iñé\r³.·JS‡=SoC,Þ™…Ö°Q1¿èµËÅQÊÆaUïrÊ?º+n;–CòLþ°óÅÉ¶ûÆ:øà.—5Ä7õ1ÃÅlëgóŽ¼lG$TÇR‹§KôÞùµ»qe*¦Û‘ÉoFW9%\n6+x#?jÏú¼Vf÷~aàq3ï“åkßä8Ÿ²üñ1QéUYEã4¤K²ïSöø5%5´z.ƒ‰®@ÔyH.-83þmªÎEÀ÷¨GáÈ‹ÜAž(m´Tt2~—îZu\ni2Sx\\\\.¼MQ´ÖßHJÃðzŸ2+ûxn\\\\º2í)‹CH»ë?c€\r“QMØqÜõòŒ-ÃëMØÒêQ,UÆL‰¥@½öò©ìI$GÍd&N—«È¦ëDRŽ“¶§wÂ)Œ¢cœiÈ+óú†´¶Çcí\\\'žpb-ížîþ^°à”3<Xuß‘TwŽ«ÚQ^(bÂz[&óFçú­úÓZéýÊîŸö:ÒOjbØ²ö‰qo0:Êþ–Ñ	yÊ\rš©ýÔíŒ$ASpõ\r:Û:²ˆùü›¿õÛQÜH»¡_¿ßmþ)ªÀ&ä2ÓtŽ#s$íO®Ùßw’`\nÉç5,Rï¬½dgo	ú(Âœ–èÿÐÞø–YPýä…_ÈuJÖ”ù–ÛÇdÉ„Ò”O32êöyë^‡×ëµ*[ç:Ä1?TöÖ*4ÔŒÛÅA°é„øêü’	aKÅ94¤‡DøNÔ;írgÎ¦	–þêÏÆëÝnQŒE¸›hCÞÒc2XÂ‰­kÿä‹q?>2\\\\\\\\øHH\\\'æÝ´­‘ppxÔÿ®åëà>2Ðý‹c[YŠíÃ8$£X^YŸa©H\ZµÃòþÇš·š´œ>b6èéBœÅÃ2—_èçÏi|êå_LÛcVEšußUMB.²qLnà¤nÒÅ[ÃFâ÷Ý:›\\\"1²_XÎ‡„ÜÄš‹NLïzã·Üâ8/—ÝÃžÖô§+=©ðÙü¦Œ;,ï¬Š\Z‰â<`?ð.Ü:¥lcÍ~æ{³­àÌ/¶JþÅsé\r³yWÎ›…íí‚ªüz©³(§È7h`ƒÖúœœw£Y#HIÿ…E­XÀm‚¤¸·¼˜ðó…¬hÂQSç‰†Ñ5M±Î0‹}_è7+G³êì·K\\\\ìxÚüw=Tí±ë®ï¿²<è*÷:SL´|ª«£zÁ6¯x’UdýÀa7î$Û?[Ëö>§é¨¨r~®cëW\\\'_ænV!zškM½×\\0Ãi³8]°ÀGñº‚wñÔŽ\ZM$·Zð*Ì7mù^sLä*nV.d2¯z€ntJãJà•¢EÑE9°Uw§!¬`\\\'Ožx{zzzy¡ÑE@0PÒ@Ggx œ]¯\ZòÜ×tõ7¬·34qªk›ú-ÛZc×É#ôSs.ÜxÔú±td(oiuµ}ÄãÉtÏ2»Z_²½#ÃžFÉ–“9“ú™îÅî€ëºåuºð7<©>ƒïW‡¯¾?l#}=aW¥ç°è,±ôà¦¶ úx^EÚ£P„²ÿ¬ª&–¶­#èg´£šŸ‡‡ðÂ\\\\Ç—/Ên¢çÐdàe?1)Ìç«}U™ÈÀ;z;™‹NÕv(‡ºƒ&4àÃè@ÕjíãíÞ*zjzØÓÞøGA0ËÆBÞb6QU3I«%Fu@Ë{ÄÞÞýÉ]œù¹:©³¹!ÈÎð®3¿ðzåÇ…cÑw#{çž– J=Â’¸f–€f\n<Ò}™å™™ûŸº‘‰ËŽñ\\0Ñê€.²bHrr\\0ÕÅ/Æ\\\'16g‡ä°wçn3ÌÐc÷\r»¦9›§¦´Ä­®ú_÷ÖÊ]5Ö…¬¥žcÃb¢£ÍÞõYúj¹ï„†á\\\\\\\"­&èý¶>Ó8·êUðlíbÃžá+àƒÆYß¼ýÏ³xÿnð®µ‚=z½€òhllœÞ[	þó‰ÿrÙkqoE1z‹Zn>S÷®m7ÇGÖSrÒM>þ·Ìøè?›ŸÓ²MÑvÄ’_^f]¤ŸOß\\\"¥;/GØõ®.ãooŠ—_êg©ž|ï3½Kˆ¯þSÞÿÏöî†¸Ò •‰Ý•1# I÷AP†©”ëÏÓÛÕ†·S¢ÑÖU›%ój‰)ËÎq˜¿\\\\±@ø¶ÞŸš<ê‰¬ol\n7ÍÌRPèyyî‰Ÿ>)¶è˜«^•ÝIK\ZmYM6]¶®–àOò…oQpÊÎ³ÕÉ…úëœ|ìÈ¿Ó5ï/&—ƒ-îóÁ¡iÌ´½±žº¯y×™D”£äÄ—–ðÔw¤´\\\"¡\\\"	”\\\\£ÃNŽö¥Uvý<\\\\»—ÇZêÐ³&ÈíFüìí,;äúlwG­Ó6ä;(±ê?íŽ¨Õg\Zã–Àk¥9Ú2k	Á{7Í¼	èB&|Ž{²¹¾.$$¤§;Ø€xzí_Ÿª_nK¯í¬´ÿ_!\\\"mŒéâ©¸ˆbf„kÓ•‹äý5à2ß}Ót3âD´½¹Ü¿YA==˜ñl¬æm¢*— ½\rrø+HÎ_²ØÂ<ËÚZ°íjqƒø”jãç‰ÆLîš‰¬ÁÂzˆxŸZù©}Ÿ	šÓJ\\\"­ê÷pÑ_¥ AÒÓs3•@‡›Uúšuh˜n-Õ¨5œîÛüg8¤c°`,y<©v±/ºr>îr³¹	¹å©ººŒ•¹ë]z\\\\É(êj·ØJH%Áôplª£×y\Z˜ÅM¡Jà•gºÈþ|ú“2TZ,ž \r§½p§GIçòÑÝ\reP¹¬êƒ~v¢\\\",½¯Ûc“x™—¢2]õ?še0~ýùÒ!¬ùø¹•©Øƒå=Q\n›ËÏÍûóW*žc\r_\\\\+g?ðÝ\\\'	÷ûB7…´uno÷Úý]i²Vpà+„‘^Ž{©ãŸž+?ž\\\'—\Zˆë]îîYˆv]YúÐU7šíÊzòl)¸0OóJœ”½¦\\\'TV)9‡I£ày‚	éMR†_éXÙhŠ	XJ	¸¤O—ÑÐ<t­u¤ÊjËÊËËkËË;ÉÉ5óÅ89wºof ©+ßJéí!+ÂÞ«2·<7Óþ·û7#Á˜€x=¢úÕÈAí®î4T¿‡§YÂÄ9˜¢x‹’-®Š¨º8sÀhúÖBÍg1â\nüƒ·U6¥Ì^ª¦²÷²¢mòêià €‡eÛ‡”gF]ÆÜ‚Ú·hÒg¯É°¤ù/ôÀµË	y×Z?¹ˆKT1äë\\0ã >Tåí`CVÝ“mxS‹åþâhðÍº÷þe yÚm>ôæÛÄ‘$Žø@œ :Þ°ññœ•tÉo2OÃ¬¹íßµÚ7‡\\0áž\\\\•˜Ø€¼c˜Ó{Ý®š¬Ä8n¥j¹èf©2õ[vèËŸÌ\\\'K?:ª6É9þ0Ë\\\\oâå\\\"zpƒeä¾HºXK	Iàÿ\\0|(w>ˆ®çY±îûS¦ªñÝXïC	 i£&IÐN§*[<ØÎôû¦eFésû“áæø‘½|Ùy³Ÿqkž«æÐwº}WŸ;[0€]~ltî`8ÄN8éÁ)‹]Àüªa¾ÀÏET]©q¸=¡JÐëÛÓÁy¿»à*` ý¡Šêm‰DÀñª½©Ažf/#\Z.åØ‘ÔYH5u‡—ÓŸ_…7¥éî_Pþ¨Î[õàÛ›à“Ìàs(êj™Ìfwž;¢jØ(ï³+&GT‰HÌî&M^S¬mwˆj\n´FøwžÚ6~6.”ú¡L )$€Ây*…4·|¤qáµ7ˆÅ6›Š;o4x“øYÍ‚ÁøTñ6É¥8«è]¿$ýKÚý}ãÊ(Ý/;KËF¬—9”è˜@µµŽÌÆ_°	lçåŒ,áƒï·gÒËž·}+×à?.ôÁkÃÂ¹ˆÃ8HR°×~Ãé-MfYPQôù*8…J=ºËüxÎ®Êœ¹«5¨\rî,ày=d±Ù0¡g8{”PSlnæ„[6Ë+ŸhÃ$½Wg¬a|–¤Ewø9\\\\Á†¥õ\\0ài¼®å1Š/¾áWþ\\\'öáà\ZÖS’ùIIÉç5ƒ±42˜³ØÅÅ6ô-:7\\\'ê·—Á>Wõ Bºø%dMwü÷>úmƒoJ©LŒ*-P\rë}\naF×±/àø¸8¾É\\0kë„DàÑ\\0+\r\r^•Ñ9ËîÑ‹:Š©¤¼$UB¨û*ø÷ZCÒzÂhpBI_\\\"l¢ÀñŸ>%P¹òó×áQp­Iß¬eß^mŽJã	/ût­Y“œÃM¼m}…ü™öa½DÃ\Z|öNæ_6,:ßÝÝýŽ·6òâ¾Á@\\\'F»û\r¥~êÊz\\\"$(8=;;»²\\\"­€˜½yz‹X|A²÷ùshhèò²I\\\"kìºóëýé#Óëßz<í\\\'¤»GoÉV~Zð4Û„¡=yiKY\r›M´{,Ê;¨ o	mëèÈ²;ÿ=]¾jAÄ¼ù§Æ¦ñÙ¯Þ»1½ÌÁÇ`©Ï¸3¸‹T˜	Ü;z{P	CKÖ´ïGÖÏu—7)W\\\'±L|‡Ãd3G?4¥$y’¹ÀL›I;1\rUÕºsºõÑrVNºh$v°i”þæ„¼¼mÖHôq)§fÑU\níªv÷ó\\\\OB±x©cÃ¹•B\\025„ä†S>A{ø…é-;àþÍUWuÙ×»÷oÉ=•^™šzœŸYÆ>\r£/ÓVÁ»qh€%:7TžÍ\\\"èG¦%VW˜JÀ›‹s\r%Ëã.°IPë–¢ìyu™ÎÓZ6nóŠC-ýç‰?ûMå²¥ôÞ~-h\\0ÙÐ0îàÈH¬ø-Ü‰ºYàæ¤‡šCn¯®û²¯¶oW²ƒŽ¾B®óSæ\ZŒ\ZúS{ŒlK;Ž¿& hÈ–~ƒZë$˜ëÆïÅîmp\\\'p„£ÞDppt\\02»%ž“ùRçÒ‡fƒc¾˜pZç´ÍWÀœ‰ZÙî\\\'\ZòÒßVô¸†ˆ ¾6Ð9ó#<F±âKD6)g%ÂÞÔ)63\\0Þƒ=­âi\n\\\\häL7ý¡oæåŸ1PZtmzc¿ÝŒ¸&t›ÏO­Ë––YÖK0)„”É¿°«”g<åkˆ²¸Òšßc?@ïgü;a–_•×ï–J\\\'mäåûæ¥üwf~ÈÒðÈ~v@Gà|tIù^ÀN½…^Øœ¯ûAÓi¨2¨¦î¹:4ÁUaªt‚õ§ÅláË:KÑOM;óº²_X»ä?·œ§x€\\0-¦Úo÷^±býÍg6H:4`©õTÒf$..6þs`À¯™JÃÒ)PÙWm§øÖcƒ-Š†@“äº¤ÇÐbZÅ>×þ@q–¯ÿLºQÿ~ºäJ%-ƒ¿bhò„éTÒs-Ír\nrðø¡Ý‘}³ý³bÎ©èÚìo_%RßDîöòÛãŽ ëH›Ñ,\Z†ìwP\\\\\\0d3š“¢Ñ!¢…Ÿs|@Óð²²tƒi´vi÷Õ·ÊçêäÐ\\0Q`•RÊª´Éžÿ°m»Œ	$\r¸Ï’†_Vø	â¿&õðo¾¼BÇô:dòÙ7:èî~¾è²ÔÚn;n¾äã;/åeý†Q/ªFàÀ^ãÞä_¢íôë¯{.ŒfjÁ\\\"ØåNŽäÓ\\0ƒëð3Ñç\n{¬â ùðÖ\\\\—m&áD}ÙOÇ/î¡¨=öKtùÿ‰Ö.(ñ<q§ n©#Ðÿð—e=Ü\\0ÕóäÍd<ÎKì¸:Õ^^[›-qe€Ä÷²º¦áŸ¸KÜ•7úÅSø„¬Óy£¢\n¡_öGP\\\"‘’ÍHñ¥¸AÁ+…Ï\Zq$‰ÿ:‹ÃzT†Ðrdõò}¤¿,;ÔÖQ¼i0?V ÿ7Šù§ïÞÀ”L(\Z™ ÅÊ~.øõ†íDÞ˜÷ÿ<$§ÇMhÅl}%Ô%íÑïYÌ‘äEÂ²YÂ\\0jäŒÿg‡ñ­!ÖëbžN2@pËx‹K\r´AK‡i÷È±]iÍùïPè1Xö@BI™<}ð¦¨¸Àÿc0¬<=·3väx*\\\'¸Q·£8p_	4È—[iKðpè5Å{ÿ°Úêê1ÔÌ{(Û–:E	Æòè[÷¼»&¯%™ÇnjÈþF\nK³aìOdxÉš} ßøËª–EòJQª…@t+S2->îT*ˆ?	=3ëRºÿV‚Æü8HT¥”´k:…FuÄ`„ET¬Q<¦›!§ÃW1ç«­e×˜©Ù\nÍ+R0Í\\\\Yi¾	šš8’P½\\\\kbïúª8¶Ñâñ›ÞNàá}ìã^FÔglˆ¹\\\'¦h(Y„÷×¹ô0*&øœM¯kVçÃ¿¿„Éx,p©Ø…c;`V9Ô%NŠTWeØ%‚jKúsçÏª`?#^Ý;Ñ«¶\\01ô‰wP\\\\+å¾.ysygý„«­Âˆ}”RÆAó‚ût<³j½,1·V£Ï×¾¬?E>¯–\nµPŠù¯þË‹¯14ìŒà¬«ŸðÙ¨…õX6™mø\ZLKÈÓz›¾sj†½ØD\\\\6#,VÒ5áml9“ Ñ!@i»Ç°\\\'üÅ}¨\nâB¨\\0ÒÞû´£IÕm-.Sß\n‘éV9ü8ÐÙ>z ñxÃî¨g1AVtñË	]¯}kD±y¦9`ÐP\rÓš\rg¼çF¬OvçXJÆ&\\\\ºoÎjK»-…ç’gtº0¹F}…–B»8¯ò.h/GPÏv¾§Šî°Qya£ùôý“´ì*\ZÈ1Ä!â÷xì}Ê¡aq¨~+\\0ó‹ªOqwvÁw|§·„ð¶TÂ¯ø3ç‡±—JSF‹|7+ÜâPµkˆF¤&k«5=tÂÉ˜ù£ÂÑŸºæ8;j	<ùà´­,ý½YêÁoÔ·µÉZ2Ëò›~	ìÂÆø—wÐmEÍ›óTî?ƒöP[ø®¬Þ±•*Vdn\\\\Oçåë)`+ùÏÈ\\0Öíù|M.‚Wí®ºŸ£÷áþ&V‚W±¢&ÔÝÖ—ÀC	þôþóÉoÐ€„\\0žóÜï¸ÿ.VzÝ¾mðºOK;u¬§ÅÎàºÏ®U¿×‡ÝÜOð.nuÍWÁÇŒ¥Y€¸$ô®	t/È(¶Ïh€>Y	jzMxÊ|CÀÅ‹9TqÀa0\r\Z Ý”(ü>Î~€åÂŠÁ5‰¢´èŸÎë1)²WHhˆ[d7ù•àeë[&FDý—1Ø™ÞéÃ>¦/y«+¼Z\\0à¸„¹›!\\\"±ÿS·¢)¬Ö˜[J}Qn]ÕSÌ·;“‘˜•èfý×%eï$´çÎÌgA;Ç6‰·0ñVäx ûeœU8ÄßßÿàÃ2×ç¤úT5.oÙYVõ´1¹¨*“À†@;7›¹+º&á_Äoæ0z`VÙHXï_£Ê-õ`-õ8v¢Ùl\nùé³(ÅsmËÓÓqÓjº§¸1ªÉÅZ´ ­¯r+A\Zú?ß&¸ôêrÙ¢Ëçpdlw“{…dFÒdƒY›„‘Ô¿ÙR=}\\\'Íå²žê«‚‰TGÕ—%†?Ùé=ÕÞf¬k<µQÂ[Möp\Z;Â÷¤?ú—è%€\rh_\Zˆ;\rØí›î\\0å+]ÇE= ³¥âô Qñ2g$Ô{œ:}¾#OwÓÄïlNkÚwŒò%Š¸¡øv¾eHFï§*¹öm![ì¶Ñê%²¨6j‘u¸‡re$€àâ²ãÞ¿‘%ÅˆhÈhž\\\';®)†qÇß’‡¶q¿„iM8áÿµJŽnëû4Ï°1Æd…ãÿÄ\r	.^×åÿ«§¤!à;Þ”!ÀúOzñ#¬¬±#&bŸË…ÇK2/aÿU¼Ú$ý`pÌ÷á†ÀÊZ‹1,¾Eøß‰Y[†H¼ÐTÉd¦÷|C@€#¾@MÝ	Ï·é»´òý3j£øÝp\\\"ÝDë%þ¯Ý:KÖªäÕàHÞº–Ùïì+vœ4ÓD-Av{gR~èÿg	¼\\0È³j^£S/QÁ9¸§Òéù+æ1B¯¡¦‚«¡¾ÿ\\\'úwÈRPPPÊ¡”©1Ïèw˜bÞwˆóÎµ§ŽÈ]¸fR3<ñ&H°¸KuÁhcL:,JøÛ}óÝ=Zð[pkúëtUŒÔ	ï€õ¹§hïNÉÁ’¤\\07—][½¥ÝdôsÑpã¬áýPè}ZÆxwáÔ0I7hR†v*z?x£²Ôí5–Ù·o)ëiÝ/žÂ*dwxT¶¥mûü>â”,wˆ(ñ•÷OÂ›Oì‰XX†HÌe`ÞDF„÷*{b j„AQžú—ÈLØ£¯\\\'Hä2n»ÆgN«Ê\\\'õmôê¤ÿB‰…n¤¿#ÁW\\0¥3--J/ß(j¹¿}ÄÆCK˜ÁOAÇÿVü0¬×âµoTUOï~P(\\\"BÂå„ÆÜ\\\\¦£\\\'ç<+‘‘\nòòØØØQÅw\ZÑÓf$—EàåûÙc!ˆª¥Á¾Ÿ11þbgöë&^EpGpD‡Cyÿòcˆò·OàlIð<bìH“eË·wÛ’ûþ/·úà(ÞŸ«k¯Ü<*9žCœ\\\"Ô¢fH×“²³F\r}uŸN½\r“õy6žeÈZod¬°RvÕÕ8³	:=!fOáY×J–`(à·LèhˆúºþU·2=ËÞåªü¤‘fK’üúñ_·ä`X×_\rQ™Câ“¢v-QÆ¦&àÉ„ÚŒ†`œŸ¢¨Mê›Êu»fQóÔÚ§Ý¼\\0ïªÂñF¯Å[¤‘BxÙdÝÑ¹mp¡}KÞÆ ^m€á“õ`ÃÂîi9ÃhÓ¿É?åÅõ‘”…÷>§÷/öûœ°¬?{–_W×D\\0¶Y$FDDôöömll´Ö€\Z$¾\rY¹éW+½Á€r”n—‡´\\0Š\r‡o\\0¢å!…FRÈ2­†%ß”×p¯gØ^«’5(A]ðAa2\r§AOCË<Ü×ÒÊ¿Ê•6R4÷ì+VªT[9,èÁ¶ýCGŽ¼?yô¥5ÁCë}0Ý–ôbQªð¿Õïóë©£2èè©òýÍû.QxZúÉfv©?ß˜\Z¼×àÞ|½Ã0²”©0=’µ¿lP«7¥+ñ7lÅÂ»á¨—pÄ\\0PÊ-¨`~ÃûDÃ^QÏVñ¼=ÇÜ\rtàM®Ý\\\'TøÍ‰¡N´sÂE¿pï•‡Yoïì^‹=‡ìÌLãf[+¯–Ht¤QvˆÛ	]ÓôYýÑv^ŠzÄ®(þÄq€™1eÜøõs­Ù†±Ð¬OÃ$¦Å2x²Î±t#­ŠÄ‘¥}(e´Ö.³^ŸÀÇ±ôç	T€“û&÷÷Yæ_TFÝusçi`OV1u\\\"#†ÜË?CC»ïÃqm[²«Ô_Ò+Áìtzv`NM-:Y(êÆcìDy~#Ž^ÖßJ·îZÙhÁ‹”¿ÇpÙ–\nq’Uã “ü@(õWÂ6…€7ê{×N=¿oÄ‘Pñ¸¬Ö\\0«³£”\\\\•k™ÉÉºã\\\'Ïs‰01r¯–åž2„Ñëz‰wmFAï[\\\'ˆâ*‡‹¾•Ûr±ù°8Êý¤Ê3þ{S¥×ŠŠ¿Ú4Õ¹à<»Ûä_È>½·‘~p 9XuÐ;#<bræõ{ãóÍ³À]äŸ½¸±v‘êKúî\\\'j.¾\\\"FâQUs…–¿§(PM°®¦ë^;T	‘Cî–1S»< ¸”ýÅb‹y¤€»A]S3_¼ñ¼÷p)«Ø~°\\\'=ÔYÍôã(_ôße‹JÒ9ˆ¯mÈå‘%ccìåy÷@½õr^ðÙ\\\\\\\"ƒäòŸ$VêàíÉ$õ>¾ø¥´6–Q9ˆnäå0é¬º¬^/làK?]`©b°3t¸’ÊiâÕ¬O‹í§6à£nÑà\\\"h?Óîkc‚]K~ñH¿ofjm¿Ê\\\'gŸ¤Ê÷“°_ÚÃ2•<Þ¶iòßYr;ƒ….ùº—O÷iî3,ï~d<íðZÏ¾gÆ³ñ&;[mBR¢ÇßÚàÚù‚v~T¦•N§nývïv½`\\\\“¸¯˜%fØõWá)RK^·5¡×}UûÒ~žŽæ78eŠ°pÕÑëõ^¬¥$^¾ÒµÍž×ÐŸÜG!`uIu¯Ï‹¡ãHpI¡¯ø ÝPHÏÛaøÔ €ƒý·Åþs?ªÎ ÃÌØlº%ßêàMt‡b T\\\'GàîÇ^œWc ³KKÑ¶ç+íœwl¼i›_#÷da}E›p\\\"@¼å¾l<òÕ?=œ‡íø3Ò—MÏÄá¼wy©ƒø¼ço+zñâŸ EÔ_m!1õ:ÄÆnuÞÕdòŽ†ïÊ1f$Áx\n¨·‘þ[˜B¯ÆSY?†»¾ïRû¿L!²ïê\\\\;~äˆ¤P‡³„¤^¢‚gÉ/òÝ\\0ðE<ù?}Ž½Ñ!yù”ŠGºñš‘Š«3±Ù¸Ê¶e†ÕKr´M®b‘kéG€žs@æ\\\'`GlÛZÌ’^Cwò$¾+PWÿ!´­ ’&ü/]ÊßëÅÎgÀÄ\\\\\\\\˜žVâb¬2îdÂe¯	}£¦ø³™¬€®S‘¶“ÒMPŽ}‹8¬l÷Eµ”øöt`Å²ŽõP³üUÖ²ßªÁ.+ÁÌ5-.G>-iMÚéß´“bz*+ât_>L[,n™°¶±µ&[M»Ë­äú•í%Ò;?þ[Â¨™Þ½†éµAÍ`næIA;=RÃ¤\rºÇ¨³¹ÌþßæÑ²\\0+™ÏÃOŸ-7X·ƒŒÕ“6HøôÓMž-‘6áÞ—Sf’¹žè*b&«Â˜^Âd²§OŠ06™¨ûñ¯èn3¾{	¾þEm9ù1ô¼âoJZcþz¡‰¡%ô¨*NFB±‰\\0¶] *Ïvê¼Œ5Òé×Û[¤¶þ¶%tèdÀóá^\\0«=5£ü¹žG[¨F»1QÝjã*—ðÒ+ÒÞ“@N4ÐÏ•Wç|ÿz¼Kör\\04+0Èé2´Üt*³ÃF»ðp`aœ&¬çñ½	‘Ùì7VÝ7–ufçñýùß½K}ÛØëÝ#ãHìÆƒÎV\\\'”pWþ¤÷Jº.Àfî3Ôœ÷‹:lÈƒu	.«\ný§ß§‰ïQÀâ%zXÃ@{ZIAfB\\\"äo~fá4x—^ÓÍ,Ït8øšé¸¸dŽÑêwYÓ”/\\\'VÃÊ‹,rsï¯û.!„`Z·ZGfY}#yíÜéaq¶:ÈÂØ¬¾=BCS4W’}¥´žteÿoê»Ñ^õVfÓ±†!½Q.7y½cSÆÒ_¼Q×í(†ß¿o\nªöGïþä9;$R!ªa$ñíö~DÔþ/E˜´dGàÊ4ÒxÅÑ¾óÏÞØªãö¥ñÃÌô+˜\ní“ã¬8“0Ý¿3m½Kg\\\'½ÿbÍW¤ÉyÀ&\\\"Öp$Øßâ7Ô{xó?Ô(¼èu\Z§ey[8‹§ÑÛŽæ³ãäså:i2w}??š\\\'2a).Éüëu¿ûy„24ÑÝ‚R\\0âÜ.sâŠõWþî©ÆY!`~_©~ó,œŽÏàD½\\\\0ÑM´&,„!têv7\\\'ôÎ\\0/Ù}jVŸM®™î·´ZõÎŒŽÐL€Ô£„ß÷¶6|Y<÷—ãœé±L’¶¯(\rÅFê†¾ÜÅ2¿¹~éùÏ	Ú°&Ûóîõ›gÅ„c×“•VgstP#ÛæéÆPî]÷EÄ¾cAoƒÒÔIû!†ÙÃ‚µÈ‡•÷kŒ1!n\\0ÔqÀÆß¸¬‰«|3{*…|ªm!ð½ëj*ÿ!å³·3.¸jwh,¡Ewvüg®8ÂAßmö\r€ÜÃu]•ZOÄbÊXp˜àsêüÜXãµ÷ŸàêÝ})êõÐlš´3<O–ðÒ=ë	<^\\\',‰2\\0Câ3UýÔ¸ã‘]¿%9¥GJ™1j$ì\Z°ðQ0¦U¿…€“(«táM×˜‹û+mÃÑäù†¦YàIâ¡¯Îñ™zß¸yN7§w†ú.Ž~ï;±Û–1±g¿×Í¿oäåþ†\\\\:¦¯csÐF ‚óã%òÚÿ†GP÷9{8º©ôˆ¬hg«¸ÃÛÉú°ù[ç\\01Ò»\\\"—ù²™•	Ë{}GC\\\"¸_Æ@‰¬{ÇIÏ7·õNÒSÎ.Î)”õß¸äRBC²aRÇŽD²§L!v|Ø^æ(ã~?ZiÌ†{ž]Äa‚íÔÜ³fÚÀç«m/êÛ”¡ž‚†å[Óžx¶€‡SÔ+W®•ÖåÀÝ¬7]«¼ü°BoÑAêÚ°©‰Š—¯\\0S¤±‰Cf]-jGódP[ø!Ëge×5\\\\-TuÍzÑÒRÒ¥· :°êâº³\ZG«²{ê‰öÐÑyÐ%ê}8^æ´>„ã¶«þš\n?ÿlÎŠù© soœñ£ÐÌHlù¾¤ñ£þÞªP2IµîÜÀ³¹CgçOh» ‹7&b¶ì\\\\h@4]JºñòNíX\\09Pâü%ì¡!S‹•ƒ8’Ûc$æDv\\\'ÀŠFãw¥à£ÈšÃmQëO‹x®lµÆô;21ƒoîEs>9„¼|s¯9£ÀÞ»¢W‹I“ @xÓCM:©ÃþÄC‡–:±eê‘é&u‡ÀQY©2L©ýZ^Iyf½|§/ž/L=‰ÌvÜ`Ëb)0ö/lÌ¥jêüS“B°ô³Y3Ó:VÁ£ÎWŸJ,CÒðd`]·9Ïjg„ LMlý|V>«82¤é8¸‘)˜Žk1‘H_ƒ]KHUãæL¡Á“ÂÛo›KÎ\\0OÆAÊNÊyjêÂgÊA$«³øˆ¥žîìz8–•&–ùÓ»8™\Zo€yéÄ–û‡ÓQÃ‚¥/grP±×†«\\\"Ô)ºFqwâ{¡/çóŒ”˜1zVàDðc	](¼¼/ÎÒ§°ðNsÀHÊe~÷MW3Óv¢@t?Ç\\0@g›k@ÄS-Û¶NcT¬¯TMü0Ïj4+Ô´ªr²øMy˜^¤mó¬=ƒG?3Zcø†ÍÚÆŸ‡©~¡íU±D)eIyÎl|›J™2aDùGÆ9 â_l†¼¿+mG3qq5SëËîõ8}¿ÍÈÕù1ƒßV®½ïú¸C%MŒYàØx‚#—Hî$ïN2îT¬\\\"8(P‰dÔ\\0D@÷J7»–ÓâüÁD;ž²d=Bû‘ÄèèrEnÌ¢¿ÀÓÃ¼îSùVòLúß`éÆl0,™˜Zd@Ä1n6côR8ûq_:®[<Šë’Eìs—“fÐì\\\"¢1D}¸…/ÉïSÇ¡|e¾ý`+u™Óã »UTÒÅÄy ‘™€€ 66ö\\0ÃÃÃžkÏƒ}…—*¯n¥¤¤‚ŽTp{yw\\\'1A„0«„Rj£”´ðHÕÿî·ãÊ>2äiIìÇA,ÔÏ‚cÍCa½å›º§_@Öc6XÊmMm~Àk½kJ4ÏÅ{†?¶p#uŸ kÆ÷hN&~bpgrÞº³¡FLKèwDµgÊ^”†‚~D$½Ìá»¼¡K“­¨oË­Øâý½Ù¡áYÛóŽ¸\r%X“¨³;s~KÅØIÝ)àúg\Zùt>€J¢‹[\r€\Z\\\'œ]³ØÉÊ,zB¤cüÁ®c¾œ(/û›à	hè37	ñ!\\\'®äZSU²þö Ú\\\"u>¯ì›üHÎ™¾\\\\}ô4Ï®îFRþÓ$¬·C¦÷ 4ù^(\\0ê^Y­R\\\"CÈÔÔùóã\\\'Ú¯at+>\ZdÎ‚x¹	Êq|•ÜUÑ¡Êôá¸ùˆè7šî ¹©¬K [iL¯	Ãl\\\'6JN\\\"§A‘<ìQ§è Â)n•±šsÍ>³Ò×»¯umúRùßj¥Ô®¨»³‡ãû½&ç%`µ«YØ»Éi‰\n¿$ôý#À™fŒÍï°˜9Þ6çÓ\\\"W“gø$jg¹4ç#ZÇŠ¹Yƒ7ë\\\"b¦õI¡oL§Ïéœ\rº¦û†Œªä­™CL¤Ç\\\\¥}¯tûÊE$x‰¢røB(t3(~/F,þ³4Î‡ô2]N¬ôqo°´ZýàVàaKCÿ§¥¯¶ò—7Y‹‹æ‚v{á1Û\rpPwr1\\\"Qž•S•\ZµÜ1†Q\rÓÅ·Š‰ã—/~\r´i£IëSc GqÅ<Šõ~£´çjúyøÛãx®Òn–ÐdÊ~&ë-õ‘óÊÇ—jÔ¡Ó“¹%KIöø•¼y<”ßÿ>-”JRIB%$†$û\ZEÙ3Ì(;cëØ%‰B‘™dÏ–Ý0–±VvcßÆ®0&Ì‘}ûÎÒë½|~ŸÇã÷ýú×œsŸûÜç<¯ëy=Lº?á{Í3ýcöÁwÙ’YØxŽtœRÚ€ZªË›žN;ËîcK¯©ŒX=\ZiLÛÃááá7l\\\"ÝRãÄñJ¶ãvÒï×*6ì¼`M_¿°¼hÿà«‘4‹›ç¾ª¨‰õ×,u}Hl’\\\'F…‰$0²uh¼}<ÄŠ2I‡$¸Ú#¢jxTõ.Z\\\\;‚‡3ÔÞzThÅuÔ¥0Ö)!ö÷Ýìe¹ŸK/ýæeµ¿‹’c)øráXìõgªóúÇn±¤.8èàT{É%™qÎÛÐLLõ	Dë|0;§(ë\\\\\r<™i€AÜÇxó ’Òú–«•0³7\\\"|•¾	1°ßÎ\rà®G`K¿ßÁuŽ¢&”_y/ÓÙI§;÷å½@?iŸ3gdj˜°ÌáO0üó#=×žÿ@g·áÜýù{t­Ñ›¢k\\\"Nl2’WÓ°¤î½/4ÿË×ûÒƒŠLÕïÂjxqÕ#@çÓâd*ƒcm‹…Î¢/ÞXHµ2}ž4OºyQø\\\'àÛz™]ó{À*oh|8qØ”ñêí®ßO¿Ì˜¢ä€ªÝ“³§³)’4;ý†7_l\\\"\\\\»?ñà»`p¾A\\\"«ÊüÏ$ÃOó:Ó¥Oïé]6Þ¸ýûN¡þ±<AUåIu¢mgÎ)ÛÁ®T?.DÑÁ‚‡ýU=ÏµEÃ¥».äcEˆbß^–9âbAÝaFãâJ˜ø&|…¥’‚	À<NvZ~y¹±ö’·¼•ïŸ\\\'ÝÍ’îË‘âãÃÚ£\Zíƒá5{x”U	<Üå:êêä0yÑ¢ƒUç?èP\\\"„¶ˆüÖxTŽ‚6Tf¦cÔíž~b{\rwvÇÌˆÜÇ5]R&£üŒ®Ê#ú^Ò»´\\\'§õ+QFJäj‡ò×‘j«f/tùN/ìl\ZÎþ—˜xÿ	²{¸§2+Qvÿš\n°[µ>Fðhf+‹Båž‘ümk©¡³ŸÝã€3+Åò/±‹0O’7BÂd8qU{û ¡÷Ñ¹g”hé“XM”Ô4Sd­\\\"w­¥<>cNê5_¨~ùøžªX(ù¶Kƒ«ëÂçˆŒ£GPµŸ·ÜÜÎÝŠRjAÕ¾Ÿf1ò1Ýá´_‡yâå\\0Äå…·db;Ç}¾R—ƒü5›çÌGþlä­2ŠÐõ’Æ~i%TkÚÁ²¤ÝÄLÈÇJ$÷ž…þÃLYüP¾ë.œë)˜¼¾Ìp¬ôá ˜`«ø…à×€1ZÑœô1œ€™\rŒ\\0Q\\\')³ÙN/ôÆx â{ÞÔÕ}	iú;(âaÅ5 /ÃŒÁM÷>³är5òÄÜ¾JO7S¨§t‚ìxxÑ³÷C¯äF¹w@¹~×þ!|f¹úã¡ÎÉí\\\\Ž<”¹y·WtìÌÙ{À@—“Dzºsï­´0ë_Òq	<‡y¯äXb¼Y·Ÿ=¸e¹éÖpíIÝ±»…8`Í‡$_tÂâÃ(Ò\\\"K ­Û)Æ›Ò|ƒº{¡ç¾˜Ð‹gS´€W¯:÷ÿ(¤›[0‘=ì/£Ü÷\\\'¤­‚•†Q\\\\\\\"¶}£r^èX[^­hoá5Þý­Ïw?¨\\\\;Ú`^uœìÿ©^*( m’½–¶©\nO,é{ÞÔÔ”lº$Dï£qâ:™ž¿+Èÿ°x]Ò¬>i\Z’ÄDï1É#AæâB¬âàÞdZ¾d*H0ˆÙ»}Î†K63_•ÑjÛöäæ	Š2Ö•Þþ8ãRÜô§’1’K£éäÉUšN²x2Sa?•œ3«cÏ^Hg\ZéÉ	¯sž•¤*\\\'Ï=z_YúÅ·{pö3N6ƒìe?\råùøcL?\rwÒƒÎ€**ê?¯–%¾—”·âZE•”³\Z<ú¶<îl\\\"àÿE[VÁ=ìò¶ƒÑƒŽ¾ zà¬dxåp$,ÕÜ“õ{C¬t™6AÙ½/†³>tð+lk€â²…Ä¹ÿ	\rhS™©ûWª“””Êù)mæs\rþ\\\\\\\\\\\\ììì—/_‹œ«þ9Ó\\\\Ÿ`RªÓÓ9UPó\Zîâ<.ð\\0ˆ8Ú¤!ò‚`-g¨Þ1=%VÀ0è{°×œ›k_Á\n0¿ìˆPÁìƒeÿëÉY±éa_B¾µ%‡{ÃÄ0¦£„^¨lÈ[h‚\Z?¸|“ŽÓ¦»Ï7Ñ.á|#Ú¯:ñ\\\"O¿°‹ðç÷p9ÕN7<@ÄÄ\r\nmK,)ëE_J¯Ébð™;y˜u\\\\ÚÃÿG‡Œ3¢’K(Œã?i”üÈOW€´ ÙvUgðû™qXïþé,œØ;Þn‡~7’²“Ä‡,”u)û ©„Ñlx×KrÅSJ&øÌäe8i\n\\\\\\\'…Z-Î—ï2§ÊÙ$JæØâå«~ [¹üöV[S}f\\\"rR|rR‹8¯¡\ršn÷¹ço%`ºÝ$RE§…ì¯4MB	†×\Z}Ï¼Óè\\\'pÁÈÏññ£â#9š^h3´duÒ\Z±¿¶E8Çå4:|ah\\\"}6\\\'ì¢À`à¹TÈZÐ¥`pßüüœåOÍ±Íøæ½¶tšÎø‘¢Ä74@\\\\6sÝ%G¤Åw¿ÖWôwlárÙjgRÈ[hÏiß!=Eí]»¨\\\\yZsãÂTó­SÖ…QC;Í<\\\'\\\\ö”²†õVÏ‚îf…i”ºr•WûúïÇ µËÍ¡³pÃ]z¶²Ò„ªÉfµƒÜ§êK~ë #\\\\îÆ*žTIƒ’¾X5Ä°™{s)Ê·mDä& ™;7í`ÛÒ:	$Qùù+ìr\\0\\\'°¹\Z?dV*§Z‹Ø×*Æø^,1gšK®^….Üò?JéßôÄŽ¸‡mÚÃ\\\'qe¿¥vúø[ÄÜ½M÷>ñ’Ï	“€8.++Ã0ª  í~81‡2[M5=ÕuuÌY­òfåwhMÌÐiá\n‘±¬\\0÷§¬[Ø6ƒDžœàâ€Ý;,ø8}k×½?cY#vuûK¡w&_õ´+”íd3ªðßin?ÚZ\\\\ào1_ŸYž„W)»i&Ygærµõ.*èr^ ³^äa÷²A±“GÚPFZ‡Áu*R&üædF7¯¢$DÅðVèè1ÄMýY„FéêÂÓ\\0Ââ7ÙëÝeo#¸åUhH˜9Yp÷S£¿(MjRáþ£…*§RÉþ$p<pf)\ZbÎ]_±ô»¼o5ÁoESñ”tr¢ã´”èëe¡ÛqóYø5øà%–š$ãzT\Z@@öH¦õ²ÿ¼Üf[j+W&nQÎ«8frØ¢Gnã/nÕí,ÞÃü+ÅÂÝ¢èÞ\\\"öû„¦è£Ø\nîË#õAÏ<çS¤ÑMóõa¦_@YÈÑ9/? TlàÇ³Ö˜£Tí’*J½wæF~ÅÈÝŽŠââ·oµ§Š‹áÞˆòz¹eí)EG€ŽAWúÜÐPhrrïX ÑÞÃNrýõk‰=•Ak£ÆˆpÕì ×žP™š¤fWùþIš…×sO1ÊÍé•¡á³}Çi™›tÚ_ƒAÛéÀ•Œè\ná€Òõ™l\\0›óééÚ%†µ4Ü\\\'^Û‡dë]ÄD5?(‡&50{;Ù“!\\\"ÒÅNö°/Û}zêãÎÔ&÷Ã\Z—÷L½¼bCt“+/Òâ‚ƒ\\\'žÁJËy€9\\\\D¸Ü+=\\\\åÇ»Èí¨É‡Nklú1í§ŽEþÜ©<ÜIU?l½ùJKº»–y1®ñs…Ë\\\'&¥ÿTúƒVß7ÔyOžÐlÃú».îü˜ó®—Ýä¾8ÌP<L®6?à6’ÛB™uÜ:ßJÌ™s´ÙñÈ’pXØÖY76^\nùÏE¥î,aÄW®+O‘¾åVšVÑ>X[i$ÏXÆ8#ÊN[ÞÓHR^.0ñf09_\\\"_$A^„¶œH–;wÀsæµ¤ÅIÀ’vÃZ ·»&¾|IÓ.Ì&­nòÒ…ûUŽÀš^{ÐíØÏ\Z	êåNhÃ¸ÏWN:PC-12ÏIyæÏLÝbò/6­-bWŠä×7ü&]Š®®HO[1Ö5fMNžîÖ\Z\\\"+Û:öm\\\'í·~ç+‡zúøŒ‡$Ž£NÑê-Ùb–åš•/qfãšZµ	P°3NÄ»Ë2¦±U/òþFÙ‰,Vk§¿ZÊòÑ¬Iˆw—šûžhÒ¿h®î/QÆ¼‘ÿ¶ÅEKN|g­ÙÕÐ=í[œØ°fnÎUk‹t]ÎÀUïåŒufòf\n9H»aÊíŸ¦ã~eÐ ³™róR·!ZVµI»%9Öûö­1•Ö˜¥§gvH^×ß0Þ:Œh-Â	·Vñ;E\rzÒ‘{»Nðƒ3‚Ml§Ð®ÓRdCnÖ*_?¤ö¹\rûå•›EÓ^“.…ÉM‘è¥Ýê*—˜„¤Êò3°OÖŸËEýdWÔ-×q).Uc×LJ…K‚‹œ\\\"º…±’G½`€\r	1jœD•¢u>u©z6g\Z>H¸Ø¸¾ë½T^1g­‘DãèÖFÄ4_ðxˆšƒà“!Ws £XÌä§§­ÚÏV=º‚áˆ\r¹Œ{Ôp\\\'5)åRî?¸º`ŒU»P)Qyê\\\"“‡Ôy~Djk‚Œ™I¡\Z(ŠÙwÆ©{xp¨ûhl¾GÚa½¯’Á†Ä³OS£Œ\\0ŠÐS_2?«£ã¨è\ZEÌ˜Ûœ’4\\\'ía’µnæ9;ÃúÖc£ÄÀH›Y<¿g}ËÆ`½¥ÉO\\\\?¾þ>fUŽvþië4ûGöUP Ú^Ò(³C0=·`C—¶Cx(ŸX¿>—ÂCù æì8L€µlRÛ\nÀ»‡‰\\\'V¤ŒLºEÛÇqß¶U=§#­ra‚±zWµÈ#q7°ò¨ÚK»·–Ùÿ^žÏ¸ç1_ïÖ#ã¹p<JÔ¬fÃû©Ÿén4NµãÙ®7«¡Ä5tÛmgóKY•ÿ»hàAwöFFlQI€£?0Ç\Z·ã¬s‚À€ÝÖOƒ€~½\\\"½óeaAW	Ä\\\"c‘O½ü>9þ{äýd›š\ZœBæÌrT$“ª\\\'\\\"d3¯œ)Î­â­™ÈÇÀžØ©\Z\\\\ªŠÊy¤c4˜N¾©¶´›ZNIÂ	ÊE;ÿÜW!*Z-Y6\\\'ÓZ[S’@Ë§âŸá‚êš†o¦#ê>b$dþç£ê··ÙÂÏr¯Xîn5uíÎ%ÀM£=êEÝÍ:¼»æñ/ö’,zÄê(ˆ\r¤0» µSóe‚T_@‘5nÀÛÇµ;Iz\rßô+=œ6÷^;\\0å\\\\p›\\0L«ú0}\Z~bÜ<MYðE~Šjºß Ö³~¾;Øµ\\0[ƒjÂ…ìíììœ£U0*g=¿,oE!˜‚dHôv=\nWÏ†ž r¹S„®œr^‚’ ‡ž::=rÍåEÕa6úÒ¶‰€ÅvëpxN	S:5õ‰ùÆÖfYÛ»õ±á£\nbb²A/Ž¡ä`âe¿…~Üî%Ez_¾Gµ©z¨<wóyO‚{†%«cƒçÒð‹0¦tœî	l:N€ lwžj»)jñá¯Ù˜óª;žk|ã.Óõu®}7ì¤Qµ3ÌŠW¨Ö‡ý:ùMMMÉÞ€Ô¬ão:®£Ztîo^cùƒÚ¿œòŠ‹ÉÔ/ÈÕõ÷+Ô™3gÞ7´mKÈÉÉÝ½{÷Î¥Òw.U«ýYšMåÝÐòæ7lÂá ”÷Øç\\\'þYJM’Ý6ƒˆî–°ƒ]¸hË:süŸ[–©©ÙäFnTÊ\\\"ØÀ×/Ø…Ó±¢]1à•1ú#a½7©¦M*dÐn{kî Z\n•ôÊ+}Ûà^¿öZZïiÁ~á³ÕÐÜ¸OÁðeåoÇnêžIvM†À ÂÆÓŸÚâž\rE Øâi9D”\\\"@\rr³ÁÈ\\\'­©›=À„}è´Œ™›}ôÚûMt]ÿåAÛQÖG8«4¿Ÿ©ŸwMü[9ãiÕAAQ¦m!R­rv*h}#Àõ†»S¤‡x\rlõIq:k‘€ßåæ6}ÀÙ/‹Ã¦’ÖN÷—˜vúop3™÷+€ò„æÕÎ…PÕôøš!pª¼8”`m\\\'mh4Ãœ#CÜê¨äéàT6;ª\\\\Á[cæýä˜\r›pÀÆ‰¯‚•bŸ–8·„M§ã5†ÊA¯ãàpS«Ü²ä«^Ë3<‡™ëu;ÂGDcÐù4ÿè­R6ÊìQÏb“Š0ÿ5|Gž|[ÿÇþt·(¸`Dçv~ðX3ñ+ÝxnQ8»v˜/ÙÎM C\\\\|êoJ¬uQW §f™ÝDÚ2_¤YÈ&•kQÀzéÏ1ÉÀ–Éë-¥\\\'Ü‘X.¡ûôdÁ¾4¨šCÏ×Ü,Çpî&=vTÛ(ŸØh8ŒXð¸|7&Ç/ýÕS¢qá¯/Š)¨s(2Zk)#¤ßñx|s»žþšL4cZ,µ[žV™8	ÄûÓ{¡§âÏ$ûw]Y(ã_‡“ütÉsKóé¬ÑQSGþ>‹K\\0RK€ )fÔL¢Þçñ;ÖGÚÏ8-n4‹sôJ\\\\üŠð_ô‚-œÄzÎâ¸jÌ¸dŒ[0ñ™=ñ3®1xu•¿Iåê[TXÈ!&ðäj.³ÆÔ9Øô{F:ïVþj¯¸®$GüÐdz>¬ZµàóWXyûÍ¯Ãã€–‰™\\\\²¬,‹©{¤«“É”Ë=xåKÍê>IÁéÙS³*Ÿµù{ã*Û˜×»ó 1m\\\"”Ìï¾·8mÚdùV†\nÙ´1E÷ï#[ZÓÕž~?•]ºõ+AgØ—¹Èr9]ñÖ\\\'0­Ãk?æÉ#òb)>©14‰¯çüôL–ýnjÃ³t~+(¹ÁÒE8Ãí‚ô>Ú+¶SÐp…Láþ<è‰‡d8¦¦ ãŽ\\0¹xe„Pr	à` u	Õ”%uA6¹<úïŒ»h÷tû¹~³Œ‘ßØšQ\\\\mbÕ‘_ÐQIªH¤O÷¶FBý	Cû½éë´!)\nÂN-ëãK !0¦Àÿ™$)ÔÆ%‰„ÃU0–ýºì”Ãf… ÀÐy¸7Å²1©\\\\V»Mƒó”ÿÊOáRÖ%¹Rø›·7è¿)ŸÖl…s~€Ø»W¡d öò»±|ššîC4Â²áÄdÎäPGîÔ$tó\r ölEõ]Dë{ûÁ·(L†b³Õ[qH¤láskLŽy’œëžÌx+¿Í²¦2Æ¾àr…:øOÝ—vuX§”ií\Z½§g„L®6Hìùf[IÊŽëŠ¬_¾iP~pi(òV™×%qþ—IC6ÒÑQÓãG	¤±åÂ**Yë¥,cTá85Œ^¹6ÞÊg3?Q\\\\NI€î—Ï‹•bT^¸Ûª²œ‡ä\nhz¨ž	¿QÀŸ*0\\0Õ‚\nTF]º´Oþ1›Ïàý›#ù±—„\\0*Œ£7]ÙægÁ×·GÇ\\\"ãE’ %Â…UNÑš\ZBVSÈïñWsåü€…t;BB„ÿJ-Z)wFãÉ³~ÁMœÙî|wk/±qÈ{[.«nP¾ýçïGÇûÎº‘ài:u§\\0j:4÷éVÙîËQp¯×°Ý#Ëd¸\\\\Š	²/<)>Ø•oH€âûK0š0#ÝK4õËb—Û…KD,{òD¢&ŠË Ðõ9Bsg¡Ç‘ÜÝ¢Z5º’‡s(?Ó;oŠžúËåO…\\\\ÅÝÔ8=Îš°Û‚/Õ=¬øh*¼=²ýxý+ŒPíŸ¢à¥[è0Nñ$Ód\\\\úCšs¦GÉi¼\\\\K+Ÿ-…4sÃ–ËÕ\\\"4M&_ï„PÁ¬¾üÁ¹5ÐÝ´ÿÖ(\\\\Ü¬I%’!ÇJ3p/Äþß@³w|œÃ‹ËoÑŸ ék|Ž`ó“lþ‡+–Z\\\"Ôô[e˜Èü$àŸ43*aDÁ`û·Í¿9A|ïx¶ßL›²Ïd	‡×V …ei…\Z·\rSYãzŠÆq…7øÍê¿¦ŠðûùÕÊ¹W‡Îx,BÇ`º¹zûCž¼û¿2hº\n;}Â\\0ÉŸÃ=QßþóýÑAÔ-gÀ&|³Å«<6¡cÕ<þ–ËŒò+T’Y¯®‘¦Ò¨í«¾ÍªzP¯Cñ-{l¦üd¬·)±Y¼Üï|Ìý-Šº}c\\\'­Œ0a/Ã ˆ9ÙÙ_F*Í­eóŠ»\\\"m¶tÚ¡Ï=]\Z…ÄFŸ\rsÞœ>Å‘ÈäŽ°ž5÷<ÞÛ0(‘µŸ ¶KÍM†Pªz&we\nÜw»­ÃŒÛNoõ²VžàË®\\\\HÖô‘j÷ð®\ZåŠ7 ž%Øî’?ë¯×H£ôY©§.1¦·¢ýrNvÕ´)ÿHÑðØÝ|œ0wLl‘úëš\n^×FÑ÷«+Uð:Øcd®±¾ìWèD¼/#,ìO ÜsR—¡wæøÙ¡ƒ{¬ßàÕ_ÿšAË¬¿OŸÛ…›fÉÕ˜w’\rR/-DPIÙºHÛºöbÊ®yÛ³zé»•ß|U…ß‡ð‹Lu™NØ@d¾mIÙ8uEY”TzƒqÇKý­ËQ§mJ9ÜËv­%³q¥œŽŠÆÍ\\\'j³ØÝúãÚzHÒ ±ÒîÓÐV0ž¼ãÄbl(Bi˜|Bˆ°•©4ÑÁoÂ¥\ZAFq½<ŸZÐÚÈäÀo/2¶ÿƒ„sÕRq‘`ByÊ‹]jÖŸóâàÜð5B~3j|”……ç$õx—a+úF	ñƒP{ÏJ¢¨ë||8Ø|ùÂ‡Ú¹9º3r +’Þ°ÛÆÞ&„…\\0Rß]j5éÙöÒñk]DÙ]–ÅÙŒÎ}­cH‹Òµ­ŸÚ´\n‹kï\\0Š§›!ðÖßm§¨¯ÒÙÁÄMÖzIžJç¨¼BéZ9ð\\0š‹´˜Ðï^•d¤ÖžùÝ7t¾Û\\\\ûf¡~{cô¡\\0×§š–¿$4‚­­ÿüw¾ƒ1\\\\/tÅÂÛ÷0}ö55Ÿ÷2õq5Z¾¼ý·NèÑ5M`Êã(7+úF7l\\\\Xí€tjã²ÙÊ?ûÕ®=Öoº²b.‹lªÃÎ½•¨ÔxxLöÇgÌû¹€IF\\0uÞÈóâáÞ-_p¢8ÃT?tN¤Ø.ü[3åÃŽ¥á´å¼†üuvÍ&ì¾Ú#³t}\ZKÿHÍ‘ñËµ¨èžTc¥IyÛÿY5q©¥…“+z@8†76v4D~†ä¤©«<•ØñÓ±ÁvÛN»íÅ²Eer0IÞçÝ´>é\\0WmcpÏŒ‰ä!:¶áÊùT[KOqH§ëJl\Zmù½¸jU7@Å,€†Móš$ûíGHÿ~DXâ.\\\\‚ÕlœÆU—öVþ^›98¤;Tó­¼†ÌlS‚¼÷³-Í	èÞÑM0\\\';0e`kd“sÙj×Æ¦Tp™üPuì}j	É5qêCåv0­œ©Î\r{£ÑS/0Wr½íY”\\\\©\\\'©8l—» kG-È£ø0˜“É‰Ò F[¼¤3º$wÿ{o[÷ÄÚ3ÝšÚÜÁ‰Û†?oŠ”½ýó<0Ô‹jy>ýÕTòE\Z»û1=“®6“Ùe’¯²ëƒ6k-€à`8Äfê>f`Ð»—J=1QüüEð ‘èR°àØ°4é9*™½¼óí¨æDê)xëa¥õé.˜L¶¤¦ãì$í¨‹Œ ,2Žì;¿íÔ\\0Ûÿ…q¹ê·?ÉŠmHÞ[¹£á‡Ït<€õô^ÒÒ=Ï¨ãT/î1Ù‹;Ì9$Íˆ–[j†›û£3ì×û Xþú]ùtÜM£NÅíäÔŽ<ì‚7Ç=jÍÞCò0ÅƒTøá¶ÈX\n¨þ}‘Á¸`ñr•Â*§!æp²á%g`vå¿Š†(/7«þmœºwØ0¥9·–Ýx;tnu5Ä\\\"Ë–9¢Ï3‰?wŒ‚Bn†­ißÜx„i$°/„eÍEn+ßâv?_#Ìå§‘rãÞQ\ZPÇ{l·=Û#¿HÜ&¤ØÂ‰¦‰*pxñ*²5‡ÞI9»Àz½èª®$T˜@ÒØ¸hFÍ¶î× ¼5s˜V¨©t=À©ãœ¶-2âßL—¸‹òyZ|uä+§Ý\\\'˜B§Dq&#X2µz‡U‡”HŽ_BI½ë/}Æ{9vzI¨\rõ\\\"«SæV49`Ó©”_Û«7oðI+Éí`…ô?HA=õ\\\'€k’ø›¥nÏôÛ\n\\0kôûu½5~Ç\rCß¿Ô²C€ÙÿÎÍ9ÍÄ·×¿€PE% …óî™›ûï$ô \Z<ìš1œÅµ°½s›õ©áoV¡6î¦²=©ª¼	Üºo=}“˜Üƒ¿Šð5î‘½.&ëåëJ˜1ö^aªÿªG¡ü\rû„¬Üø\\\'°\\\"IcmUÒ´úD/Ò\\\"²%àM	ŸVW8ß.2—`†«¨fgwšÀ+SOèã¼$n/x…#v°x/¦{ÔíÌ‹¤½ TGßÕøâO¦ÚõuKu1ÚAKåîÜ£D9{<2_/z¿ù¤T“dÚÙ|ïã™$S•ùLþ¢›š%ÕDÅ‘¯%¬Ñ¼8T»z&gØInßm|4ýyÃÄmN2îVop.ímGßÚÆ¬{Isþžç™®˜)‚—¯àá¯ZÂN:7ººÔ.ÂùGaá#†‡þÝ^o¶¥¬3ÙÔÓò˜òÒÅC•ÓÓûã\\0[ÉòT§ÝÏÞ>æå7Ö2›Óq¥5I#]ßƒ½ö~Æ*ËÆÝìAËËÊ¿Œ™,Ò­ýlö¶ƒ%Äj3PYe/U¹óß(/ç&nûïŽnpâ+–eïz­MIÓ§úÊÑò± puÌéi–öKP´öé‹ó©AÄY-¿ÊéJK—•î€ºKIü~ˆÑ¾¯V½©?p¸¼Yt ÆM	¿¼†+n~‡$*Œ×l>Y™j¬Û•íŽÑš¨]	ŒÇ˜#ÛÑY¸j¿´±ŸÊ~cºÿŸr¼ Q‘ó¡…ykÄšš6XjæfAšÿß“Ôx€_ûHÔ:­y¸ŽïwÿƒR^C­úÙþÿ	1ÐöC²õ\nd´÷^ìÌ\Z°ÑÑÒêID˜–Z©«¨¨XZZêëë»»‹õ‘rªå‚3í¶Iýåµ/æK‘šÂ­»R4æû@Â\Z7”¯(µn¿ÙgÛ)2#ÔøºûÎ›ð¯ƒ‹\rÔ:	¢®®Žô™ÒÞñûù;w6‰…•ÓÄ_RZ‡å‚Øb3Î¤„„dÅ U3—¼Öc÷x\\\'SïoÂØ±L£öí­(}\Zj²qMíEK¡’\\\'\Z8w6Z~„aLžÀ@Â½¸5J€¹á¢4Ó7>—Ÿ¤T¡gï­x­×.¦HÇñöC\\\\rmß±@:GÓfËBÙ[Úl†\\\\ƒ©Ýo4âÉ,ÇD³Ži“ê%ØP@as*¨¡¦Æïõ™ô˜è©jOÈÏÏOÚ¡{Ah“›¢Ú•ð¸aéö¼»òv]Lüc4\ne/ñËsLK‡Àfú~žNêb:âEô´ê?ŠªÙø³0‘‘AÞàÙÙÙ6ûò½^dJhëkP ÌgÐr[Åù%€†/)&«å°x	mâ…îÕ[R/?ìçúðæI\n-A¢ï,iT÷ÈhöåcR¿ORP6ØžryB™~-,<WV½ò_i¾R³×ëö\\\'ßÔ¥ÚcTð’NÐñ¹Â+/yt®ºÉWé×‚á\r}ê–®o=|Ûã*Ã’g´~G;îW½æ§Àa7*qh»M×T–†ín8ÕÁ¹Ü^uH÷‘ŠÍ}rÿ¬BópƒòÝkéHBwjÈB;.va¹¦¦ë3’•£/ó…±n-|ã\Z\\\'›‚×|%žÉó£\\\"<ÓzWÎ´2’½°L³ÌJ_Kà»c8Ö8}Nþn.…ÀW>cŠo\npƒ§lÛ;Fº÷ˆË\\\'Ýd,AÃÐiœ:«¾ã¥Äø(€ó´Ë‹ñÛ|íÃýÔsÂk}§¸šQKK)a~¿VŒ¸y¥<ü=^IR*s{kN5æo-ìZ/Ø3_’C)Æ:ÎÙÏùfTá©ãWÓO{|ò{B©â<K×6Í@¦wwNySû?dSò õs´û¤	Ã$÷}¤#¾¨µ«qk=\r#û3ý„Á°ep8_Â‡ýqob¸D˜ç\\\"[ÇÅc’#\ndb&Å` èGÌg‘)Ëc|íú3÷¦|˜eŠ¨gœBð¦s ýI¼öÃŸî‚×žÚŠÄ­mˆx?ÝvÈ]Â4‚,ëÙŠýPÎá÷¾JÊMiÌU¬Ä½C˜ûs$þì@sž­ÆÿªÕ¶Ÿ˜÷SHß›Ht…PEvz¾ò¤vtÜ[\Zx`} c1å3¶ø§Ó²¸S%4ÿ¯àIÁ‰ •ºÍ‚§¢*^¨Ëæ\\0Å©€ƒËñk…æD½ùr=\\\"	µà|žò_5Ã-¨$^=žléˆŸy«Hí)¹¾€ŸO±°ûéŠ\\0—ô“À¢ƒ£\\0õÊ¿ÜÎðX§ÌØ˜Mó½ÆÜ„9F$5ðÓ»í4¾Y7øG†\\0-¶fþ¯\n`2æhj2õ‘\\\\\Zö%ž`rœS¤<W_òâñ•Ä`8Þ^C†‘V•kH9B¬Ò›HÊo2ÚrDsÂD	7T‚yŽ0¾Ï ÌJ±ãÇ;H‹uí—ïÝëƒjv7ŒÀžá³ ÒL;|,í†bg¢.À¿7>LÍi™ý®ªÑf´èùÓRç>â>«­Ãyõ¶¶ü,ÐŠm¬§9NžM\\\'©~‡e,[ŒŠ%B„‹Feö=³èƒòœïva\\0¦TŸ}y‚êwb¼<@º_}Üf«3­^ÚšÓ{éÅ¿ÌÁ´®!yé±êå?Ñ=`&’¦É}.Míèå‘ÞëN£ÂÌ ¤ñ™i³ü^Òö{tTz§vM¨0	ËŽéFb˜[ì²ê=V¦f;Wyò>DQ9ÊE!x½¨E³Ú;Ø¢Ì¹+Ç¨…Î×ÞÝ4<˜Kú8on<°¹Ç]sY/ÐÉ\\\\ºµh5›ÛãQ-È1JG¿Ò‘:o‡Žm\nK-*Ì9])‡’;:¡E•{Yîàšº–%Á\n“žÃýP‹OAå»Ïô\r\\0Þx#õ.JP˜JGÄ·ìK.ŒMŠõ:Hûù]›]í%\rÊÿ¶£ºmVï‚a€Ô„„¾æ€D sûöÆdø\\\'p”‚J:éy/6@ }ÍüRª™ô—†ˆ¸jR²5ÅÏGÔtƒ—åÜa»ËZÅjkH?TÒYƒ5Èøj·ˆHìÃîÜŽðöm†®›²~FœX1ÇÙb@çoi‚áp]¯MK&ûnSŸqV\\\"jkoidbñt¸fÇâÛ´píÈÛ9:åæW¾wZ†Ã9`Ü¨òú…~(~ÜÛû^Q5Ü’TzGÂíJÇWáâÑèHj”é½ý ‰Óï5¼Á°4†ÍÏIcÄ|”äPóWð%°Ö3ÖŠ¿Y‹ÊYès 36ÓèžpA&Ìo†\\\\Ùó!²é•¹¹¹õõõ¥“p<x“výú3ÌÌ1oßž>}úœŽt;LcYv¹Èj\r§jDìCÉ™U¯¤ó’wÓð·ö˜ž¢46~YD­[ÿÏSšxw‡ìuZ¶´ÇÎy1×ÈuŠEÝ¥î1„âù­Ô—ÆÈG‚ŠŽ=-?¡ŽZ5küâ\\\"äúnöeðn,<Nb~Ñ4¹µÜp.Ð²QeÃ{xÕ?$>¶C*Üÿ,Wæ‘\\0‚ÿä}Ýœ/zæzfàiÇp®^õñm\r”ô«ûáçUí²Â]]mkÉ•¢(s}ç×pÑûè&Ù¬S2EWk&2­Ópar£/›ªÛu}ÝÌú—®É\Zú=IâÊ“·s³\\0ÞÊûpLÏù‚€C~vUöÆ¢Q¢/¨XHxró0®>èwq–êØÅXá› ½ºKCÀòª2©H8j˜²»×BN; ÿ]ŒN}Hoî¥7š}ÿøõyg€÷Á|k˜ò_E–ÁX(Ig¨T±²`ûð$úŽf¼ƒ>¹à×PÝä{Ã[©¿ªW(â¼Ùœ	Š<H1¾z}Ç`|½Ò,´£Êš¼Ë”ve («Ë2fÆ²’½Iæ—‹ŠMIÂ=ÒBÂe#o<ÐÊxn\\0—[µš.»™»\\\'tÒ°8GòQôK³:u¼½‹ÙÆ\\\'ý£ã~ÅŸ™5$[ó\ZÙ4‚Âà9Kx¦B:ºs%\\\'ÉæÅeáŠ88ê2RÑiÍû²6’ë—„W±\\\\IV’»UôÚþaw$,ÍU+ã¯KEš=jbÉÞ(`.2V:ÈŽYƒË1=a,¶´g‡öùÅ¹RQ™éø‹ÉÅ\\\'8fæ‰ì³3H6 b¸&˜¾3rÔœõ7µ¹A£•&&ËÊÚÈ¾V‰I4÷…š`ðƒc8áI¯‰ÉåÐ(}$È%ºþÌ‡u¢(U+VpD¥‡7Ù¹üzÓL?kY¬ß”[´ÁÓ€½¬9ãy¢º‚Mf«À±TPE5[çÚbáÿBí<$Æ2TÑ¹^ïaˆ±ž}ª«†5UBÒ¹˜7È—Åh³ñ!!‰øÅ±Ø‚oYŒ¤S×8$ÊÜ,–ÐV}\\\'rÁ-²2ª/hM½‘ÊÇNC¤ÝÊv[±­Âx6l»×û?sVòC³¸†¬\r?‰t€=½^y|`öë%¾BôŽ¼oŽ5)8Už‰±öm†Þƒ£¸hT¾`—G ãIDàÍ	åÛ\\\"§nÝ•M+\\\'³!¨:75Hp¸¿Ù>!)Ö®m~Ã&bRš™žžŽD\\\"ÉwF;Cª¼c.¯±»¦ÄÉžÝ6è±ôVG×uZ§ø6õà¶ô_äéd±žø²”TüËíqê’HûÒÕFP#wô/’†§^žé{¼áì\\\'ï+àDÅ+=µ¶·@Þ)\\\',q[,ä•<b!ØÁrÝŒóµe|\\0ùž˜tø;Ü¯¦ÄÂ—ýÂDË™†¨ìþ=q\\0Ü\\\";¾ºùÀ) 9wñ‡VðóõáîT$¦·AÕÖÔ$ÞÔÓn0Š=I3*—+Êá\\\\§Ž–8©D†]Ûµöüˆw‚-\nqõpP\\\"	UúÄ¨CiÂ#é§·6B&7\\\"¾L½¤ß:\Z/þ*À=èf€^ú£åx#6_•Gý§¿©.QÜ\ZvÑdlFô[9â«ÝÓ”LáCo2@r•ÆØßûø5ñú¥;(TªKå„áÁ¢\\0î+Wn¨Âf¼Ð¦˜,F¢ö„ä¥Åøfe“¾+dèôt¨W\\\"ºŒ\n³EÓµò~µhÇ!J™^ùõ0Þ]JÇ•ˆ¹åPÛÆ¥«ø¡ÚAÜ»hí¾\\0ìT´aqÃäø¸ÿ›ˆ¤S^OþÇ‹œïÿÙ¼ø½\r´ƒmñsðRÃe^”œæfWiçïšù9t²@£mgÏùÜSÃÄßÞóp’·®Âý÷\\\"ØŠž‹Ä:Ÿ!X×aÃp³	a\\0›È/QÅ3påšq—@€­³•ë@ý:Íà¡tPúýÛ5ìAZëçÈWÏj$W.š‡gFÚýœn“Ý¢:µ‘œ£CþMc^µK­˜77Æ»ç‘žCî‹µ/Ÿ%ª¸ôÒ\Zë)]ƒ\\0…k0“B§íl¥’`cÉ/áÇä=ôÐ™D$³XÈì=óˆšYhô*ÔÃ†e¡‹jO¬˜>¶‚S¨ Ê¨ß!=…º\Zp™ŠG€\\\\}×Š^CýDNý§ßôûCŽNªª4T\næKÃýj¤9ÃIïß³ØÁL”µ;=þUÄ~Uk&^XPFÆdšÃOé^“ÁFƒ[«¨àai¸g×ÔÚ]Ñ4¬qO91wUø\\\"û›ìõ	}þ½LÙð¡«\\\"õMèÄ€S–0°4#^%ß¯Pq=Ôv5æÒâZþÐƒke@áÒ÷\Z«c/- —ž¾:ì1ý9ˆ‰ZŠmj#^•IzUaÏûÛWFkk\rZŽu˜H|½ÎÇ`€˜),­uè%åù¾ë{ú·±\\0•ÍÖú;8ìüAVTå¼¤_å_µ)ÿÇ(À¶F Uj?†©çk‡‘ì¸ˆÙvŸ»nkZ\n>ŸÅúJq×àþˆH‹~Ÿú,¨sjÑASÔz\\0ÂAàÄd:ï3TV­ñõ#<&*J´fÒ¼Müß\\\";ÈLÁ+\nÔMB˜¶wd†¸¦ff-[`°/Ð.†c]½ŽTiñµ£QJ3‹óÜ–HH²•ºÈ:(\Z#ß×z*>ôß×ØbsLÄ;þœ@Y:’¯ë‡å[MªýÐb%C¨mOJ¼õÜÃ³\nŸ–ª`ÔÔ–RŸùç-ÃAÑ9Wÿ¡YVä‹óúlSÕ‹+¹sôèÑºº:îÀ­ë«È˜3^0“/ò.’Â8$©ññr	Æš|ñÏrûyH“ŒÊ?QT%L† ä¼ØPèÒË§Dj`z’e[ý	c8¡oGU¢7ŒÞòŽë¥’RTøí¥MÄRó]<î›.©Ë]]ŸZø7jÓµ%Ö$¤IdLƒdDò\\\\Ò=ê‹2Û\ZÝu>Îñœx°Ð¹ŽÜÛŒá\\\'\\\\’ýS:ïa¶ØéþòsK+ 5Í”,j\n‡UÕ¯G8¢•ƒ›\\\"¦S™ÔrÛ\\\'\\\'yËèþ7³±¦£¹3\\\\zâ}Íår‘eë9¦ØŠ0š~ÐÜÜ?Ìt¹¸É}ï6÷Z3û8½úV!0Sòh §è(­]œc¦*ÆE;u™h»‹Ý.\\0îK$ˆ³ùêMq:”èÉŽ÷Ù\\\\ÿùÍ]éÑNš5ûÅ9÷J¸lÐÚ¬ò3§ÜœÛ¼œ†æ8\Z«b“MÞ,ùl¼¹ñp˜kûVþÄaû´OWà·¢Áæ«µ\\\"‹É²øjõ£Úß<¨œ­­îô^³üù¼Ènw„3E#‡EÂT-ž\\\"ÿ\\\"vHØqHŠyx<ƒ3rv\n¶Ï´\r÷\\0rùÄ”ò$Ë4•³ýÎÓéa‹çrbZäÅ5¿¾…³røA¡±èÑ€yd«b@ôÉOKcµ¸·¡h6œ¾‚éÍ{¦dÛs£FÒQpÍeÛ‡éIŠ(^æŠÞÇNê;åUÕ¦f .ßÃØÒÔ¯ò×”üò7Ä¾õ‡$»Ü;ò¥ñTHñIñÝµŠ“ðè$ÙâuÏÉ= Èš§¹ªô”ar@P5qëëdYêÿ†]X÷¾?¦ÛÚ}ý¸ß/Ó»mâœ3‹¥&„ó;7´=ËUÔWNÏ0Õ8é±ÆûVgnÂõû!}Ôn]ONZic¶·$sïfqp×åÀJBÞÞ=…(Jh-Ò^–øA\\\\úl;´•´¼>>nƒZòT¹²‚=ë\\\"¨?úKð¥YH¾Óâ»Ú1©íã×Í}ÇK6A¬³«*T=K€R\n¬¸ó‹gÞRÒaÂDœÈû~¯€lzŠ\\\\šŸ¬wÚ!øò4ËOU{<¹Ü@Zgq&Z¹åÐ}Š•©™±Il{ŽG¾‘¦ãr%ºåÅ›1Œ™jëbêSno0+õúŒµ7”UÜ×F“ù¢&sâ\\0Ñµ¨û\\0aßÞa™w‡~Ÿ{ÓÍË–1ÇÖêMvÂ†Þz7DÙÍ›ìÐç¬vú½ê÷Ä2/§	xn‰RïJÅ¨à{Rm½`Ÿ`-–‰ïÀMø{‹fƒƒ>õ/Ç­pµœ|ÙLMàç‰ÊÔ^	ç8(Q’ÕVnV\\0?Ì$\r‡«w\Z†Wc[qHãË¦Ó*©?c£}[in?´{—‘ÌèŒÌŒYb‘ŽÖè—b³’¦©=›ÿGê`Qbé0!\r>(Ng`«¤å.|¥ˆOLlÂç.Úr ävdPÐ?Ài	\\\\›×²ƒy\\\\´Mñÿw»–ìò¤–—ï%.}²å«ìãyùF@(k©¦ãâÂ»ÐåÿLà€A ‚«HÖš¤„ùz…”)AÇéº•_ù,ÃˆüÕIú!Ý®/—îôø7§éWgfã¬ÄòqOsø| û÷Æ5bâ÷£éJ?Ñf–Ê–ó´‰Xw_—\\\'t?s©\\0ã¾‹>ÉLygäãT$¢&ò7$>8djA1[))E/áÜµ*¡¾\\0À-“¾›5f¥óÉ±^2ðê«º¾|{s¼joåñ¡Ìjïm\rê¿Òb®©Äsà¨Pw‰J¥|ÐYMŽ—ó\nÊuÕçÕ.X&sá¿_½öûóyÜ…ôéÒEÈR«Üú]ž*œÞ\\\'3Fè23‚sPhªâO<æÜ¶³Ï\\\"ðÊãæ©Ñ_‰!<‡‘pwî#¨‰‘¨ëü\\\\\\\\S—¶DÙ,nB£›\Z01CD?”šâõûD+€\\0üyò×£Št¡Çîã<¾&ÆøG{ïû !I‰£«Ê˜\\\\ÇñùÍ–|g˜gl²÷ëdÙmž¢ç>èoE!´\\\'\rkûÇ,C-$™ŽŽ­†kž\\\"¾MÓLq÷óòeä®1<:ßX3uò,^wôe#C)ýálmlÎo éïß³E°+°xÁ<ÿÜFQùoçù`¸š‡7‡‘[“«ø¸ˆ«8÷ùè)•OâòÅv‚´%…ß:{•òJÄp*xÉý !¨¸úàÙšZ>nÿ	jr¶ÕkZŠ¹9·XÇsb}1íÂ¾è[u‘šf¥ô\n5‘¼fpöÏ¼î“z·ö‡ÅQÌúïÛ‹Þ(c,ý~ë²ÐfQ\ZF™uÙ_úø=)¢R˜N\Z%§¢#å|ü¯„ûÞÓÝÍG°ôÆ‰\\\\œÎIJ3æè÷°ŸÒ.4‚+Ê”åò‚møÝ\\\\¦ö³Õà¦G¾Uq\\0$Œ‡XWŸ½\rÖ¶…\ruDUžˆìÛ7±ÓÞE—1SÓc¾¾»¼¯fÚ×¦v†I´.Ù‰Bhº\rE™i{œàöû vÿ·U\\\'u™7%pçÁÕp}™ ¥«Gü=¼ï)QåÆc×r•¢°!E€jÅ’úË¯zÁ\\\"tX\\\"ÿ‚XZ]]¬ùpq2nª5Ì“?^;ÿyì‰n( áae*Àð-Ï]«Ì.‹8¹X½ŽºŸ§\\\'díö\\\\4¦î?û#Œ~v\r™03í3lREj{2Õ™¼A\nF¡”ªÚQËb2£‚ŸS>iÃ:NL_\\\\\Z°y`Y\\\\X9\\\'n_‚ØpM—§í‹*ãG,´ÔÆÿ3JÕ&EpAÜ-´Kv¦\\\"”~yggg·-–|ûöãßíÊÿþÝÖÖöõëdQû§{wc’»xLõ€)M[c‹/c&Û˜„…©Pb¨zMÖ6æ!±¡„É/ðKGSË7^A]uŸ~+gWEkö§dAiQjÛmn-›°»|‰vYö!„ÜšõÌÕš½×&.»QX§€\\\'Æd-(WšÿD\\\' ;rGïwâW>œCóùJÎ½Ê¥MWš‡ó>Kjs~Ð¶¾ç\Z è™\\\'è)¿ê_¢\\\\)Ã°`+}³†•yùgÒæþWÇ~MŒé’;zÇ÷<Þq›>èž]¨õ¼ŸóQÚò|©=D;4 K0 Â´Ï÷÷Ù8‡LÒBõ-ö$ìySL!\\\"Æh‰ýF!JQ;+tÖÝ{žf€ç3`BXùÇCøRŽPþÔj?(R~öâÿ\\0“¯ÀØ',NULL,84094,'image/png','C',NULL,'2011-07-08',2,86,0,NULL),(330,'error.txt','xÚí›}oã6‡ÿÏ§ °À\\\"ÁEÑkÇi®—:n6½l²X{ÑÞ…AK´­[IÔR”“l‘ï~£wÊ&Ä¹¶×BÆbÙœ‡œ!ç‘,\rÎï†è|0ŽFh|ûÏáÍÎÎ71#§Óÿ—ïþ›DÞäÒÃOÎãxòŽóxxï’˜û4Ú{c›h×4öÐ¯;ýüöKJùédMO\\\"^7,¾éÇŒrÐ$Þ/èìíœŸ¢›O××‚%#IL£„¨š‹.eŽL>–àˆ…v?j½%aÉ†ÎÎüh¾kï¡¢…y`ˆ\Z.õ”îøßusOl’$ÁsòDŸV¯êôSô9¢wÂ)_PæÅÙt¡ÁaëÞŸ\\\'*uÌ~¨ã!Ø\rïc&·8Xõå¤òåGâí#ëýFÈ2LYVß1ú¶.ßgjÙÌÉÿZóÇ»;-›HßUéWú—”ÎrMç~„ÁAxVÎ¤GÒ×õ»»»ƒyÞæÀ¥¡Ž]—¦Oô\\\"As»Â`%„-}—”nP¼Ë|ÐˆƒµÆbÅøÊ?Nî¹¾àapŠÜf	ágŸÆßk=©,vDsAœÑ@ªkÖy3	³³B|¯AÂ2ÅŸrµÊUæ‹QžõŒF4‰üÙL.7c8Ü¬“e_ñÅèüýðöãÕåÕ\\\\ë>I´2…ëUº*Ö,ÎSÂR<›Ôý,ÓAôª%£Zá—£¡\\\"œÑ\\\'+s7 ÕÞ”<ŠKsJ½‡\\\'V½y\\\\/‹·?}7~}½“Ï/êƒñÕøz˜mÜ ¡^·Ìíô–Êw·ÿBß]n¯o?–IýæûüU ñð§qõ…‘¿Jçj§Ìg9Q4+,¬ìÏ!c”!Ø\Z‹¯­ÆÁÌ\\\'ÁÝzªI}ª¡¥OÓj·+Þò½½®ä‹A^Už¹#›u˜a³Ì[ ª¡¬Àîeì£9åÙ¸vºøÉãWÎy1©­À=³2õæ±ªøT6öš¶3?x*ÜNm}‰YV%ôØÿŒuÇ:ìØþTÏrMÏÑGô9ˆñªWmôêØ8üY—¼dRŠzÞ`Ñþâh­Î7#_¯ù¢ñ¶Æ*è7ãGiY%5~¤Ñ†M½)b„Í(3”ûH¾¤$á²NÝ\\0\\\'ŠZS—Ù6¥ÊTÔµºÒÐ²Oe¦˜ÍWú_›18Õ”WºnGmÒÆæjõ­½P€‹‹\\\"„nFˆ—èØýè¡i‚5,óFeúè³4V{´V Qô½é½–u¯…v\nO£PP™ï­L[¹»¯Ç¦{58Ö¡%–»oïÃ\\0•H~Vw¹c}[ï)À*ìAÓ(H®œ;û€²¹;ñ¡~ÎiXîƒyëþ|€ƒ¶I8âDœÆ¬Qnß6õž6­²\\\\*-²U$ìºeƒÈ¸uNa¹y¦ø›Ï~äU=>×Œ,aÒÊÅ-8Á}ÑÕEWÇÉ÷ð¼™è{ŒjCÛÎíÊv‚åÜëß¶Cü1ãc¿w†ýšq¤ÙÆØ´û¶Ñ7Í8ìWÕ\nA^+Z;ë­Ëþê…\\0…Á[ÊI•4¦ãTòE2—ŸÃúÁú\\\\é¥ïk£a-q’QžÓ¥ˆ\rS°&íaš`,ÄûÀ(ìlüE8ód’²²ïB´`Ó8(þ9ÇÅÞ¼]Øåß“tcŸœl\\\'éâ„È5ÍWFi8­€½%Ú3´,àµ­|~n7É>–Èÿ@º äUÚØó€‰¼ãØ=ts€ÞãÀ#œûÞ¼ª#×ç° ¸l$ƒœ!Ïé>ººFGÆQ•ñ[ö/h$ëe×4¡XÀóu	ð”ÈV€ÑC\ZúÍ°ÏŽ<tAr,Z4‚²— \\0NNÍ“íz€Ìd¡\Zp âB€(œoyj³mYçœU~¨™`*È®Y@Ó1”§¿AuYµ>””ÑGñlÒÜžñ^É´OrÞ‰aüAœg¬sÞïÄx‡ãuŒ×1^ÇxãuŒ×1^ÇxO1^æ¬ÿc˜;>|	ÌÕ¤Ó?ÙUºÍ×LG0ÁtÓLG0%‚ù/>´.4—Ú;í\\\"mˆEúQ†Röö(e¨Q*£¨ì ¸hô¹/£(Û°_tI¬þÖÈ‚a¿?MYMu4ÕÑTGSMu4ÕÑÔoCS-ðq¶ûD>åÎ‰^8¬}IIJ^Æ=Ž³ö¸ŒÀˆ‡Mõz9ö´qíwÂSŽ=oqŸ–`t$ýµ-eþ†ŸÖš&a(Ä“¼rÚXÉÊÚØ#Á––Yá˜3šÆòü©Àýuj›Žeº=Í%SC#^¯§õ0\ZÓÙ‰3›93ƒôU½xí®Ûúºªl…¨SÈàº8­HÕwŒ\\\'–J˜GþWÅã[ú%ÖaÕõÓ¦$K² ÍpÙ|{q\nû€W¦\\\'­î¾U©Ô<#ó\\\"quZ¢ZAjól<ÕƒÍ/ù\rómâ~(ªS³ÂËM*Ù‰Ò3”œÍJ3Ÿ%\\\"a¨\\\"œÁ†2Bx“D\ZU$ã)DyÇ…ŠHÖõ2ØØü@H‰ÊtáÊ§€*…«k•ñW?ÞüÌ…À8’¹€j2iîW>Øeš*€”iÑ¢ u	4”eo:$qXåc¥Ø\Z++Äü\\\'ê‰©NÒ©¢¢4·‘¿ß6\\\\Ûù>ññœ‡=w¾Ñ³g9^ ü²ÊNŠƒ³',NULL,14554,'application/octet-stream','C',NULL,'2011-07-08',1,86,0,NULL),(331,'dorman_stems (4).txt','xÚMM‚0„÷=Å$,mzºÁ<àIûCÚJ‚„»«	·3ß|“¡òãô NÅ±ÀUwŠØ Ò/K”1úNSâˆKês”Æ ùò\rG÷¹ÈPû`Éá–ØZí!–3ëîÐ’!×±DÈ=¢¢{Âø4†g‰I·’ö=Ù‘ùGÕ[¶Šå7Ø±Íú©v‡„Ú>WñánM_',NULL,217,'application/octet-stream','C','Dorman Stem Files','2011-07-14',1,100502,0,NULL);
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
INSERT INTO `menu_hrh_ref_2` VALUES ('10302','19','Lodi Memorial Hospital','10',10,'019'),('6079','02','Woodland Senior Center','100',100,'002'),('6080','02','Other','101',101,'002'),('6081','02','Citizens for the Right to Know','102',102,'002'),('6082','02','Senior Nutrition Site','103',103,'002'),('6083','02','Chamber of Commerce','104',104,'002'),('6084','02','Protection and Advocacy','105',105,'002'),('6085','02','Slavic Community Center','106',106,'002'),('6086','02','Regional Children\'s Health Project','107',107,'002'),('6087','02','TMJ Society','108',108,'002'),('6088','02','Parkinson\'s Disease Association','109',109,'002'),('10407','20','Other','11',11,'020'),('6089','02','AARP','110',110,'002'),('6090','02','WEAVE','111',111,'002'),('6091','02','La Familia Counseling Center','112',112,'002'),('6092','02','Loaves & Fishes','113',113,'002'),('6093','02','California Welfare Rights','114',114,'002'),('6094','02','American Lung Association','115',115,'002'),('6095','02','Slavic Assistance Center','116',116,'002'),('6096','02','Hmong Women\'s Heritage Association','117',117,'002'),('6097','02','CA Health Incentives Improvement Project (CHIIP)','118',118,'002'),('7001','03','Other','119',119,'003'),('10510','21','Sutter Medical Group','12',12,'021'),('7101','04','PERS','120',120,'004'),('7102','04','STRS','121',121,'004'),('7103','04','Other','122',122,'004'),('7201','05','Other','123',123,'005'),('7202','05','SEIU','124',124,'005'),('8001','06','California Wellness Foundation','125',125,'006'),('8002','06','Kaiser Family Foundation','126',126,'006'),('8003','06','Sierra Health Foundation','127',127,'006'),('8004','06','The California Endowment','128',128,'006'),('9001','07','Centers for Disease Control','129',129,'007'),('10803','24','Placer Nevada Medical Society','13',13,'024'),('9002','07','Lumetra (CMRI) - California Medical Review Inc','130',130,'007'),('9003','07','Department of Labor','131',131,'007'),('9004','07','CMS-Centers for Medicare and Medicaid Services','132',132,'007'),('9005','07','Social Security Administration','133',133,'007'),('9006','07','Veterans Administration','134',134,'007'),('9007','07','Other','135',135,'007'),('9101','08','Department of Aging','136',136,'008'),('9102','08','Department of Consumer Affairs','137',137,'008'),('9103','08','Department of Corporations','138',138,'008'),('9104','08','Department of Health Services','139',139,'008'),('10908','25','Other','14',14,'025'),('9105','08','Department of Insurance','140',140,'008'),('9106','08','Health Care Options-Maximus','141',141,'008'),('9107','08','Department of Rehabilitation','142',142,'008'),('9108','08','Department of Managed Health Care','143',143,'008'),('9109','08','Employment Development Department (EDD)','144',144,'008'),('9110','08','CMAC-CA Medical Assistance Commission','145',145,'008'),('9111','08','Medical Board of California','146',146,'008'),('9112','08','MRMIB','147',147,'008'),('9113','08','Office of the Patient Advocate','148',148,'008'),('9114','08','Department of Social Services','149',149,'008'),('11001','27','Health Fair','15',15,'027'),('9201','09','Developmental Disabilities Advisory Council','150',150,'009'),('9202','09','El Dorado Dept of Community Services','151',151,'009'),('9203','09','El Dorado Medi-Cal Office (Welfare Dept)','152',152,'009'),('9204','09','GMC Commission','153',153,'009'),('9205','09','Placer Dept of Health & Human Services','154',154,'009'),('9206','09','Sacramento Dept of Health & Human Svcs','155',155,'009'),('9207','09','Sacramento Dept of Human Assistance','156',156,'009'),('9208','09','Sacramento District Attorneys Office','157',157,'009'),('9209','09','Sacramento Housing & Redevelop Agency','158',158,'009'),('9210','09','Sacramento Mental Health & Aging Comm','159',159,'009'),('12002','28','Family Member/Relative','16',16,'028'),('9211','09','Yolo County Dept of Health','160',160,'009'),('9212','09','Yolo County Dept of Social Services','161',161,'009'),('9213','09','Women Infant and Children (WIC)','162',162,'009'),('9214','09','California Childrens Services','163',163,'009'),('9215','09','CHDP','164',164,'009'),('9216','09','Sacramento County Dept. of Mental Health','165',165,'009'),('9217','09','First 5 Commission','166',166,'009'),('9501','12','House (Doolittle, Matsui, Ose, Pombo)','167',167,'012'),('9502','12','Senate (Boxer, Feinstein)','168',168,'012'),('9601','13','Assembly (Cox, Leslie, Nakanishi, Steinberg, Wolk)','169',169,'013'),('13102','30','Community Health Library (Placerville)','17',17,'030'),('9602','13','Senate (Aanestad, Machado, Oller, Ortiz)\n)','170',170,'013'),('9701','14','El Dorado Board of Supervisors','171',171,'014'),('9702','14','Placer Board of Supervisors','172',172,'014'),('9703','14','Sacramento Board of Supervisors','173',173,'014'),('9704','14','Yolo Board of Supervisors','174',174,'014'),('9901','46','Other','175',175,'046'),('9902','46','Community Clinic','176',176,'046'),('9903','46','County Clinic','177',177,'046'),('9904','46','Planned Parenthood','178',178,'046'),('9905','46','Feminist Women\'s Health Specialists','179',179,'046'),('15003','33','Davis Senior Scene','18',18,'033'),('10001','16','Access Dental','180',180,'016'),('10002','16','Aetna Dental Care','181',181,'016'),('10003','16','Alternative Dental Care','182',182,'016'),('10004','16','California Dental (see PacifiCare Dental & Vision)','183',183,'016'),('10005','16','CIGNA Dental','184',184,'016'),('10006','16','Community Dental Services','185',185,'016'),('10007','16','Delta Dental Plan','186',186,'016'),('10008','16','Dental Benefit Providers','187',187,'016'),('10009','16','Fortis Dental','188',188,'016'),('10010','16','HealthDent of California','189',189,'016'),('15204','35','Public Service Announcement','19',19,'035'),('10011','16','Mida Dental (Oral Health Services)','190',190,'016'),('10012','16','Pacific Union Dental','191',191,'016'),('10013','16','PacifiCare Dental & Vision','192',192,'016'),('10014','16','Preventive Dental','193',193,'016'),('10015','16','Prudent Buyer Dental (Wellpoint)','194',194,'016'),('10016','16','United Dental Care (UDC)','195',195,'016'),('10017','16','Wellpoint Dental Services (Blue Cross)','196',196,'016'),('10018','16','Western Dental Services','197',197,'016'),('10019','16','Other','198',198,'016'),('10101','17','Aetna/US Healthcare','199',199,'017'),('20001','41','Other','20',20,'041'),('10102','17','Blue Cross','200',200,'017'),('10103','17','Blue Shield','201',201,'017'),('10104','17','BPS Healthcare','202',202,'017'),('10105','17','CIGNA Healthcare','203',203,'017'),('10106','17','FEHBP - APWU (American Postal Workers\' Union)','204',204,'017'),('10107','17','FEHBP - Blue Cross/Blue Shield PPO','205',205,'017'),('10108','17','FEHBP - GEHA (Government Employee Hospital Associa','206',206,'017'),('10110','17','FEHBP - NALC (National Association of Letter Carri','208',208,'017'),('10111','17','FEHBP - Other','209',209,'017'),('5001','01','Assetcare','21',21,'001'),('10112','17','FEHBP - Postmasters','210',210,'017'),('10113','17','FHP/Take Care','211',211,'017'),('10114','17','First Health Group Corp.','212',212,'017'),('10115','17','Foundation/Health Net','213',213,'017'),('10116','17','Great West Life (One Health Plan)','214',214,'017'),('10117','17','Interplan Corp.','215',215,'017'),('10118','17','Kaiser Foundation Health Plan','216',216,'017'),('10119','17','Marshall Medical Plan','217',217,'017'),('10120','17','Maxicare','218',218,'017'),('10121','17','Omni','219',219,'017'),('5002','01','Other','22',22,'001'),('10122','17','Pacific Foundation for Medical Care','220',220,'017'),('10123','17','Pacific Health Alliance','221',221,'017'),('10124','17','PacifiCare','222',222,'017'),('10125','17','Preferred Health Network','223',223,'017'),('10126','17','Prudential','224',224,'017'),('10127','17','United Healthcare','225',225,'017'),('10128','17','Western Health Advantage','226',226,'017'),('10129','17','Other','227',227,'017'),('10130','17','Health Net','228',228,'017'),('10201','18','Mercy Healthcare Sacramento','229',229,'018'),('6001','02','AIDS Action League','23',23,'002'),('10202','18','Sutter Health','230',230,'018'),('10203','18','UC Davis Health System','231',231,'018'),('10204','18','Other','232',232,'018'),('10301','19','Barton Hospital','233',233,'019'),('10303','19','Marshall Hospital','235',235,'019'),('10304','19','Shriners Hospital for Children','236',236,'019'),('10305','19','Sierra Nevada Hospital','237',237,'019'),('10306','19','Tahoe Forest Hospital','238',238,'019'),('10307','19','Other','239',239,'019'),('6002','02','AIDS Task Force-Lake Tahoe','24',24,'002'),('10401','20','Dentist','240',240,'020'),('10402','20','Doctor/Physician','241',241,'020'),('10403','20','Non-Physician Provider','242',242,'020'),('10404','20','Nurse','243',243,'020'),('10405','20','Psychiatrist','244',244,'020'),('10406','20','Psychologist','245',245,'020'),('10408','20','Pharmacist','247',247,'020'),('10501','21','FPA Medical Management','248',248,'021'),('10502','21','Golden State Physicians Medical Group','249',249,'021'),('6003','02','Alliance for the Mentally Ill-Placer','25',25,'002'),('10503','21','Hill Physicians','250',250,'021'),('10504','21','Marshall El Dorado PHO','251',251,'021'),('10505','21','MedClinic','252',252,'021'),('10506','21','Molina Medical Centers','253',253,'021'),('10507','21','Permanente Medical Group','254',254,'021'),('10508','21','River City Medical Group','255',255,'021'),('10509','21','Sutter Independent Physicians','256',256,'021'),('10511','21','Sutter West Medical Group','258',258,'021'),('10512','21','UC Davis Medical Group','259',259,'021'),('6004','02','Alta Regional Center','26',26,'002'),('10513','21','University Faculty Medical Associates','260',260,'021'),('10514','21','Woodland Clinic','261',261,'021'),('10515','21','Other','262',262,'021'),('10601','22','Counseling Center','263',263,'022'),('10602','22','Facility','264',264,'022'),('10603','22','Plan','265',265,'022'),('10604','22','Other','266',266,'022'),('10701','23','Other','267',267,'023'),('10801','24','California Medical Association','268',268,'024'),('10802','24','California Nurses Association','269',269,'024'),('6005','02','Alzheimers Support Group','27',27,'002'),('10804','24','Sacramento District Dental Society','271',271,'024'),('10805','24','Sacramento El Dorado Medical Society','272',272,'024'),('10806','24','Sacramento Valley Pharmacists Assoc','273',273,'024'),('10807','24','Other','274',274,'024'),('10901','25','EyeExam 2000 (Lens Crafters)','275',275,'025'),('10902','25','NVAL Visioncare Systems','276',276,'025'),('10903','25','PacifiCare Dental & Vision','277',277,'025'),('10904','25','Pearle Visioncare','278',278,'025'),('10905','25','Vision Plan of America','279',279,'025'),('6006','02','American Cancer Society','28',28,'002'),('10906','25','Vision Service Plan','280',280,'025'),('10907','25','Visioncare of California (Sterling Visioncare)','281',281,'025'),('11002','27','Presentation','284',284,'027'),('11003','27','Prior Client','285',285,'027'),('11004','27','Web Site','286',286,'027'),('11005','27','Other','287',287,'027'),('11006','27','Presentation-Women Infant Children (WIC)','288',288,'027'),('11007','27','Presentation-Sacramento Lao Family Community','289',289,'027'),('6007','02','American Heart Association','29',29,'002'),('11008','27','Presentation-Slavic Community Center','290',290,'027'),('11009','27','Presentation-La Familia','291',291,'027'),('11010','27','Brochure','292',292,'027'),('12001','28','Attorney','293',293,'028'),('12003','28','Friend','295',295,'028'),('12004','28','Minister','296',296,'028'),('12005','28','Supervisor','297',297,'028'),('12006','28','Other','298',298,'028'),('12007','28','Social Worker','299',299,'028'),('6008','02','Area 4 Agency on Aging','30',30,'002'),('13001','29','InfoLine Sacramento','300',300,'029'),('13002','29','Placer Information & Referral','301',301,'029'),('13003','29','YoloLink','302',302,'029'),('13004','29','Eldercare Referral Service','303',303,'029'),('13101','30','Auburn Public Library','304',304,'030'),('13103','30','El Dorado County Library-So Lake Tahoe','306',306,'030'),('13104','30','Guttman Library & Information Center','307',307,'030'),('13105','30','Kaiser Health Education Center','308',308,'030'),('13106','30','MedClinic Resource Library','309',309,'030'),('6009','02','Area Agency on Aging-El Dorado','31',31,'002'),('13107','30','Roseville Public Library','310',310,'030'),('13108','30','Sacramento Public Library','311',311,'030'),('13109','30','South Lake Tahoe Public Library','312',312,'030'),('13110','30','Sutter Resource Library','313',313,'030'),('13111','30','UC Davis Library','314',314,'030'),('13112','30','Woodland Public Library','315',315,'030'),('13113','30','Yolo County Library','316',316,'030'),('13301','45','Women\'s Resource Directory','317',317,'045'),('13302','45','Sacramento County Bar Directory','318',318,'045'),('13303','45','Lesbian Health Resource Guide','319',319,'045'),('6010','02','Arthritis Foundation','32',32,'002'),('13304','45','Senior Health Resource Guide','320',320,'045'),('13305','45','Sierra Sacramento Valley Medical Society','321',321,'045'),('13306','45','Community Resources for Older Adults','322',322,'045'),('14001','32','Broker/Agent','323',323,'032'),('14002','32','Company/TPA','324',324,'032'),('15001','33','Auburn Journal','325',325,'033'),('15002','33','Davis Enterprise','326',326,'033'),('15004','33','Fresno Bee','328',328,'033'),('15005','33','La Voz','329',329,'033'),('6011','02','Arthritis Support Group-Mercy Rehab','33',33,'002'),('15006','33','Los Angeles Times','330',330,'033'),('15007','33','Modesto Bee','331',331,'033'),('15008','33','Parents Magazine','332',332,'033'),('15009','33','Placerville Mountain Democrat','333',333,'033'),('15010','33','Sacramento Bee','334',334,'033'),('15011','33','Sacramento Business Journal','335',335,'033'),('15012','33','Sacramento News & Review','336',336,'033'),('15013','33','Senior Spectrum','337',337,'033'),('15014','33','Tahoe Daily Tribune','338',338,'033'),('15015','33','Wall Street Journal','339',339,'033'),('6012','02','Bar Association-El Dorado','34',34,'002'),('15016','33','San Francisco Chronicle','340',340,'033'),('15017','33','Fresno Bee','341',341,'033'),('15018','33','Russian Paper','342',342,'033'),('15099','33','Other','343',343,'033'),('15101','34','Advertisement','344',344,'034'),('15102','34','News Story','345',345,'034'),('15103','34','Public Service Announcement','346',346,'034'),('15104','34','Talk Show','347',347,'034'),('15199','34','Other','348',348,'034'),('15201','35','Advertisement','349',349,'035'),('6013','02','Bar Association-Placer','35',35,'002'),('15202','35','Call 3 - KCRA','350',350,'035'),('15203','35','News Story','351',351,'035'),('15205','35','Talk Show','353',353,'035'),('15299','35','Other','354',354,'035'),('18001','39','Information 411','355',355,'039'),('18002','39','Local Talk','356',356,'039'),('18003','39','Toll Free Operator','357',357,'039'),('18004','39','White Pages','358',358,'039'),('18005','39','Yellow Pages/ Community Service Listing','359',359,'039'),('6014','02','Bar Association-Sacramento','36',36,'002'),('18006','39','Russian Yellow Pages','360',360,'039'),('19001','40','Lost? Photo/Red 998-1','361',361,'040'),('19002','40','Not Knowing Blue/Orange 998-2','362',362,'040'),('19003','40','Throw Away Manilla/Black 998-3','363',363,'040'),('19004','40','Unknown','364',364,'040'),('20002','41','Publication/Newsletter','366',366,'041'),('21001','42','Nurse','367',367,'042'),('21002','42','Other','368',368,'042'),('21003','43','Unknown','369',369,'043'),('6015','02','Bar Association-Yolo','37',37,'002'),('21004','42','Head Start','370',370,'042'),('21005','42','Office','371',371,'042'),('21006','42','School Office','372',372,'042'),('21007','42','School District','373',373,'042'),('21008','42','Teacher','374',374,'042'),('6016','02','California Advocates for Nursing Home Reform (CANH','38',38,'002'),('6017','02','California Alliance for Mentally Ill','39',39,'002'),('6019','02','California WomenÃ¢â‚¬â„¢s Law Center','40',40,'002'),('6020','02','Cancer Information Service','41',41,'002'),('6021','02','Center for Health Care Rights','42',42,'002'),('6022','02','CFIDS Foundation','43',43,'002'),('6023','02','Community Services Planning Council','44',44,'002'),('6024','02','Congress of California Seniors','45',45,'002'),('6025','02','Consumer Self-Help North','46',46,'002'),('6026','02','Court Appointed Special Assistance','47',47,'002'),('6027','02','Del Oro Caregiver Resource Center','48',48,'002'),('6028','02','DERA-Disability & Employment Rights','49',49,'002'),('6029','02','East Area Mental Health Clinic','50',50,'002'),('6030','02','Easter Seal Society','51',51,'002'),('6031','02','Epilepsy Support Group','52',52,'002'),('6032','02','Families for Early Autism Treatment','53',53,'002'),('6033','02','Family Resource Center','54',54,'002'),('6034','02','Fibromyalgia Support Group','55',55,'002'),('6035','02','Galt Concilio','56',56,'002'),('6036','02','Hart Senior Center','57',57,'002'),('6037','02','Health Communication Research Institute','58',58,'002'),('6038','02','Health Education Council','59',59,'002'),('6039','02','HICAP-Local','60',60,'002'),('6040','02','HICAP-Other/Out of Area','61',61,'002'),('6041','02','Interstitial Cystitis Support Group','62',62,'002'),('6042','02','LCED-Legal Ctr for Elderly & Disabled','63',63,'002'),('6043','02','Legal Foundation for Health Care Rights','64',64,'002'),('6044','02','Leukemia Society','65',65,'002'),('6045','02','Long Term Care Ombudsman-El Dorado','66',66,'002'),('6046','02','Long Term Care Ombudsman-N CA','67',67,'002'),('6047','02','LSNC - Auburn','68',68,'002'),('6048','02','LSNC - Sacramento','69',69,'002'),('6049','02','LSNC - Yolo','70',70,'002'),('6050','02','LSNC - Other','71',71,'002'),('6051','02','Lupus Foundation','72',72,'002'),('6052','02','Maidu Community Center','73',73,'002'),('6053','02','McGeorge School of Law','74',74,'002'),('6054','02','Mental Health Association, Sacramento','75',75,'002'),('6055','02','Mexican American Alcoholism Association','76',76,'002'),('6056','02','Mission Oaks Senior Center','77',77,'002'),('6057','02','Multiple Sclerosis Society','78',78,'002'),('6058','02','Muscular Dystrophy Association','79',79,'002'),('6059','02','National Scoliosis Foundation','80',80,'002'),('6060','02','Parents & Children Experiencing Diabetes','81',81,'002'),('6061','02','Patients Rights Advocate (Mental Health)','82',82,'002'),('6062','02','Placer Independent Resources Services','83',83,'002'),('6063','02','Placerville Senior Center','84',84,'002'),('6064','02','Planned Parenthood','85',85,'002'),('6065','02','Resources for Independent Living','86',86,'002'),('6066','02','Respect Your Elders','87',87,'002'),('6067','02','Sacramento AIDS Foundation','88',88,'002'),('6068','02','Sacramento Alliance for Mentally Ill','89',89,'002'),('10109','17','FEHBP - Mail Handlers','9',9,'017'),('6069','02','Sacramento Association for Retarded','90',90,'002'),('6070','02','Sacramento Lao Family Community','91',91,'002'),('6071','02','Sacramento Mediation Center','92',92,'002'),('6072','02','Sacramento Retinitis Pigmentosa Society','93',93,'002'),('6073','02','Sacramento Tourette Syndrome Support Group','94',94,'002'),('6074','02','SALSA','95',95,'002'),('6075','02','Senior Legal Hotline','96',96,'002'),('6076','02','Society for the Blind','97',97,'002'),('6077','02','Stanford Settlement Senior Center','98',98,'002'),('6078','02','VLSP-Voluntary Legal Services Program','99',99,'002');
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
INSERT INTO `menu_noncitizentype` VALUES ('A','has \"green card\" (lawful permanent resident)',0),('B','has applied in U.S. for adjustment of status',1),('C','has filed abroad to adjust to LPR status',2),('D','pending self-petition (as widow, spouse, child or fiancÃƒÂ©)',3),('E','Asylum granted',4),('F','Family Unity',6),('G','Withholding or Deferral of Deportation / Removal',14),('H','IRCA',7),('I','NACARA (certain Guatemalans, Salvadorans &  Eastern Europeans)',9),('J','Refugee admission',10),('K','Registry',11),('L','Suspension of Deportation',12),('M','K visa applicant or holder',15),('N','S visa holder',16),('O','T visa applicant (includes derivative family member)',17),('P','U visa applicant (includes derivative family member)',18),('Q','V visa applicant or holder',19),('R','H-2B visa holder (rep limited to employment issues)',20),('S','Ã¢â‚¬Â  VAWA (rep limited to begin or pending petition)',23),('T','Conditional Entrant',5),('U','Ã¢â‚¬Â  Domestic violence exception (rep limited to escape)',21),('V','Ã¢â‚¬Â  Other violence (rep limited to escape or U/VAWA pet.)',22),('W','Marshall Islands, Micronesia, Northern Marianas Islands or Palau citizen',8),('X','VAWA petition granted',13);
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
