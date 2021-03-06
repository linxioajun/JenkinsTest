/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : employees

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2021-07-17 17:17:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept_manager
-- ----------------------------
DROP TABLE IF EXISTS `dept_manager`;
CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_manager
-- ----------------------------
INSERT INTO `dept_manager` VALUES ('110022', 'd001', '1985-01-01', '1991-10-01');
INSERT INTO `dept_manager` VALUES ('110039', 'd001', '1991-10-01', '9999-01-01');
INSERT INTO `dept_manager` VALUES ('110085', 'd002', '1985-01-01', '1989-12-17');
INSERT INTO `dept_manager` VALUES ('110114', 'd002', '1989-12-17', '9999-01-01');
INSERT INTO `dept_manager` VALUES ('110183', 'd003', '1985-01-01', '1992-03-21');
INSERT INTO `dept_manager` VALUES ('110228', 'd003', '1992-03-21', '9999-01-01');
INSERT INTO `dept_manager` VALUES ('110303', 'd004', '1985-01-01', '1988-09-09');
INSERT INTO `dept_manager` VALUES ('110344', 'd004', '1988-09-09', '1992-08-02');
INSERT INTO `dept_manager` VALUES ('110386', 'd004', '1992-08-02', '1996-08-30');
INSERT INTO `dept_manager` VALUES ('110420', 'd004', '1996-08-30', '9999-01-01');
INSERT INTO `dept_manager` VALUES ('110511', 'd005', '1985-01-01', '1992-04-25');
INSERT INTO `dept_manager` VALUES ('110567', 'd005', '1992-04-25', '9999-01-01');
INSERT INTO `dept_manager` VALUES ('110725', 'd006', '1985-01-01', '1989-05-06');
INSERT INTO `dept_manager` VALUES ('110765', 'd006', '1989-05-06', '1991-09-12');
INSERT INTO `dept_manager` VALUES ('110800', 'd006', '1991-09-12', '1994-06-28');
INSERT INTO `dept_manager` VALUES ('110854', 'd006', '1994-06-28', '9999-01-01');
INSERT INTO `dept_manager` VALUES ('111035', 'd007', '1985-01-01', '1991-03-07');
INSERT INTO `dept_manager` VALUES ('111133', 'd007', '1991-03-07', '9999-01-01');
INSERT INTO `dept_manager` VALUES ('111400', 'd008', '1985-01-01', '1991-04-08');
INSERT INTO `dept_manager` VALUES ('111534', 'd008', '1991-04-08', '9999-01-01');
INSERT INTO `dept_manager` VALUES ('111692', 'd009', '1985-01-01', '1988-10-17');
INSERT INTO `dept_manager` VALUES ('111784', 'd009', '1988-10-17', '1992-09-08');
INSERT INTO `dept_manager` VALUES ('111877', 'd009', '1992-09-08', '1996-01-03');
INSERT INTO `dept_manager` VALUES ('111939', 'd009', '1996-01-03', '9999-01-01');
