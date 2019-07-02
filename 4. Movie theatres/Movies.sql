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

 Date: 07/01/2019 21:33:54 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Movies`
-- ----------------------------
DROP TABLE IF EXISTS `Movies`;
CREATE TABLE `Movies` (
  `Code` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Rating` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Movies`
-- ----------------------------
BEGIN;
INSERT INTO `Movies` VALUES ('1', 'Citizen Kane', 'PG'), ('2', 'Singin\' in the Rain', 'G'), ('3', 'The Wizard of Oz', 'G'), ('4', 'The Quiet Man', null), ('5', 'North by Northwest', null), ('6', 'The Last Tango in Paris', 'NC-17'), ('7', 'Some Like it Hot', 'PG-13'), ('8', 'A Night at the Opera', null), ('9', 'Citizen King', 'G');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
