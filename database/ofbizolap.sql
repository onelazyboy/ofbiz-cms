-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-23 02:06:31
-- 服务器版本： 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofbizolap`
--

-- --------------------------------------------------------

--
-- 表的结构 `currency_dimension`
--

CREATE TABLE `currency_dimension` (
  `DIMENSION_ID` varchar(20) NOT NULL,
  `CURRENCY_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `currency_dimension`
--

INSERT INTO `currency_dimension` (`DIMENSION_ID`, `CURRENCY_ID`, `DESCRIPTION`, `LAST_UPDATED_STAMP`, `LAST_UPDATED_TX_STAMP`, `CREATED_STAMP`, `CREATED_TX_STAMP`) VALUES
('_NA_', NULL, 'Currency Not Set.', '2017-10-22 00:56:05', '2017-10-22 00:56:05', '2017-10-22 00:56:05', '2017-10-22 00:56:05'),
('_NF_', NULL, 'Currency Not Found.', '2017-10-22 00:56:05', '2017-10-22 00:56:05', '2017-10-22 00:56:05', '2017-10-22 00:56:05');

-- --------------------------------------------------------

--
-- 表的结构 `date_dimension`
--

CREATE TABLE `date_dimension` (
  `DIMENSION_ID` varchar(20) NOT NULL,
  `DATE_VALUE` date DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DAY_NAME` varchar(60) DEFAULT NULL,
  `DAY_OF_MONTH` decimal(20,0) DEFAULT NULL,
  `DAY_OF_YEAR` decimal(20,0) DEFAULT NULL,
  `MONTH_NAME` varchar(60) DEFAULT NULL,
  `MONTH_OF_YEAR` decimal(20,0) DEFAULT NULL,
  `YEAR_NAME` decimal(20,0) DEFAULT NULL,
  `WEEK_OF_MONTH` decimal(20,0) DEFAULT NULL,
  `WEEK_OF_YEAR` decimal(20,0) DEFAULT NULL,
  `YEAR_MONTH_DAY` varchar(60) DEFAULT NULL,
  `YEAR_AND_MONTH` varchar(60) DEFAULT NULL,
  `WEEKDAY_TYPE` varchar(60) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `date_dimension`
--

INSERT INTO `date_dimension` (`DIMENSION_ID`, `DATE_VALUE`, `DESCRIPTION`, `DAY_NAME`, `DAY_OF_MONTH`, `DAY_OF_YEAR`, `MONTH_NAME`, `MONTH_OF_YEAR`, `YEAR_NAME`, `WEEK_OF_MONTH`, `WEEK_OF_YEAR`, `YEAR_MONTH_DAY`, `YEAR_AND_MONTH`, `WEEKDAY_TYPE`, `LAST_UPDATED_STAMP`, `LAST_UPDATED_TX_STAMP`, `CREATED_STAMP`, `CREATED_TX_STAMP`) VALUES
('_NA_', NULL, 'Date Not Set.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-22 00:56:05', '2017-10-22 00:56:05', '2017-10-22 00:56:05', '2017-10-22 00:56:05'),
('_NF_', NULL, 'Date Not Found.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-22 00:56:05', '2017-10-22 00:56:05', '2017-10-22 00:56:05', '2017-10-22 00:56:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency_dimension`
--
ALTER TABLE `currency_dimension`
  ADD PRIMARY KEY (`DIMENSION_ID`),
  ADD KEY `CRRNC_DMNSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  ADD KEY `CRRNC_DMNSN_TXCRTS` (`CREATED_TX_STAMP`);

--
-- Indexes for table `date_dimension`
--
ALTER TABLE `date_dimension`
  ADD PRIMARY KEY (`DIMENSION_ID`),
  ADD KEY `DT_DMNSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  ADD KEY `DT_DMNSN_TXCRTS` (`CREATED_TX_STAMP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;