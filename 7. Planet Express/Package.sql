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

 Date: 07/01/2019 21:41:45 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Package`
-- ----------------------------
DROP TABLE IF EXISTS `Package`;
CREATE TABLE `Package` (
  `Shipment` int(11) NOT NULL,
  `PackageNumber` int(11) NOT NULL,
  `Contents` varchar(255) NOT NULL,
  `Weight` double NOT NULL,
  `Sender` int(11) NOT NULL,
  `Recipient` int(11) NOT NULL,
  PRIMARY KEY (`Shipment`,`PackageNumber`),
  KEY `Sender` (`Sender`),
  KEY `Recipient` (`Recipient`),
  CONSTRAINT `package_ibfk_1` FOREIGN KEY (`Shipment`) REFERENCES `Shipment` (`ShipmentID`),
  CONSTRAINT `package_ibfk_2` FOREIGN KEY (`Sender`) REFERENCES `Client` (`AccountNumber`),
  CONSTRAINT `package_ibfk_3` FOREIGN KEY (`Recipient`) REFERENCES `Client` (`AccountNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Package`
-- ----------------------------
BEGIN;
INSERT INTO `Package` VALUES ('1', '1', 'Undeclared', '1.5', '1', '2'), ('2', '1', 'Undeclared', '10', '2', '3'), ('2', '2', 'A bucket of krill', '2', '8', '7'), ('3', '1', 'Undeclared', '15', '3', '4'), ('3', '2', 'Undeclared', '3', '5', '1'), ('3', '3', 'Undeclared', '7', '2', '3'), ('4', '1', 'Undeclared', '5', '4', '5'), ('4', '2', 'Undeclared', '27', '1', '2'), ('5', '1', 'Undeclared', '100', '5', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
