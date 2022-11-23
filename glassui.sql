/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : glassui

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 23/11/2022 23:23:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (0, 'user', '$2a$10$7dR6kOoXJ4A2VEPKnnkQH.5oQWRkkXIcgbFPiezHhj0bnAJHhyo5i', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (12, 'https://www.sogou.com/images/logo/new/favicon.ico?v=4', '111');
INSERT INTO `banner` VALUES (14, 'https://www.sogou.com/images/logo/new/favicon.ico?v=4', 'https://www.sogou.com1');
INSERT INTO `banner` VALUES (15, 'https://www.sogou.com/images/logo/new/favicon.ico?v=4', 'https://www.sogou.com');
INSERT INTO `banner` VALUES (16, 'https://www.sogou.com/images/logo/new/favicon.ico?v=4', 'https://www.sogou.com/images/logo/new/favicon.ico?v=4');
INSERT INTO `banner` VALUES (17, 'https://www.xfabe.com/favicon.ico', 'https://www.xfabe.com');
INSERT INTO `banner` VALUES (18, 'https://www.sogou.com/images/logo/new/favicon.ico?v=4', 'https://www.sogou.com/images/logo/new/favicon.ico?v=4');
INSERT INTO `banner` VALUES (19, 'https://www.sogou.com/images/logo/new/favicon.ico?v=4', 'https://www.sogou.com/images/logo/new/favicon.ico?v=4');
INSERT INTO `banner` VALUES (20, 'https://www.sogou.com/images/logo/new/favicon.ico?v=4', 'https://www.sogou.com/images/logo/new/favicon.ico?v=4');
INSERT INTO `banner` VALUES (21, 'https://www.sogou.com/images/logo/new/favicon.ico?v=4', 'https://www.sogou.com');

-- ----------------------------
-- Table structure for baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `baseinfo`;
CREATE TABLE `baseinfo`  (
  `id` int(11) NOT NULL,
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `saying` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `aq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wechat_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bilibili_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of baseinfo
-- ----------------------------
INSERT INTO `baseinfo` VALUES (0, 'ye xiao feng', '叶晓枫', '我热爱你所热爱的一切！', './static/upload/tx.jpg', '10', '30', '20', '40', '12456', './static/upload/tx.jpg', 'https://space.bilibili.com/349762020?spm_id_from=333.1007.0.0', '1809185784@qq.com');

-- ----------------------------
-- Table structure for basesetting
-- ----------------------------
DROP TABLE IF EXISTS `basesetting`;
CREATE TABLE `basesetting`  (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gongan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `offon` bit(1) NULL DEFAULT b'0',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `auth_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `copyright` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of basesetting
-- ----------------------------
INSERT INTO `basesetting` VALUES (0, '毛玻璃拟态UI - 个人主页', 'https://www.xfabe.com/favicon.ico', '毛玻璃,毛玻璃个人主页,个人主页,毛玻璃ui,拟态ui设计,拟态ui,个人引导页,个人介绍页,拟态引导页,简约个人主页,个人主页源码,原创,小枫网络,小枫拟态ui,小枫拟态ui5.0毛玻璃,毛玻璃个人主页,个人主页,毛玻璃ui,拟态ui设计,拟态ui,个人引导页,个人介绍页,拟态引导页,简约个人主页,个人主页源码,原创,小枫网络,小枫拟态ui,小枫拟态ui5.0', '毛玻璃拟态UI个人主页是小枫原创的一款简约风格开源的新UI主页设计。', '赣ICP备2020011714号-5', '赣公网安备36082502000055号', '2023-01-25 00:00:00', b'0', 'xf_e06b6e4b0f5b25f52b1d4', 'ji1eRm45nWpB2LS2uzkO5NiwZ+AVBLvlUiSKTQ7AwHHNI71HU21N4eXXeGtNYsnpY3y4vOFGlkUF62MGzbvJD3jhTlksrePnXgeM2B9a2sr6Hvj10r1b1HvMFjmrSHdZfAvURAGN2xIl5zAfLdMfsiz06gJLY+vstZj+LvRdUK8=', '123');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES (9, '欢迎使用小枫毛玻璃UI', '小枫', 'https://q2.qlogo.cn/headimg_dl?dst_uin=1809185784&spec=100', 'https://www.xfabe.com');
INSERT INTO `friend` VALUES (10, '欢迎使用小枫毛玻璃UI', '小枫', 'https://q2.qlogo.cn/headimg_dl?dst_uin=1809185784&spec=100', 'https://www.xfabe.com');
INSERT INTO `friend` VALUES (11, '123', '123', 'https://q2.qlogo.cn/headimg_dl?dst_uin=123456&spec=100', 'https://baidu.com');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, NULL, '1809185784@qq.com', '11111', '0:0:0:0:0:0:0:1', '2022-11-23');
INSERT INTO `message` VALUES (2, NULL, '1809185784@qq.com', '11111', '0:0:0:0:0:0:0:1', '2022-11-23');
INSERT INTO `message` VALUES (3, NULL, '1809185784@qq.com', '1111', '0:0:0:0:0:0:0:1', '2022-11-23');

-- ----------------------------
-- Table structure for othersetting
-- ----------------------------
DROP TABLE IF EXISTS `othersetting`;
CREATE TABLE `othersetting`  (
  `id` int(11) NOT NULL,
  `h1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pcbg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mbg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hcode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `bcode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of othersetting
-- ----------------------------
INSERT INTO `othersetting` VALUES (0, 'Gla122', '/static/images/background2.png', '/static/images/background2.png', '606e5a8824639', 'b40becb7ef154292abb0ab080baba7d0', 'abcdefg', 'abcdefeg');

-- ----------------------------
-- Table structure for sitesetting
-- ----------------------------
DROP TABLE IF EXISTS `sitesetting`;
CREATE TABLE `sitesetting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sitesetting
-- ----------------------------
INSERT INTO `sitesetting` VALUES (1, 'https://www.xfabe.com/favicon.ico', '小枫网络111', 'https://www.xfabe.com');
INSERT INTO `sitesetting` VALUES (2, 'https://www.xfabe.com/favicon.ico', '小枫网络', 'https://www.xfabe.com');
INSERT INTO `sitesetting` VALUES (3, 'https://www.xfabe.com/favicon.ico', '小枫网络', 'https://www.xfabe.com');
INSERT INTO `sitesetting` VALUES (4, 'https://www.baidu.com/favicon.ico', '百度', 'https://www.baidu.com');
INSERT INTO `sitesetting` VALUES (5, 'https://www.baidu.com/favicon.ico', '123', 'https://www.baidu.com');

SET FOREIGN_KEY_CHECKS = 1;
