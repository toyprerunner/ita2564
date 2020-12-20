-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2020 at 10:35 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ita`
--

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL COMMENT 'ID หมวดหมู่',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `create_date` date NOT NULL COMMENT 'วันที่สร้าง',
  `cat_id` int(11) DEFAULT NULL COMMENT 'id ha_category'
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `create_date`, `cat_id`) VALUES
(137, '1. บันทึกข้อความลงนามคำสั่ง และปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', 14),
(138, '2. คำสั่ง มาตรการ กลไก หรือระบบในการดำเนินการกำหนดให้มีการเผยแพร่ข้อมูลผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน', '2020-12-20', 14),
(139, '3. กรอบแนวทางการเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน รายละเอียดเนื้อหาในข้อ 2) ข้อ 2.1 ถึงข้อ 2.3', '2020-12-20', 14),
(140, '4. รายงานผลการติดตามการดำเนินงาน และสรุปปัญหาอุปสรรคการดำเนินงานเผยแพร่ข้อมูลต่อสาธารณะผ่านเว็บไซต์ของหน่วยงาน โดยผู้บริหารสูงสุดของหน่วยงาน ต้องเป็นรายงานของปีงบประมาณ พ.ศ. 2563', '2020-12-20', 14),
(141, '1.1 ข้อมูลผู้บริหาร แสดงรายนามของผู้บริหารของหน่วยงาน ประกอบด้วย ชื่อ-นามสกุล ตำแหน่ง รูปถ่าย หมายเลขโทรศัพท์', '2020-12-20', 15),
(142, '1.2 นโยบายของผู้บริหาร', '2020-12-20', 15),
(143, '1.3 โครงสร้างหน่วยงาน', '2020-12-20', 15),
(144, '1.4 หน้าที่และอำนาจของหน่วยงานตามกฎหมายจัดตั้ง หรือกฎหมายอื่นที่เกี่ยวข้อง', '2020-12-20', 15),
(145, '1.5 กฎหมายที่เกี่ยวข้องกับการดำเนินงาน หรือการปฏิบัติงานของหน่วยงาน', '2020-12-20', 15),
(146, '1.6 ข่าวประชาสัมพันธ์ ที่แสดงข้อมูลข่าวสารที่เกี่ยวกับการดำเนินงานตามหน้าที่และอำนาจ และภารกิจของหน่วยงาน และเป็นข้อมูลข่าวสารที่เกิดขึ้นในปีงบประมาณ พ.ศ. 2564', '2020-12-20', 15),
(147, '1.7 ข้อมูลการติดต่อ ประกอบด้วย ที่อยู่หน่วยงาน หมายเลขโทรศัพท์ หมายเลขโทรสาร ที่อยู่ไปรษณีย์อิเล็กทรอนิกส์ แผนที่ตั้งหน่วยงาน', '2020-12-20', 15),
(148, '1.8 ช่องทางการรับฟังความคิดเห็น ที่บุคคลภายนอกสามารถแสดงความคิดเห็นต่อการดำเนินงานตามหน้าที่และอำนาจตามภารกิจของหน่วยงาน', '2020-12-20', 15),
(149, '1.9 วิสัยทัศน์ พันธกิจ ค่านิยม MOPH', '2020-12-20', 15),
(150, '1.10 ยุทธศาสตร์ของประเทศ โดยรวม', '2020-12-20', 15),
(151, '1.11 พระราชบัญญัติมาตรฐานทางจริยธรรม พ.ศ. 2562', '2020-12-20', 15),
(152, '1.12 ประมวลจริยธรรมข้าราชการพลเรือน พ.ศ. 2552', '2020-12-20', 15),
(153, '1.13 ข้อบังคับสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยจรรยาข้าราชการสำนักงานปลัดกระทรวงสาธารณสุข พ.ศ. 2560', '2020-12-20', 15),
(154, '1.14 อินโฟกราฟฟิกคณะกรรมการจริยธรรม ประจำสำนักงานปลัดกระทรวงสาธารณสุข ชุดปัจจุบัน', '2020-12-20', 15),
(155, '1.15 จรรยาบรรณกระทรวงสาธารณสุข (MOPH Code of Conduct)', '2020-12-20', 15),
(156, '2. นโยบายและยุทธศาสตร์ของหน่วยงาน', '2020-12-20', 15),
(157, '3. แผนปฏิบัติการประจำปีของหน่วยงาน และการติดตามประเมินผลการดำเนินงานตามแผนปฏิบัติการประจำปีของหน่วยงาน (แผนปฏิบัติการประจำปีของหน่วยงาน ทุกแผน)', '2020-12-20', 15),
(158, '4. แผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน และการติดตามประเมินผลการดำเนินงานตามแผนการใช้จ่ายงบประมาณประจำปีของหน่วยงาน', '2020-12-20', 15),
(159, '5. หลักเกณฑ์ / ขั้นตอนการแก้ไขปัญหาในกรณีที่มีการร้องเรียนเรื่องการปฏิบัติงาน หรือการให้บริการของเจ้าหน้าที่', '2020-12-20', 15),
(160, '6. หลักเกณฑ์ / ขั้นตอนการแก้ไขปัญหาในกรณีที่มีการร้องเรียนเรื่องการทุจริตและประพฤติมิชอบ', '2020-12-20', 15),
(161, '7. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการปฏิบัติงานหรือการให้บริการ', '2020-12-20', 15),
(162, '8. รายงานผลการดำเนินการเกี่ยวกับเรื่องร้องเรียนการทุจริตและประพฤติมิชอบ', '2020-12-20', 15),
(163, '9.1 การวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีที่ผ่านมา (ปีงบประมาณ พ.ศ. 2563)', '2020-12-20', 15),
(164, '9.2 แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปี', '2020-12-20', 15),
(165, '9.3 ผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีประจำปีตามรอบระยะเวลาที่กำหนดในกรอบแนวทาง', '2020-12-20', 15),
(166, '9.4 ประกาศสำนักงานปลัดกระทรวงสาธารณสุขว่าด้วยแนวทางปฏิบัติงานเพื่อตรวจสอบบุคลากรในหน่วยงานด้านการจัดซื้อจัดจ้าง พ.ศ. 2560 และแบบแสดงความบริสุทธิ์ใจในการจัดซื้อจัดจ้างของหน่วยงานในการเปิดเผยข้อมูลความขัดแย้งทางผลประโยชน์ของหัวหน้าเจ้าหน้าที่', '2020-12-20', 15),
(167, '9.5 แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน ปีงบประมาณ พ.ศ. 2564 (แบบ สขร. 1)', '2020-12-20', 15),
(168, '10. คู่มือการปฏิบัติงานตามภารกิจหลักและภารกิจสนับสนุนของหน่วยงาน', '2020-12-20', 15),
(169, '11. คู่มือขั้นตอนการให้บริการ (ภารกิจให้บริการประชาชนตามพระราชบัญญัติการอํานวยความสะดวกในการพิจารณาอนุญาตของทางราชการ พ.ศ. 2558) (ถ้ามี)', '2020-12-20', 15),
(170, '1. บันทึกข้อความเสนอรายงานผู้บริหารรับทราบ และสั่งการให้นำรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2563 ไปเผยแพร่ผ่านเว็บไซต์ของหน่วยงาน', '2020-12-20', 16),
(171, '2. รายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ.ศ. 2563 มีลักษณะเป็นรูปเล่มรายงาน โดยต้องนำเสนอข้อมูลการวิเคราะห์อย่างเป็นระบบ ตามข้อ 2. ครบทั้ง 4 องค์ประกอบ คือ (1) การวิเคราะห์ความเสี่ยง (2) การวิเคราะห์ปัญหาอุปสรรค / ข้อจำกัด', '2020-12-20', 16),
(172, '1.1 บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', 17),
(173, '1.2 หนังสือจัดสรรงบประมาณ', '2020-12-20', 17),
(174, '1.3 แผนการจัดซื้อจัดจ้างและการจัดหาพัสดุของหน่วยงาน ประจำปีงบประมาณ พ.ศ. 2564', '2020-12-20', 17),
(175, '1.4 คำสั่งมอบหมายการปิดประกาศ หรือปลดประกาศ', '2020-12-20', 17),
(176, '2.1 หนังสือรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', 17),
(177, '2.2 รายงานผลการดำเนินการตามแผนการจัดซื้อจัดจ้างและการจัดหาพัสดุ ประจำปีงบประมาณ พ..ศ. 2564', '2020-12-20', 17),
(178, '3.1 หนังสือแจ้งเวียนหลักฐานเกี่ยวกับแนวทางการตรวจสอบถึงความเกี่ยวข้องระหว่างเจ้าหน้าที่ที่เกี่ยวข้องกับการจัดซื้อจัดจ้าง และผู้เสนองาน เพื่อป้องกันผลประโยชน์ทับซ้อนเป็นคำสั่ง / ระเบียบ / ประกาศ ฯลฯ และการควบคุม กำกับ สอบทาน (ประกาศสำนักงานปลัดกระทรวงสาธาร', '2020-12-20', 17),
(179, '3.2 หนังสือขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', 17),
(180, '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 1 ชุดใบสำคัญการเบิกจ่าย เดือนตุลาคม 2563 - ธันวาคม 2563 ชุดที่ 1', '2020-12-20', 17),
(181, '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 1 ชุดใบสำคัญการเบิกจ่าย เดือนตุลาคม 2563 - ธันวาคม 2563 ชุดที่ 2', '2020-12-20', 17),
(182, '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 1  ใบสำคัญการเบิกจ่าย เดือนธันวาคม 2563 (*สำหรับหน่วยงานที่มีการแนบมาก่อนหน้าแล้ว)', '2020-12-20', 17),
(183, '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 2 ชุดใบสำคัญการเบิกจ่าย เดือนมกราคม 2564 - มีนาคม 2564 ชุดที่ 1', '2020-12-20', 17),
(184, '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 2 ชุดใบสำคัญการเบิกจ่าย เดือนมกราคม 2564 - มีนาคม 2564 ชุดที่ 2', '2020-12-20', 17),
(185, '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 3 ชุดใบสำคัญการเบิกจ่าย เดือนเมษายน 2564 - มิถุนายน 2564', '2020-12-20', 17),
(186, '3.3 แสดงหลักฐานชุดใบสำคัญการเบิกจ่าย ไตรมาสที่ 4 ชุดใบสำคัญการเบิกจ่าย เดือนกรกฎาคม 2564 - กันยายน 2564', '2020-12-20', 17),
(187, '1. บันทึกข้อความรายงานผู้บริหารรับทราบและสั่งการ ปรากฏการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', 18),
(188, '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 1 แสดงแบบ สขร. 1 เดือนตุลาคม 2563', '2020-12-20', 18),
(189, '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 1 แสดงแบบ สขร. 1 เดือนพฤศจิกายน 2563', '2020-12-20', 18),
(190, '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 1 แสดงแบบ สขร. 1 เดือนธันวาคม 2563', '2020-12-20', 18),
(191, '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 2 แสดงแบบ สขร. 1 เดือนมกราคม 2564 - มีนาคม 2564', '2020-12-20', 18),
(192, '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 3 แสดงแบบ สขร. 1 เดือนเมษายน 2564 -มิถุนายน 2564', '2020-12-20', 18),
(193, '2. แบบสรุปผลการจัดหาพัสดุในแต่ละรอบเดือน (แบบ สขร. 1) ไตรมาสที่ 4 แสดงแบบ สขร. 1 เดือนกรกฎาคม 2564 - กันยายน 2564', '2020-12-20', 18),
(194, '1. บันทึกข้อความลงนามในประกาศผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก และปรากฎการขออนุญาตนำเผยแพร่บนเว็บไซต์ของหน่วยงาน', '2020-12-20', 19),
(195, '2. ประกาศรายงานการประเมินผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก', '2020-12-20', 19),
(196, 'หลักฐานประกาศรายงานการประเมินผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน ระดับดีเด่น และดีมาก ไตรมาสที่ 1 หลักฐานประกาศรายงานการประเมินผล ฯ - รอบ 2 ปีงบประมาณ พ.ศ. 2563 (เมษายน 2563 - กันยายน 2563)', '2020-12-20', 19);

-- --------------------------------------------------------

--
-- Table structure for table `ha_category`
--

CREATE TABLE IF NOT EXISTS `ha_category` (
  `id` int(11) NOT NULL COMMENT 'ID หมวดหมู่',
  `name` varchar(255) NOT NULL COMMENT 'หมวดหมู่',
  `create_date` date NOT NULL COMMENT 'วันที่สร้าง'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ha_category`
--

INSERT INTO `ha_category` (`id`, `name`, `create_date`) VALUES
(14, 'ตัวชี้วัดที่ 1 การเปิดเผยข้อมูล EB1 หน่วยงานมีการกำหนดมาตรการ และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน', '2020-03-16'),
(15, 'ตัวชี้วัดที่ 1 การเปิดเผยข้อมูล EB2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน', '2020-03-16'),
(16, 'ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ EB3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2563', '2020-03-16'),
(17, 'ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ EB4 หน่วยงานมีมาตรการ และวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ปีงบประมาณ พ.ศ. 2564', '2020-03-16'),
(18, 'ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ EB5 หน่วยงานมีการสรุปผลการดำเนินการจัดซื้อจัดจ้างในรอบเดือน ประจำปีงบประมาณ พ.ศ. 2564', '2020-03-16'),
(19, 'ตัวชี้วัดที่ 3 การบริหารและพัฒนาทรัพยากรบุคคล', '2020-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `ha_documents`
--

CREATE TABLE IF NOT EXISTS `ha_documents` (
  `id` int(11) NOT NULL,
  `ref` varchar(50) DEFAULT NULL COMMENT 'หลายเลข referent สำหรับอัพโหลดไฟล์ ajax',
  `title` varchar(255) DEFAULT NULL COMMENT 'ชื่องาน',
  `description` text COMMENT 'รายละเอียด',
  `covenant` varchar(255) DEFAULT NULL COMMENT 'file',
  `docs` text COMMENT 'เอกสารประกอบ',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'สร้างวันที่',
  `cat_id` int(11) DEFAULT NULL COMMENT 'ID หมวดหมู่หลัก',
  `group_id` int(11) DEFAULT NULL COMMENT 'ID หมวดหมู่ย่อย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1429928899),
('m000000_000001_CreateRbacTables', 1429929043),
('m000000_000002_CreateUserTables', 1429941926),
('m000000_000003_ChangeTokenColumn', 1429941926),
('m140209_132017_init', 1435203411),
('m140403_174025_create_account_table', 1435203411),
('m140504_113157_update_tables', 1435203411),
('m140504_130429_create_token_table', 1435203411),
('m140830_171933_fix_ip_field', 1435203411),
('m140830_172703_change_account_table_name', 1435203411),
('m141222_110026_update_ip_field', 1435203411),
('m141222_135246_alter_username_length', 1552026516),
('m150614_103145_update_social_account_table', 1552026516),
('m150623_212711_fix_username_notnull', 1552026516),
('m151218_234654_add_timezone_to_profile', 1552026516),
('m160929_103127_add_last_login_at_to_user_table', 1552026516);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text,
  `timezone` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, 'admin', '', 'moderndog007@gmail.com', '194675aaf7dbd2adb0f7dadc97dd6219', 'sawangweerawong', 'http://sawang.phoubon.in.th/', 'IT', NULL),
(2, 'u27967', '', 'sawanghosp27967@gmail.com', '5f5a6c7d8b36b438580bec04398a9d85', 'sawangweerawong', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE IF NOT EXISTS `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text,
  `code` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE IF NOT EXISTS `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'NMdk4T8YFgDwEpGzu5q_YUKiR5ikpM5d', 1435206956, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `upload_id` int(11) NOT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `file_name` varchar(150) DEFAULT NULL COMMENT 'ชื่อไฟล์',
  `real_filename` varchar(150) DEFAULT NULL COMMENT 'ชื่อไฟล์จริง',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL COMMENT 'ประเภท'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
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
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'admin', 'moderndog007@gmail.com', '$2y$12$m8IV.F9O3OQ4NQdFMPaT4O5iXYLsbkgRrLbsG93NZNOePFI9W8hS2', 'cvHiM7kFUIajP2Bvnw4MgvBvyY7h0xbs', 1552026751, NULL, NULL, '127.0.0.1', 1435206956, 1608435309, 0, 1608435291),
(2, 'u27967', 'sawanghosp27967@gmail.com', '$2y$12$qtSgHWBcQKreWOqCHpm0ceqtSh/vUmNQwiiwLKo/9wVqIYDpFfby.', 'AQyMXt4bf8YYY1IXlWwsoGp-ZMVJNMVa', 1557281733, '', NULL, '::1', 1557281733, 1608435326, 0, 1607329335);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`) USING BTREE;

--
-- Indexes for table `ha_category`
--
ALTER TABLE `ha_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ha_documents`
--
ALTER TABLE `ha_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`) USING BTREE,
  ADD KEY `group_id` (`group_id`) USING BTREE;

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID หมวดหมู่',AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `ha_category`
--
ALTER TABLE `ha_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID หมวดหมู่',AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ha_documents`
--
ALTER TABLE `ha_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `group_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `ha_category` (`id`);

--
-- Constraints for table `ha_documents`
--
ALTER TABLE `ha_documents`
  ADD CONSTRAINT `ha_documents_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`),
  ADD CONSTRAINT `ha_documents_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `ha_category` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
