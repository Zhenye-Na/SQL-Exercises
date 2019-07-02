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

 Date: 07/01/2019 21:31:51 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Warehouses`
-- ----------------------------
DROP TABLE IF EXISTS `Warehouses`;
CREATE TABLE `Warehouses` (
  `Code` int(11) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Capacity` int(11) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Warehouses`
-- ----------------------------
BEGIN;
INSERT INTO `Warehouses` VALUES ('1', 'Chicago', '3'), ('2', 'Chicago', '4'), ('3', 'New York', '7'), ('4', 'Los Angeles', '2'), ('5', 'San Francisco', '8');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
