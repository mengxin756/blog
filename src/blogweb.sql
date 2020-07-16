/*
Navicat MySQL Data Transfer

Source Server         : User_localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : blogweb

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2020-07-16 14:57:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_info
-- ----------------------------
DROP TABLE IF EXISTS `article_info`;
CREATE TABLE `article_info` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_title` varchar(255) NOT NULL,
  `a_cid` int(255) DEFAULT NULL,
  `a_context` longtext,
  `a_ldate` varchar(255) DEFAULT NULL,
  `a_date` varchar(255) DEFAULT NULL,
  `a_view` int(5) DEFAULT NULL,
  `a_del` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`a_id`),
  KEY `a_cid` (`a_cid`),
  CONSTRAINT `a_cid` FOREIGN KEY (`a_cid`) REFERENCES `class_info` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_info
-- ----------------------------

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_del` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------

-- ----------------------------
-- Table structure for remark_info
-- ----------------------------
DROP TABLE IF EXISTS `remark_info`;
CREATE TABLE `remark_info` (
  `remark_id` int(11) NOT NULL,
  `remark_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark_context` longtext,
  `remark_aid` int(11) DEFAULT NULL,
  `reamrk_email` varchar(255) DEFAULT NULL,
  `remark_date` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`remark_id`),
  KEY `remark_aid` (`remark_aid`),
  CONSTRAINT `remark_aid` FOREIGN KEY (`remark_aid`) REFERENCES `article_info` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remark_info
-- ----------------------------
