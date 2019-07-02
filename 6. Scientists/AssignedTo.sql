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

 Date: 07/01/2019 21:37:57 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `AssignedTo`
-- ----------------------------
DROP TABLE IF EXISTS `AssignedTo`;
CREATE TABLE `AssignedTo` (
  `Scientist` int(11) NOT NULL,
  `Project` char(4) NOT NULL,
  PRIMARY KEY (`Scientist`,`Project`),
  KEY `Project` (`Project`),
  CONSTRAINT `assignedto_ibfk_1` FOREIGN KEY (`Scientist`) REFERENCES `Scientists` (`SSN`),
  CONSTRAINT `assignedto_ibfk_2` FOREIGN KEY (`Project`) REFERENCES `Projects` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `AssignedTo`
-- ----------------------------
BEGIN;
INSERT INTO `AssignedTo` VALUES ('123234877', 'AeH1'), ('152934485', 'AeH3'), ('745685214', 'AeH3'), ('332569843', 'AeH4'), ('845657245', 'Ast1'), ('845657246', 'Ast2'), ('222364883', 'Ast3'), ('326587417', 'Ast3'), ('631231482', 'Ast3'), ('332154719', 'Bte1'), ('546523478', 'Che1'), ('654873219', 'Che1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
