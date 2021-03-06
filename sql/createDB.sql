-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.6.17 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de la structure de la base pour projet_java
CREATE DATABASE IF NOT EXISTS `projet_java` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `projet_java`;


-- Export de la structure de table projet_java. maps
CREATE TABLE IF NOT EXISTS `maps` (
  `mapID` int(10) NOT NULL AUTO_INCREMENT,
  `mapName` tinytext NOT NULL,
  `backgroundPath` tinytext NOT NULL,
  `width` tinyint(4) NOT NULL,
  `height` tinyint(4) NOT NULL,
  PRIMARY KEY (`mapID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Export de données de la table projet_java.maps : ~4 rows (environ)
/*!40000 ALTER TABLE `maps` DISABLE KEYS */;
INSERT INTO `maps` (`mapID`, `mapName`, `backgroundPath`, `width`, `height`) VALUES
	(1, 'Carte 1', 'resources/maps/niveau_1.jpeg', 15, 15),
	(2, 'Carte 2', 'resources/maps/niveau_1.jpeg', 15, 15),
	(3, 'Carte 3', 'resources/maps/niveau_1.jpeg', 15, 15),
	(4, 'Carte 4', 'resources/maps/niveau_1.jpeg', 15, 15);
/*!40000 ALTER TABLE `maps` ENABLE KEYS */;


-- Export de la structure de table projet_java. saved_games
CREATE TABLE IF NOT EXISTS `saved_games` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `gameName` tinytext NOT NULL,
  `mapID` int(11) NOT NULL,
  `resources` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `survivedTime` int(11) NOT NULL,
  `kills` int(11) NOT NULL,
  PRIMARY KEY (`gameID`),
  KEY `FK_saved_games_mapID` (`mapID`),
  CONSTRAINT `FK_saved_games_mapID` FOREIGN KEY (`mapID`) REFERENCES `maps` (`mapID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Export de données de la table projet_java.saved_games : ~4 rows (environ)
/*!40000 ALTER TABLE `saved_games` DISABLE KEYS */;
INSERT INTO `saved_games` (`gameID`, `gameName`, `mapID`, `resources`, `score`, `survivedTime`, `kills`) VALUES
	(1, 'Test', 1, 0, 0, 0, 0),
	(2, 'Rockfire Joue !', 3, 0, 0, 0, 0),
	(3, 'TEST50', 2, 300, 0, 0, 0),
	(4, 'Estez', 2, 150, 0, 0, 0);
/*!40000 ALTER TABLE `saved_games` ENABLE KEYS */;


-- Export de la structure de table projet_java. spawnpoint
CREATE TABLE IF NOT EXISTS `spawnpoint` (
  `mapID` int(11) NOT NULL,
  `x` tinyint(4) DEFAULT NULL,
  `y` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mapID`),
  CONSTRAINT `FK_mapID` FOREIGN KEY (`mapID`) REFERENCES `maps` (`mapID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table projet_java.spawnpoint : ~4 rows (environ)
/*!40000 ALTER TABLE `spawnpoint` DISABLE KEYS */;
INSERT INTO `spawnpoint` (`mapID`, `x`, `y`) VALUES
	(1, 1, 2),
	(2, 1, 2),
	(3, 1, 2),
	(4, 1, 2);
/*!40000 ALTER TABLE `spawnpoint` ENABLE KEYS */;


-- Export de la structure de table projet_java. workstation
CREATE TABLE IF NOT EXISTS `workstation` (
  `mapID` int(11) NOT NULL,
  `x` tinyint(4) DEFAULT NULL,
  `y` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mapID`),
  CONSTRAINT `workstation_ibfk_1` FOREIGN KEY (`mapID`) REFERENCES `maps` (`mapID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Export de données de la table projet_java.workstation : ~4 rows (environ)
/*!40000 ALTER TABLE `workstation` DISABLE KEYS */;
INSERT INTO `workstation` (`mapID`, `x`, `y`) VALUES
	(1, 14, 15),
	(2, 14, 15),
	(3, 14, 15),
	(4, 14, 15);
/*!40000 ALTER TABLE `workstation` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
