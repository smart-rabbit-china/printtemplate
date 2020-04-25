/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : print_template

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 25/04/2020 14:38:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for printer_custom_component
-- ----------------------------
DROP TABLE IF EXISTS `printer_custom_component`;
CREATE TABLE `printer_custom_component` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `document_template_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板id',
  `system_component_id` int(11) DEFAULT '0' COMMENT '系统组件id',
  `value_style` varchar(150) NOT NULL DEFAULT '' COMMENT '自定义组件属性',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除：0-未删除 1-删除',
  PRIMARY KEY (`id`),
  KEY `idx_systemComponentId` (`system_component_id`)
) ENGINE=InnoDB AUTO_INCREMENT=827 DEFAULT CHARSET=utf8mb4 COMMENT='自定义组件表';

-- ----------------------------
-- Records of printer_custom_component
-- ----------------------------
BEGIN;
INSERT INTO `printer_custom_component` VALUES (1, 1, 101001, '{\"fontSize\": 4,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (2, 1, 101002, '{\"fontSize\": 4,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (3, 1, 101003, '{\"fontSize\": 4,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (4, 1, 101004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (5, 1, 102001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (6, 1, 102002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (7, 1, 102003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (8, 1, 102004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (9, 1, 102005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (10, 1, 102006, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (11, 1, 102007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (12, 1, 102008, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (13, 1, 103001, '', 0);
INSERT INTO `printer_custom_component` VALUES (14, 1, 103002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (15, 1, 103003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (16, 1, 103004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (17, 1, 103005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (18, 1, 103006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (19, 1, 103007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (20, 1, 103008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (21, 1, 103009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (22, 1, 103010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (23, 1, 103011, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (24, 1, 103012, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (25, 1, 103013, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (26, 1, 103014, '', 0);
INSERT INTO `printer_custom_component` VALUES (27, 1, 103015, '', 0);
INSERT INTO `printer_custom_component` VALUES (28, 1, 103016, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (29, 1, 103017, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (30, 1, 103018, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (31, 1, 103019, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (32, 1, 103020, '', 0);
INSERT INTO `printer_custom_component` VALUES (33, 1, 103021, '{\"fontSize\": 2,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (34, 1, 103022, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (35, 1, 103023, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (36, 1, 103024, '{\"fontSize\": 2,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (37, 1, 103025, '', 0);
INSERT INTO `printer_custom_component` VALUES (38, 1, 103026, '{\"fontSize\": 2,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (39, 1, 103027, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (40, 1, 103028, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (41, 1, 103029, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (42, 1, 103030, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (43, 1, 103031, '', 0);
INSERT INTO `printer_custom_component` VALUES (44, 1, 103032, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (45, 1, 103033, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (46, 1, 103034, '', 0);
INSERT INTO `printer_custom_component` VALUES (47, 1, 103035, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (48, 1, 103036, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (49, 1, 104001, '', 0);
INSERT INTO `printer_custom_component` VALUES (50, 1, 104002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (51, 1, 104003, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (52, 1, 104004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (53, 1, 104005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (54, 1, 104006, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (55, 1, 104007, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (56, 1, 104008, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (57, 1, 104009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (58, 1, 104010, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (59, 1, 104011, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (60, 1, 104012, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (61, 1, 104013, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (62, 1, 104014, '', 0);
INSERT INTO `printer_custom_component` VALUES (63, 1, 104015, '{\"fontSize\": 4,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (64, 1, 104016, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (65, 1, 104017, '', 0);
INSERT INTO `printer_custom_component` VALUES (66, 1, 104018, '{\"fontSize\": 4,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (67, 1, 104019, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (68, 1, 105001, '', 0);
INSERT INTO `printer_custom_component` VALUES (69, 1, 105002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (70, 1, 105003, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (71, 1, 105004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (72, 1, 105005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (73, 1, 105006, '', 0);
INSERT INTO `printer_custom_component` VALUES (74, 1, 105007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (75, 1, 105008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (76, 1, 105009, '', 0);
INSERT INTO `printer_custom_component` VALUES (77, 1, 105010, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (78, 1, 105011, '{\"fontSize\": 4,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (79, 1, 105012, '', 0);
INSERT INTO `printer_custom_component` VALUES (80, 1, 105013, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (81, 1, 105014, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (82, 1, 105015, '', 0);
INSERT INTO `printer_custom_component` VALUES (83, 1, 105016, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (84, 1, 105017, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (85, 1, 105018, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (86, 1, 105019, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (87, 1, 105020, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (88, 1, 105021, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (89, 1, 105022, '', 0);
INSERT INTO `printer_custom_component` VALUES (90, 1, 105023, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (91, 1, 105024, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (92, 1, 105025, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (93, 1, 105026, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (94, 1, 105027, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (95, 1, 105028, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (96, 1, 105029, '', 0);
INSERT INTO `printer_custom_component` VALUES (97, 1, 105030, '{\"fontSize\": 2,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (98, 1, 105031, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (99, 1, 105032, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (100, 1, 105033, '{\"fontSize\": 2,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (101, 1, 106001, '', 0);
INSERT INTO `printer_custom_component` VALUES (102, 1, 106002, '{\"fontSize\": 2,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (103, 1, 106003, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (104, 1, 106004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (105, 1, 106005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (106, 1, 106006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (107, 1, 106007, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (108, 1, 106008, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (109, 1, 106009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (110, 1, 106010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (111, 1, 106011, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (112, 1, 106012, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (113, 1, 106013, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (114, 1, 106014, '', 0);
INSERT INTO `printer_custom_component` VALUES (115, 1, 106015, '{\"fontSize\": 2,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (116, 1, 106016, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (117, 1, 106017, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (118, 1, 106018, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (119, 1, 106019, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (120, 1, 106020, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (121, 1, 106021, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (122, 1, 106022, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (123, 1, 106023, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (124, 1, 106024, '{\"fontSize\": 4,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (125, 1, 106025, '{\"fontSize\": 4,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (126, 1, 106026, '', 0);
INSERT INTO `printer_custom_component` VALUES (127, 1, 106027, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (128, 1, 106028, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (129, 1, 106029, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (130, 1, 106030, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (131, 1, 106031, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (132, 1, 106032, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (133, 1, 106033, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (134, 1, 106034, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (135, 1, 106035, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (136, 1, 106036, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (137, 1, 106037, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (138, 1, 106038, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (139, 1, 106039, '', 0);
INSERT INTO `printer_custom_component` VALUES (140, 1, 106040, '{\"fontSize\": 2,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (141, 1, 106041, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (142, 1, 107001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (143, 1, 108001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (144, 1, 108002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (145, 1, 108003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (146, 1, 108004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (147, 1, 108005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (148, 1, 108006, '', 0);
INSERT INTO `printer_custom_component` VALUES (149, 1, 108007, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (150, 1, 108008, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (151, 1, 108009, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (256, 2, 209001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (257, 2, 209002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (258, 2, 209003, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (259, 2, 210001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (260, 2, 210002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (261, 2, 210003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (262, 2, 210004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (263, 2, 210005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (264, 2, 210006, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (265, 2, 211001, '', 0);
INSERT INTO `printer_custom_component` VALUES (266, 2, 211002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (267, 2, 211003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (268, 2, 211004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (269, 2, 211005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (270, 2, 211006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (271, 2, 211007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (272, 2, 211008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (273, 2, 211009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (274, 2, 211010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (275, 2, 211011, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (276, 2, 211012, '', 0);
INSERT INTO `printer_custom_component` VALUES (277, 2, 211013, '', 0);
INSERT INTO `printer_custom_component` VALUES (278, 2, 211014, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (279, 2, 211015, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (280, 2, 211016, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (281, 2, 211017, '', 0);
INSERT INTO `printer_custom_component` VALUES (282, 2, 211018, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (283, 2, 211019, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (284, 2, 211020, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (285, 2, 211021, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (286, 2, 211022, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (287, 2, 211023, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (288, 2, 211024, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (289, 2, 211025, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (290, 2, 211026, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (291, 2, 211027, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (292, 2, 211028, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (293, 2, 211029, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (294, 2, 212001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (295, 2, 213001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (296, 2, 213002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (297, 2, 213003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (298, 2, 213004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (299, 2, 213005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (300, 2, 213006, '', 0);
INSERT INTO `printer_custom_component` VALUES (301, 2, 213007, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (302, 2, 213008, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (303, 2, 213009, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (319, 3, 314001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (320, 3, 314002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (321, 3, 314003, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (322, 3, 315001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (323, 3, 315002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (324, 3, 315003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (325, 3, 315004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (326, 3, 315005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (327, 3, 315006, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (328, 3, 315007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (329, 3, 316001, '', 0);
INSERT INTO `printer_custom_component` VALUES (330, 3, 316002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (331, 3, 316003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (332, 3, 316004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (333, 3, 316005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (334, 3, 316006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (335, 3, 316007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (336, 3, 316008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (337, 3, 316009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (338, 3, 316010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (339, 3, 316011, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (340, 3, 316012, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (341, 3, 316013, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (342, 3, 316014, '', 0);
INSERT INTO `printer_custom_component` VALUES (343, 3, 316015, '', 0);
INSERT INTO `printer_custom_component` VALUES (344, 3, 316016, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (345, 3, 316017, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (346, 3, 316018, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (347, 3, 316019, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (348, 3, 316020, '', 0);
INSERT INTO `printer_custom_component` VALUES (349, 3, 316021, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (350, 3, 316022, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (351, 3, 316023, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (352, 3, 316024, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (353, 3, 316025, '', 0);
INSERT INTO `printer_custom_component` VALUES (354, 3, 316026, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (355, 3, 316027, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (356, 3, 316028, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (357, 3, 316029, '', 0);
INSERT INTO `printer_custom_component` VALUES (358, 3, 316030, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (359, 3, 316031, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (360, 3, 316032, '', 0);
INSERT INTO `printer_custom_component` VALUES (361, 3, 316033, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (362, 3, 316034, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (363, 3, 317001, '', 0);
INSERT INTO `printer_custom_component` VALUES (364, 3, 317002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (365, 3, 317003, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (366, 3, 317004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (367, 3, 317005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (368, 3, 317006, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (369, 3, 317007, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (370, 3, 317008, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (371, 3, 317009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (372, 3, 317010, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (373, 3, 317011, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (374, 3, 317012, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (375, 3, 317013, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (376, 3, 317014, '', 0);
INSERT INTO `printer_custom_component` VALUES (377, 3, 317015, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (378, 3, 317016, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (379, 3, 318001, '', 0);
INSERT INTO `printer_custom_component` VALUES (380, 3, 318002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (381, 3, 318003, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (382, 3, 318004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (383, 3, 318005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (384, 3, 318006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (385, 3, 318007, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (386, 3, 318008, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (387, 3, 318009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (388, 3, 318010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (389, 3, 318011, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (390, 3, 318012, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (391, 3, 318013, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (392, 3, 319001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (393, 3, 319002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (394, 3, 320001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (395, 3, 320002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (396, 3, 320003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (397, 3, 320004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (398, 3, 320005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (399, 3, 320006, '', 0);
INSERT INTO `printer_custom_component` VALUES (400, 3, 320007, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (401, 3, 320008, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (402, 3, 320009, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (446, 4, 321001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (447, 4, 321002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (448, 4, 321003, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (449, 4, 321004, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (450, 4, 322001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (451, 4, 322002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (452, 4, 322003, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (453, 4, 322004, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (454, 4, 322005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (455, 4, 322006, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (456, 4, 322007, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (457, 4, 322008, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (458, 4, 322009, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (459, 4, 322010, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (460, 4, 322011, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (461, 4, 322012, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (462, 4, 322013, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (463, 4, 322014, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (464, 4, 322015, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (465, 4, 323001, '', 0);
INSERT INTO `printer_custom_component` VALUES (466, 4, 323002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (467, 4, 323003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (468, 4, 323004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (469, 4, 323005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (470, 4, 323006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (471, 4, 323007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (472, 4, 323008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (473, 4, 323009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (474, 4, 323010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (475, 4, 323011, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (476, 4, 323012, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (477, 4, 323013, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (478, 4, 323014, '', 0);
INSERT INTO `printer_custom_component` VALUES (479, 4, 323015, '', 0);
INSERT INTO `printer_custom_component` VALUES (480, 4, 323016, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (481, 4, 323017, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (482, 4, 323018, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (483, 4, 323019, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (484, 4, 323020, '', 0);
INSERT INTO `printer_custom_component` VALUES (485, 4, 323021, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (486, 4, 323022, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (487, 4, 323023, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (488, 4, 323024, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (489, 4, 323025, '', 0);
INSERT INTO `printer_custom_component` VALUES (490, 4, 323026, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (491, 4, 323027, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (492, 4, 323028, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (493, 4, 323029, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (494, 4, 323030, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (495, 4, 323031, '', 0);
INSERT INTO `printer_custom_component` VALUES (496, 4, 323032, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (497, 4, 323033, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (498, 4, 323034, '', 0);
INSERT INTO `printer_custom_component` VALUES (499, 4, 323035, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (500, 4, 323036, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (501, 4, 324001, '', 0);
INSERT INTO `printer_custom_component` VALUES (502, 4, 324002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (503, 4, 324003, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (504, 4, 324004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (505, 4, 324005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (506, 4, 324006, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (507, 4, 324007, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (508, 4, 324008, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (509, 4, 324009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (510, 4, 324010, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (511, 4, 324011, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (512, 4, 324012, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (513, 4, 324013, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (514, 4, 324014, '', 0);
INSERT INTO `printer_custom_component` VALUES (515, 4, 324015, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (516, 4, 324016, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (517, 4, 324017, '', 0);
INSERT INTO `printer_custom_component` VALUES (518, 4, 324018, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (519, 4, 324019, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (520, 4, 325001, '', 0);
INSERT INTO `printer_custom_component` VALUES (521, 4, 325002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (522, 4, 325003, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (523, 4, 325004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (524, 4, 325005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (525, 4, 325006, '', 0);
INSERT INTO `printer_custom_component` VALUES (526, 4, 325007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (527, 4, 325008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (528, 4, 325009, '', 0);
INSERT INTO `printer_custom_component` VALUES (529, 4, 325010, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (530, 4, 325011, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (531, 4, 325012, '', 0);
INSERT INTO `printer_custom_component` VALUES (532, 4, 325013, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (533, 4, 325014, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (534, 4, 325015, '', 0);
INSERT INTO `printer_custom_component` VALUES (535, 4, 325016, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (536, 4, 325017, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (537, 4, 325018, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (538, 4, 325019, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (539, 4, 325020, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (540, 4, 325021, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (541, 4, 325022, '', 0);
INSERT INTO `printer_custom_component` VALUES (542, 4, 325023, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (543, 4, 325024, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (544, 4, 325025, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (545, 4, 325026, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (546, 4, 325027, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (547, 4, 325028, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (548, 4, 325029, '', 0);
INSERT INTO `printer_custom_component` VALUES (549, 4, 325030, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (550, 4, 325031, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (551, 4, 325032, '', 0);
INSERT INTO `printer_custom_component` VALUES (552, 4, 325033, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (553, 4, 325034, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (554, 4, 325035, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (555, 4, 325036, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (556, 4, 325037, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (557, 4, 326001, '', 0);
INSERT INTO `printer_custom_component` VALUES (558, 4, 326002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (559, 4, 326003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (560, 4, 326004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (561, 4, 326005, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (562, 4, 326006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (563, 4, 326007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (564, 4, 326008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (565, 4, 326009, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (566, 4, 326010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (567, 4, 326011, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (568, 4, 326012, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (569, 4, 326013, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (570, 4, 326014, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (571, 4, 326015, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (572, 4, 326016, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (573, 4, 326017, '', 0);
INSERT INTO `printer_custom_component` VALUES (574, 4, 326018, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (575, 4, 326019, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (576, 4, 326020, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (577, 4, 326021, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (578, 4, 326022, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (579, 4, 326023, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (580, 4, 326024, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (581, 4, 326025, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (582, 4, 326026, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (583, 4, 326027, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (584, 4, 326028, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (585, 4, 326029, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (586, 4, 326030, '', 0);
INSERT INTO `printer_custom_component` VALUES (587, 4, 326031, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (588, 4, 326032, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (589, 4, 327001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (590, 4, 327002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (591, 4, 327003, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (592, 4, 327004, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (593, 4, 327005, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (594, 4, 328001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (595, 4, 328002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (596, 4, 328003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (597, 4, 328004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (598, 4, 328005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (599, 4, 328006, '', 0);
INSERT INTO `printer_custom_component` VALUES (600, 4, 328007, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (601, 4, 328008, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (602, 4, 328009, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (701, 5, 329001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (702, 5, 330001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (703, 5, 330002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (704, 5, 330003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (705, 5, 330004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (706, 5, 330005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (707, 5, 330006, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (708, 5, 330007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (709, 5, 331001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (710, 5, 331002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (711, 5, 331003, '', 0);
INSERT INTO `printer_custom_component` VALUES (712, 5, 331004, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (713, 5, 331005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (714, 5, 331006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (715, 5, 331007, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (716, 5, 331008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (717, 5, 331009, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (718, 5, 331010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (719, 5, 331011, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (720, 5, 331012, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (721, 5, 331013, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (722, 5, 331014, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (723, 5, 331015, '', 0);
INSERT INTO `printer_custom_component` VALUES (724, 5, 331016, '', 0);
INSERT INTO `printer_custom_component` VALUES (725, 5, 331017, '', 0);
INSERT INTO `printer_custom_component` VALUES (726, 5, 331018, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (727, 5, 331019, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (728, 5, 331020, '', 0);
INSERT INTO `printer_custom_component` VALUES (729, 5, 331021, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (730, 5, 331022, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (731, 5, 331023, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (732, 5, 331024, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (733, 5, 331025, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (734, 5, 331026, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (735, 5, 331027, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (736, 5, 332001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (737, 5, 332002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (738, 5, 332003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (739, 5, 332004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (740, 5, 332005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (764, 6, 333001, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (765, 6, 334001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (766, 6, 334002, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (767, 6, 334003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (768, 6, 334004, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (769, 6, 334005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (770, 6, 334006, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (771, 6, 334007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (772, 6, 334008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (773, 6, 335001, '', 0);
INSERT INTO `printer_custom_component` VALUES (774, 6, 335002, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (775, 6, 335003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (776, 6, 335004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (777, 6, 335005, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (778, 6, 335006, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (779, 6, 335007, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (780, 6, 335008, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (781, 6, 335009, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (782, 6, 335010, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (783, 6, 335011, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (784, 6, 335012, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (785, 6, 335013, '', 0);
INSERT INTO `printer_custom_component` VALUES (786, 6, 335014, '', 0);
INSERT INTO `printer_custom_component` VALUES (787, 6, 335015, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (788, 6, 335016, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (789, 6, 335017, '', 0);
INSERT INTO `printer_custom_component` VALUES (790, 6, 335018, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (791, 6, 335019, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (792, 6, 335020, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (793, 6, 335021, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (794, 6, 335022, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (795, 6, 335023, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (796, 6, 335024, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (797, 6, 335025, '{\"fontSize\": 1,\"textAlign\":\"center\"}', 0);
INSERT INTO `printer_custom_component` VALUES (798, 6, 336001, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (799, 6, 336002, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (800, 6, 336003, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
INSERT INTO `printer_custom_component` VALUES (801, 6, 336004, '{\"fontSize\": 1,\"textAlign\":\"right\"}', 0);
INSERT INTO `printer_custom_component` VALUES (802, 6, 336005, '{\"fontSize\": 1,\"textAlign\":\"left\"}', 0);
COMMIT;

-- ----------------------------
-- Table structure for printer_device
-- ----------------------------
DROP TABLE IF EXISTS `printer_device`;
CREATE TABLE `printer_device` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `device_name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `printer_device_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '打印机类型：1-服务器 2-网络打印机',
  `address` varchar(20) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `is_delete` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否状态：0-未删除 1-删除',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `creator_id` int(11) DEFAULT '0' COMMENT '创建人',
  `creator_name` varchar(30) DEFAULT '' COMMENT '创建人姓名',
  `updator_id` int(11) DEFAULT '0' COMMENT '修改人',
  `updator_name` varchar(30) DEFAULT '' COMMENT '修改人姓名',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_printer_device_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='打印机表';

-- ----------------------------
-- Table structure for printer_document_type
-- ----------------------------
DROP TABLE IF EXISTS `printer_document_type`;
CREATE TABLE `printer_document_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '类型名称',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0-禁用 1-启用',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='打印模板类型表';

-- ----------------------------
-- Records of printer_document_type
-- ----------------------------
BEGIN;
INSERT INTO `printer_document_type` VALUES (1, '结账单', 1, '2020-04-25 11:36:28', '2020-04-25 11:36:28');
INSERT INTO `printer_document_type` VALUES (2, '客看单', 1, '2020-04-25 11:36:28', '2020-04-25 11:36:28');
INSERT INTO `printer_document_type` VALUES (3, '预结单', 1, '2020-04-25 11:36:28', '2020-04-25 11:36:28');
INSERT INTO `printer_document_type` VALUES (4, '消费清单', 1, '2020-04-25 11:36:28', '2020-04-25 11:36:28');
INSERT INTO `printer_document_type` VALUES (5, '厨总单', 1, '2020-04-25 11:36:28', '2020-04-25 11:36:28');
INSERT INTO `printer_document_type` VALUES (6, '堂口单', 1, '2020-04-25 11:36:28', '2020-04-25 11:36:28');
COMMIT;

-- ----------------------------
-- Table structure for printer_kitchen
-- ----------------------------
DROP TABLE IF EXISTS `printer_kitchen`;
CREATE TABLE `printer_kitchen` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '出票口名称',
  `printer_device_id` int(11) NOT NULL DEFAULT '0' COMMENT '打印机id',
  `is_table` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否配置桌台区域：0-未配置 1-配置',
  `is_goods` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否配置打印菜品：0-未配置 1-配置',
  `is_delete` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除：0-未删除 1-删除',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `creator_id` int(11) DEFAULT '0' COMMENT '创建人',
  `creator_name` varchar(30) DEFAULT '' COMMENT '创建人姓名',
  `updator_id` int(11) DEFAULT '0' COMMENT '修改人',
  `updator_name` varchar(30) DEFAULT '' COMMENT '修改人姓名',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_printer_kitchen_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='出票口表';

-- ----------------------------
-- Table structure for printer_kitchen_document_type_rules
-- ----------------------------
DROP TABLE IF EXISTS `printer_kitchen_document_type_rules`;
CREATE TABLE `printer_kitchen_document_type_rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `printer_kitchen_id` int(11) NOT NULL DEFAULT '0' COMMENT '出票口id',
  `document_type_id` int(11) NOT NULL DEFAULT '0' COMMENT '票据类型',
  `number` tinyint(4) NOT NULL DEFAULT '1' COMMENT '打印份数',
  `printer_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '打印方式：1-一纸多菜 2-一纸一菜 3-各打一张',
  `is_delete` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除：0-未删除 1-删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_kitchen_document_type_printer_kitchen_id` (`printer_kitchen_id`),
  KEY `idx_kitchen_document_type_document_type_id` (`document_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='出票口票据类型表';

-- ----------------------------
-- Table structure for printer_kitchen_goods_rules
-- ----------------------------
DROP TABLE IF EXISTS `printer_kitchen_goods_rules`;
CREATE TABLE `printer_kitchen_goods_rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `printer_kitchen_id` int(11) NOT NULL DEFAULT '0' COMMENT '出票口id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `stock_id` int(11) NOT NULL DEFAULT '0' COMMENT '规格id',
  `is_delete` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除：0-未删除 1-删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_kitchen_goods_rules_printer_kitchen_id` (`printer_kitchen_id`),
  KEY `idx_kitchen_goods_rules_goods_id` (`goods_id`),
  KEY `idx_kitchen_goods_rules_stock_id` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='出票口配置打印菜品表';

-- ----------------------------
-- Table structure for printer_kitchen_table_rules
-- ----------------------------
DROP TABLE IF EXISTS `printer_kitchen_table_rules`;
CREATE TABLE `printer_kitchen_table_rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `printer_kitchen_id` int(11) NOT NULL DEFAULT '0' COMMENT '出票口id',
  `table_id` int(11) NOT NULL DEFAULT '0' COMMENT '桌台号',
  `is_delete` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除：0-未删除 1-删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_kitchen_table_rules_printer_kitchen_id` (`printer_kitchen_id`),
  KEY `idx_kitchen_table_rules_table_id` (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='出票口配置桌台区域表';

-- ----------------------------
-- Table structure for printer_system_component
-- ----------------------------
DROP TABLE IF EXISTS `printer_system_component`;
CREATE TABLE `printer_system_component` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL DEFAULT '0' COMMENT '模块id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父组件id',
  `ref_id` int(11) NOT NULL DEFAULT '0' COMMENT '引用id',
  `label` varchar(30) NOT NULL DEFAULT '' COMMENT '组件名称',
  `value` varchar(30) NOT NULL DEFAULT '' COMMENT '组件值',
  `value_style` varchar(150) NOT NULL DEFAULT '' COMMENT '组件值排版属性',
  `placeholder` varchar(50) NOT NULL DEFAULT '' COMMENT '占位符，例如：#{orderSource}',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '组件类型：hidden-隐藏（refId） text-文本 grid-网格 title-表格标题 category-分类 head-表格头',
  `row` int(11) NOT NULL DEFAULT '0' COMMENT '行号',
  `column` int(11) NOT NULL DEFAULT '0' COMMENT '列号',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '宽度，百分比',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '序号',
  `is_enable` tinyint(4) NOT NULL DEFAULT '1' COMMENT '启用状态：0 未启用 1已启用',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_temponent_component_id` (`id`),
  KEY `idx_template_component_module_id` (`module_id`),
  KEY `idx_template_component_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=336006 DEFAULT CHARSET=utf8mb4 COMMENT='打印模板系统组件表';

-- ----------------------------
-- Records of printer_system_component
-- ----------------------------
BEGIN;
INSERT INTO `printer_system_component` VALUES (101001, 1, 0, 0, '商户logo', '商户logo', '{\"fontSize\": 4,\"textAlign\":\"center\"}', '#{shopLogo}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (101002, 1, 0, 0, '店铺名称', '店铺名称', '{\"fontSize\": 4,\"textAlign\":\"center\"}', '#{shopName}', 'text', 2, 1, 100, 2, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (101003, 1, 0, 0, '票据名称', '结账单', '{\"fontSize\": 4,\"textAlign\":\"center\"}', '#{ticketType}', 'text', 3, 1, 100, 3, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (101004, 1, 0, 0, '发票号', '发票号:xxxxxxxxx', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '发票号:#{taxNumber}', 'text', 4, 1, 100, 4, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (102001, 2, 0, 0, '桌台号', '桌台号:1', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '桌台号:#{tableNum}', 'text', 1, 1, 70, 1, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (102002, 2, 0, 0, '流水号', '流水号:1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '流水号:#{serialNum}', 'text', 1, 2, 30, 2, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (102003, 2, 0, 0, '订单号', '订单号:201608221001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '订单号:#{orderNum}', 'text', 2, 1, 80, 3, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (102004, 2, 0, 0, '人数', '人数:2', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '人数:#{peopleNum}', 'text', 2, 2, 20, 4, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (102005, 2, 0, 0, '税号', '税号:123232323', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '税号:#{taxGSTRegNo}', 'text', 3, 1, 100, 5, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (102006, 2, 0, 0, '会员', '会员:张三(150XXXXXXXX)', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '会员:#{memberNum}', 'text', 4, 1, 100, 6, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (102007, 2, 0, 0, '反结账原订单流水号', '反结账原订单流水号:2', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '反结账原订单流水号:#{reverseAccountOldOrderNum}', 'text', 5, 1, 100, 7, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (102008, 2, 0, 0, '就餐人数详情', '成人2位，儿童1位，老人1位', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{mealPeopleDetail}', 'text', 6, 1, 100, 8, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103001, 3, 0, 0, '商品表格', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103002, 3, 103001, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 2, 1, 100, 2, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103003, 3, 103001, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 3, 1, 40, 3, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103004, 3, 103001, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 3, 2, 20, 4, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103005, 3, 103001, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 3, 3, 20, 5, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103006, 3, 103001, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 3, 4, 20, 6, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103007, 3, 103001, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 4, 1, 40, 7, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103008, 3, 103001, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{price}', 'text', 4, 2, 20, 8, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103009, 3, 103001, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 4, 3, 20, 9, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103010, 3, 103001, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amount}', 'text', 4, 4, 20, 10, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103011, 3, 103001, 103014, '商品备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 5, 1, 100, 11, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103012, 3, 103001, 0, '商品优惠名称', '【单品5折】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{dishDiscountName}', 'text', 6, 1, 60, 12, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103013, 3, 103001, 0, '商品优惠价格', '-10.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{dishDiscountPrice}', 'text', 6, 1, 40, 13, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103014, 3, 0, 0, '单品备注', '控制商品里面的单品备注', '', '', 'hidden', 7, 1, 100, 14, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103015, 3, 0, 0, '合计', '', '', '', 'grid', 7, 1, 100, 15, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103016, 3, 103015, 0, '合计', '合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '合计', 'text', 7, 1, 60, 16, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103017, 3, 103015, 0, '合计数量', '1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodNumber}', 'text', 7, 2, 20, 17, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103018, 3, 103015, 0, '合计价格', '18.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodPrice}', 'text', 7, 3, 20, 18, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103019, 3, 0, 0, '整单备注', '整单备注:不要太辣', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '整单备注:#{orderMemo}', 'text', 8, 1, 100, 19, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103020, 3, 0, 0, '优惠活动', '', '', '', 'grid', 9, 1, 100, 20, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103021, 3, 103020, 0, '优惠大类', '手动折扣', '{\"fontSize\": 2,\"textAlign\":\"left\"}', '#{privilegeType}', 'title', 10, 1, 100, 21, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103022, 3, 103020, 0, '优惠名称', '单品5折', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{privilegeTypeDetailName}', 'text', 11, 1, 70, 22, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103023, 3, 103020, 0, '优惠数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{privilegeTypeDetailNumber}', 'text', 11, 2, 10, 23, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103024, 3, 103020, 0, '优惠价格', '-8.00', '{\"fontSize\": 2,\"textAlign\":\"right\"}', '#{privilegeTypeDetailNameAmount}', 'text', 11, 3, 20, 24, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103025, 3, 0, 0, '可参与手动折扣合计', '', '', '#{privilegeType}', 'grid', 12, 1, 100, 25, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103026, 3, 103025, 0, '参与折扣统计', '参与折扣统计', '{\"fontSize\": 2,\"textAlign\":\"right\"}', '参与折扣统计', 'title', 13, 1, 100, 26, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103027, 3, 103025, 0, '不参与手动折扣', '[不参与手动折扣金额]', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '[不参与手动折扣金额]', 'text', 14, 1, 60, 27, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103028, 3, 103025, 0, '不参与手动折扣金额', '100.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{noManualPrivilegeNumber}', 'text', 14, 2, 40, 28, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103029, 3, 103025, 0, '可参与手动折扣', '[可参与手动折扣金额]', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '[可参与手动折扣金额]', 'text', 15, 1, 60, 29, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103030, 3, 103025, 0, '可参与手动折扣金额', '100.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{manualPrivilegeNumber}', 'text', 15, 2, 40, 30, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103031, 3, 0, 0, '附加费', '', '', '', 'grid', 16, 1, 100, 31, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103032, 3, 103031, 0, '附加费名称', '包间费', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{surchargeName}', 'text', 17, 1, 70, 32, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103033, 3, 103031, 0, '附加费金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{surchargeAmount}', 'text', 17, 2, 30, 33, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103034, 3, 0, 0, '消费税', '', '', '', 'grid', 18, 1, 100, 34, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103035, 3, 103034, 0, '消费税税率', '消费税5%', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{consumptionTaxName}', 'text', 19, 1, 70, 35, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (103036, 3, 103034, 0, '消费税金额', '6.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{consumptionTaxAmount}', 'text', 19, 2, 30, 36, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104001, 4, 0, 0, '结算明细', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104002, 4, 104001, 0, '商品原价合计', '商品原价合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品原价合计', 'text', 2, 1, 70, 2, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104003, 4, 104001, 0, '商品原价合计金额', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodTotalAmount}', 'text', 2, 2, 30, 3, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104004, 4, 104001, 0, '原始押金', '原始押金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原始押金', 'text', 3, 1, 70, 4, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104005, 4, 104001, 0, '原始押金金额', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{depositPay}', 'text', 3, 2, 30, 5, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104006, 4, 104001, 0, '已退押金', '已退押金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '已退押金', 'text', 4, 1, 70, 6, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104007, 4, 104001, 0, '已退押金金额', '-16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{depositRefund}', 'text', 4, 2, 30, 7, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104008, 4, 104001, 0, '优惠合计', '优惠合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '优惠合计', 'text', 5, 1, 70, 8, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104009, 4, 104001, 0, '优惠合计金额', '-8.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{privilegeTotalAmount}', 'text', 5, 2, 30, 9, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104010, 4, 104001, 0, '附加费合计', '附加费合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '附加费合计', 'text', 6, 1, 70, 10, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104011, 4, 104001, 0, '附加费合计金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{surchargeTotal}', 'text', 6, 2, 30, 11, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104012, 4, 104001, 0, '四舍五入', '四舍五入', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '四舍五入', 'text', 7, 1, 70, 12, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104013, 4, 104001, 0, '四舍五入金额', '-0.50', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{roundAmount}', 'text', 7, 2, 30, 13, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104014, 4, 0, 0, '预付金', '', '', '', 'grid', 8, 1, 100, 14, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104015, 4, 104014, 0, '预付金', '预付金', '{\"fontSize\": 4,\"textAlign\":\"left\"}', '#{prePayName}', 'text', 9, 1, 70, 15, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104016, 4, 104014, 0, '预付金额', '20.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{prePayCost}', 'text', 9, 2, 30, 16, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104017, 4, 0, 0, '应付汇总', '', '', '', 'grid', 10, 1, 100, 17, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104018, 4, 104017, 0, '应付金额', '应付金额', '{\"fontSize\": 4,\"textAlign\":\"left\"}', '应付金额', 'text', 11, 1, 70, 18, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (104019, 4, 104017, 0, '应付金额', '216.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodTotalAmountPay}', 'text', 11, 2, 30, 19, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105001, 5, 0, 0, '财务处理', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105002, 5, 105001, 0, '抹零', '抹零', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '抹零', 'text', 2, 1, 70, 2, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105003, 5, 105001, 0, '抹零金额', '-6.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{quiteZero}', 'text', 2, 2, 30, 3, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105004, 5, 105001, 0, '溢收', '溢收', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '溢收', 'text', 3, 1, 70, 4, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105005, 5, 105001, 0, '溢收金额', '5.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{overflow}', 'text', 3, 2, 30, 5, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105006, 5, 0, 0, '支付优惠', '', '', '', 'grid', 4, 1, 100, 6, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105007, 5, 105006, 0, '闪惠优惠', '闪惠优惠', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{payDiscountName}', 'text', 5, 1, 70, 7, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105008, 5, 105006, 0, '闪惠优惠金额', '-6.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{payDiscountNumber}', 'text', 5, 2, 30, 8, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105009, 5, 0, 0, '实付汇总', '', '', '', 'grid', 6, 1, 100, 9, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105010, 5, 105009, 0, '实付金额', '实付金额', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '实付金额', 'text', 7, 1, 70, 10, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105011, 5, 105009, 0, '实付金额', '210.00', '{\"fontSize\": 4,\"textAlign\":\"right\"}', '#{goodTotalAmountActual}', 'text', 7, 2, 30, 11, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105012, 5, 0, 0, '付款方式', '', '', '', 'grid', 8, 1, 100, 12, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105013, 5, 105012, 0, '付款方式', '现金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{paymentName}', 'text', 9, 1, 70, 13, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105014, 5, 105012, 0, '付款金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{paymentAmount}', 'text', 9, 2, 30, 14, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105015, 5, 0, 0, '找零实收', '', '', '', 'grid', 10, 1, 100, 15, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105016, 5, 105015, 0, '付款合计', '付款合计', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '付款合计', 'text', 11, 1, 70, 16, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105017, 5, 105015, 0, '付款合计金额', '220.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{payTotalAmount}', 'text', 11, 2, 30, 17, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105018, 5, 105015, 0, '找零', '找零', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '找零', 'text', 12, 1, 70, 18, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105019, 5, 105015, 0, '找零金额', '-4.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{changeAmount}', 'text', 12, 2, 30, 19, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105020, 5, 105015, 0, '现金实收', '现金实收', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '现金实收', 'text', 13, 1, 70, 20, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105021, 5, 105015, 0, '现金实收金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{cashAmount}', 'text', 13, 2, 30, 21, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105022, 5, 0, 0, '消费税明细', '', '', '', 'grid', 14, 1, 100, 22, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105023, 5, 105022, 0, '消费税明细', '消费税明细', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '消费税明细', 'head', 15, 1, 40, 23, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105024, 5, 105022, 0, '总额(计税)', '总额(计税)', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '总额(计税)', 'head', 15, 2, 30, 24, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105025, 5, 105022, 0, '税额', '税额', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '税额', 'head', 15, 3, 30, 25, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105026, 5, 105022, 0, '消费税明细', 'S=6%', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{consumptionTaxDetail}', 'text', 16, 1, 40, 26, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105027, 5, 105022, 0, '总额(计税)', '总额(计税)', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{consumptionTaxTotal}', 'text', 16, 2, 30, 27, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105028, 5, 105022, 0, '税额', '税额', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{consumptionTaxDuty}', 'text', 16, 3, 30, 28, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105029, 5, 0, 0, '储值卡余额', '', '', '', 'grid', 17, 1, 100, 29, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105030, 5, 105029, 0, '储值卡余额', '储值卡余额', '{\"fontSize\": 2,\"textAlign\":\"left\"}', '储值卡余额', 'title', 18, 1, 100, 30, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105031, 5, 105029, 0, '消费前', '消费前:300', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '消费前:#{valueCardBefore}', 'text', 19, 1, 50, 31, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105032, 5, 105029, 0, '消费后', '消费后:100', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '消费后:#{valueCardAfter}', 'text', 19, 2, 50, 32, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (105033, 5, 0, 0, '签字区', '签字区', '{\"fontSize\": 2,\"textAlign\":\"left\"}', '签字区', 'text', 20, 1, 100, 33, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106001, 6, 0, 0, '作废商品', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106002, 6, 106001, 0, '作废商品', '作废商品', '{\"fontSize\": 2,\"textAlign\":\"right\"}', '作废商品', 'title', 2, 1, 100, 2, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106003, 6, 106001, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryNameDiscard}', 'category', 3, 1, 100, 3, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106004, 6, 106001, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 4, 1, 40, 4, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106005, 6, 106001, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 4, 2, 20, 5, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106006, 6, 106001, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 4, 3, 20, 6, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106007, 6, 106001, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 4, 4, 20, 7, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106008, 6, 106001, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{goodDiscard}', 'text', 5, 1, 40, 8, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106009, 6, 106001, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{priceDiscard}', 'text', 5, 2, 20, 9, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106010, 6, 106001, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{numberDiscard}', 'text', 5, 3, 20, 10, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106011, 6, 106001, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amountDiscard}', 'text', 5, 4, 20, 11, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106012, 6, 106001, 0, '备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{memoDiscard}', 'text', 6, 1, 100, 12, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106013, 6, 106001, 0, '作废理由', '作废理由:不想要了', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{reasonDiscard}', 'text', 7, 1, 100, 13, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106014, 6, 0, 0, '反结账原订单信息', '', '', '', 'grid', 8, 1, 100, 14, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106015, 6, 106014, 0, '反结账原订单信息', '反结账原订单信息', '{\"fontSize\": 2,\"textAlign\":\"left\"}', '反结账原订单信息', 'title', 9, 1, 100, 15, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106016, 6, 106014, 0, '原单商品原价合计', '原单商品原价合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单商品原价合计', 'text', 10, 1, 70, 16, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106017, 6, 106014, 0, '原单商品原价合计金额', '216.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderGoodTotalAmount}', 'text', 10, 2, 30, 17, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106018, 6, 106014, 0, '原单优惠合计', '原单优惠合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单优惠合计', 'text', 11, 1, 70, 18, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106019, 6, 106014, 0, '原单优惠合计金额', '-8.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderPrivilegeTotalAmount}', 'text', 11, 2, 30, 19, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106020, 6, 106014, 0, '原单附加费合计', '原单附加费合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单附加费合计', 'text', 12, 1, 70, 20, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106021, 6, 106014, 0, '原单附加费合计金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderSurchargeTotal}', 'text', 12, 2, 30, 21, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106022, 6, 106014, 0, '原单四舍五入', '原单四舍五入', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单四舍五入', 'text', 13, 1, 70, 22, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106023, 6, 106014, 0, '原单四舍五入金额', '-0.50', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderRoundAmount}', 'text', 13, 2, 30, 23, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106024, 6, 106014, 0, '原单应付金额', '原单应付金额', '{\"fontSize\": 4,\"textAlign\":\"left\"}', '原单应付金额', 'text', 14, 1, 70, 24, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106025, 6, 106014, 0, '原单应付金额', '216.00', '{\"fontSize\": 4,\"textAlign\":\"right\"}', '#{oldOrderGoodTotalAmountPay}', 'text', 14, 2, 30, 25, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106026, 6, 0, 0, '反结账退货商品', '', '', '', 'grid', 15, 1, 100, 26, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106027, 6, 106026, 0, '反结账退货商品', '反结账退货商品', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '反结账退货商品', 'title', 16, 1, 100, 27, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106028, 6, 106026, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{reverseaccountGoodMiddleCategoryName}', 'category', 17, 1, 100, 28, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106029, 6, 106026, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 18, 1, 40, 29, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106030, 6, 106026, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 18, 2, 20, 30, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106031, 6, 106026, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 18, 3, 20, 31, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106032, 6, 106026, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 18, 4, 20, 32, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106033, 6, 106026, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{goodDiscard}', 'text', 19, 1, 40, 33, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106034, 6, 106026, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{priceDiscard}', 'text', 19, 2, 20, 34, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106035, 6, 106026, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{numberDiscard}', 'text', 19, 3, 20, 35, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106036, 6, 106026, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amountDiscard}', 'text', 19, 4, 20, 36, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106037, 6, 106026, 0, '备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{memoDiscard}', 'text', 20, 1, 100, 37, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106038, 6, 106026, 0, '作废理由', '作废理由:不想要了', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{reasonDiscard}', 'text', 21, 1, 100, 38, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106039, 6, 0, 0, '反结账理由', '', '', '', 'grid', 22, 1, 100, 39, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106040, 6, 106039, 0, '反结账理由', '反结账理由', '{\"fontSize\": 2,\"textAlign\":\"left\"}', '反结账理由', 'title', 23, 1, 100, 40, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (106041, 6, 106039, 0, '反结账理由', '收款错误需要进行反结账', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{reverseAccountReason}', 'text', 24, 1, 100, 41, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (107001, 7, 0, 0, '自定义二维码', '文案内容', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '文案内容', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108001, 8, 0, 0, '服务员', '服务员:李四', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '服务员:#{waiter}', 'text', 1, 1, 50, 1, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108002, 8, 0, 0, '操作员', '操作员:王五', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '操作员:#{cashier}', 'text', 1, 2, 50, 2, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108003, 8, 0, 0, '开单', '开单:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '开单:#{openBillingTime}', 'text', 2, 1, 100, 3, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108004, 8, 0, 0, '打印', '打印:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '打印:#{printTime}', 'text', 3, 1, 100, 4, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108005, 8, 0, 0, '操作时间', '操作:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '操作:#{operationTime}', 'text', 4, 1, 100, 5, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108006, 8, 0, 0, '商户信息', '', '', '', 'grid', 5, 1, 100, 6, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108007, 8, 108006, 0, '商户地址', 'XX市XX地址', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopAddress}', 'text', 6, 1, 100, 7, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108008, 8, 108006, 0, '商户电话号码', '15XXXXXXXXX', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopPhone}', 'text', 7, 1, 100, 8, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (108009, 8, 108006, 0, '商户自定义内容', '欢迎下次光临', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '欢迎下次光临', 'text', 8, 1, 100, 9, 1, '2020-04-25 11:39:48', '2020-04-25 11:39:48');
INSERT INTO `printer_system_component` VALUES (209001, 9, 0, 0, '商户logo', '', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopLogo}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (209002, 9, 0, 0, '店铺名称', '店铺名称', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopName}', 'text', 2, 1, 100, 2, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (209003, 9, 0, 0, '票据名称', '客看单', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{ticketType}', 'text', 3, 1, 100, 3, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (210001, 10, 0, 0, '桌台号', '桌台号:1', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '桌台号:#{tableNum}', 'text', 1, 1, 70, 1, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (210002, 10, 0, 0, '流水号', '流水号:1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '流水号:#{serialNum}', 'text', 1, 2, 30, 2, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (210003, 10, 0, 0, '订单号', '订单号:201608221001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '订单号:#{orderNum}', 'text', 2, 1, 80, 3, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (210004, 10, 0, 0, '人数', '人数:2', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '人数:#{peopleNum}', 'text', 2, 2, 20, 4, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (210005, 10, 0, 0, '会员', '会员:张三(150XXXXXXXX)', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '会员:#{memberNum}', 'text', 3, 1, 100, 5, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (210006, 10, 0, 0, '就餐人数详情', '成人2位，儿童1位，老人1位', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{mealPeopleDetail}', 'text', 4, 1, 100, 6, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211001, 11, 0, 0, '商品表格', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211002, 11, 211001, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 2, 1, 100, 2, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211003, 11, 211001, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 3, 1, 40, 3, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211004, 11, 211001, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 3, 2, 20, 4, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211005, 11, 211001, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 3, 3, 20, 5, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211006, 11, 211001, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 3, 4, 20, 6, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211007, 11, 211001, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 4, 1, 40, 7, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211008, 11, 211001, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{price}', 'text', 4, 2, 20, 8, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211009, 11, 211001, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 4, 3, 20, 9, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211010, 11, 211001, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amount}', 'text', 4, 4, 20, 10, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211011, 11, 211001, 211012, '商品备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 5, 1, 100, 11, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211012, 11, 0, 0, '单品备注', '', '', '', 'hidden', 6, 1, 100, 12, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211013, 11, 0, 0, '合计', '', '', '', 'grid', 7, 1, 100, 13, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211014, 11, 211013, 0, '合计', '合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '合计', 'text', 8, 1, 60, 14, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211015, 11, 211013, 0, '合计数量', '1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodNumber}', 'text', 8, 2, 20, 15, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211016, 11, 211013, 0, '合计价格', '18.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodPrice}', 'text', 8, 3, 20, 16, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211017, 11, 0, 0, '改单前商品信息', '', '', '', 'grid', 9, 1, 100, 17, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211018, 11, 211017, 0, '改单前商品信息', '改单前商品信息', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '改单前商品信息', 'title', 10, 1, 100, 18, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211019, 11, 211017, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 11, 1, 100, 19, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211020, 11, 211017, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 12, 1, 100, 40, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211021, 11, 211017, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 12, 2, 20, 21, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211022, 11, 211017, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 12, 3, 20, 22, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211023, 11, 211017, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 12, 4, 20, 23, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211024, 11, 211017, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 13, 1, 40, 24, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211025, 11, 211017, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{price}', 'text', 13, 2, 20, 25, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211026, 11, 211017, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 13, 3, 20, 26, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211027, 11, 211017, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amount}', 'text', 13, 4, 20, 27, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211028, 11, 211017, 0, '备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 14, 1, 100, 28, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (211029, 11, 0, 0, '整单备注', '整单备注:不要太辣', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '整单备注:#{orderMemo}', 'text', 15, 1, 100, 29, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (212001, 12, 0, 0, '自定义二维码', '文案内容', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '文案内容', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213001, 13, 0, 0, '服务员', '服务员:李四', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '服务员:#{waiter}', 'text', 1, 1, 50, 1, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213002, 13, 0, 0, '操作员', '操作员:王五', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '操作员:#{cashier}', 'text', 1, 2, 50, 2, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213003, 13, 0, 0, '开单', '开单:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '开单:#{openBillingTime}', 'text', 2, 1, 100, 3, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213004, 13, 0, 0, '打印', '打印:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '打印:#{printTime}', 'text', 3, 1, 100, 4, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213005, 13, 0, 0, '操作时间', '操作:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '操作:#{operationTime}', 'text', 4, 1, 100, 5, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213006, 13, 0, 0, '商户信息', '', '', '', 'grid', 5, 1, 100, 6, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213007, 13, 213006, 0, '商户地址', 'XX市XX地址', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopAddress}', 'text', 6, 1, 100, 7, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213008, 13, 213006, 0, '商户电话号码', '15XXXXXXXXX', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopPhone}', 'text', 7, 1, 100, 8, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (213009, 13, 213006, 0, '商户自定义内容', '欢迎下次光临', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '欢迎下次光临', 'text', 8, 1, 100, 9, 1, '2020-04-25 11:41:38', '2020-04-25 11:41:38');
INSERT INTO `printer_system_component` VALUES (314001, 14, 0, 0, '商户logo', '', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopLogo}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (314002, 14, 0, 0, '店铺名称', '店铺名称', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopName}', 'text', 2, 1, 100, 2, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (314003, 14, 0, 0, '票据名称', '预结单', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{ticketType}', 'text', 3, 1, 100, 3, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (315001, 15, 0, 0, '桌台号', '桌台号:1', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '桌台号:#{tableNum}', 'text', 1, 1, 70, 1, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (315002, 15, 0, 0, '流水号', '流水号:1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '流水号:#{serialNum}', 'text', 1, 2, 30, 2, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (315003, 15, 0, 0, '订单号', '订单号:201608221001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '订单号:#{orderNum}', 'text', 2, 1, 80, 3, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (315004, 15, 0, 0, '人数', '人数:2', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '人数:#{peopleNum}', 'text', 2, 2, 20, 5, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (315005, 15, 0, 0, '会员', '会员:张三(150XXXXXXXX)', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '会员:#{memberNum}', 'text', 3, 1, 100, 5, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (315006, 15, 0, 0, '反结账原订单流水号', '反结账原订单流水号:2', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '反结账原订单流水号:#{reverseAccountOldOrderNum}', 'text', 4, 1, 100, 6, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (315007, 15, 0, 0, '就餐人数详情', '成人2位，儿童1位，老人1位', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{mealPeopleDetail}', 'text', 5, 1, 100, 7, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316001, 16, 0, 0, '商品表格', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316002, 16, 316001, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 2, 1, 100, 2, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316003, 16, 316001, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 3, 1, 40, 3, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316004, 16, 316001, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 3, 2, 20, 4, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316005, 16, 316001, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 3, 3, 20, 5, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316006, 16, 316001, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 3, 4, 20, 6, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316007, 16, 316001, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 4, 1, 40, 7, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316008, 16, 316001, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{price}', 'text', 4, 2, 20, 8, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316009, 16, 316001, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 4, 3, 20, 9, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316010, 16, 316001, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amount}', 'text', 4, 4, 20, 10, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316011, 16, 316001, 316014, '商品备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 5, 1, 100, 11, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316012, 16, 316001, 0, '商品优惠名称', '【单品5折】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{dishDiscountName}', 'text', 6, 1, 60, 12, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316013, 16, 316001, 0, '商品优惠价格', '-10.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{dishDiscountPrice}', 'text', 6, 2, 40, 13, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316014, 16, 0, 0, '单品备注', '控制商品里面的单品备注', '', '', 'hidden', 7, 1, 100, 14, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316015, 16, 0, 0, '合计', '', '', '', 'grid', 8, 1, 100, 15, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316016, 16, 316015, 0, '合计', '合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '合计', 'text', 9, 1, 60, 16, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316017, 16, 316015, 0, '合计数量', '1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodNumber}', 'text', 9, 2, 20, 17, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316018, 16, 316015, 0, '合计价格', '18.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodPrice}', 'text', 9, 3, 20, 18, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316019, 16, 0, 0, '整单备注', '整单备注:不要太辣', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '整单备注:#{orderMemo}', 'text', 10, 1, 100, 19, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316020, 16, 0, 0, '优惠活动', '', '', '', 'grid', 11, 1, 100, 20, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316021, 16, 316020, 0, '优惠大类', '手动折扣', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{privilegeType}', 'title', 12, 1, 100, 21, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316022, 16, 316020, 0, '优惠名称', '单品5折', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{privilegeTypeDetailName}', 'text', 13, 1, 70, 22, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316023, 16, 316020, 0, '优惠数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{privilegeTypeDetailNumber}', 'text', 13, 2, 10, 23, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316024, 16, 316020, 0, '优惠价格', '-8.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{privilegeTypeDetailNameAmount}', 'text', 13, 3, 20, 24, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316025, 16, 0, 0, '可参与手动折扣合计', '', '', '', 'grid', 14, 1, 100, 25, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316026, 16, 316025, 0, '参与折扣统计', '参与折扣统计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '参与折扣统计', 'title', 15, 1, 100, 26, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316027, 16, 316025, 0, '不参与手动折扣', '[不参与手动折扣金额]', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '[不参与手动折扣金额]', 'text', 16, 1, 60, 27, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316028, 16, 316025, 0, '不参与手动折扣金额', '100.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{noManualPrivilegeNumber}', 'text', 16, 2, 40, 28, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316029, 16, 0, 0, '附加费', '', '', '', 'grid', 17, 1, 100, 29, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316030, 16, 316029, 0, '附加费名称', '包间费', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{surchargeName}', 'text', 18, 1, 70, 30, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316031, 16, 316029, 0, '附加费金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{surchargeAmount}', 'text', 18, 2, 30, 31, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316032, 16, 0, 0, '消费税', '', '', '', 'grid', 19, 1, 100, 32, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316033, 16, 316032, 0, '消费税税率', '消费税5%', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{consumptionTaxName}', 'text', 20, 1, 70, 33, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (316034, 16, 316032, 0, '消费税金额', '6.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{consumptionTaxAmount}', 'text', 20, 2, 30, 34, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317001, 17, 0, 0, '结算明细', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317002, 17, 317001, 0, '商品原价合计', '商品原价合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品原价合计', 'text', 2, 1, 70, 2, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317003, 17, 317001, 0, '商品原价合计金额', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodTotalAmount}', 'text', 2, 2, 30, 3, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317004, 17, 317001, 0, '原始押金', '原始押金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原始押金', 'text', 3, 1, 70, 4, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317005, 17, 317001, 0, '原始押金金额', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{depositPay}', 'text', 3, 2, 30, 5, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317006, 17, 317001, 0, '已退押金', '已退押金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '已退押金', 'text', 4, 1, 70, 6, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317007, 17, 317001, 0, '已退押金金额', '-16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{depositRefund}', 'text', 4, 2, 30, 7, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317008, 17, 317001, 0, '优惠合计', '优惠合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '优惠合计', 'text', 5, 1, 70, 8, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317009, 17, 317001, 0, '优惠合计金额', '-8.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{privilegeTotalAmount}', 'text', 5, 2, 30, 9, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317010, 17, 317001, 0, '附加费合计', '附加费合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '附加费合计', 'text', 6, 1, 70, 10, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317011, 17, 317001, 0, '附加费合计金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{surchargeTotal}', 'text', 6, 2, 30, 11, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317012, 17, 317001, 0, '四舍五入', '四舍五入', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '四舍五入', 'text', 7, 1, 70, 12, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317013, 17, 317001, 0, '四舍五入金额', '-0.50', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{roundAmount}', 'text', 7, 2, 30, 13, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317014, 17, 0, 0, '应付汇总', '', '', '', 'grid', 8, 1, 100, 14, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317015, 17, 317014, 0, '应付金额', '应付金额', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '应付金额', 'text', 9, 1, 70, 15, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (317016, 17, 317014, 0, '应付金额', '216.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodTotalAmountPay}', 'text', 9, 2, 30, 16, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318001, 18, 0, 0, '作废商品', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318002, 18, 318001, 0, '作废商品', '作废商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '作废商品', 'title', 2, 1, 100, 2, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318003, 18, 318001, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryNameDiscard}', 'category', 3, 1, 100, 3, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318004, 18, 318001, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 4, 1, 40, 4, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318005, 18, 318001, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 4, 2, 20, 5, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318006, 18, 318001, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 4, 3, 20, 6, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318007, 18, 318001, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 4, 4, 20, 7, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318008, 18, 318001, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{goodDiscard}', 'text', 5, 1, 40, 8, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318009, 18, 318001, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{priceDiscard}', 'text', 5, 2, 20, 9, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318010, 18, 318001, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{numberDiscard}', 'text', 5, 3, 20, 10, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318011, 18, 318001, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amountDiscard}', 'text', 5, 4, 20, 11, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318012, 18, 318001, 0, '备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memoDiscard}', 'text', 6, 1, 100, 12, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (318013, 18, 318001, 0, '作废理由', '作废理由:不想要了', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{reasonDiscard}', 'text', 7, 1, 100, 13, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (319001, 19, 0, 0, '支付二维码', '扫我买单有惊喜哦~', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '扫我买单有惊喜哦~', 'text', 8, 1, 100, 1, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (319002, 19, 0, 0, '自定义二维码', '文案内容', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '文案内容', 'text', 1, 1, 100, 2, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320001, 20, 0, 0, '服务员', '服务员:李四', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '服务员:#{waiter}', 'text', 1, 1, 50, 1, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320002, 20, 0, 0, '操作员', '操作员:王五', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '操作员:#{cashier}', 'text', 1, 2, 50, 2, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320003, 20, 0, 0, '开单', '开单:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '开单:#{openBillingTime}', 'text', 2, 1, 100, 3, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320004, 20, 0, 0, '打印', '打印:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '打印:#{printTime}', 'text', 3, 1, 100, 4, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320005, 20, 0, 0, '操作时间', '操作:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '操作:#{operationTime}', 'text', 4, 1, 100, 5, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320006, 20, 0, 0, '商户信息', '', '', '', 'grid', 5, 1, 100, 6, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320007, 20, 0, 0, '商户地址', 'XX市XX地址', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopAddress}', 'text', 6, 1, 100, 7, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320008, 20, 0, 0, '商户电话号码', '15XXXXXXXXX', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopPhone}', 'text', 7, 1, 100, 8, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (320009, 20, 0, 0, '商户自定义内容', '欢迎下次光临', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '欢迎下次光临', 'text', 8, 1, 100, 9, 1, '2020-04-25 11:42:22', '2020-04-25 11:42:22');
INSERT INTO `printer_system_component` VALUES (321001, 21, 0, 0, '商户logo', '商户logo', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopLogo}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (321002, 21, 0, 0, '店铺名称', '店铺名称', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopName}', 'text', 2, 1, 100, 2, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (321003, 21, 0, 0, '票据名称', '消费清单', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{ticketType}', 'text', 3, 1, 100, 3, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (321004, 21, 0, 0, '发票号', '发票号:xxxxxxxxx', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '发票号:#{taxNumber}', 'text', 4, 1, 100, 4, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322001, 22, 0, 0, '付款状态', '订单已付款', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{orderStatus}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322002, 22, 0, 0, '取餐号/桌台号', '桌台号:001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{numType}:#{tableNum}', 'text', 2, 1, 70, 2, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322003, 22, 0, 0, '流水号', '流水号:1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '流水号:#{serialNum}', 'text', 2, 2, 30, 3, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322004, 22, 0, 0, '第三方流水号', '&lt;第三方&gt;流水号:001', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{thirdClient}#{thirdSerialNum}', 'text', 3, 1, 100, 4, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322005, 22, 0, 0, '第三方订单号', '<第三方>订单号:001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{thirdClient}订单号:#{thirdOrderNum}', 'text', 4, 1, 100, 5, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322006, 22, 0, 0, '订单来源', '外送-收银终端', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{orderSource}', 'text', 5, 1, 80, 6, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322007, 22, 0, 0, '人数', '人数:2', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '人数:#{peopleNum}', 'text', 5, 2, 20, 7, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322008, 22, 0, 0, '订单号', '订单号:201608221001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '订单号:#{orderNum}', 'text', 6, 1, 100, 8, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322009, 22, 0, 0, '税号', '税号:123232323', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '税号:#{taxGSTRegNo}', 'text', 7, 1, 100, 9, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322010, 22, 0, 0, '顾客', '顾客:张三(155****5555)', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '顾客:#{customerInfo}', 'text', 8, 1, 100, 10, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322011, 22, 0, 0, '反结账原订单号', '反结账原订单号:201608221002', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '反结账原订单号:#{refundOrderNumber}', 'text', 9, 1, 100, 11, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322012, 22, 0, 0, '收货地址', 'XX省XX市XX地方', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{deliveryAddress}', 'text', 10, 1, 100, 12, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322013, 22, 0, 0, '收货人姓名', '张三', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{receiverName}', 'text', 11, 1, 100, 13, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322014, 22, 0, 0, '收货人电话', '155****5555', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{receiverPhone}', 'text', 12, 1, 100, 14, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (322015, 22, 0, 0, '送达信息', 'MM-DD HH:mm送达', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{transitTime}', 'text', 13, 1, 100, 15, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323001, 23, 0, 0, '商品表格', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323002, 23, 323001, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 2, 1, 100, 2, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323003, 23, 323001, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 3, 1, 40, 3, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323004, 23, 323001, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 3, 1, 20, 4, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323005, 23, 323001, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 3, 1, 20, 5, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323006, 23, 323001, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 3, 1, 20, 6, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323007, 23, 323001, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 4, 1, 40, 7, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323008, 23, 323001, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{price}', 'text', 4, 2, 20, 8, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323009, 23, 323001, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 4, 3, 20, 9, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323010, 23, 323001, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amount}', 'text', 4, 4, 20, 10, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323011, 23, 323001, 323014, '商品备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 5, 1, 100, 11, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323012, 23, 323001, 0, '商品优惠名称', '【单品5折】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{dishDiscountName}', 'text', 6, 1, 60, 12, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323013, 23, 323001, 0, '商品优惠价格', '-10.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{dishDiscountPrice}', 'text', 6, 2, 40, 13, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323014, 23, 0, 0, '单品备注', '控制商品里面的单品备注', '', '', 'hidden', 7, 1, 100, 14, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323015, 23, 0, 0, '合计', '', '', '', 'grid', 8, 1, 100, 15, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323016, 23, 323015, 0, '合计', '合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '合计', 'text', 9, 1, 60, 16, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323017, 23, 323015, 0, '合计数量', '1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodNumber}', 'text', 9, 2, 20, 17, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323018, 23, 323015, 0, '合计价格', '18.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodPrice}', 'text', 9, 3, 20, 18, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323019, 23, 0, 0, '整单备注', '整单备注:不要太辣', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '整单备注:#{orderMemo}', 'text', 10, 1, 100, 19, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323020, 23, 0, 0, '优惠活动', '', '', '', 'grid', 11, 1, 100, 20, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323021, 23, 323020, 0, '优惠大类', '手动折扣', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{privilegeType}', 'title', 12, 1, 100, 21, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323022, 23, 323020, 0, '优惠名称', '单品5折', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{privilegeTypeDetailName}', 'text', 13, 1, 50, 22, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323023, 23, 323020, 0, '优惠数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{privilegeTypeDetailNumber}', 'text', 13, 2, 20, 23, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323024, 23, 323020, 0, '优惠价格', '-8.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{privilegeTypeDetailNameAmount}', 'text', 13, 3, 30, 24, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323025, 23, 0, 0, '可参与手动折扣合计', '', '', '', 'grid', 14, 1, 100, 25, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323026, 23, 323025, 0, '参与折扣统计', '参与折扣统计', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '参与折扣统计', 'title', 15, 1, 100, 26, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323027, 23, 323025, 0, '不参与手动折扣', '[不参与手动折扣金额]', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '[不参与手动折扣金额]', 'text', 16, 1, 60, 27, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323028, 23, 323025, 0, '不参与手动折扣金额', '100.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{noManualPrivilegeNumber}', 'text', 16, 2, 40, 28, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323029, 23, 323025, 0, '可参与手动折扣', '[可参与手动折扣金额]', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '[可参与手动折扣金额]', 'text', 17, 1, 60, 29, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323030, 23, 323025, 0, '可参与手动折扣金额', '100.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{manualPrivilegeNumber}', 'text', 17, 2, 40, 30, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323031, 23, 0, 0, '附加费', '', '', '', 'grid', 18, 1, 100, 31, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323032, 23, 323031, 0, '附加费名称', '包间费', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{surchargeName}', 'text', 19, 1, 60, 32, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323033, 23, 323031, 0, '附加费金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{surchargeAmount}', 'text', 19, 2, 40, 33, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323034, 23, 0, 0, '消费税', '', '', '', 'grid', 20, 1, 100, 34, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323035, 23, 323034, 0, '消费税税率', '消费税5%', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{consumptionTaxName}', 'text', 21, 1, 70, 35, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (323036, 23, 323034, 0, '消费税金额', '6.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{consumptionTaxAmount}', 'text', 21, 2, 30, 36, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324001, 24, 0, 0, '结算明细', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324002, 24, 324001, 0, '商品原价合计', '商品原价合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品原价合计', 'text', 2, 1, 50, 2, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324003, 24, 324001, 0, '商品原价合计金额', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodTotalAmount}', 'text', 2, 2, 50, 3, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324004, 24, 324001, 0, '原始押金', '原始押金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原始押金', 'text', 3, 1, 50, 4, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324005, 24, 324001, 0, '原始押金金额', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{depositPay}', 'text', 3, 2, 50, 5, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324006, 24, 324001, 0, '已退押金', '已退押金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '已退押金', 'text', 4, 1, 50, 6, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324007, 24, 324001, 0, '已退押金金额', '-16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{depositRefund}', 'text', 4, 2, 50, 7, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324008, 24, 324001, 0, '优惠合计', '优惠合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '优惠合计', 'text', 5, 1, 50, 8, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324009, 24, 324001, 0, '优惠合计金额', '-8.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{privilegeTotalAmount}', 'text', 5, 2, 50, 9, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324010, 24, 324001, 0, '附加费合计', '附加费合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '附加费合计', 'text', 6, 1, 50, 10, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324011, 24, 324001, 0, '附加费合计金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{surchargeTotal}', 'text', 6, 2, 50, 11, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324012, 24, 324001, 0, '四舍五入', '四舍五入', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '四舍五入', 'text', 7, 1, 50, 12, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324013, 24, 324001, 0, '四舍五入金额', '-0.50', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{roundAmount}', 'text', 7, 2, 50, 13, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324014, 24, 0, 0, '预付金', '', '', '', 'grid', 8, 1, 100, 14, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324015, 24, 324014, 0, '预付金', '预付金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{prePayName}', 'text', 9, 1, 70, 15, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324016, 24, 324014, 0, '预付金额', '20.00', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{prePayCost}', 'text', 9, 2, 30, 16, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324017, 24, 0, 0, '应付汇总', '', '', '', 'grid', 10, 1, 100, 17, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324018, 24, 324017, 0, '应付金额', '应付金额', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '应付金额', 'text', 11, 1, 50, 18, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (324019, 24, 324017, 0, '应付金额', '216.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodTotalAmountPay}', 'text', 11, 2, 50, 19, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325001, 25, 0, 0, '财务处理', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325002, 25, 325001, 0, '抹零', '抹零', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '抹零', 'text', 2, 1, 50, 2, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325003, 25, 325001, 0, '抹零金额', '-6.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{quiteZero}', 'text', 2, 2, 50, 3, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325004, 25, 325001, 0, '溢收', '溢收', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '溢收', 'text', 3, 1, 50, 4, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325005, 25, 325001, 0, '溢收金额', '5.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{overflow}', 'text', 4, 2, 50, 5, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325006, 25, 0, 0, '支付优惠', '', '', '', 'grid', 5, 1, 100, 6, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325007, 25, 325006, 0, '闪惠优惠', '闪惠优惠', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{payDiscountName}', 'text', 6, 1, 50, 7, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325008, 25, 325006, 0, '闪惠优惠金额', '-6.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{payDiscountNumber}', 'text', 6, 2, 50, 8, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325009, 25, 0, 0, '实付汇总', '', '', '', 'grid', 7, 1, 100, 9, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325010, 25, 325009, 0, '实付金额', '实付金额', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '实付金额', 'text', 8, 1, 50, 10, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325011, 25, 325009, 0, '实付金额', '210.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodTotalAmountActual}', 'text', 8, 2, 50, 11, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325012, 25, 0, 0, '付款方式', '', '', '', 'grid', 9, 1, 100, 12, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325013, 25, 325012, 0, '付款方式', '现金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{paymentName}', 'text', 10, 1, 50, 13, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325014, 25, 325012, 0, '付款金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{paymentAmount}', 'text', 10, 2, 50, 14, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325015, 25, 0, 0, '找零实收', '', '', '', 'grid', 11, 1, 100, 15, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325016, 25, 325015, 0, '付款合计', '付款合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '付款合计', 'text', 12, 1, 50, 16, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325017, 25, 325015, 0, '付款合计金额', '220.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{payTotalAmount}', 'text', 12, 2, 50, 17, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325018, 25, 325015, 0, '找零', '找零', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '找零', 'text', 13, 1, 50, 18, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325019, 25, 325015, 0, '找零金额', '-4.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{changeAmount}', 'text', 13, 2, 50, 19, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325020, 25, 325015, 0, '现金实收', '现金实收', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '现金实收', 'text', 14, 1, 50, 20, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325021, 25, 325015, 0, '现金实收金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{cashAmount}', 'text', 14, 2, 50, 21, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325022, 25, 0, 0, '消费税明细', '', '', '', 'grid', 15, 1, 100, 22, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325023, 25, 325022, 0, '消费税明细', '消费税明细', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '消费税明细', 'head', 16, 1, 40, 23, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325024, 25, 325022, 0, '总额(计税)', '总额(计税)', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '总额(计税)', 'head', 16, 2, 30, 24, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325025, 25, 325022, 0, '税额', '税额', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{shopLogo}', 'head', 16, 3, 30, 25, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325026, 25, 325022, 0, '消费税明细', 'S=6%', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{consumptionTaxDetail}', 'text', 17, 1, 40, 26, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325027, 25, 325022, 0, '总额(计税)', '200', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{consumptionTaxTotal}', 'text', 17, 2, 30, 27, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325028, 25, 325022, 0, '税额', '12', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{consumptionTaxDuty}', 'text', 17, 3, 30, 28, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325029, 25, 0, 0, '第三方交易号(比格专用)', '', '', '', 'grid', 18, 1, 100, 29, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325030, 25, 325029, 0, '交易号', '微信交易号:1234567890', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{transactionNo}', 'text', 19, 1, 100, 30, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325031, 25, 325029, 0, '交易号状态', '交易成功', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{transactionState}', 'text', 20, 1, 100, 30, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325032, 25, 0, 0, '储值卡余额', '', '', '', 'grid', 21, 1, 100, 31, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325033, 25, 325032, 0, '储值卡余额', '储值卡余额', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '储值卡余额', 'title', 22, 1, 100, 32, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325034, 25, 325032, 0, '消费前', '消费前:300', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '消费前:#{valueCardBefore}', 'text', 23, 1, 50, 33, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325035, 25, 325032, 0, '消费后', '消费后:100', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '消费后:#{valueCardAfter}', 'text', 23, 2, 50, 34, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325036, 25, 0, 0, '发票信息', '发票:公司抬头', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '发票:#{invoice}', 'text', 24, 1, 100, 35, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (325037, 25, 0, 0, '签字区', '签字区', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '签字区', 'text', 25, 1, 100, 36, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326001, 26, 0, 0, '反结账原订单信息', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326002, 26, 326001, 0, '反结账原订单信息', '反结账原订单信息', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '反结账原订单信息', 'title', 2, 1, 100, 2, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326003, 26, 326001, 0, '原单商品原价合计', '原单商品原价合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单商品原价合计', 'text', 3, 1, 70, 3, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326004, 26, 326001, 0, '原单商品原价合计金额', '216.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderGoodTotalAmount}', 'text', 3, 2, 30, 4, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326005, 26, 326001, 0, '原单原始押金', '原单原始押金', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '原单原始押金', 'text', 4, 1, 50, 5, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326006, 26, 326001, 0, '原单原始押金金额', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldDepositPay}', 'text', 4, 2, 50, 6, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326007, 26, 326001, 0, '原单已退押金', '原单已退押金', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单已退押金', 'text', 5, 1, 50, 7, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326008, 26, 326001, 0, '原单已退押金金额', '-16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldDepositRefund}', 'text', 5, 2, 50, 8, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326009, 26, 326001, 0, '原单优惠合计', '原单优惠合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单优惠合计', 'text', 6, 1, 70, 9, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326010, 26, 326001, 0, '原单优惠合计金额', '-8.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderPrivilegeTotalAmount}', 'text', 6, 2, 30, 10, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326011, 26, 326001, 0, '原单附加费合计', '原单附加费合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单附加费合计', 'text', 7, 1, 70, 11, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326012, 26, 326001, 0, '原单附加费合计金额', '200.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderSurchargeTotal}', 'text', 7, 2, 30, 12, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326013, 26, 326001, 0, '原单四舍五入', '原单四舍五入', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单四舍五入', 'text', 8, 1, 70, 13, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326014, 26, 326001, 0, '原单四舍五入金额', '-0.50', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderRoundAmount}', 'text', 8, 2, 30, 14, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326015, 26, 326001, 0, '原单应付金额', '原单应付金额', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '原单应付金额', 'text', 9, 1, 70, 15, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326016, 26, 326001, 0, '原单应付金额', '216.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{oldOrderGoodTotalAmountPay}', 'text', 9, 2, 30, 16, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326017, 26, 0, 0, '反结账退货商品', '', '', '', 'grid', 10, 1, 100, 17, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326018, 26, 326017, 0, '反结账退货商品', '反结账退货商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '反结账退货商品', 'title', 10, 1, 100, 18, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326019, 26, 326017, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{reverseaccountGoodMiddleCategoryName}', 'category', 11, 1, 100, 19, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326020, 26, 326017, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 12, 1, 40, 20, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326021, 26, 326017, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 12, 2, 20, 21, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326022, 26, 326017, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 12, 3, 20, 22, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326023, 26, 326017, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 12, 4, 20, 23, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326024, 26, 326017, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{reverseaccountGood}', 'text', 13, 1, 40, 24, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326025, 26, 326017, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{reverseaccountPrice}', 'text', 13, 2, 20, 25, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326026, 26, 326017, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{reverseaccountNumber}', 'text', 13, 3, 20, 26, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326027, 26, 326017, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{reverseaccountAmount}', 'text', 13, 4, 20, 27, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326028, 26, 326017, 0, '备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{reverseaccountMemo}', 'text', 14, 1, 100, 28, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326029, 26, 326017, 0, '作废理由', '作废理由:不想要了', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{reverseaccountReason}', 'text', 15, 1, 100, 29, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326030, 26, 0, 0, '反结账理由', '', '', '', 'grid', 16, 1, 100, 30, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326031, 26, 326030, 0, '反结账理由', '反结账理由', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '反结账理由', 'title', 17, 1, 100, 31, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (326032, 26, 326030, 0, '反结账理由', '收款错误需要进行反结账', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{reverseAccountReason}', 'text', 18, 1, 100, 32, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (327001, 27, 0, 0, 'On Moblie配送二维码', '二维码ID', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{codeId}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (327002, 27, 0, 0, '自定义二维码', '扫码关注公众号,有惊喜哟~', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '扫码关注公众号,有惊喜哟~', 'text', 2, 1, 100, 2, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (327003, 27, 0, 0, '顺丰派送二维码', '文案内容', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '文案内容', 'text', 3, 1, 100, 3, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (327004, 27, 0, 0, '开柜条形码', '扫码开柜', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '扫码开柜', 'text', 4, 1, 100, 4, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (327005, 27, 0, 0, '京东到家取货码', '京东配送取货扫码', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '京东配送取货扫码', 'text', 5, 1, 100, 5, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328001, 28, 0, 0, '服务员', '服务员:李四', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '服务员:#{waiter}', 'text', 1, 1, 50, 1, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328002, 28, 0, 0, '操作员', '操作员:王五', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '操作员:#{cashier}', 'text', 1, 2, 50, 2, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328003, 28, 0, 0, '开单', '开单:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '开单:#{openBillingTime}', 'text', 2, 1, 100, 3, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328004, 28, 0, 0, '打印', '打印:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '打印:#{printTime}', 'text', 3, 1, 100, 4, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328005, 28, 0, 0, '操作时间', '操作:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '操作:#{operationTime}', 'text', 4, 1, 100, 5, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328006, 28, 0, 0, '商户信息', '', '', '', 'grid', 5, 1, 100, 6, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328007, 28, 328006, 0, '商户地址', 'XX市XX地址', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopAddress}', 'text', 6, 1, 100, 7, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328008, 28, 328006, 0, '商户电话号码', '15XXXXXXXXX', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{shopPhone}', 'text', 7, 1, 100, 8, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (328009, 28, 328006, 0, '商户自定义内容', '欢迎下次光临', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '欢迎下次光临', 'text', 8, 1, 100, 9, 1, '2020-04-25 11:43:35', '2020-04-25 11:43:35');
INSERT INTO `printer_system_component` VALUES (329001, 29, 0, 0, '票据名称', '厨总单', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{ticketType}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (330001, 30, 0, 0, '取餐号/桌台号', '桌台号:001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{numType}:#{tableNum}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (330002, 30, 0, 0, '订单来源', '外送-商户收银终端', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{orderSource}', 'text', 2, 1, 100, 2, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (330003, 30, 0, 0, '第三方流水号', '&lt;第三方&gt;流水号:001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{thirdClient}流水号:#{thirdSerialNum}', 'text', 3, 1, 100, 3, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (330004, 30, 0, 0, '流水号', '流水号:1', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '流水号:#{serialNum}', 'text', 4, 1, 50, 4, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (330005, 30, 0, 0, '人数', '人数:2', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '人数:#{peopleNum}', 'text', 4, 2, 50, 5, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (330006, 30, 0, 0, '送达时间', '送达时间:MM-DD HH:mm送达', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{transitTime}', 'text', 5, 1, 100, 6, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (330007, 30, 0, 0, '出单序号', '出单序号:1', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '出单序号:#{orderSerialNumber}', 'text', 6, 1, 100, 7, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331001, 31, 0, 0, '整单备注', '整单备注:不要太辣', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '整单备注:#{orderMemo}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331002, 31, 0, 0, '整单操作理由', '退货理由:上菜太慢,要求退菜', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{orderOperationReason}', 'text', 2, 1, 100, 2, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331003, 31, 0, 0, '商品表格', '', '', '', 'grid', 3, 1, 100, 3, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331004, 31, 331003, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 4, 1, 100, 4, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331005, 31, 331003, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 5, 1, 40, 5, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331006, 31, 331003, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 5, 2, 20, 6, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331007, 31, 331003, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 5, 3, 20, 7, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331008, 31, 331003, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 5, 4, 20, 8, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331009, 31, 331003, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 6, 1, 40, 9, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331010, 31, 331003, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{price}', 'text', 6, 2, 20, 10, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331011, 31, 331003, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 6, 3, 20, 11, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331012, 31, 331003, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amount}', 'text', 6, 4, 20, 12, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331013, 31, 331003, 331015, '商品备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 7, 1, 100, 13, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331014, 31, 331003, 331016, '商品操作理由', '【作废理由:太甜了】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{dishOperationReason}', 'text', 8, 1, 100, 14, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331015, 31, 0, 0, '单品备注', '控制商品里面的单品备注', '', '', 'hidden', 9, 1, 100, 15, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331016, 31, 0, 0, '单品操作理由', '控制商品里面的单品操作理由', '', '', 'hidden', 10, 1, 100, 16, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331017, 31, 0, 0, '合计', '', '', '', 'grid', 11, 1, 100, 17, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331018, 31, 331017, 0, '合计', '合计', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '合计', 'text', 12, 1, 70, 18, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331019, 31, 331017, 0, '合计数量', '1', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{goodNumber}', 'text', 12, 2, 30, 19, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331020, 31, 0, 0, '改单前商品信息', '', '', '', 'grid', 13, 1, 100, 20, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331021, 31, 331020, 0, '改单前商品信息', '改单前商品信息', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '改单前商品信息', 'title', 14, 1, 100, 21, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331022, 31, 331020, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 15, 1, 100, 22, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331023, 31, 331020, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 16, 1, 80, 23, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331024, 31, 331020, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 16, 2, 20, 24, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331025, 31, 331020, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 17, 1, 80, 25, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331026, 31, 331020, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 17, 2, 20, 26, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (331027, 31, 331020, 0, '备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 18, 1, 100, 27, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (332001, 32, 0, 0, '服务员', '服务员:李四', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '服务员:#{waiter}', 'text', 1, 1, 50, 1, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (332002, 32, 0, 0, '操作员', '操作员:王五', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '操作员:#{cashier}', 'text', 1, 2, 50, 2, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (332003, 32, 0, 0, '开单', '开单:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '开单:#{openBillingTime}', 'text', 2, 1, 100, 3, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (332004, 32, 0, 0, '打印', '打印:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '打印:#{printTime}', 'text', 3, 2, 100, 4, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (332005, 32, 0, 0, '操作时间', '操作:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '操作:#{operationTime}', 'text', 4, 1, 100, 5, 1, '2020-04-25 11:57:24', '2020-04-25 11:57:24');
INSERT INTO `printer_system_component` VALUES (333001, 33, 0, 0, '票据名称', '堂口单', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{ticketType}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (334001, 34, 0, 0, '桌台号', '桌台号:001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '桌台号:#{tableNum}', 'text', 1, 1, 100, 1, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (334002, 34, 0, 0, '人数', '人数:2', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '人数:#{peopleNum}', 'text', 2, 1, 50, 2, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (334003, 34, 0, 0, '订单来源', '外送-商户收银终端', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{orderSource}', 'text', 3, 1, 100, 3, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (334004, 34, 0, 0, '第三方流水号', '第三方流水号:001', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{thirdClient}流水号:#{thirdSerialNum}', 'text', 4, 1, 100, 4, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (334005, 34, 0, 0, '流水号', '流水号:1', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '流水号:#{serialNum}', 'text', 5, 1, 100, 5, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (334006, 34, 0, 0, '送达时间', '送达时间:MM-DD HH:mm送达', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{transitTime}', 'text', 6, 1, 100, 6, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (334007, 34, 0, 0, '出单序号', '出单序号:1', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '出单序号:#{orderSerialNumber}', 'text', 7, 1, 50, 7, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (334008, 34, 0, 0, '出单页码', '页码:1/5', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '页码:#{orderPageNumber}', 'text', 8, 2, 50, 8, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335001, 35, 0, 0, '商品表格', '', '', '', 'grid', 1, 1, 100, 1, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335002, 35, 335001, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 2, 1, 100, 2, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335003, 35, 335001, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 3, 1, 40, 3, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335004, 35, 335001, 0, '单价', '单价', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '单价', 'head', 3, 2, 20, 4, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335005, 35, 335001, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 3, 3, 20, 5, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335006, 35, 335001, 0, '价格', '价格', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '价格', 'head', 3, 4, 20, 6, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335007, 35, 335001, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 4, 1, 40, 7, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335008, 35, 335001, 0, '单价', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{price}', 'text', 4, 2, 20, 8, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335009, 35, 335001, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 4, 3, 20, 9, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335010, 35, 335001, 0, '价格', '16.00', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{amount}', 'text', 4, 4, 20, 10, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335011, 35, 335001, 335013, '商品备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 5, 1, 100, 11, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335012, 35, 335001, 335014, '商品操作理由', '【作废理由:太甜了】', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{dishOperationReason}', 'text', 6, 1, 100, 12, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335013, 35, 0, 0, '单品备注', '控制商品里面的单品备注', '', '', 'hidden', 7, 1, 100, 13, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335014, 35, 0, 0, '单品操作理由', '控制商品里面的单品操作理由', '', '', 'hidden', 8, 1, 100, 14, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335015, 35, 0, 0, '整单备注', '整单备注:不要太辣', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '整单备注:#{orderMemo}', 'text', 9, 1, 100, 15, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335016, 35, 0, 0, '整单操作理由', '退货理由:上菜太慢,要求退菜', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{orderOperationReason}', 'text', 10, 1, 100, 16, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335017, 35, 0, 0, '改单前商品信息', '', '', '', 'grid', 11, 1, 100, 17, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335018, 35, 335017, 0, '改单前商品信息', '改单前商品信息', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '改单前商品信息', 'title', 12, 1, 100, 18, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335019, 35, 335017, 0, '中类名称', '中类(价格)', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '#{goodMiddleCategoryName}', 'category', 13, 1, 100, 19, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335020, 35, 335017, 0, '商品', '商品', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '商品', 'head', 14, 1, 80, 20, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335021, 35, 335017, 0, '数量', '数量', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '数量', 'head', 14, 2, 20, 21, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335022, 35, 335017, 0, '商品', '1.回锅肉', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{good}', 'text', 15, 1, 80, 22, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335023, 35, 335017, 0, '数量', '1/份', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '#{number}', 'text', 15, 2, 20, 23, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335024, 35, 335017, 0, '备注', '【备注:多放肉】', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '#{memo}', 'text', 16, 1, 100, 24, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (335025, 35, 0, 0, '传菜码(堂口单一菜一纸)', '传菜码', '{\"fontSize\": 1,\"textAlign\":\"center\"}', '传菜码', 'text', 17, 1, 100, 25, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (336001, 36, 0, 0, '服务员', '服务员:李四', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '服务员:#{waiter}', 'text', 1, 1, 50, 1, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (336002, 36, 0, 0, '操作员', '操作员:王五', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '操作员:#{cashier}', 'text', 1, 2, 50, 2, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (336003, 36, 0, 0, '开单', '开单:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '开单:#{openBillingTime}', 'text', 2, 1, 100, 3, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (336004, 36, 0, 0, '打印', '打印:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"right\"}', '打印:#{printTime}', 'text', 3, 1, 100, 4, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
INSERT INTO `printer_system_component` VALUES (336005, 36, 0, 0, '操作时间', '操作:YYYY-MM-DD HH:MM:SS', '{\"fontSize\": 1,\"textAlign\":\"left\"}', '操作:#{operationTime}', 'text', 4, 1, 100, 5, 1, '2020-04-25 11:59:54', '2020-04-25 11:59:54');
COMMIT;

-- ----------------------------
-- Table structure for printer_template_document
-- ----------------------------
DROP TABLE IF EXISTS `printer_template_document`;
CREATE TABLE `printer_template_document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `document_type` int(11) NOT NULL DEFAULT '0' COMMENT '文档类型',
  `url` varchar(100) DEFAULT '' COMMENT '文档预览图',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '模板状态：0-删除 1-启用 2-禁用',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '添加者id',
  `creator_name` varchar(20) DEFAULT '' COMMENT '添加者名称',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template_document_shop_id` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='应用-打印模板表';

-- ----------------------------
-- Records of printer_template_document
-- ----------------------------
BEGIN;
INSERT INTO `printer_template_document` VALUES (1, '系统模板-结账单', 1, '', 1, 0, 0, 'system', '2020-04-25 12:00:57', '2020-04-25 12:00:57');
INSERT INTO `printer_template_document` VALUES (2, '系统模板-客看单', 2, '', 1, 0, 0, 'system', '2020-04-25 12:00:57', '2020-04-25 12:00:57');
INSERT INTO `printer_template_document` VALUES (3, '系统模板-预结单', 3, '', 1, 0, 0, 'system', '2020-04-25 12:00:57', '2020-04-25 12:00:57');
INSERT INTO `printer_template_document` VALUES (4, '系统模板-消费清单', 4, '', 1, 0, 0, 'system', '2020-04-25 12:00:57', '2020-04-25 12:00:57');
INSERT INTO `printer_template_document` VALUES (5, '系统模板-厨总单', 5, '', 1, 0, 0, 'system', '2020-04-25 12:00:57', '2020-04-25 12:00:57');
INSERT INTO `printer_template_document` VALUES (6, '系统模板-堂口单', 6, '', 1, 0, 0, 'system', '2020-04-25 12:00:57', '2020-04-25 12:00:57');
COMMIT;

-- ----------------------------
-- Table structure for printer_template_module
-- ----------------------------
DROP TABLE IF EXISTS `printer_template_module`;
CREATE TABLE `printer_template_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(10) NOT NULL COMMENT '模块名称',
  `module_describe` varchar(30) NOT NULL COMMENT '模块描述',
  `document_type` int(11) NOT NULL COMMENT '模板类型',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='打印模板模块表';

-- ----------------------------
-- Records of printer_template_module
-- ----------------------------
BEGIN;
INSERT INTO `printer_template_module` VALUES (1, '标题', '定义商户LOGO & 票据名称', 1, 1, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (2, '基础信息', '配置桌台号、流水号、订单号等', 1, 2, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (3, '订单明细', '配置商品、单价、数量、总价等', 1, 3, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (4, '结算信息', '配置原价合计、优惠合计、汇总', 1, 4, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (5, '支付信息', '配置付款方式、支付状态等', 1, 5, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (6, '退货信息', '展示作废商品、反结账退货商品等', 1, 6, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (7, '二维码', '配置二维码', 1, 7, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (8, '底栏', '配置服务员、时间、商户信息等', 1, 8, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (9, '标题', '定义商户LOGO & 票据名称', 2, 1, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (10, '基础信息', '配置桌台号、流水号、订单号等', 2, 2, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (11, '订单明细', '配置商品、单价、数量、总价等', 2, 3, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (12, '二维码', '配置二维码', 2, 4, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (13, '底栏', '配置服务员、时间、商户信息等', 2, 5, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (14, '标题', '定义商户LOGO & 票据名称', 3, 1, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (15, '基础信息', '配置桌台号、流水号、订单号等', 3, 2, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (16, '订单明细', '配置商品、单价、数量、总价等', 3, 3, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (17, '结算信息', '配置原价合计、优惠合计、汇总', 3, 4, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (18, '作废信息', '展示作废商品', 3, 5, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (19, '二维码', '配置二维码', 3, 6, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (20, '底栏', '配置服务员、时间、商户信息等', 3, 7, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (21, '标题', '定义商户LOGO & 票据名称', 4, 1, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (22, '基础信息', '配置桌台号、流水号、订单号等', 4, 2, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (23, '订单明细', '配置商品、单价、数量、总价等', 4, 3, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (24, '结算信息', '配置原价合计、优惠合计、汇总', 4, 4, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (25, '支付信息', '配置付款方式、支付状态、发票信息等', 4, 5, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (26, '退货信息', '展示反结账退货商品等', 4, 6, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (27, '二维码', '配置二维码', 4, 7, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (28, '底栏', '配置服务员、时间、商户信息等', 4, 8, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (29, '标题', '定义商户LOGO & 票据名称', 5, 1, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (30, '基础信息', '配置桌台号、流水号、订单号等', 5, 2, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (31, '订单明细', '配置商品、单价、数量、总价等', 5, 3, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (32, '底栏', '配置服务员、时间、商户信息等', 5, 4, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (33, '标题', '定义商户LOGO & 票据名称', 6, 1, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (34, '基本信息', '配置桌台号、流水号、订单号等', 6, 2, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (35, '订单明细', '配置商品、单价、数量、总价等', 6, 3, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
INSERT INTO `printer_template_module` VALUES (36, '底栏', '配置服务员、时间、商户信息等', 6, 4, '2020-04-25 11:37:35', '2020-04-25 11:37:35');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
