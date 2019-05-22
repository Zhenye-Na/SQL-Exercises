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

 Date: 05/22/2019 15:28:03 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Employees`
-- ----------------------------
DROP TABLE IF EXISTS `Employees`;
CREATE TABLE `Employees` (
  `SSN` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Department` int(11) NOT NULL,
  PRIMARY KEY (`SSN`),
  KEY `Department` (`Department`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Department`) REFERENCES `Departments` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Employees`
-- ----------------------------
BEGIN;
INSERT INTO `Employees` VALUES ('123234877', 'Michael', 'Rogers', '14'), ('152934485', 'Anand', 'Manikutty', '14'), ('222364883', 'Carol', 'Smith', '37'), ('326587417', 'Joe', 'Stevens', '37'), ('332154719', 'Mary-Anne', 'Foster', '14'), ('332569843', 'George', 'O\'Donnell', '77'), ('546523478', 'John', 'Doe', '59'), ('631231482', 'David', 'Smith', '77'), ('654873219', 'Zacary', 'Efron', '59'), ('745685214', 'Eric', 'Goldsmith', '59'), ('845657245', 'Elizabeth', 'Doe', '14'), ('845657246', 'Kumar', 'Swamy', '14');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
