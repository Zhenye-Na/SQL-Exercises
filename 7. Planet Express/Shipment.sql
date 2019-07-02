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

 Date: 07/01/2019 21:41:04 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Shipment`
-- ----------------------------
DROP TABLE IF EXISTS `Shipment`;
CREATE TABLE `Shipment` (
  `ShipmentID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Manager` int(11) NOT NULL,
  `Planet` int(11) NOT NULL,
  PRIMARY KEY (`ShipmentID`),
  KEY `Manager` (`Manager`),
  KEY `Planet` (`Planet`),
  CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`Manager`) REFERENCES `Employee` (`EmployeeID`),
  CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`Planet`) REFERENCES `Planet` (`PlanetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Shipment`
-- ----------------------------
BEGIN;
INSERT INTO `Shipment` VALUES ('1', '3004-05-11', '1', '1'), ('2', '3004-05-11', '1', '2'), ('3', null, '2', '3'), ('4', null, '2', '4'), ('5', null, '7', '5');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
