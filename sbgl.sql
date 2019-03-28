/*
 Navicat MySQL Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : sbgl

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 24/03/2019 16:18:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `device_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `device_brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userID` int(11) NULL DEFAULT NULL,
  `use_time` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `adminID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES (1, '直线加速器', 's001', '西门子', '2号楼', NULL, NULL, 0, NULL);
INSERT INTO `device` VALUES (2, 'CT机', 't334', '深康佳', '4号楼', NULL, NULL, 0, NULL);
INSERT INTO `device` VALUES (3, '3d打印机', 'sw485', '张江高科', '5号楼', NULL, NULL, 0, NULL);
INSERT INTO `device` VALUES (4, '海洋研究室', 'q7', '迈瑞医疗', '3号楼', NULL, NULL, 0, NULL);
INSERT INTO `device` VALUES (5, '显微镜', 'pa55', '基蛋生物', '7号楼', NULL, NULL, 0, NULL);
INSERT INTO `device` VALUES (6, '真空炼药机', 'p445', '复旦复华', '5号楼', NULL, NULL, 0, NULL);
INSERT INTO `device` VALUES (7, '离子外壳', 'e005', '上海医药', '9号楼', NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NULL DEFAULT NULL,
  `device_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userID` int(11) NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `use_postion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `appo_day` date NOT NULL,
  `appo_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creation_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `valid` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  `device` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, '基因研究', 1, '显微镜', '基因研究工程');
INSERT INTO `project` VALUES (2, '鱼类研究', 1, '海洋研究所', '研究海洋中鱼类习性');
INSERT INTO `project` VALUES (3, '抗癌药物研究', 1, '真空炼药机', '研究抗癌药物');
INSERT INTO `project` VALUES (4, '人造器官', 1, '3d打印机', '人造器官研究');
INSERT INTO `project` VALUES (5, '放疗测试', 1, '直线加速器', '研究放辽剂量');
INSERT INTO `project` VALUES (6, '生物电子', 1, '离子外壳', '研究生物放电');
INSERT INTO `project` VALUES (7, '人体检测', 1, 'CT机', 'CT检查');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groups` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `tele_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'steven', '123456', 'M', '1', '实验室1', '系统管理员', '医师', '13346587898');
INSERT INTO `user` VALUES (2, 'tht', '123456', 'M', '2', '实验室2', '系统管理员', '医师', '12345687898');
INSERT INTO `user` VALUES (3, 'aaa', '123456', 'M', '3', '实验室3', '普通用户', '医师', '12345558888');
INSERT INTO `user` VALUES (4, 'qew', '123456', 'M', '4', '实验室4', '管理员', '医师', '12354687898');

SET FOREIGN_KEY_CHECKS = 1;
