/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : employees

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2021-07-17 16:47:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  PRIMARY KEY (`dept_no`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('d009', 'Customer Service');
INSERT INTO `departments` VALUES ('d005', 'Development');
INSERT INTO `departments` VALUES ('d002', 'Finance');
INSERT INTO `departments` VALUES ('d003', 'Human Resources');
INSERT INTO `departments` VALUES ('d001', 'Marketing');
INSERT INTO `departments` VALUES ('d004', 'Production');
INSERT INTO `departments` VALUES ('d006', 'Quality Management');
INSERT INTO `departments` VALUES ('d008', 'Research');
INSERT INTO `departments` VALUES ('d007', 'Sales');
INSERT INTO `departments` VALUES ('d007', '新增');
