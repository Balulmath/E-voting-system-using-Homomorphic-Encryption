-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema voteuser
--

CREATE DATABASE IF NOT EXISTS voteuser;
USE voteuser;

--
-- Definition of table `userreg`
--

DROP TABLE IF EXISTS `userreg`;
CREATE TABLE `userreg` (
  `uname` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `emailidd` varchar(145) NOT NULL,
  `mono` varchar(15) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreg`
--

/*!40000 ALTER TABLE `userreg` DISABLE KEYS */;
INSERT INTO `userreg` (`uname`,`name`,`pass`,`gen`,`age`,`emailidd`,`mono`) VALUES 
 ('eswar','eswar','eswar','Male',30,'eswaranmindsoft@gmail.com','9844641410'),
 ('meghana','meghana','meghana','Female',19,'meghana@gmail.com','9876543210');
/*!40000 ALTER TABLE `userreg` ENABLE KEYS */;


--
-- Definition of table `vote_iplocks`
--

DROP TABLE IF EXISTS `vote_iplocks`;
CREATE TABLE `vote_iplocks` (
  `poll_id` bigint(20) NOT NULL,
  `ip` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`poll_id`,`ip`),
  CONSTRAINT `vote_iplocks_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `vote_polls` (`poll_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote_iplocks`
--

/*!40000 ALTER TABLE `vote_iplocks` DISABLE KEYS */;
INSERT INTO `vote_iplocks` (`poll_id`,`ip`) VALUES 
 (1,'0:0:0:0:0:0:0:1'),
 (2,'0:0:0:0:0:0:0:1'),
 (3,'0:0:0:0:0:0:0:1'),
 (5,'0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `vote_iplocks` ENABLE KEYS */;


--
-- Definition of table `vote_polls`
--

DROP TABLE IF EXISTS `vote_polls`;
CREATE TABLE `vote_polls` (
  `poll_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `max_answers` smallint(6) NOT NULL DEFAULT '1',
  `description` varchar(255) NOT NULL DEFAULT '',
  `enabled` enum('Y','N') NOT NULL DEFAULT 'N',
  `anonymous` enum('Y','N') NOT NULL DEFAULT 'Y',
  `expired` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`poll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote_polls`
--

/*!40000 ALTER TABLE `vote_polls` DISABLE KEYS */;
INSERT INTO `vote_polls` (`poll_id`,`title`,`max_answers`,`description`,`enabled`,`anonymous`,`expired`) VALUES 
 (1,'Movie',1,'Robo2.0','Y','Y','N'),
 (2,'BJP Activites',1,'About Central Government in India','Y','Y','N'),
 (3,'KARNATAKA GROWTH',1,'IN Congress Period','Y','Y','N'),
 (5,'Karnataka state Election',1,'To whom u will select as cm','Y','Y','N');
/*!40000 ALTER TABLE `vote_polls` ENABLE KEYS */;


--
-- Definition of table `vote_userlocks`
--

DROP TABLE IF EXISTS `vote_userlocks`;
CREATE TABLE `vote_userlocks` (
  `poll_id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`poll_id`,`username`),
  CONSTRAINT `vote_userlocks_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `vote_polls` (`poll_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote_userlocks`
--

/*!40000 ALTER TABLE `vote_userlocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote_userlocks` ENABLE KEYS */;


--
-- Definition of table `vote_votes`
--

DROP TABLE IF EXISTS `vote_votes`;
CREATE TABLE `vote_votes` (
  `poll_id` bigint(20) NOT NULL,
  `option_id` smallint(6) NOT NULL DEFAULT '0',
  `option_text` varchar(255) NOT NULL DEFAULT '',
  `counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`poll_id`,`option_id`),
  CONSTRAINT `vote_votes_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `vote_polls` (`poll_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote_votes`
--

/*!40000 ALTER TABLE `vote_votes` DISABLE KEYS */;
INSERT INTO `vote_votes` (`poll_id`,`option_id`,`option_text`,`counter`) VALUES 
 (1,1,'Good',1),
 (1,2,'Average',0),
 (1,3,'ok',0),
 (1,4,'bad',0),
 (2,1,'Excellent',0),
 (2,2,'Good',0),
 (2,3,'Average',0),
 (2,4,'Bad',1),
 (3,1,'Excellent',0),
 (3,2,'Good',1),
 (3,3,'Average',0),
 (3,4,'Bad',0),
 (5,1,'Siddhamaraiah',1),
 (5,2,'Yeddurappa',0),
 (5,3,'Kumaraswamy',0),
 (5,4,'Nota',0);
/*!40000 ALTER TABLE `vote_votes` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
