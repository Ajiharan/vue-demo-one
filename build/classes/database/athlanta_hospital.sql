-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2022 at 05:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `athlanta_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `apgarchild`
--

CREATE TABLE `apgarchild` (
  `childID` int(11) NOT NULL,
  `appearance` varchar(50) DEFAULT NULL,
  `pulseRate` varchar(50) DEFAULT NULL,
  `grimace` varchar(50) DEFAULT NULL,
  `activity` varchar(50) DEFAULT NULL,
  `respiration` varchar(50) DEFAULT NULL,
  `totalScore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apgarchild`
--

INSERT INTO `apgarchild` (`childID`, `appearance`, `pulseRate`, `grimace`, `activity`, `respiration`, `totalScore`) VALUES
(3, 'normal', '72', 'normal', 'normal', '12', 15);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_in_time` time DEFAULT NULL,
  `attendance_out_time` time DEFAULT NULL,
  `attendance_working_hours` int(11) DEFAULT NULL,
  `attendance_over_time` int(11) DEFAULT NULL,
  `attendance_salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `staff_id`, `attendance_date`, `attendance_in_time`, `attendance_out_time`, `attendance_working_hours`, `attendance_over_time`, `attendance_salary`) VALUES
(1, 1000, '2016-08-29', '01:08:08', '15:59:37', NULL, NULL, NULL),
(2, 1001, '2016-08-28', '07:25:46', '10:25:50', NULL, NULL, NULL),
(3, 1002, '2016-08-29', '01:33:40', '07:26:34', NULL, NULL, NULL),
(4, 1003, '2016-09-15', '09:58:14', '09:50:14', NULL, NULL, NULL),
(5, 1001, '2016-08-29', '09:59:18', NULL, NULL, NULL, NULL),
(6, 1002, '2016-08-29', '10:03:24', NULL, NULL, NULL, NULL),
(7, 1003, '2016-09-15', '09:48:22', NULL, NULL, NULL, NULL),
(8, 1000, '2016-09-18', '17:13:58', '17:14:31', NULL, NULL, NULL),
(9, 1001, '2016-09-19', '14:05:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `balancing`
--

CREATE TABLE `balancing` (
  `balance_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `income` double DEFAULT NULL,
  `spend` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `net_growth` double DEFAULT NULL,
  `stock` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `balancing`
--

INSERT INTO `balancing` (`balance_id`, `date`, `income`, `spend`, `balance`, `net_growth`, `stock`) VALUES
(2, '2016-09-17', 20000, 17290, 2710, 2710, 0),
(1, '2016-09-18', 30000, 6580, 23420, 30372, 6952),
(2, '2016-09-19', 28000, 6201, 21799, 24099, 2300);

-- --------------------------------------------------------

--
-- Table structure for table `channeling`
--

CREATE TABLE `channeling` (
  `opdID` int(11) NOT NULL,
  `field` varchar(25) DEFAULT NULL,
  `phy_name` varchar(50) DEFAULT NULL,
  `app_date` varchar(25) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `channeling`
--

INSERT INTO `channeling` (`opdID`, `field`, `phy_name`, `app_date`, `time`) VALUES
(3, 'Gynecology', 'Smith', 'Sep 20, 2016', '5:00'),
(5, 'Cardiology', 'Kalam', 'Sep 20, 2016', '2:00');

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `childID` int(11) NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `dobChild` varchar(25) DEFAULT NULL,
  `timeOfBirth` varchar(25) DEFAULT NULL,
  `birthWeight(kg)` float DEFAULT NULL,
  `gesAge` int(11) DEFAULT NULL,
  `nicuStay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`childID`, `parentID`, `dobChild`, `timeOfBirth`, `birthWeight(kg)`, `gesAge`, `nicuStay`) VALUES
(1, 2, 'Sep 17, 2016', '3:13', 2.4, 34, 2),
(2, 3, 'Sep 22, 2016', '3:00', 2.4, 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `consult_details`
--

CREATE TABLE `consult_details` (
  `opdID` int(11) NOT NULL,
  `doc_name` varchar(25) DEFAULT NULL,
  `diagnoses` varchar(50) DEFAULT NULL,
  `pres_medicines` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `consult_details`
--

INSERT INTO `consult_details` (`opdID`, `doc_name`, `diagnoses`, `pres_medicines`) VALUES
(4, 'vxcsgsdg', 'sgdg', 'cxb');

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendance`
--

CREATE TABLE `daily_attendance` (
  `id` varchar(40) NOT NULL,
  `EnteredTime` varchar(45) DEFAULT NULL,
  `LeavedTime` varchar(45) DEFAULT NULL,
  `Day` decimal(4,3) DEFAULT NULL,
  `Employeeid` varchar(45) DEFAULT NULL,
  `days` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_attendance`
--

INSERT INTO `daily_attendance` (`id`, `EnteredTime`, `LeavedTime`, `Day`, `Employeeid`, `days`) VALUES
('DA1111111', '11:25:50', '16:50:30', '0.500', 'EM1111111', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_prescription`
--

CREATE TABLE `doctor_prescription` (
  `invoice_id` int(11) NOT NULL,
  `doctor_name` varchar(45) NOT NULL,
  `doctor_regno` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_prescription`
--

INSERT INTO `doctor_prescription` (`invoice_id`, `doctor_name`, `doctor_regno`) VALUES
(8, 'Dr.T.Gobyshankar', 'DR1001'),
(15, 'sdg', '123'),
(16, 'gfgfggfg', '22323'),
(18, 'ghghg', '44');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `LicenceNo` varchar(8) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `FirstName`, `LastName`, `LicenceNo`, `Phone`, `Status`) VALUES
(4, 'Kiroshan', 'Thayaparan', 'B1234567', '0777486279', 'no'),
(5, 'Ganan', 'Guna', 'B9876543', '0752019207', 'yes'),
(6, 'Mathan', 'Mana', 'B5365892', '075294913', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `duty`
--

CREATE TABLE `duty` (
  `ID` int(11) NOT NULL,
  `Patient_Name` varchar(20) NOT NULL,
  `Vehicle_No` varchar(15) NOT NULL,
  `Driver_ID` varchar(15) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `empleave`
--

CREATE TABLE `empleave` (
  `leveid` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `days` varchar(45) DEFAULT NULL,
  `from` varchar(45) DEFAULT NULL,
  `to` varchar(45) DEFAULT NULL,
  `empid` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `empleave`
--

INSERT INTO `empleave` (`leveid`, `type`, `reason`, `days`, `from`, `to`, `empid`) VALUES
('EL1111111', 'Absent', 'sick', '2', '19/09/2016', '21/09/2016', 'EM1111111'),
('EL1111112', 'Sickness', 'dkgdk', '2', '14/09/2016', '15/09/2016', 'EM1111111');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `idEmployee` varchar(45) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `contactnumber` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `ol` varchar(10) DEFAULT NULL,
  `al` varchar(10) DEFAULT NULL,
  `others` varchar(10) DEFAULT NULL,
  `qualificationdetails` varchar(45) DEFAULT NULL,
  `english` varchar(45) DEFAULT NULL,
  `tamil` varchar(45) DEFAULT NULL,
  `singala` varchar(45) DEFAULT NULL,
  `desigination` varchar(45) DEFAULT NULL,
  `employee` varchar(45) DEFAULT NULL,
  `join` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`idEmployee`, `fname`, `lname`, `gender`, `status`, `dob`, `nic`, `contactnumber`, `email`, `address`, `ol`, `al`, `others`, `qualificationdetails`, `english`, `tamil`, `singala`, `desigination`, `employee`, `join`) VALUES
('EM1111111', 'gobika', 'thurai', 'Female', 'Single', '09/09/1982', '941234567V', '0773198086', 'a@yahoo.com', '32/2 st.peters .place', 'OL', 'AL', 'null', 'a/l complete', 'English', 'Tamil', 'null', 'Nurse', NULL, '09/09/2016'),
('EM1111112', 'thurai', 'muthu', 'Male', 'Married', '09/09/1971', '711234567V', '0773732854', 'a@yahoo.com', '43/3 st.peters place', 'OL', 'AL', 'null', 'working experience in hospital', 'English', 'Tamil', 'Singala', 'Pharmacist', NULL, '12/09/2016'),
('EM1111113', 'gobika', 'thurai', 'Female', 'Married', '01/09/2016', '123456789V', '1234567890', 'A@yahoo.com', 'asdsf', 'OL', 'AL', 'null', 'dgg', 'English', 'null', 'null', 'Nurse', NULL, '09/09/2016');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `item_code` text DEFAULT NULL,
  `item_name` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `category`, `item_code`, `item_name`, `date`, `expiry_date`, `quantity`, `unit_price`, `total`) VALUES
(2, 'Select', '232', 'wfwfww', '2016-09-18', '2017-09-21', 123, 12, 1476),
(3, 'Pharmacy Drugs', 'F23', 'Chairs', '2016-09-18', '2017-09-21', 50, 400, 1476),
(4, 'Electrical', '123sd', 'sdaf', '2016-09-18', '2018-09-12', 200, 20, 4000),
(5, 'Furniture', '123', 'qewe', '2016-08-29', '2018-08-29', 1222, 2, 2444),
(6, 'Pharmacy Drugs', '123sdf', 'nifal', '2016-08-29', '2016-08-29', 1250, 3, 3750),
(7, 'Select', 'p123', 'qwerty', '2016-09-19', '2018-09-06', 23, 100, 2300);

-- --------------------------------------------------------

--
-- Table structure for table `inventory2`
--

CREATE TABLE `inventory2` (
  `IID` varchar(20) NOT NULL,
  `IName` varchar(40) NOT NULL,
  `Cat` varchar(20) DEFAULT NULL,
  `IDescription` varchar(100) DEFAULT NULL,
  `Quan` int(11) DEFAULT NULL,
  `UpurchaseCost` double DEFAULT NULL,
  `TAmount` double DEFAULT NULL,
  `PuDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory2`
--

INSERT INTO `inventory2` (`IID`, `IName`, `Cat`, `IDescription`, `Quan`, `UpurchaseCost`, `TAmount`, `PuDate`) VALUES
('IN-1004', 'thh', 'Machinery', '', 6, 65, 390, '2016-08-03'),
('IN-1005', 'Bed', 'Furniture', '', 5, 10000, 50000, '2016-09-13'),
('IN-1006', 'chaire', 'Machinery', '', 78, 789, 61542, '2016-09-01'),
('IN-1007', 'tables', 'Furniture', '', 20, 5000, 100000, '2019-07-03'),
('IN-1008', 'book', 'Furniture', 'cxvv', 50, 34, 1700, '2019-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` int(11) NOT NULL,
  `ItemName` varchar(150) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `OTC` varchar(5) NOT NULL,
  `DrugType` varchar(15) NOT NULL,
  `Availability` int(11) NOT NULL DEFAULT 0,
  `sel_price` double NOT NULL,
  `Last_Per_Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemName`, `Type`, `OTC`, `DrugType`, `Availability`, `sel_price`, `Last_Per_Price`) VALUES
(1, 'Panadol__(50mg)', 'Drug', 'true', 'AAP', 15691, 110, 100),
(2, 'Prition__(100mg)', 'Drug', 'true', 'AB', 1030, 2200, 2000),
(3, 'vitamin c__(12)', 'Drug', 'true', 'AAP', 949, 13.2, 12),
(4, 'Revidox__(100mg)', 'Drug', 'false', 'AAP', 400, 330, 300),
(6, 'Plaster', 'Others', 'true', 'Select', 505, 110, 100),
(7, 'Metformin__(500mg)', 'Drug', 'false', 'CR', 0, 0, 0),
(8, 'Baby Colone', 'Others', 'true', 'Select', 1250, 135.3, 123),
(9, 'Pampers', 'Others', 'true', 'Select', 0, 0, 0),
(10, 'Vicks', 'Others', 'true', 'Select', 0, 0, 0),
(11, 'bandage', 'Others', 'true', 'Select', 0, 0, 0),
(12, 'becosules__(500mg)', 'Drug', 'false', 'AB', 1988, 37.4, 34),
(13, 'capsule__(100)', 'Drug', 'true', 'AAP', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `labtests`
--

CREATE TABLE `labtests` (
  `LAB_REF_NO` int(11) DEFAULT NULL,
  `TEST_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `labtests`
--

INSERT INTO `labtests` (`LAB_REF_NO`, `TEST_NAME`) VALUES
(1001, 'Urine Full Report'),
(1001, 'Serum Albumin'),
(1002, 'Random Cholesterol'),
(1003, 'Urine Full Report'),
(1004, 'Glucose Tolerance Test'),
(1004, 'Haemoglobin(HB)'),
(1005, 'Fasting Blood Sugar');

-- --------------------------------------------------------

--
-- Table structure for table `lab_visit`
--

CREATE TABLE `lab_visit` (
  `opdID` int(11) NOT NULL,
  `test` varchar(25) DEFAULT NULL,
  `scan` varchar(25) DEFAULT NULL,
  `pres_by` varchar(25) DEFAULT NULL,
  `reasons` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab_visit`
--

INSERT INTO `lab_visit` (`opdID`, `test`, `scan`, `pres_by`, `reasons`) VALUES
(2, 'Fasting Blood Sugar', 'ElectroCardioGraphy(ECG)', 'Kalam', 'Chest Pain'),
(5, 'Fasting Blood Sugar', 'ElectroCardioGraphy(ECG)', 'sdgsdvxagsxv', 'sgdds');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL DEFAULT 100,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `category`) VALUES
(1, 'admin', 'anifal', 'Admin'),
(2, 'staff', 'snifal', 'Staff'),
(3, 'inventory', 'inifal', 'Inventory'),
(4, 'payment', 'pnifal', 'Payment');

-- --------------------------------------------------------

--
-- Table structure for table `login_employee`
--

CREATE TABLE `login_employee` (
  `employeeid` varchar(40) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_employee`
--

INSERT INTO `login_employee` (`employeeid`, `username`, `password`) VALUES
('EM1111111', 'EM1111111', '1234567890'),
('EM1111112', 'EM1111112', '1234567890'),
('EM1111113', 'EM1111113', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `loguser`
--

CREATE TABLE `loguser` (
  `userId` int(11) NOT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `userType` varchar(45) DEFAULT NULL,
  `new_tablecol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loguser`
--

INSERT INTO `loguser` (`userId`, `userName`, `pwd`, `userType`, `new_tablecol`) VALUES
(1, 'siya', 'siya', 'rep', NULL),
(2, 'gobika', 'gobika', 'hr', NULL),
(3, 'jathu', 'jathu', 'phar', NULL),
(4, 'madhu', 'madhu', 'lab_assist', NULL),
(5, 'kobi', 'kobi', 'opd', NULL),
(6, 'nifal', 'nifal', 'admin', NULL),
(7, 'kiro', 'kiro', 'vcl', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `maternity`
--

CREATE TABLE `maternity` (
  `patientID` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `NIC` varchar(11) NOT NULL,
  `perm_add` varchar(50) NOT NULL,
  `mar_status` varchar(15) NOT NULL,
  `res_add` varchar(50) NOT NULL,
  `h_contact` int(11) NOT NULL,
  `m_contact` int(11) NOT NULL,
  `duedate` date NOT NULL,
  `fam_doctor` varchar(25) NOT NULL,
  `mat_doctor` varchar(25) NOT NULL,
  `pediat` varchar(25) NOT NULL,
  `room_cat` varchar(25) NOT NULL,
  `room_no` varchar(11) NOT NULL,
  `room_rate` double NOT NULL,
  `nok_title` varchar(10) NOT NULL,
  `nok_fname` varchar(25) NOT NULL,
  `nok_lname` varchar(25) NOT NULL,
  `nok_nic` varchar(11) DEFAULT NULL,
  `nok_relat` varchar(15) NOT NULL,
  `nok_add` varchar(50) NOT NULL,
  `nok_contact` int(11) NOT NULL,
  `tot_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maternity`
--

INSERT INTO `maternity` (`patientID`, `title`, `fname`, `lname`, `dob`, `age`, `NIC`, `perm_add`, `mar_status`, `res_add`, `h_contact`, `m_contact`, `duedate`, `fam_doctor`, `mat_doctor`, `pediat`, `room_cat`, `room_no`, `room_rate`, `nok_title`, `nok_fname`, `nok_lname`, `nok_nic`, `nok_relat`, `nok_add`, `nok_contact`, `tot_amount`) VALUES
(1, 'Mrs', 'Kala', 'Weerasuriya', '1987-09-15', 29, '872345123V', '10 Kovil Road, Colombo', 'Married', '10 Kovil Road, Colombo', 112123456, 771234567, '2016-09-23', 'Panjalingam', 'Smith', 'Sthalakar', 'Luxury', 'Mroom5', 3000, 'Mr', 'Sunil', 'Weerasuriya', '856743123V', 'Husband', '12 Kandy Street, Kandy', 251234567, 5600),
(2, 'Mrs', 'Zahla', 'Nifal', '1994-06-09', 22, '940601994V', '10 Main Street, Katankudy', 'Married', '147 Temple tree road, Colombo-3', 652247564, 773069123, '2016-09-17', 'Zakeer', 'Smith', 'Sthalakar', 'Luxury', 'Mroom6', 3600, 'Mr', 'MNM', 'Nifal', '921398761V', 'Husband', '147 Temple tree road, Colombo-3', 773069124, 125000),
(3, 'Mrs', 'Madhu', 'Thanush', '1994-09-06', 22, '940906145V', 'Jaffna', 'Married', 'Colombo', 776841387, 112657051, '2016-09-22', 'Thilak', 'Smith', 'Sthalakar', 'Luxury', 'Mroom5', 3600, 'Mr', 'Thanush', 'Selvaragavan', '921345678V', 'Husband', 'Colombo', 775674321, 8000),
(4, 'Mrs', 'sa', 'sav', '1987-07-23', 23, '123456789V', 'dgsa', 'Married', 'xgsd', 1234567890, 1234567890, '2016-09-22', 'dsga', 'Smith', 'Kannam', 'Luxury', 'Mroom5', 3600, 'Mr', 'sgdag', 'sag', '123456589V', 'dgs', 'sdghhs', 1234567650, 6350);

-- --------------------------------------------------------

--
-- Table structure for table `opd`
--

CREATE TABLE `opd` (
  `opdID` int(11) NOT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `contact_no` char(10) DEFAULT NULL,
  `visit_type` varchar(20) DEFAULT NULL,
  `payment` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opd`
--

INSERT INTO `opd` (`opdID`, `title`, `fname`, `lname`, `age`, `contact_no`, `visit_type`, `payment`) VALUES
(1, 'Mr', 'Kabali', 'Irumugan', 67, '0773421890', 'OPD', 400),
(2, 'Mr', 'Yazir', 'Arafat', 57, '0777684536', 'Lab', 2300),
(3, 'Ms', 'Mathangi', 'Karunakaran', 22, '0776843817', 'Channeling', 1500),
(4, 'Mr', 'Nifal', 'Kalam', 23, '0123456789', 'OPD', 400),
(5, 'Mr', 'dfg', 'vszdgv', 23, '1234567890', 'OPD', 456);

-- --------------------------------------------------------

--
-- Table structure for table `othours`
--

CREATE TABLE `othours` (
  `id` varchar(45) NOT NULL,
  `othours` varchar(45) DEFAULT NULL,
  `otamount` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `empidot` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `othours`
--

INSERT INTO `othours` (`id`, `othours`, `otamount`, `total`, `empidot`) VALUES
('OT1111112', '1', '100', '100.0', 'EM1111111');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pId` varchar(8) NOT NULL DEFAULT '0',
  `pAddDate` date DEFAULT NULL,
  `pAddTime` time DEFAULT NULL,
  `pNameTitle` varchar(6) DEFAULT NULL,
  `pName` varchar(100) DEFAULT NULL,
  `pNameWithInitials` varchar(100) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pNicOrPp` varchar(10) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `landLine` int(11) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `gNameTitle` varchar(6) DEFAULT NULL,
  `gName` varchar(100) DEFAULT NULL,
  `gNicOrPp` varchar(10) DEFAULT NULL,
  `gRelationship` varchar(20) DEFAULT NULL,
  `gAddress` varchar(150) DEFAULT NULL,
  `gLandLine` int(11) DEFAULT NULL,
  `gMobile` int(11) DEFAULT NULL,
  `pAvailableStatus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pId`, `pAddDate`, `pAddTime`, `pNameTitle`, `pName`, `pNameWithInitials`, `gender`, `age`, `dob`, `pNicOrPp`, `address`, `landLine`, `mobile`, `nationality`, `gNameTitle`, `gName`, `gNicOrPp`, `gRelationship`, `gAddress`, `gLandLine`, `gMobile`, `pAvailableStatus`) VALUES
('P-100001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('P-100002', '2019-07-19', '00:06:54', 'Mr.', 'Kobikanth', 'Sivakumar Kobikanth', 'Male', 22, '1992-12-29', '921110425V', 'No-10,MalaiMahal Street,\nKallady', 652226558, 776447007, 'Srilankan', 'Mr.', 'Thilak', '941110425V', 'Friend', 'No-20, Kokkuvil,\nJaffna\n', 212052438, 768643815, NULL),
('P-100003', '2016-09-19', '03:51:54', 'Mr.', 'siya', 'hameed', 'Male', 22, '1994-09-06', '941104851V', 'kattankudy', 652248829, 777735190, 'Srilankan', 'Mr.', 'hameed', '123456789V', 'father', 'kattankudy', 652248829, 777735190, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_booking`
--

CREATE TABLE `patient_booking` (
  `booking_id` int(11) NOT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_booking`
--

INSERT INTO `patient_booking` (`booking_id`, `patient_name`, `contact_no`, `gender`, `amount`) VALUES
(1000, 'abcd', '1234567890', 'Male', 5000),
(1001, 'pqrs', '2345678901', 'Male', 25000),
(1002, 'xyz', '3456789012', 'Male', 17000),
(1003, 'jklm', '4567890123', 'Male', 33000),
(1004, 'uvw', '5678901234', 'Male', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payments_id` int(11) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `sub_category` varchar(45) DEFAULT NULL,
  `amount_in` double DEFAULT NULL,
  `amount_out` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payments_id`, `category`, `sub_category`, `amount_in`, `amount_out`, `date`, `staff_id`, `booking_id`) VALUES
(1, 'Patient', 'Baby', 40000, NULL, '2016-09-16', NULL, NULL),
(2, 'Bill Payments', 'Water Bill', 4500, NULL, '2016-08-28', NULL, NULL),
(3, 'Salary', 'Technecians', NULL, 60000, '2016-08-28', NULL, NULL),
(4, 'Salary', 'Nurse', NULL, 25000, '2016-09-15', NULL, NULL),
(5, 'Patient', 'Male', 5000, NULL, '2016-09-15', NULL, NULL),
(6, 'Other', 'Donation', 60000, NULL, '2016-09-15', NULL, NULL),
(7, 'Patient', 'Male', 20000, NULL, '2016-09-17', NULL, NULL),
(8, 'Purchase', 'Pharmacy Drugs', NULL, 2500, '2016-09-17', NULL, NULL),
(10, 'Salary', 'Technecians', NULL, 10000, '2016-09-17', NULL, NULL),
(11, 'Salary', 'Cleaners', NULL, 1500, '2016-09-17', NULL, NULL),
(12, 'Patient', 'Baby', 28000, NULL, '2016-09-18', NULL, NULL),
(13, 'Salary', 'Doctor', NULL, 1750, '2016-09-18', NULL, NULL),
(14, 'Purchase', 'Pharmacy Drugs', NULL, 2300, '2016-09-18', NULL, NULL),
(15, 'Bill Payments', 'Current Bill', NULL, 680, '2016-09-18', NULL, NULL),
(16, 'Other', 'Donation', 7500, NULL, '2016-09-18', NULL, NULL),
(17, 'Patient', 'Male', 2000, NULL, '2016-09-18', NULL, NULL),
(18, 'Other', 'Technician', NULL, 1850, '2016-09-18', NULL, NULL),
(19, 'Patient', 'Female', 28000, NULL, '2016-09-19', NULL, NULL),
(20, 'Salary', 'Nurse', NULL, 1111, '2016-09-19', NULL, NULL),
(21, 'Purchase', 'Pharmacy Drugs', NULL, 1800, '2016-09-19', NULL, NULL),
(22, 'Bill Payments', 'Wi-fi Bill', NULL, 1990, '2016-09-19', NULL, NULL),
(23, 'Other', 'Technician', NULL, 1300, '2016-09-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `physicians`
--

CREATE TABLE `physicians` (
  `pid` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `field` varchar(25) NOT NULL,
  `fee` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `physicians`
--

INSERT INTO `physicians` (`pid`, `fname`, `lname`, `field`, `fee`) VALUES
(1, 'John', 'Smith', 'Gynecology', 1500),
(2, 'Ahmed', 'Kalam', 'Cardiology', 2250),
(3, 'Mohan', 'Lal', 'Neurology', 2500),
(4, 'Thilak', 'Sriskan', 'Musculoskeletal', 1750),
(5, 'Chris', 'Gayle', 'Neurology', 2500),
(6, 'Lisa', 'Sthalakar', 'Pediatrician', 1250),
(7, 'Manen', 'Kannam', 'Pediatrician', 1250),
(8, 'Mathangi', 'Karunakaran', 'Gyenocology', 1500),
(9, 'Kiroshan', 'Thayapran', 'Cardiology', 2250),
(10, 'Mohammed', 'Nifal', 'Pediatrician', 1250);

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `InvoiceID` int(11) NOT NULL,
  `seqno` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemName` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `PricePerUnit` double NOT NULL,
  `SubTotal` double NOT NULL,
  `dtw` varchar(5) DEFAULT NULL,
  `pid` varchar(10) DEFAULT NULL,
  `Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`InvoiceID`, `seqno`, `itemID`, `itemName`, `qty`, `PricePerUnit`, `SubTotal`, `dtw`, `pid`, `Date`) VALUES
(1, 1, 1, 'Panadol__(50mg)', 800, 13.2, 10560, 'false', '', '17/09/2016'),
(2, 1, 1, 'Panadol__(50mg)', 11, 13.2, 145.2, 'true', '111', '17/09/2016'),
(3, 1, 1, 'Panadol__(50mg)', 78, 13.2, 1029.6, 'true', '111', '17/09/2016'),
(4, 1, 1, 'Panadol__(50mg)', 22, 13.2, 290.4, 'true', '2222', '17/09/2016'),
(4, 2, 1, 'Panadol__(50mg)', 12, 13.2, 158.39999999999998, 'true', '2222', '17/09/2016'),
(5, 3, 1, 'Panadol__(50mg)', 777, 13.2, 10256.4, 'true', '789', '17/09/2016'),
(5, 4, 1, 'Panadol__(50mg)', 66, 13.2, 871.1999999999999, 'true', '789', '17/09/2016'),
(6, 1, 1, 'Panadol__(50mg)', 234, 13.2, 3088.7999999999997, 'true', '1234', '17/09/2016'),
(7, 1, 1, 'Panadol__(50mg)', 600, 13.2, 7920, 'false', '', '23/09/2016'),
(8, 1, 3, 'vitamin c__(12)', 500, 13.2, 6600, 'false', '', '23/09/2016'),
(8, 2, 4, 'Revidox__(100mg)', 25, 49.5, 1237.5, 'false', '', '23/09/2016'),
(9, 4, 3, 'vitamin c__(12)', 12, 13.2, 158.39999999999998, 'true', 'P-100001', '23/09/2016'),
(10, 1, 3, 'vitamin c__(12)', 12, 13.2, 158.39999999999998, 'false', '', '23/09/2016'),
(11, 1, 3, 'vitamin c__(12)', 12, 13.2, 158.39999999999998, 'false', '', '23/09/2016'),
(12, 1, 3, 'vitamin c__(12)', 12, 13.2, 158.39999999999998, 'false', '', '23/09/2016'),
(13, 1, 2, 'Prition__(100mg)', 10, 23.1, 231, 'false', '', '23/09/2016'),
(14, 1, 2, 'Prition__(100mg)', 10, 23.1, 231, 'false', '', '19/09/2016'),
(15, 1, 12, 'becosules__(500mg)', 12, 37.4, 448.79999999999995, 'false', '', '19/09/2016'),
(16, 2, 1, 'Panadol__(50mg)', 3, 11, 33, 'false', '', '27/06/2019'),
(16, 3, 3, 'vitamin c__(12)', 3, 13.2, 39.599999999999994, 'false', '', '27/06/2019'),
(16, 4, 4, 'Revidox__(100mg)', 3, 49.5, 148.5, 'false', '', '27/06/2019'),
(17, 1, 2, 'Prition__(100mg)', 50, 23.1, 1155, 'false', '', '19/07/2019'),
(18, 1, 4, 'Revidox__(100mg)', 22, 49.5, 1089, 'false', '', '19/07/2019'),
(19, 1, 1, 'Panadol__(50mg)', 20, 110, 2200, 'false', '', '25/08/2019'),
(20, 1, 1, 'Panadol__(50mg)', 10, 110, 1100, 'false', '', '25/08/2019');

-- --------------------------------------------------------

--
-- Table structure for table `remain`
--

CREATE TABLE `remain` (
  `ID` int(11) NOT NULL,
  `Reg_No` varchar(15) DEFAULT NULL,
  `Licence` date DEFAULT NULL,
  `Insurance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remain`
--

INSERT INTO `remain` (`ID`, `Reg_No`, `Licence`, `Insurance`) VALUES
(4, 'WP AAA-1111', '2016-09-19', '2016-09-21'),
(5, 'WP AAA-1111', '2016-09-19', '2016-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomNo` varchar(8) NOT NULL,
  `roomCategory` varchar(20) DEFAULT NULL,
  `roomType` varchar(10) DEFAULT NULL,
  `roomCharge` double(6,2) DEFAULT NULL,
  `dipositAmount` double(6,2) DEFAULT NULL,
  `admittedDrName` varchar(50) DEFAULT NULL,
  `admittedUnderDrName` varchar(50) DEFAULT NULL,
  `roomAvailabilityStatus` tinyint(1) DEFAULT NULL,
  `pId` varchar(8) DEFAULT NULL,
  `addmittedDate` date DEFAULT NULL,
  `addmittedTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `roomCategory`, `roomType`, `roomCharge`, `dipositAmount`, `admittedDrName`, `admittedUnderDrName`, `roomAvailabilityStatus`, `pId`, `addmittedDate`, `addmittedTime`) VALUES
('bed1', 'ICU', 'SLx', 5000.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('bed2', 'ICU', 'SLx', 5000.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('bed3', 'ICU', 'SLx', 5000.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('bed4', 'ICU', 'SLx', 5000.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Eroom1', 'ETU', 'Std', 1200.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Eroom2', 'ETU', 'Std', 1200.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom1', 'Maternity Ward', 'SLx', 2850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom10', 'Maternity Ward', 'SLx', 2850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom2', 'Maternity Ward', 'SLx', 2850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom3', 'Maternity Ward', 'Std', 2850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom4', 'Maternity Ward', 'Std', 2850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom5', 'Maternity Ward', 'Lx', 3600.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom6', 'Maternity Ward', 'Lx', 3600.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom7', 'Maternity Ward', 'Lx', 3600.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom8', 'Maternity Ward', 'SLx', 2850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('Mroom9', 'Maternity Ward', 'SLx', 2850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room1', 'General Ward', 'SLx', 2100.00, 0.00, NULL, NULL, 1, NULL, NULL, NULL),
('room10', 'General Ward', 'Std', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room11', 'General Ward', 'S/Toilet', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room12', 'General Ward', 'Std', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room13', 'General Ward', 'Std', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room14', 'General Ward', 'Std', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room15', 'General Ward', 'Std', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room16', 'General Ward', 'S/Toilet', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room17', 'General Ward', 'Std', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room18', 'General Ward', 'Lx', 2100.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room19', 'General Ward', 'SLx', 3600.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room2', 'General Ward', 'Lx', 3100.00, 0.00, NULL, NULL, 1, NULL, NULL, NULL),
('room20', 'General Ward', 'S/Toilet', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room21', 'General Ward', 'SLx', 3600.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room22', 'General Ward', 'S/Toilet', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room3', 'General Ward', 'Lx', 2100.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room4', 'General Ward', 'Std', 2100.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room5', 'General Ward', 'Std', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room6', 'General Ward', 'S/Toilet', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room7', 'General Ward', 'Std', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room8', 'General Ward', 'Lx', 2100.00, NULL, NULL, NULL, 1, NULL, NULL, NULL),
('room9', 'General Ward', 'S/Toilet', 1850.00, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `Emp id` varchar(45) NOT NULL,
  `Month` varchar(45) DEFAULT NULL,
  `BasicSalary` varchar(45) DEFAULT NULL,
  `Netsalary` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`Emp id`, `Month`, `BasicSalary`, `Netsalary`) VALUES
('EM1111111', 'feb', '15000', ' 12750.0'),
('EM1111112', 'mar', '18000', '15300.0'),
('EM1111113', 'aprl', '40000', '34000.0');

-- --------------------------------------------------------

--
-- Table structure for table `scan1`
--

CREATE TABLE `scan1` (
  `scan_id` varchar(8) NOT NULL,
  `type_of_scan` varchar(30) DEFAULT NULL,
  `scanned_date` date DEFAULT NULL,
  `ref_phy_name` varchar(100) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `pId` varchar(8) DEFAULT NULL,
  `payment` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scan1`
--

INSERT INTO `scan1` (`scan_id`, `type_of_scan`, `scanned_date`, `ref_phy_name`, `remarks`, `pId`, `payment`) VALUES
('Sc-1006', 'Ultrasound (US)', '2016-08-03', 'Samantha', '', 'P-100001', 3000),
('Sc-1007', 'ElectroCardioGraphy(ECG)', '2016-08-02', 'Namal', 'GOOD', 'P-100001', 2000),
('Sc-1008', 'ElectroCardioGraphy(ECG)', '2016-09-13', 'Kamal', '', 'P-100002', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `scantypedetails`
--

CREATE TABLE `scantypedetails` (
  `ScanID` varchar(8) NOT NULL,
  `ScanName` varchar(40) NOT NULL,
  `scanFee` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scantypedetails`
--

INSERT INTO `scantypedetails` (`ScanID`, `ScanName`, `scanFee`) VALUES
('S-1', 'ElectroCardioGraphy(ECG)', 2000),
('S-2', 'Ultrasound (US)', 3000),
('S-3', 'Magnetic Resonance (MR)', 1500),
('S-4', 'Endoscopy (ES)', 1850),
('S-5', 'Computed Radiography (CR', 2500),
('S-6', 'CT Scan', 1750),
('s-90', 'MRI', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `gender`, `position`, `phone`, `salary`) VALUES
(1000, 'Nifal', 'Mohamed', 'Male', 'Tech', '0770303366', 200000),
(1001, 'Nitha', 'Mohamed', 'Male', 'Dr', '0771919413', 250000),
(1002, 'Nijam', 'Mohamed', 'Male', 'Res', '0778686105', 150000),
(1003, 'Azath', 'Sulthan', 'Male', 'Acc', '0773414234', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `InvoiceNo` int(11) NOT NULL,
  `seqNostock` int(11) NOT NULL,
  `itemName` varchar(40) NOT NULL,
  `addDate` varchar(20) NOT NULL,
  `supplier` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `expDate` varchar(20) NOT NULL,
  `serialNo` varchar(50) NOT NULL,
  `purPrice` double NOT NULL,
  `Value` double NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`InvoiceNo`, `seqNostock`, `itemName`, `addDate`, `supplier`, `quantity`, `expDate`, `serialNo`, `purPrice`, `Value`, `availability`) VALUES
(1, 1, 'Panadol__(50mg)', '17/09/2016', 'State Pharmaceuticals Corporation of Sri Lanka', 1000, '2016-09-24', '11', 12, 12000, 0),
(2, 1, 'Prition__(100mg)', '23/09/2016', 'State Pharmaceuticals Corporation of Sri Lanka', 1000, '2020-09-05', '1001', 21, 21000, 930),
(2, 2, 'vitamin c__(12)', '23/09/2016', 'Aston Pharmaticulars', 1500, '2019-09-07', '2002', 12, 18000, 949),
(2, 3, 'Plaster', '23/09/2016', 'Aston Pharmaticulars', 500, '2020-09-12', '4004', 5, 2500, 500),
(2, 4, 'becosules__(500mg)', '23/09/2016', 'State Pharmaceuticals Corporation of Sri Lanka', 2000, '2019-09-14', '5005', 34, 68000, 1988),
(2, 5, 'Baby Colone', '23/09/2016', 'Johnsons Company pvt ltd', 1250, '2018-09-20', '3003', 123, 153750, 1250),
(3, 1, 'Revidox__(100mg)', '23/09/2016', 'State Pharmaceuticals Corporation of Sri Lanka', 150, '2018-08-15', '6006', 45, 6750, 100),
(4, 1, 'Panadol__(50mg)', '23/09/2016', 'State Pharmaceuticals Corporation of Sri Lanka', 200, '2019-09-19', '7007', 10, 2000, 0),
(4, 2, 'Panadol__(50mg)', '23/09/2016', 'State Pharmaceuticals Corporation of Sri Lanka', 300, '2019-09-06', '7007', 10, 3000, 270),
(5, 1, 'Panadol__(50mg)', '19/09/2016', 'State Pharmaceuticals Corporation of Sri Lanka', 100, '2016-09-22', '1001', 10, 1000, 0),
(6, 1, 'Panadol__(50mg)', '25/08/2019', 'Aston Pharmaticulars', 20, '2019-08-28', '2', 30, 600, 20),
(8, 1, 'Panadol__(50mg)', '25/08/2019', 'Johnsons Company pvt ltd', 1, '2019-08-26', '2', 100, 100, 1),
(9, 1, 'Prition__(100mg)', '25/08/2019', 'Aston Pharmaticulars', 100, '2019-08-31', '2', 2000, 200000, 100),
(9, 2, 'Revidox__(100mg)', '25/08/2019', 'State Pharmaceuticals Corporation of Sri Lanka', 200, '2019-08-27', '2', 300, 60000, 200);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `CompanyID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `TPNumber` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `EmailAddress` varchar(40) NOT NULL,
  `AddedDate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`CompanyID`, `Name`, `TPNumber`, `Address`, `EmailAddress`, `AddedDate`) VALUES
(1, 'State Pharmaceuticals Corporation of Sri Lanka', '0112320356', 'No.75, \nSir Baron Jayathilaka Mawatha,\nColombo 06', 'thilak1994@gmail.com', '11/08/2016'),
(2, 'Aston Pharmaticulars', '0777123456', 'No,22 GalleRoad,\nColombo-06', 'jathu.js1@gmail.com', '26-08-2016'),
(3, 'Johnsons Company pvt ltd', '0112095354', 'No,13\nJampatta Street,\nKotahena.', 'johnsons@gmail.com', '29-08-2016'),
(4, 'abc', '1234567890', 'colombo', 'jathu.js1@gmail.com', '19-09-2016'),
(5, 'Jathushan', '0765486079', 'jaffna', 'jathu.kkjj.@gmail.com', '25-08-2019');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `LAB_REF_NO` int(11) NOT NULL,
  `SPECIMEN_NO` int(11) NOT NULL,
  `SPECIMEN` varchar(50) DEFAULT NULL,
  `SAMPLE_COL_DATE` date DEFAULT NULL,
  `REF_PHY_NAME` varchar(100) DEFAULT NULL,
  `REMARKS` varchar(300) DEFAULT NULL,
  `pId` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`LAB_REF_NO`, `SPECIMEN_NO`, `SPECIMEN`, `SAMPLE_COL_DATE`, `REF_PHY_NAME`, `REMARKS`, `pId`) VALUES
(1001, 54541, 'gygfv', '2016-08-12', 'trddrr', 'ggv', 'P-100001'),
(1002, 67, 'Blood', '2016-09-12', 'Nimal', 'Not Delivered', 'P-100002'),
(1003, 87, 'urine', '2016-05-01', 'Smitht', 'Not Delivered', 'P-100002'),
(1004, 89, 'Blood', '2016-09-01', 'Nimaal', 'Not Delivered', 'P-100002'),
(1005, 56, 'blood', '2016-09-01', 'nimal', 'Not Delivered', 'P-100002');

-- --------------------------------------------------------

--
-- Table structure for table `testcategorydetails`
--

CREATE TABLE `testcategorydetails` (
  `testTypeID` char(5) NOT NULL,
  `typeName` varchar(100) DEFAULT NULL,
  `testFee` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testcategorydetails`
--

INSERT INTO `testcategorydetails` (`testTypeID`, `typeName`, `testFee`) VALUES
('TE100', 'Fasting Blood Sugar', 300),
('TE101', 'Random Cholesterol', 600),
('TE102', 'Urine Full Report', 1000),
('TE103', 'Serum Albumin', 300),
('TE104', 'Glucose Tolerance Test', 400),
('TE105', 'Blood Grouping', 100),
('TE106', 'Pack Cell Volume', 300),
('TE107', 'Haemoglobin(HB)', 300),
('TE108', 'Full Blood Count', 400),
('TE109', 'Hepatitis B Surface Antigen', 500),
('TE110', 'Dengue Antigen', 400),
('TE111', 'Sputum For Gramstrain', 300);

-- --------------------------------------------------------

--
-- Table structure for table `vbrand`
--

CREATE TABLE `vbrand` (
  `BID` int(11) NOT NULL,
  `Brand` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vbrand`
--

INSERT INTO `vbrand` (`BID`, `Brand`) VALUES
(2, 'nishan'),
(1, 'toyota');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `ID` int(11) NOT NULL,
  `Reg_No` varchar(15) NOT NULL,
  `Brand` varchar(25) NOT NULL,
  `Model` varchar(25) NOT NULL,
  `Fuel_type` varchar(25) NOT NULL,
  `ChassisNo` varchar(25) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(10) NOT NULL,
  `DutyStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`ID`, `Reg_No`, `Brand`, `Model`, `Fuel_type`, `ChassisNo`, `Date`, `Status`, `DutyStatus`) VALUES
(13, 'WP AAA-1111', 'BMW', 'i8', 'petrol', 'SIFHIWSEF37R923RY29', '2016-09-18', 'Using', 'Driving'),
(14, 'WP BBB-2222', 'Honda', 'Hince', 'petrol', 'HIKGYI574757687', '2016-09-19', 'Using', 'Driving'),
(15, 'CE CCC-3333', 'Toyota', 'Hz', 'petrol', 'WTW5W46W36W464E6', '2016-09-18', 'Using', 'Ready');

-- --------------------------------------------------------

--
-- Table structure for table `vmaintenance`
--

CREATE TABLE `vmaintenance` (
  `ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Fuel` varchar(6) DEFAULT NULL,
  `Services` varchar(6) DEFAULT NULL,
  `Repairs` varchar(6) DEFAULT NULL,
  `Revenue_License` varchar(6) DEFAULT NULL,
  `Insurance` varchar(6) DEFAULT NULL,
  `Emission_test` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmaintenance`
--

INSERT INTO `vmaintenance` (`ID`, `Date`, `Fuel`, `Services`, `Repairs`, `Revenue_License`, `Insurance`, `Emission_test`) VALUES
(12, '2016-09-18', '2000', '', '', '3000', '5000', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `vmodel`
--

CREATE TABLE `vmodel` (
  `MID` int(11) NOT NULL,
  `Model` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmodel`
--

INSERT INTO `vmodel` (`MID`, `Model`) VALUES
(14, 'GN500'),
(13, 'Hince'),
(11, 'Hz'),
(10, 'i8'),
(12, 'i9');

-- --------------------------------------------------------

--
-- Table structure for table `wardpayment`
--

CREATE TABLE `wardpayment` (
  `paymentId` varchar(20) NOT NULL,
  `pId` varchar(20) DEFAULT NULL,
  `roomNo` varchar(10) DEFAULT NULL,
  `addmittedDate` date DEFAULT NULL,
  `dischargeDate` date DEFAULT NULL,
  `addvancePayment` double(8,2) DEFAULT NULL,
  `totalPayment` double(8,2) DEFAULT NULL,
  `duePayment` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wardpayment`
--

INSERT INTO `wardpayment` (`paymentId`, `pId`, `roomNo`, `addmittedDate`, `dischargeDate`, `addvancePayment`, `totalPayment`, `duePayment`) VALUES
('pay-10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('pay-10001', 'P-100002', 'room2', '2016-09-18', '2016-09-22', 5000.00, 12400.00, 7400.00),
('pay-10002', 'P-100002', 'room1', '2016-09-22', '2016-09-22', 1000.00, 2100.00, 1100.00),
('pay-10003', 'P-100002', 'room1', '2016-09-22', '2016-09-23', 300.00, 2100.00, 1800.00),
('pay-10004', 'P-100002', 'room1', '2016-09-23', '2016-09-23', 1000.00, 2100.00, 1100.00),
('pay-10005', 'P-100002', 'room1', '2016-09-23', '2016-09-23', 1000.00, 2100.00, 1100.00),
('pay-10006', 'P-100002', 'room1', '2016-09-23', '2016-09-23', 1000.00, 2100.00, 1100.00),
('pay-10007', 'P-100002', 'room1', '2016-09-23', '2016-09-23', 1000.00, 2100.00, 1100.00),
('pay-10008', 'P-100002', 'room1', '2016-09-23', '2016-09-23', 1000.00, 2100.00, 1100.00),
('pay-10009', 'P-100002', 'room1', '2016-09-23', '2016-09-23', 1000.00, 2100.00, 1100.00),
('pay-10010', 'P-100002', 'room1', '2016-09-23', '2016-09-23', 1000.00, 2100.00, 1100.00),
('pay-10011', 'P-100002', 'room1', '2016-09-19', '2016-09-19', 1000.00, 2100.00, 1100.00),
('pay-10012', 'P-100002', 'room1', '2016-09-19', '2016-09-19', 1000.00, 2100.00, 1100.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `staff_id_idx` (`staff_id`);

--
-- Indexes for table `balancing`
--
ALTER TABLE `balancing`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `channeling`
--
ALTER TABLE `channeling`
  ADD PRIMARY KEY (`opdID`),
  ADD UNIQUE KEY `opdID` (`opdID`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`childID`),
  ADD UNIQUE KEY `parentID` (`parentID`);

--
-- Indexes for table `consult_details`
--
ALTER TABLE `consult_details`
  ADD PRIMARY KEY (`opdID`),
  ADD UNIQUE KEY `opdID` (`opdID`);

--
-- Indexes for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employeeid_idx` (`Employeeid`);

--
-- Indexes for table `doctor_prescription`
--
ALTER TABLE `doctor_prescription`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `LicenceNo_UNIQUE` (`LicenceNo`);

--
-- Indexes for table `duty`
--
ALTER TABLE `duty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `empleave`
--
ALTER TABLE `empleave`
  ADD PRIMARY KEY (`leveid`),
  ADD KEY `employeeid_idx` (`empid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idEmployee`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `inventory2`
--
ALTER TABLE `inventory2`
  ADD PRIMARY KEY (`IID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `labtests`
--
ALTER TABLE `labtests`
  ADD KEY `fk_lab` (`LAB_REF_NO`);

--
-- Indexes for table `lab_visit`
--
ALTER TABLE `lab_visit`
  ADD PRIMARY KEY (`opdID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_employee`
--
ALTER TABLE `login_employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `loguser`
--
ALTER TABLE `loguser`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `maternity`
--
ALTER TABLE `maternity`
  ADD PRIMARY KEY (`patientID`),
  ADD UNIQUE KEY `patientID` (`patientID`),
  ADD UNIQUE KEY `NIC` (`NIC`),
  ADD UNIQUE KEY `nok_contact` (`nok_contact`),
  ADD UNIQUE KEY `nok_nic_UNIQUE` (`nok_nic`);

--
-- Indexes for table `opd`
--
ALTER TABLE `opd`
  ADD PRIMARY KEY (`opdID`),
  ADD UNIQUE KEY `opdID` (`opdID`);

--
-- Indexes for table `othours`
--
ALTER TABLE `othours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empid_idx` (`empidot`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `patient_booking`
--
ALTER TABLE `patient_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payments_id`),
  ADD KEY `staff_id_idx` (`staff_id`),
  ADD KEY `booking_id_idx` (`booking_id`);

--
-- Indexes for table `physicians`
--
ALTER TABLE `physicians`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`InvoiceID`,`seqno`);

--
-- Indexes for table `remain`
--
ALTER TABLE `remain`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk` (`Reg_No`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomNo`),
  ADD KEY `fk_pIdsiya` (`pId`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`Emp id`);

--
-- Indexes for table `scan1`
--
ALTER TABLE `scan1`
  ADD PRIMARY KEY (`scan_id`),
  ADD KEY `fk_Scan123` (`pId`);

--
-- Indexes for table `scantypedetails`
--
ALTER TABLE `scantypedetails`
  ADD PRIMARY KEY (`ScanID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`InvoiceNo`,`seqNostock`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`LAB_REF_NO`),
  ADD KEY `fk231` (`pId`);

--
-- Indexes for table `testcategorydetails`
--
ALTER TABLE `testcategorydetails`
  ADD PRIMARY KEY (`testTypeID`);

--
-- Indexes for table `vbrand`
--
ALTER TABLE `vbrand`
  ADD PRIMARY KEY (`BID`),
  ADD UNIQUE KEY `Brand_UNIQUE` (`Brand`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Reg_No_UNIQUE` (`Reg_No`);

--
-- Indexes for table `vmaintenance`
--
ALTER TABLE `vmaintenance`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Date_UNIQUE` (`Date`);

--
-- Indexes for table `vmodel`
--
ALTER TABLE `vmodel`
  ADD PRIMARY KEY (`MID`),
  ADD UNIQUE KEY `Model_UNIQUE` (`Model`);

--
-- Indexes for table `wardpayment`
--
ALTER TABLE `wardpayment`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `fkpId` (`pId`),
  ADD KEY `fkroomNo` (`roomNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `childID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `duty`
--
ALTER TABLE `duty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maternity`
--
ALTER TABLE `maternity`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `opd`
--
ALTER TABLE `opd`
  MODIFY `opdID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `physicians`
--
ALTER TABLE `physicians`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `InvoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `remain`
--
ALTER TABLE `remain`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `CompanyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vbrand`
--
ALTER TABLE `vbrand`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vmaintenance`
--
ALTER TABLE `vmaintenance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vmodel`
--
ALTER TABLE `vmodel`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `staff_id1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `consult_details`
--
ALTER TABLE `consult_details`
  ADD CONSTRAINT `consult_details_ibfk_1` FOREIGN KEY (`opdID`) REFERENCES `opd` (`opdID`);

--
-- Constraints for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD CONSTRAINT `employeeid` FOREIGN KEY (`Employeeid`) REFERENCES `login_employee` (`employeeid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `empleave`
--
ALTER TABLE `empleave`
  ADD CONSTRAINT `empid` FOREIGN KEY (`empid`) REFERENCES `employee` (`idEmployee`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `labtests`
--
ALTER TABLE `labtests`
  ADD CONSTRAINT `fk_lab` FOREIGN KEY (`LAB_REF_NO`) REFERENCES `test` (`LAB_REF_NO`);

--
-- Constraints for table `login_employee`
--
ALTER TABLE `login_employee`
  ADD CONSTRAINT `idemployee` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`idEmployee`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `othours`
--
ALTER TABLE `othours`
  ADD CONSTRAINT `empidot` FOREIGN KEY (`empidot`) REFERENCES `employee` (`idEmployee`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `booking_id` FOREIGN KEY (`booking_id`) REFERENCES `patient_booking` (`booking_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `staff_id2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `remain`
--
ALTER TABLE `remain`
  ADD CONSTRAINT `fk` FOREIGN KEY (`Reg_No`) REFERENCES `vehicle` (`Reg_No`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_pIdsiya` FOREIGN KEY (`pId`) REFERENCES `patient` (`pId`);

--
-- Constraints for table `scan1`
--
ALTER TABLE `scan1`
  ADD CONSTRAINT `fk_Scan123` FOREIGN KEY (`pId`) REFERENCES `patient` (`pId`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `fk231` FOREIGN KEY (`pId`) REFERENCES `patient` (`pId`);

--
-- Constraints for table `wardpayment`
--
ALTER TABLE `wardpayment`
  ADD CONSTRAINT `fkpId` FOREIGN KEY (`pId`) REFERENCES `patient` (`pId`),
  ADD CONSTRAINT `fkroomNo` FOREIGN KEY (`roomNo`) REFERENCES `room` (`roomNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
