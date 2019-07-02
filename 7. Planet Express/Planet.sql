/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost
 Source Database       : sql-problems

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : utf-8

 Date: 07/01/2019 21:40:58 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Planet`
-- ----------------------------
DROP TABLE IF EXISTS `Planet`;
CREATE TABLE `Planet` (
  `PlanetID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Coordinates` double NOT NULL,
  PRIMARY KEY (`PlanetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Planet`
-- ----------------------------
BEGIN;
INSERT INTO `Planet` VALUES ('1', 'Omicron Persei 8', '89475345.3545'), ('2', 'Decapod X', '65498463216.3466'), ('3', 'Mars', '32435021.65468'), ('4', 'Omega III', '98432121.5464'), ('5', 'Tarantulon VI', '849842198.354654'), ('6', 'Cannibalon', '654321987.21654'), ('7', 'DogDoo VII', '65498721354.688'), ('8', 'Nintenduu 64', '6543219894.1654'), ('9', 'Amazonia', '65432135979.6547');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
