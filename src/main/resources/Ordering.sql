/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : Ordering

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 21/12/2018 20:38:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` int(11) NOT NULL COMMENT '部门主键',
  `department_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` varchar(255) NOT NULL COMMENT '商品id',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `goods_lead_price` double(5,2) DEFAULT NULL COMMENT '领导商品价格',
  `goods_normal_price` double(5,0) DEFAULT NULL COMMENT '员工商品价格',
  `goods_detail` varchar(255) DEFAULT NULL COMMENT '商品详情文字',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_level
-- ----------------------------
DROP TABLE IF EXISTS `t_level`;
CREATE TABLE `t_level` (
  `id` int(11) NOT NULL,
  `level_name` varchar(255) DEFAULT NULL COMMENT '等级名称',
  `subsidy` varchar(255) DEFAULT NULL COMMENT '补助金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `manager_id` int(5) NOT NULL COMMENT '管理员Id',
  `manager_name` varchar(255) NOT NULL,
  `manager_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manager_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_mealType
-- ----------------------------
DROP TABLE IF EXISTS `t_mealType`;
CREATE TABLE `t_mealType` (
  `id` int(5) NOT NULL COMMENT '时间类型主键',
  `meal_name` varchar(255) DEFAULT NULL COMMENT '餐别名称',
  `start_time` datetime(6) DEFAULT NULL COMMENT '截至时间',
  `day` int(5) DEFAULT NULL COMMENT '提前的天数',
  `take_time` varchar(255) DEFAULT NULL COMMENT '取餐时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` varchar(255) NOT NULL COMMENT '用户主键',
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_level_id` varchar(255) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('1', '1', '1', '1', '123');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
