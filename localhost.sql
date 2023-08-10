-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2023 at 04:47 AM
-- Server version: 5.7.39
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madam_foods`
--
CREATE DATABASE IF NOT EXISTS `madam_foods` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `madam_foods`;

-- --------------------------------------------------------

--
-- Table structure for table `log_user`
--

CREATE TABLE `log_user` (
  `id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `sdate` int(11) NOT NULL,
  `expire` int(11) NOT NULL,
  `del` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_user`
--

INSERT INTO `log_user` (`id`, `token`, `username`, `sdate`, `expire`, `del`) VALUES
(11, 'ZGFtLG1hZGFtICwxNjkxNTY0MjE0LDE2OTE2MDc0MTQ=', 'dam', 1691564214, 1691607414, 1),
(10, 'ZGFtLG1hZGFtICwxNjkxNTY0MjEyLDE2OTE2MDc0MTI=', 'dam', 1691564212, 1691607412, 1),
(9, 'ZGFtLG1hZGFtICwxNjkxNTY0MjA1LDE2OTE2MDc0MDU=', 'dam', 1691564205, 1691607405, 1),
(8, 'ZGFtLG1hZGFtICwxNjkxNTYzNjE4LDE2OTE2MDY4MTg=', 'dam', 1691563618, 1691606818, 1),
(12, 'ZGFtLG1hZGFtICwxNjkxNTY0MjE1LDE2OTE2MDc0MTU=', 'dam', 1691564215, 1691607415, 1),
(13, 'ZGFtLG1hZGFtICwxNjkxNTY0MjM5LDE2OTE2MDc0Mzk=', 'dam', 1691564239, 1691607439, 1),
(14, 'ZGFtLG1hZGFtICwxNjkxNTY0Mjk3LDE2OTE2MDc0OTc=', 'dam', 1691564297, 1691607497, 1),
(15, 'ZGFtLG1hZGFtICwxNjkxNTY0MzU4LDE2OTE2MDc1NTg=', 'dam', 1691564358, 1691607558, 1),
(16, 'ZGFtLG1hZGFtICwxNjkxNTY0NTUxLDE2OTE2MDc3NTE=', 'dam', 1691564551, 1691607751, 1),
(17, 'ZGFtLG1hZGFtICwxNjkxNTY1MDIzLDE2OTE2MDgyMjM=', 'dam', 1691565023, 1691608223, 1),
(18, 'ZGFtLG1hZGFtICwxNjkxNTY1MTQ3LDE2OTE2MDgzNDc=', 'dam', 1691565147, 1691608347, 1),
(19, 'ZGFtLG1hZGFtICwxNjkxNTY1MzE1LDE2OTE2MDg1MTU=', 'dam', 1691565315, 1691608515, 1),
(20, 'ZGFtLG1hZGFtICwxNjkxNTY1MzY3LDE2OTE2MDg1Njc=', 'dam', 1691565367, 1691608567, 1),
(21, 'ZGFtLG1hZGFtICwxNjkxNTY1NDk2LDE2OTE2MDg2OTY=', 'dam', 1691565496, 1691608696, 1),
(22, 'ZGFtLG1hZGFtICwxNjkxNTY1NTY5LDE2OTE2MDg3Njk=', 'dam', 1691565569, 1691608769, 1),
(23, 'ZGFtLG1hZGFtICwxNjkxNTY1Njc5LDE2OTE2MDg4Nzk=', 'dam', 1691565679, 1691608879, 1),
(24, 'ZGFtLG1hZGFtICwxNjkxNTY1ODI2LDE2OTE2MDkwMjY=', 'dam', 1691565826, 1691609026, 1),
(25, 'ZGFtLG1hZGFtICwxNjkxNTY1ODY1LDE2OTE2MDkwNjU=', 'dam', 1691565865, 1691609065, 1),
(26, 'ZGFtLG1hZGFtICwxNjkxNTY2MTA2LDE2OTE2MDkzMDY=', 'dam', 1691566106, 1691609306, 1),
(27, 'ZGFtLG1hZGFtICwxNjkxNTY2NjU3LDE2OTE2MDk4NTc=', 'dam', 1691566657, 1691609857, 1),
(28, 'ZGFtLG1hZGFtICwxNjkxNjMzNjg0LDE2OTE2NzY4ODQ=', 'dam', 1691633684, 1691676884, 0),
(29, 'ZGFtLG1hZGFtICwxNjkxNjM2MjExLDE2OTE2Nzk0MTE=', 'dam', 1691636211, 1691679411, 0),
(30, 'ZGFtLG1hZGFtICwxNjkxNjQxNjY1LDE2OTE2ODQ4NjU=', 'dam', 1691641665, 1691684865, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pgroup`
--

CREATE TABLE `pgroup` (
  `id` int(11) NOT NULL,
  `pgroupid` varchar(10) NOT NULL,
  `pgroupname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pcode` varchar(25) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `pgroup` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pcode`, `pname`, `price`, `cost`, `pgroup`) VALUES
(1, '01001', 'ทดสอบๅ', '50.00', '30.00', '1'),
(2, '01002', 'ทดสอบ2', '50.00', '30.00', '1'),
(3, '02001', 'ทดสอบ3', '50.00', '30.00', '2'),
(4, '02002', 'ทดสอบ4', '50.00', '30.00', '2'),
(5, '03001', 'หมูสะเต๊ะ', '120000.00', '50.00', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `tableid` varchar(10) NOT NULL,
  `tablename` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `tableid`, `tablename`) VALUES
(1, '1', '1'),
(2, '2', '2'),
(3, '3', '3'),
(4, '4', '4'),
(5, '5', '5'),
(6, '6', '6'),
(7, '7', '7'),
(8, '8', '8'),
(9, '9', '9'),
(10, '10', '10'),
(11, '11', '11'),
(12, '12', '12'),
(13, '13', '13'),
(14, '14', '14'),
(15, '15', '15'),
(16, '16', '16');

-- --------------------------------------------------------

--
-- Table structure for table `tr_order`
--

CREATE TABLE `tr_order` (
  `id` int(11) NOT NULL,
  `tableid` varchar(10) NOT NULL,
  `productid` varchar(25) NOT NULL,
  `qty` tinyint(4) NOT NULL,
  `or_date` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `payed` int(11) NOT NULL,
  `paydate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `pws` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `pws`, `username`) VALUES
(1, 'dam', 'dam', 'madam ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_user`
--
ALTER TABLE `log_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `pgroup`
--
ALTER TABLE `pgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pgroupid` (`pgroupid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`pcode`),
  ADD KEY `pgroup` (`pgroup`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tableid` (`tableid`);

--
-- Indexes for table `tr_order`
--
ALTER TABLE `tr_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tableid` (`tableid`),
  ADD KEY `productid` (`productid`),
  ADD KEY `or_date` (`or_date`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_user`
--
ALTER TABLE `log_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pgroup`
--
ALTER TABLE `pgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tr_order`
--
ALTER TABLE `tr_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
