/*
 Navicat Premium Data Transfer

 Source Server         : datacharm
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 106.14.12.245:3306
 Source Schema         : sc

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 19/06/2020 19:36:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `consumerId` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `defaultAdd` int(11) NULL DEFAULT 0,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  INDEX `consumerId`(`consumerId`) USING BTREE,
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`consumerId`) REFERENCES `consumer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 1, 'Xz', 0, '188xxx', 'Hb');
INSERT INTO `address` VALUES (3, 5, 'address', 1, '1xxx', 'test');
INSERT INTO `address` VALUES (5, 1, 'XuZhou', 0, '18888888888', 'xbb');
INSERT INTO `address` VALUES (6, 1, 'NanJing', 0, '18888888888', 'xjj');
INSERT INTO `address` VALUES (7, 1, 'JiangSu', 1, '18999999999', 'new');
INSERT INTO `address` VALUES (8, 1, '南京', 0, '18861616161', 'xbb');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spell` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, '奔驰', '/api/upload/brand/benchi.png', 'bc');
INSERT INTO `brand` VALUES (2, '宝马*', '/api/upload/brand/bmw.png', 'bm');
INSERT INTO `brand` VALUES (3, '奥迪', '/api/upload/brand/aodi.png', 'ad');
INSERT INTO `brand` VALUES (4, '大众', '/api/upload/brand/dazhong.png', 'dz');
INSERT INTO `brand` VALUES (5, '哈弗', '/api/upload/brand/haval.png', 'hf');
INSERT INTO `brand` VALUES (6, '本田', '/api/upload/brand/bentian.png', 'bt');
INSERT INTO `brand` VALUES (7, '马自达', '/api/upload/brand/maz.png', 'mzd');
INSERT INTO `brand` VALUES (8, '福特', '/api/upload/brand/ford.png', 'ft');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, 'api/upload/p1.jpg', 'http://www.datacharm.cn:8008/upload/p1.jpg');
INSERT INTO `carousel` VALUES (2, 'api/upload/p2.jpg', 'http://www.datacharm.cn:8008/upload/p2.jpg');
INSERT INTO `carousel` VALUES (3, 'api/upload/p3.jpg', 'http://www.datacharm.cn:8008/upload/p3.jpg');
INSERT INTO `carousel` VALUES (4, 'api/upload/p4.jpg', 'http://www.datacharm.cn:8008/upload/p4.jpg');
INSERT INTO `carousel` VALUES (5, 'api/upload/p5.jpg', 'http://www.datacharm.cn:8008/upload/p5.jpg');
INSERT INTO `carousel` VALUES (6, 'api/upload/p6.jpg', 'http://www.datacharm.cn:8008/upload/p6.jpg');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1705 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '2018款 318i', 7);
INSERT INTO `config` VALUES (2, '2018款 320i M运动套装', 7);
INSERT INTO `config` VALUES (3, '2018款 318Li', 7);
INSERT INTO `config` VALUES (4, '2018款 320Li xDrive 时尚型', 7);
INSERT INTO `config` VALUES (5, '2018款 320Li M运动曜夜版', 7);
INSERT INTO `config` VALUES (6, '2018款 330Li xDrive 豪华套', 7);
INSERT INTO `config` VALUES (7, '豪华配置', 1);
INSERT INTO `config` VALUES (8, '高配', 1);
INSERT INTO `config` VALUES (9, '低配', 1);
INSERT INTO `config` VALUES (10, '时尚款', 1);
INSERT INTO `config` VALUES (11, '运动款', 1);
INSERT INTO `config` VALUES (12, '裸款', 1);
INSERT INTO `config` VALUES (13, '豪华配置', 2);
INSERT INTO `config` VALUES (14, '高配', 2);
INSERT INTO `config` VALUES (15, '低配', 2);
INSERT INTO `config` VALUES (16, '时尚款', 2);
INSERT INTO `config` VALUES (17, '运动款', 2);
INSERT INTO `config` VALUES (18, '裸款', 2);
INSERT INTO `config` VALUES (19, '豪华配置', 3);
INSERT INTO `config` VALUES (20, '高配', 3);
INSERT INTO `config` VALUES (21, '低配', 3);
INSERT INTO `config` VALUES (22, '时尚款', 3);
INSERT INTO `config` VALUES (23, '运动款', 3);
INSERT INTO `config` VALUES (24, '裸款', 3);
INSERT INTO `config` VALUES (25, '豪华配置', 4);
INSERT INTO `config` VALUES (26, '高配', 4);
INSERT INTO `config` VALUES (27, '低配', 4);
INSERT INTO `config` VALUES (28, '时尚款', 4);
INSERT INTO `config` VALUES (29, '运动款', 4);
INSERT INTO `config` VALUES (30, '裸款', 4);
INSERT INTO `config` VALUES (31, '豪华配置', 5);
INSERT INTO `config` VALUES (32, '高配', 5);
INSERT INTO `config` VALUES (33, '低配', 5);
INSERT INTO `config` VALUES (34, '时尚款', 5);
INSERT INTO `config` VALUES (35, '运动款', 5);
INSERT INTO `config` VALUES (36, '裸款', 5);
INSERT INTO `config` VALUES (37, '豪华配置', 6);
INSERT INTO `config` VALUES (38, '高配', 6);
INSERT INTO `config` VALUES (39, '低配', 6);
INSERT INTO `config` VALUES (40, '时尚款', 6);
INSERT INTO `config` VALUES (41, '运动款', 6);
INSERT INTO `config` VALUES (42, '裸款', 6);
INSERT INTO `config` VALUES (43, '豪华配置', 8);
INSERT INTO `config` VALUES (44, '高配', 8);
INSERT INTO `config` VALUES (45, '低配', 8);
INSERT INTO `config` VALUES (46, '时尚款', 8);
INSERT INTO `config` VALUES (47, '运动款', 8);
INSERT INTO `config` VALUES (48, '裸款', 8);
INSERT INTO `config` VALUES (49, '豪华配置', 9);
INSERT INTO `config` VALUES (50, '高配', 9);
INSERT INTO `config` VALUES (51, '低配', 9);
INSERT INTO `config` VALUES (52, '时尚款', 9);
INSERT INTO `config` VALUES (53, '运动款', 9);
INSERT INTO `config` VALUES (54, '裸款', 9);
INSERT INTO `config` VALUES (55, '豪华配置', 10);
INSERT INTO `config` VALUES (56, '高配', 10);
INSERT INTO `config` VALUES (57, '低配', 10);
INSERT INTO `config` VALUES (58, '时尚款', 10);
INSERT INTO `config` VALUES (59, '运动款', 10);
INSERT INTO `config` VALUES (60, '裸款', 10);
INSERT INTO `config` VALUES (61, '豪华配置', 11);
INSERT INTO `config` VALUES (62, '高配', 11);
INSERT INTO `config` VALUES (63, '低配', 11);
INSERT INTO `config` VALUES (64, '时尚款', 11);
INSERT INTO `config` VALUES (65, '运动款', 11);
INSERT INTO `config` VALUES (66, '裸款', 11);
INSERT INTO `config` VALUES (67, '豪华配置', 12);
INSERT INTO `config` VALUES (68, '高配', 12);
INSERT INTO `config` VALUES (69, '低配', 12);
INSERT INTO `config` VALUES (70, '时尚款', 12);
INSERT INTO `config` VALUES (71, '运动款', 12);
INSERT INTO `config` VALUES (72, '裸款', 12);
INSERT INTO `config` VALUES (73, '豪华配置', 13);
INSERT INTO `config` VALUES (74, '高配', 13);
INSERT INTO `config` VALUES (75, '低配', 13);
INSERT INTO `config` VALUES (76, '时尚款', 13);
INSERT INTO `config` VALUES (77, '运动款', 13);
INSERT INTO `config` VALUES (78, '裸款', 13);
INSERT INTO `config` VALUES (79, '豪华配置', 14);
INSERT INTO `config` VALUES (80, '高配', 14);
INSERT INTO `config` VALUES (81, '低配', 14);
INSERT INTO `config` VALUES (82, '时尚款', 14);
INSERT INTO `config` VALUES (83, '运动款', 14);
INSERT INTO `config` VALUES (84, '裸款', 14);
INSERT INTO `config` VALUES (85, '豪华配置', 15);
INSERT INTO `config` VALUES (86, '高配', 15);
INSERT INTO `config` VALUES (87, '低配', 15);
INSERT INTO `config` VALUES (88, '时尚款', 15);
INSERT INTO `config` VALUES (89, '运动款', 15);
INSERT INTO `config` VALUES (90, '裸款', 15);
INSERT INTO `config` VALUES (91, '豪华配置', 16);
INSERT INTO `config` VALUES (92, '高配', 16);
INSERT INTO `config` VALUES (93, '低配', 16);
INSERT INTO `config` VALUES (94, '时尚款', 16);
INSERT INTO `config` VALUES (95, '运动款', 16);
INSERT INTO `config` VALUES (96, '裸款', 16);
INSERT INTO `config` VALUES (97, '豪华配置', 17);
INSERT INTO `config` VALUES (98, '高配', 17);
INSERT INTO `config` VALUES (99, '低配', 17);
INSERT INTO `config` VALUES (100, '时尚款', 17);
INSERT INTO `config` VALUES (101, '运动款', 17);
INSERT INTO `config` VALUES (102, '裸款', 17);
INSERT INTO `config` VALUES (103, '豪华配置', 18);
INSERT INTO `config` VALUES (104, '高配', 18);
INSERT INTO `config` VALUES (105, '低配', 18);
INSERT INTO `config` VALUES (106, '时尚款', 18);
INSERT INTO `config` VALUES (107, '运动款', 18);
INSERT INTO `config` VALUES (108, '裸款', 18);
INSERT INTO `config` VALUES (109, '豪华配置', 19);
INSERT INTO `config` VALUES (110, '高配', 19);
INSERT INTO `config` VALUES (111, '低配', 19);
INSERT INTO `config` VALUES (112, '时尚款', 19);
INSERT INTO `config` VALUES (113, '运动款', 19);
INSERT INTO `config` VALUES (114, '裸款', 19);
INSERT INTO `config` VALUES (115, '豪华配置', 20);
INSERT INTO `config` VALUES (116, '高配', 20);
INSERT INTO `config` VALUES (117, '低配', 20);
INSERT INTO `config` VALUES (118, '时尚款', 20);
INSERT INTO `config` VALUES (119, '运动款', 20);
INSERT INTO `config` VALUES (120, '裸款', 20);
INSERT INTO `config` VALUES (121, '豪华配置', 21);
INSERT INTO `config` VALUES (122, '高配', 21);
INSERT INTO `config` VALUES (123, '低配', 21);
INSERT INTO `config` VALUES (124, '时尚款', 21);
INSERT INTO `config` VALUES (125, '运动款*', 21);
INSERT INTO `config` VALUES (126, '裸款', 21);
INSERT INTO `config` VALUES (127, '豪华配置', 22);
INSERT INTO `config` VALUES (128, '高配', 22);
INSERT INTO `config` VALUES (129, '低配', 22);
INSERT INTO `config` VALUES (130, '时尚款', 22);
INSERT INTO `config` VALUES (131, '运动款', 22);
INSERT INTO `config` VALUES (132, '裸款', 22);
INSERT INTO `config` VALUES (133, '豪华配置', 23);
INSERT INTO `config` VALUES (134, '高配', 23);
INSERT INTO `config` VALUES (135, '低配', 23);
INSERT INTO `config` VALUES (136, '时尚款', 23);
INSERT INTO `config` VALUES (137, '运动款', 23);
INSERT INTO `config` VALUES (138, '裸款', 23);
INSERT INTO `config` VALUES (139, '豪华配置', 24);
INSERT INTO `config` VALUES (140, '高配', 24);
INSERT INTO `config` VALUES (141, '低配', 24);
INSERT INTO `config` VALUES (142, '时尚款', 24);
INSERT INTO `config` VALUES (143, '运动款', 24);
INSERT INTO `config` VALUES (144, '裸款', 24);
INSERT INTO `config` VALUES (145, '豪华配置', 25);
INSERT INTO `config` VALUES (146, '高配', 25);
INSERT INTO `config` VALUES (147, '低配', 25);
INSERT INTO `config` VALUES (148, '时尚款', 25);
INSERT INTO `config` VALUES (149, '运动款', 25);
INSERT INTO `config` VALUES (150, '裸款', 25);
INSERT INTO `config` VALUES (151, '豪华配置', 26);
INSERT INTO `config` VALUES (152, '高配', 26);
INSERT INTO `config` VALUES (153, '低配', 26);
INSERT INTO `config` VALUES (154, '时尚款', 26);
INSERT INTO `config` VALUES (155, '运动款', 26);
INSERT INTO `config` VALUES (156, '裸款', 26);
INSERT INTO `config` VALUES (157, '豪华配置', 27);
INSERT INTO `config` VALUES (158, '高配', 27);
INSERT INTO `config` VALUES (159, '低配', 27);
INSERT INTO `config` VALUES (160, '时尚款', 27);
INSERT INTO `config` VALUES (161, '运动款', 27);
INSERT INTO `config` VALUES (162, '裸款', 27);
INSERT INTO `config` VALUES (163, '豪华配置', 28);
INSERT INTO `config` VALUES (164, '高配', 28);
INSERT INTO `config` VALUES (165, '低配', 28);
INSERT INTO `config` VALUES (166, '时尚款', 28);
INSERT INTO `config` VALUES (167, '运动款', 28);
INSERT INTO `config` VALUES (168, '裸款', 28);
INSERT INTO `config` VALUES (169, '豪华配置', 29);
INSERT INTO `config` VALUES (170, '高配', 29);
INSERT INTO `config` VALUES (171, '低配', 29);
INSERT INTO `config` VALUES (172, '时尚款', 29);
INSERT INTO `config` VALUES (173, '运动款', 29);
INSERT INTO `config` VALUES (174, '裸款', 29);
INSERT INTO `config` VALUES (175, '豪华配置', 285);
INSERT INTO `config` VALUES (176, '高配', 285);
INSERT INTO `config` VALUES (177, '低配', 285);
INSERT INTO `config` VALUES (178, '时尚款', 285);
INSERT INTO `config` VALUES (179, '运动款', 285);
INSERT INTO `config` VALUES (180, '裸款', 285);
INSERT INTO `config` VALUES (181, '豪华配置', 286);
INSERT INTO `config` VALUES (182, '高配', 286);
INSERT INTO `config` VALUES (183, '低配', 286);
INSERT INTO `config` VALUES (184, '时尚款', 286);
INSERT INTO `config` VALUES (185, '运动款', 286);
INSERT INTO `config` VALUES (186, '裸款', 286);
INSERT INTO `config` VALUES (187, '豪华配置', 287);
INSERT INTO `config` VALUES (188, '高配', 287);
INSERT INTO `config` VALUES (189, '低配', 287);
INSERT INTO `config` VALUES (190, '时尚款', 287);
INSERT INTO `config` VALUES (191, '运动款', 287);
INSERT INTO `config` VALUES (192, '裸款', 287);
INSERT INTO `config` VALUES (193, '豪华配置', 288);
INSERT INTO `config` VALUES (194, '高配', 288);
INSERT INTO `config` VALUES (195, '低配', 288);
INSERT INTO `config` VALUES (196, '时尚款', 288);
INSERT INTO `config` VALUES (197, '运动款', 288);
INSERT INTO `config` VALUES (198, '裸款', 288);
INSERT INTO `config` VALUES (199, '豪华配置', 289);
INSERT INTO `config` VALUES (200, '高配', 289);
INSERT INTO `config` VALUES (201, '低配', 289);
INSERT INTO `config` VALUES (202, '时尚款', 289);
INSERT INTO `config` VALUES (203, '运动款', 289);
INSERT INTO `config` VALUES (204, '裸款', 289);
INSERT INTO `config` VALUES (205, '豪华配置', 290);
INSERT INTO `config` VALUES (206, '高配', 290);
INSERT INTO `config` VALUES (207, '低配', 290);
INSERT INTO `config` VALUES (208, '时尚款', 290);
INSERT INTO `config` VALUES (209, '运动款', 290);
INSERT INTO `config` VALUES (210, '裸款', 290);
INSERT INTO `config` VALUES (211, '豪华配置', 291);
INSERT INTO `config` VALUES (212, '高配', 291);
INSERT INTO `config` VALUES (213, '低配', 291);
INSERT INTO `config` VALUES (214, '时尚款', 291);
INSERT INTO `config` VALUES (215, '运动款', 291);
INSERT INTO `config` VALUES (216, '裸款', 291);
INSERT INTO `config` VALUES (217, '豪华配置', 292);
INSERT INTO `config` VALUES (218, '高配', 292);
INSERT INTO `config` VALUES (219, '低配', 292);
INSERT INTO `config` VALUES (220, '时尚款', 292);
INSERT INTO `config` VALUES (221, '运动款', 292);
INSERT INTO `config` VALUES (222, '裸款', 292);
INSERT INTO `config` VALUES (223, '豪华配置', 293);
INSERT INTO `config` VALUES (224, '高配', 293);
INSERT INTO `config` VALUES (225, '低配', 293);
INSERT INTO `config` VALUES (226, '时尚款', 293);
INSERT INTO `config` VALUES (227, '运动款', 293);
INSERT INTO `config` VALUES (228, '裸款', 293);
INSERT INTO `config` VALUES (229, '豪华配置', 294);
INSERT INTO `config` VALUES (230, '高配', 294);
INSERT INTO `config` VALUES (231, '低配', 294);
INSERT INTO `config` VALUES (232, '时尚款', 294);
INSERT INTO `config` VALUES (233, '运动款', 294);
INSERT INTO `config` VALUES (234, '裸款', 294);
INSERT INTO `config` VALUES (235, '豪华配置', 295);
INSERT INTO `config` VALUES (236, '高配', 295);
INSERT INTO `config` VALUES (237, '低配', 295);
INSERT INTO `config` VALUES (238, '时尚款', 295);
INSERT INTO `config` VALUES (239, '运动款', 295);
INSERT INTO `config` VALUES (240, '裸款', 295);
INSERT INTO `config` VALUES (241, '豪华配置', 296);
INSERT INTO `config` VALUES (242, '高配', 296);
INSERT INTO `config` VALUES (243, '低配', 296);
INSERT INTO `config` VALUES (244, '时尚款', 296);
INSERT INTO `config` VALUES (245, '运动款', 296);
INSERT INTO `config` VALUES (246, '裸款', 296);
INSERT INTO `config` VALUES (247, '豪华配置', 297);
INSERT INTO `config` VALUES (248, '高配', 297);
INSERT INTO `config` VALUES (249, '低配', 297);
INSERT INTO `config` VALUES (250, '时尚款', 297);
INSERT INTO `config` VALUES (251, '运动款', 297);
INSERT INTO `config` VALUES (252, '裸款', 297);
INSERT INTO `config` VALUES (253, '豪华配置', 298);
INSERT INTO `config` VALUES (254, '高配', 298);
INSERT INTO `config` VALUES (255, '低配', 298);
INSERT INTO `config` VALUES (256, '时尚款', 298);
INSERT INTO `config` VALUES (257, '运动款', 298);
INSERT INTO `config` VALUES (258, '裸款', 298);
INSERT INTO `config` VALUES (259, '豪华配置', 299);
INSERT INTO `config` VALUES (260, '高配', 299);
INSERT INTO `config` VALUES (261, '低配', 299);
INSERT INTO `config` VALUES (262, '时尚款', 299);
INSERT INTO `config` VALUES (263, '运动款', 299);
INSERT INTO `config` VALUES (264, '裸款', 299);
INSERT INTO `config` VALUES (265, '豪华配置', 300);
INSERT INTO `config` VALUES (266, '高配', 300);
INSERT INTO `config` VALUES (267, '低配', 300);
INSERT INTO `config` VALUES (268, '时尚款', 300);
INSERT INTO `config` VALUES (269, '运动款', 300);
INSERT INTO `config` VALUES (270, '裸款', 300);
INSERT INTO `config` VALUES (271, '豪华配置', 301);
INSERT INTO `config` VALUES (272, '高配', 301);
INSERT INTO `config` VALUES (273, '低配', 301);
INSERT INTO `config` VALUES (274, '时尚款', 301);
INSERT INTO `config` VALUES (275, '运动款', 301);
INSERT INTO `config` VALUES (276, '裸款', 301);
INSERT INTO `config` VALUES (277, '豪华配置', 302);
INSERT INTO `config` VALUES (278, '高配', 302);
INSERT INTO `config` VALUES (279, '低配', 302);
INSERT INTO `config` VALUES (280, '时尚款', 302);
INSERT INTO `config` VALUES (281, '运动款', 302);
INSERT INTO `config` VALUES (282, '裸款', 302);
INSERT INTO `config` VALUES (283, '豪华配置', 303);
INSERT INTO `config` VALUES (284, '高配', 303);
INSERT INTO `config` VALUES (285, '低配', 303);
INSERT INTO `config` VALUES (286, '时尚款', 303);
INSERT INTO `config` VALUES (287, '运动款', 303);
INSERT INTO `config` VALUES (288, '裸款', 303);
INSERT INTO `config` VALUES (289, '豪华配置', 304);
INSERT INTO `config` VALUES (290, '高配', 304);
INSERT INTO `config` VALUES (291, '低配', 304);
INSERT INTO `config` VALUES (292, '时尚款', 304);
INSERT INTO `config` VALUES (293, '运动款', 304);
INSERT INTO `config` VALUES (294, '裸款', 304);
INSERT INTO `config` VALUES (295, '豪华配置', 305);
INSERT INTO `config` VALUES (296, '高配', 305);
INSERT INTO `config` VALUES (297, '低配', 305);
INSERT INTO `config` VALUES (298, '时尚款', 305);
INSERT INTO `config` VALUES (299, '运动款', 305);
INSERT INTO `config` VALUES (300, '裸款', 305);
INSERT INTO `config` VALUES (301, '豪华配置', 306);
INSERT INTO `config` VALUES (302, '高配', 306);
INSERT INTO `config` VALUES (303, '低配', 306);
INSERT INTO `config` VALUES (304, '时尚款', 306);
INSERT INTO `config` VALUES (305, '运动款', 306);
INSERT INTO `config` VALUES (306, '裸款', 306);
INSERT INTO `config` VALUES (307, '豪华配置', 307);
INSERT INTO `config` VALUES (308, '高配', 307);
INSERT INTO `config` VALUES (309, '低配', 307);
INSERT INTO `config` VALUES (310, '时尚款', 307);
INSERT INTO `config` VALUES (311, '运动款', 307);
INSERT INTO `config` VALUES (312, '裸款', 307);
INSERT INTO `config` VALUES (313, '豪华配置', 308);
INSERT INTO `config` VALUES (314, '高配', 308);
INSERT INTO `config` VALUES (315, '低配', 308);
INSERT INTO `config` VALUES (316, '时尚款', 308);
INSERT INTO `config` VALUES (317, '运动款', 308);
INSERT INTO `config` VALUES (318, '裸款', 308);
INSERT INTO `config` VALUES (319, '豪华配置', 309);
INSERT INTO `config` VALUES (320, '高配', 309);
INSERT INTO `config` VALUES (321, '低配', 309);
INSERT INTO `config` VALUES (322, '时尚款', 309);
INSERT INTO `config` VALUES (323, '运动款', 309);
INSERT INTO `config` VALUES (324, '裸款', 309);
INSERT INTO `config` VALUES (325, '豪华配置', 310);
INSERT INTO `config` VALUES (326, '高配', 310);
INSERT INTO `config` VALUES (327, '低配', 310);
INSERT INTO `config` VALUES (328, '时尚款', 310);
INSERT INTO `config` VALUES (329, '运动款', 310);
INSERT INTO `config` VALUES (330, '裸款', 310);
INSERT INTO `config` VALUES (331, '豪华配置', 311);
INSERT INTO `config` VALUES (332, '高配', 311);
INSERT INTO `config` VALUES (333, '低配', 311);
INSERT INTO `config` VALUES (334, '时尚款', 311);
INSERT INTO `config` VALUES (335, '运动款', 311);
INSERT INTO `config` VALUES (336, '裸款', 311);
INSERT INTO `config` VALUES (337, '豪华配置', 312);
INSERT INTO `config` VALUES (338, '高配', 312);
INSERT INTO `config` VALUES (339, '低配', 312);
INSERT INTO `config` VALUES (340, '时尚款', 312);
INSERT INTO `config` VALUES (341, '运动款', 312);
INSERT INTO `config` VALUES (342, '裸款', 312);
INSERT INTO `config` VALUES (343, '豪华配置', 313);
INSERT INTO `config` VALUES (344, '高配', 313);
INSERT INTO `config` VALUES (345, '低配', 313);
INSERT INTO `config` VALUES (346, '时尚款', 313);
INSERT INTO `config` VALUES (347, '运动款', 313);
INSERT INTO `config` VALUES (348, '裸款', 313);
INSERT INTO `config` VALUES (349, '豪华配置', 314);
INSERT INTO `config` VALUES (350, '高配', 314);
INSERT INTO `config` VALUES (351, '低配', 314);
INSERT INTO `config` VALUES (352, '时尚款', 314);
INSERT INTO `config` VALUES (353, '运动款', 314);
INSERT INTO `config` VALUES (354, '裸款', 314);
INSERT INTO `config` VALUES (355, '豪华配置', 315);
INSERT INTO `config` VALUES (356, '高配', 315);
INSERT INTO `config` VALUES (357, '低配', 315);
INSERT INTO `config` VALUES (358, '时尚款', 315);
INSERT INTO `config` VALUES (359, '运动款', 315);
INSERT INTO `config` VALUES (360, '裸款', 315);
INSERT INTO `config` VALUES (361, '豪华配置', 316);
INSERT INTO `config` VALUES (362, '高配', 316);
INSERT INTO `config` VALUES (363, '低配', 316);
INSERT INTO `config` VALUES (364, '时尚款', 316);
INSERT INTO `config` VALUES (365, '运动款', 316);
INSERT INTO `config` VALUES (366, '裸款', 316);
INSERT INTO `config` VALUES (367, '豪华配置', 317);
INSERT INTO `config` VALUES (368, '高配', 317);
INSERT INTO `config` VALUES (369, '低配', 317);
INSERT INTO `config` VALUES (370, '时尚款', 317);
INSERT INTO `config` VALUES (371, '运动款', 317);
INSERT INTO `config` VALUES (372, '裸款', 317);
INSERT INTO `config` VALUES (373, '豪华配置', 318);
INSERT INTO `config` VALUES (374, '高配', 318);
INSERT INTO `config` VALUES (375, '低配', 318);
INSERT INTO `config` VALUES (376, '时尚款', 318);
INSERT INTO `config` VALUES (377, '运动款', 318);
INSERT INTO `config` VALUES (378, '裸款', 318);
INSERT INTO `config` VALUES (379, '豪华配置', 319);
INSERT INTO `config` VALUES (380, '高配', 319);
INSERT INTO `config` VALUES (381, '低配', 319);
INSERT INTO `config` VALUES (382, '时尚款', 319);
INSERT INTO `config` VALUES (383, '运动款', 319);
INSERT INTO `config` VALUES (384, '裸款', 319);
INSERT INTO `config` VALUES (385, '豪华配置', 320);
INSERT INTO `config` VALUES (386, '高配', 320);
INSERT INTO `config` VALUES (387, '低配', 320);
INSERT INTO `config` VALUES (388, '时尚款', 320);
INSERT INTO `config` VALUES (389, '运动款', 320);
INSERT INTO `config` VALUES (390, '裸款', 320);
INSERT INTO `config` VALUES (391, '豪华配置', 321);
INSERT INTO `config` VALUES (392, '高配', 321);
INSERT INTO `config` VALUES (393, '低配', 321);
INSERT INTO `config` VALUES (394, '时尚款', 321);
INSERT INTO `config` VALUES (395, '运动款', 321);
INSERT INTO `config` VALUES (396, '裸款', 321);
INSERT INTO `config` VALUES (397, '豪华配置', 322);
INSERT INTO `config` VALUES (398, '高配', 322);
INSERT INTO `config` VALUES (399, '低配', 322);
INSERT INTO `config` VALUES (400, '时尚款', 322);
INSERT INTO `config` VALUES (401, '运动款', 322);
INSERT INTO `config` VALUES (402, '裸款', 322);
INSERT INTO `config` VALUES (403, '豪华配置', 323);
INSERT INTO `config` VALUES (404, '高配', 323);
INSERT INTO `config` VALUES (405, '低配', 323);
INSERT INTO `config` VALUES (406, '时尚款', 323);
INSERT INTO `config` VALUES (407, '运动款', 323);
INSERT INTO `config` VALUES (408, '裸款', 323);
INSERT INTO `config` VALUES (409, '豪华配置', 324);
INSERT INTO `config` VALUES (410, '高配', 324);
INSERT INTO `config` VALUES (411, '低配', 324);
INSERT INTO `config` VALUES (412, '时尚款', 324);
INSERT INTO `config` VALUES (413, '运动款', 324);
INSERT INTO `config` VALUES (414, '裸款', 324);
INSERT INTO `config` VALUES (415, '豪华配置', 325);
INSERT INTO `config` VALUES (416, '高配', 325);
INSERT INTO `config` VALUES (417, '低配', 325);
INSERT INTO `config` VALUES (418, '时尚款', 325);
INSERT INTO `config` VALUES (419, '运动款', 325);
INSERT INTO `config` VALUES (420, '裸款', 325);
INSERT INTO `config` VALUES (421, '豪华配置', 326);
INSERT INTO `config` VALUES (422, '高配', 326);
INSERT INTO `config` VALUES (423, '低配', 326);
INSERT INTO `config` VALUES (424, '时尚款', 326);
INSERT INTO `config` VALUES (425, '运动款', 326);
INSERT INTO `config` VALUES (426, '裸款', 326);
INSERT INTO `config` VALUES (427, '豪华配置', 327);
INSERT INTO `config` VALUES (428, '高配', 327);
INSERT INTO `config` VALUES (429, '低配', 327);
INSERT INTO `config` VALUES (430, '时尚款', 327);
INSERT INTO `config` VALUES (431, '运动款', 327);
INSERT INTO `config` VALUES (432, '裸款', 327);
INSERT INTO `config` VALUES (433, '豪华配置', 328);
INSERT INTO `config` VALUES (434, '高配', 328);
INSERT INTO `config` VALUES (435, '低配', 328);
INSERT INTO `config` VALUES (436, '时尚款', 328);
INSERT INTO `config` VALUES (437, '运动款', 328);
INSERT INTO `config` VALUES (438, '裸款', 328);
INSERT INTO `config` VALUES (439, '豪华配置', 329);
INSERT INTO `config` VALUES (440, '高配', 329);
INSERT INTO `config` VALUES (441, '低配', 329);
INSERT INTO `config` VALUES (442, '时尚款', 329);
INSERT INTO `config` VALUES (443, '运动款', 329);
INSERT INTO `config` VALUES (444, '裸款', 329);
INSERT INTO `config` VALUES (445, '豪华配置', 330);
INSERT INTO `config` VALUES (446, '高配', 330);
INSERT INTO `config` VALUES (447, '低配', 330);
INSERT INTO `config` VALUES (448, '时尚款', 330);
INSERT INTO `config` VALUES (449, '运动款', 330);
INSERT INTO `config` VALUES (450, '裸款', 330);
INSERT INTO `config` VALUES (451, '豪华配置', 331);
INSERT INTO `config` VALUES (452, '高配', 331);
INSERT INTO `config` VALUES (453, '低配', 331);
INSERT INTO `config` VALUES (454, '时尚款', 331);
INSERT INTO `config` VALUES (455, '运动款', 331);
INSERT INTO `config` VALUES (456, '裸款', 331);
INSERT INTO `config` VALUES (457, '豪华配置', 332);
INSERT INTO `config` VALUES (458, '高配', 332);
INSERT INTO `config` VALUES (459, '低配', 332);
INSERT INTO `config` VALUES (460, '时尚款', 332);
INSERT INTO `config` VALUES (461, '运动款', 332);
INSERT INTO `config` VALUES (462, '裸款', 332);
INSERT INTO `config` VALUES (463, '豪华配置', 333);
INSERT INTO `config` VALUES (464, '高配', 333);
INSERT INTO `config` VALUES (465, '低配', 333);
INSERT INTO `config` VALUES (466, '时尚款', 333);
INSERT INTO `config` VALUES (467, '运动款', 333);
INSERT INTO `config` VALUES (468, '裸款', 333);
INSERT INTO `config` VALUES (469, '豪华配置', 334);
INSERT INTO `config` VALUES (470, '高配', 334);
INSERT INTO `config` VALUES (471, '低配', 334);
INSERT INTO `config` VALUES (472, '时尚款', 334);
INSERT INTO `config` VALUES (473, '运动款', 334);
INSERT INTO `config` VALUES (474, '裸款', 334);
INSERT INTO `config` VALUES (475, '豪华配置', 335);
INSERT INTO `config` VALUES (476, '高配', 335);
INSERT INTO `config` VALUES (477, '低配', 335);
INSERT INTO `config` VALUES (478, '时尚款', 335);
INSERT INTO `config` VALUES (479, '运动款', 335);
INSERT INTO `config` VALUES (480, '裸款', 335);
INSERT INTO `config` VALUES (481, '豪华配置', 336);
INSERT INTO `config` VALUES (482, '高配', 336);
INSERT INTO `config` VALUES (483, '低配', 336);
INSERT INTO `config` VALUES (484, '时尚款', 336);
INSERT INTO `config` VALUES (485, '运动款', 336);
INSERT INTO `config` VALUES (486, '裸款', 336);
INSERT INTO `config` VALUES (487, '豪华配置', 337);
INSERT INTO `config` VALUES (488, '高配', 337);
INSERT INTO `config` VALUES (489, '低配', 337);
INSERT INTO `config` VALUES (490, '时尚款', 337);
INSERT INTO `config` VALUES (491, '运动款', 337);
INSERT INTO `config` VALUES (492, '裸款', 337);
INSERT INTO `config` VALUES (493, '豪华配置', 338);
INSERT INTO `config` VALUES (494, '高配', 338);
INSERT INTO `config` VALUES (495, '低配', 338);
INSERT INTO `config` VALUES (496, '时尚款', 338);
INSERT INTO `config` VALUES (497, '运动款', 338);
INSERT INTO `config` VALUES (498, '裸款', 338);
INSERT INTO `config` VALUES (499, '豪华配置', 339);
INSERT INTO `config` VALUES (500, '高配', 339);
INSERT INTO `config` VALUES (501, '低配', 339);
INSERT INTO `config` VALUES (502, '时尚款', 339);
INSERT INTO `config` VALUES (503, '运动款', 339);
INSERT INTO `config` VALUES (504, '裸款', 339);
INSERT INTO `config` VALUES (505, '豪华配置', 340);
INSERT INTO `config` VALUES (506, '高配', 340);
INSERT INTO `config` VALUES (507, '低配', 340);
INSERT INTO `config` VALUES (508, '时尚款', 340);
INSERT INTO `config` VALUES (509, '运动款', 340);
INSERT INTO `config` VALUES (510, '裸款', 340);
INSERT INTO `config` VALUES (511, '豪华配置', 341);
INSERT INTO `config` VALUES (512, '高配', 341);
INSERT INTO `config` VALUES (513, '低配', 341);
INSERT INTO `config` VALUES (514, '时尚款', 341);
INSERT INTO `config` VALUES (515, '运动款', 341);
INSERT INTO `config` VALUES (516, '裸款', 341);
INSERT INTO `config` VALUES (517, '豪华配置', 342);
INSERT INTO `config` VALUES (518, '高配', 342);
INSERT INTO `config` VALUES (519, '低配', 342);
INSERT INTO `config` VALUES (520, '时尚款', 342);
INSERT INTO `config` VALUES (521, '运动款', 342);
INSERT INTO `config` VALUES (522, '裸款', 342);
INSERT INTO `config` VALUES (523, '豪华配置', 343);
INSERT INTO `config` VALUES (524, '高配', 343);
INSERT INTO `config` VALUES (525, '低配', 343);
INSERT INTO `config` VALUES (526, '时尚款', 343);
INSERT INTO `config` VALUES (527, '运动款', 343);
INSERT INTO `config` VALUES (528, '裸款', 343);
INSERT INTO `config` VALUES (529, '豪华配置', 344);
INSERT INTO `config` VALUES (530, '高配', 344);
INSERT INTO `config` VALUES (531, '低配', 344);
INSERT INTO `config` VALUES (532, '时尚款', 344);
INSERT INTO `config` VALUES (533, '运动款', 344);
INSERT INTO `config` VALUES (534, '裸款', 344);
INSERT INTO `config` VALUES (535, '豪华配置', 345);
INSERT INTO `config` VALUES (536, '高配', 345);
INSERT INTO `config` VALUES (537, '低配', 345);
INSERT INTO `config` VALUES (538, '时尚款', 345);
INSERT INTO `config` VALUES (539, '运动款', 345);
INSERT INTO `config` VALUES (540, '裸款', 345);
INSERT INTO `config` VALUES (541, '豪华配置', 346);
INSERT INTO `config` VALUES (542, '高配', 346);
INSERT INTO `config` VALUES (543, '低配', 346);
INSERT INTO `config` VALUES (544, '时尚款', 346);
INSERT INTO `config` VALUES (545, '运动款', 346);
INSERT INTO `config` VALUES (546, '裸款', 346);
INSERT INTO `config` VALUES (547, '豪华配置', 347);
INSERT INTO `config` VALUES (548, '高配', 347);
INSERT INTO `config` VALUES (549, '低配', 347);
INSERT INTO `config` VALUES (550, '时尚款', 347);
INSERT INTO `config` VALUES (551, '运动款', 347);
INSERT INTO `config` VALUES (552, '裸款', 347);
INSERT INTO `config` VALUES (553, '豪华配置', 348);
INSERT INTO `config` VALUES (554, '高配', 348);
INSERT INTO `config` VALUES (555, '低配', 348);
INSERT INTO `config` VALUES (556, '时尚款', 348);
INSERT INTO `config` VALUES (557, '运动款', 348);
INSERT INTO `config` VALUES (558, '裸款', 348);
INSERT INTO `config` VALUES (559, '豪华配置', 349);
INSERT INTO `config` VALUES (560, '高配', 349);
INSERT INTO `config` VALUES (561, '低配', 349);
INSERT INTO `config` VALUES (562, '时尚款', 349);
INSERT INTO `config` VALUES (563, '运动款', 349);
INSERT INTO `config` VALUES (564, '裸款', 349);
INSERT INTO `config` VALUES (565, '豪华配置', 350);
INSERT INTO `config` VALUES (566, '高配', 350);
INSERT INTO `config` VALUES (567, '低配', 350);
INSERT INTO `config` VALUES (568, '时尚款', 350);
INSERT INTO `config` VALUES (569, '运动款', 350);
INSERT INTO `config` VALUES (570, '裸款', 350);
INSERT INTO `config` VALUES (571, '豪华配置', 351);
INSERT INTO `config` VALUES (572, '高配', 351);
INSERT INTO `config` VALUES (573, '低配', 351);
INSERT INTO `config` VALUES (574, '时尚款', 351);
INSERT INTO `config` VALUES (575, '运动款', 351);
INSERT INTO `config` VALUES (576, '裸款', 351);
INSERT INTO `config` VALUES (577, '豪华配置', 352);
INSERT INTO `config` VALUES (578, '高配', 352);
INSERT INTO `config` VALUES (579, '低配', 352);
INSERT INTO `config` VALUES (580, '时尚款', 352);
INSERT INTO `config` VALUES (581, '运动款', 352);
INSERT INTO `config` VALUES (582, '裸款', 352);
INSERT INTO `config` VALUES (583, '豪华配置', 353);
INSERT INTO `config` VALUES (584, '高配', 353);
INSERT INTO `config` VALUES (585, '低配', 353);
INSERT INTO `config` VALUES (586, '时尚款', 353);
INSERT INTO `config` VALUES (587, '运动款', 353);
INSERT INTO `config` VALUES (588, '裸款', 353);
INSERT INTO `config` VALUES (589, '豪华配置', 354);
INSERT INTO `config` VALUES (590, '高配', 354);
INSERT INTO `config` VALUES (591, '低配', 354);
INSERT INTO `config` VALUES (592, '时尚款', 354);
INSERT INTO `config` VALUES (593, '运动款', 354);
INSERT INTO `config` VALUES (594, '裸款', 354);
INSERT INTO `config` VALUES (595, '豪华配置', 355);
INSERT INTO `config` VALUES (596, '高配', 355);
INSERT INTO `config` VALUES (597, '低配', 355);
INSERT INTO `config` VALUES (598, '时尚款', 355);
INSERT INTO `config` VALUES (599, '运动款', 355);
INSERT INTO `config` VALUES (600, '裸款', 355);
INSERT INTO `config` VALUES (601, '豪华配置', 356);
INSERT INTO `config` VALUES (602, '高配', 356);
INSERT INTO `config` VALUES (603, '低配', 356);
INSERT INTO `config` VALUES (604, '时尚款', 356);
INSERT INTO `config` VALUES (605, '运动款', 356);
INSERT INTO `config` VALUES (606, '裸款', 356);
INSERT INTO `config` VALUES (607, '豪华配置', 357);
INSERT INTO `config` VALUES (608, '高配', 357);
INSERT INTO `config` VALUES (609, '低配', 357);
INSERT INTO `config` VALUES (610, '时尚款', 357);
INSERT INTO `config` VALUES (611, '运动款', 357);
INSERT INTO `config` VALUES (612, '裸款', 357);
INSERT INTO `config` VALUES (613, '豪华配置', 358);
INSERT INTO `config` VALUES (614, '高配', 358);
INSERT INTO `config` VALUES (615, '低配', 358);
INSERT INTO `config` VALUES (616, '时尚款', 358);
INSERT INTO `config` VALUES (617, '运动款', 358);
INSERT INTO `config` VALUES (618, '裸款', 358);
INSERT INTO `config` VALUES (619, '豪华配置', 359);
INSERT INTO `config` VALUES (620, '高配', 359);
INSERT INTO `config` VALUES (621, '低配', 359);
INSERT INTO `config` VALUES (622, '时尚款', 359);
INSERT INTO `config` VALUES (623, '运动款', 359);
INSERT INTO `config` VALUES (624, '裸款', 359);
INSERT INTO `config` VALUES (625, '豪华配置', 360);
INSERT INTO `config` VALUES (626, '高配', 360);
INSERT INTO `config` VALUES (627, '低配', 360);
INSERT INTO `config` VALUES (628, '时尚款', 360);
INSERT INTO `config` VALUES (629, '运动款', 360);
INSERT INTO `config` VALUES (630, '裸款', 360);
INSERT INTO `config` VALUES (631, '豪华配置', 361);
INSERT INTO `config` VALUES (632, '高配', 361);
INSERT INTO `config` VALUES (633, '低配', 361);
INSERT INTO `config` VALUES (634, '时尚款', 361);
INSERT INTO `config` VALUES (635, '运动款', 361);
INSERT INTO `config` VALUES (636, '裸款', 361);
INSERT INTO `config` VALUES (637, '豪华配置', 362);
INSERT INTO `config` VALUES (638, '高配', 362);
INSERT INTO `config` VALUES (639, '低配', 362);
INSERT INTO `config` VALUES (640, '时尚款', 362);
INSERT INTO `config` VALUES (641, '运动款', 362);
INSERT INTO `config` VALUES (642, '裸款', 362);
INSERT INTO `config` VALUES (643, '豪华配置', 363);
INSERT INTO `config` VALUES (644, '高配', 363);
INSERT INTO `config` VALUES (645, '低配', 363);
INSERT INTO `config` VALUES (646, '时尚款', 363);
INSERT INTO `config` VALUES (647, '运动款', 363);
INSERT INTO `config` VALUES (648, '裸款', 363);
INSERT INTO `config` VALUES (649, '豪华配置', 364);
INSERT INTO `config` VALUES (650, '高配', 364);
INSERT INTO `config` VALUES (651, '低配', 364);
INSERT INTO `config` VALUES (652, '时尚款', 364);
INSERT INTO `config` VALUES (653, '运动款', 364);
INSERT INTO `config` VALUES (654, '裸款', 364);
INSERT INTO `config` VALUES (655, '豪华配置', 365);
INSERT INTO `config` VALUES (656, '高配', 365);
INSERT INTO `config` VALUES (657, '低配', 365);
INSERT INTO `config` VALUES (658, '时尚款', 365);
INSERT INTO `config` VALUES (659, '运动款', 365);
INSERT INTO `config` VALUES (660, '裸款', 365);
INSERT INTO `config` VALUES (661, '豪华配置', 366);
INSERT INTO `config` VALUES (662, '高配', 366);
INSERT INTO `config` VALUES (663, '低配', 366);
INSERT INTO `config` VALUES (664, '时尚款', 366);
INSERT INTO `config` VALUES (665, '运动款', 366);
INSERT INTO `config` VALUES (666, '裸款', 366);
INSERT INTO `config` VALUES (667, '豪华配置', 367);
INSERT INTO `config` VALUES (668, '高配', 367);
INSERT INTO `config` VALUES (669, '低配', 367);
INSERT INTO `config` VALUES (670, '时尚款', 367);
INSERT INTO `config` VALUES (671, '运动款', 367);
INSERT INTO `config` VALUES (672, '裸款', 367);
INSERT INTO `config` VALUES (673, '豪华配置', 368);
INSERT INTO `config` VALUES (674, '高配', 368);
INSERT INTO `config` VALUES (675, '低配', 368);
INSERT INTO `config` VALUES (676, '时尚款', 368);
INSERT INTO `config` VALUES (677, '运动款', 368);
INSERT INTO `config` VALUES (678, '裸款', 368);
INSERT INTO `config` VALUES (679, '豪华配置', 369);
INSERT INTO `config` VALUES (680, '高配', 369);
INSERT INTO `config` VALUES (681, '低配', 369);
INSERT INTO `config` VALUES (682, '时尚款', 369);
INSERT INTO `config` VALUES (683, '运动款', 369);
INSERT INTO `config` VALUES (684, '裸款', 369);
INSERT INTO `config` VALUES (685, '豪华配置', 370);
INSERT INTO `config` VALUES (686, '高配', 370);
INSERT INTO `config` VALUES (687, '低配', 370);
INSERT INTO `config` VALUES (688, '时尚款', 370);
INSERT INTO `config` VALUES (689, '运动款', 370);
INSERT INTO `config` VALUES (690, '裸款', 370);
INSERT INTO `config` VALUES (691, '豪华配置', 371);
INSERT INTO `config` VALUES (692, '高配', 371);
INSERT INTO `config` VALUES (693, '低配', 371);
INSERT INTO `config` VALUES (694, '时尚款', 371);
INSERT INTO `config` VALUES (695, '运动款', 371);
INSERT INTO `config` VALUES (696, '裸款', 371);
INSERT INTO `config` VALUES (697, '豪华配置', 372);
INSERT INTO `config` VALUES (698, '高配', 372);
INSERT INTO `config` VALUES (699, '低配', 372);
INSERT INTO `config` VALUES (700, '时尚款', 372);
INSERT INTO `config` VALUES (701, '运动款', 372);
INSERT INTO `config` VALUES (702, '裸款', 372);
INSERT INTO `config` VALUES (703, '豪华配置', 373);
INSERT INTO `config` VALUES (704, '高配', 373);
INSERT INTO `config` VALUES (705, '低配', 373);
INSERT INTO `config` VALUES (706, '时尚款', 373);
INSERT INTO `config` VALUES (707, '运动款', 373);
INSERT INTO `config` VALUES (708, '裸款', 373);
INSERT INTO `config` VALUES (709, '豪华配置', 374);
INSERT INTO `config` VALUES (710, '高配', 374);
INSERT INTO `config` VALUES (711, '低配', 374);
INSERT INTO `config` VALUES (712, '时尚款', 374);
INSERT INTO `config` VALUES (713, '运动款', 374);
INSERT INTO `config` VALUES (714, '裸款', 374);
INSERT INTO `config` VALUES (715, '豪华配置', 375);
INSERT INTO `config` VALUES (716, '高配', 375);
INSERT INTO `config` VALUES (717, '低配', 375);
INSERT INTO `config` VALUES (718, '时尚款', 375);
INSERT INTO `config` VALUES (719, '运动款', 375);
INSERT INTO `config` VALUES (720, '裸款', 375);
INSERT INTO `config` VALUES (721, '豪华配置', 376);
INSERT INTO `config` VALUES (722, '高配', 376);
INSERT INTO `config` VALUES (723, '低配', 376);
INSERT INTO `config` VALUES (724, '时尚款', 376);
INSERT INTO `config` VALUES (725, '运动款', 376);
INSERT INTO `config` VALUES (726, '裸款', 376);
INSERT INTO `config` VALUES (727, '豪华配置', 377);
INSERT INTO `config` VALUES (728, '高配', 377);
INSERT INTO `config` VALUES (729, '低配', 377);
INSERT INTO `config` VALUES (730, '时尚款', 377);
INSERT INTO `config` VALUES (731, '运动款', 377);
INSERT INTO `config` VALUES (732, '裸款', 377);
INSERT INTO `config` VALUES (733, '豪华配置', 378);
INSERT INTO `config` VALUES (734, '高配', 378);
INSERT INTO `config` VALUES (735, '低配', 378);
INSERT INTO `config` VALUES (736, '时尚款', 378);
INSERT INTO `config` VALUES (737, '运动款', 378);
INSERT INTO `config` VALUES (738, '裸款', 378);
INSERT INTO `config` VALUES (739, '豪华配置', 379);
INSERT INTO `config` VALUES (740, '高配', 379);
INSERT INTO `config` VALUES (741, '低配', 379);
INSERT INTO `config` VALUES (742, '时尚款', 379);
INSERT INTO `config` VALUES (743, '运动款', 379);
INSERT INTO `config` VALUES (744, '裸款', 379);
INSERT INTO `config` VALUES (745, '豪华配置', 380);
INSERT INTO `config` VALUES (746, '高配', 380);
INSERT INTO `config` VALUES (747, '低配', 380);
INSERT INTO `config` VALUES (748, '时尚款', 380);
INSERT INTO `config` VALUES (749, '运动款', 380);
INSERT INTO `config` VALUES (750, '裸款', 380);
INSERT INTO `config` VALUES (751, '豪华配置', 381);
INSERT INTO `config` VALUES (752, '高配', 381);
INSERT INTO `config` VALUES (753, '低配', 381);
INSERT INTO `config` VALUES (754, '时尚款', 381);
INSERT INTO `config` VALUES (755, '运动款', 381);
INSERT INTO `config` VALUES (756, '裸款', 381);
INSERT INTO `config` VALUES (757, '豪华配置', 382);
INSERT INTO `config` VALUES (758, '高配', 382);
INSERT INTO `config` VALUES (759, '低配', 382);
INSERT INTO `config` VALUES (760, '时尚款', 382);
INSERT INTO `config` VALUES (761, '运动款', 382);
INSERT INTO `config` VALUES (762, '裸款', 382);
INSERT INTO `config` VALUES (763, '豪华配置', 383);
INSERT INTO `config` VALUES (764, '高配', 383);
INSERT INTO `config` VALUES (765, '低配', 383);
INSERT INTO `config` VALUES (766, '时尚款', 383);
INSERT INTO `config` VALUES (767, '运动款', 383);
INSERT INTO `config` VALUES (768, '裸款', 383);
INSERT INTO `config` VALUES (769, '豪华配置', 384);
INSERT INTO `config` VALUES (770, '高配', 384);
INSERT INTO `config` VALUES (771, '低配', 384);
INSERT INTO `config` VALUES (772, '时尚款', 384);
INSERT INTO `config` VALUES (773, '运动款', 384);
INSERT INTO `config` VALUES (774, '裸款', 384);
INSERT INTO `config` VALUES (775, '豪华配置', 385);
INSERT INTO `config` VALUES (776, '高配', 385);
INSERT INTO `config` VALUES (777, '低配', 385);
INSERT INTO `config` VALUES (778, '时尚款', 385);
INSERT INTO `config` VALUES (779, '运动款', 385);
INSERT INTO `config` VALUES (780, '裸款', 385);
INSERT INTO `config` VALUES (781, '豪华配置', 386);
INSERT INTO `config` VALUES (782, '高配', 386);
INSERT INTO `config` VALUES (783, '低配', 386);
INSERT INTO `config` VALUES (784, '时尚款', 386);
INSERT INTO `config` VALUES (785, '运动款', 386);
INSERT INTO `config` VALUES (786, '裸款', 386);
INSERT INTO `config` VALUES (787, '豪华配置', 387);
INSERT INTO `config` VALUES (788, '高配', 387);
INSERT INTO `config` VALUES (789, '低配', 387);
INSERT INTO `config` VALUES (790, '时尚款', 387);
INSERT INTO `config` VALUES (791, '运动款', 387);
INSERT INTO `config` VALUES (792, '裸款', 387);
INSERT INTO `config` VALUES (793, '豪华配置', 388);
INSERT INTO `config` VALUES (794, '高配', 388);
INSERT INTO `config` VALUES (795, '低配', 388);
INSERT INTO `config` VALUES (796, '时尚款', 388);
INSERT INTO `config` VALUES (797, '运动款', 388);
INSERT INTO `config` VALUES (798, '裸款', 388);
INSERT INTO `config` VALUES (799, '豪华配置', 389);
INSERT INTO `config` VALUES (800, '高配', 389);
INSERT INTO `config` VALUES (801, '低配', 389);
INSERT INTO `config` VALUES (802, '时尚款', 389);
INSERT INTO `config` VALUES (803, '运动款', 389);
INSERT INTO `config` VALUES (804, '裸款', 389);
INSERT INTO `config` VALUES (805, '豪华配置', 390);
INSERT INTO `config` VALUES (806, '高配', 390);
INSERT INTO `config` VALUES (807, '低配', 390);
INSERT INTO `config` VALUES (808, '时尚款', 390);
INSERT INTO `config` VALUES (809, '运动款', 390);
INSERT INTO `config` VALUES (810, '裸款', 390);
INSERT INTO `config` VALUES (811, '豪华配置', 391);
INSERT INTO `config` VALUES (812, '高配', 391);
INSERT INTO `config` VALUES (813, '低配', 391);
INSERT INTO `config` VALUES (814, '时尚款', 391);
INSERT INTO `config` VALUES (815, '运动款', 391);
INSERT INTO `config` VALUES (816, '裸款', 391);
INSERT INTO `config` VALUES (817, '豪华配置', 392);
INSERT INTO `config` VALUES (818, '高配', 392);
INSERT INTO `config` VALUES (819, '低配', 392);
INSERT INTO `config` VALUES (820, '时尚款', 392);
INSERT INTO `config` VALUES (821, '运动款', 392);
INSERT INTO `config` VALUES (822, '裸款', 392);
INSERT INTO `config` VALUES (823, '豪华配置', 393);
INSERT INTO `config` VALUES (824, '高配', 393);
INSERT INTO `config` VALUES (825, '低配', 393);
INSERT INTO `config` VALUES (826, '时尚款', 393);
INSERT INTO `config` VALUES (827, '运动款', 393);
INSERT INTO `config` VALUES (828, '裸款', 393);
INSERT INTO `config` VALUES (829, '豪华配置', 394);
INSERT INTO `config` VALUES (830, '高配', 394);
INSERT INTO `config` VALUES (831, '低配', 394);
INSERT INTO `config` VALUES (832, '时尚款', 394);
INSERT INTO `config` VALUES (833, '运动款', 394);
INSERT INTO `config` VALUES (834, '裸款', 394);
INSERT INTO `config` VALUES (835, '豪华配置', 395);
INSERT INTO `config` VALUES (836, '高配', 395);
INSERT INTO `config` VALUES (837, '低配', 395);
INSERT INTO `config` VALUES (838, '时尚款', 395);
INSERT INTO `config` VALUES (839, '运动款', 395);
INSERT INTO `config` VALUES (840, '裸款', 395);
INSERT INTO `config` VALUES (841, '豪华配置', 396);
INSERT INTO `config` VALUES (842, '高配', 396);
INSERT INTO `config` VALUES (843, '低配', 396);
INSERT INTO `config` VALUES (844, '时尚款', 396);
INSERT INTO `config` VALUES (845, '运动款', 396);
INSERT INTO `config` VALUES (846, '裸款', 396);
INSERT INTO `config` VALUES (847, '豪华配置', 397);
INSERT INTO `config` VALUES (848, '高配', 397);
INSERT INTO `config` VALUES (849, '低配', 397);
INSERT INTO `config` VALUES (850, '时尚款', 397);
INSERT INTO `config` VALUES (851, '运动款', 397);
INSERT INTO `config` VALUES (852, '裸款', 397);
INSERT INTO `config` VALUES (853, '豪华配置', 398);
INSERT INTO `config` VALUES (854, '高配', 398);
INSERT INTO `config` VALUES (855, '低配', 398);
INSERT INTO `config` VALUES (856, '时尚款', 398);
INSERT INTO `config` VALUES (857, '运动款', 398);
INSERT INTO `config` VALUES (858, '裸款', 398);
INSERT INTO `config` VALUES (859, '豪华配置', 399);
INSERT INTO `config` VALUES (860, '高配', 399);
INSERT INTO `config` VALUES (861, '低配', 399);
INSERT INTO `config` VALUES (862, '时尚款', 399);
INSERT INTO `config` VALUES (863, '运动款', 399);
INSERT INTO `config` VALUES (864, '裸款', 399);
INSERT INTO `config` VALUES (865, '豪华配置', 400);
INSERT INTO `config` VALUES (866, '高配', 400);
INSERT INTO `config` VALUES (867, '低配', 400);
INSERT INTO `config` VALUES (868, '时尚款', 400);
INSERT INTO `config` VALUES (869, '运动款', 400);
INSERT INTO `config` VALUES (870, '裸款', 400);
INSERT INTO `config` VALUES (871, '豪华配置', 401);
INSERT INTO `config` VALUES (872, '高配', 401);
INSERT INTO `config` VALUES (873, '低配', 401);
INSERT INTO `config` VALUES (874, '时尚款', 401);
INSERT INTO `config` VALUES (875, '运动款', 401);
INSERT INTO `config` VALUES (876, '裸款', 401);
INSERT INTO `config` VALUES (877, '豪华配置', 402);
INSERT INTO `config` VALUES (878, '高配', 402);
INSERT INTO `config` VALUES (879, '低配', 402);
INSERT INTO `config` VALUES (880, '时尚款', 402);
INSERT INTO `config` VALUES (881, '运动款', 402);
INSERT INTO `config` VALUES (882, '裸款', 402);
INSERT INTO `config` VALUES (883, '豪华配置', 403);
INSERT INTO `config` VALUES (884, '高配', 403);
INSERT INTO `config` VALUES (885, '低配', 403);
INSERT INTO `config` VALUES (886, '时尚款', 403);
INSERT INTO `config` VALUES (887, '运动款', 403);
INSERT INTO `config` VALUES (888, '裸款', 403);
INSERT INTO `config` VALUES (889, '豪华配置', 404);
INSERT INTO `config` VALUES (890, '高配', 404);
INSERT INTO `config` VALUES (891, '低配', 404);
INSERT INTO `config` VALUES (892, '时尚款', 404);
INSERT INTO `config` VALUES (893, '运动款', 404);
INSERT INTO `config` VALUES (894, '裸款', 404);
INSERT INTO `config` VALUES (895, '豪华配置', 405);
INSERT INTO `config` VALUES (896, '高配', 405);
INSERT INTO `config` VALUES (897, '低配', 405);
INSERT INTO `config` VALUES (898, '时尚款', 405);
INSERT INTO `config` VALUES (899, '运动款', 405);
INSERT INTO `config` VALUES (900, '裸款', 405);
INSERT INTO `config` VALUES (901, '豪华配置', 406);
INSERT INTO `config` VALUES (902, '高配', 406);
INSERT INTO `config` VALUES (903, '低配', 406);
INSERT INTO `config` VALUES (904, '时尚款', 406);
INSERT INTO `config` VALUES (905, '运动款', 406);
INSERT INTO `config` VALUES (906, '裸款', 406);
INSERT INTO `config` VALUES (907, '豪华配置', 407);
INSERT INTO `config` VALUES (908, '高配', 407);
INSERT INTO `config` VALUES (909, '低配', 407);
INSERT INTO `config` VALUES (910, '时尚款', 407);
INSERT INTO `config` VALUES (911, '运动款', 407);
INSERT INTO `config` VALUES (912, '裸款', 407);
INSERT INTO `config` VALUES (913, '豪华配置', 408);
INSERT INTO `config` VALUES (914, '高配', 408);
INSERT INTO `config` VALUES (915, '低配', 408);
INSERT INTO `config` VALUES (916, '时尚款', 408);
INSERT INTO `config` VALUES (917, '运动款', 408);
INSERT INTO `config` VALUES (918, '裸款', 408);
INSERT INTO `config` VALUES (919, '豪华配置', 409);
INSERT INTO `config` VALUES (920, '高配', 409);
INSERT INTO `config` VALUES (921, '低配', 409);
INSERT INTO `config` VALUES (922, '时尚款', 409);
INSERT INTO `config` VALUES (923, '运动款', 409);
INSERT INTO `config` VALUES (924, '裸款', 409);
INSERT INTO `config` VALUES (925, '豪华配置', 410);
INSERT INTO `config` VALUES (926, '高配', 410);
INSERT INTO `config` VALUES (927, '低配', 410);
INSERT INTO `config` VALUES (928, '时尚款', 410);
INSERT INTO `config` VALUES (929, '运动款', 410);
INSERT INTO `config` VALUES (930, '裸款', 410);
INSERT INTO `config` VALUES (931, '豪华配置', 411);
INSERT INTO `config` VALUES (932, '高配', 411);
INSERT INTO `config` VALUES (933, '低配', 411);
INSERT INTO `config` VALUES (934, '时尚款', 411);
INSERT INTO `config` VALUES (935, '运动款', 411);
INSERT INTO `config` VALUES (936, '裸款', 411);
INSERT INTO `config` VALUES (937, '豪华配置', 412);
INSERT INTO `config` VALUES (938, '高配', 412);
INSERT INTO `config` VALUES (939, '低配', 412);
INSERT INTO `config` VALUES (940, '时尚款', 412);
INSERT INTO `config` VALUES (941, '运动款', 412);
INSERT INTO `config` VALUES (942, '裸款', 412);
INSERT INTO `config` VALUES (943, '豪华配置', 413);
INSERT INTO `config` VALUES (944, '高配', 413);
INSERT INTO `config` VALUES (945, '低配', 413);
INSERT INTO `config` VALUES (946, '时尚款', 413);
INSERT INTO `config` VALUES (947, '运动款', 413);
INSERT INTO `config` VALUES (948, '裸款', 413);
INSERT INTO `config` VALUES (949, '豪华配置', 414);
INSERT INTO `config` VALUES (950, '高配', 414);
INSERT INTO `config` VALUES (951, '低配', 414);
INSERT INTO `config` VALUES (952, '时尚款', 414);
INSERT INTO `config` VALUES (953, '运动款', 414);
INSERT INTO `config` VALUES (954, '裸款', 414);
INSERT INTO `config` VALUES (955, '豪华配置', 415);
INSERT INTO `config` VALUES (956, '高配', 415);
INSERT INTO `config` VALUES (957, '低配', 415);
INSERT INTO `config` VALUES (958, '时尚款', 415);
INSERT INTO `config` VALUES (959, '运动款', 415);
INSERT INTO `config` VALUES (960, '裸款', 415);
INSERT INTO `config` VALUES (961, '豪华配置', 416);
INSERT INTO `config` VALUES (962, '高配', 416);
INSERT INTO `config` VALUES (963, '低配', 416);
INSERT INTO `config` VALUES (964, '时尚款', 416);
INSERT INTO `config` VALUES (965, '运动款', 416);
INSERT INTO `config` VALUES (966, '裸款', 416);
INSERT INTO `config` VALUES (967, '豪华配置', 417);
INSERT INTO `config` VALUES (968, '高配', 417);
INSERT INTO `config` VALUES (969, '低配', 417);
INSERT INTO `config` VALUES (970, '时尚款', 417);
INSERT INTO `config` VALUES (971, '运动款', 417);
INSERT INTO `config` VALUES (972, '裸款', 417);
INSERT INTO `config` VALUES (973, '豪华配置', 418);
INSERT INTO `config` VALUES (974, '高配', 418);
INSERT INTO `config` VALUES (975, '低配', 418);
INSERT INTO `config` VALUES (976, '时尚款', 418);
INSERT INTO `config` VALUES (977, '运动款', 418);
INSERT INTO `config` VALUES (978, '裸款', 418);
INSERT INTO `config` VALUES (979, '豪华配置', 419);
INSERT INTO `config` VALUES (980, '高配', 419);
INSERT INTO `config` VALUES (981, '低配', 419);
INSERT INTO `config` VALUES (982, '时尚款', 419);
INSERT INTO `config` VALUES (983, '运动款', 419);
INSERT INTO `config` VALUES (984, '裸款', 419);
INSERT INTO `config` VALUES (985, '豪华配置', 420);
INSERT INTO `config` VALUES (986, '高配', 420);
INSERT INTO `config` VALUES (987, '低配', 420);
INSERT INTO `config` VALUES (988, '时尚款', 420);
INSERT INTO `config` VALUES (989, '运动款', 420);
INSERT INTO `config` VALUES (990, '裸款', 420);
INSERT INTO `config` VALUES (991, '豪华配置', 421);
INSERT INTO `config` VALUES (992, '高配', 421);
INSERT INTO `config` VALUES (993, '低配', 421);
INSERT INTO `config` VALUES (994, '时尚款', 421);
INSERT INTO `config` VALUES (995, '运动款', 421);
INSERT INTO `config` VALUES (996, '裸款', 421);
INSERT INTO `config` VALUES (997, '豪华配置', 422);
INSERT INTO `config` VALUES (998, '高配', 422);
INSERT INTO `config` VALUES (999, '低配', 422);
INSERT INTO `config` VALUES (1000, '时尚款', 422);
INSERT INTO `config` VALUES (1001, '运动款', 422);
INSERT INTO `config` VALUES (1002, '裸款', 422);
INSERT INTO `config` VALUES (1003, '豪华配置', 423);
INSERT INTO `config` VALUES (1004, '高配', 423);
INSERT INTO `config` VALUES (1005, '低配', 423);
INSERT INTO `config` VALUES (1006, '时尚款', 423);
INSERT INTO `config` VALUES (1007, '运动款', 423);
INSERT INTO `config` VALUES (1008, '裸款', 423);
INSERT INTO `config` VALUES (1009, '豪华配置', 424);
INSERT INTO `config` VALUES (1010, '高配', 424);
INSERT INTO `config` VALUES (1011, '低配', 424);
INSERT INTO `config` VALUES (1012, '时尚款', 424);
INSERT INTO `config` VALUES (1013, '运动款', 424);
INSERT INTO `config` VALUES (1014, '裸款', 424);
INSERT INTO `config` VALUES (1015, '豪华配置', 425);
INSERT INTO `config` VALUES (1016, '高配', 425);
INSERT INTO `config` VALUES (1017, '低配', 425);
INSERT INTO `config` VALUES (1018, '时尚款', 425);
INSERT INTO `config` VALUES (1019, '运动款', 425);
INSERT INTO `config` VALUES (1020, '裸款', 425);
INSERT INTO `config` VALUES (1021, '豪华配置', 426);
INSERT INTO `config` VALUES (1022, '高配', 426);
INSERT INTO `config` VALUES (1023, '低配', 426);
INSERT INTO `config` VALUES (1024, '时尚款', 426);
INSERT INTO `config` VALUES (1025, '运动款', 426);
INSERT INTO `config` VALUES (1026, '裸款', 426);
INSERT INTO `config` VALUES (1027, '豪华配置', 427);
INSERT INTO `config` VALUES (1028, '高配', 427);
INSERT INTO `config` VALUES (1029, '低配', 427);
INSERT INTO `config` VALUES (1030, '时尚款', 427);
INSERT INTO `config` VALUES (1031, '运动款', 427);
INSERT INTO `config` VALUES (1032, '裸款', 427);
INSERT INTO `config` VALUES (1033, '豪华配置', 428);
INSERT INTO `config` VALUES (1034, '高配', 428);
INSERT INTO `config` VALUES (1035, '低配', 428);
INSERT INTO `config` VALUES (1036, '时尚款', 428);
INSERT INTO `config` VALUES (1037, '运动款', 428);
INSERT INTO `config` VALUES (1038, '裸款', 428);
INSERT INTO `config` VALUES (1039, '豪华配置', 429);
INSERT INTO `config` VALUES (1040, '高配', 429);
INSERT INTO `config` VALUES (1041, '低配', 429);
INSERT INTO `config` VALUES (1042, '时尚款', 429);
INSERT INTO `config` VALUES (1043, '运动款', 429);
INSERT INTO `config` VALUES (1044, '裸款', 429);
INSERT INTO `config` VALUES (1045, '豪华配置', 430);
INSERT INTO `config` VALUES (1046, '高配', 430);
INSERT INTO `config` VALUES (1047, '低配', 430);
INSERT INTO `config` VALUES (1048, '时尚款', 430);
INSERT INTO `config` VALUES (1049, '运动款', 430);
INSERT INTO `config` VALUES (1050, '裸款', 430);
INSERT INTO `config` VALUES (1051, '豪华配置', 431);
INSERT INTO `config` VALUES (1052, '高配', 431);
INSERT INTO `config` VALUES (1053, '低配', 431);
INSERT INTO `config` VALUES (1054, '时尚款', 431);
INSERT INTO `config` VALUES (1055, '运动款', 431);
INSERT INTO `config` VALUES (1056, '裸款', 431);
INSERT INTO `config` VALUES (1057, '豪华配置', 432);
INSERT INTO `config` VALUES (1058, '高配', 432);
INSERT INTO `config` VALUES (1059, '低配', 432);
INSERT INTO `config` VALUES (1060, '时尚款', 432);
INSERT INTO `config` VALUES (1061, '运动款', 432);
INSERT INTO `config` VALUES (1062, '裸款', 432);
INSERT INTO `config` VALUES (1063, '豪华配置', 433);
INSERT INTO `config` VALUES (1064, '高配', 433);
INSERT INTO `config` VALUES (1065, '低配', 433);
INSERT INTO `config` VALUES (1066, '时尚款', 433);
INSERT INTO `config` VALUES (1067, '运动款', 433);
INSERT INTO `config` VALUES (1068, '裸款', 433);
INSERT INTO `config` VALUES (1069, '豪华配置', 434);
INSERT INTO `config` VALUES (1070, '高配', 434);
INSERT INTO `config` VALUES (1071, '低配', 434);
INSERT INTO `config` VALUES (1072, '时尚款', 434);
INSERT INTO `config` VALUES (1073, '运动款', 434);
INSERT INTO `config` VALUES (1074, '裸款', 434);
INSERT INTO `config` VALUES (1075, '豪华配置', 435);
INSERT INTO `config` VALUES (1076, '高配', 435);
INSERT INTO `config` VALUES (1077, '低配', 435);
INSERT INTO `config` VALUES (1078, '时尚款', 435);
INSERT INTO `config` VALUES (1079, '运动款', 435);
INSERT INTO `config` VALUES (1080, '裸款', 435);
INSERT INTO `config` VALUES (1081, '豪华配置', 436);
INSERT INTO `config` VALUES (1082, '高配', 436);
INSERT INTO `config` VALUES (1083, '低配', 436);
INSERT INTO `config` VALUES (1084, '时尚款', 436);
INSERT INTO `config` VALUES (1085, '运动款', 436);
INSERT INTO `config` VALUES (1086, '裸款', 436);
INSERT INTO `config` VALUES (1087, '豪华配置', 437);
INSERT INTO `config` VALUES (1088, '高配', 437);
INSERT INTO `config` VALUES (1089, '低配', 437);
INSERT INTO `config` VALUES (1090, '时尚款', 437);
INSERT INTO `config` VALUES (1091, '运动款', 437);
INSERT INTO `config` VALUES (1092, '裸款', 437);
INSERT INTO `config` VALUES (1093, '豪华配置', 438);
INSERT INTO `config` VALUES (1094, '高配', 438);
INSERT INTO `config` VALUES (1095, '低配', 438);
INSERT INTO `config` VALUES (1096, '时尚款', 438);
INSERT INTO `config` VALUES (1097, '运动款', 438);
INSERT INTO `config` VALUES (1098, '裸款', 438);
INSERT INTO `config` VALUES (1099, '豪华配置', 439);
INSERT INTO `config` VALUES (1100, '高配', 439);
INSERT INTO `config` VALUES (1101, '低配', 439);
INSERT INTO `config` VALUES (1102, '时尚款', 439);
INSERT INTO `config` VALUES (1103, '运动款', 439);
INSERT INTO `config` VALUES (1104, '裸款', 439);
INSERT INTO `config` VALUES (1105, '豪华配置', 440);
INSERT INTO `config` VALUES (1106, '高配', 440);
INSERT INTO `config` VALUES (1107, '低配', 440);
INSERT INTO `config` VALUES (1108, '时尚款', 440);
INSERT INTO `config` VALUES (1109, '运动款', 440);
INSERT INTO `config` VALUES (1110, '裸款', 440);
INSERT INTO `config` VALUES (1111, '豪华配置', 441);
INSERT INTO `config` VALUES (1112, '高配', 441);
INSERT INTO `config` VALUES (1113, '低配', 441);
INSERT INTO `config` VALUES (1114, '时尚款', 441);
INSERT INTO `config` VALUES (1115, '运动款', 441);
INSERT INTO `config` VALUES (1116, '裸款', 441);
INSERT INTO `config` VALUES (1117, '豪华配置', 442);
INSERT INTO `config` VALUES (1118, '高配', 442);
INSERT INTO `config` VALUES (1119, '低配', 442);
INSERT INTO `config` VALUES (1120, '时尚款', 442);
INSERT INTO `config` VALUES (1121, '运动款', 442);
INSERT INTO `config` VALUES (1122, '裸款', 442);
INSERT INTO `config` VALUES (1123, '豪华配置', 443);
INSERT INTO `config` VALUES (1124, '高配', 443);
INSERT INTO `config` VALUES (1125, '低配', 443);
INSERT INTO `config` VALUES (1126, '时尚款', 443);
INSERT INTO `config` VALUES (1127, '运动款', 443);
INSERT INTO `config` VALUES (1128, '裸款', 443);
INSERT INTO `config` VALUES (1129, '豪华配置', 444);
INSERT INTO `config` VALUES (1130, '高配', 444);
INSERT INTO `config` VALUES (1131, '低配', 444);
INSERT INTO `config` VALUES (1132, '时尚款', 444);
INSERT INTO `config` VALUES (1133, '运动款', 444);
INSERT INTO `config` VALUES (1134, '裸款', 444);
INSERT INTO `config` VALUES (1135, '豪华配置', 445);
INSERT INTO `config` VALUES (1136, '高配', 445);
INSERT INTO `config` VALUES (1137, '低配', 445);
INSERT INTO `config` VALUES (1138, '时尚款', 445);
INSERT INTO `config` VALUES (1139, '运动款', 445);
INSERT INTO `config` VALUES (1140, '裸款', 445);
INSERT INTO `config` VALUES (1141, '豪华配置', 446);
INSERT INTO `config` VALUES (1142, '高配', 446);
INSERT INTO `config` VALUES (1143, '低配', 446);
INSERT INTO `config` VALUES (1144, '时尚款', 446);
INSERT INTO `config` VALUES (1145, '运动款', 446);
INSERT INTO `config` VALUES (1146, '裸款', 446);
INSERT INTO `config` VALUES (1147, '豪华配置', 447);
INSERT INTO `config` VALUES (1148, '高配', 447);
INSERT INTO `config` VALUES (1149, '低配', 447);
INSERT INTO `config` VALUES (1150, '时尚款', 447);
INSERT INTO `config` VALUES (1151, '运动款', 447);
INSERT INTO `config` VALUES (1152, '裸款', 447);
INSERT INTO `config` VALUES (1153, '豪华配置', 448);
INSERT INTO `config` VALUES (1154, '高配', 448);
INSERT INTO `config` VALUES (1155, '低配', 448);
INSERT INTO `config` VALUES (1156, '时尚款', 448);
INSERT INTO `config` VALUES (1157, '运动款', 448);
INSERT INTO `config` VALUES (1158, '裸款', 448);
INSERT INTO `config` VALUES (1159, '豪华配置', 449);
INSERT INTO `config` VALUES (1160, '高配', 449);
INSERT INTO `config` VALUES (1161, '低配', 449);
INSERT INTO `config` VALUES (1162, '时尚款', 449);
INSERT INTO `config` VALUES (1163, '运动款', 449);
INSERT INTO `config` VALUES (1164, '裸款', 449);
INSERT INTO `config` VALUES (1165, '豪华配置', 450);
INSERT INTO `config` VALUES (1166, '高配', 450);
INSERT INTO `config` VALUES (1167, '低配', 450);
INSERT INTO `config` VALUES (1168, '时尚款', 450);
INSERT INTO `config` VALUES (1169, '运动款', 450);
INSERT INTO `config` VALUES (1170, '裸款', 450);
INSERT INTO `config` VALUES (1171, '豪华配置', 451);
INSERT INTO `config` VALUES (1172, '高配', 451);
INSERT INTO `config` VALUES (1173, '低配', 451);
INSERT INTO `config` VALUES (1174, '时尚款', 451);
INSERT INTO `config` VALUES (1175, '运动款', 451);
INSERT INTO `config` VALUES (1176, '裸款', 451);
INSERT INTO `config` VALUES (1177, '豪华配置', 452);
INSERT INTO `config` VALUES (1178, '高配', 452);
INSERT INTO `config` VALUES (1179, '低配', 452);
INSERT INTO `config` VALUES (1180, '时尚款', 452);
INSERT INTO `config` VALUES (1181, '运动款', 452);
INSERT INTO `config` VALUES (1182, '裸款', 452);
INSERT INTO `config` VALUES (1183, '豪华配置', 453);
INSERT INTO `config` VALUES (1184, '高配', 453);
INSERT INTO `config` VALUES (1185, '低配', 453);
INSERT INTO `config` VALUES (1186, '时尚款', 453);
INSERT INTO `config` VALUES (1187, '运动款', 453);
INSERT INTO `config` VALUES (1188, '裸款', 453);
INSERT INTO `config` VALUES (1189, '豪华配置', 454);
INSERT INTO `config` VALUES (1190, '高配', 454);
INSERT INTO `config` VALUES (1191, '低配', 454);
INSERT INTO `config` VALUES (1192, '时尚款', 454);
INSERT INTO `config` VALUES (1193, '运动款', 454);
INSERT INTO `config` VALUES (1194, '裸款', 454);
INSERT INTO `config` VALUES (1195, '豪华配置', 455);
INSERT INTO `config` VALUES (1196, '高配', 455);
INSERT INTO `config` VALUES (1197, '低配', 455);
INSERT INTO `config` VALUES (1198, '时尚款', 455);
INSERT INTO `config` VALUES (1199, '运动款', 455);
INSERT INTO `config` VALUES (1200, '裸款', 455);
INSERT INTO `config` VALUES (1201, '豪华配置', 456);
INSERT INTO `config` VALUES (1202, '高配', 456);
INSERT INTO `config` VALUES (1203, '低配', 456);
INSERT INTO `config` VALUES (1204, '时尚款', 456);
INSERT INTO `config` VALUES (1205, '运动款', 456);
INSERT INTO `config` VALUES (1206, '裸款', 456);
INSERT INTO `config` VALUES (1207, '豪华配置', 457);
INSERT INTO `config` VALUES (1208, '高配', 457);
INSERT INTO `config` VALUES (1209, '低配', 457);
INSERT INTO `config` VALUES (1210, '时尚款', 457);
INSERT INTO `config` VALUES (1211, '运动款', 457);
INSERT INTO `config` VALUES (1212, '裸款', 457);
INSERT INTO `config` VALUES (1213, '豪华配置', 458);
INSERT INTO `config` VALUES (1214, '高配', 458);
INSERT INTO `config` VALUES (1215, '低配', 458);
INSERT INTO `config` VALUES (1216, '时尚款', 458);
INSERT INTO `config` VALUES (1217, '运动款', 458);
INSERT INTO `config` VALUES (1218, '裸款', 458);
INSERT INTO `config` VALUES (1219, '豪华配置', 459);
INSERT INTO `config` VALUES (1220, '高配', 459);
INSERT INTO `config` VALUES (1221, '低配', 459);
INSERT INTO `config` VALUES (1222, '时尚款', 459);
INSERT INTO `config` VALUES (1223, '运动款', 459);
INSERT INTO `config` VALUES (1224, '裸款', 459);
INSERT INTO `config` VALUES (1225, '豪华配置', 460);
INSERT INTO `config` VALUES (1226, '高配', 460);
INSERT INTO `config` VALUES (1227, '低配', 460);
INSERT INTO `config` VALUES (1228, '时尚款', 460);
INSERT INTO `config` VALUES (1229, '运动款', 460);
INSERT INTO `config` VALUES (1230, '裸款', 460);
INSERT INTO `config` VALUES (1231, '豪华配置', 461);
INSERT INTO `config` VALUES (1232, '高配', 461);
INSERT INTO `config` VALUES (1233, '低配', 461);
INSERT INTO `config` VALUES (1234, '时尚款', 461);
INSERT INTO `config` VALUES (1235, '运动款', 461);
INSERT INTO `config` VALUES (1236, '裸款', 461);
INSERT INTO `config` VALUES (1237, '豪华配置', 462);
INSERT INTO `config` VALUES (1238, '高配', 462);
INSERT INTO `config` VALUES (1239, '低配', 462);
INSERT INTO `config` VALUES (1240, '时尚款', 462);
INSERT INTO `config` VALUES (1241, '运动款', 462);
INSERT INTO `config` VALUES (1242, '裸款', 462);
INSERT INTO `config` VALUES (1243, '豪华配置', 463);
INSERT INTO `config` VALUES (1244, '高配', 463);
INSERT INTO `config` VALUES (1245, '低配', 463);
INSERT INTO `config` VALUES (1246, '时尚款', 463);
INSERT INTO `config` VALUES (1247, '运动款', 463);
INSERT INTO `config` VALUES (1248, '裸款', 463);
INSERT INTO `config` VALUES (1249, '豪华配置', 464);
INSERT INTO `config` VALUES (1250, '高配', 464);
INSERT INTO `config` VALUES (1251, '低配', 464);
INSERT INTO `config` VALUES (1252, '时尚款', 464);
INSERT INTO `config` VALUES (1253, '运动款', 464);
INSERT INTO `config` VALUES (1254, '裸款', 464);
INSERT INTO `config` VALUES (1255, '豪华配置', 465);
INSERT INTO `config` VALUES (1256, '高配', 465);
INSERT INTO `config` VALUES (1257, '低配', 465);
INSERT INTO `config` VALUES (1258, '时尚款', 465);
INSERT INTO `config` VALUES (1259, '运动款', 465);
INSERT INTO `config` VALUES (1260, '裸款', 465);
INSERT INTO `config` VALUES (1261, '豪华配置', 466);
INSERT INTO `config` VALUES (1262, '高配', 466);
INSERT INTO `config` VALUES (1263, '低配', 466);
INSERT INTO `config` VALUES (1264, '时尚款', 466);
INSERT INTO `config` VALUES (1265, '运动款', 466);
INSERT INTO `config` VALUES (1266, '裸款', 466);
INSERT INTO `config` VALUES (1267, '豪华配置', 467);
INSERT INTO `config` VALUES (1268, '高配', 467);
INSERT INTO `config` VALUES (1269, '低配', 467);
INSERT INTO `config` VALUES (1270, '时尚款', 467);
INSERT INTO `config` VALUES (1271, '运动款', 467);
INSERT INTO `config` VALUES (1272, '裸款', 467);
INSERT INTO `config` VALUES (1273, '豪华配置', 468);
INSERT INTO `config` VALUES (1274, '高配', 468);
INSERT INTO `config` VALUES (1275, '低配', 468);
INSERT INTO `config` VALUES (1276, '时尚款', 468);
INSERT INTO `config` VALUES (1277, '运动款', 468);
INSERT INTO `config` VALUES (1278, '裸款', 468);
INSERT INTO `config` VALUES (1279, '豪华配置', 469);
INSERT INTO `config` VALUES (1280, '高配', 469);
INSERT INTO `config` VALUES (1281, '低配', 469);
INSERT INTO `config` VALUES (1282, '时尚款', 469);
INSERT INTO `config` VALUES (1283, '运动款', 469);
INSERT INTO `config` VALUES (1284, '裸款', 469);
INSERT INTO `config` VALUES (1285, '豪华配置', 470);
INSERT INTO `config` VALUES (1286, '高配', 470);
INSERT INTO `config` VALUES (1287, '低配', 470);
INSERT INTO `config` VALUES (1288, '时尚款', 470);
INSERT INTO `config` VALUES (1289, '运动款', 470);
INSERT INTO `config` VALUES (1290, '裸款', 470);
INSERT INTO `config` VALUES (1291, '豪华配置', 471);
INSERT INTO `config` VALUES (1292, '高配', 471);
INSERT INTO `config` VALUES (1293, '低配', 471);
INSERT INTO `config` VALUES (1294, '时尚款', 471);
INSERT INTO `config` VALUES (1295, '运动款', 471);
INSERT INTO `config` VALUES (1296, '裸款', 471);
INSERT INTO `config` VALUES (1297, '豪华配置', 472);
INSERT INTO `config` VALUES (1298, '高配', 472);
INSERT INTO `config` VALUES (1299, '低配', 472);
INSERT INTO `config` VALUES (1300, '时尚款', 472);
INSERT INTO `config` VALUES (1301, '运动款', 472);
INSERT INTO `config` VALUES (1302, '裸款', 472);
INSERT INTO `config` VALUES (1303, '豪华配置', 473);
INSERT INTO `config` VALUES (1304, '高配', 473);
INSERT INTO `config` VALUES (1305, '低配', 473);
INSERT INTO `config` VALUES (1306, '时尚款', 473);
INSERT INTO `config` VALUES (1307, '运动款', 473);
INSERT INTO `config` VALUES (1308, '裸款', 473);
INSERT INTO `config` VALUES (1309, '豪华配置', 474);
INSERT INTO `config` VALUES (1310, '高配', 474);
INSERT INTO `config` VALUES (1311, '低配', 474);
INSERT INTO `config` VALUES (1312, '时尚款', 474);
INSERT INTO `config` VALUES (1313, '运动款', 474);
INSERT INTO `config` VALUES (1314, '裸款', 474);
INSERT INTO `config` VALUES (1315, '豪华配置', 475);
INSERT INTO `config` VALUES (1316, '高配', 475);
INSERT INTO `config` VALUES (1317, '低配', 475);
INSERT INTO `config` VALUES (1318, '时尚款', 475);
INSERT INTO `config` VALUES (1319, '运动款', 475);
INSERT INTO `config` VALUES (1320, '裸款', 475);
INSERT INTO `config` VALUES (1321, '豪华配置', 476);
INSERT INTO `config` VALUES (1322, '高配', 476);
INSERT INTO `config` VALUES (1323, '低配', 476);
INSERT INTO `config` VALUES (1324, '时尚款', 476);
INSERT INTO `config` VALUES (1325, '运动款', 476);
INSERT INTO `config` VALUES (1326, '裸款', 476);
INSERT INTO `config` VALUES (1327, '豪华配置', 477);
INSERT INTO `config` VALUES (1328, '高配', 477);
INSERT INTO `config` VALUES (1329, '低配', 477);
INSERT INTO `config` VALUES (1330, '时尚款', 477);
INSERT INTO `config` VALUES (1331, '运动款', 477);
INSERT INTO `config` VALUES (1332, '裸款', 477);
INSERT INTO `config` VALUES (1333, '豪华配置', 478);
INSERT INTO `config` VALUES (1334, '高配', 478);
INSERT INTO `config` VALUES (1335, '低配', 478);
INSERT INTO `config` VALUES (1336, '时尚款', 478);
INSERT INTO `config` VALUES (1337, '运动款', 478);
INSERT INTO `config` VALUES (1338, '裸款', 478);
INSERT INTO `config` VALUES (1339, '豪华配置', 479);
INSERT INTO `config` VALUES (1340, '高配', 479);
INSERT INTO `config` VALUES (1341, '低配', 479);
INSERT INTO `config` VALUES (1342, '时尚款', 479);
INSERT INTO `config` VALUES (1343, '运动款', 479);
INSERT INTO `config` VALUES (1344, '裸款', 479);
INSERT INTO `config` VALUES (1345, '豪华配置', 480);
INSERT INTO `config` VALUES (1346, '高配', 480);
INSERT INTO `config` VALUES (1347, '低配', 480);
INSERT INTO `config` VALUES (1348, '时尚款', 480);
INSERT INTO `config` VALUES (1349, '运动款', 480);
INSERT INTO `config` VALUES (1350, '裸款', 480);
INSERT INTO `config` VALUES (1351, '豪华配置', 481);
INSERT INTO `config` VALUES (1352, '高配', 481);
INSERT INTO `config` VALUES (1353, '低配', 481);
INSERT INTO `config` VALUES (1354, '时尚款', 481);
INSERT INTO `config` VALUES (1355, '运动款', 481);
INSERT INTO `config` VALUES (1356, '裸款', 481);
INSERT INTO `config` VALUES (1357, '豪华配置', 482);
INSERT INTO `config` VALUES (1358, '高配', 482);
INSERT INTO `config` VALUES (1359, '低配', 482);
INSERT INTO `config` VALUES (1360, '时尚款', 482);
INSERT INTO `config` VALUES (1361, '运动款', 482);
INSERT INTO `config` VALUES (1362, '裸款', 482);
INSERT INTO `config` VALUES (1363, '豪华配置', 483);
INSERT INTO `config` VALUES (1364, '高配', 483);
INSERT INTO `config` VALUES (1365, '低配', 483);
INSERT INTO `config` VALUES (1366, '时尚款', 483);
INSERT INTO `config` VALUES (1367, '运动款', 483);
INSERT INTO `config` VALUES (1368, '裸款', 483);
INSERT INTO `config` VALUES (1369, '豪华配置', 484);
INSERT INTO `config` VALUES (1370, '高配', 484);
INSERT INTO `config` VALUES (1371, '低配', 484);
INSERT INTO `config` VALUES (1372, '时尚款', 484);
INSERT INTO `config` VALUES (1373, '运动款', 484);
INSERT INTO `config` VALUES (1374, '裸款', 484);
INSERT INTO `config` VALUES (1375, '豪华配置', 485);
INSERT INTO `config` VALUES (1376, '高配', 485);
INSERT INTO `config` VALUES (1377, '低配', 485);
INSERT INTO `config` VALUES (1378, '时尚款', 485);
INSERT INTO `config` VALUES (1379, '运动款', 485);
INSERT INTO `config` VALUES (1380, '裸款', 485);
INSERT INTO `config` VALUES (1381, '豪华配置', 486);
INSERT INTO `config` VALUES (1382, '高配', 486);
INSERT INTO `config` VALUES (1383, '低配', 486);
INSERT INTO `config` VALUES (1384, '时尚款', 486);
INSERT INTO `config` VALUES (1385, '运动款', 486);
INSERT INTO `config` VALUES (1386, '裸款', 486);
INSERT INTO `config` VALUES (1387, '豪华配置', 487);
INSERT INTO `config` VALUES (1388, '高配', 487);
INSERT INTO `config` VALUES (1389, '低配', 487);
INSERT INTO `config` VALUES (1390, '时尚款', 487);
INSERT INTO `config` VALUES (1391, '运动款', 487);
INSERT INTO `config` VALUES (1392, '裸款', 487);
INSERT INTO `config` VALUES (1393, '豪华配置', 488);
INSERT INTO `config` VALUES (1394, '高配', 488);
INSERT INTO `config` VALUES (1395, '低配', 488);
INSERT INTO `config` VALUES (1396, '时尚款', 488);
INSERT INTO `config` VALUES (1397, '运动款', 488);
INSERT INTO `config` VALUES (1398, '裸款', 488);
INSERT INTO `config` VALUES (1399, '豪华配置', 489);
INSERT INTO `config` VALUES (1400, '高配', 489);
INSERT INTO `config` VALUES (1401, '低配', 489);
INSERT INTO `config` VALUES (1402, '时尚款', 489);
INSERT INTO `config` VALUES (1403, '运动款', 489);
INSERT INTO `config` VALUES (1404, '裸款', 489);
INSERT INTO `config` VALUES (1405, '豪华配置', 490);
INSERT INTO `config` VALUES (1406, '高配', 490);
INSERT INTO `config` VALUES (1407, '低配', 490);
INSERT INTO `config` VALUES (1408, '时尚款', 490);
INSERT INTO `config` VALUES (1409, '运动款', 490);
INSERT INTO `config` VALUES (1410, '裸款', 490);
INSERT INTO `config` VALUES (1411, '豪华配置', 491);
INSERT INTO `config` VALUES (1412, '高配', 491);
INSERT INTO `config` VALUES (1413, '低配', 491);
INSERT INTO `config` VALUES (1414, '时尚款', 491);
INSERT INTO `config` VALUES (1415, '运动款', 491);
INSERT INTO `config` VALUES (1416, '裸款', 491);
INSERT INTO `config` VALUES (1417, '豪华配置', 492);
INSERT INTO `config` VALUES (1418, '高配', 492);
INSERT INTO `config` VALUES (1419, '低配', 492);
INSERT INTO `config` VALUES (1420, '时尚款', 492);
INSERT INTO `config` VALUES (1421, '运动款', 492);
INSERT INTO `config` VALUES (1422, '裸款', 492);
INSERT INTO `config` VALUES (1423, '豪华配置', 493);
INSERT INTO `config` VALUES (1424, '高配', 493);
INSERT INTO `config` VALUES (1425, '低配', 493);
INSERT INTO `config` VALUES (1426, '时尚款', 493);
INSERT INTO `config` VALUES (1427, '运动款', 493);
INSERT INTO `config` VALUES (1428, '裸款', 493);
INSERT INTO `config` VALUES (1429, '豪华配置', 494);
INSERT INTO `config` VALUES (1430, '高配', 494);
INSERT INTO `config` VALUES (1431, '低配', 494);
INSERT INTO `config` VALUES (1432, '时尚款', 494);
INSERT INTO `config` VALUES (1433, '运动款', 494);
INSERT INTO `config` VALUES (1434, '裸款', 494);
INSERT INTO `config` VALUES (1435, '豪华配置', 495);
INSERT INTO `config` VALUES (1436, '高配', 495);
INSERT INTO `config` VALUES (1437, '低配', 495);
INSERT INTO `config` VALUES (1438, '时尚款', 495);
INSERT INTO `config` VALUES (1439, '运动款', 495);
INSERT INTO `config` VALUES (1440, '裸款', 495);
INSERT INTO `config` VALUES (1441, '豪华配置', 496);
INSERT INTO `config` VALUES (1442, '高配', 496);
INSERT INTO `config` VALUES (1443, '低配', 496);
INSERT INTO `config` VALUES (1444, '时尚款', 496);
INSERT INTO `config` VALUES (1445, '运动款', 496);
INSERT INTO `config` VALUES (1446, '裸款', 496);
INSERT INTO `config` VALUES (1447, '豪华配置', 497);
INSERT INTO `config` VALUES (1448, '高配', 497);
INSERT INTO `config` VALUES (1449, '低配', 497);
INSERT INTO `config` VALUES (1450, '时尚款', 497);
INSERT INTO `config` VALUES (1451, '运动款', 497);
INSERT INTO `config` VALUES (1452, '裸款', 497);
INSERT INTO `config` VALUES (1453, '豪华配置', 498);
INSERT INTO `config` VALUES (1454, '高配', 498);
INSERT INTO `config` VALUES (1455, '低配', 498);
INSERT INTO `config` VALUES (1456, '时尚款', 498);
INSERT INTO `config` VALUES (1457, '运动款', 498);
INSERT INTO `config` VALUES (1458, '裸款', 498);
INSERT INTO `config` VALUES (1459, '豪华配置', 499);
INSERT INTO `config` VALUES (1460, '高配', 499);
INSERT INTO `config` VALUES (1461, '低配', 499);
INSERT INTO `config` VALUES (1462, '时尚款', 499);
INSERT INTO `config` VALUES (1463, '运动款', 499);
INSERT INTO `config` VALUES (1464, '裸款', 499);
INSERT INTO `config` VALUES (1465, '豪华配置', 500);
INSERT INTO `config` VALUES (1466, '高配', 500);
INSERT INTO `config` VALUES (1467, '低配', 500);
INSERT INTO `config` VALUES (1468, '时尚款', 500);
INSERT INTO `config` VALUES (1469, '运动款', 500);
INSERT INTO `config` VALUES (1470, '裸款', 500);
INSERT INTO `config` VALUES (1471, '豪华配置', 501);
INSERT INTO `config` VALUES (1472, '高配', 501);
INSERT INTO `config` VALUES (1473, '低配', 501);
INSERT INTO `config` VALUES (1474, '时尚款', 501);
INSERT INTO `config` VALUES (1475, '运动款', 501);
INSERT INTO `config` VALUES (1476, '裸款', 501);
INSERT INTO `config` VALUES (1477, '豪华配置', 502);
INSERT INTO `config` VALUES (1478, '高配', 502);
INSERT INTO `config` VALUES (1479, '低配', 502);
INSERT INTO `config` VALUES (1480, '时尚款', 502);
INSERT INTO `config` VALUES (1481, '运动款', 502);
INSERT INTO `config` VALUES (1482, '裸款', 502);
INSERT INTO `config` VALUES (1483, '豪华配置', 503);
INSERT INTO `config` VALUES (1484, '高配', 503);
INSERT INTO `config` VALUES (1485, '低配', 503);
INSERT INTO `config` VALUES (1486, '时尚款', 503);
INSERT INTO `config` VALUES (1487, '运动款', 503);
INSERT INTO `config` VALUES (1488, '裸款', 503);
INSERT INTO `config` VALUES (1489, '豪华配置', 504);
INSERT INTO `config` VALUES (1490, '高配', 504);
INSERT INTO `config` VALUES (1491, '低配', 504);
INSERT INTO `config` VALUES (1492, '时尚款', 504);
INSERT INTO `config` VALUES (1493, '运动款', 504);
INSERT INTO `config` VALUES (1494, '裸款', 504);
INSERT INTO `config` VALUES (1495, '豪华配置', 505);
INSERT INTO `config` VALUES (1496, '高配', 505);
INSERT INTO `config` VALUES (1497, '低配', 505);
INSERT INTO `config` VALUES (1498, '时尚款', 505);
INSERT INTO `config` VALUES (1499, '运动款', 505);
INSERT INTO `config` VALUES (1500, '裸款', 505);
INSERT INTO `config` VALUES (1501, '豪华配置', 506);
INSERT INTO `config` VALUES (1502, '高配', 506);
INSERT INTO `config` VALUES (1503, '低配', 506);
INSERT INTO `config` VALUES (1504, '时尚款', 506);
INSERT INTO `config` VALUES (1505, '运动款', 506);
INSERT INTO `config` VALUES (1506, '裸款', 506);
INSERT INTO `config` VALUES (1507, '豪华配置', 507);
INSERT INTO `config` VALUES (1508, '高配', 507);
INSERT INTO `config` VALUES (1509, '低配', 507);
INSERT INTO `config` VALUES (1510, '时尚款', 507);
INSERT INTO `config` VALUES (1511, '运动款', 507);
INSERT INTO `config` VALUES (1512, '裸款', 507);
INSERT INTO `config` VALUES (1513, '豪华配置', 508);
INSERT INTO `config` VALUES (1514, '高配', 508);
INSERT INTO `config` VALUES (1515, '低配', 508);
INSERT INTO `config` VALUES (1516, '时尚款', 508);
INSERT INTO `config` VALUES (1517, '运动款', 508);
INSERT INTO `config` VALUES (1518, '裸款', 508);
INSERT INTO `config` VALUES (1519, '豪华配置', 509);
INSERT INTO `config` VALUES (1520, '高配', 509);
INSERT INTO `config` VALUES (1521, '低配', 509);
INSERT INTO `config` VALUES (1522, '时尚款', 509);
INSERT INTO `config` VALUES (1523, '运动款', 509);
INSERT INTO `config` VALUES (1524, '裸款', 509);
INSERT INTO `config` VALUES (1525, '豪华配置', 510);
INSERT INTO `config` VALUES (1526, '高配', 510);
INSERT INTO `config` VALUES (1527, '低配', 510);
INSERT INTO `config` VALUES (1528, '时尚款', 510);
INSERT INTO `config` VALUES (1529, '运动款', 510);
INSERT INTO `config` VALUES (1530, '裸款', 510);
INSERT INTO `config` VALUES (1531, '豪华配置', 511);
INSERT INTO `config` VALUES (1532, '高配', 511);
INSERT INTO `config` VALUES (1533, '低配', 511);
INSERT INTO `config` VALUES (1534, '时尚款', 511);
INSERT INTO `config` VALUES (1535, '运动款', 511);
INSERT INTO `config` VALUES (1536, '裸款', 511);
INSERT INTO `config` VALUES (1537, '豪华配置', 512);
INSERT INTO `config` VALUES (1538, '高配', 512);
INSERT INTO `config` VALUES (1539, '低配', 512);
INSERT INTO `config` VALUES (1540, '时尚款', 512);
INSERT INTO `config` VALUES (1541, '运动款', 512);
INSERT INTO `config` VALUES (1542, '裸款', 512);
INSERT INTO `config` VALUES (1543, '豪华配置', 513);
INSERT INTO `config` VALUES (1544, '高配', 513);
INSERT INTO `config` VALUES (1545, '低配', 513);
INSERT INTO `config` VALUES (1546, '时尚款', 513);
INSERT INTO `config` VALUES (1547, '运动款', 513);
INSERT INTO `config` VALUES (1548, '裸款', 513);
INSERT INTO `config` VALUES (1549, '豪华配置', 514);
INSERT INTO `config` VALUES (1550, '高配', 514);
INSERT INTO `config` VALUES (1551, '低配', 514);
INSERT INTO `config` VALUES (1552, '时尚款', 514);
INSERT INTO `config` VALUES (1553, '运动款', 514);
INSERT INTO `config` VALUES (1554, '裸款', 514);
INSERT INTO `config` VALUES (1555, '豪华配置', 515);
INSERT INTO `config` VALUES (1556, '高配', 515);
INSERT INTO `config` VALUES (1557, '低配', 515);
INSERT INTO `config` VALUES (1558, '时尚款', 515);
INSERT INTO `config` VALUES (1559, '运动款', 515);
INSERT INTO `config` VALUES (1560, '裸款', 515);
INSERT INTO `config` VALUES (1561, '豪华配置', 516);
INSERT INTO `config` VALUES (1562, '高配', 516);
INSERT INTO `config` VALUES (1563, '低配', 516);
INSERT INTO `config` VALUES (1564, '时尚款', 516);
INSERT INTO `config` VALUES (1565, '运动款', 516);
INSERT INTO `config` VALUES (1566, '裸款', 516);
INSERT INTO `config` VALUES (1567, '豪华配置', 517);
INSERT INTO `config` VALUES (1568, '高配', 517);
INSERT INTO `config` VALUES (1569, '低配', 517);
INSERT INTO `config` VALUES (1570, '时尚款', 517);
INSERT INTO `config` VALUES (1571, '运动款', 517);
INSERT INTO `config` VALUES (1572, '裸款', 517);
INSERT INTO `config` VALUES (1573, '豪华配置', 518);
INSERT INTO `config` VALUES (1574, '高配', 518);
INSERT INTO `config` VALUES (1575, '低配', 518);
INSERT INTO `config` VALUES (1576, '时尚款', 518);
INSERT INTO `config` VALUES (1577, '运动款', 518);
INSERT INTO `config` VALUES (1578, '裸款', 518);
INSERT INTO `config` VALUES (1579, '豪华配置', 519);
INSERT INTO `config` VALUES (1580, '高配', 519);
INSERT INTO `config` VALUES (1581, '低配', 519);
INSERT INTO `config` VALUES (1582, '时尚款', 519);
INSERT INTO `config` VALUES (1583, '运动款', 519);
INSERT INTO `config` VALUES (1584, '裸款', 519);
INSERT INTO `config` VALUES (1585, '豪华配置', 520);
INSERT INTO `config` VALUES (1586, '高配', 520);
INSERT INTO `config` VALUES (1587, '低配', 520);
INSERT INTO `config` VALUES (1588, '时尚款', 520);
INSERT INTO `config` VALUES (1589, '运动款', 520);
INSERT INTO `config` VALUES (1590, '裸款', 520);
INSERT INTO `config` VALUES (1591, '豪华配置', 521);
INSERT INTO `config` VALUES (1592, '高配', 521);
INSERT INTO `config` VALUES (1593, '低配', 521);
INSERT INTO `config` VALUES (1594, '时尚款', 521);
INSERT INTO `config` VALUES (1595, '运动款', 521);
INSERT INTO `config` VALUES (1596, '裸款', 521);
INSERT INTO `config` VALUES (1597, '豪华配置', 522);
INSERT INTO `config` VALUES (1598, '高配', 522);
INSERT INTO `config` VALUES (1599, '低配', 522);
INSERT INTO `config` VALUES (1600, '时尚款', 522);
INSERT INTO `config` VALUES (1601, '运动款', 522);
INSERT INTO `config` VALUES (1602, '裸款', 522);
INSERT INTO `config` VALUES (1603, '豪华配置', 523);
INSERT INTO `config` VALUES (1604, '高配', 523);
INSERT INTO `config` VALUES (1605, '低配', 523);
INSERT INTO `config` VALUES (1606, '时尚款', 523);
INSERT INTO `config` VALUES (1607, '运动款', 523);
INSERT INTO `config` VALUES (1608, '裸款', 523);
INSERT INTO `config` VALUES (1609, '豪华配置', 524);
INSERT INTO `config` VALUES (1610, '高配', 524);
INSERT INTO `config` VALUES (1611, '低配', 524);
INSERT INTO `config` VALUES (1612, '时尚款', 524);
INSERT INTO `config` VALUES (1613, '运动款', 524);
INSERT INTO `config` VALUES (1614, '裸款', 524);
INSERT INTO `config` VALUES (1615, '豪华配置', 525);
INSERT INTO `config` VALUES (1616, '高配', 525);
INSERT INTO `config` VALUES (1617, '低配', 525);
INSERT INTO `config` VALUES (1618, '时尚款', 525);
INSERT INTO `config` VALUES (1619, '运动款', 525);
INSERT INTO `config` VALUES (1620, '裸款', 525);
INSERT INTO `config` VALUES (1621, '豪华配置', 526);
INSERT INTO `config` VALUES (1622, '高配', 526);
INSERT INTO `config` VALUES (1623, '低配', 526);
INSERT INTO `config` VALUES (1624, '时尚款', 526);
INSERT INTO `config` VALUES (1625, '运动款', 526);
INSERT INTO `config` VALUES (1626, '裸款', 526);
INSERT INTO `config` VALUES (1627, '豪华配置', 527);
INSERT INTO `config` VALUES (1628, '高配', 527);
INSERT INTO `config` VALUES (1629, '低配', 527);
INSERT INTO `config` VALUES (1630, '时尚款', 527);
INSERT INTO `config` VALUES (1631, '运动款', 527);
INSERT INTO `config` VALUES (1632, '裸款', 527);
INSERT INTO `config` VALUES (1633, '豪华配置', 528);
INSERT INTO `config` VALUES (1634, '高配', 528);
INSERT INTO `config` VALUES (1635, '低配', 528);
INSERT INTO `config` VALUES (1636, '时尚款', 528);
INSERT INTO `config` VALUES (1637, '运动款', 528);
INSERT INTO `config` VALUES (1638, '裸款', 528);
INSERT INTO `config` VALUES (1639, '豪华配置', 529);
INSERT INTO `config` VALUES (1640, '高配', 529);
INSERT INTO `config` VALUES (1641, '低配', 529);
INSERT INTO `config` VALUES (1642, '时尚款', 529);
INSERT INTO `config` VALUES (1643, '运动款', 529);
INSERT INTO `config` VALUES (1644, '裸款', 529);
INSERT INTO `config` VALUES (1645, '豪华配置', 530);
INSERT INTO `config` VALUES (1646, '高配', 530);
INSERT INTO `config` VALUES (1647, '低配', 530);
INSERT INTO `config` VALUES (1648, '时尚款', 530);
INSERT INTO `config` VALUES (1649, '运动款', 530);
INSERT INTO `config` VALUES (1650, '裸款', 530);
INSERT INTO `config` VALUES (1651, '豪华配置', 531);
INSERT INTO `config` VALUES (1652, '高配', 531);
INSERT INTO `config` VALUES (1653, '低配', 531);
INSERT INTO `config` VALUES (1654, '时尚款', 531);
INSERT INTO `config` VALUES (1655, '运动款', 531);
INSERT INTO `config` VALUES (1656, '裸款', 531);
INSERT INTO `config` VALUES (1657, '豪华配置', 532);
INSERT INTO `config` VALUES (1658, '高配', 532);
INSERT INTO `config` VALUES (1659, '低配', 532);
INSERT INTO `config` VALUES (1660, '时尚款', 532);
INSERT INTO `config` VALUES (1661, '运动款', 532);
INSERT INTO `config` VALUES (1662, '裸款', 532);
INSERT INTO `config` VALUES (1663, '豪华配置', 533);
INSERT INTO `config` VALUES (1664, '高配', 533);
INSERT INTO `config` VALUES (1665, '低配', 533);
INSERT INTO `config` VALUES (1666, '时尚款', 533);
INSERT INTO `config` VALUES (1667, '运动款', 533);
INSERT INTO `config` VALUES (1668, '裸款', 533);
INSERT INTO `config` VALUES (1669, '豪华配置', 534);
INSERT INTO `config` VALUES (1670, '高配', 534);
INSERT INTO `config` VALUES (1671, '低配', 534);
INSERT INTO `config` VALUES (1672, '时尚款', 534);
INSERT INTO `config` VALUES (1673, '运动款', 534);
INSERT INTO `config` VALUES (1674, '裸款', 534);
INSERT INTO `config` VALUES (1675, '豪华配置', 535);
INSERT INTO `config` VALUES (1676, '高配', 535);
INSERT INTO `config` VALUES (1677, '低配', 535);
INSERT INTO `config` VALUES (1678, '时尚款', 535);
INSERT INTO `config` VALUES (1679, '运动款', 535);
INSERT INTO `config` VALUES (1680, '裸款', 535);
INSERT INTO `config` VALUES (1681, '豪华配置', 536);
INSERT INTO `config` VALUES (1682, '高配', 536);
INSERT INTO `config` VALUES (1683, '低配', 536);
INSERT INTO `config` VALUES (1684, '时尚款', 536);
INSERT INTO `config` VALUES (1685, '运动款', 536);
INSERT INTO `config` VALUES (1686, '裸款', 536);
INSERT INTO `config` VALUES (1687, '豪华配置', 537);
INSERT INTO `config` VALUES (1688, '高配', 537);
INSERT INTO `config` VALUES (1689, '低配', 537);
INSERT INTO `config` VALUES (1690, '时尚款', 537);
INSERT INTO `config` VALUES (1691, '运动款', 537);
INSERT INTO `config` VALUES (1692, '裸款', 537);
INSERT INTO `config` VALUES (1693, '豪华配置', 538);
INSERT INTO `config` VALUES (1694, '高配', 538);
INSERT INTO `config` VALUES (1695, '低配', 538);
INSERT INTO `config` VALUES (1696, '时尚款', 538);
INSERT INTO `config` VALUES (1697, '运动款', 538);
INSERT INTO `config` VALUES (1698, '裸款', 538);
INSERT INTO `config` VALUES (1699, '豪华配置', 539);
INSERT INTO `config` VALUES (1700, '高配', 539);
INSERT INTO `config` VALUES (1701, '低配', 539);
INSERT INTO `config` VALUES (1702, '时尚款', 539);
INSERT INTO `config` VALUES (1703, '运动款', 539);
INSERT INTO `config` VALUES (1704, '裸款', 539);

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/api/img/default.jpg',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  INDEX `phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consumer
-- ----------------------------
INSERT INTO `consumer` VALUES (1, 'fhb', '123', '化十', '/api/upload/1566390482374pig.jpg', '1771234567', 'fhb@qq.com', 1);
INSERT INTO `consumer` VALUES (5, 'c1', '123', '1', 'upload/1558109289716公众号.jpg', '2', '3', 1);
INSERT INTO `consumer` VALUES (6, 'test1', '123456', 'zt', NULL, '98765432100', 'zt@123456', 8);
INSERT INTO `consumer` VALUES (7, '6', '123456', '用户6', NULL, '98765432100', 'test@123456', 1);
INSERT INTO `consumer` VALUES (15, NULL, 'xjj123', NULL, '/api/img/default.jpg', NULL, 'xjj@qq.com', NULL);

-- ----------------------------
-- Table structure for cs_order
-- ----------------------------
DROP TABLE IF EXISTS `cs_order`;
CREATE TABLE `cs_order`  (
  `orderId` bigint(255) NOT NULL,
  `salerId` int(255) UNSIGNED NOT NULL,
  `consumerId` int(255) NOT NULL,
  `time` datetime(0) NOT NULL,
  `productId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total` decimal(10, 2) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addressee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cs_order
-- ----------------------------
INSERT INTO `cs_order` VALUES (15616019633961, 1, 1, '2019-06-27 10:19:23', 'gas1;', '1;', 9.90, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15616019633988, 1, 1, '2019-06-27 10:19:23', 'gas1;', '1;', 9.90, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15616200550581, 1, 1, '2019-06-27 15:20:55', 'gas1;', '1;', 9.90, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15616200550681, 1, 1, '2019-06-27 15:20:55', 'gas1;', '1;', 9.90, 'xzit', '1881234567', 'Herb', 2);
INSERT INTO `cs_order` VALUES (15616201288041, 1, 1, '2019-06-27 15:22:09', 'test001;', '1;', 123.00, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15619560589111, 2, 1, '2019-07-01 12:40:59', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619560882111, 2, 1, '2019-07-01 12:41:28', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619561744631, 2, 1, '2019-07-01 12:42:54', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619562677911, 2, 1, '2019-07-01 12:44:28', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619563842751, 2, 1, '2019-07-01 12:46:24', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619565303961, 2, 1, '2019-07-01 12:48:50', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619566210661, 2, 1, '2019-07-01 12:50:21', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619569075521, 1, 1, '2019-07-01 12:55:08', 'gas1;', '1;', 9.90, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619569889561, 1, 1, '2019-07-01 12:56:29', 'gas1;', '4;', 39.60, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619570686991, 1, 1, '2019-07-01 12:57:49', 'gas1;', '4;', 39.60, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619570688261, 1, 1, '2019-07-01 12:57:49', 'gas1;', '4;', 39.60, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619571797631, 1, 1, '2019-07-01 12:59:40', 'gas1;', '4;', 39.60, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619572253411, 1, 1, '2019-07-01 13:00:25', 'gas1;', '4;', 39.60, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619572483921, 2, 1, '2019-07-01 13:00:48', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15619572726851, 2, 1, '2019-07-01 13:01:13', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15620060855541, 8, 1, '2019-07-02 02:34:46', '25;', '2;', 17.60, 'xzit', '1881234567', 'Herb', 0);
INSERT INTO `cs_order` VALUES (15620062597071, 8, 1, '2019-07-02 02:37:40', '25;', '2;', 17.60, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15620278722001, 3, 1, '2019-07-02 08:37:52', '36;', '1;', 99.00, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15620279562111, 3, 1, '2019-07-02 08:39:16', '36;', '1;', 99.00, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15620342384371, 10, 1, '2019-07-02 10:23:58', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15620367719971, 10, 1, '2019-07-02 11:06:12', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15620368445991, 1, 1, '2019-07-02 11:07:25', 'test001;', '1;', 123.00, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15620503352911, 10, 1, '2019-07-02 14:52:15', '25;', '1;', 8.80, 'xzit', '1881234567', 'Herb', 1);
INSERT INTO `cs_order` VALUES (15663803201151, 1, 1, '2019-08-21 17:38:40', 'test1;', '1;', 168.00, '', '', '', 0);
INSERT INTO `cs_order` VALUES (15663865662641, 6, 1, '2019-08-21 19:22:46', '25;', '1;', 8.80, '', '', '', 0);
INSERT INTO `cs_order` VALUES (15663990547831, 6, 1, '2019-08-21 22:50:55', '25;', '1;', 8.80, '', '', '', 0);
INSERT INTO `cs_order` VALUES (15663990806571, 1, 1, '2019-08-21 22:51:21', 'test1;', '1;', 168.00, '', '', '', 0);
INSERT INTO `cs_order` VALUES (15664021074061, 5, 1, '2019-08-21 23:41:47', '36;', '1;', 99.00, '', '', '', 0);
INSERT INTO `cs_order` VALUES (15664021750931, 3, 1, '2019-08-21 23:42:55', '36;', '1;', 99.00, '', '', '', 0);
INSERT INTO `cs_order` VALUES (15664027095231, 8, 1, '2019-08-21 23:51:50', '25;', '1;', 8.80, '', '', '', 0);
INSERT INTO `cs_order` VALUES (15711882932291, 1, 1, '2019-10-16 09:11:33', 'test001;', '1;', 123.00, '', '', '', 0);

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (1);

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status`  (
  `statusId` int(11) NOT NULL,
  `meaning` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`statusId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_status
-- ----------------------------
INSERT INTO `order_status` VALUES (0, '待付款');
INSERT INTO `order_status` VALUES (1, '待发货');
INSERT INTO `order_status` VALUES (2, '待收货');
INSERT INTO `order_status` VALUES (3, '待评价');
INSERT INTO `order_status` VALUES (4, '已完成');
INSERT INTO `order_status` VALUES (8, '售后申请中');
INSERT INTO `order_status` VALUES (9, '售后中');
INSERT INTO `order_status` VALUES (10, '售后完成');
INSERT INTO `order_status` VALUES (11, '退换');
INSERT INTO `order_status` VALUES (12, '已取消');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`productId`) USING BTREE,
  INDEX `manufacturerName`(`companyName`) USING BTREE,
  INDEX `type`(`type`) USING BTREE,
  INDEX `productName`(`productName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('25', '一汽汽配', '汽油', 'gasoline');
INSERT INTO `product` VALUES ('36', '一汽汽配', '汽油', 'gasoline');
INSERT INTO `product` VALUES ('b1', '一汽汽配', 'brake001', 'brake');
INSERT INTO `product` VALUES ('gas1', '一汽汽配', '汽油', 'gasoline');
INSERT INTO `product` VALUES ('Light', '一汽汽配', '车灯', 'carLight');
INSERT INTO `product` VALUES ('mirror01', '一汽汽配', '反光镜', 'autoMirror');
INSERT INTO `product` VALUES ('mmm', '一汽汽配', '123', 'gasoline');
INSERT INTO `product` VALUES ('test', '一汽汽配', 'test', 'gasoline');
INSERT INTO `product` VALUES ('test001', '一汽汽配', '这是一个非常炫酷的轮胎', 'gasoline');
INSERT INTO `product` VALUES ('test1', '一汽汽配', 'test1', 'gasoline');
INSERT INTO `product` VALUES ('test2', '一汽汽配', 'test2', 'gasoline');
INSERT INTO `product` VALUES ('test3', '一汽汽配', 'test3', 'cushion');
INSERT INTO `product` VALUES ('test4', '一汽汽配', 'test4', 'carLight');
INSERT INTO `product` VALUES ('text2', '一汽汽配', '汽油', 'gasoline');
INSERT INTO `product` VALUES ('tire', '一汽汽配', '一汽轮胎', 'tire');
INSERT INTO `product` VALUES ('tire2', '一汽汽配', '二汽轮胎', 'tire');
INSERT INTO `product` VALUES ('Two', '二汽', '汽配1', 'tire');
INSERT INTO `product` VALUES ('xxx', '一汽汽配', '123', 'gasoline');
INSERT INTO `product` VALUES ('xxxx1', '一汽汽配', 'xxxx', 'gasoline');
INSERT INTO `product` VALUES ('xxxxx', '一汽汽配', 'xxxx', 'windscreen');
INSERT INTO `product` VALUES ('yiqi', '一汽汽配', '一汽轮胎', 'tire');

-- ----------------------------
-- Table structure for saler
-- ----------------------------
DROP TABLE IF EXISTS `saler`;
CREATE TABLE `saler`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT NULL,
  `location` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` int(12) NULL DEFAULT NULL,
  `registrationtime` date NOT NULL,
  `welcome` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `priority` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `registertime`(`registrationtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of saler
-- ----------------------------
INSERT INTO `saler` VALUES (1, 'lyj', '123', '易配1店', '/img/saler01.jpg', '新店全场八折！', 1, '淮安', 123, '2019-03-18', '/upload/welcome.png', 5);
INSERT INTO `saler` VALUES (2, 'xxx', 'xxx', '易配2店', '/img/saler02.jpg', '全场满100-20', 1, '盐城', 124, '2019-03-19', '/upload/welcome.png', 4);
INSERT INTO `saler` VALUES (3, 'herb', '123', '易配3店', '/img/saler03.jpg', '汽配买一送一！', 1, '台州', 125, '2019-03-20', '/upload/welcome.png', 3);
INSERT INTO `saler` VALUES (4, '111', '222', '易配4店', '/upload/saler04.jpg', '让利促销', 2, '徐州', 45, '2019-04-24', '/upload/welcome.png', 2);
INSERT INTO `saler` VALUES (5, 'new', '222', '易配5店', '/upload/saler05.jpg', '新店铺', 2, '徐州', 45, '2019-04-24', '/upload/welcome.png', 2);
INSERT INTO `saler` VALUES (6, '6', '123', '易配6店', '/upload/saler06.jpg', '汽配买一送一！', 1, '台州', 125, '2019-03-20', '/upload/welcome.png', 3);
INSERT INTO `saler` VALUES (7, 'user7', '123', '易配7店', '/upload/photo.jpg', '让利促销', 1, '南京', 187, '2019-06-05', '/upload/welcome.png', 1);
INSERT INTO `saler` VALUES (8, '123', '323', '易配8店', '/upload/saler08.jpg', '买一送一', 2, '徐州', 342, '2019-06-20', '/upload/welcome.png', 2);
INSERT INTO `saler` VALUES (9, '999', '123', '易配9店', '/upload/saler09.jpg', '汽配买一送一！', 1, '台州', 125, '2019-03-20', '/upload/welcome.png', 3);
INSERT INTO `saler` VALUES (10, '10', '123', '易配10店', '/upload/saler010.jpg', '汽配买一送一！', 1, '台州', 125, '2019-03-20', '/upload/welcome.png', 3);

-- ----------------------------
-- Table structure for saler_inventory
-- ----------------------------
DROP TABLE IF EXISTS `saler_inventory`;
CREATE TABLE `saler_inventory`  (
  `salerId` int(11) NOT NULL,
  `productId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand` int(11) NULL DEFAULT NULL,
  `series` int(11) NULL DEFAULT NULL,
  `year` int(11) NULL DEFAULT NULL,
  `config` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`productId`, `salerId`) USING BTREE,
  INDEX `saler_inventory1`(`companyName`) USING BTREE,
  INDEX `saler_inventory2`(`productName`) USING BTREE,
  INDEX `saler_inventory3`(`type`) USING BTREE,
  INDEX `salerId`(`salerId`) USING BTREE,
  CONSTRAINT `saler_inventory` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `saler_inventory3` FOREIGN KEY (`type`) REFERENCES `product` (`type`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `saler_inventory_ibfk_1` FOREIGN KEY (`salerId`) REFERENCES `saler` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of saler_inventory
-- ----------------------------
INSERT INTO `saler_inventory` VALUES (2, '25', '汽油1', '一汽汽配', 'autoMirror', '36', '8.8', '/img/oil.jpg', 2, 7, 21, 125);
INSERT INTO `saler_inventory` VALUES (4, '25', '汽油1', '一汽汽配', 'autoMirror', '37', '8.8', '/img/oil.jpg', 2, 7, 21, 125);
INSERT INTO `saler_inventory` VALUES (6, '25', '汽油1', '一汽汽配', 'autoMirror', '36', '8.8', '/img/oil.jpg', 2, 7, 21, 125);
INSERT INTO `saler_inventory` VALUES (8, '25', '汽油11', '一汽汽配', 'autoMirror', '36', '8.8', '/img/oil.jpg', 2, 7, 21, 125);
INSERT INTO `saler_inventory` VALUES (9, '25', '汽油12', '一汽汽配', 'autoMirror', '36', '8.8', '/img/oil.jpg', 2, 7, 21, 125);
INSERT INTO `saler_inventory` VALUES (10, '25', '汽油123', '一汽汽配', 'autoMirror', '36', '8.8', '/img/oil.jpg', 2, 7, 21, 125);
INSERT INTO `saler_inventory` VALUES (1, '36', '车灯1', '一汽汽配', 'carLight', '22', '269.0', '/img/light.jpg', 2, 7, 21, 125);
INSERT INTO `saler_inventory` VALUES (2, '36', '车灯', '一汽汽配', 'carLight', '22', '269.0', '/img/light.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (3, '36', '车灯', '一汽汽配', 'carLight', '22', '99', '/img/light.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (5, '36', '车灯', '一汽汽配', 'carLight', '22', '99', '/img/light.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'gas1', '汽油', '一汽汽配', 'gasoline', '26', '9.9', '/img/oil.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'Light', '车灯', '一汽汽配', 'carLight', '78', '236.0', '/img/light.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'mirror01', '反光镜', '二汽', 'cushion', '96', '350.0', '/img/mirror.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'test001', '这是一个非常炫酷的轮胎', '一汽汽配', 'gasoline', '69', '123.0', '/img/tire.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'test1', '123', '一汽汽配', 'autoMirror', '33', '168.0', '/img/oil.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'test2', '一汽轮胎', '一汽汽配', 'gasoline', '36', '789.0', '/img/tire2.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'test3', '汽配1', '二汽', 'autoMirror', '63', '68.0', '/img/tire.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'text2', '一汽轮胎', '二汽', 'gasoline', '96', '456', '/img/tire2.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `saler_inventory` VALUES (1, 'Two', '一汽轮胎', '二汽', 'cushion', '4', '568.0', '/img/tire.jpg', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for series
-- ----------------------------
DROP TABLE IF EXISTS `series`;
CREATE TABLE `series`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of series
-- ----------------------------
INSERT INTO `series` VALUES (1, '1系(国产)', 2);
INSERT INTO `series` VALUES (2, '2系(国产)', 2);
INSERT INTO `series` VALUES (3, '3系(国产)', 2);
INSERT INTO `series` VALUES (4, '5系(国产)', 2);
INSERT INTO `series` VALUES (5, '1系(进口)', 2);
INSERT INTO `series` VALUES (6, '2系(进口)', 2);
INSERT INTO `series` VALUES (7, '3系(进口)*', 2);
INSERT INTO `series` VALUES (8, '5系(进口)', 2);
INSERT INTO `series` VALUES (9, 'C级', 1);
INSERT INTO `series` VALUES (10, 'E级', 1);
INSERT INTO `series` VALUES (11, 'GLA', 1);
INSERT INTO `series` VALUES (12, 'GLC', 1);
INSERT INTO `series` VALUES (13, 'GLK', 1);
INSERT INTO `series` VALUES (14, 'C级新能源', 1);
INSERT INTO `series` VALUES (15, '曼巴赫S级', 1);
INSERT INTO `series` VALUES (16, 'A3', 3);
INSERT INTO `series` VALUES (17, 'A4', 3);
INSERT INTO `series` VALUES (18, 'A6', 3);
INSERT INTO `series` VALUES (19, 'Q3', 3);
INSERT INTO `series` VALUES (20, 'Q5', 3);
INSERT INTO `series` VALUES (21, '200', 3);
INSERT INTO `series` VALUES (22, '100', 3);
INSERT INTO `series` VALUES (23, '速腾', 4);
INSERT INTO `series` VALUES (24, 'CC', 4);
INSERT INTO `series` VALUES (25, '辉腾', 4);
INSERT INTO `series` VALUES (26, '辉昂', 4);
INSERT INTO `series` VALUES (27, '朗逸', 4);
INSERT INTO `series` VALUES (28, '朗境', 4);
INSERT INTO `series` VALUES (29, '桑塔纳', 4);
INSERT INTO `series` VALUES (30, '帕萨特', 4);
INSERT INTO `series` VALUES (31, '途观', 4);
INSERT INTO `series` VALUES (32, 'H1', 5);
INSERT INTO `series` VALUES (33, 'H2', 5);
INSERT INTO `series` VALUES (34, 'H3', 5);
INSERT INTO `series` VALUES (35, 'H5', 5);
INSERT INTO `series` VALUES (36, 'H6', 5);
INSERT INTO `series` VALUES (37, 'H7', 5);
INSERT INTO `series` VALUES (38, 'H8', 5);
INSERT INTO `series` VALUES (39, '飞度', 6);
INSERT INTO `series` VALUES (40, '锋范', 6);
INSERT INTO `series` VALUES (41, '思域', 6);
INSERT INTO `series` VALUES (42, 'UR-V', 6);
INSERT INTO `series` VALUES (43, 'CR-V', 6);
INSERT INTO `series` VALUES (44, 'XR-V', 6);
INSERT INTO `series` VALUES (45, '阿特兹', 7);
INSERT INTO `series` VALUES (46, '马自达2', 7);
INSERT INTO `series` VALUES (47, '马自达323', 7);
INSERT INTO `series` VALUES (48, '昂克赛拉', 7);
INSERT INTO `series` VALUES (49, 'CX-7', 7);
INSERT INTO `series` VALUES (50, '马自达3', 7);
INSERT INTO `series` VALUES (51, '马自达7', 7);
INSERT INTO `series` VALUES (52, '马自达8', 7);
INSERT INTO `series` VALUES (53, '福克斯', 8);
INSERT INTO `series` VALUES (54, '嘉年华', 8);
INSERT INTO `series` VALUES (55, '翼博', 8);
INSERT INTO `series` VALUES (56, 'GT', 8);
INSERT INTO `series` VALUES (57, 'E350', 8);
INSERT INTO `series` VALUES (58, 'C-MAX', 8);

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `consumerId` int(11) NOT NULL,
  `salerId` int(11) NOT NULL,
  `productId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `addTime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `salerId`(`salerId`) USING BTREE,
  INDEX `productId`(`productId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES (12, 3, 1, '36', 1, '2019-06-28 11:51:50');
INSERT INTO `shoppingcart` VALUES (14, 1, 2, '36', 1, '2019-08-22 17:24:54');
INSERT INTO `shoppingcart` VALUES (15, 1, 2, 'gas1', 2, '2019-06-26 14:52:01');
INSERT INTO `shoppingcart` VALUES (25, 1, 2, '25', 1, '2019-06-21 14:52:24');
INSERT INTO `shoppingcart` VALUES (44, 8, 2, '36', 1, '2019-08-21 16:43:30');
INSERT INTO `shoppingcart` VALUES (58, 1, 1, '36', 2, '2019-10-16 09:10:56');

-- ----------------------------
-- Table structure for trade
-- ----------------------------
DROP TABLE IF EXISTS `trade`;
CREATE TABLE `trade`  (
  `out_trade_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_amount` decimal(10, 2) NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passback_params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`out_trade_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade
-- ----------------------------
INSERT INTO `trade` VALUES ('2019062700141561565687910', '15615656879101', 123.00, '易配1店', '这是一个非常炫酷的轮胎', '2019062700141561565687910', NULL);
INSERT INTO `trade` VALUES ('2019062710191561601963396', '15616019633961;', 9.90, '易配1店;', '汽油;', '2019062710191561601963396', 1);
INSERT INTO `trade` VALUES ('2019062715201561620055057', '15616200550581;', 9.90, '易配1店;', '汽油;', '2019062715201561620055057', 0);
INSERT INTO `trade` VALUES ('2019062715221561620128804', '15616201288041;', 123.00, '易配1店;', '这是一个非常炫酷的轮胎;', '2019062715221561620128804', 1);
INSERT INTO `trade` VALUES ('2019070112551561956907552', '15619569075521;', 9.90, '易配1店;', '汽油;', '2019070112551561956907552', 0);
INSERT INTO `trade` VALUES ('2019070112561561956988956', '15619569889561;', 39.60, '易配1店;', '汽油;', '2019070112561561956988956', 0);
INSERT INTO `trade` VALUES ('2019070112571561957068699', '15619570686991;', 39.60, '易配1店;', '汽油;', '2019070112571561957068699', 0);
INSERT INTO `trade` VALUES ('2019070112571561957068826', '15619570688261;', 39.60, '易配1店;', '汽油;', '2019070112571561957068826', 0);
INSERT INTO `trade` VALUES ('2019070112591561957179763', '15619571797631;', 39.60, '易配1店;', '汽油;', '2019070112591561957179763', 0);
INSERT INTO `trade` VALUES ('2019070113001561957225341', '15619572253411;', 39.60, '易配1店;', '汽油;', '2019070113001561957225341', 0);
INSERT INTO `trade` VALUES ('2019070113001561957248392', '15619572483921;', 8.80, '易配2店;', '汽油;', '2019070113001561957248392', 0);
INSERT INTO `trade` VALUES ('2019070113011561957272685', '15619572726851;', 8.80, '易配2店;', '汽油;', '2019070113011561957272685', 1);
INSERT INTO `trade` VALUES ('2019070202341562006085553', '15620060855541;', 17.60, '易配8店;', '汽油11;', '2019070202341562006085553', 0);
INSERT INTO `trade` VALUES ('2019070202371562006259707', '15620062597071;', 17.60, '易配8店;', '汽油11;', '2019070202371562006259707', 1);
INSERT INTO `trade` VALUES ('2019070208371562027872200', '15620278722001;', 99.00, '易配3店;', '车灯;', '2019070208371562027872200', 1);
INSERT INTO `trade` VALUES ('2019070208391562027956211', '15620279562111;', 99.00, '易配3店;', '车灯;', '2019070208391562027956211', 1);
INSERT INTO `trade` VALUES ('2019070210231562034238437', '15620342384371;', 8.80, '易配10店;', '汽油123;', '2019070210231562034238437', 1);
INSERT INTO `trade` VALUES ('2019070211061562036771997', '15620367719971;', 8.80, '易配10店;', '汽油123;', '2019070211061562036771997', 1);
INSERT INTO `trade` VALUES ('2019070211071562036844598', '15620368445991;', 123.00, '易配1店;', '这是一个非常炫酷的轮胎;', '2019070211071562036844598', 1);
INSERT INTO `trade` VALUES ('2019070214521562050335291', '15620503352911;', 8.80, '易配10店;', '汽油123;', '2019070214521562050335291', 1);
INSERT INTO `trade` VALUES ('2019082117381566380320115', '15663803201151;', 168.00, '易配1店;', '123;', '2019082117381566380320115', 0);
INSERT INTO `trade` VALUES ('2019082119221566386566264', '15663865662641;', 8.80, '易配6店;', '汽油1;', '2019082119221566386566264', 0);
INSERT INTO `trade` VALUES ('2019082119231566386608973', '15663866089731;', 8.80, '易配6店;', '汽油1;', '2019082119231566386608973', 0);
INSERT INTO `trade` VALUES ('2019082119241566386659242', '15663866592421;', 168.00, '易配1店;', '123;', '2019082119241566386659242', 0);
INSERT INTO `trade` VALUES ('2019082119391566387560125', '15663875601251;', 8.80, '易配6店;', '汽油1;', '2019082119391566387560125', 0);
INSERT INTO `trade` VALUES ('2019082119421566387732883', '15663877328831;', 8.80, '易配6店;', '汽油1;', '2019082119421566387732883', 0);
INSERT INTO `trade` VALUES ('2019082119421566387769013', '15663877690131;15663877690351;', 17.60, '易配10店;易配8店;', '汽油123;汽油11;', '2019082119421566387769013', 0);
INSERT INTO `trade` VALUES ('2019082119481566388087735', '15663880877351;', 8.80, '易配6店;', '汽油1;', '2019082119481566388087735', 0);
INSERT INTO `trade` VALUES ('2019082119521566388369130', '15663883691301;15663883691531;', 17.60, '易配10店;易配9店;', '汽油123;汽油12;', '2019082119521566388369130', 0);
INSERT INTO `trade` VALUES ('2019082119541566388461633', '15663884616331;15663884616871;', 17.60, '易配10店;易配8店;', '汽油123;汽油11;', '2019082119541566388461633', 0);
INSERT INTO `trade` VALUES ('2019082122501566399054783', '15663990547831;', 8.80, '易配6店;', '汽油1;', '2019082122501566399054783', 0);
INSERT INTO `trade` VALUES ('2019082122511566399080657', '15663990806571;', 168.00, '易配1店;', '123;', '2019082122511566399080657', 0);
INSERT INTO `trade` VALUES ('2019082123411566402107405', '15664021074061;', 99.00, '易配5店;', '车灯;', '2019082123411566402107405', 0);
INSERT INTO `trade` VALUES ('2019082123421566402175093', '15664021750931;', 99.00, '易配3店;', '车灯;', '2019082123421566402175093', 0);
INSERT INTO `trade` VALUES ('2019082123511566402709523', '15664027095231;', 8.80, '易配8店;', '汽油11;', '2019082123511566402709523', 0);
INSERT INTO `trade` VALUES ('2019101609111571188293229', '15711882932291;', 123.00, '易配1店;', '这是一个非常炫酷的轮胎;', '2019101609111571188293229', 0);

-- ----------------------------
-- Table structure for year
-- ----------------------------
DROP TABLE IF EXISTS `year`;
CREATE TABLE `year`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 540 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of year
-- ----------------------------
INSERT INTO `year` VALUES (1, '2012', 1);
INSERT INTO `year` VALUES (2, '2013', 1);
INSERT INTO `year` VALUES (3, '2014', 1);
INSERT INTO `year` VALUES (4, '2015', 1);
INSERT INTO `year` VALUES (5, '2016', 1);
INSERT INTO `year` VALUES (6, '2017', 1);
INSERT INTO `year` VALUES (7, '2018', 1);
INSERT INTO `year` VALUES (8, '2019', 1);
INSERT INTO `year` VALUES (9, '2019', 2);
INSERT INTO `year` VALUES (10, '2018', 2);
INSERT INTO `year` VALUES (11, '2017', 2);
INSERT INTO `year` VALUES (12, '2017', 3);
INSERT INTO `year` VALUES (13, '2018', 3);
INSERT INTO `year` VALUES (14, '2019', 3);
INSERT INTO `year` VALUES (15, '2019', 4);
INSERT INTO `year` VALUES (16, '2019', 5);
INSERT INTO `year` VALUES (17, '2019', 6);
INSERT INTO `year` VALUES (18, '2019', 7);
INSERT INTO `year` VALUES (19, '2019', 8);
INSERT INTO `year` VALUES (20, '2018', 8);
INSERT INTO `year` VALUES (21, '2018*', 7);
INSERT INTO `year` VALUES (22, '2018', 6);
INSERT INTO `year` VALUES (23, '2018', 5);
INSERT INTO `year` VALUES (24, '2018', 4);
INSERT INTO `year` VALUES (25, '2017', 4);
INSERT INTO `year` VALUES (26, '2017', 5);
INSERT INTO `year` VALUES (27, '2017', 6);
INSERT INTO `year` VALUES (28, '2017', 7);
INSERT INTO `year` VALUES (29, '2017', 8);
INSERT INTO `year` VALUES (285, '2015', 8);
INSERT INTO `year` VALUES (286, '2016', 8);
INSERT INTO `year` VALUES (287, '2017', 8);
INSERT INTO `year` VALUES (288, '2018', 8);
INSERT INTO `year` VALUES (289, '2019', 8);
INSERT INTO `year` VALUES (290, '2015', 9);
INSERT INTO `year` VALUES (291, '2016', 9);
INSERT INTO `year` VALUES (292, '2017', 9);
INSERT INTO `year` VALUES (293, '2018', 9);
INSERT INTO `year` VALUES (294, '2019', 9);
INSERT INTO `year` VALUES (295, '2015', 10);
INSERT INTO `year` VALUES (296, '2016', 10);
INSERT INTO `year` VALUES (297, '2017', 10);
INSERT INTO `year` VALUES (298, '2018', 10);
INSERT INTO `year` VALUES (299, '2019', 10);
INSERT INTO `year` VALUES (300, '2015', 11);
INSERT INTO `year` VALUES (301, '2016', 11);
INSERT INTO `year` VALUES (302, '2017', 11);
INSERT INTO `year` VALUES (303, '2018', 11);
INSERT INTO `year` VALUES (304, '2019', 11);
INSERT INTO `year` VALUES (305, '2015', 12);
INSERT INTO `year` VALUES (306, '2016', 12);
INSERT INTO `year` VALUES (307, '2017', 12);
INSERT INTO `year` VALUES (308, '2018', 12);
INSERT INTO `year` VALUES (309, '2019', 12);
INSERT INTO `year` VALUES (310, '2015', 13);
INSERT INTO `year` VALUES (311, '2016', 13);
INSERT INTO `year` VALUES (312, '2017', 13);
INSERT INTO `year` VALUES (313, '2018', 13);
INSERT INTO `year` VALUES (314, '2019', 13);
INSERT INTO `year` VALUES (315, '2015', 14);
INSERT INTO `year` VALUES (316, '2016', 14);
INSERT INTO `year` VALUES (317, '2017', 14);
INSERT INTO `year` VALUES (318, '2018', 14);
INSERT INTO `year` VALUES (319, '2019', 14);
INSERT INTO `year` VALUES (320, '2015', 15);
INSERT INTO `year` VALUES (321, '2016', 15);
INSERT INTO `year` VALUES (322, '2017', 15);
INSERT INTO `year` VALUES (323, '2018', 15);
INSERT INTO `year` VALUES (324, '2019', 15);
INSERT INTO `year` VALUES (325, '2015', 16);
INSERT INTO `year` VALUES (326, '2016', 16);
INSERT INTO `year` VALUES (327, '2017', 16);
INSERT INTO `year` VALUES (328, '2018', 16);
INSERT INTO `year` VALUES (329, '2019', 16);
INSERT INTO `year` VALUES (330, '2015', 17);
INSERT INTO `year` VALUES (331, '2016', 17);
INSERT INTO `year` VALUES (332, '2017', 17);
INSERT INTO `year` VALUES (333, '2018', 17);
INSERT INTO `year` VALUES (334, '2019', 17);
INSERT INTO `year` VALUES (335, '2015', 18);
INSERT INTO `year` VALUES (336, '2016', 18);
INSERT INTO `year` VALUES (337, '2017', 18);
INSERT INTO `year` VALUES (338, '2018', 18);
INSERT INTO `year` VALUES (339, '2019', 18);
INSERT INTO `year` VALUES (340, '2015', 19);
INSERT INTO `year` VALUES (341, '2016', 19);
INSERT INTO `year` VALUES (342, '2017', 19);
INSERT INTO `year` VALUES (343, '2018', 19);
INSERT INTO `year` VALUES (344, '2019', 19);
INSERT INTO `year` VALUES (345, '2015', 20);
INSERT INTO `year` VALUES (346, '2016', 20);
INSERT INTO `year` VALUES (347, '2017', 20);
INSERT INTO `year` VALUES (348, '2018', 20);
INSERT INTO `year` VALUES (349, '2019', 20);
INSERT INTO `year` VALUES (350, '2015', 21);
INSERT INTO `year` VALUES (351, '2016', 21);
INSERT INTO `year` VALUES (352, '2017', 21);
INSERT INTO `year` VALUES (353, '2018', 21);
INSERT INTO `year` VALUES (354, '2019', 21);
INSERT INTO `year` VALUES (355, '2015', 22);
INSERT INTO `year` VALUES (356, '2016', 22);
INSERT INTO `year` VALUES (357, '2017', 22);
INSERT INTO `year` VALUES (358, '2018', 22);
INSERT INTO `year` VALUES (359, '2019', 22);
INSERT INTO `year` VALUES (360, '2015', 23);
INSERT INTO `year` VALUES (361, '2016', 23);
INSERT INTO `year` VALUES (362, '2017', 23);
INSERT INTO `year` VALUES (363, '2018', 23);
INSERT INTO `year` VALUES (364, '2019', 23);
INSERT INTO `year` VALUES (365, '2015', 24);
INSERT INTO `year` VALUES (366, '2016', 24);
INSERT INTO `year` VALUES (367, '2017', 24);
INSERT INTO `year` VALUES (368, '2018', 24);
INSERT INTO `year` VALUES (369, '2019', 24);
INSERT INTO `year` VALUES (370, '2015', 25);
INSERT INTO `year` VALUES (371, '2016', 25);
INSERT INTO `year` VALUES (372, '2017', 25);
INSERT INTO `year` VALUES (373, '2018', 25);
INSERT INTO `year` VALUES (374, '2019', 25);
INSERT INTO `year` VALUES (375, '2015', 26);
INSERT INTO `year` VALUES (376, '2016', 26);
INSERT INTO `year` VALUES (377, '2017', 26);
INSERT INTO `year` VALUES (378, '2018', 26);
INSERT INTO `year` VALUES (379, '2019', 26);
INSERT INTO `year` VALUES (380, '2015', 27);
INSERT INTO `year` VALUES (381, '2016', 27);
INSERT INTO `year` VALUES (382, '2017', 27);
INSERT INTO `year` VALUES (383, '2018', 27);
INSERT INTO `year` VALUES (384, '2019', 27);
INSERT INTO `year` VALUES (385, '2015', 28);
INSERT INTO `year` VALUES (386, '2016', 28);
INSERT INTO `year` VALUES (387, '2017', 28);
INSERT INTO `year` VALUES (388, '2018', 28);
INSERT INTO `year` VALUES (389, '2019', 28);
INSERT INTO `year` VALUES (390, '2015', 29);
INSERT INTO `year` VALUES (391, '2016', 29);
INSERT INTO `year` VALUES (392, '2017', 29);
INSERT INTO `year` VALUES (393, '2018', 29);
INSERT INTO `year` VALUES (394, '2019', 29);
INSERT INTO `year` VALUES (395, '2015', 30);
INSERT INTO `year` VALUES (396, '2016', 30);
INSERT INTO `year` VALUES (397, '2017', 30);
INSERT INTO `year` VALUES (398, '2018', 30);
INSERT INTO `year` VALUES (399, '2019', 30);
INSERT INTO `year` VALUES (400, '2015', 31);
INSERT INTO `year` VALUES (401, '2016', 31);
INSERT INTO `year` VALUES (402, '2017', 31);
INSERT INTO `year` VALUES (403, '2018', 31);
INSERT INTO `year` VALUES (404, '2019', 31);
INSERT INTO `year` VALUES (405, '2015', 32);
INSERT INTO `year` VALUES (406, '2016', 32);
INSERT INTO `year` VALUES (407, '2017', 32);
INSERT INTO `year` VALUES (408, '2018', 32);
INSERT INTO `year` VALUES (409, '2019', 32);
INSERT INTO `year` VALUES (410, '2015', 33);
INSERT INTO `year` VALUES (411, '2016', 33);
INSERT INTO `year` VALUES (412, '2017', 33);
INSERT INTO `year` VALUES (413, '2018', 33);
INSERT INTO `year` VALUES (414, '2019', 33);
INSERT INTO `year` VALUES (415, '2015', 34);
INSERT INTO `year` VALUES (416, '2016', 34);
INSERT INTO `year` VALUES (417, '2017', 34);
INSERT INTO `year` VALUES (418, '2018', 34);
INSERT INTO `year` VALUES (419, '2019', 34);
INSERT INTO `year` VALUES (420, '2015', 35);
INSERT INTO `year` VALUES (421, '2016', 35);
INSERT INTO `year` VALUES (422, '2017', 35);
INSERT INTO `year` VALUES (423, '2018', 35);
INSERT INTO `year` VALUES (424, '2019', 35);
INSERT INTO `year` VALUES (425, '2015', 36);
INSERT INTO `year` VALUES (426, '2016', 36);
INSERT INTO `year` VALUES (427, '2017', 36);
INSERT INTO `year` VALUES (428, '2018', 36);
INSERT INTO `year` VALUES (429, '2019', 36);
INSERT INTO `year` VALUES (430, '2015', 37);
INSERT INTO `year` VALUES (431, '2016', 37);
INSERT INTO `year` VALUES (432, '2017', 37);
INSERT INTO `year` VALUES (433, '2018', 37);
INSERT INTO `year` VALUES (434, '2019', 37);
INSERT INTO `year` VALUES (435, '2015', 38);
INSERT INTO `year` VALUES (436, '2016', 38);
INSERT INTO `year` VALUES (437, '2017', 38);
INSERT INTO `year` VALUES (438, '2018', 38);
INSERT INTO `year` VALUES (439, '2019', 38);
INSERT INTO `year` VALUES (440, '2015', 39);
INSERT INTO `year` VALUES (441, '2016', 39);
INSERT INTO `year` VALUES (442, '2017', 39);
INSERT INTO `year` VALUES (443, '2018', 39);
INSERT INTO `year` VALUES (444, '2019', 39);
INSERT INTO `year` VALUES (445, '2015', 40);
INSERT INTO `year` VALUES (446, '2016', 40);
INSERT INTO `year` VALUES (447, '2017', 40);
INSERT INTO `year` VALUES (448, '2018', 40);
INSERT INTO `year` VALUES (449, '2019', 40);
INSERT INTO `year` VALUES (450, '2015', 41);
INSERT INTO `year` VALUES (451, '2016', 41);
INSERT INTO `year` VALUES (452, '2017', 41);
INSERT INTO `year` VALUES (453, '2018', 41);
INSERT INTO `year` VALUES (454, '2019', 41);
INSERT INTO `year` VALUES (455, '2015', 42);
INSERT INTO `year` VALUES (456, '2016', 42);
INSERT INTO `year` VALUES (457, '2017', 42);
INSERT INTO `year` VALUES (458, '2018', 42);
INSERT INTO `year` VALUES (459, '2019', 42);
INSERT INTO `year` VALUES (460, '2015', 43);
INSERT INTO `year` VALUES (461, '2016', 43);
INSERT INTO `year` VALUES (462, '2017', 43);
INSERT INTO `year` VALUES (463, '2018', 43);
INSERT INTO `year` VALUES (464, '2019', 43);
INSERT INTO `year` VALUES (465, '2015', 44);
INSERT INTO `year` VALUES (466, '2016', 44);
INSERT INTO `year` VALUES (467, '2017', 44);
INSERT INTO `year` VALUES (468, '2018', 44);
INSERT INTO `year` VALUES (469, '2019', 44);
INSERT INTO `year` VALUES (470, '2015', 45);
INSERT INTO `year` VALUES (471, '2016', 45);
INSERT INTO `year` VALUES (472, '2017', 45);
INSERT INTO `year` VALUES (473, '2018', 45);
INSERT INTO `year` VALUES (474, '2019', 45);
INSERT INTO `year` VALUES (475, '2015', 46);
INSERT INTO `year` VALUES (476, '2016', 46);
INSERT INTO `year` VALUES (477, '2017', 46);
INSERT INTO `year` VALUES (478, '2018', 46);
INSERT INTO `year` VALUES (479, '2019', 46);
INSERT INTO `year` VALUES (480, '2015', 47);
INSERT INTO `year` VALUES (481, '2016', 47);
INSERT INTO `year` VALUES (482, '2017', 47);
INSERT INTO `year` VALUES (483, '2018', 47);
INSERT INTO `year` VALUES (484, '2019', 47);
INSERT INTO `year` VALUES (485, '2015', 48);
INSERT INTO `year` VALUES (486, '2016', 48);
INSERT INTO `year` VALUES (487, '2017', 48);
INSERT INTO `year` VALUES (488, '2018', 48);
INSERT INTO `year` VALUES (489, '2019', 48);
INSERT INTO `year` VALUES (490, '2015', 49);
INSERT INTO `year` VALUES (491, '2016', 49);
INSERT INTO `year` VALUES (492, '2017', 49);
INSERT INTO `year` VALUES (493, '2018', 49);
INSERT INTO `year` VALUES (494, '2019', 49);
INSERT INTO `year` VALUES (495, '2015', 50);
INSERT INTO `year` VALUES (496, '2016', 50);
INSERT INTO `year` VALUES (497, '2017', 50);
INSERT INTO `year` VALUES (498, '2018', 50);
INSERT INTO `year` VALUES (499, '2019', 50);
INSERT INTO `year` VALUES (500, '2015', 51);
INSERT INTO `year` VALUES (501, '2016', 51);
INSERT INTO `year` VALUES (502, '2017', 51);
INSERT INTO `year` VALUES (503, '2018', 51);
INSERT INTO `year` VALUES (504, '2019', 51);
INSERT INTO `year` VALUES (505, '2015', 52);
INSERT INTO `year` VALUES (506, '2016', 52);
INSERT INTO `year` VALUES (507, '2017', 52);
INSERT INTO `year` VALUES (508, '2018', 52);
INSERT INTO `year` VALUES (509, '2019', 52);
INSERT INTO `year` VALUES (510, '2015', 53);
INSERT INTO `year` VALUES (511, '2016', 53);
INSERT INTO `year` VALUES (512, '2017', 53);
INSERT INTO `year` VALUES (513, '2018', 53);
INSERT INTO `year` VALUES (514, '2019', 53);
INSERT INTO `year` VALUES (515, '2015', 54);
INSERT INTO `year` VALUES (516, '2016', 54);
INSERT INTO `year` VALUES (517, '2017', 54);
INSERT INTO `year` VALUES (518, '2018', 54);
INSERT INTO `year` VALUES (519, '2019', 54);
INSERT INTO `year` VALUES (520, '2015', 55);
INSERT INTO `year` VALUES (521, '2016', 55);
INSERT INTO `year` VALUES (522, '2017', 55);
INSERT INTO `year` VALUES (523, '2018', 55);
INSERT INTO `year` VALUES (524, '2019', 55);
INSERT INTO `year` VALUES (525, '2015', 56);
INSERT INTO `year` VALUES (526, '2016', 56);
INSERT INTO `year` VALUES (527, '2017', 56);
INSERT INTO `year` VALUES (528, '2018', 56);
INSERT INTO `year` VALUES (529, '2019', 56);
INSERT INTO `year` VALUES (530, '2015', 57);
INSERT INTO `year` VALUES (531, '2016', 57);
INSERT INTO `year` VALUES (532, '2017', 57);
INSERT INTO `year` VALUES (533, '2018', 57);
INSERT INTO `year` VALUES (534, '2019', 57);
INSERT INTO `year` VALUES (535, '2015', 58);
INSERT INTO `year` VALUES (536, '2016', 58);
INSERT INTO `year` VALUES (537, '2017', 58);
INSERT INTO `year` VALUES (538, '2018', 58);
INSERT INTO `year` VALUES (539, '2019', 58);

SET FOREIGN_KEY_CHECKS = 1;
