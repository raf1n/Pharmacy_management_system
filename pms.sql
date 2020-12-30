-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 10:20 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'admin',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
(2, 'Admin', '01', 'admin@admin.com', '1700000', '$2y$10$n/jBDrVu3IT2uyELQofV2u4FXkCRT5Q2NqsNGq.IVKV1/9YgninfS', 'admin', 'images.png');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'manager',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
(8, 'Rahim', 'Uddin', 'rahim@manager.com', '01700000', '$2y$10$9HtFIKVotoY/zsVtVoT8FOECMz.DdqlP4TOd3FF488ScO2xXHFS0y', 'manager', 'avatar.png'),
(9, 'Fakid', 'Juhas', 'fakid@manager.com', '01700000', '$2y$10$9ZzJwOkSigWXbHTzJlGDT.kapRHQyqfS4CjjgqPQtFo83g5Q51j3u', 'manager', 'avatar.png'),
(10, 'Mahin', 'Mahtab', 'mahin@manager.com', '01700000', '$2y$10$vLrcHjpLmK4uNU2F4idrf.pYRf914csAOEwE2yOyAR2ADltLM9xS.', 'manager', 'avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacists`
--

CREATE TABLE `pharmacists` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'pharmacist',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacists`
--

INSERT INTO `pharmacists` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
(11, 'Farhan', 'Nisshan', 'farhan@pharmacist.com', '01700000', '$2y$10$R2q5MFFIoXJX4ZVgEkNq1eH7g1wkDRvSu.ydUTnssjizNYeI1grYm', 'pharmacist', 'avatar.png'),
(12, 'Iftekhar', 'Ifti', 'ifti@pharmacist.com', '01700000', '$2y$10$hzatPA2.y59A9827b.a9jeAfaDkcdY/OcEbk2/VdceVggLqohHbL2', 'pharmacist', 'avatar.png'),
(13, 'Anas', 'Chowdhury', 'anas@pharmacist.com', '01700000', '$2y$10$LYkkP4/xyZA0Ev.0XBsRIu1dWu60xf0Ip0DoE2GUFpIDgUlvyfuia', 'pharmacist', 'avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `salesmans`
--

CREATE TABLE `salesmans` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'salesman',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesmans`
--

INSERT INTO `salesmans` (`id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
(10, 'Fahim', 'Faisal', 'fahim@salesman.com', '01700000', '$2y$10$DhoCbow2FwRGhSVll9/LkuDgmwBt7l7zZ.s5n6W0S/fbKptQ8.TK6', 'salesman', 'avatar.png'),
(11, 'Rifat', 'Rahman', 'rifat@salesman.com', '01700000', '$2y$10$Rapp36NuOppZ9kuZS6noTu7uI39wKPGoAWxsqqvF459PW/CorTJ0a', 'salesman', 'avatar.png'),
(12, 'Rasim', 'Uddin', 'rasim@salesman.com', '01700000', '$2y$10$ODoAIDpJSL/7D085BUNsuudinAkyci.XbD0xHa5NmthW2127YFQV.', 'salesman', 'avatar.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `salesmans`
--
ALTER TABLE `salesmans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pharmacists`
--
ALTER TABLE `pharmacists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `salesmans`
--
ALTER TABLE `salesmans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
