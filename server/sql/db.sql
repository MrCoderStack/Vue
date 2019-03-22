/*
Navicat MySQL Data Transfer

Source Server         : vm
Source Server Version : 50723
Source Host           : 192.168.145.131:3306
Source Database       : vue

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-03-22 14:29:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `goods_name` varchar(50) NOT NULL DEFAULT 'noname',
  `goods_price` float(10,2) NOT NULL DEFAULT '0.00',
  `inventory` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `goods_typename` varchar(50) DEFAULT '' COMMENT '分类',
  `imgs` varchar(50) DEFAULT '',
  `onsale` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否上架',
  `goods_details` varchar(50) DEFAULT '' COMMENT '详情',
  PRIMARY KEY (`goods_id`),
  UNIQUE KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `goodstype` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `goods_typename` varchar(100) NOT NULL DEFAULT '',
  `remarks` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`goodstype`),
  UNIQUE KEY `goodstype` (`goodstype`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `members_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `member_name` varchar(50) NOT NULL DEFAULT 'noname',
  `member_phone` varchar(100) NOT NULL DEFAULT '',
  `remarks` varchar(100) NOT NULL DEFAULT '',
  `recommendation_code` varchar(100) NOT NULL DEFAULT '',
  `membership_level` tinyint(3) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `member_address1` varchar(100) NOT NULL DEFAULT '',
  `member_address2` varchar(100) NOT NULL DEFAULT '',
  `member_address3` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`members_id`),
  UNIQUE KEY `members_id` (`members_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of members
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `role` tinyint(3) NOT NULL DEFAULT '0' COMMENT '用户权限',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '10', '2019-02-16 00:57:21', '2019-02-16 00:57:21');
