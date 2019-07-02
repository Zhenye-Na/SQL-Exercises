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

 Date: 07/01/2019 21:38:03 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Scientists`
-- ----------------------------
DROP TABLE IF EXISTS `Scientists`;
CREATE TABLE `Scientists` (
  `SSN` int(11) NOT NULL,
  `Name` char(30) NOT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Scientists`
-- ----------------------------
BEGIN;
INSERT INTO `Scientists` VALUES ('123234877', 'Michael Rogers'), ('152934485', 'Anand Manikutty'), ('222364883', 'Carol Smith'), ('326587417', 'Joe Stevens'), ('332154719', 'Mary-Anne Foster'), ('332569843', 'George ODonnell'), ('546523478', 'John Doe'), ('631231482', 'David Smith'), ('654873219', 'Zacary Efron'), ('745685214', 'Eric Goldsmith'), ('845657245', 'Elizabeth Doe'), ('845657246', 'Kumar Swamy');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
