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

 Date: 07/01/2019 21:41:23 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Client`
-- ----------------------------
DROP TABLE IF EXISTS `Client`;
CREATE TABLE `Client` (
  `AccountNumber` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`AccountNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Client`
-- ----------------------------
BEGIN;
INSERT INTO `Client` VALUES ('1', 'Zapp Brannigan'), ('2', 'Al Gore\'s Head'), ('3', 'Barbados Slim'), ('4', 'Ogden Wernstrom'), ('5', 'Leo Wong'), ('6', 'Lrrr'), ('7', 'John Zoidberg'), ('8', 'John Zoidfarb'), ('9', 'Morbo'), ('10', 'Judge John Whitey'), ('11', 'Calculon');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
