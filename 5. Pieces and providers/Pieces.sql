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

 Date: 07/01/2019 21:36:27 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Pieces`
-- ----------------------------
DROP TABLE IF EXISTS `Pieces`;
CREATE TABLE `Pieces` (
  `Code` int(11) NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Pieces`
-- ----------------------------
BEGIN;
INSERT INTO `Pieces` VALUES ('1', 'Sprocket'), ('2', 'Screw'), ('3', 'Nut'), ('4', 'Bolt');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
