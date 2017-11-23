-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-23 02:06:50
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
-- Database: `ofbiztenant`
--

-- --------------------------------------------------------

--
-- 表的结构 `tenant`
--

CREATE TABLE `tenant` (
  `TENANT_ID` varchar(20) NOT NULL,
  `TENANT_NAME` varchar(100) DEFAULT NULL,
  `DOMAIN_NAME` varchar(255) DEFAULT NULL,
  `INITIAL_PATH` varchar(255) DEFAULT NULL,
  `DISABLED` char(1) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tenant`
--

INSERT INTO `tenant` (`TENANT_ID`, `TENANT_NAME`, `DOMAIN_NAME`, `INITIAL_PATH`, `DISABLED`, `LAST_UPDATED_STAMP`, `LAST_UPDATED_TX_STAMP`, `CREATED_STAMP`, `CREATED_TX_STAMP`) VALUES
('DEMO1', 'Demo Tenant One', NULL, NULL, NULL, '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09'),
('DEMO2', 'Demo Tenant Two', NULL, NULL, NULL, '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09');

-- --------------------------------------------------------

--
-- 表的结构 `tenant_data_source`
--

CREATE TABLE `tenant_data_source` (
  `TENANT_ID` varchar(20) NOT NULL,
  `ENTITY_GROUP_NAME` varchar(100) NOT NULL,
  `JDBC_URI` varchar(255) DEFAULT NULL,
  `JDBC_USERNAME` varchar(255) DEFAULT NULL,
  `JDBC_PASSWORD` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tenant_data_source`
--

INSERT INTO `tenant_data_source` (`TENANT_ID`, `ENTITY_GROUP_NAME`, `JDBC_URI`, `JDBC_USERNAME`, `JDBC_PASSWORD`, `LAST_UPDATED_STAMP`, `LAST_UPDATED_TX_STAMP`, `CREATED_STAMP`, `CREATED_TX_STAMP`) VALUES
('DEMO1', 'org.ofbiz', 'jdbc:derby:ofbiz_DEMO1;create=true', 'ofbiz', 'ofbiz', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09'),
('DEMO1', 'org.ofbiz.olap', 'jdbc:derby:ofbizolap_DEMO1;create=true', 'ofbiz', 'ofbiz', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09'),
('DEMO2', 'org.ofbiz', 'jdbc:derby:ofbiz_DEMO2;create=true', 'ofbiz', 'ofbiz', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09'),
('DEMO2', 'org.ofbiz.olap', 'jdbc:derby:ofbizolap_DEMO2;create=true', 'ofbiz', 'ofbiz', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09', '2017-10-22 00:56:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`TENANT_ID`),
  ADD KEY `TENANT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  ADD KEY `TENANT_TXCRTS` (`CREATED_TX_STAMP`);

--
-- Indexes for table `tenant_data_source`
--
ALTER TABLE `tenant_data_source`
  ADD PRIMARY KEY (`TENANT_ID`,`ENTITY_GROUP_NAME`),
  ADD KEY `TNTDTSRC_TNT` (`TENANT_ID`),
  ADD KEY `TNNT_DT_SRC_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  ADD KEY `TNNT_DT_SRC_TXCRTS` (`CREATED_TX_STAMP`);

--
-- 限制导出的表
--

--
-- 限制表 `tenant_data_source`
--
ALTER TABLE `tenant_data_source`
  ADD CONSTRAINT `TNTDTSRC_TNT` FOREIGN KEY (`TENANT_ID`) REFERENCES `tenant` (`TENANT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
