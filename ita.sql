/*
Navicat MySQL Data Transfer

Source Server         : XAMPP
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ita

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-03-16 12:05:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID หมวดหมู่',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `create_date` date NOT NULL COMMENT 'วันที่สร้าง',
  `cat_id` int(11) DEFAULT NULL COMMENT 'id ha_category',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `ha_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('111', 'EB 1 หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา)', '2020-03-16', '14');
INSERT INTO `group` VALUES ('112', 'EB 2 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการดำเนินการ เพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้าง', '2020-03-16', '14');
INSERT INTO `group` VALUES ('113', 'EB 3 หน่วยงานมีการเผยแพร่แผนการจัดซื้อจัดจ้างประจำปี', '2020-03-16', '14');
INSERT INTO `group` VALUES ('114', 'EB 4 หน่วยงานมีการเผยแพร่บันทึกรายละเอียดวิธีการ และขั้นตอนการจัดซื้อจัดจ้างอย่างเป็นระบบ', '2020-03-16', '14');
INSERT INTO `group` VALUES ('115', 'EB 5 หน่วยงานของท่านเปิดโอกาสให้ผู้มีส่วนได้ส่วนเสีย มีโอกาสเข้ามามีส่วนร่วมในการดำเนินงานตามภารกิจหลักของหน่วยงานอย่างไร', '2020-03-16', '14');
INSERT INTO `group` VALUES ('116', 'EB 6 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการจัดทำแผนงาน/โครงการ ตามภารกิจหลักของหน่วยงาน หรือไม่', '2020-03-16', '14');
INSERT INTO `group` VALUES ('117', 'EB 7 ผู้มีส่วนได้ส่วนเสียเข้ามามีส่วนร่วมในการดำเนินการโครงการตามภารกิจ หลักของหน่วยงานหรือไม่', '2020-03-16', '14');
INSERT INTO `group` VALUES ('118', 'EB 8 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการเผยแพร่ ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน', '2020-03-16', '14');
INSERT INTO `group` VALUES ('119', 'EB 9 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', '2020-03-16', '14');
INSERT INTO `group` VALUES ('120', 'EB 10 หน่วยงานมีการเผยแพร่แผนปฏิบัติราชการประจำปี', '2020-03-16', '15');
INSERT INTO `group` VALUES ('121', 'EB 11 หน่วยงานมีการเผยแพร่รายงานการประเมินผลการปฏิบัติงาน ตามแผนปฏิบัติราชการประจำปี(ที่ผ่านมา)', '2020-03-16', '15');
INSERT INTO `group` VALUES ('122', 'EB 12 หน่วยงานมีการเผยแพร่การกำกับติดตามการดำเนินงาน ตามแผนปฏิบัติราชการประจำปี', '2020-03-16', '15');
INSERT INTO `group` VALUES ('123', 'EB 13 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการบริหารผล การปฏิบัติงานและการดำเนินการกับเจ้าหน้าที่ผู้มีผลสัมฤทธิ์การปฏิบัติงานต่ำ', '2020-03-16', '15');
INSERT INTO `group` VALUES ('124', 'EB 14 หน่วยงานมีการรายงานการประเมินผลเกี่ยวกับการประเมินผลการปฏิบัติราชการ ประจำปีของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการอยู่ในระดับดีเด่น และดีมากในที่เปิดเผยให้ทราบ ในรอบปีงบประมาณ', '2020-03-16', '15');
INSERT INTO `group` VALUES ('125', 'EB 15 หน่วยงานมีการเผยแพร่เจตจำนงสุจริตของผู้บริหารต่อสาธารณชน', '2020-03-16', '15');
INSERT INTO `group` VALUES ('126', 'EB 16 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการจัดการ เรื่องร้องเรียนของหน่วยงาน', '2020-03-16', '15');
INSERT INTO `group` VALUES ('127', 'EB 17 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันการรับสินบน', '2020-03-16', '16');
INSERT INTO `group` VALUES ('128', 'EB 18 หน่วยงานมีการเสริมสร้างวัฒนธรรมและค่านิยมสุจริตและการต่อต้านการทุจริตในหน่วยงาน', '2020-03-16', '17');
INSERT INTO `group` VALUES ('129', 'EB 19 หน่วยงานมีการรวมกลุ่มของเจ้าหน้าที่เพื่อการบริหารงานที่โปร่งใสหรือไม่ และกลุ่มดังกล่าวมีกิจกรรมที่แสดงถึงความพยายามที่จะปรับปรุงการบริหารงาน ของหน่วยงานให้มีความโปร่งใสยิ่งขึ้น หรือไม่', '2020-03-16', '17');
INSERT INTO `group` VALUES ('130', 'EB 20 หน่วยงานมีการวิเคราะห์ความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อนในหน่วยงาน', '2020-03-16', '17');
INSERT INTO `group` VALUES ('131', 'EB 21 หน่วยงานมีการจัดการความเสี่ยงเกี่ยวกับผลประโยชน์ทับซ้อน โดยการกำหนดมาตรการ กลไก หรือการวางระบบในการป้องกันผลประโยชน์ทับซ้อน ในหน่วยงาน', '2020-03-16', '17');
INSERT INTO `group` VALUES ('132', 'EB 22 หน่วยงานมีการประชุม หรืออบรม/สัมมนา หรือแลกเปลี่ยนความรู้ ภายในหน่วยงานในการให้ความรู้เรื่องการป้องกันผลประโยชน์ทับซ้อน จิตพอเพียงต้านทุจริต แก่เจ้าหน้าที่ในหน่วยงานหรือไม่', '2020-03-16', '17');
INSERT INTO `group` VALUES ('133', 'EB 23 หน่วยงานมีการจัดทำแผนป้องกันและปราบปรามการทุจริตหรือแผนที่เกี่ยวข้อง', '2020-03-16', '17');
INSERT INTO `group` VALUES ('134', 'EB 24 หน่วยงานมีการกำกับติดตามการดำเนินงานตามแผนป้องกัน และปราบปรามการทุจริตหรือแผนที่เกี่ยวข้อง', '2020-03-16', '17');
INSERT INTO `group` VALUES ('135', 'EB 25 หน่วยงานมีการกำหนดมาตรการ กลไก หรือการวางระบบในการตรวจสอบ การปฏิบัติงานของเจ้าหน้าที่ตามคู่มือหรือมาตรฐานการปฏิบัติงาน', '2020-03-16', '18');
INSERT INTO `group` VALUES ('136', 'EB 26 หน่วยงานมีการเผยแพร่กระบวนการอำนวยความสะดวก หรือการให้บริการประชาชน ด้วยการแสดงขั้นตอน ระยะเวลาที่ใช้', '2020-03-16', '18');

-- ----------------------------
-- Table structure for ha_category
-- ----------------------------
DROP TABLE IF EXISTS `ha_category`;
CREATE TABLE `ha_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID หมวดหมู่',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `create_date` date NOT NULL COMMENT 'วันที่สร้าง',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ha_category
-- ----------------------------
INSERT INTO `ha_category` VALUES ('14', 'ดัชนีความโปร่งใส (EB 1 - EB 9)', '2020-03-16');
INSERT INTO `ha_category` VALUES ('15', 'ดัชนีความพร้อมรับผิด (EB 10 - EB 16)', '2020-03-16');
INSERT INTO `ha_category` VALUES ('16', 'ดัชนีความปลอดจากการทุจริตในการปฏิบัติงาน', '2020-03-16');
INSERT INTO `ha_category` VALUES ('17', 'ดัชนีวัฒนธรรมคุณธรรมในองค์กร', '2020-03-16');
INSERT INTO `ha_category` VALUES ('18', 'ดัชนีคุณธรรมการทำงานในหน่วยงาน', '2020-03-16');

-- ----------------------------
-- Table structure for ha_documents
-- ----------------------------
DROP TABLE IF EXISTS `ha_documents`;
CREATE TABLE `ha_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL COMMENT 'หลายเลข referent สำหรับอัพโหลดไฟล์ ajax',
  `title` varchar(255) DEFAULT NULL COMMENT 'ชื่องาน',
  `description` text COMMENT 'รายละเอียด',
  `covenant` varchar(255) DEFAULT NULL COMMENT 'file',
  `docs` text COMMENT 'เอกสารประกอบ',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'สร้างวันที่',
  `cat_id` int(11) DEFAULT NULL COMMENT 'ID หมวดหมู่หลัก',
  `group_id` int(11) DEFAULT NULL COMMENT 'ID หมวดหมู่ย่อย',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE,
  CONSTRAINT `ha_documents_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`),
  CONSTRAINT `ha_documents_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `ha_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ha_documents
-- ----------------------------
INSERT INTO `ha_documents` VALUES ('1', 'ZMPfXcPRNUOX69BxTumDyo', 'หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา)', 'หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา)', null, '{\"10cc8047591a700ebf7544bbbf0aa889.pdf\":\"หน่วยงานมีการวิเคราะห์ผลการจัดซื้อจัดจ้างประจำปี (ที่ผ่านมา).pdf\"}', '2020-03-16 11:55:37', '14', '111');

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1429928899');
INSERT INTO `migration` VALUES ('m000000_000001_CreateRbacTables', '1429929043');
INSERT INTO `migration` VALUES ('m000000_000002_CreateUserTables', '1429941926');
INSERT INTO `migration` VALUES ('m000000_000003_ChangeTokenColumn', '1429941926');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1435203411');
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', '1435203411');
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', '1435203411');
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', '1435203411');
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', '1435203411');
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', '1435203411');
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', '1435203411');
INSERT INTO `migration` VALUES ('m141222_135246_alter_username_length', '1552026516');
INSERT INTO `migration` VALUES ('m150614_103145_update_social_account_table', '1552026516');
INSERT INTO `migration` VALUES ('m150623_212711_fix_username_notnull', '1552026516');
INSERT INTO `migration` VALUES ('m151218_234654_add_timezone_to_profile', '1552026516');
INSERT INTO `migration` VALUES ('m160929_103127_add_last_login_at_to_user_table', '1552026516');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text,
  `timezone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'นรินทร์ จุลทัศน์', '', 'chulatatnarin@gmail.com', '678d2e240fa3f326524f38859770f0f5', 'โรงพยาบาลน้ำยืน', 'http://namyuenhosp.in.th/', 'IT', null);
INSERT INTO `profile` VALUES ('2', 'u27967', '', 'sawanghosp27967@gmail.com', '5f5a6c7d8b36b438580bec04398a9d85', 'sawangweerawong', '', '', null);

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text,
  `code` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of social_account
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', 'NMdk4T8YFgDwEpGzu5q_YUKiR5ikpM5d', '1435206956', '0');

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL,
  `file_name` varchar(150) DEFAULT NULL COMMENT 'ชื่อไฟล์',
  `real_filename` varchar(150) DEFAULT NULL COMMENT 'ชื่อไฟล์จริง',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL COMMENT 'ประเภท',
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploads
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'moderndog007@gmail.com', '$2y$12$hU70CUB58TllUf3ssooPOet40uyPPemTwrcCIvTEwM./MG0dkYUhK', 'cvHiM7kFUIajP2Bvnw4MgvBvyY7h0xbs', '1552026751', null, null, '127.0.0.1', '1435206956', '1580959070', '0', '1584334188');
INSERT INTO `user` VALUES ('2', 'u27967', 'sawanghosp27967@gmail.com', '$2y$12$Tc4Jff80Uq.P/kJJdWYROOnolRT95gN.MW6U0g9/52wgfP3tgcE0e', 'AQyMXt4bf8YYY1IXlWwsoGp-ZMVJNMVa', '1557281733', '', null, '::1', '1557281733', '1580964641', '0', '1582878407');
