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

 Date: 07/01/2019 21:31:46 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Boxes`
-- ----------------------------
DROP TABLE IF EXISTS `Boxes`;
CREATE TABLE `Boxes` (
  `Code` varchar(255) NOT NULL,
  `Contents` varchar(255) NOT NULL,
  `Value` double NOT NULL,
  `Warehouse` int(11) NOT NULL,
  PRIMARY KEY (`Code`),
  KEY `Warehouse` (`Warehouse`),
  CONSTRAINT `boxes_ibfk_1` FOREIGN KEY (`Warehouse`) REFERENCES `Warehouses` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Boxes`
-- ----------------------------
BEGIN;
INSERT INTO `Boxes` VALUES ('0MN7', 'Rocks', '180', '3'), ('4H8P', 'Rocks', '250', '1'), ('4RT3', 'Scissors', '190', '4'), ('7G3H', 'Rocks', '200', '1'), ('8JN6', 'Papers', '75', '1'), ('8Y6U', 'Papers', '50', '3'), ('9J6F', 'Papers', '175', '2'), ('LL08', 'Rocks', '140', '4'), ('P0H6', 'Scissors', '125', '1'), ('P2T6', 'Scissors', '150', '2'), ('TU55', 'Papers', '90', '5');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
