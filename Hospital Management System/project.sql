-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2020 at 11:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contactNumber` varchar(10) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `bloodGroup` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `anyMajorDisease` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `name`, `contactNumber`, `age`, `gender`, `bloodGroup`, `address`, `anyMajorDisease`) VALUES
('1', 'patient1', '0954', '24', 'Male', 'A+', 'Mtwara', 'Diabets'),
('2', 'somebody', '074553', '3', 'Female', 'O+-', 'Ubungo', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `patientreport`
--

CREATE TABLE `patientreport` (
  `patientID` varchar(10) NOT NULL,
  `symptom` varchar(200) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `medicine` varchar(200) DEFAULT NULL,
  `wardReq` varchar(5) DEFAULT NULL,
  `typeWard` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientreport`
--

INSERT INTO `patientreport` (`patientID`, `symptom`, `diagnosis`, `medicine`, `wardReq`, `typeWard`) VALUES
('1', 'dizyness', 'normal', 'none', 'YES', 'General');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `patientreport`
--
ALTER TABLE `patientreport`
  ADD PRIMARY KEY (`patientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
