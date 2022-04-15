-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 07:47 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home automation`
--

-- --------------------------------------------------------

--
-- Table structure for table `device_control`
--

CREATE TABLE `device_control` (
  `dis_id` int(25) NOT NULL,
  `location` varchar(50) NOT NULL,
  `power_consumtions` varchar(50) NOT NULL,
  `devices` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_control`
--

INSERT INTO `device_control` (`dis_id`, `location`, `power_consumtions`, `devices`) VALUES
(54198, 'room1', 'mid', 'fan'),
(67358, 'room3', 'high', 'Samsung Ac'),
(91358, 'room4', 'high', 'Hitachi Fridge'),
(100056, 'room1', 'low', 'samsumg galaxy s10');

-- --------------------------------------------------------

--
-- Table structure for table `device_location`
--

CREATE TABLE `device_location` (
  `location` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `room_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_location`
--

INSERT INTO `device_location` (`location`, `longitude`, `room_name`) VALUES
('room1', '4.6735,-0.648', 'harry\'s house'),
('room2', '4.6735,-0.649', 'Kasoul\'s house'),
('room3', '4.6735,-0.648', 'Living Room'),
('room4', '4.6735,-0.650', 'dining room');

-- --------------------------------------------------------

--
-- Table structure for table `device_status`
--

CREATE TABLE `device_status` (
  `dis_id` int(20) NOT NULL,
  `network` varchar(50) DEFAULT NULL,
  `data_uasge` varchar(20) NOT NULL,
  `device_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_status`
--

INSERT INTO `device_status` (`dis_id`, `network`, `data_uasge`, `device_status`) VALUES
(54198, '2.4 Ghz', '100 MB', 'ON'),
(67358, '2.4 Ghz', '170 MB', 'ON'),
(91358, '2.4 Ghz', '75 MB', 'OFF'),
(100056, '2.4 Ghz', '5678 MB', 'ON');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device_control`
--
ALTER TABLE `device_control`
  ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `device_location`
--
ALTER TABLE `device_location`
  ADD PRIMARY KEY (`location`);

--
-- Indexes for table `device_status`
--
ALTER TABLE `device_status`
  ADD PRIMARY KEY (`dis_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
