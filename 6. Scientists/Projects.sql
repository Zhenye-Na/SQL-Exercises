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

 Date: 07/01/2019 21:38:19 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Projects`
-- ----------------------------
DROP TABLE IF EXISTS `Projects`;
CREATE TABLE `Projects` (
  `Code` char(4) NOT NULL,
  `Name` char(50) NOT NULL,
  `Hours` int(11) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `Projects`
-- ----------------------------
BEGIN;
INSERT INTO `Projects` VALUES ('AeH1', 'Winds: Studying Bernoullis Principle', '156'), ('AeH2', 'Aerodynamics and Bridge Design', '189'), ('AeH3', 'Aerodynamics and Gas Mileage', '256'), ('AeH4', 'Aerodynamics and Ice Hockey', '789'), ('AeH5', 'Aerodynamics of a Football', '98'), ('AeH6', 'Aerodynamics of Air Hockey', '89'), ('Ast1', 'A Matter of Time', '112'), ('Ast2', 'A Puzzling Parallax', '299'), ('Ast3', 'Build Your Own Telescope', '6546'), ('Bte1', 'Juicy: Extracting Apple Juice with Pectinase', '321'), ('Bte2', 'A Magnetic Primer Designer', '9684'), ('Bte3', 'Bacterial Transformation Efficiency', '321'), ('Che1', 'A Silver-Cleaning Battery', '545'), ('Che2', 'A Soluble Separation Solution', '778');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
