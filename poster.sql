-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2019 at 03:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poster`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `ID` int(11) NOT NULL,
  `Image` varchar(30) NOT NULL DEFAULT 'default.png',
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`ID`, `Image`, `name`) VALUES
(1, 'grapes.png', 'grapes'),
(2, 'melon.png', 'melon'),
(3, 'watermelon.png', 'watermelon'),
(4, 'tangerine.png', 'tangerine'),
(5, 'lemon.png', 'lemon'),
(6, 'banana.png', 'banana'),
(7, 'pineapple.png', 'pineapple'),
(8, 'redapple.png', 'red apple'),
(9, 'greenapple.png', 'green apple'),
(10, 'pear.png', 'pear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `ID` int(11) NOT NULL,
  `dataID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `Calories` varchar(10) NOT NULL,
  `Carbohydrates` varchar(10) NOT NULL,
  `TotalSugar` varchar(10) NOT NULL,
  `Protein` varchar(10) NOT NULL,
  `TotalFat` varchar(10) NOT NULL,
  `VitaminC` varchar(10) NOT NULL,
  `Calcium` varchar(10) NOT NULL,
  `Iron` varchar(10) NOT NULL,
  `Magnesium` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`ID`, `dataID`, `name`, `Calories`, `Carbohydrates`, `TotalSugar`, `Protein`, `TotalFat`, `VitaminC`, `Calcium`, `Iron`, `Magnesium`) VALUES
(1, 1, 'grapes', '0.69', '0.181', '0.1548', '0.0072', '0.0016', '0.032', '0.1', '0.0036', '0.07'),
(2, 2, 'melon', '0.28', '0.0658', '0.0569', '0.0111', '0.001', '0.218', '0.11', '0.0034', '0.11'),
(3, 3, 'watermelon', '0.3', '0.0755', '0.062', '0.0061', '0.0015', '0.081', '0.07', '0.0024', '0.1'),
(4, 4, 'tangerine', '0.53', '0.1334', '0.1058', '0.0081', '0.0031', '0.267', '0.37', '0.0015', '0.12'),
(5, 5, 'lemon', '0.29', '0.0932', '0.025', '0.011', '0.003', '0.53', '0.26', '0.006', '0.08'),
(6, 6, 'banana', '0.89', '0.2284', '0.1223', '0.0109', '0.0033', '0.087', '0.05', '0.0026', '0.27'),
(7, 7, 'pineapple', '0.5', '0.1312', '0.0985', '0.0054', '0.0012', '0.478', '0.13', '0.0029', '0.12'),
(8, 8, 'red apple', '0.63', '0.1522', '0.1168', '0.002', '0.0018', '0', '0.07', '0.001', '0.05'),
(9, 9, 'green apple', '0.58', '0.1361', '0.0959', '0.0044', '0.0019', '0', '0.05', '0.0015', '0.05'),
(10, 10, 'pear', '0.57', '0.1523', '0.0975', '0.0036', '0.0014', '0.043', '0.09', '0.0018', '0.07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
