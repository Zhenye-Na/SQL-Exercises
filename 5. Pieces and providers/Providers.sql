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

 Date: 07/01/2019 21:36:33 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Providers`
-- ----------------------------
DROP TABLE IF EXISTS `Providers`;
CREATE TABLE `Providers` (
  `Code` varchar(40) NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Providers`
-- ----------------------------
BEGIN;
INSERT INTO `Providers` VALUES ('HAL', 'Clarke Enterprises'), ('RBT', 'Susan Calvin Corp.'), ('TNBC', 'Skellington Supplies');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
