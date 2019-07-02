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

 Date: 07/01/2019 21:33:48 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `MovieTheaters`
-- ----------------------------
DROP TABLE IF EXISTS `MovieTheaters`;
CREATE TABLE `MovieTheaters` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Movie` int(11) DEFAULT NULL,
  PRIMARY KEY (`Code`),
  KEY `Movie` (`Movie`),
  CONSTRAINT `movietheaters_ibfk_1` FOREIGN KEY (`Movie`) REFERENCES `Movies` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `MovieTheaters`
-- ----------------------------
BEGIN;
INSERT INTO `MovieTheaters` VALUES ('1', 'Odeon', '5'), ('2', 'Imperial', '1'), ('3', 'Majestic', null), ('4', 'Royale', '6'), ('5', 'Paraiso', '3'), ('6', 'Nickelodeon', null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
