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

 Date: 07/01/2019 21:40:48 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Employee`
-- ----------------------------
DROP TABLE IF EXISTS `Employee`;
CREATE TABLE `Employee` (
  `EmployeeID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `Salary` double NOT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Employee`
-- ----------------------------
BEGIN;
INSERT INTO `Employee` VALUES ('1', 'Phillip J. Fry', 'Delivery boy', '7500', 'Not to be confused with the Philip J. Fry from Hovering Squid World 97a'), ('2', 'Turanga Leela', 'Captain', '10000', null), ('3', 'Bender Bending Rodriguez', 'Robot', '7500', null), ('4', 'Hubert J. Farnsworth', 'CEO', '20000', null), ('5', 'John A. Zoidberg', 'Physician', '25', null), ('6', 'Amy Wong', 'Intern', '5000', null), ('7', 'Hermes Conrad', 'Bureaucrat', '10000', null), ('8', 'Scruffy Scruffington', 'Janitor', '5000', null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
