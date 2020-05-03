-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 06:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentId` int(10) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `doctor_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contactNum` varchar(45) DEFAULT NULL,
  `Hospital_Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentId`, `Name`, `date`, `time`, `doctor_name`, `email`, `contactNum`, `Hospital_Name`) VALUES
(10, 'Sudaraka Ampemohotti', '2020-04-16', '0730', 'Dr Namal', 'sudaraka@gmail.com', '0768779530', 'Browns Hospital'),
(11, 'Pasindu perera', '2020-05-16', '0830', 'Dr Kamal Jayasena', 'pasindu@gmail.com', '0718779530', 'Nawaloke Hospital'),
(13, 'Oshan Weerasinghe', '2020-05-03', '0430', 'Dr Shamila Perera', 'oshan@gmail.com', '0728774321', 'Suwa Siri Hospital');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
