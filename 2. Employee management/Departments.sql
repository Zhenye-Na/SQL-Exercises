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

 Date: 05/22/2019 15:27:57 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Departments`
-- ----------------------------
DROP TABLE IF EXISTS `Departments`;
CREATE TABLE `Departments` (
  `Code` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Budget` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Departments`
-- ----------------------------
BEGIN;
INSERT INTO `Departments` VALUES ('14', 'IT', '65000'), ('37', 'Accounting', '15000'), ('59', 'Human Resources', '240000'), ('77', 'Research', '55000');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
