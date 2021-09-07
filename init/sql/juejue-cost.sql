/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : juejue-cost

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 07/09/2021 17:13:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pay_type` int NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type_id` int NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `remark` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=945 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bill
-- ----------------------------
BEGIN;
INSERT INTO `bill` VALUES (914, 1, '66.00', '1630598400', 2, '服饰', 1, '备注信息123123');
INSERT INTO `bill` VALUES (915, 1, '24.00', '1623859200', 1, '餐饮', 1, '备注信息123123');
INSERT INTO `bill` VALUES (916, 2, '22.00', '1624204800', 1, '餐饮', 1, '备注信息123123');
INSERT INTO `bill` VALUES (917, 2, '14.00', '1623859200', 1, '餐饮', 1, '备注信息123123');
INSERT INTO `bill` VALUES (921, 1, '20.00', '1621581570', 1, '餐饮', 1, '备注信息');
INSERT INTO `bill` VALUES (922, 1, '20.00', '1621581570', 1, '餐饮', 1, '备注信息');
INSERT INTO `bill` VALUES (923, 1, '20.00', '1621581570', 1, '餐饮', 1, '备注信息');
INSERT INTO `bill` VALUES (924, 1, '20.00', '1621581570', 1, '餐饮', 1, '备注信息');
INSERT INTO `bill` VALUES (925, 1, '111112312.00', '1621581570', 2, '服饰', 1, '备注信息');
INSERT INTO `bill` VALUES (926, 1, '256.00', '1630898661000', 1, '餐饮', 1, '');
INSERT INTO `bill` VALUES (927, 1, '5123.00', '1630898666000', 1, '餐饮', 1, '');
INSERT INTO `bill` VALUES (928, 1, '235.00', '1630898676000', 5, '购物', 1, '');
INSERT INTO `bill` VALUES (930, 1, '36.00', '1630898761', 1, '餐饮', 1, '');
INSERT INTO `bill` VALUES (931, 1, '111.00', '1630898773', 1, '餐饮', 1, '');
INSERT INTO `bill` VALUES (933, 1, '256.00', '1620230400000', 3, '交通', 1, '');
INSERT INTO `bill` VALUES (934, 1, '66.00', '1630898903000', 1, '餐饮', 1, '');
INSERT INTO `bill` VALUES (935, 1, '25.00', '1620576000000', 3, '交通', 1, '');
INSERT INTO `bill` VALUES (936, 1, '2535.00', '1630911554000', 1, '餐饮', 1, '');
INSERT INTO `bill` VALUES (937, 2, '8500.00', '1630912318000', 11, '工资', 1, '');
INSERT INTO `bill` VALUES (938, 1, '12.00', '1630986317000', 1, '餐饮', 6, '');
INSERT INTO `bill` VALUES (939, 2, '23.00', '1630771200000', 1, '餐饮', 1, '');
INSERT INTO `bill` VALUES (940, 1, '222222.00', '1631001710000', 1, '餐饮', 1, '');
INSERT INTO `bill` VALUES (941, 2, '668.00', '1631001722000', 14, '理财', 1, '');
INSERT INTO `bill` VALUES (942, 1, '28541.00', '1631001783000', 4, '日用', 1, '');
INSERT INTO `bill` VALUES (943, 2, '569.00', '1631003770000', 14, '理财', 1, '12312312');
INSERT INTO `bill` VALUES (944, 2, '2566.00', '1631004357000', 14, '理财', 1, '');
COMMIT;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `ctime` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'nick', '1', '12323423', '123', 'http://localhost:3000/api/public/upload/20210907/1630982957955.png');
INSERT INTO `user` VALUES (2, 'tanzhijin', '123456', '11111', '2021-09-01 03:33:47', 'http://s.yezgea02.com/1615973940679/WeChat77d6d2ac093e247c361f0b8a7aeb6c2a.png');
INSERT INTO `user` VALUES (3, 'admin', '1', '世界和平。', '2021-09-02 05:42:42', 'http://s.yezgea02.com/1615973940679/WeChat77d6d2ac093e247c361f0b8a7aeb6c2a.png');
INSERT INTO `user` VALUES (4, 'admin1', '1', '世界和平。', '2021-09-02 05:43:18', 'http://s.yezgea02.com/1615973940679/WeChat77d6d2ac093e247c361f0b8a7aeb6c2a.png');
INSERT INTO `user` VALUES (5, 'admin11', '1', '世界和平。', '2021-09-03 09:09:21', 'http://s.yezgea02.com/1615973940679/WeChat77d6d2ac093e247c361f0b8a7aeb6c2a.png');
INSERT INTO `user` VALUES (6, 'admin12', '1', '世界和平。', '2021-09-07 11:45:13', 'http://s.yezgea02.com/1615973940679/WeChat77d6d2ac093e247c361f0b8a7aeb6c2a.png');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
