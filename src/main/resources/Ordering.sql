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

 Date: 28/12/2018 21:25:29
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
  `goods_id` bigint(255) NOT NULL COMMENT '商品id',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `goods_lead_price` double(5,2) DEFAULT NULL COMMENT '领导商品价格',
  `goods_normal_price` double(5,2) DEFAULT NULL COMMENT '员工商品价格',
  `goods_detail` varchar(255) DEFAULT NULL COMMENT '商品详情文字',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
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
-- Table structure for t_meal_type
-- ----------------------------
DROP TABLE IF EXISTS `t_meal_type`;
CREATE TABLE `t_meal_type` (
  `meal_id` int(5) NOT NULL COMMENT '时间类型主键',
  `meal_name` varchar(255) DEFAULT NULL COMMENT '餐别名称',
  `end_time` time DEFAULT NULL COMMENT '截至时间',
  `day` int(5) DEFAULT NULL COMMENT '提前的天数',
  `take_time` time DEFAULT NULL COMMENT '取餐时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`meal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_meal_type
-- ----------------------------
BEGIN;
INSERT INTO `t_meal_type` VALUES (1, '早餐', '18:00:00', 1, '08:00:00', NULL, NULL);
INSERT INTO `t_meal_type` VALUES (2, '中餐', '18:00:00', 1, '12:00:00', NULL, NULL);
INSERT INTO `t_meal_type` VALUES (3, '晚餐', '12:00:00', 0, '18:00:00', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_level_id` varchar(255) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `balance` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, '1', '1', '1', '123', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (34, '123456', 'byhuang', '11', '11', '2018-12-27 18:04:45', NULL, 100.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
