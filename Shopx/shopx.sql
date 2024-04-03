-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2022 at 07:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopx`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('tnamaye20cs@student.mes.ac.in', 'Tejas@2003');

-- --------------------------------------------------------

--
-- Table structure for table `apple`
--

CREATE TABLE `apple` (
  `d_id` int(11) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `chip` varchar(50) NOT NULL,
  `camera` varchar(50) NOT NULL,
  `device_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apple`
--

INSERT INTO `apple` (`d_id`, `device_name`, `capacity`, `weight`, `chip`, `camera`, `device_price`) VALUES
(1, 'Iphone13', '128GB 256GB 512GB', '140 grams(4.94 ounces)', 'A15 Bionic chip', '102MP', 130900),
(2, 'Iphone 12', '64GB 128GB 256GB', '133 grams (4.70 ounces)', 'A14 Bionic chip', '80MP', 62900),
(3, 'Iphone X', '64GB 128GB 256GB', '135 grams (4.76 ounces)', 'A14 Bionic chip', '80MP', 59999);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `Signup_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `gender` char(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `T` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`b_id`, `b_name`) VALUES
(1, 'Apple'),
(2, 'Oneplus'),
(3, 'IQOO');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `name` char(30) NOT NULL,
  `device_name` varchar(30) NOT NULL,
  `number` int(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Pay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`name`, `device_name`, `number`, `gender`, `address`, `Pay`) VALUES
('XYZ', 'v', 2147483647, 'MALE', ' sdsdad', 0),
('XYZ', 'v', 2147483647, 'MALE', ' sdsdad', 0),
('Tejas', 'Oneplus10', 2147483647, 'MALE', ' b301kamothe', 0),
('Tanvi Kadam', 'IQOO 9', 1654658, 'FEMALE', ' Jungle by Sejal Kadam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `d_price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iqoo`
--

CREATE TABLE `iqoo` (
  `d_id` int(11) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `camera` varchar(50) NOT NULL,
  `device_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iqoo`
--

INSERT INTO `iqoo` (`d_id`, `device_name`, `capacity`, `weight`, `processor`, `camera`, `device_price`) VALUES
(1, 'iQOO 5', '64GB/128GB/256GB', '198g', 'Snapdragon 865 5G', '50MP', 19990),
(2, 'iQOO 6', '64GB/128GB/256GB', '190g', 'Snapdragon 870 5G', '64MP', 33999),
(3, 'iQOO 9', '64GB/128GB/256GB', '185g', 'Snapdragon 8+ Gen 1', '50MP', 42990);

-- --------------------------------------------------------

--
-- Table structure for table `oneplus`
--

CREATE TABLE `oneplus` (
  `d_id` int(11) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `chip` varchar(50) NOT NULL,
  `camera` varchar(50) NOT NULL,
  `device_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oneplus`
--

INSERT INTO `oneplus` (`d_id`, `device_name`, `capacity`, `weight`, `chip`, `camera`, `device_price`) VALUES
(1, 'oneplus 9', '128GB/256GB', '192 g', 'Snapdragon 888 5G', '50MP', 42999),
(2, 'oneplus 10', '128GB/256GB', '182 g', 'Snapdragon 8+ Gen 1', '50MP', 49999),
(3, 'OnePlus 2T', '64GB/128GB/256GB', '190 g', 'Dimensity 1300', '50MP', 28999);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Signup_id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Phone_number` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `upassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`Signup_id`, `name`, `Phone_number`, `email`, `upassword`) VALUES
(8141, 'harshad', 966354678, 'harshad@gmail.com', '555444'),
(8144, 'Sejal Kadam', 12365, 'Sejal@gmail.com', '686868'),
(8149, 'Tanvi Kadam', 5658812, 'tanu@gmail.com', 'tanu123'),
(8150, 'Tejas Namaye', 2147483647, 'namayetejas@gmail.com', '123456'),
(8151, 'Prathamesh Jadhav', 654985, 'Prathamesh@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apple`
--
ALTER TABLE `apple`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD KEY `Signup` (`Signup_id`),
  ADD KEY `Test3` (`device_name`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`d_name`),
  ADD KEY `test2` (`d_id`);

--
-- Indexes for table `iqoo`
--
ALTER TABLE `iqoo`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `oneplus`
--
ALTER TABLE `oneplus`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Signup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apple`
--
ALTER TABLE `apple`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `iqoo`
--
ALTER TABLE `iqoo`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oneplus`
--
ALTER TABLE `oneplus`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `Signup_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8152;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `Signup` FOREIGN KEY (`Signup_id`) REFERENCES `signup` (`Signup_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Test3` FOREIGN KEY (`device_name`) REFERENCES `device` (`d_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device`
--
ALTER TABLE `device`
  ADD CONSTRAINT `test2` FOREIGN KEY (`d_id`) REFERENCES `brand` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
