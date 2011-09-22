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
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

ALTER TABLE `activities` ADD COLUMN  `subject` varchar(256) NOT NULL;
ALTER TABLE `activities` ADD COLUMN  `location_long` varchar(256) NOT NULL;

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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `menu_tickle_times` (
  `value` varchar(8) NOT NULL,
  `label` varchar(8) NOT NULL,
  `menu_order` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`value`),
  KEY `label` (`label`) USING BTREE,
  KEY `menu_order` (`menu_order`) USING BTREE,
  KEY `val` (`value`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

INSERT INTO `menu_tickle_times` (`value`, `label`, `menu_order`) VALUES
('7:00 AM', '7:00 AM', 0),
('7:30 AM', '7:30 AM', 1),
('8:00 AM', '8:00 AM', 2),
('8:30 AM', '8:30 AM', 3),
('9:00 AM', '9:00 AM', 4),
('9:30 AM', '9:30 AM', 5),
('10:00 AM', '10:00 AM', 6),
('10:30 AM', '10:30 AM', 7),
('11:00 AM', '11:00 AM', 8),
('11:30 AM', '11:30 AM', 9),
('12:00 PM', '12:00 PM', 10),
('12:30 PM', '12:30 PM', 11),
('1:00 PM', '1:00 PM', 12),
('1:30 PM', '1:30 PM', 13),
('2:00 PM', '2:00 PM', 14),
('2:30 PM', '2:30 PM', 15),
('3:00 PM', '3:00 PM', 16),
('3:30 PM', '3:30 PM', 17),
('4:00 PM', '4:00 PM', 18),
('4:30 PM', '4:30 PM', 19),
('5:00 PM', '5:00 PM', 20),
('5:30 PM', '5:30 PM', 21),
('6:00 PM', '6:00 PM', 22),
('6:30 PM', '6:30 PM', 23),
('7:00 PM', '7:00 PM', 24),
('7:30 PM', '7:30 PM', 25),
('8:00 PM', '8:00 PM', 26),
('8:30 PM', '8:30 PM', 27),
('9:00 PM', '9:00 PM', 28),
('9:30 PM', '9:30 PM', 29),
('10:00 PM', '10:00 PM', 30),
('10:30 PM', '10:30 PM', 31),
('11:00 PM', '11:00 PM', 32),
('11:30 PM', '11:30 PM', 33),
('12:00 AM', '12:00 AM', 34),
('12:30 AM', '12:30 PM', 35),
('1:00 AM', '1:00 AM', 36),
('1:30 AM', '1:30 AM', 37),
('2:00 AM', '2:00 AM', 38),
('2:30 AM', '2:30 AM', 39),
('3:00 AM', '3:00 AM', 40),
('3:30 AM', '3:30 AM', 41),
('4:00 AM', '4:00 AM', 42),
('4:30 AM', '4:30 AM', 43),
('5:00 AM', '5:00 AM', 44),
('5:30 AM', '5:30 AM', 45),
('6:00 AM', '6:00 AM', 46),
('6:30 AM', '6:30 AM', 47);
