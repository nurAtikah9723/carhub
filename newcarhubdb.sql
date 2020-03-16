-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2020 at 04:18 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newcarhubdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE `availability` (
  `Carid` int(10) NOT NULL,
  `8a` varchar(10) DEFAULT NULL,
  `9a` varchar(10) DEFAULT NULL,
  `10a` varchar(10) DEFAULT NULL,
  `11a` varchar(10) DEFAULT NULL,
  `12a` varchar(10) DEFAULT NULL,
  `13a` varchar(10) DEFAULT NULL,
  `14a` varchar(10) DEFAULT NULL,
  `15a` varchar(10) DEFAULT NULL,
  `16a` varchar(10) DEFAULT NULL,
  `17a` varchar(10) DEFAULT NULL,
  `18a` varchar(10) DEFAULT NULL,
  `19a` varchar(10) DEFAULT NULL,
  `20a` varchar(10) DEFAULT NULL,
  `21a` varchar(10) DEFAULT NULL,
  `22a` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`Carid`, `8a`, `9a`, `10a`, `11a`, `12a`, `13a`, `14a`, `15a`, `16a`, `17a`, `18a`, `19a`, `20a`, `21a`, `22a`) VALUES
(1, NULL, NULL, 'syazmi', NULL, 'syazmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `Carid` int(10) NOT NULL,
  `Carname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Carbrand` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Cartype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Carseat` int(8) NOT NULL,
  `Cartrans` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Carplate` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(24) NOT NULL,
  `Picture` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `technician` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`Carid`, `Carname`, `Carbrand`, `Cartype`, `Carseat`, `Cartrans`, `Carplate`, `rate`, `Picture`, `technician`) VALUES
(2, 'Camry', 'Toyota', 'Sedan', 4, 'Manual', 'HJQ5688', 20, 'CARtoyotacamry.png', '1'),
(3, 'Civic', 'Honda', 'Sedan', 4, 'Auto', 'JDK3299', 30, 'CARhondacivic.png', '1'),
(4, 'Almera', 'Nissan', 'Sedan', 4, 'Manual', 'HDR1223', 15, 'CARnissanalmera.png', '1'),
(5, 'Alza', 'Perodua', 'MPV', 7, 'Auto', 'JDL1133', 20, 'CARperoduaalza.png', '1'),
(6, 'Bezza', 'Perodua', 'Sedan', 4, 'Auto', 'JDP1993', 25, 'CARperoduabezza.png', '1'),
(7, 'Exora', 'Perodua', 'MPV', 7, 'Manual', 'JDM1299', 17, 'CARperoduaexora.png', '1'),
(8, 'Myvi', 'Perodua', 'Hatchback', 4, 'Auto', 'JDT1997', 45, 'CARperoduamyvi.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ordercar`
--

CREATE TABLE `ordercar` (
  `orderid` int(8) NOT NULL,
  `Cusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Carid` int(8) NOT NULL,
  `duration` int(30) NOT NULL,
  `startTime` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(20) NOT NULL,
  `status` int(3) NOT NULL,
  `endTime` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ordercar`
--

INSERT INTO `ordercar` (`orderid`, `Cusername`, `Carid`, `duration`, `startTime`, `totalprice`, `status`, `endTime`) VALUES
(1, 'syazmi', 1, 3, '8', 30, 0, '11'),
(2, 'syazmi', 1, 1, '21', 10, 0, '22'),
(3, 'syazmi', 6, 2, '12', 50, 0, '14'),
(4, 'syazmi', 2, 4, '8', 80, 0, '12'),
(5, 'syazmi', 1, 1, '12', 10, 1, '13'),
(6, 'syazmi', 1, 1, '10', 10, 1, '11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`) VALUES
(1, 'customer', 'customer', 'customer'),
(2, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`Carid`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`Carid`);

--
-- Indexes for table `ordercar`
--
ALTER TABLE `ordercar`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `Carid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ordercar`
--
ALTER TABLE `ordercar`
  MODIFY `orderid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
