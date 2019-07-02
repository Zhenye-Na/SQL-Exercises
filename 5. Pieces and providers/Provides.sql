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

 Date: 07/01/2019 21:36:39 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Provides`
-- ----------------------------
DROP TABLE IF EXISTS `Provides`;
CREATE TABLE `Provides` (
  `Piece` int(11) NOT NULL,
  `Provider` varchar(40) NOT NULL,
  `Price` int(11) NOT NULL,
  PRIMARY KEY (`Piece`,`Provider`),
  KEY `Provider` (`Provider`),
  CONSTRAINT `provides_ibfk_1` FOREIGN KEY (`Piece`) REFERENCES `Pieces` (`Code`),
  CONSTRAINT `provides_ibfk_2` FOREIGN KEY (`Provider`) REFERENCES `Providers` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Provides`
-- ----------------------------
BEGIN;
INSERT INTO `Provides` VALUES ('1', 'HAL', '10'), ('1', 'RBT', '15'), ('2', 'HAL', '20'), ('2', 'RBT', '15'), ('2', 'TNBC', '14'), ('3', 'RBT', '50'), ('3', 'TNBC', '45'), ('4', 'HAL', '5'), ('4', 'RBT', '7');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
