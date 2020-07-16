/*
Navicat MySQL Data Transfer

Source Server         : User_localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : blogweb

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2020-07-10 16:23:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for achieve_info
-- ----------------------------
DROP TABLE IF EXISTS `achieve_info`;
CREATE TABLE `achieve_info` (
  `achieve_id` int(11) NOT NULL,
  `achieve_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `achieve_date` varchar(255) NOT NULL,
  PRIMARY KEY (`achieve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of achieve_info
-- ----------------------------

-- ----------------------------
-- Table structure for article_info
-- ----------------------------
DROP TABLE IF EXISTS `article_info`;
CREATE TABLE `article_info` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_title` varchar(255) NOT NULL,
  `a_tag` varchar(255) DEFAULT NULL,
  `a_class` varchar(255) DEFAULT NULL,
  `a_context` longtext,
  `a_date` varchar(255) DEFAULT NULL,
  `a_view` int(5) DEFAULT NULL,
  `a_del` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`a_id`)
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
  `class_article_num` int(5) DEFAULT NULL,
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
  `remark_v_name` varchar(255) DEFAULT NULL,
  `remark_context` longtext,
  `remark_v_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`remark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remark_info
-- ----------------------------

-- ----------------------------
-- Table structure for tag_info
-- ----------------------------
DROP TABLE IF EXISTS `tag_info`;
CREATE TABLE `tag_info` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag_article_num` int(5) DEFAULT NULL,
  `tag_del` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag_info
-- ----------------------------

-- ----------------------------
-- Table structure for visitor_info
-- ----------------------------
DROP TABLE IF EXISTS `visitor_info`;
CREATE TABLE `visitor_info` (
  `visitor_id` int(11) NOT NULL,
  `visitor_email` varchar(255) DEFAULT NULL,
  `visitor_name` varchar(255) DEFAULT NULL,
  `visitor_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitor_info
-- ----------------------------
