-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2020 at 08:59 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `position`) VALUES
('admin', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_team`
--

CREATE TABLE `candidate_team` (
  `Match_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `Team_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Score` int(3) DEFAULT NULL,
  `Annotation` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidate_team`
--

INSERT INTO `candidate_team` (`Match_id`, `Team_id`, `Score`, `Annotation`) VALUES
('1', 'IT', 2, ''),
('2', 'IT', 0, ''),
('3', 'T00', 0, ''),
('M01', '01', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `Committee_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Name_title` enum('นาย','นาง','นางสาว','') COLLATE utf8_unicode_ci NOT NULL,
  `Committee_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Committee_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Dep_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`Committee_id`, `Name_title`, `Committee_name`, `Committee_lastname`, `Dep_id`) VALUES
('C01', 'นาย', 'สถาพร', 'อุ่นเรือนงาม', 'D01'),
('C02', 'นาย', 'ใจดี', 'มีน้ำใจ', 'D02'),
('C03', 'นางสาว', 'วิลัยวรรณ', 'ศรีสุข', 'D03'),
('C04', 'นาย', 'วีระพง', 'ดำเนินพาณิชย์', 'D04'),
('C05', 'นาย', 'สาโรจน์', 'อรุณฉาย', 'D05'),
('C06', 'นาย', 'นพพล', 'เดียวสี', 'D06');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dep_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Dep_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Unit_number` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dep_id`, `Dep_name`, `Unit_number`) VALUES
('D01', 'ช่างเชือม', '1'),
('D02', 'ช่างก่อสร้าง', '2'),
('D03', 'ช่างเครื่องกล', '3'),
('D04', 'เทคนิคการผลิต', '4'),
('D05', 'เขียนแบบเครื่องกล', '5'),
('D06', 'อิเล็กทรอนิกส์', '6'),
('D07', 'ช่างไฟฟ้ากำลัง', '7'),
('D08', 'เครื่องมือวัดฯและเมคคาทรอนิกส์', '8'),
('D09', 'เทคโนโลยีสารสนเทศ', '9'),
('D10', 'การโรงแรมและการท่องเที่ยว', '10'),
('D11', 'การบัญชี', '11'),
('D12', 'คอมพิวเตอร์ธุรกิจ', '12'),
('D13', 'ขนส่งทางราง', '3'),
('D14', 'ท่าอากาศยาน', '7'),
('d27', 'เทคนิคและเทคโนโลยีคอมพิวเตอร์', '9');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `Level_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Level_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`Level_id`, `Level_name`) VALUES
('L01', 'ปวช.1'),
('L02', 'ปวช.2'),
('L03', 'ปวช.3'),
('L04', 'ปวส.1'),
('L05', 'ปวส.2');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `Major_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Dep_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Major_name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `Major_intals` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`Major_id`, `Dep_id`, `Major_name`, `Major_intals`) VALUES
('M01', 'D01', 'ช่างเชื่อม', 'ชช'),
('M02', 'D02', 'ช่างก่อสร้าง', 'ชส'),
('M03', 'D03', 'เครื่องกล', 'ชย'),
('M04', 'D04', 'ช่างเทคนิคการผลิต', 'ชก'),
('M05', 'D05', 'สาขาเขียนแบบเครื่องกล', 'ขบ'),
('M06', 'D06', 'อิเล็กทรอนิกส์', 'ชอ'),
('M07', 'D07', 'ไฟฟ้ากำลัง', 'ชฟ'),
('M09', 'D08', 'เมคคาทรอนิกส์', 'ชว/ชม'),
('M10', 'D09', 'เทคโนโลยีสารสนเทศ', 'สท'),
('M11', 'D09', 'เทคโนโลยีคอมพิวเตอร์', 'ทค'),
('M12', 'D09', 'เทคนิคคอมพิวเตอร์', 'ทค');

-- --------------------------------------------------------

--
-- Table structure for table `maten`
--

CREATE TABLE `maten` (
  `Match_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `The_couple` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `The_team` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Sport_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `_Date` date DEFAULT NULL,
  `Time_start` time DEFAULT NULL,
  `Time_end` time DEFAULT NULL,
  `_Line` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Committee_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Year` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Score` int(3) DEFAULT NULL,
  `Score_line` int(3) DEFAULT NULL,
  `Annotation` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `maten`
--

INSERT INTO `maten` (`Match_id`, `The_couple`, `The_team`, `Team_id`, `Sport_id`, `_Date`, `Time_start`, `Time_end`, `_Line`, `Committee_id`, `Year`, `Score`, `Score_line`, `Annotation`) VALUES
('M01', '2', '1', '06', '101', '2018-06-27', '10:00:00', '11:30:00', 'ข', 'C01', '2561', 0, 0, ''),
('M02', '22', '2', 'IT', '101', '2018-06-27', '10:00:00', '11:30:00', 'ก', 'C01', '2561', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `Sport_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Sport_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SportType_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`Sport_id`, `Sport_name`, `SportType_id`) VALUES
('101', 'กีฬาฟุตบอลชาย', '01'),
('201', ' กีฬาฟุตซอลชาย', '02'),
('202', 'กีฬาฟุตซอลหญิง', '02'),
('301', 'กีฬาบาสเกตบอลชาย', '03'),
('302', 'กีฬาบาสเกตบอลหญิง', '03'),
('401', ' กีฬาวอลเลย์บอลชาย', '05'),
('402', ' กีฬาวอลเลย์บอลหญิง', '05'),
('501', ' กีฬาเซปัคตะกร้อชาย', '04'),
('502', ' กีฬาเซปัคตะกร้อหญิง', '04'),
('601', ' กีฬาเทเบิลเทนนิสชายเดี่ยว', '06'),
('602', ' กีฬาเทเบิลเทนนิสหญิงเดี่ยว', '06'),
('603', ' กีฬาเทเบิลเทนนิสชายคู่', '06'),
('604', ' กีฬาเทเบิลเทนนิสหญิงคู่', '06'),
('605', ' กีฬาเทเบิลเทนนิสคู่ผสม', '06'),
('701', ' หมากรุกไทย', '07'),
('702', ' หมากฮอร์ส', '07'),
('801', ' กีฬาเปตองชาย', '08'),
('802', ' กีฬาเปตองหญิง', '08'),
('901', ' วิ่งทนชาย', '09'),
('902', ' วื่ง 100 เมตรหญิง', '09'),
('903', ' วื่ง 100 เมตรชาย', '09'),
('904', ' วื่ง 400 เมตรหญิง', '09'),
('905', ' วื่ง 400 เมตรชาย', '09'),
('906', ' วื่ง 200 เมตรหญิง', '09'),
('907', ' วื่ง 200 เมตรชาย', '09'),
('908', ' วิ่ง ผลัด 4*100 เมตร หญิง', '09'),
('909', ' วื่ง ผลัด 4*100เมตร ชาย', '09'),
('910', ' วิ่ง 1,500 เมตร หญิง', '09'),
('911', ' วิ่ง 1,500 เมตร ชาย', '09'),
('912', ' วิ่ง ผลัด 4*200 เมตร ชาย', '09'),
('913', ' วิ่ง 4*200 เมตร หญิง', '09'),
('914', ' วิ่ง 4*400 เมตร ชาย', '09'),
('915', ' วิ่ง 800 เมตรชาย', '09'),
('916', ' วิ่ง 800 เมตรหญิง', '09'),
('917', '  วิ่งผลัด 4*200 เมตรชาย', '09'),
('918', '   วิ่งผลัด 4*200 เมตร หญิง', '09'),
('919', '   วิ่งผลัด 4*400 เมตร ชาย', '09'),
('920', '   วิ่งผลัด 4*400 เมตรหญิง', '09'),
('921', ' ทุ่มน้ำหนักชาย', '09'),
('922', 'ทุ่มน้ำหนักหญิง', '09'),
('923', ' ขว้างจักรชาย', '09'),
('924', ' ขว้างจักรหญิง', '09'),
('925', ' พุ่งแหลนชาย', '09'),
('926', '  พุ่งแหลนหญิง', '09');

-- --------------------------------------------------------

--
-- Table structure for table `sport_type`
--

CREATE TABLE `sport_type` (
  `SportType_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `SportType_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sport_type`
--

INSERT INTO `sport_type` (`SportType_id`, `SportType_name`) VALUES
('01', 'กีฬาฟุตบอล'),
('02', 'กีฬาฟุตซอล'),
('03', 'กีฬาบาสเกตบอล'),
('04', 'กีฬาเซปัคตะกร้อ'),
('05', 'กีฬาวอลเลย์บอล'),
('06', 'กีฬาเทเบิลเทนนิส'),
('07', 'กีฬาหมากกระดาน'),
('08', 'กีฬาเปตอง'),
('09', 'กรีฑา');

-- --------------------------------------------------------

--
-- Table structure for table `sport_unit`
--

CREATE TABLE `sport_unit` (
  `Unit_number` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Color` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Unit_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sport_unit`
--

INSERT INTO `sport_unit` (`Unit_number`, `Color`, `Unit_name`) VALUES
('1', 'ม่วง', 'ชมรมวิชาชีพสาขาวิชาเชื่อมโลหะ'),
('10', 'ส้ม', 'ชมรมวิชาชีพสาขาวิชาการโรงแรมและการท่องเที่ยว'),
('11', 'เขียว', 'ชมรมวิชาชีพสาขาวิชาบัญชี'),
('13', 'น้ำตาล', 'ชมรมวิชาชีพสาขาวิชาคอมพิวเตอร์ธุรกิจ'),
('2', 'ฟ้า', 'ชมรมวิชาชีพสาขาวิชาก่อสร้าง'),
('3', 'เหลือง', 'ชมรมวิชาชีพสาขาวิชาเครื่องกล'),
('4', 'น้ำเงิน', 'ชมรมวิชาชีพสาขาวิชาเทคนิคการผลิต'),
('5', 'ชมพู', 'ชมรมวิชาชีพสาขาวิชาแบบเครื่องกล'),
('6', 'เทา', 'ชมรมวิชาชีพสาขาวิชาอิเล็กทรอนิกส์'),
('7', 'แดง', 'ชมรมวิชาชีพสาขาวิชาไฟฟ้ากำลัง'),
('8', 'ขาว', 'ชมรมวิชาชีพสาขาวิชาเครื่องมือวัดฯ และแม็กคาทรอนิกส์'),
('9', 'ครีม', 'ชมรมวิชาชีพสาขาวิชาเทคโนโลยีสารสนเทศ');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Stu_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Name_title` enum('นาย','นางสาว') COLLATE utf8_unicode_ci NOT NULL,
  `Stu_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Stu_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Major_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Level_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Stu_id`, `Name_title`, `Stu_name`, `Stu_lastname`, `Major_id`, `Level_id`, `Gender`) VALUES
('6039010001', 'นาย', 'กฤตนพ', 'สุขเกษม', 'M01', 'L05', 'ชาย'),
('6039010003', 'นาย', 'เขมชาติ', 'กิจวิรัตน์ชัย', 'M09', 'L05', 'ชาย'),
('6039010005', 'นาย', 'ชนสิทธิ์', 'เอี่ยมประชา', 'M09', 'L05', 'ชาย'),
('6039010006', 'นาย', 'ชนะชัย', 'โต๊ะมุดบำรุง', 'M09', 'L05', 'ชาย'),
('6039010007', 'นาย', 'ณฐกร', 'ปิ่นโมรา', 'M09', 'L05', 'ชาย'),
('6039010008', 'นาย', 'ณัฐวุฒิ', 'วงษ์สุวรรณ์', 'M09', 'L05', 'ชาย'),
('6039010009', 'นาย', 'ธนพงษ์', 'รัตนภรณ์', 'M09', 'L05', 'ชาย'),
('6039010010', 'นาย', 'ธนพงษ์', 'ประยุกต์วิทยกุล', 'M09', 'L05', 'ชาย'),
('6039010011', 'นาย', 'ธัญญ์กวิน', 'ประยูรธนะพงศ์', 'M09', 'L05', 'ชาย'),
('6039010013', 'นาย', 'นภัทร', 'แสงแก้ว', 'M09', 'L05', 'ชาย'),
('6121280049', 'นาย', 'นันทวัฒย์', 'พุฒทวี', 'M01', 'L01', 'ชาย'),
('6121280050', 'นาย', 'ณัฐพล', 'เอี่ยมใจ', 'M09', 'L05', 'ชาย');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `Team_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Unit_number` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Bresscolor` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sport_id` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Amount` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Year` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`Team_id`, `Unit_number`, `Bresscolor`, `Sport_id`, `Amount`, `Year`, `Team_name`) VALUES
('01', '6', 'sas', '101', 'sa', 'sasa', 'ชอ'),
('06', '1', 'แดง', '101', '8', '2016', 'ชช'),
('dd', '1', 'dddd', '101', 'dd', 'dd', 'ชย'),
('GG', '5', 'tt', '101', '12', '222', 'บช'),
('IT', '9', 'ครีม', '101', '16', '2560', 'สท'),
('T00', '4', 'เขียว', '101', '2', '2562', 'ชก');

-- --------------------------------------------------------

--
-- Table structure for table `team_detail`
--

CREATE TABLE `team_detail` (
  `Team_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Stu_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `_Number` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Annotation` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `team_detail`
--

INSERT INTO `team_detail` (`Team_id`, `Stu_id`, `_Number`, `Annotation`) VALUES
('06', '60390100', '1', NULL),
('06', '6039010001', '2', NULL),
('06', '6039010003', '4', NULL),
('06', '6039010006', '3', NULL),
('06', '6039010010', '5', NULL),
('dd', '6039010011', '', NULL),
('T00', '6039010003', '', NULL),
('T00', '6039010006', '', NULL),
('T00', '6039010011', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `candidate_team`
--
ALTER TABLE `candidate_team`
  ADD PRIMARY KEY (`Match_id`,`Team_id`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`Committee_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dep_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`Level_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`Major_id`);

--
-- Indexes for table `maten`
--
ALTER TABLE `maten`
  ADD PRIMARY KEY (`Match_id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`Sport_id`);

--
-- Indexes for table `sport_type`
--
ALTER TABLE `sport_type`
  ADD PRIMARY KEY (`SportType_id`);

--
-- Indexes for table `sport_unit`
--
ALTER TABLE `sport_unit`
  ADD PRIMARY KEY (`Unit_number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Stu_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`Team_id`);

--
-- Indexes for table `team_detail`
--
ALTER TABLE `team_detail`
  ADD PRIMARY KEY (`Team_id`,`Stu_id`),
  ADD KEY `12` (`Stu_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_detail`
--
ALTER TABLE `team_detail`
  ADD CONSTRAINT `13` FOREIGN KEY (`Team_id`) REFERENCES `team` (`Team_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
