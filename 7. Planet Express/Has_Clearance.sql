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

 Date: 07/01/2019 21:41:31 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Has_Clearance`
-- ----------------------------
DROP TABLE IF EXISTS `Has_Clearance`;
CREATE TABLE `Has_Clearance` (
  `Employee` int(11) NOT NULL,
  `Planet` int(11) NOT NULL,
  `Level` int(11) NOT NULL,
  PRIMARY KEY (`Employee`,`Planet`),
  KEY `Planet` (`Planet`),
  CONSTRAINT `has_clearance_ibfk_1` FOREIGN KEY (`Employee`) REFERENCES `Employee` (`EmployeeID`),
  CONSTRAINT `has_clearance_ibfk_2` FOREIGN KEY (`Planet`) REFERENCES `Planet` (`PlanetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Has_Clearance`
-- ----------------------------
BEGIN;
INSERT INTO `Has_Clearance` VALUES ('1', '1', '2'), ('1', '2', '3'), ('2', '3', '2'), ('2', '4', '4'), ('3', '5', '2'), ('3', '6', '4'), ('4', '7', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
