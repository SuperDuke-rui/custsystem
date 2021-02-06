/*
 Navicat Premium Data Transfer

 Source Server         : test01
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : boot_crm

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 14/01/2021 12:50:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `cust_id` int NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户名称',
  `cust_linkman` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `cust_zipcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `cust_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '王睿', '小雪', '010-88888887', '13888888888', '100096', '上海第二工业大学');
INSERT INTO `customer` VALUES (2, '张三', '王睿', '18256909259', '18256909259', '201209', '曹路镇 金海路2360号 上海第二工业大学');
INSERT INTO `customer` VALUES (3, '绵羊', '张三', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (4, '罗翔', '黄晓明', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (5, '吴碧霞', '张三', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (6, '黄晓明', '沈腾', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (7, '李思思', '撒贝宁', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (8, '黄渤', '张三', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (9, '沈腾', '绵羊', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (10, '贾玲', '罗翔', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (11, '沙溢', '张三', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (12, '李靖', '贾玲', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (13, '撒贝宁', '王睿', '021-12321234', '15465787654', '100029', '上海市浦东新区');
INSERT INTO `customer` VALUES (180, 'Tom', '小雪', '18256909259', '18256909259', '201209', 'superduke-rui');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `user_state` int NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'e0001', '王睿', '123', 1);
INSERT INTO `sys_user` VALUES (2, 'e0002', '张三', '123', 1);
INSERT INTO `sys_user` VALUES (3, 'e0003', '王俊凯', '123', 2);
INSERT INTO `sys_user` VALUES (4, 'e0004', '法外狂徒', '123', 1);

SET FOREIGN_KEY_CHECKS = 1;
