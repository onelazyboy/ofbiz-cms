-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: ofbiz
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ofbiz`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ofbiz` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `ofbiz`;

--
-- Table structure for table `browser_type`
--

DROP TABLE IF EXISTS `browser_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `browser_type` (
  `BROWSER_TYPE_ID` varchar(20) NOT NULL,
  `BROWSER_NAME` varchar(100) DEFAULT NULL,
  `BROWSER_VERSION` varchar(10) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`BROWSER_TYPE_ID`),
  KEY `BRWSR_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `BRWSR_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browser_type`
--

LOCK TABLES `browser_type` WRITE;
/*!40000 ALTER TABLE `browser_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `browser_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalina_session`
--

DROP TABLE IF EXISTS `catalina_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalina_session` (
  `SESSION_ID` varchar(60) NOT NULL,
  `SESSION_SIZE` decimal(20,0) DEFAULT NULL,
  `SESSION_INFO` longblob,
  `IS_VALID` char(1) DEFAULT NULL,
  `MAX_IDLE` decimal(20,0) DEFAULT NULL,
  `LAST_ACCESSED` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`),
  KEY `CTLN_SSSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CTLN_SSSN_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalina_session`
--

LOCK TABLES `catalina_session` WRITE;
/*!40000 ALTER TABLE `catalina_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalina_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_advertise`
--

DROP TABLE IF EXISTS `cms_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_advertise` (
  `AD_ID` varchar(20) NOT NULL,
  `AD_NAME` varchar(100) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FROM_DATE` datetime DEFAULT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `AD_TYPE_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`AD_ID`),
  KEY `CA_TYP` (`AD_TYPE_ID`),
  KEY `CMS_ADVRTS_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_ADVRTS_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `CA_TYP` FOREIGN KEY (`AD_TYPE_ID`) REFERENCES `cms_advertise_type` (`AD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_advertise`
--

LOCK TABLES `cms_advertise` WRITE;
/*!40000 ALTER TABLE `cms_advertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_advertise_type`
--

DROP TABLE IF EXISTS `cms_advertise_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_advertise_type` (
  `AD_TYPE_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(60) DEFAULT NULL,
  `SEQUENCE_ID` varchar(10) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`AD_TYPE_ID`),
  KEY `CMS_ADVRS_TP_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_ADVRS_TP_TXCRS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_advertise_type`
--

LOCK TABLES `cms_advertise_type` WRITE;
/*!40000 ALTER TABLE `cms_advertise_type` DISABLE KEYS */;
INSERT INTO `cms_advertise_type` VALUES ('9101','底部广告','01','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('9102','中部广告','02','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('9103','顶部广告','03','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `cms_advertise_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article`
--

DROP TABLE IF EXISTS `cms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article` (
  `ARTICLE_ID` varchar(20) NOT NULL,
  `ARTICLE_TYPE_ID` varchar(20) DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `CATALOG_ID` varchar(20) DEFAULT NULL,
  `WEBSITE_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `CONTENT` longtext,
  `AUTHOR` varchar(100) DEFAULT NULL,
  `VISIT_TOTAL` varchar(100) DEFAULT NULL,
  `SHORT_TITLE` varchar(100) DEFAULT NULL,
  `TITLE_COLOR` varchar(100) DEFAULT NULL,
  `TITLE_IMG` varchar(100) DEFAULT NULL,
  `CONTENT_IMG` varchar(100) DEFAULT NULL,
  `TAGS` varchar(100) DEFAULT NULL,
  `ORIGIN` varchar(100) DEFAULT NULL,
  `RELEASE_DATE` date DEFAULT NULL,
  `RELEASE_SYS_DATE` date DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `DISABLE_TIME` datetime DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `ALLOW_COMMENT` varchar(10) DEFAULT NULL,
  `COMMENT_COUNT` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ARTICLE_ID`),
  KEY `CARTI_TYP` (`ARTICLE_TYPE_ID`),
  KEY `CCA_CATA` (`CATALOG_ID`),
  KEY `CARTI_WSITE` (`WEBSITE_ID`),
  KEY `CMS_ARTICLE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_ARTICLE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `CARTI_TYP` FOREIGN KEY (`ARTICLE_TYPE_ID`) REFERENCES `cms_article_type` (`ARTICLE_TYPE_ID`),
  CONSTRAINT `CARTI_WSITE` FOREIGN KEY (`WEBSITE_ID`) REFERENCES `cms_web_site` (`WEBSITE_ID`),
  CONSTRAINT `CCA_CATA` FOREIGN KEY (`CATALOG_ID`) REFERENCES `cms_catalog` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article`
--

LOCK TABLES `cms_article` WRITE;
/*!40000 ALTER TABLE `cms_article` DISABLE KEYS */;
INSERT INTO `cms_article` VALUES ('9501','default','CAST_APPROVED','9301','default','描述','文章标题1',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9502','default','CAST_APPROVED','9301','default','描述','文章标题2',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9503','default','CAST_APPROVED','9301','default','描述','文章标题3',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9504','default','CAST_APPROVED','9302','default','描述','文章标题4',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9505','default','CAST_APPROVED','9302','default','描述','文章标题5',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9506','default','CAST_APPROVED','9303','default','描述','文章标题6',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9507','default','CAST_APPROVED','9304','default','描述','文章标题7',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9508','picture','CAST_APPROVED','9304','default','描述','文章标题8',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9509','picture','CAST_APPROVED','9304','default','描述','文章标题9',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9510','focus','CAST_APPROVED','9304','default','描述','文章标题10',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9511','focus','CAST_APPROVED','9304','default','描述','文章标题11',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9512','focus','CAST_APPROVED','9304','default','描述','文章标题12',NULL,'作者','100','简短标题','标题颜色','name',NULL,'标记，类似关键字','来源','2011-12-12','2011-12-12','2011-12-12 12:12:00','2011-12-13 12:12:00',NULL,'Y',0,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `cms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article_product`
--

DROP TABLE IF EXISTS `cms_article_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article_product` (
  `PRODUCT_ID` varchar(20) NOT NULL,
  `PRODUCT_NAME` varchar(100) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `FROM_DATE` datetime DEFAULT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `PRODUCT_TYPE_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `CMS_ARTL_PRT_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_ARTL_PRT_TXCRS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article_product`
--

LOCK TABLES `cms_article_product` WRITE;
/*!40000 ALTER TABLE `cms_article_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_article_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article_type`
--

DROP TABLE IF EXISTS `cms_article_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article_type` (
  `ARTICLE_TYPE_ID` varchar(20) NOT NULL,
  `DISPLAY_NAME` varchar(60) DEFAULT NULL,
  `DISPLAY_LEVEL` varchar(10) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ARTICLE_TYPE_ID`),
  KEY `CMS_ARTL_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_ARTL_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article_type`
--

LOCK TABLES `cms_article_type` WRITE;
/*!40000 ALTER TABLE `cms_article_type` DISABLE KEYS */;
INSERT INTO `cms_article_type` VALUES ('default','普通文章','01','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('focus','焦点图','03','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('picture','精彩图文','02','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `cms_article_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_calendar_events`
--

DROP TABLE IF EXISTS `cms_calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_calendar_events` (
  `EVENT_ID` varchar(20) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `EVENT_TIME` varchar(60) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `EVENT_TYPE_ID` varchar(20) DEFAULT NULL,
  `SHORT_TITLE` varchar(255) DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `START_TIME` varchar(20) DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`EVENT_ID`),
  KEY `CMS_CLNR_EVS_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_CLNR_EVS_TXCRS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_calendar_events`
--

LOCK TABLES `cms_calendar_events` WRITE;
/*!40000 ALTER TABLE `cms_calendar_events` DISABLE KEYS */;
INSERT INTO `cms_calendar_events` VALUES ('9501','标题','18:30','行政大楼一楼梯教','CAL_01','香港今日亚洲交易有限公司上海','香港今日亚洲交易有限公司上海代表处','2011-09-02','admin','CAL_IMPLEMENTED','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9502','标题','18:30','行政大楼一楼梯教','CAL_01','香港今日亚洲交易有限公司上海','香港今日亚洲交易有限公司上海代表处','2011-09-02','admin','CAL_IMPLEMENTED','2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('9503','标题','18:30','行政大楼一楼梯教','CAL_01','香港今日亚洲交易有限公司上海','香港今日亚洲交易有限公司上海代表处香港今日亚洲交易有限公司上海代表处','2011-09-03','admin','CAL_IMPLEMENTED','2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('9504','标题','18:30','行政大楼一楼梯教','CAL_01','香港今日亚洲交易有限公司上海代表处','香港今日亚洲交易有限公司上海代表处香港今日亚洲交易有限公司上海代表处','2011-09-04','admin','CAL_IMPLEMENTED','2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('9505','标题','18:30','行政大楼一楼梯教','CAL_01','香港今日亚洲交易有限公司上海代表处','香港今日亚洲交易有限公司上海代表处香港今日亚洲交易有限公司上海代表处','2011-09-12','admin','CAL_IMPLEMENTED','2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('9506','标题','18:30','行政大楼一楼梯教','CAL_01','香港今日亚洲交易有限公司上海代表处','香港今日亚洲交易有限公司上海代表处香港今日亚洲交易有限公司上海代表处','2011-09-12','admin','CAL_IMPLEMENTED','2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('9507','标题','18:30','行政大楼一楼梯教','CAL_01','香港今日亚洲交易有限公司上海代表处','香港今日亚洲交易有限公司上海代表处香港今日亚洲交易有限公司上海代表处','2011-09-07','admin','CAL_IMPLEMENTED','2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('9508','标题','18:30','行政大楼一楼梯教','CAL_01','香港今日亚洲交易有限公司上海代表处','香港今日亚洲交易有限公司上海代表处香港今日亚洲交易有限公司上海代表处','2011-09-02','admin','_CANCELLED','2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `cms_calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_catalog`
--

DROP TABLE IF EXISTS `cms_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_catalog` (
  `CATALOG_ID` varchar(20) NOT NULL,
  `CATALOG_TYPE_ID` varchar(20) DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `WEBSITE_ID` varchar(20) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `CATALOG_PATH` varchar(255) DEFAULT NULL,
  `CATALOG_NAME` varchar(100) DEFAULT NULL,
  `CONTENT` varchar(100) DEFAULT NULL,
  `TITLE_IMG` varchar(100) DEFAULT NULL,
  `CONTENT_IMG` varchar(100) DEFAULT NULL,
  `TPL_INDEX` varchar(100) DEFAULT NULL,
  `TPL_CONTENT` varchar(100) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `KEYWORDS` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `IS_DISPLAY` varchar(10) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`CATALOG_ID`),
  KEY `CCATA_WSITE` (`WEBSITE_ID`),
  KEY `CMS_CATALOG_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_CATALOG_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `CCATA_WSITE` FOREIGN KEY (`WEBSITE_ID`) REFERENCES `cms_web_site` (`WEBSITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_catalog`
--

LOCK TABLES `cms_catalog` WRITE;
/*!40000 ALTER TABLE `cms_catalog` DISABLE KEYS */;
INSERT INTO `cms_catalog` VALUES ('9301','Artile','Y','default',NULL,NULL,'新闻',NULL,NULL,NULL,NULL,NULL,'标题','新闻','描述','Y','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9302','Artile','Y','default',NULL,NULL,'军事',NULL,NULL,NULL,NULL,NULL,'标题','新闻','描述','Y','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9303','Artile','Y','default',NULL,NULL,'科技',NULL,NULL,NULL,NULL,NULL,'标题','新闻','描述','Y','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9304','Artile','Y','default',NULL,NULL,'财经',NULL,NULL,NULL,NULL,NULL,'标题','新闻','描述','Y','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9305','Artile','Y','default',NULL,NULL,'娱乐',NULL,NULL,NULL,NULL,NULL,'标题','新闻','描述','Y','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9306','Artile','Y','default',NULL,'ViewCatalog?id=9306','体育',NULL,NULL,NULL,NULL,NULL,'标题','新闻','描述','Y','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('9307','Artile','Y','default',NULL,'ViewCatalog?id=9307','房产',NULL,NULL,NULL,NULL,NULL,'标题','新闻','描述','Y','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `cms_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_display_events`
--

DROP TABLE IF EXISTS `cms_display_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_display_events` (
  `SHORT_TITLE` varchar(255) DEFAULT NULL,
  `CONTENT` longtext,
  `START_TIME` varchar(20) NOT NULL,
  `EVENT_NUMBER` varchar(10) DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`START_TIME`),
  KEY `CMS_DSL_EVNS_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_DSL_EVNS_TXCRS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_display_events`
--

LOCK TABLES `cms_display_events` WRITE;
/*!40000 ALTER TABLE `cms_display_events` DISABLE KEYS */;
INSERT INTO `cms_display_events` VALUES ('comment','18:30<br>一楼梯教<br>亚洲交易有限公司','2011-09-04','2',NULL,'2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('comment','18:30<br>梯教<br>交易有限公司上海','2011-09-08','2',NULL,'2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('comment','18:30<br>大楼一楼梯教<br>上海交易有限公司','2011-09-12','1',NULL,'2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('comment','18:30<br>行政大楼一楼梯教<br>yyy有限公司','2011-09-18','4',NULL,'2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('comment','09:30<br>大楼一楼梯教<br>香港亚洲交易有限公司<br>18:30<br>行政大楼一楼梯教<br>xxx有限公司','2011-09-20','3',NULL,'2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('comment','18:30<br>行政大楼一楼梯教<br>xxx有限公司','2011-09-24','2',NULL,'2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09'),('comment','18:30<br>大楼一楼梯教<br>香港d公司上海','2011-09-28','1',NULL,'2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `cms_display_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_fellowship_link`
--

DROP TABLE IF EXISTS `cms_fellowship_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_fellowship_link` (
  `LINK_ID` varchar(20) NOT NULL,
  `LINK_NAME` varchar(100) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `FROM_DATE` datetime DEFAULT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `LINK_TYPE_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`LINK_ID`),
  KEY `FL_TYP` (`LINK_TYPE_ID`),
  KEY `CMS_FLLWP_LNK_TXSP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_FLLWP_LNK_TXCS` (`CREATED_TX_STAMP`),
  CONSTRAINT `FL_TYP` FOREIGN KEY (`LINK_TYPE_ID`) REFERENCES `cms_fellowship_link_type` (`LINK_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_fellowship_link`
--

LOCK TABLES `cms_fellowship_link` WRITE;
/*!40000 ALTER TABLE `cms_fellowship_link` DISABLE KEYS */;
INSERT INTO `cms_fellowship_link` VALUES ('1','OFBiz','http://code.google.com/p/ofbiz-cms/',NULL,NULL,NULL,'Y','1','2017-10-22 00:56:10','2017-10-22 00:56:09','2017-10-22 00:56:10','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `cms_fellowship_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_fellowship_link_type`
--

DROP TABLE IF EXISTS `cms_fellowship_link_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_fellowship_link_type` (
  `LINK_TYPE_ID` varchar(20) NOT NULL,
  `DISPLAY_NAME` varchar(60) DEFAULT NULL,
  `DISPLAY_LEVEL` varchar(10) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`LINK_TYPE_ID`),
  KEY `CMS_FLP_LNK_TP_TXP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_FLP_LNK_TP_TXS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_fellowship_link_type`
--

LOCK TABLES `cms_fellowship_link_type` WRITE;
/*!40000 ALTER TABLE `cms_fellowship_link_type` DISABLE KEYS */;
INSERT INTO `cms_fellowship_link_type` VALUES ('1','友情连接','1','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('2','站内连接','2','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `cms_fellowship_link_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_leaveword`
--

DROP TABLE IF EXISTS `cms_leaveword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_leaveword` (
  `LEAVEWORD_ID` varchar(20) NOT NULL,
  `WEBSITE_ID` varchar(20) DEFAULT NULL,
  `MEMBER_ID` varchar(20) DEFAULT NULL,
  `ADMIN_ID` varchar(20) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  `CONTENT_MEMBER` longtext,
  `CONTENT_ADMIN` longtext,
  `CREATE_TIME` datetime DEFAULT NULL,
  `REPLAY_TIME` datetime DEFAULT NULL,
  `IP` longtext,
  `IS_RECOMMEND` varchar(10) DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `COMMENT_NEED_CHECK` varchar(10) DEFAULT NULL,
  `COMMENT_NEED_LOGIN` varchar(10) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`LEAVEWORD_ID`),
  KEY `CMS_LVWRD_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_LVWRD_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_leaveword`
--

LOCK TABLES `cms_leaveword` WRITE;
/*!40000 ALTER TABLE `cms_leaveword` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_leaveword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_solution`
--

DROP TABLE IF EXISTS `cms_solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_solution` (
  `SYSTEM_NAME` varchar(20) DEFAULT NULL,
  `WEBSITE_ID` varchar(20) NOT NULL,
  `SOLUTION_NAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`WEBSITE_ID`,`SOLUTION_NAME`),
  KEY `CMS_SLTN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_SLTN_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_solution`
--

LOCK TABLES `cms_solution` WRITE;
/*!40000 ALTER TABLE `cms_solution` DISABLE KEYS */;
INSERT INTO `cms_solution` VALUES (NULL,'default','darkBlue',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `cms_solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_detail`
--

DROP TABLE IF EXISTS `cms_user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_detail` (
  `USER_ID` varchar(20) NOT NULL,
  `USER_NAME` varchar(100) DEFAULT NULL,
  `REGISTER_DATE` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `CMS_USR_DTL_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_USR_DTL_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_detail`
--

LOCK TABLES `cms_user_detail` WRITE;
/*!40000 ALTER TABLE `cms_user_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_web_site`
--

DROP TABLE IF EXISTS `cms_web_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_web_site` (
  `WEBSITE_ID` varchar(20) NOT NULL,
  `WEBSITE_NAME` varchar(20) DEFAULT NULL,
  `PARENT_ID` varchar(20) DEFAULT NULL,
  `WEB_DOMAIN` varchar(100) DEFAULT NULL,
  `RES_PATH` varchar(255) DEFAULT NULL,
  `RES_DOMAIN` varchar(100) DEFAULT NULL,
  `BASE_DOMAIN` varchar(100) DEFAULT NULL,
  `SHORT_NAME` varchar(100) DEFAULT NULL,
  `SYSTEM_TYPE` varchar(100) DEFAULT NULL,
  `COOKIE_KEY` varchar(100) DEFAULT NULL,
  `CLOSE_REASON` varchar(255) DEFAULT NULL,
  `IS_CLOSE` varchar(10) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COPYRIGHT` varchar(255) DEFAULT NULL,
  `RECORD_CODE` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`WEBSITE_ID`),
  KEY `CMS_WB_ST_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CMS_WB_ST_TXCRTS` (`CREATED_TX_STAMP`),
  KEY `CW_DOM` (`WEB_DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_web_site`
--

LOCK TABLES `cms_web_site` WRITE;
/*!40000 ALTER TABLE `cms_web_site` DISABLE KEYS */;
INSERT INTO `cms_web_site` VALUES ('default','OFBiz内容管理网',NULL,NULL,NULL,NULL,NULL,NULL,'CMS',NULL,'系统维护中','N','描述','版权信息','备案号','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `cms_web_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_capital`
--

DROP TABLE IF EXISTS `country_capital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_capital` (
  `COUNTRY_CODE` varchar(20) NOT NULL,
  `COUNTRY_CAPITAL` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_CODE`),
  KEY `CNTRY_CAP_TO_CODE` (`COUNTRY_CODE`),
  KEY `CNTR_CPTL_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CNTR_CPTL_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `CNTRY_CAP_TO_CODE` FOREIGN KEY (`COUNTRY_CODE`) REFERENCES `country_code` (`COUNTRY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_capital`
--

LOCK TABLES `country_capital` WRITE;
/*!40000 ALTER TABLE `country_capital` DISABLE KEYS */;
INSERT INTO `country_capital` VALUES ('AD','Andorra','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AE','Abu Dhabi','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AF','Kabul','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AG','St. Johns','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AI','The Valley','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AL','Tiran','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AM','Yerevan','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AN','Willemstad','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AO','Luanda','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AQ','None','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AR','Buenos Aires','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AS','Pago Pago','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AT','Vienna','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AU','Canberra','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AW','Oranjestad','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AZ','Baku','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BA','Sarajevo','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BB','Bridgetown','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BD','Dhaka','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BE','Brussels','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BF','Ouagadougou','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BG','Sofia','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BH','Al-Manamah','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BI','Bujumbura','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BJ','Porto-Novo','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BM','Hamilton','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BN','Bandar Seri Begawan','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BO','La Paz','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BR','Brasilia','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BS','Nassau','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BT','Thimphu','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BV','None','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BW','Gaborone','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BY','Minsk','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BZ','Belmopan','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CA','Ottawa','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CC','West Island','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CD','Kinshasa','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CF','Bangui','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CG','Brazzaville','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CH','Bern','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CI','Abidjan','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CK','Avarua','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CL','Santiago','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CM','Yaounde','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CN','Beijing','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CO','Bogota','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CR','San Jose','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CU','Havana','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CV','Praia','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CX','The Settlement','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CY','Nicosia','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CZ','Prague','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DE','Berlin','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DJ','Djibouti','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DK','Copenhagen','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DM','Roseau','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DO','Santo Domingo','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DZ','Algiers','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('EC','Quito','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('EE','Tallinn','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('EG','Cairo','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('EH','El Aaiun','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ENG','London','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ER','Asmara','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ES','Madrid','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ET','Addis Ababa','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FI','Helsinki','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FJ','Suva','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FK','Stanley','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FM','Palikir','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FO','Torshavn','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FR','Paris','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GA','Libreville','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GB','London','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GD','St. George\'s','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GE','Tbilisi','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GF','Cayenne','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GH','Accra','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GI','Gibraltar','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GL','Godthab','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GM','Banjul','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GN','Conakry','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GP','Basse-Terre','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GQ','Malabo','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GR','Athens','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GS','None','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GT','Guatemala City','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GU','Agana','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GW','Bissau','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GY','Georgetown','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HK','Victoria','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HM','None','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HN','Tegucigalpa','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HR','Zagreb','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HT','Port-au-Prince','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HU','Budapest','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ID','Jakarta','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IE','Dublin','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IL','Jerusalem','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IN','New Delhi','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IO','None','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IQ','Baghdad','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IR','Tehran','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IS','Reykjavik','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IT','Rome','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('JM','Kingston','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('JO','Amman','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('JP','Tokyo','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KE','Nairobi','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KG','Bishkek','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KH','Phnom Penh','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KI','Tarawa','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KM','Moroni','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KN','Basseterre','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KP','Pyongyang','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KR','Seoul','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KW','Kuwait City','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KY','Georgetown','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KZ','Astana','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LA','Vientiane','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LB','Beirut','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LC','Castries','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LI','Vaduz','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LK','Colombo','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LR','Monrovia','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LS','Maseru','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LT','Vilnius','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LU','Luxembourg','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LV','Riga','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LY','Tripoli','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MA','Rabat','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MC','Monaco','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MD','Kishinev','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MG','Antananarivo','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MH','Majuro','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MK','Skopje','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ML','Bamako','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MM','Rangoon','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MN','Ulan Bator','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MO','Macau','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MP','Saipan','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MQ','Fort-de-France','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MR','Nouakchott','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MS','Plymouth','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MT','Valletta','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MU','Port Louis','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MV','Male','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MW','Lilongwe','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MX','Mexico City','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MY','Kuala Lumpur','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MZ','Maputo','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NA','Windhoek','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NC','Noumea','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NE','Niamey','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NF','Kingston','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NG','Lagos','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NI','Managua','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NIR','Belfast','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NL','Amsterdam','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NO','Oslo','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NP','Kathmandu','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NR','Yaren','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NU','Alofi','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NZ','Wellington','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('OM','Muscat','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PA','Panama City','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PE','Lima','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PF','Papeete','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PG','Port Moresby','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PH','Manila','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PK','Islamabad','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PL','Warsaw','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PM','St. Pierre','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PN','Adamstown','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PR','San Juan','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PT','Lisbon','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PW','Koror','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PY','Asuncion','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('QA','Doha','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('RE','Saint-Denis','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('RO','Bucharest','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('RU','Moscow','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('RW','Kigali','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SA','Riyadh','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SB','Honiara','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SC','Victoria','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SCT','Edinburgh','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SD','Khartoum','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SE','Stockholm','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SG','Singapore','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SH','Jamestown','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SI','Ljubljana','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SJ','Longyearbyen','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SK','Bratislava','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SL','Freetown','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SM','San Marino','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SN','Dakar','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SO','Mogadishu','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SR','Paramaribo','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ST','Sao Tome','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SV','San Salvador','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SY','Damascus','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SZ','Mbabane','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TC','Grand Turk','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TD','N\'Djamena','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TF','None','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TG','Lome','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TH','Bangkok','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TJ','Dushanbe','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TK','None','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TM','Ashgabat','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TN','Tunis','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TO','Nuku\'alofa','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TP','Dili','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TR','Ankara','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TT','Port of Spain','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TV','Funafuti','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TW','Taipei','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TZ','Dodoma','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UA','Kiev','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UG','Kampala','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UM','None','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('US','Washington','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UY','Montevideo','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UZ','Tashkent','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VA','Vatican City','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VC','Kingstown','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VE','Caracas','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VG','Road Town','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VI','Charlotte Amalie','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VN','Hanoi','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VU','Port Vila','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('WF','Mata-Utu','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('WLS','Cardiff','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('WS','Apia','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('YE','San\'a','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('YT','Dzaoudzi','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('YU','Belgrade','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ZA','Pretoria','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ZM','Lusaka','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ZW','Harare','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00');
/*!40000 ALTER TABLE `country_capital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_code`
--

DROP TABLE IF EXISTS `country_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_code` (
  `COUNTRY_CODE` varchar(20) NOT NULL,
  `COUNTRY_ABBR` varchar(60) DEFAULT NULL,
  `COUNTRY_NUMBER` varchar(60) DEFAULT NULL,
  `COUNTRY_NAME` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_CODE`),
  KEY `CNTR_CD_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CNTR_CD_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_code`
--

LOCK TABLES `country_code` WRITE;
/*!40000 ALTER TABLE `country_code` DISABLE KEYS */;
INSERT INTO `country_code` VALUES ('AD','AND','020','ANDORRA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AE','ARE','784','UNITED ARAB EMIRATES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AF','AFG','004','AFGHANISTAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AG','ATG','028','ANTIGUA AND BARBUDA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AI','AIA','660','ANGUILLA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AL','ALB','008','ALBANIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AM','ARM','051','ARMENIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AN','ANT','530','NETHERLANDS ANTILLES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AO','AGO','024','ANGOLA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AQ','ATA','010','ANTARCTICA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AR','ARG','032','ARGENTINA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AS','ASM','016','AMERICAN SAMOA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AT','AUT','040','AUSTRIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AU','AUS','036','AUSTRALIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AW','ABW','533','ARUBA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('AZ','AZE','031','AZERBAIJAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BA','BIH','070','BOSNIA AND HERZEGOWINA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BB','BRB','052','BARBADOS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BD','BGD','050','BANGLADESH','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BE','BEL','056','BELGIUM','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BF','BFA','854','BURKINA FASO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BG','BGR','100','BULGARIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BH','BHR','048','BAHRAIN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BI','BDI','108','BURUNDI','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BJ','BEN','204','BENIN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BM','BMU','060','BERMUDA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BN','BRN','096','BRUNEI DARUSSALAM','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BO','BOL','068','BOLIVIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BR','BRA','076','BRAZIL','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BS','BHS','044','BAHAMAS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BT','BTN','064','BHUTAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BV','BVT','074','BOUVET ISLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BW','BWA','072','BOTSWANA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BY','BLR','112','BELARUS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('BZ','BLZ','084','BELIZE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CA','CAN','124','CANADA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CC','CCK','166','COCOS (KEELING) ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CD','COD','180','CONGO, THE DEMOCRATIC REPUBLIC OF THE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CF','CAF','140','CENTRAL AFRICAN REPUBLIC','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CG','COG','178','CONGO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CH','CHE','756','SWITZERLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CI','CIV','384','COTE D\'IVOIRE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CK','COK','184','COOK ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CL','CHL','152','CHILE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CM','CMR','120','CAMEROON','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CN','CHN','156','CHINA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CO','COL','170','COLOMBIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CR','CRI','188','COSTA RICA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CU','CUB','192','CUBA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CV','CPV','132','CAPE VERDE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CX','CXR','162','CHRISTMAS ISLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CY','CYP','196','CYPRUS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('CZ','CZE','203','CZECH REPUBLIC','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DE','DEU','276','GERMANY','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DJ','DJI','262','DJIBOUTI','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DK','DNK','208','DENMARK','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DM','DMA','212','DOMINICA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DO','DOM','214','DOMINICAN REPUBLIC','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('DZ','DZA','012','ALGERIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('EC','ECU','218','ECUADOR','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('EE','EST','233','ESTONIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('EG','EGY','818','EGYPT','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('EH','ESH','732','WESTERN SAHARA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ENG','ENGL','896','ENGLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ER','ERI','232','ERITREA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ES','ESP','724','SPAIN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ET','ETH','231','ETHIOPIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FI','FIN','246','FINLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FJ','FJI','242','FIJI','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FK','FLK','238','FALKLAND ISLANDS (MALVINAS)','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FM','FSM','583','MICRONESIA, FEDERATED STATES OF','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FO','FRO','234','FAROE ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FR','FRA','250','FRANCE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('FX','FXX','249','FRANCE, METROPOLITAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GA','GAB','266','GABON','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GB','GBR','826','UNITED KINGDOM','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GD','GRD','308','GRENADA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GE','GEO','268','GEORGIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GF','GUF','254','FRENCH GUIANA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GH','GHA','288','GHANA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GI','GIB','292','GIBRALTAR','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GL','GRL','304','GREENLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GM','GMB','270','GAMBIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GN','GIN','324','GUINEA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GP','GLP','312','GUADELOUPE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GQ','GNQ','226','EQUATORIAL GUINEA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GR','GRC','300','GREECE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GS','SGS','239','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GT','GTM','320','GUATEMALA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GU','GUM','316','GUAM','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GW','GNB','624','GUINEA-BISSAU','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('GY','GUY','328','GUYANA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HK','HKG','344','HONG KONG','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HM','HMD','334','HEARD AND MC DONALD ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HN','HND','340','HONDURAS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HR','HRV','191','CROATIA (local name: Hrvatska)','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HT','HTI','332','HAITI','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('HU','HUN','348','HUNGARY','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ID','IDN','360','INDONESIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('IE','IRL','372','IRELAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('IL','ISR','376','ISRAEL','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('IN','IND','356','INDIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('IO','IOT','086','BRITISH INDIAN OCEAN TERRITORY','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('IQ','IRQ','368','IRAQ','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('IR','IRN','364','IRAN (ISLAMIC REPUBLIC OF)','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('IS','ISL','352','ICELAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('IT','ITA','380','ITALY','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('JM','JAM','388','JAMAICA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('JO','JOR','400','JORDAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('JP','JPN','392','JAPAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KE','KEN','404','KENYA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KG','KGZ','417','KYRGYZSTAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KH','KHM','116','CAMBODIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KI','KIR','296','KIRIBATI','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KM','COM','174','COMOROS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KN','KNA','659','SAINT KITTS AND NEVIS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KP','PRK','408','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KR','KOR','410','KOREA, REPUBLIC OF','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KW','KWT','414','KUWAIT','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KY','CYM','136','CAYMAN ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('KZ','KAZ','398','KAZAKHSTAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LA','LAO','418','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LB','LBN','422','LEBANON','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LC','LCA','662','SAINT LUCIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LI','LIE','438','LIECHTENSTEIN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LK','LKA','144','SRI LANKA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LR','LBR','430','LIBERIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LS','LSO','426','LESOTHO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LT','LTU','440','LITHUANIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LU','LUX','442','LUXEMBOURG','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LV','LVA','428','LATVIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('LY','LBY','434','LIBYAN ARAB JAMAHIRIYA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MA','MAR','504','MOROCCO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MC','MCO','492','MONACO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MD','MDA','498','MOLDOVA, REPUBLIC OF','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MG','MDG','450','MADAGASCAR','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MH','MHL','584','MARSHALL ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MK','MKD','807','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ML','MLI','466','MALI','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MM','MMR','104','MYANMAR','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MN','MNG','496','MONGOLIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MO','MAC','446','MACAU','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MP','MNP','580','NORTHERN MARIANA ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MQ','MTQ','474','MARTINIQUE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MR','MRT','478','MAURITANIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MS','MSR','500','MONTSERRAT','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MT','MLT','470','MALTA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MU','MUS','480','MAURITIUS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MV','MDV','462','MALDIVES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MW','MWI','454','MALAWI','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MX','MEX','484','MEXICO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MY','MYS','458','MALAYSIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('MZ','MOZ','508','MOZAMBIQUE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NA','NAM','516','NAMIBIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NC','NCL','540','NEW CALEDONIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NE','NER','562','NIGER','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NF','NFK','574','NORFOLK ISLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NG','NGA','566','NIGERIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NI','NIC','558','NICARAGUA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NIR','NIRL','897','N.IRELAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NL','NLD','528','NETHERLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NO','NOR','578','NORWAY','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NP','NPL','524','NEPAL','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NR','NRU','520','NAURU','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NU','NIU','570','NIUE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('NZ','NZL','554','NEW ZEALAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('OM','OMN','512','OMAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PA','PAN','591','PANAMA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PE','PER','604','PERU','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PF','PYF','258','FRENCH POLYNESIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PG','PNG','598','PAPUA NEW GUINEA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PH','PHL','608','PHILIPPINES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PK','PAK','586','PAKISTAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PL','POL','616','POLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PM','SPM','666','ST. PIERRE AND MIQUELON','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PN','PCN','612','PITCAIRN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PR','PRI','630','PUERTO RICO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PS','PSE','275','PALESTINIAN TERRITORY, OCCUPIED','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PT','PRT','620','PORTUGAL','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PW','PLW','585','PALAU','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('PY','PRY','600','PARAGUAY','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('QA','QAT','634','QATAR','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('RE','REU','638','REUNION','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('RO','ROM','642','ROMANIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('RU','RUS','643','RUSSIAN FEDERATION','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('RW','RWA','646','RWANDA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SA','SAU','682','SAUDI ARABIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SB','SLB','090','SOLOMON ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SC','SYC','690','SEYCHELLES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SCT','SCOT','895','SCOTLAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SD','SDN','736','SUDAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SE','SWE','752','SWEDEN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SG','SGP','702','SINGAPORE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SH','SHN','654','ST. HELENA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SI','SVN','705','SLOVENIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SJ','SJM','744','SVALBARD AND JAN MAYEN ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SK','SVK','703','SLOVAKIA (Slovak Republic)','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SL','SLE','694','SIERRA LEONE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SM','SMR','674','SAN MARINO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SN','SEN','686','SENEGAL','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SO','SOM','706','SOMALIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SR','SUR','740','SURINAME','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ST','STP','678','SAO TOME AND PRINCIPE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SV','SLV','222','EL SALVADOR','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SY','SYR','760','SYRIAN ARAB REPUBLIC','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('SZ','SWZ','748','SWAZILAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TC','TCA','796','TURKS AND CAICOS ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TD','TCD','148','CHAD','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TF','ATF','260','FRENCH SOUTHERN TERRITORIES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TG','TGO','768','TOGO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TH','THA','764','THAILAND','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TJ','TJK','762','TAJIKISTAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TK','TKL','772','TOKELAU','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TM','TKM','795','TURKMENISTAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TN','TUN','788','TUNISIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TO','TON','776','TONGA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TP','TMP','626','EAST TIMOR','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TR','TUR','792','TURKEY','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TT','TTO','780','TRINIDAD AND TOBAGO','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TV','TUV','798','TUVALU','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TW','TWN','158','TAIWAN, PROVINCE OF CHINA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('TZ','TZA','834','TANZANIA, UNITED REPUBLIC OF','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('UA','UKR','804','UKRAINE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('UG','UGA','800','UGANDA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('UM','UMI','581','UNITED STATES MINOR OUTLYING ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('US','USA','840','UNITED STATES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('UY','URY','858','URUGUAY','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('UZ','UZB','860','UZBEKISTAN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('VA','VAT','336','HOLY SEE (VATICAN CITY STATE)','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('VC','VCT','670','SAINT VINCENT AND THE GRENADINES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('VE','VEN','862','VENEZUELA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('VG','VGB','092','VIRGIN ISLANDS (BRITISH)','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('VI','VIR','850','VIRGIN ISLANDS (U.S.)','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('VN','VNM','704','VIET NAM','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('VU','VUT','548','VANUATU','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('WF','WLF','876','WALLIS AND FUTUNA ISLANDS','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('WLS','WALS','898','WALES','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('WS','WSM','882','SAMOA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('YE','YEM','887','YEMEN','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('YT','MYT','175','MAYOTTE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('YU','YUG','891','YUGOSLAVIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ZA','ZAF','710','SOUTH AFRICA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ZM','ZMB','894','ZAMBIA','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00'),('ZW','ZWE','716','ZIMBABWE','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00','2017-10-22 00:56:00');
/*!40000 ALTER TABLE `country_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_tele_code`
--

DROP TABLE IF EXISTS `country_tele_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_tele_code` (
  `COUNTRY_CODE` varchar(20) NOT NULL,
  `TELE_CODE` varchar(60) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_CODE`),
  KEY `CNTRY_TELE_TO_CODE` (`COUNTRY_CODE`),
  KEY `CNTR_TL_CD_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CNTR_TL_CD_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `CNTRY_TELE_TO_CODE` FOREIGN KEY (`COUNTRY_CODE`) REFERENCES `country_code` (`COUNTRY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_tele_code`
--

LOCK TABLES `country_tele_code` WRITE;
/*!40000 ALTER TABLE `country_tele_code` DISABLE KEYS */;
INSERT INTO `country_tele_code` VALUES ('AD','376','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AE','971','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AF','93','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AG','1-268','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AI','1-264','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AL','355','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AM','374','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AN','599','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AO','244','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AQ','672','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AR','54','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AS','684','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AT','43','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AU','61','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AW','297','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('AZ','994','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BA','387','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BB','1-246','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BD','880','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BE','32','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BF','226','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BG','359','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BH','973','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BI','257','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BJ','229','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BM','1-441','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BN','673','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BO','591','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BR','55','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BS','1-242','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BT','975','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BV',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BW','267','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BY','375','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('BZ','501','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CA','1','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CC','61','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CD','243','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CF','236','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CG','242','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CH','41','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CI','225','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CK','682','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CL','56','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CM','237','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CN','86','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CO','57','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CR','506','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CU','53','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CV','238','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CX','61','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CY','357','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('CZ','420','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('DE','49','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('DJ','253','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('DK','45','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('DM','1-767','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('DO','809','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('DZ','213','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('EC','593','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('EE','372','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('EG','20','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('EH',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ER','291','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ES','34','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ET','251','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('FI','358','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('FJ','679','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('FK','500','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('FM','691','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('FO','298','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('FR','33','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GA','241','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GB','44','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GD','1-473','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GE','995','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GF','594','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GH','233','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GI','350','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GL','299','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GM','220','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GN','224','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GP','590','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GQ','240','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GR','30','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GS',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GT','502','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GU','1-671','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GW','245','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('GY','592','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('HK','852','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('HM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('HN','504','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('HR','385','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('HT','509','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('HU','36','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ID','62','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IE','353','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IL','972','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IN','91','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IO',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IQ','964','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IR','98','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IS','354','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('IT','39','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('JM','1-876','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('JO','962','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('JP','81','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KE','254','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KG','996','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KH','855','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KI','686','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KM','269','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KN','1-869','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KP','850','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KR','82','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KW','965','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KY','1-345','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('KZ','7','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LA','856','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LB','961','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LC','1-758','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LI','423','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LK','94','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LR','231','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LS','266','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LT','370','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LU','352','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LV','371','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('LY','218','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MA','212','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MC','377','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MD','373','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MG','261','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MH','692','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MK','389','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ML','223','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MM','95','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MN','976','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MO','853','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MP','670','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MQ','596','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MR','222','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MS','1-664','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MT','356','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MU','230','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MV','960','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MW','265','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MX','52','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MY','60','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('MZ','258','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NA','264','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NC','687','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NE','227','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NF','672','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NG','234','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NI','505','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NL','31','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NO','47','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NP','977','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NR','674','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NU','683','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('NZ','64','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('OM','968','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PA','507','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PE','51','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PF','689','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PG','675','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PH','63','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PK','92','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PL','48','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PM','508','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PN',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PR','1-787','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PT','351','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PW','680','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('PY','595','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('QA','974','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('RE','262','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('RO','40','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('RU','7','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('RW','250','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SA','966','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SB','677','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SC','248','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SD','249','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SE','46','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SG','65','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SH','290','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SI','386','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SJ',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SK','421','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SL','232','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SM','378','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SN','221','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SO','252','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SR','597','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ST','239','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SV','503','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SY','963','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('SZ','268','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TC','1-649','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TD','235','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TF',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TG','228','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TH','66','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TJ','992','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TK','690','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TM','993','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TN','216','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TO','676','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TP','670','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TR','90','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TT','1-868','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TV','688','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TW','886','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('TZ','255','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UA','380','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UG','256','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('US','1','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UY','598','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('UZ','998','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VA','39','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VC','1-784','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VE','58','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VG','1-284','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VI','1-340','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VN','84','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('VU','678','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('WF','681','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('WS','684','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('YE','967','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('YT','269','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('YU','381','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ZA','27','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ZM','260','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00'),('ZW','263','2017-10-22 00:56:01','2017-10-22 00:56:00','2017-10-22 00:56:01','2017-10-22 00:56:00');
/*!40000 ALTER TABLE `country_tele_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_method`
--

DROP TABLE IF EXISTS `custom_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_method` (
  `CUSTOM_METHOD_ID` varchar(20) NOT NULL,
  `CUSTOM_METHOD_TYPE_ID` varchar(20) DEFAULT NULL,
  `CUSTOM_METHOD_NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`CUSTOM_METHOD_ID`),
  KEY `CME_TO_TYPE` (`CUSTOM_METHOD_TYPE_ID`),
  KEY `CSTM_MTHD_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CSTM_MTHD_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `CME_TO_TYPE` FOREIGN KEY (`CUSTOM_METHOD_TYPE_ID`) REFERENCES `custom_method_type` (`CUSTOM_METHOD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_method`
--

LOCK TABLES `custom_method` WRITE;
/*!40000 ALTER TABLE `custom_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_method_type`
--

DROP TABLE IF EXISTS `custom_method_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_method_type` (
  `CUSTOM_METHOD_TYPE_ID` varchar(20) NOT NULL,
  `PARENT_TYPE_ID` varchar(20) DEFAULT NULL,
  `HAS_TABLE` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`CUSTOM_METHOD_TYPE_ID`),
  KEY `CME_TYPE_PARENT` (`PARENT_TYPE_ID`),
  KEY `CSTM_MTD_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CSTM_MTD_TP_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `CME_TYPE_PARENT` FOREIGN KEY (`PARENT_TYPE_ID`) REFERENCES `custom_method_type` (`CUSTOM_METHOD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_method_type`
--

LOCK TABLES `custom_method_type` WRITE;
/*!40000 ALTER TABLE `custom_method_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_method_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_time_period`
--

DROP TABLE IF EXISTS `custom_time_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_time_period` (
  `CUSTOM_TIME_PERIOD_ID` varchar(20) NOT NULL,
  `PARENT_PERIOD_ID` varchar(20) DEFAULT NULL,
  `PERIOD_TYPE_ID` varchar(20) DEFAULT NULL,
  `PERIOD_NUM` decimal(20,0) DEFAULT NULL,
  `PERIOD_NAME` varchar(100) DEFAULT NULL,
  `FROM_DATE` date DEFAULT NULL,
  `THRU_DATE` date DEFAULT NULL,
  `IS_CLOSED` char(1) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`CUSTOM_TIME_PERIOD_ID`),
  KEY `ORG_PRD_PARPER` (`PARENT_PERIOD_ID`),
  KEY `ORG_PRD_PERTYP` (`PERIOD_TYPE_ID`),
  KEY `CSTM_TM_PRD_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CSTM_TM_PRD_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `ORG_PRD_PARPER` FOREIGN KEY (`PARENT_PERIOD_ID`) REFERENCES `custom_time_period` (`CUSTOM_TIME_PERIOD_ID`),
  CONSTRAINT `ORG_PRD_PERTYP` FOREIGN KEY (`PERIOD_TYPE_ID`) REFERENCES `period_type` (`PERIOD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_time_period`
--

LOCK TABLES `custom_time_period` WRITE;
/*!40000 ALTER TABLE `custom_time_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_time_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source`
--

DROP TABLE IF EXISTS `data_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source` (
  `DATA_SOURCE_ID` varchar(20) NOT NULL,
  `DATA_SOURCE_TYPE_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`DATA_SOURCE_ID`),
  KEY `DATA_SRC_TYP` (`DATA_SOURCE_TYPE_ID`),
  KEY `DATA_SOURCE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `DATA_SOURCE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `DATA_SRC_TYP` FOREIGN KEY (`DATA_SOURCE_TYPE_ID`) REFERENCES `data_source_type` (`DATA_SOURCE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source`
--

LOCK TABLES `data_source` WRITE;
/*!40000 ALTER TABLE `data_source` DISABLE KEYS */;
INSERT INTO `data_source` VALUES ('CONTEXT_INDUCTION','CONTENT_CREATION','Context Induction','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('CSR_ENTRY','ADMIN_ENTRY','Customer Service Rep Data Entry','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('ECOMMERCE_SITE','WEBSITE_ENTRY','eCommerce Site Profile Maintenance','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('GENERAL_MAILING','MAILING_LIST_SIGNUP','General Interest Mailing List Signup','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('GEN_ADMIN','ADMIN_ENTRY','General Administrative Data Entry','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('GEOPT_GOOGLE','GEOPOINT_SUPPLIER','Google as GeoPoint supplier','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('GEOPT_MAPTP','GEOPOINT_SUPPLIER','MapTP a GeoPoint supplier','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('GEOPT_MICROSOFT','GEOPOINT_SUPPLIER','Microsoft as GeoPoint supplier','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('GEOPT_YAHOO','GEOPOINT_SUPPLIER','Yahoo as GeoPoint supplier','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('MY_PORTAL','MY_PORTAL','My Portal Registration','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('USER_ENTRY','CONTENT_CREATION','User Entry','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `data_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_source_type`
--

DROP TABLE IF EXISTS `data_source_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_source_type` (
  `DATA_SOURCE_TYPE_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`DATA_SOURCE_TYPE_ID`),
  KEY `DT_SRC_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `DT_SRC_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_source_type`
--

LOCK TABLES `data_source_type` WRITE;
/*!40000 ALTER TABLE `data_source_type` DISABLE KEYS */;
INSERT INTO `data_source_type` VALUES ('ADMIN_ENTRY','Administrative Data Entry','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('ADVERTISEMENT','Advertisement','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('CONTENT_CREATION','Content and Data Resource Creation','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('CONTEST_SIGNUP','Contest Signup','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('GEOPOINT_SUPPLIER','Name of GeoPoints publisher','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('MAILING_LIST_SIGNUP','Mailing List Signup','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('MY_PORTAL','My Portal','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('PARTNER','Partner','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('PURCHASED_DATA','Purchased Data','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('WEB','Web','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('WEBSITE_ENTRY','Website Data Entry','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `data_source_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template_setting`
--

DROP TABLE IF EXISTS `email_template_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_template_setting` (
  `EMAIL_TEMPLATE_SETTING_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `BODY_SCREEN_LOCATION` varchar(255) DEFAULT NULL,
  `XSLFO_ATTACH_SCREEN_LOCATION` varchar(255) DEFAULT NULL,
  `FROM_ADDRESS` varchar(255) DEFAULT NULL,
  `CC_ADDRESS` varchar(255) DEFAULT NULL,
  `BCC_ADDRESS` varchar(255) DEFAULT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TEMPLATE_SETTING_ID`),
  KEY `EML_TMPT_STG_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `EML_TMPT_STG_TXCRS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template_setting`
--

LOCK TABLES `email_template_setting` WRITE;
/*!40000 ALTER TABLE `email_template_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_template_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_audit_log`
--

DROP TABLE IF EXISTS `entity_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_audit_log` (
  `AUDIT_HISTORY_SEQ_ID` varchar(20) NOT NULL,
  `CHANGED_ENTITY_NAME` varchar(255) DEFAULT NULL,
  `CHANGED_FIELD_NAME` varchar(255) DEFAULT NULL,
  `PK_COMBINED_VALUE_TEXT` varchar(255) DEFAULT NULL,
  `OLD_VALUE_TEXT` varchar(255) DEFAULT NULL,
  `NEW_VALUE_TEXT` varchar(255) DEFAULT NULL,
  `CHANGED_DATE` datetime DEFAULT NULL,
  `CHANGED_BY_INFO` varchar(255) DEFAULT NULL,
  `CHANGED_SESSION_INFO` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`AUDIT_HISTORY_SEQ_ID`),
  KEY `ENTT_ADT_LG_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENTT_ADT_LG_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_audit_log`
--

LOCK TABLES `entity_audit_log` WRITE;
/*!40000 ALTER TABLE `entity_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_group`
--

DROP TABLE IF EXISTS `entity_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_group` (
  `ENTITY_GROUP_ID` varchar(20) NOT NULL,
  `ENTITY_GROUP_NAME` varchar(100) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_GROUP_ID`),
  KEY `ENTT_GRP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENTT_GRP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_group`
--

LOCK TABLES `entity_group` WRITE;
/*!40000 ALTER TABLE `entity_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_group_entry`
--

DROP TABLE IF EXISTS `entity_group_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_group_entry` (
  `ENTITY_GROUP_ID` varchar(20) NOT NULL,
  `ENTITY_OR_PACKAGE` varchar(255) NOT NULL,
  `APPL_ENUM_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_GROUP_ID`,`ENTITY_OR_PACKAGE`),
  KEY `ENTGRP_GRP` (`ENTITY_GROUP_ID`),
  KEY `ENT_GRP_ENR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENT_GRP_ENR_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `ENTGRP_GRP` FOREIGN KEY (`ENTITY_GROUP_ID`) REFERENCES `entity_group` (`ENTITY_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_group_entry`
--

LOCK TABLES `entity_group_entry` WRITE;
/*!40000 ALTER TABLE `entity_group_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_group_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_key_store`
--

DROP TABLE IF EXISTS `entity_key_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_key_store` (
  `KEY_NAME` varchar(250) NOT NULL,
  `KEY_TEXT` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`KEY_NAME`),
  KEY `ENTT_K_STR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENTT_K_STR_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_key_store`
--

LOCK TABLES `entity_key_store` WRITE;
/*!40000 ALTER TABLE `entity_key_store` DISABLE KEYS */;
INSERT INTO `entity_key_store` VALUES ('{SHA}0e8c12f8b544246e7c17a377fcc228eab8fec2e7','3134ef8c83ef2f43194f1c4c61f4b938077358d3a491579d','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}3018e196b7071b560640bd6325224bd905d5d6be','3d2546c1f4c4bcabd519e52c0b258a4a233be537dc2fb0f2','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}3d434c2127871538d98b98b2d93c94ef248651e8','6292a41ac4947597027c94792f2f75e60edfd68c852a498a','2017-10-22 00:55:57','2017-10-22 00:55:57','2017-10-22 00:55:57','2017-10-22 00:55:57'),('{SHA}6121af72793836ccd12222ffec598039dd2db0a2','b9804345fe0b5be63d0d8afb8af104ef1ac8da256de6e331','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}7daf9185b02dc892dceefa53ab01cd7a3d878416','fd5e2a20c81c524c5d6ddaf7cba15d0e0eda803e43d94cab','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}883e025c8d79fc8c0ff19eb5e4115ca4ac6b8cea','9b499d23f768daf1fd0e5eada8c223b0928a7ac825406775','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}8fdcd30663dd97481f20ae0ec7efcb5066f4d85b','5b4ae6b32320a73b7f1054d57ab301fe0e0b37b698700151','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}93a4ba9bada6b3d0c963db67d1bdf35753d710fc','58a46246c185766723e9bab5376bc7d5c729a10157a4b55d','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}a2b299d7cabf382399c4bc52c88df721e0f51366','ba94790264f1463e584068b94675f2d043dc7c769eb5f1ad','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}a9d6c3c03c87a596d0ff9a9b696ca79ca1cd939c','97fd9420da9b6bb385ae5b9e2ae6a1dc31bc23d6d96b70e0','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}aab50969066635d57f29b9b9fde566ba21987e91','d93ba75ec72989a7b08591d0e9b37cce257a5464bcb3aea8','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}c1891cf2adb2fe2e6a9d4331bbfb69e08ac6a9b2','9494c449add340b9a74657ce4394d5c7cd5746e6a4b323fd','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}c7146968e40542e758eb04301a98505528252aa1','1fabe9b0ec260454522086e5f74649582675cd02bf4f29cb','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}d6f1f8fca682e0d31c9b68eb5df8bfeffaa82577','cd8016163137d3e9801a20830b1a5d7fa1bf2a0486f1b3fb','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}edb8b6110331844bdceaea444a9e5c72ef757e1b','b95b80f4256223b307b91c07bcd9975e4c58b52c3b89a152','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}f02f3da39022c5fa2c9d5671a63597e2ca3ac471','5425c7e9f2ab10347308103b983e08018094ad5ea20d73f4','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}f0f231785d087fd176443de5c3b7477fa1f61dba','fd80ae92bf1029d0bc2f6e7c26ecec8fdf3b08feba108a2f','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}f42a91dd55bb995452128e9fa50384d7a3468a19','e6dafb2aa19beae39da4f176feabef67bc3b511949ad0779','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}fb23550541a15f8169c0be4e8cc13a353e4296bb','2f3ec8d9ecb986bafedc267f3d4525e9f7d9a78fb6d5044f','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58'),('{SHA}fb97ee8876ae4f5fde133e2e523c57f17dc1cfb8','62feb340293845a1192625381ad9e383f1f8c4b93b0e102c','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58','2017-10-22 00:55:58');
/*!40000 ALTER TABLE `entity_key_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_sync`
--

DROP TABLE IF EXISTS `entity_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_sync` (
  `ENTITY_SYNC_ID` varchar(20) NOT NULL,
  `RUN_STATUS_ID` varchar(20) DEFAULT NULL,
  `LAST_SUCCESSFUL_SYNCH_TIME` datetime DEFAULT NULL,
  `LAST_HISTORY_START_DATE` datetime DEFAULT NULL,
  `PRE_OFFLINE_SYNCH_TIME` datetime DEFAULT NULL,
  `OFFLINE_SYNC_SPLIT_MILLIS` decimal(20,0) DEFAULT NULL,
  `SYNC_SPLIT_MILLIS` decimal(20,0) DEFAULT NULL,
  `SYNC_END_BUFFER_MILLIS` decimal(20,0) DEFAULT NULL,
  `MAX_RUNNING_NO_UPDATE_MILLIS` decimal(20,0) DEFAULT NULL,
  `TARGET_SERVICE_NAME` varchar(255) DEFAULT NULL,
  `TARGET_DELEGATOR_NAME` varchar(255) DEFAULT NULL,
  `KEEP_REMOVE_INFO_HOURS` double DEFAULT NULL,
  `FOR_PULL_ONLY` char(1) DEFAULT NULL,
  `FOR_PUSH_ONLY` char(1) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_SYNC_ID`),
  KEY `ENTITY_SYNC_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENTITY_SYNC_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_sync`
--

LOCK TABLES `entity_sync` WRITE;
/*!40000 ALTER TABLE `entity_sync` DISABLE KEYS */;
INSERT INTO `entity_sync` VALUES ('1500','ESR_NOT_STARTED',NULL,NULL,NULL,NULL,600000,NULL,NULL,'remoteStoreEntitySyncDataRmi',NULL,24,NULL,'Y','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `entity_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_sync_history`
--

DROP TABLE IF EXISTS `entity_sync_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_sync_history` (
  `ENTITY_SYNC_ID` varchar(20) NOT NULL,
  `START_DATE` datetime NOT NULL,
  `RUN_STATUS_ID` varchar(20) DEFAULT NULL,
  `BEGINNING_SYNCH_TIME` datetime DEFAULT NULL,
  `LAST_SUCCESSFUL_SYNCH_TIME` datetime DEFAULT NULL,
  `LAST_CANDIDATE_END_TIME` datetime DEFAULT NULL,
  `LAST_SPLIT_START_TIME` decimal(20,0) DEFAULT NULL,
  `TO_CREATE_INSERTED` decimal(20,0) DEFAULT NULL,
  `TO_CREATE_UPDATED` decimal(20,0) DEFAULT NULL,
  `TO_CREATE_NOT_UPDATED` decimal(20,0) DEFAULT NULL,
  `TO_STORE_INSERTED` decimal(20,0) DEFAULT NULL,
  `TO_STORE_UPDATED` decimal(20,0) DEFAULT NULL,
  `TO_STORE_NOT_UPDATED` decimal(20,0) DEFAULT NULL,
  `TO_REMOVE_DELETED` decimal(20,0) DEFAULT NULL,
  `TO_REMOVE_ALREADY_DELETED` decimal(20,0) DEFAULT NULL,
  `TOTAL_ROWS_EXPORTED` decimal(20,0) DEFAULT NULL,
  `TOTAL_ROWS_TO_CREATE` decimal(20,0) DEFAULT NULL,
  `TOTAL_ROWS_TO_STORE` decimal(20,0) DEFAULT NULL,
  `TOTAL_ROWS_TO_REMOVE` decimal(20,0) DEFAULT NULL,
  `TOTAL_SPLITS` decimal(20,0) DEFAULT NULL,
  `TOTAL_STORE_CALLS` decimal(20,0) DEFAULT NULL,
  `RUNNING_TIME_MILLIS` decimal(20,0) DEFAULT NULL,
  `PER_SPLIT_MIN_MILLIS` decimal(20,0) DEFAULT NULL,
  `PER_SPLIT_MAX_MILLIS` decimal(20,0) DEFAULT NULL,
  `PER_SPLIT_MIN_ITEMS` decimal(20,0) DEFAULT NULL,
  `PER_SPLIT_MAX_ITEMS` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_SYNC_ID`,`START_DATE`),
  KEY `ENTSYNC_HSTSNC` (`ENTITY_SYNC_ID`),
  KEY `ENT_SNC_HSR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENT_SNC_HSR_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `ENTSYNC_HSTSNC` FOREIGN KEY (`ENTITY_SYNC_ID`) REFERENCES `entity_sync` (`ENTITY_SYNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_sync_history`
--

LOCK TABLES `entity_sync_history` WRITE;
/*!40000 ALTER TABLE `entity_sync_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_sync_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_sync_include`
--

DROP TABLE IF EXISTS `entity_sync_include`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_sync_include` (
  `ENTITY_SYNC_ID` varchar(20) NOT NULL,
  `ENTITY_OR_PACKAGE` varchar(255) NOT NULL,
  `APPL_ENUM_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_SYNC_ID`,`ENTITY_OR_PACKAGE`),
  KEY `ENTSYNC_INCSNC` (`ENTITY_SYNC_ID`),
  KEY `ENT_SNC_INCD_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENT_SNC_INCD_TXCRS` (`CREATED_TX_STAMP`),
  CONSTRAINT `ENTSYNC_INCSNC` FOREIGN KEY (`ENTITY_SYNC_ID`) REFERENCES `entity_sync` (`ENTITY_SYNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_sync_include`
--

LOCK TABLES `entity_sync_include` WRITE;
/*!40000 ALTER TABLE `entity_sync_include` DISABLE KEYS */;
INSERT INTO `entity_sync_include` VALUES ('1500','org.ofbiz.','ESIA_INCLUDE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('1500','org.ofbiz.entity','ESIA_EXCLUDE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('1500','org.ofbiz.service','ESIA_EXCLUDE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('1500','ServerHit','ESIA_EXCLUDE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('1500','ServerHitBin','ESIA_EXCLUDE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `entity_sync_include` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_sync_include_group`
--

DROP TABLE IF EXISTS `entity_sync_include_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_sync_include_group` (
  `ENTITY_SYNC_ID` varchar(20) NOT NULL,
  `ENTITY_GROUP_ID` varchar(20) NOT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_SYNC_ID`,`ENTITY_GROUP_ID`),
  KEY `ENTSNCGU_GRP` (`ENTITY_GROUP_ID`),
  KEY `ENTSNCGU_SNC` (`ENTITY_SYNC_ID`),
  KEY `ENT_SNC_IND_GRP_TP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENT_SNC_IND_GRP_TS` (`CREATED_TX_STAMP`),
  CONSTRAINT `ENTSNCGU_GRP` FOREIGN KEY (`ENTITY_GROUP_ID`) REFERENCES `entity_group` (`ENTITY_GROUP_ID`),
  CONSTRAINT `ENTSNCGU_SNC` FOREIGN KEY (`ENTITY_SYNC_ID`) REFERENCES `entity_sync` (`ENTITY_SYNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_sync_include_group`
--

LOCK TABLES `entity_sync_include_group` WRITE;
/*!40000 ALTER TABLE `entity_sync_include_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_sync_include_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_sync_remove`
--

DROP TABLE IF EXISTS `entity_sync_remove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_sync_remove` (
  `ENTITY_SYNC_REMOVE_ID` varchar(20) NOT NULL,
  `PRIMARY_KEY_REMOVED` longtext,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_SYNC_REMOVE_ID`),
  KEY `ENT_SNC_RMV_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENT_SNC_RMV_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_sync_remove`
--

LOCK TABLES `entity_sync_remove` WRITE;
/*!40000 ALTER TABLE `entity_sync_remove` DISABLE KEYS */;
INSERT INTO `entity_sync_remove` VALUES ('10000','<?xml version=\"1.0\" encoding=\"UTF-8\"?><ofbiz-ser>\r\n    <eepk-ServiceSemaphore serviceName=\"purgeOldJobs\"/>\r\n</ofbiz-ser>\r\n','2017-10-22 00:56:20','2017-10-22 00:56:19','2017-10-22 00:56:20','2017-10-22 00:56:19');
/*!40000 ALTER TABLE `entity_sync_remove` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enumeration`
--

DROP TABLE IF EXISTS `enumeration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumeration` (
  `ENUM_ID` varchar(20) NOT NULL,
  `ENUM_TYPE_ID` varchar(20) DEFAULT NULL,
  `ENUM_CODE` varchar(60) DEFAULT NULL,
  `SEQUENCE_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENUM_ID`),
  KEY `ENUM_TO_TYPE` (`ENUM_TYPE_ID`),
  KEY `ENUMERATION_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENUMERATION_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `ENUM_TO_TYPE` FOREIGN KEY (`ENUM_TYPE_ID`) REFERENCES `enumeration_type` (`ENUM_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enumeration`
--

LOCK TABLES `enumeration` WRITE;
/*!40000 ALTER TABLE `enumeration` DISABLE KEYS */;
INSERT INTO `enumeration` VALUES ('ESIA_ALWAYS','ENTSYNC_INC_APPL','ALWAYS','03','Always Include','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ESIA_EXCLUDE','ENTSYNC_INC_APPL','EXCLUDE','02','Exclude','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ESIA_INCLUDE','ENTSYNC_INC_APPL','INCLUDE','01','Include','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('EXTERNAL_CONVERSION','CONVERSION_PURPOSE','EXTERNAL','20','External Conversion','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('INTERNAL_CONVERSION','CONVERSION_PURPOSE','INTERNAL','10','Internal Conversion','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_BT','KW_THES_REL','BT','05','Broader Term','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_CS','KW_THES_REL','CS','03','Correct Spelling','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_LANG_FR','KW_THES_REL','LANG_FR','22','Lang: French','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_LANG_SP','KW_THES_REL','LANG_SP','21','Lang: Spanish','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_MT','KW_THES_REL','MT','06','Micro-thesaurus Term','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_NT','KW_THES_REL','NT','04','Narrower Term','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_RT','KW_THES_REL','RT','07','Related Term','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_SN','KW_THES_REL','SN','08','Scope Notes','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_UF','KW_THES_REL','UF','01','Used For','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('KWTR_USE','KW_THES_REL','USE','02','Use Instead','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_DOCBOOKSTYLESHEET','VT_RES_TYPE',NULL,'03','Docbook Style Sheet URL','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_EXTRA_HEAD','VT_RES_TYPE',NULL,'06','Additional <tt><head></tt> Element Markup','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_FTR_JAVASCRIPT','VT_RES_TYPE',NULL,'11','Footer JavaScript File URL','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_FTR_TMPLT_LOC','VT_RES_TYPE',NULL,'10','Footer Template Location','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_HDR_IMAGE_URL','VT_RES_TYPE',NULL,'07','Masthead/Branding Logo Image URL','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_HDR_JAVASCRIPT','VT_RES_TYPE',NULL,'09','Header JavaScript File URL','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_HDR_TMPLT_LOC','VT_RES_TYPE',NULL,'08','Header Template Location','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_HELPSTYLESHEET','VT_RES_TYPE',NULL,'02','Help Style Sheet URL','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_MSG_TMPLT_LOC','VT_RES_TYPE',NULL,'15','Main Messages Template Location','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_NAME','VT_RES_TYPE',NULL,'00','Visual Theme name','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_NAV_CLOSE_TMPLT','VT_RES_TYPE',NULL,'14','Closing Navigation Template Location','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_NAV_OPEN_TMPLT','VT_RES_TYPE',NULL,'13','Opening Navigation Template Location','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_NAV_TMPLT_LOC','VT_RES_TYPE',NULL,'12','Main Navigation Template Location','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_RTL_STYLESHEET','VT_RES_TYPE',NULL,'04','Right-to-Left (RTL) Style Sheet URL','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_SCREENSHOT','VT_RES_TYPE',NULL,'16','Theme Preview Screenshot','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_SHORTCUT_ICON','VT_RES_TYPE',NULL,'05','Shortcut Icon URL','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_STYLESHEET','VT_RES_TYPE',NULL,'01','Style Sheet URL','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('_00_','_NA_','_00_','0','Not Applicable','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('_NA_','_NA_','_NA_','0','Not Applicable','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `enumeration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enumeration_type`
--

DROP TABLE IF EXISTS `enumeration_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumeration_type` (
  `ENUM_TYPE_ID` varchar(20) NOT NULL,
  `PARENT_TYPE_ID` varchar(20) DEFAULT NULL,
  `HAS_TABLE` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENUM_TYPE_ID`),
  KEY `ENUM_TYPE_PARENT` (`PARENT_TYPE_ID`),
  KEY `ENMRTN_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `ENMRTN_TP_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `ENUM_TYPE_PARENT` FOREIGN KEY (`PARENT_TYPE_ID`) REFERENCES `enumeration_type` (`ENUM_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enumeration_type`
--

LOCK TABLES `enumeration_type` WRITE;
/*!40000 ALTER TABLE `enumeration_type` DISABLE KEYS */;
INSERT INTO `enumeration_type` VALUES ('CONVERSION_PURPOSE',NULL,NULL,'Conversion Purpose','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('ENTSYNC_INC_APPL',NULL,'N','Entity Sync Include Application Type','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('KW_THES_REL',NULL,'N','Thesaurus Relationship Type','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VT_RES_TYPE',NULL,'N','Visual Theme Resource Type (stylesheet, javascript file, etc)','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('_NA_',NULL,NULL,'Not Applicable','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `enumeration_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo`
--

DROP TABLE IF EXISTS `geo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo` (
  `GEO_ID` varchar(20) NOT NULL,
  `GEO_TYPE_ID` varchar(20) DEFAULT NULL,
  `GEO_NAME` varchar(100) DEFAULT NULL,
  `GEO_CODE` varchar(60) DEFAULT NULL,
  `GEO_SEC_CODE` varchar(60) DEFAULT NULL,
  `ABBREVIATION` varchar(60) DEFAULT NULL,
  `WELL_KNOWN_TEXT` longtext,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`GEO_ID`),
  KEY `GEO_TO_TYPE` (`GEO_TYPE_ID`),
  KEY `GEO_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `GEO_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `GEO_TO_TYPE` FOREIGN KEY (`GEO_TYPE_ID`) REFERENCES `geo_type` (`GEO_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo`
--

LOCK TABLES `geo` WRITE;
/*!40000 ALTER TABLE `geo` DISABLE KEYS */;
INSERT INTO `geo` VALUES ('AA','STATE','Armed Forces Americas','AA',NULL,'AA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AB','PROVINCE','Alberta','AB',NULL,'AB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ABW','COUNTRY','Aruba','AW','533','ABW',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AE','STATE','Armed Forces Europe','AE',NULL,'AE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AFG','COUNTRY','Afghanistan','AF','004','AFG',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AGO','COUNTRY','Angola','AO','024','AGO',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AHUST','GROUP','Alaska/Hawaii/Territories','AHUST',NULL,'AHUST',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AIA','COUNTRY','Anguilla','AI','660','AIA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AK','STATE','Alaska','AK',NULL,'AK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AKHI','GROUP','Alaska/Hawaii','AKHI',NULL,'AKHI',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AL','STATE','Alabama','AL',NULL,'AL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ALB','COUNTRY','Albania','AL','008','ALB',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AND','COUNTRY','Andorra','AD','020','AND',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ANT','COUNTRY','Netherlands Antilles','AN','530','ANT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('AP','STATE','Armed Forces Pacific','AP',NULL,'AP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AR','STATE','Arkansas','AR',NULL,'AR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ARE','COUNTRY','United Arab Emirates','AE','784','ARE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ARG','COUNTRY','Argentina','AR','032','ARG',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ARM','COUNTRY','Armenia','AM','051','ARM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AS','STATE','American Samoa','AS',NULL,'AS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ASM','COUNTRY','American Samoa','AS','016','ASM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ATA','COUNTRY','Antarctica','AQ','010','ATA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ATF','COUNTRY','French Southern Territories','TF','260','ATF',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ATG','COUNTRY','Antigua And Barbuda','AG','028','ATG',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AU-ACT','TERRITORY','Australian Capital Territory','ACT',NULL,'ACT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AU-NSW','STATE','New South Wales','NSW',NULL,'NSW',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AU-NT','TERRITORY','Northern Territory','NT',NULL,'NT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AU-QLD','STATE','Queensland','QLD',NULL,'QLD',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AU-SA','STATE','South Australia','SA',NULL,'SA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AU-TAS','STATE','Tasmania','TAS',NULL,'TAS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AU-VIC','STATE','Victoria','VIC',NULL,'VIC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AU-WA','STATE','Western Australia','WA',NULL,'WA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUS','COUNTRY','Australia','AU','036','AUS',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AUT','COUNTRY','Austria','AT','040','AUT',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AZ','STATE','Arizona','AZ',NULL,'AZ',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AZE','COUNTRY','Azerbaijan','AZ','031','AZE',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BC','PROVINCE','British Columbia','BC',NULL,'BC',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('BDI','COUNTRY','Burundi','BI','108','BDI',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BEL','COUNTRY','Belgium','BE','056','BEL',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BEN','COUNTRY','Benin','BJ','204','BEN',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BFA','COUNTRY','Burkina Faso','BF','854','BFA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BG-01','PROVINCE','Blagoevgrad','01',NULL,'E',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-02','PROVINCE','Burgas','02',NULL,'A',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-03','PROVINCE','Varna','03',NULL,'B',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-04','PROVINCE','Veliko Tarnovo','04',NULL,'BT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-05','PROVINCE','Vidin','05',NULL,'BH',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-06','PROVINCE','Vratsa','06',NULL,'BP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-07','PROVINCE','Gabrovo','07',NULL,'EB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-08','PROVINCE','Dobrich','08',NULL,'TX',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-09','PROVINCE','Kardzhali','09',NULL,'K',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-10','PROVINCE','Kyustendil','10',NULL,'KH',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-11','PROVINCE','Lovech','11',NULL,'OB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-12','PROVINCE','Montana','12',NULL,'M',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-13','PROVINCE','Pazardzhik','13',NULL,'PA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-14','PROVINCE','Pernik','14',NULL,'PK',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-15','PROVINCE','Pleven','15',NULL,'EH',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-16','PROVINCE','Plovdiv','16',NULL,'PB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-17','PROVINCE','Razgrad','17',NULL,'PP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-18','PROVINCE','Ruse','18',NULL,'P',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-19','PROVINCE','Silistra','19',NULL,'CC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-20','PROVINCE','Sliven','20',NULL,'CH',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-21','PROVINCE','Smolyan','21',NULL,'CM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-22','PROVINCE','Sofia','22',NULL,'C',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-23','PROVINCE','Sofia Province','23',NULL,'CO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-24','PROVINCE','Stara Zagora','24',NULL,'CT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-25','PROVINCE','Targovishte','25',NULL,'T',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-26','PROVINCE','Haskovo','26',NULL,'X',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-27','PROVINCE','Shumen','27',NULL,'H',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BG-28','PROVINCE','Yambol','28',NULL,'Y',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGD','COUNTRY','Bangladesh','BD','050','BGD',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BGR','COUNTRY','Bulgaria','BG','100','BGR',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BHR','COUNTRY','Bahrain','BH','048','BHR',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BHS','COUNTRY','Bahamas','BS','044','BHS',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BIH','COUNTRY','Bosnia And Herzegowina','BA','070','BIH',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BLR','COUNTRY','Belarus','BY','112','BLR',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BLZ','COUNTRY','Belize','BZ','084','BLZ',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BMU','COUNTRY','Bermuda','BM','060','BMU',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BOL','COUNTRY','Bolivia','BO','068','BOL',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BR-AC','STATE','Acre','AC',NULL,'AC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-AL','STATE','Alagoas','AL',NULL,'AL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-AM','STATE','Amazonas','AM',NULL,'AM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-AP','STATE','Amapá','AP',NULL,'AP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-BA','STATE','Bahia','BA',NULL,'BA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-CE','STATE','Ceará','CE',NULL,'CE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-DF','STATE','Distrito Federal','DF',NULL,'DF',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-ES','STATE','Espírito Santo','ES',NULL,'ES',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-GO','STATE','Goiás','GO',NULL,'GO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-MA','STATE','Maranhão','MA',NULL,'MA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-MG','STATE','Minas Gerais','MG',NULL,'MG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-MS','STATE','Mato Grosso do Sul','MS',NULL,'MS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-MT','STATE','Mato Grosso','MT',NULL,'MT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-PA','STATE','Pará','PA',NULL,'PA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-PB','STATE','Paraíba','PB',NULL,'PB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-PE','STATE','Pernambuco','PE',NULL,'PE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-PI','STATE','Piauí','PI',NULL,'PI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-PR','STATE','Paraná','PR',NULL,'PR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-RJ','STATE','Rio de Janeiro','RJ',NULL,'RJ',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-RN','STATE','Rio Grande do Norte','RN',NULL,'RN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-RO','STATE','Rondônia','RO',NULL,'RO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-RR','STATE','Roraima','RR',NULL,'RR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-RS','STATE','Rio Grande do Sul','RS',NULL,'RS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-SC','STATE','Santa Catarina','SC',NULL,'SC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-SE','STATE','Sergipe','SE',NULL,'SE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-SP','STATE','São Paulo','SP',NULL,'SP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BR-TO','STATE','Tocantins','TO',NULL,'TO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','COUNTRY','Brazil','BR','076','BRA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BRB','COUNTRY','Barbados','BB','052','BRB',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BRN','COUNTRY','Brunei Darussalam','BN','096','BRN',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BTN','COUNTRY','Bhutan','BT','064','BTN',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BVT','COUNTRY','Bouvet Island','BV','074','BVT',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BWA','COUNTRY','Botswana','BW','072','BWA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CA','STATE','California','CA',NULL,'CA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAF','COUNTRY','Central African Republic','CF','140','CAF',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CAN','COUNTRY','Canada','CA','124','CAN',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CCK','COUNTRY','Cocos (keeling) Islands','CC','166','CCK',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CHE','COUNTRY','Switzerland','CH','756','CHE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('CHL','COUNTRY','Chile','CL','152','CHL',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CHN','COUNTRY','China','CN','156','CHN',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CIV','COUNTRY','Cote D\'ivoire','CI','384','CIV',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CMR','COUNTRY','Cameroon','CM','120','CMR',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CN-11','MUNICIPALITY','北京','11',NULL,'京','Beijing','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-12','MUNICIPALITY','天津','12',NULL,'津','Tianjin','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-13','PROVINCE','河北','13',NULL,'冀','Hebei','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-14','PROVINCE','山西','14',NULL,'晋','Shanxi','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-15','MUNICIPALITY','内蒙古','15',NULL,'内蒙古','Inner Mongolia','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-21','PROVINCE','辽宁','21',NULL,'辽','Liaoning','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-22','PROVINCE','吉林','22',NULL,'吉','Jilin','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-23','PROVINCE','黑龙江','23',NULL,'黑','Heilongjiang','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-31','MUNICIPALITY','上海','31',NULL,'沪','Shanghai','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-32','PROVINCE','江苏','32',NULL,'苏','Jiangsu','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-33','PROVINCE','浙江','33',NULL,'浙','Zhejiang','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-34','PROVINCE','安徽','34',NULL,'皖','Anhui','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-35','PROVINCE','福建','35',NULL,'闽','Fujian','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-36','PROVINCE','江西','36',NULL,'赣','Jiangxi','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-37','PROVINCE','山东','37',NULL,'鲁','Shandong','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-41','PROVINCE','河南','41',NULL,'豫','Henan','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-42','PROVINCE','湖北','42',NULL,'鄂','Hubei','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-43','PROVINCE','湖南','43',NULL,'湘','Hunan','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-44','PROVINCE','广东','44',NULL,'粤','Guangdong','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-45','MUNICIPALITY','广西','45',NULL,'桂','Guangxi','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-46','PROVINCE','海南','46',NULL,'琼','Hainan','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-50','MUNICIPALITY','重庆','50',NULL,'渝','Chongqing','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-51','PROVINCE','四川','51',NULL,'川','Sichuan','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-52','PROVINCE','贵州','52',NULL,'黔','Guizhou','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-53','PROVINCE','云南','53',NULL,'滇','Yunnan','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-54','MUNICIPALITY','西藏','54',NULL,'藏','Tibet','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-61','PROVINCE','陕西','61',NULL,'陕','Shaanxi','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-62','PROVINCE','甘肃','62',NULL,'甘','Gansu','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-63','PROVINCE','青海','63',NULL,'青','Qinghai','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-64','MUNICIPALITY','宁夏','64',NULL,'宁','Ningxia','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-65','MUNICIPALITY','新疆','65',NULL,'新','Xinjiang','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-71','PROVINCE','台湾','71',NULL,'台','Taiwan','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-91','MUNICIPALITY','香港','91',NULL,'香港','Hong Kong','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CN-92','MUNICIPALITY','澳门','92',NULL,'澳门','Macau','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO','STATE','Colorado','CO',NULL,'CO',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CO-AMA','STATE','Amazonas','AMA',NULL,'AMA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-ANT','STATE','Antioquia','ANT',NULL,'ANT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-ARA','STATE','Arauca','ARA',NULL,'ARA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-ATL','STATE','Atlántico','ATL',NULL,'ATL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-BOL','STATE','Bolívar','BOL',NULL,'BOL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-BOY','STATE','Boyacá','BOY',NULL,'BOY',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-CAL','STATE','Caldas','CAL',NULL,'CAL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-CAQ','STATE','Caquetá','CAQ',NULL,'CAQ',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-CAS','STATE','Casanare','CAS',NULL,'CAS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-CAU','STATE','Cauca','CAU',NULL,'CAU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-CES','STATE','Cesar','CES',NULL,'CES',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-CHO','STATE','Chocó','CHO',NULL,'CHO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-COR','STATE','Córdoba','COR',NULL,'COR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-CUN','STATE','Cundinamarca','CUN',NULL,'CUN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-DC','STATE','Bogotá D.C.','DC',NULL,'DC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-GUA','STATE','Guainía','GUA',NULL,'GUA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-GUV','STATE','Guaviare','GUV',NULL,'GUV',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-HUI','STATE','Huila','HUI',NULL,'HUI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-LAG','STATE','La Guajira','LAG',NULL,'LAG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-MAG','STATE','Magdalena','MAG',NULL,'MAG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-MET','STATE','Meta','MET',NULL,'MET',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-NAR','STATE','Nariño','NAR',NULL,'NAR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-NSA','STATE','Norte de Santander','NSA',NULL,'NSA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-PUT','STATE','Putumayo','PUT',NULL,'PUT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-QUI','STATE','Quindío','QUI',NULL,'QUI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-RIS','STATE','Risaralda','RIS',NULL,'RIS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-SAN','STATE','Santander','SAN',NULL,'SAN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-SAP','STATE','San Andrés y Providencia','SAP',NULL,'SAP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-SUC','STATE','Sucre','SUC',NULL,'SUC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-TOL','STATE','Tolima','TOL',NULL,'TOL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-VAC','STATE','Valle del Cauca','VAC',NULL,'VAC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-VAU','STATE','Vaupés','VAU',NULL,'VAU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO-VID','STATE','Vichada','VID',NULL,'VID',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COD','COUNTRY','Congo, The Democratic Republic Of The','CD','180','COD',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('COG','COUNTRY','Congo','CG','178','COG',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('COK','COUNTRY','Cook Islands','CK','184','COK',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('COL','COUNTRY','Colombia','CO','170','COL',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('COM','COUNTRY','Comoros','KM','174','COM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CPV','COUNTRY','Cape Verde','CV','132','CPV',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CRI','COUNTRY','Costa Rica','CR','188','CRI',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CT','STATE','Connecticut','CT',NULL,'CT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CUB','COUNTRY','Cuba','CU','192','CUB',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CXR','COUNTRY','Christmas Island','CX','162','CXR',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CYM','COUNTRY','Cayman Islands','KY','136','CYM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CYP','COUNTRY','Cyprus','CY','196','CYP',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CZE','COUNTRY','Czech Republic','CZ','203','CZE',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DC','STATE','District of Columbia','DC',NULL,'DC',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('DE','STATE','Delaware','DE',NULL,'DE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('DE-BE','STATE','Berlin','BE',NULL,'BE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-BR','STATE','Brandenburg','BR',NULL,'BR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-BW','STATE','Baden-Württemberg','BW',NULL,'BW',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-BY','STATE','Bayern','BY',NULL,'BY',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-HB','STATE','Bremen','HB',NULL,'HB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-HE','STATE','Hessen','HE',NULL,'HE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-HH','STATE','Hamburg','HH',NULL,'HH',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-MV','STATE','Mecklenburg-Vorpommern','MV',NULL,'MV',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-NI','STATE','Niedersachsen','NI',NULL,'NI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-NW','STATE','Nordrhein-Westfalen','NW',NULL,'NW',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-RP','STATE','Rheinland-Pfalz','RP',NULL,'RP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-SA','STATE','Sachsen-Anhalt','SA',NULL,'SA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-SH','STATE','Schleswig-Holstein','SH',NULL,'SH',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-SL','STATE','Saarland','SL',NULL,'SL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-SN','STATE','Sachsen','SN',NULL,'SN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DE-TH','STATE','Thüringen','TH',NULL,'TH',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','COUNTRY','Germany','DE','276','DEU',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DJI','COUNTRY','Djibouti','DJ','262','DJI',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DMA','COUNTRY','Dominica','DM','212','DMA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DNK','COUNTRY','Denmark','DK','208','DNK',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DOM','COUNTRY','Dominican Republic','DO','214','DOM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DZA','COUNTRY','Algeria','DZ','012','DZA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ECU','COUNTRY','Ecuador','EC','218','ECU',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('EGY','COUNTRY','Egypt','EG','818','EGY',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ENGL','COUNTRY','England','ENG','896','ENGL',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ERI','COUNTRY','Eritrea','ER','232','ERI',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ES-A','PROVINCE','Alicante','A',NULL,'A',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AB','PROVINCE','Albacete','AB',NULL,'AB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AL','PROVINCE','Almería','AL',NULL,'AL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AN','REGION','Andalucía','AN',NULL,'AN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AR','REGION','Aragón','AR',NULL,'AR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AS','REGION','Oviedo','O',NULL,'O',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AV','PROVINCE','Ávila','AV',NULL,'AV',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-B','PROVINCE','Barcelona','B',NULL,'B',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-BA','PROVINCE','Badajoz','BA',NULL,'BA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-BI','PROVINCE','Vizcaya','BI',NULL,'BI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-BU','PROVINCE','Burgos','BU',NULL,'BU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-C','PROVINCE','La Coruña','C',NULL,'C',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CA','PROVINCE','Cádiz','CA',NULL,'CA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CAN','REGION','Cantabria','S',NULL,'S',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CC','PROVINCE','Cáceres','CC',NULL,'CC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CE','PROVINCE','Ceuta','CE',NULL,'CE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','REGION','Castilla y León','CL',NULL,'CL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CM','REGION','Castilla-La Mancha','CM',NULL,'CM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CN','REGION','Canarias','CN',NULL,'CN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CO','PROVINCE','Córdoba','CO',NULL,'CO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CR','PROVINCE','Ciudad Real','CR',NULL,'CR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CS','PROVINCE','Castellón','CS',NULL,'CS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CT','REGION','Cataluña','CT',NULL,'CT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CU','PROVINCE','Cuenca','CU',NULL,'CU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-EX','REGION','Extremadura','EX',NULL,'EX',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GA','REGION','Galicia','GA',NULL,'GA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GC','PROVINCE','Las Palmas','GC',NULL,'GC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GI','PROVINCE','Gerona','GI',NULL,'GI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GR','PROVINCE','Granada','GR',NULL,'GR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GU','PROVINCE','Guadalajara','GU',NULL,'GU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-H','PROVINCE','Huelva','H',NULL,'H',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-HU','PROVINCE','Huesca','HU',NULL,'HU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-IB','REGION','Islas Baleares','IB',NULL,'IB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-J','PROVINCE','Jaén','J',NULL,'J',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-L','PROVINCE','Lérida','L',NULL,'L',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-LE','PROVINCE','León','LE',NULL,'LE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-LO','PROVINCE','Logroño','LO',NULL,'LO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-LR','REGION','La Rioja','LO',NULL,'LO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-LU','PROVINCE','Lugo','LU',NULL,'LU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-M','PROVINCE','Madrid','M',NULL,'M',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-MA','PROVINCE','Málaga','MA',NULL,'MA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-MAD','REGION','Madrid','M',NULL,'M',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-ML','PROVINCE','Melilla','ML',NULL,'ML',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-MU','PROVINCE','Murcia','MU',NULL,'MU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-MUR','REGION','Región de Murcia','MU',NULL,'MU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-NA','PROVINCE','Navarra','NA',NULL,'NA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-NAV','REGION','Navarra','NA',NULL,'NA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-O','PROVINCE','Asturias','O',NULL,'O',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-OR','PROVINCE','Orense','OR',NULL,'OR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-P','PROVINCE','Palencia','P',NULL,'P',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-PM','PROVINCE','Islas Baleares','PM',NULL,'PM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-PO','PROVINCE','Pontevedra','PO',NULL,'PO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-PV','REGION','País Vasco','PV',NULL,'PV',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-S','PROVINCE','Cantabria','S',NULL,'S',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-SA','PROVINCE','Salamanca','SA',NULL,'SA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-SE','PROVINCE','Sevilla','SE',NULL,'SE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-SG','PROVINCE','Segovia','SG',NULL,'SG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-SO','PROVINCE','Soria','SO',NULL,'SO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-SS','PROVINCE','Guipúzcoa','SS',NULL,'SS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-T','PROVINCE','Tarragona','T',NULL,'T',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-TE','PROVINCE','Teruel','TE',NULL,'TE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-TF','PROVINCE','Santa Cruz de Tenerife','TF',NULL,'TF',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-TO','PROVINCE','Toledo','TO',NULL,'TO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-V','PROVINCE','Valencia','V',NULL,'V',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-VA','PROVINCE','Valladolid','VA',NULL,'VA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-VC','REGION','Comunidad Valenciana','VC',NULL,'VC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-VI','PROVINCE','Álava','VI',NULL,'VI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-Z','PROVINCE','Zaragoza','Z',NULL,'Z',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-ZA','PROVINCE','Zamora','ZA',NULL,'ZA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESH','COUNTRY','Western Sahara','EH','732','ESH',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ESP','COUNTRY','Spain','ES','724','ESP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('EST','COUNTRY','Estonia','EE','233','EST',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ETH','COUNTRY','Ethiopia','ET','231','ETH',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('EU','GROUP','European Union','EU',NULL,'EU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('FIN','COUNTRY','Finland','FI','246','FIN',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('FJI','COUNTRY','Fiji','FJ','242','FJI',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('FL','STATE','Florida','FL',NULL,'FL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('FLK','COUNTRY','Falkland Islands (malvinas)','FK','238','FLK',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('FM','STATE','Federated States of Micronesia','FM',NULL,'FM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('FR-01','COUNTY','Ain','01',NULL,'AIN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-02','COUNTY','Aisne','02',NULL,'AIS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-03','COUNTY','Allier','03',NULL,'ALL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-04','COUNTY','Alpes de Hautes-Provence','04',NULL,'AHP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-05','COUNTY','Hautes-Alpes','05',NULL,'HAL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-06','COUNTY','Alpes-Maritimes','06',NULL,'ALM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-07','COUNTY','Ardèche','07',NULL,'ARD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-08','COUNTY','Ardennes','08',NULL,'ARE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-09','COUNTY','Ariège','09',NULL,'ARI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-10','COUNTY','Aube','10',NULL,'AUB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-11','COUNTY','Aude','11',NULL,'AUD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-12','COUNTY','Aveyron','12',NULL,'AVE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-13','COUNTY','Bouches-du-Rhône','13',NULL,'BDR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-14','COUNTY','Calvados','14',NULL,'CAL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-15','COUNTY','Cantal','15',NULL,'CAN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-16','COUNTY','Charente','16',NULL,'CHA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-17','COUNTY','Charente-Maritime','17',NULL,'CHM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-18','COUNTY','Cher','18',NULL,'CHE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-19','COUNTY','Corrèze','19',NULL,'COR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-20','COUNTY','Corse','20',NULL,'COS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-21','COUNTY','Côte-d\'Or','21',NULL,'COO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-22','COUNTY','Côtes d\'Armor','22',NULL,'COA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-23','COUNTY','Creuse','23',NULL,'CRE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-24','COUNTY','Dordogne','24',NULL,'DOR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-25','COUNTY','Doubs','25',NULL,'DOU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-26','COUNTY','Drôme','26',NULL,'DRO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-27','COUNTY','Eure','27',NULL,'EUR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-28','COUNTY','Eure-et-Loir','28',NULL,'EUL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-29','COUNTY','Finistère','29',NULL,'FIN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-2A','COUNTY','Corse-du-Sud','2A',NULL,'CDS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-2B','COUNTY','Haute-Corse','2B',NULL,'HCO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-30','COUNTY','Gard','30',NULL,'GAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-31','COUNTY','Haute-Garonne','31',NULL,'HAG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-32','COUNTY','Gers','32',NULL,'GER',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-33','COUNTY','Gironde','33',NULL,'GIR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-34','COUNTY','Hérault','34',NULL,'HER',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-35','COUNTY','Ille-et-Vilaine','35',NULL,'ILL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-36','COUNTY','Indre','36',NULL,'IND',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-37','COUNTY','Indre-et-Loire','37',NULL,'IEL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-38','COUNTY','Isère','38',NULL,'ISE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-39','COUNTY','Jura','39',NULL,'JUR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-40','COUNTY','Landes','40',NULL,'LAN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-41','COUNTY','Loir-et-Cher','41',NULL,'LEC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-42','COUNTY','Loire','42',NULL,'LOI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-43','COUNTY','Haute-Loire','43',NULL,'HLO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-44','COUNTY','Loire-Atlantique','44',NULL,'LOA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-45','COUNTY','Loiret','45',NULL,'LOR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-46','COUNTY','Lot','46',NULL,'LOT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-47','COUNTY','Lot-et-Garonne','47',NULL,'LOG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-48','COUNTY','Lozère','48',NULL,'LOZ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-49','COUNTY','Maine-et-Loire','49',NULL,'MEL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-50','COUNTY','Manche','50',NULL,'MAN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-51','COUNTY','Marne','51',NULL,'MAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-52','COUNTY','Haute-Marne','52',NULL,'HMA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-53','COUNTY','Mayenne','53',NULL,'MAY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-54','COUNTY','Meurthe-et-Moselle','54',NULL,'MEM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-55','COUNTY','Meuse','55',NULL,'MEU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-56','COUNTY','Morbihan','56',NULL,'MOR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-57','COUNTY','Moselle','57',NULL,'MOS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-58','COUNTY','Nièvre','58',NULL,'NIE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-59','COUNTY','Nord','59',NULL,'NOR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-60','COUNTY','Oise','60',NULL,'OIS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-61','COUNTY','Orne','61',NULL,'ORN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-62','COUNTY','Pas-de-Calais','62',NULL,'PDC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-63','COUNTY','Puy-de-Dôme','63',NULL,'PUY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-64','COUNTY','Pyrénées-Atlantiques','64',NULL,'PYA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-65','COUNTY','Hautes-Pyrénées','65',NULL,'HPY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-66','COUNTY','Pyrénées-Orientales','66',NULL,'PYO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-67','COUNTY','Bas-Rhin','67',NULL,'BRH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-68','COUNTY','Haut-Rhin','68',NULL,'HRH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-69','COUNTY','Rhône','69',NULL,'RHO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-70','COUNTY','Haute-Saône','70',NULL,'HAS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-71','COUNTY','Saône-et-Loire','71',NULL,'SEL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-72','COUNTY','Sarthe','72',NULL,'SAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-73','COUNTY','Savoie','73',NULL,'SAV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-74','COUNTY','Haute-Savoie','74',NULL,'HAS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-75','COUNTY','Paris','75',NULL,'PAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-76','COUNTY','Seine-Maritime','76',NULL,'SMA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-77','COUNTY','Seine-et-Marne','77',NULL,'SEM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-78','COUNTY','Yvelines','78',NULL,'YVE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-79','COUNTY','Deux-Sèvres','79',NULL,'DSE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-80','COUNTY','Somme','80',NULL,'SOM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-81','COUNTY','Tarn','81',NULL,'TAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-82','COUNTY','Tarn-et-Garonne','82',NULL,'TAG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-83','COUNTY','Var','83',NULL,'VAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-84','COUNTY','Vaucluse','84',NULL,'VAU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-85','COUNTY','Vendée','85',NULL,'VEN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-86','COUNTY','Vienne','86',NULL,'VIE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-87','COUNTY','Haute-Vienne','87',NULL,'HVI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-88','COUNTY','Vosges','88',NULL,'VOS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-89','COUNTY','Yonne','89',NULL,'YON',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-90','COUNTY','Territoire-de-Belfort','90',NULL,'TDB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-91','COUNTY','Essonne','91',NULL,'ESS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-92','COUNTY','Hauts-de-Seine','92',NULL,'HDS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-93','COUNTY','Seine-Saint-Denis','93',NULL,'SSD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-94','COUNTY','Val-de-Marne','94',NULL,'VDM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-95','COUNTY','Val-d\'Oise','95',NULL,'VDO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-971','COUNTY','Guadeloupe','971',NULL,'GUA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-972','COUNTY','Guyane','972',NULL,'GUY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-973','COUNTY','Martinique','973',NULL,'MAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-974','COUNTY','La Réunion','974',NULL,'REU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-975','COUNTY','St Pierre et Miquelon','975',NULL,'SPM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-976','COUNTY','Mayotte','976',NULL,'MAY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-98','COUNTY','Monaco','98',NULL,'MON',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-986','COUNTY','Wallis et Futuna','986',NULL,'WeF',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-987','COUNTY','Polynésie Française','987',NULL,'POF',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-988','COUNTY','Nouvelle Calédonie','988',NULL,'NOC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ACY74','COUNTY_CITY','Annecy','ACY',NULL,'ACY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AGE47','COUNTY_CITY','Agen','AGE',NULL,'AGE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AJA2A','COUNTY_CITY','Ajaccio','AJA',NULL,'AJA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ALB81','COUNTY_CITY','Albi','ALB',NULL,'ALB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ALE61','COUNTY_CITY','Alençon','ALE',NULL,'ALE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ALS','REGION','Alsace','ALS',NULL,'ALS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AMI80','COUNTY_CITY','Amiens','AMI',NULL,'AMI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ANG16','COUNTY_CITY','Angoulême','ANG',NULL,'ANG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ANG49','COUNTY_CITY','Angers','ANG',NULL,'ANG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AQU','REGION','Aquitaine','AQU',NULL,'AQU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ARR62','COUNTY_CITY','Arras','ARR',NULL,'ARR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUC32','COUNTY_CITY','Auch','AUC',NULL,'AUC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUR15','COUNTY_CITY','Aurillac','AUR',NULL,'AUR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUV','REGION','Auvergne','AUV',NULL,'AUV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AVG84','COUNTY_CITY','Avignon','AVG',NULL,'AVG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AXR89','COUNTY_CITY','Auxerre','AXR',NULL,'AXR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BAN','REGION','Basse-Normandie','BAN',NULL,'BAN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BAS2B','COUNTY_CITY','Bastia','BAS',NULL,'BAS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BBY93','COUNTY_CITY','Bobigny','BBY',NULL,'BBY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BEB01','COUNTY_CITY','Bourg-en-Bresse','BEB',NULL,'BEB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BES25','COUNTY_CITY','Besançon','BES',NULL,'BES',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BLD55','COUNTY_CITY','Bar-le-Duc','BLD',NULL,'BLD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BLF90','COUNTY_CITY','Belfort','BLF',NULL,'BLF',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BLO41','COUNTY_CITY','Blois','BLO',NULL,'BLO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOR33','COUNTY_CITY','Bordeaux','BOR',NULL,'BOR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOU','REGION','Bourgogne','BOU',NULL,'BOU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOU18','COUNTY_CITY','Bourges','BOU',NULL,'BOU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BRE','REGION','Bretagne','BRE',NULL,'BRE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BVA60','COUNTY_CITY','Beauvais','BVA',NULL,'BVA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CAE14','COUNTY_CITY','Caen','CAE',NULL,'CAE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CAH46','COUNTY_CITY','Cahors','CAH',NULL,'CAH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CAR11','COUNTY_CITY','Carcassonne','CAR',NULL,'CAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CBY73','COUNTY_CITY','Chambéry','CBY',NULL,'CBY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEC51','COUNTY_CITY','Châlons-en-Champagne','CEC',NULL,'CEC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEN','REGION','Centre','CEN',NULL,'CEN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHA','REGION','Champagne-Ardenne','CHA',NULL,'CHA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHA28','COUNTY_CITY','Chartres','CHA',NULL,'CHA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHM08','COUNTY_CITY','Charleville-Mézières','CHM',NULL,'CHM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHM52','COUNTY_CITY','Chaumont','CHM',NULL,'CHM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHT36','COUNTY_CITY','Châteauroux','CHT',NULL,'CHT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CLF63','COUNTY_CITY','Clermont-Ferrand','CLF',NULL,'CLF',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CLM68','COUNTY_CITY','Colmar','CLM',NULL,'CLM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-COR','REGION','Corse','COR',NULL,'COR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CTL94','COUNTY_CITY','Créteil','CTL',NULL,'CTL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DIG04','COUNTY_CITY','Digne','DIG',NULL,'DIG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DIJ21','COUNTY_CITY','Dijon','DIJ',NULL,'DIJ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DOM','REGION','Departement d\'outre Mer','DOM',NULL,'DOM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-EPI88','COUNTY_CITY','Épinal','EPI',NULL,'EPI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-EVR27','COUNTY_CITY','Évreux','EVR',NULL,'EVR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-EVR91','COUNTY_CITY','Évry','EVR',NULL,'EVR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-FCO','REGION','Franche-Comté','FCO',NULL,'FCO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-FOI09','COUNTY_CITY','Foix','FOI',NULL,'FOI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-GAP05','COUNTY_CITY','Gap','GAP',NULL,'GAP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-GRE38','COUNTY_CITY','Grenoble','GRE',NULL,'GRE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-GUE23','COUNTY_CITY','Guéret','GUE',NULL,'GUE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-HNO','REGION','Haute-Normandie','HNO',NULL,'HNO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','REGION','Ile-de-France','IDF',NULL,'IDF',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LAO02','COUNTY_CITY','Laon','LAO',NULL,'LAO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LAR','REGION','Languedoc-Roussillon','LAR',NULL,'LAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LIL59','COUNTY_CITY','Lille','LIL',NULL,'LIL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LIM','REGION','Limousin','LIM',NULL,'LIM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LMA72','COUNTY_CITY','Le Mans','LMA',NULL,'LMA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LMG87','COUNTY_CITY','Limoges','LMG',NULL,'LMG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LON39','COUNTY_CITY','Lons-le-Saunier','LON',NULL,'LON',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LOR','REGION','Lorraine','LOR',NULL,'LOR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LRO17','COUNTY_CITY','La Rochelle','LRO',NULL,'LRO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LVL53','COUNTY_CITY','Laval','LVL',NULL,'LVL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LYO69','COUNTY_CITY','Lyon','LYO',NULL,'LYO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MAR13','COUNTY_CITY','Marseille','MAR',NULL,'MAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MCN71','COUNTY_CITY','Mâcon','MCN',NULL,'MCN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MDM40','COUNTY_CITY','Mont-de-Marsan','MDM',NULL,'MDM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MEN48','COUNTY_CITY','Mende','MEN',NULL,'MEN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MET57','COUNTY_CITY','Metz','MET',NULL,'MET',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','REGION','Midi-Pyrénées','MIP',NULL,'MIP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MLN77','COUNTY_CITY','Melun','MLN',NULL,'MLN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MON34','COUNTY_CITY','Montpellier','MON',NULL,'MON',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MOU03','COUNTY_CITY','Moulins','MOU',NULL,'MOU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MTB82','COUNTY_CITY','Montauban','MTB',NULL,'MTB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NAN44','COUNTY_CITY','Nantes','NAN',NULL,'NAN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NCY54','COUNTY_CITY','Nancy','NCY',NULL,'NCY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NEV58','COUNTY_CITY','Nevers','NEV',NULL,'NEV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NIC06','COUNTY_CITY','Nice','NIC',NULL,'NIC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NIM30','COUNTY_CITY','Nîmes','NIM',NULL,'NIM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NIO79','COUNTY_CITY','Niort','NIO',NULL,'NIO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NPC','REGION','Nord-Pas-de-Calais','NPC',NULL,'NPC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NTR92','COUNTY_CITY','Nanterre','NTR',NULL,'NTR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ORL45','COUNTY_CITY','Orléans','ORL',NULL,'ORL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAC','REGION','Provence-Alpes-Côte d\'Azur','PAC',NULL,'PAC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAR75','COUNTY_CITY','Paris','PAR',NULL,'PAR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAU64','COUNTY_CITY','Pau','PAU',NULL,'PAU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PDL','REGION','Pays de la Loire','PDL',NULL,'PDL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PER24','COUNTY_CITY','Périgueux','PER',NULL,'PER',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PEV43','COUNTY_CITY','Le Puy-en-Velay','PEV',NULL,'PEV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PIC','REGION','Picardie','PIC',NULL,'PIC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-POC','REGION','Poitou-Charentes','POC',NULL,'POC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-POI86','COUNTY_CITY','Poitiers','POI',NULL,'POI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PPG66','COUNTY_CITY','Perpignan','PPG',NULL,'PPG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PRI07','COUNTY_CITY','Privas','PRI',NULL,'PRI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PTO95','COUNTY_CITY','Pontoise','PTO',NULL,'PTO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-QUI29','COUNTY_CITY','Quimper','QUI',NULL,'QUI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','REGION','Rhône-Alpes','RAL',NULL,'RAL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-REN35','COUNTY_CITY','Rennes','REN',NULL,'REN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ROD12','COUNTY_CITY','Rodez','ROD',NULL,'ROD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ROU76','COUNTY_CITY','Rouen','ROU',NULL,'ROU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RSY85','COUNTY_CITY','La Roche-sur-Yon','RSY',NULL,'RSY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-SBG67','COUNTY_CITY','Strasbourg','SBG',NULL,'SBG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-SBR22','COUNTY_CITY','Saint-Brieuc','SBR',NULL,'SBR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-SET42','COUNTY_CITY','Saint-Étienne','SET',NULL,'SET',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-SLO50','COUNTY_CITY','Saint-Lô','SLO',NULL,'SLO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TBS65','COUNTY_CITY','Tarbes','TBS',NULL,'TBS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TLN83','COUNTY_CITY','Toulon','TLN',NULL,'TLN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TLS31','COUNTY_CITY','Toulouse','TLS',NULL,'TLS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TOM','REGION','Territoire d\'outre Mer','TOM',NULL,'TOM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TOU37','COUNTY_CITY','Tours','TOU',NULL,'TOU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TRO10','COUNTY_CITY','Troyes','TRO',NULL,'TRO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TUL19','COUNTY_CITY','Tulle','TUL',NULL,'TUL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-VAL26','COUNTY_CITY','Valence','VAL',NULL,'VAL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-VAN56','COUNTY_CITY','Vannes','VAN',NULL,'VAN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-VSL70','COUNTY_CITY','Vesoul','VSL',NULL,'VSL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-VSS78','COUNTY_CITY','Versailles','VSS',NULL,'VSS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','COUNTRY','France','FR','250','FRA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('FRO','COUNTRY','Faroe Islands','FO','234','FRO',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('FSM','COUNTRY','Micronesia, Federated States Of','FM','583','FSM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('FXX','COUNTRY','France, Metropolitan','FX','249','FXX',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GA','STATE','Georgia','GA',NULL,'GA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GAB','COUNTRY','Gabon','GA','266','GAB',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GB-ABDN','COUNTY','Aberdeenshire','ABDN',NULL,'ABDN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-AGSY','COUNTY','Anglesey/Sir Fon','AGSY',NULL,'AGSY',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-ANGS','COUNTY','Angus/Forfarshire','ANGS',NULL,'ANGS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-ARGL','COUNTY','Argyllshire','ARGL',NULL,'ARGL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-AYRS','COUNTY','Ayrshire','AYRS',NULL,'AYRS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-BANF','COUNTY','Banffshire','BANF',NULL,'BANF',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-BDFD','COUNTY','Bedfordshire','BDFD',NULL,'BDFD',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-BREK','COUNTY','Brecknockshire/Sir Frycheiniog','BREK',NULL,'BREK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-BRKS','COUNTY','Berkshire','BRKS',NULL,'BRKS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-BUCKS','COUNTY','Buckinghamshire','BUCKS',NULL,'BUCKS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-BUTE','COUNTY','Buteshire','BUTE',NULL,'BUTE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-BWKS','COUNTY','Berwickshire','BWKS',NULL,'BWKS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CAMBS','COUNTY','Cambridgeshire','CAMBS',NULL,'CAMBS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CDGN','COUNTY','Cardiganshire/Ceredigion','CDGN',NULL,'CDGN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CHES','COUNTY','Cheshire','CHES',NULL,'CHES',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CLAK','COUNTY','Clackmannanshire','CLAK',NULL,'CLAK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CMRN','COUNTY','Carmarthenshire/Sir Gaerfyrddin','CMRN',NULL,'CMRN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CMTY','COUNTY','Cromartyshire','CMTY',NULL,'CMTY',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CNFN','COUNTY','Caernarfonshire/Sir Gaernarfon','CNFN',NULL,'CNFN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CNWL','COUNTY','Cornwall','CNWL',NULL,'CNWL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CTHN','COUNTY','Caithness','CTHN',NULL,'CTHN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-CUMB','COUNTY','Cumberland','CUMB',NULL,'CUMB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-DENB','COUNTY','Denbighshire/Sir Ddinbych','DENB',NULL,'DENB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-DEVON','COUNTY','Devon','DEVON',NULL,'DEVON',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-DMBR','COUNTY','Dunbartonshire/Dumbartonshire','DMBR',NULL,'DMBR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-DMFS','COUNTY','Dumfriesshire','DMFS',NULL,'DMFS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-DRBYS','COUNTY','Derbyshire','DRBYS',NULL,'DRBYS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-DRHM','COUNTY','Durham','DRHM',NULL,'DRHM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-DRST','COUNTY','Dorset','DRST',NULL,'DRST',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-ELOTH','COUNTY','East Lothian/Haddingtonshire','ELOTH',NULL,'ELOTH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-ESSX','COUNTY','Essex','ESSX',NULL,'ESSX',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-FIFE','COUNTY','Fife','FIFE',NULL,'FIFE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-FTSH','COUNTY','Flintshire/Sir Fflint','FTSH',NULL,'FTSH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-GLAM','COUNTY','Glamorgan/Morgannwg','GLAM',NULL,'GLAM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-GLOU','COUNTY','Gloucestershire','GLOU',NULL,'GLOU',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-HAMPS','COUNTY','Hampshire','HAMPS',NULL,'HAMPS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-HERTS','COUNTY','Hertfordshire','HERTS',NULL,'HERTS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-HRFDS','COUNTY','Herefordshire','HRFDS',NULL,'HRFDS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-HUNTS','COUNTY','Huntingdonshire','HUNTS',NULL,'HUNTS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-INVER','COUNTY','Inverness-shire','INVER',NULL,'INVER',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-KENT','COUNTY','Kent','KENT',NULL,'KENT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-KNDN','COUNTY','Kincardineshire','KNDN',NULL,'KNDN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-KRCUD','COUNTY','Kirkcudbrightshire','KRCUD',NULL,'KRCUD',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-KRSS','COUNTY','Kinross-shire','KRSS',NULL,'KRSS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-LANCS','COUNTY','Lancashire','LANCS',NULL,'LANCS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-LIECS','COUNTY','Leicestershire','LIECS',NULL,'LIECS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-LINCS','COUNTY','Lincolnshire','LINCS',NULL,'LINCS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-LRKS','COUNTY','Lanarkshire','LRKS',NULL,'LRKS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-MIENT','COUNTY','Merioneth/Meirionnydd','MIENT',NULL,'MIENT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-MLOTH','COUNTY','Midlothian/Edinburghshire','MLOTH',NULL,'MLOTH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-MMTH','COUNTY','Monmouthshire/Sir Fynwy','MMTH',NULL,'MMTH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-MNTGS','COUNTY','Montgomeryshire/Sir Drefaldwyn','MNTGS',NULL,'MNTGS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-MORAY','COUNTY','Morayshire','MORAY',NULL,'MORAY',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-MSEX','COUNTY','Middlesex','MSEX',NULL,'MSEX',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-NAIRN','COUNTY','Nairnshire','NAIRN',NULL,'NAIRN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-NFLK','COUNTY','Norfolk','NFLK',NULL,'NFLK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-NHANTS','COUNTY','Northamptonshire','NHANTS',NULL,'NHANTS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-NHUMB','COUNTY','Northumberland','NHUMB',NULL,'NHUMB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-NOTTS','COUNTY','Nottinghamshire','NOTTS',NULL,'NOTTS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-ORK','COUNTY','Orkney','ORK',NULL,'ORK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-OXFD','COUNTY','Oxfordshire','OXFD',NULL,'OXFD',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-PEEBS','COUNTY','Peeblesshire','PEEBS',NULL,'PEEBS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-PERTH','COUNTY','Perthshire','PERTH',NULL,'PERTH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-PMBRK','COUNTY','Pembrokeshire/Sir Benfro','PMBRK',NULL,'PMBRK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-RNFR','COUNTY','Renfrewshire','RNFR',NULL,'RNFR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-RNRS','COUNTY','Radnorshire/Sir Faesyfed','RNRS',NULL,'RNRS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-ROSS','COUNTY','Ross-shire','ROSS',NULL,'ROSS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-ROXB','COUNTY','Roxburghshire','ROXB',NULL,'ROXB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-RUTL','COUNTY','Rutland','RUTL',NULL,'RUTL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-SELKS','COUNTY','Selkirkshire','SELKS',NULL,'SELKS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-SFFK','COUNTY','Suffolk','SFFK',NULL,'SFFK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-SHET','COUNTY','Shetland','SHET',NULL,'SHET',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-SHROPS','COUNTY','Shropshire','SHROPS',NULL,'SHROPS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-SOMST','COUNTY','Somerset','SOMST',NULL,'SOMST',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-STAFFS','COUNTY','Staffordshire','STAFFS',NULL,'STAFFS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-STLNG','COUNTY','Stirlingshire','STLNG',NULL,'STLNG',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-SURR','COUNTY','Surrey','SURR',NULL,'SURR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-SUSX','COUNTY','Sussex','SUSX',NULL,'SUSX',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-SUTH','COUNTY','Sutherland','SUTH',NULL,'SUTH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-WGNSH','COUNTY','Wigtownshire','WGNSH',NULL,'WGNSH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-WILTS','COUNTY','Wiltshire','WILTS',NULL,'WILTS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-WLOTH','COUNTY','West Lothian/Linlithgowshire','WLOTH',NULL,'WLOTH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-WMLD','COUNTY','Westmorland','WMLD',NULL,'WMLD',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-WORCS','COUNTY','Worcestershire','WORCS',NULL,'WORCS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-WWKS','COUNTY','Warwickshire','WWKS',NULL,'WWKS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GB-YORKS','COUNTY','Yorkshire','YORKS',NULL,'YORKS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GBR','COUNTRY','United Kingdom','GB','826','GBR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('GEO','COUNTRY','Georgia','GE','268','GEO',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GHA','COUNTRY','Ghana','GH','288','GHA',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GIB','COUNTRY','Gibraltar','GI','292','GIB',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GIN','COUNTRY','Guinea','GN','324','GIN',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GLP','COUNTRY','Guadeloupe','GP','312','GLP',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GMB','COUNTRY','Gambia','GM','270','GMB',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GNB','COUNTRY','Guinea-bissau','GW','624','GNB',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GNQ','COUNTRY','Equatorial Guinea','GQ','226','GNQ',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GRC','COUNTRY','Greece','GR','300','GRC',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GRD','COUNTRY','Grenada','GD','308','GRD',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GRL','COUNTRY','Greenland','GL','304','GRL',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GTM','COUNTRY','Guatemala','GT','320','GTM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GU','STATE','Guam','GU',NULL,'GU',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GUF','COUNTRY','French Guiana','GF','254','GUF',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GUM','COUNTRY','Guam','GU','316','GUM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GUY','COUNTRY','Guyana','GY','328','GUY',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HI','STATE','Hawaii','HI',NULL,'HI',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('HKG','COUNTRY','Hong Kong','HK','344','HKG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('HMD','COUNTRY','Heard And Mc Donald Islands','HM','334','HMD',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HND','COUNTRY','Honduras','HN','340','HND',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('HRV','COUNTRY','Croatia (local Name: Hrvatska)','HR','191','HRV',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HTI','COUNTRY','Haiti','HT','332','HTI',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HUN','COUNTRY','Hungary','HU','348','HUN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('IA','STATE','Iowa','IA',NULL,'IA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ID','STATE','Idaho','ID',NULL,'ID',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('IDN','COUNTRY','Indonesia','ID','360','IDN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('IL','STATE','Illinois','IL',NULL,'IL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('IN','STATE','Indiana','IN',NULL,'IN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('IN-AN','STATE','ANDAMAN AND NICOBAR','AN',NULL,'AN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-AP','STATE','ANDHRA PRADESH','AP',NULL,'AP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-AR','STATE','ARUNACHAL PRADESH','AR',NULL,'AR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-AS','STATE','ASSAM','AS',NULL,'AS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-BR','STATE','BIHAR','BR',NULL,'BR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-CH','STATE','CHANDIGARH','CH',NULL,'CH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-CT','STATE','CHHATTISGARH','CT',NULL,'CT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-DD','STATE','DAMAN AND DIU','DD',NULL,'DD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-DN','STATE','DADRA AND NAGER HAVELI','DN',NULL,'DN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-GA','STATE','GOA','GA',NULL,'GA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-GJ','STATE','GUJARAT','GJ',NULL,'GJ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-HP','STATE','HIMACHAL PRADESH','HP',NULL,'HP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-HR','STATE','HARYANA','HR',NULL,'HR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-JH','STATE','JHARKHAND','JH',NULL,'JH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-JK','STATE','JAMMU AND KASHMIR','JK',NULL,'JK',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-KA','STATE','KARNATAKA','KA',NULL,'KA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-KL','STATE','KERALA','KL',NULL,'KL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-LD','STATE','LAKSHADWEEP','LD',NULL,'LD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-MH','STATE','MAHARASHTRA','MH',NULL,'MH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-ML','STATE','MEGHALAYA','ML',NULL,'ML',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-MN','STATE','MANIPUR','MN',NULL,'MN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-MP','STATE','MADHYA PRADESH','MP',NULL,'MP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-MZ','STATE','MIZORAM','MZ',NULL,'MZ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-ND','STATE','NEW DELHI','ND',NULL,'ND',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-NL','STATE','NAGALAND','NL',NULL,'NL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-OR','STATE','ORISSA','OR',NULL,'OR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-PB','STATE','PUNJAB','PB',NULL,'PB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-PY','STATE','PONDICHERRY','PY',NULL,'PY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-RJ','STATE','RAJASTHAN','RJ',NULL,'RJ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-SK','STATE','SIKKIM','SK',NULL,'SK',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-TN','STATE','TAMILNADU','TN',NULL,'TN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-TR','STATE','TRIPURA','TR',NULL,'TR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-UP','STATE','UTTAR PRADESH','UP',NULL,'UP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-UT','STATE','UTTARANCHAL','UT',NULL,'UT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IN-WB','STATE','WEST BENGAL','WB',NULL,'WB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','COUNTRY','India','IN','356','IND',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('IOT','COUNTRY','British Indian Ocean Territory','IO','086','IOT',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('IRL','COUNTRY','Ireland','IE','372','IRL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('IRL-CAVN','COUNTY','Cavan','CAVN',NULL,'CAVN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-CLARE','COUNTY','Clare','CLARE',NULL,'CLARE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-CORK','COUNTY','Cork','CORK',NULL,'CORK',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-CRLW','COUNTY','Carlow','CRLW',NULL,'CRLW',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-DBLN','COUNTY','Dublin','DBLN',NULL,'DBLN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-DNGL','COUNTY','Donegal','DNGL',NULL,'DNGL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-GALW','COUNTY','Galway','GALW',NULL,'GALW',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-KERRY','COUNTY','Kerry','KERRY',NULL,'KERRY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-KLDR','COUNTY','Kildare','KLDR',NULL,'KLDR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-KLKNY','COUNTY','Kilkenny','KLKNY',NULL,'KLKNY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-LAOIS','COUNTY','Laois','LAOIS',NULL,'LAOIS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-LGFD','COUNTY','Longford','LGFD',NULL,'LGFD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-LMRK','COUNTY','Limerick','LMRK',NULL,'LMRK',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-LOUTH','COUNTY','Louth','LOUTH',NULL,'LOUTH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-LTRM','COUNTY','Leitrim','LTRM',NULL,'LTRM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-MAYO','COUNTY','Mayo','MAYO',NULL,'MAYO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-MEATH','COUNTY','Meath','MEATH',NULL,'MEATH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-MNGHN','COUNTY','Monaghan','MNGHN',NULL,'MNGHN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-OFLY','COUNTY','Offaly','OFLY',NULL,'OFLY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-RSCMN','COUNTY','Roscommon','RSCMN',NULL,'RSCMN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-SLIGO','COUNTY','Sligo','SLIGO',NULL,'SLIGO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-TPRY','COUNTY','Tipperary','TPRY',NULL,'TPRY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-WKLW','COUNTY','Wicklow','WKLW',NULL,'WKLW',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-WMETH','COUNTY','West Meath','WMETH',NULL,'WMETH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-WTFD','COUNTY','Waterford','WTFD',NULL,'WTFD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL-WXFD','COUNTY','Wexford','WXFD',NULL,'WXFD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRN','COUNTRY','Iran (islamic Republic Of)','IR','364','IRN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('IRQ','COUNTRY','Iraq','IQ','368','IRQ',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ISL','COUNTRY','Iceland','IS','352','ISL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ISR','COUNTRY','Israel','IL','376','ISR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('IT-AG','PROVINCE','Agrigento','AG',NULL,'AG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-AL','PROVINCE','Alessandria','AL',NULL,'AL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-AN','PROVINCE','Ancona','AN',NULL,'AN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-AO','PROVINCE','Aosta','AO',NULL,'AO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-AP','PROVINCE','Ascoli Piceno','AP',NULL,'AP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-AQ','PROVINCE','L\'Aquila','AQ',NULL,'AQ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-AR','PROVINCE','Arezzo','AR',NULL,'AR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-AT','PROVINCE','Asti','AT',NULL,'AT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-AV','PROVINCE','Avellino','AV',NULL,'AV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BA','PROVINCE','Bari','BA',NULL,'BA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BG','PROVINCE','Bergamo','BG',NULL,'BG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BI','PROVINCE','Biella','BI',NULL,'BI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BL','PROVINCE','Belluno','BL',NULL,'BL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BN','PROVINCE','Benevento','BN',NULL,'BN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BO','PROVINCE','Bologna','BO',NULL,'BO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BR','PROVINCE','Brindisi','BR',NULL,'BR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BS','PROVINCE','Brescia','BS',NULL,'BS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BT','PROVINCE','Barletta-Andria-Trani','BT',NULL,'BT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-BZ','PROVINCE','Bolzano','BZ',NULL,'BZ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CA','PROVINCE','Cagliari','CA',NULL,'CA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CB','PROVINCE','Campobasso','CB',NULL,'CB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CE','PROVINCE','Caserta','CE',NULL,'CE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CH','PROVINCE','Chieti','CH',NULL,'CH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CI','PROVINCE','Carbonia-Iglesias','CI',NULL,'CI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CL','PROVINCE','Caltanissetta','CL',NULL,'CL',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CN','PROVINCE','Cuneo','CN',NULL,'CN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CO','PROVINCE','Como','CO',NULL,'CO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CR','PROVINCE','Cremona','CR',NULL,'CR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CS','PROVINCE','Cosenza','CS',NULL,'CS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CT','PROVINCE','Catania','CT',NULL,'CT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-CZ','PROVINCE','Catanzaro','CZ',NULL,'CZ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-EN','PROVINCE','Enna','EN',NULL,'EN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-FC','PROVINCE','Forli\'-Cesena','FC',NULL,'FC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-FE','PROVINCE','Ferrara','FE',NULL,'FE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-FG','PROVINCE','Foggia','FG',NULL,'FG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-FI','PROVINCE','Firenze','FI',NULL,'FI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-FM','PROVINCE','Fermo','FM',NULL,'FM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-FR','PROVINCE','Frosinone','FR',NULL,'FR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-GE','PROVINCE','Genova','GE',NULL,'GE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-GO','PROVINCE','Gorizia','GO',NULL,'GO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-GR','PROVINCE','Grosseto','GR',NULL,'GR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-IM','PROVINCE','Imperia','IM',NULL,'IM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-IS','PROVINCE','Isernia','IS',NULL,'IS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-KR','PROVINCE','Crotone','KR',NULL,'KR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-LC','PROVINCE','Lecco','LC',NULL,'LC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-LE','PROVINCE','Lecce','LE',NULL,'LE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-LI','PROVINCE','Livorno','LI',NULL,'LI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-LO','PROVINCE','Lodi','LO',NULL,'LO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-LT','PROVINCE','Latina','LT',NULL,'LT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-LU','PROVINCE','Lucca','LU',NULL,'LU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-MB','PROVINCE','Monza e Brianza','MB',NULL,'MB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-MC','PROVINCE','Macerata','MC',NULL,'MC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-ME','PROVINCE','Messina','ME',NULL,'ME',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-MI','PROVINCE','Milano','MI',NULL,'MI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-MN','PROVINCE','Mantova','MN',NULL,'MN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-MO','PROVINCE','Modena','MO',NULL,'MO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-MS','PROVINCE','Massa-Carrara','MS',NULL,'MS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-MT','PROVINCE','Matera','MT',NULL,'MT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-NA','PROVINCE','Napoli','NA',NULL,'NA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-NO','PROVINCE','Novara','NO',NULL,'NO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-NU','PROVINCE','Nuoro','NU',NULL,'NU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-OG','PROVINCE','Ogliastra','OG',NULL,'OG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-OR','PROVINCE','Oristano','OR',NULL,'OR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-OT','PROVINCE','Olbia-Tempio','OT',NULL,'OT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PA','PROVINCE','Palermo','PA',NULL,'PA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PC','PROVINCE','Piacenza','PC',NULL,'PC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PD','PROVINCE','Padova','PD',NULL,'PD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PE','PROVINCE','Pescara','PE',NULL,'PE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PG','PROVINCE','Perugia','PG',NULL,'PG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PI','PROVINCE','Pisa','PI',NULL,'PI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PN','PROVINCE','Pordenone','PN',NULL,'PN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PO','PROVINCE','Prato','PO',NULL,'PO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PR','PROVINCE','Parma','PR',NULL,'PR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PT','PROVINCE','Pistoia','PT',NULL,'PT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PU','PROVINCE','Pesaro e Urbino','PU',NULL,'PU',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PV','PROVINCE','Pavia','PV',NULL,'PV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-PZ','PROVINCE','Potenza','PZ',NULL,'PZ',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-RA','PROVINCE','Ravenna','RA',NULL,'RA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-RC','PROVINCE','Reggio Calabria','RC',NULL,'RC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-RE','PROVINCE','Reggio Emilia','RE',NULL,'RE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-RG','PROVINCE','Ragusa','RG',NULL,'RG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-RI','PROVINCE','Rieti','RI',NULL,'RI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-RM','PROVINCE','Roma','RM',NULL,'RM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-RN','PROVINCE','Rimini','RN',NULL,'RN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-RO','PROVINCE','Rovigo','RO',NULL,'RO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-SA','PROVINCE','Salerno','SA',NULL,'SA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-SI','PROVINCE','Siena','SI',NULL,'SI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-SO','PROVINCE','Sondrio','SO',NULL,'SO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-SP','PROVINCE','La Spezia','SP',NULL,'SP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-SR','PROVINCE','Siracusa','SR',NULL,'SR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-SS','PROVINCE','Sassari','SS',NULL,'SS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-SV','PROVINCE','Savona','SV',NULL,'SV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-TA','PROVINCE','Taranto','TA',NULL,'TA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-TE','PROVINCE','Teramo','TE',NULL,'TE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-TN','PROVINCE','Trento','TN',NULL,'TN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-TO','PROVINCE','Torino','TO',NULL,'TO',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-TP','PROVINCE','Trapani','TP',NULL,'TP',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-TR','PROVINCE','Terni','TR',NULL,'TR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-TS','PROVINCE','Trieste','TS',NULL,'TS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-TV','PROVINCE','Treviso','TV',NULL,'TV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-UD','PROVINCE','Udine','UD',NULL,'UD',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VA','PROVINCE','Varese','VA',NULL,'VA',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VB','PROVINCE','Verbano-Cusio-Ossola','VB',NULL,'VB',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VC','PROVINCE','Vercelli','VC',NULL,'VC',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VE','PROVINCE','Venezia','VE',NULL,'VE',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VI','PROVINCE','Vicenza','VI',NULL,'VI',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VR','PROVINCE','Verona','VR',NULL,'VR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VS','PROVINCE','Medio Campidano','VS',NULL,'VS',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VT','PROVINCE','Viterbo','VT',NULL,'VT',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IT-VV','PROVINCE','Vibo Valentia','VV',NULL,'VV',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','COUNTRY','Italy','IT','380','ITA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('JAM','COUNTRY','Jamaica','JM','388','JAM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('JOR','COUNTRY','Jordan','JO','400','JOR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('JPN','COUNTRY','Japan','JP','392','JPN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('KAZ','COUNTRY','Kazakhstan','KZ','398','KAZ',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('KEN','COUNTRY','Kenya','KE','404','KEN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('KGZ','COUNTRY','Kyrgyzstan','KG','417','KGZ',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('KHM','COUNTRY','Cambodia','KH','116','KHM',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KIR','COUNTRY','Kiribati','KI','296','KIR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('KNA','COUNTRY','Saint Kitts And Nevis','KN','659','KNA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('KOR','COUNTRY','Korea, Republic Of','KR','410','KOR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('KS','STATE','Kansas','KS',NULL,'KS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('KWT','COUNTRY','Kuwait','KW','414','KWT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('KY','STATE','Kentucky','KY',NULL,'KY',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('LA','STATE','Louisiana','LA',NULL,'LA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('LAO','COUNTRY','Lao People\'s Democratic Republic','LA','418','LAO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LBN','COUNTRY','Lebanon','LB','422','LBN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LBR','COUNTRY','Liberia','LR','430','LBR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LBY','COUNTRY','Libyan Arab Jamahiriya','LY','434','LBY',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LCA','COUNTRY','Saint Lucia','LC','662','LCA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LIE','COUNTRY','Liechtenstein','LI','438','LIE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LKA','COUNTRY','Sri Lanka','LK','144','LKA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LSO','COUNTRY','Lesotho','LS','426','LSO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LTU','COUNTRY','Lithuania','LT','440','LTU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LUX','COUNTRY','Luxembourg','LU','442','LUX',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LVA','COUNTRY','Latvia','LV','428','LVA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MA','STATE','Massachusetts','MA',NULL,'MA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MAC','COUNTRY','Macau','MO','446','MAC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MAR','COUNTRY','Morocco','MA','504','MAR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MB','PROVINCE','Manitoba','MB',NULL,'MB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MCO','COUNTRY','Monaco','MC','492','MCO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MD','STATE','Maryland','MD',NULL,'MD',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MDA','COUNTRY','Moldova, Republic Of','MD','498','MDA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MDG','COUNTRY','Madagascar','MG','450','MDG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MDV','COUNTRY','Maldives','MV','462','MDV',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ME','STATE','Maine','ME',NULL,'ME',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','COUNTRY','Mexico','MX','484','MEX',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MEXCAN','GROUP','Mexico/Canada','MEXCAN',NULL,'MEXCAN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MH','STATE','Marshall Islands','MH',NULL,'MH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MHL','COUNTRY','Marshall Islands','MH','584','MHL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MI','STATE','Michigan','MI',NULL,'MI',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MKD','COUNTRY','Macedonia, The Former Yugoslav Republic Of','MK','807','MKD',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MLI','COUNTRY','Mali','ML','466','MLI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MLT','COUNTRY','Malta','MT','470','MLT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MMR','COUNTRY','Myanmar','MM','104','MMR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MN','STATE','Minnesota','MN',NULL,'MN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MNE','COUNTRY','Montenegro','ME','499','MNE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MNG','COUNTRY','Mongolia','MN','496','MNG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MNP','COUNTRY','Northern Mariana Islands','MP','580','MNP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MO','STATE','Missouri','MO',NULL,'MO',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MOZ','COUNTRY','Mozambique','MZ','508','MOZ',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MP','STATE','Northern Mariana Islands','MP',NULL,'MP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MRT','COUNTRY','Mauritania','MR','478','MRT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MS','STATE','Mississippi','MS',NULL,'MS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MSR','COUNTRY','Montserrat','MS','500','MSR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MT','STATE','Montana','MT',NULL,'MT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MTQ','COUNTRY','Martinique','MQ','474','MTQ',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MUS','COUNTRY','Mauritius','MU','480','MUS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MWI','COUNTRY','Malawi','MW','454','MWI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MX-AG','STATE','Aguascalientes','AGU',NULL,'AGU',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-BN','STATE','Baja California','BCN',NULL,'BCN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-BS','STATE','Baja California Sur','BCS',NULL,'BCS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-CA','STATE','Coahuila','COA',NULL,'COA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-CH','STATE','Chihuahua','CHH',NULL,'CHH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-CL','STATE','Colima','COL',NULL,'COL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-CM','STATE','Campeche','CAM',NULL,'CAM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-CP','STATE','Chiapas','CHP',NULL,'CHP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-DF','STATE','Distrito Federal','DIF',NULL,'DIF',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-DU','STATE','Durango','DUR',NULL,'DUR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-GJ','STATE','Guanajuato','GUA',NULL,'GUA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-GR','STATE','Guerrero','GRO',NULL,'GRO',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-HI','STATE','Hidalgo','HID',NULL,'HID',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-JA','STATE','Jalisco','JAL',NULL,'JAL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-MC','STATE','Michoacán','MIC',NULL,'MIC',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-MR','STATE','Morelos','MOR',NULL,'MOR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-MX','STATE','México','MEX',NULL,'MEX',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-NA','STATE','Nayarit','NAY',NULL,'NAY',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-NL','STATE','Nuevo León','NLE',NULL,'NLE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-OA','STATE','Oaxaca','OAX',NULL,'OAX',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-PU','STATE','Puebla','PUE',NULL,'PUE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-QE','STATE','Querétaro','QUE',NULL,'QUE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-QR','STATE','Quintana Roo','ROO',NULL,'ROO',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-SI','STATE','Sinaloa','SIN',NULL,'SIN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-SL','STATE','San Luis Potosí','SLP',NULL,'SLP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-SO','STATE','Sonora','SON',NULL,'SON',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-TB','STATE','Tabasco','TAB',NULL,'TAB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-TL','STATE','Tlaxcala','TLA',NULL,'TLA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-TM','STATE','Tamaulipas','TAM',NULL,'TAM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-VE','STATE','Veracruz','VER',NULL,'VER',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-YU','STATE','Yucatán','YUC',NULL,'YUC',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MX-ZA','STATE','Zacatecas','ZAC',NULL,'ZAC',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MYS','COUNTRY','Malaysia','MY','458','MYS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MYT','COUNTRY','Mayotte','YT','175','MYT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NAM','COUNTRY','Namibia','NA','516','NAM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NB','PROVINCE','New Brunswick','NB',NULL,'NB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NC','STATE','North Carolina','NC',NULL,'NC',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NCL','COUNTRY','New Caledonia','NC','540','NCL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ND','STATE','North Dakota','ND',NULL,'ND',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NE','STATE','Nebraska','NE',NULL,'NE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NER','COUNTRY','Niger','NE','562','NER',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NFK','COUNTRY','Norfolk Island','NF','574','NFK',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NGA','COUNTRY','Nigeria','NG','566','NGA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NH','STATE','New Hampshire','NH',NULL,'NH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NIC','COUNTRY','Nicaragua','NI','558','NIC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NIRL','COUNTRY','N.Ireland','NIR','897','NIRL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NIRL-ARMG','COUNTY','Armagh','ARMG',NULL,'ARMG',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL-ATRM','COUNTY','Antrim','ATRM',NULL,'ATRM',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL-DOWN','COUNTY','Down','DOWN',NULL,'DOWN',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL-FMNH','COUNTY','Fermanagh','FMNH',NULL,'FMNH',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL-LDRY','COUNTY','Londonderry','LDRY',NULL,'LDRY',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL-TYR','COUNTY','Tyrone','TYR',NULL,'TYR',NULL,'2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIU','COUNTRY','Niue','NU','570','NIU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NJ','STATE','New Jersey','NJ',NULL,'NJ',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL','PROVINCE','Newfoundland and Labrador','NL',NULL,'NL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-DR','PROVINCE','Drenthe','DR',NULL,'DR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-FL','PROVINCE','Flevoland','FL',NULL,'FL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-FR','PROVINCE','Friesland','FR',NULL,'FR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-GL','PROVINCE','Gelderland','GL',NULL,'GL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-GR','PROVINCE','Groningen','GR',NULL,'GR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-LB','PROVINCE','Limburg','LB',NULL,'LB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-NB','PROVINCE','Noord-Brabant','NB',NULL,'NB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-NH','PROVINCE','Noord-Holland','NH',NULL,'NH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-OV','PROVINCE','Overijssel','OV',NULL,'OV',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-UT','PROVINCE','Utrecht','UT',NULL,'UT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-ZE','PROVINCE','Zeeland','ZE',NULL,'ZE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-ZH','PROVINCE','Zuid-Holland','ZH',NULL,'ZH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NL-ZL','PROVINCE','Zeeland','ZL',NULL,'ZL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','COUNTRY','Netherlands','NL','528','NLD',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NM','STATE','New Mexico','NM',NULL,'NM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NOR','COUNTRY','Norway','NO','578','NOR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NPL','COUNTRY','Nepal','NP','524','NPL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NRU','COUNTRY','Nauru','NR','520','NRU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NS','PROVINCE','Nova Scotia','NS',NULL,'NS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NT','PROVINCE','Northwest Territories','NT',NULL,'NT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NU','PROVINCE','Nunavut','NU',NULL,'NU',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NV','STATE','Nevada','NV',NULL,'NV',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NY','STATE','New York','NY',NULL,'NY',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NZL','COUNTRY','New Zealand','NZ','554','NZL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('OH','STATE','Ohio','OH',NULL,'OH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('OK','STATE','Oklahoma','OK',NULL,'OK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('OMN','COUNTRY','Oman','OM','512','OMN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ON','PROVINCE','Ontario','ON',NULL,'ON',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('OR','STATE','Oregon','OR',NULL,'OR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PA','STATE','Pennsylvania','PA',NULL,'PA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PAK','COUNTRY','Pakistan','PK','586','PAK',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PAN','COUNTRY','Panama','PA','591','PAN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PCN','COUNTRY','Pitcairn','PN','612','PCN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PE','PROVINCE','Prince Edward Island','PE',NULL,'PE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PER','COUNTRY','Peru','PE','604','PER',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PHL','COUNTRY','Philippines','PH','608','PHL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PL-DŚ','STATE','dolnośląskie','DŚ',NULL,'DŚ',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-KP','STATE','kujawsko-pomorskie','KP',NULL,'KP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-LB','STATE','lubelskie','LB',NULL,'LB',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-LS','STATE','lubuskie','LS',NULL,'LS',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-MP','STATE','małopolskie','MP',NULL,'MP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-MZ','STATE','mazowieckie','MZ',NULL,'MZ',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-OP','STATE','opolskie','OP',NULL,'OP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-PK','STATE','podkarpackie','PK',NULL,'PK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-PL','STATE','podlaskie','PL',NULL,'PL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-PM','STATE','pomorskie','PM',NULL,'PM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-ŚK','STATE','świętokrzyskie','ŚK',NULL,'ŚK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-ŚL','STATE','śląskie','ŚL',NULL,'ŚL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-WM','STATE','warmińsko-mazurskie','WM',NULL,'WM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-WP','STATE','wielkopolskie','WP',NULL,'WP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-ZP','STATE','zachodniopomorskie','ZP',NULL,'ZP',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PL-ŁD','STATE','łódzkie','ŁD',NULL,'ŁD',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PLW','COUNTRY','Palau','PW','585','PLW',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PNG','COUNTRY','Papua New Guinea','PG','598','PNG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('POL','COUNTRY','Poland','PL','616','POL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PR','STATE','Puerto Rico','PR',NULL,'PR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PRI','COUNTRY','Puerto Rico','PR','630','PRI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PRK','COUNTRY','Korea, Democratic People\'s Republic Of','KP','408','PRK',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PRT','COUNTRY','Portugal','PT','620','PRT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PRY','COUNTRY','Paraguay','PY','600','PRY',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PSE','COUNTRY','Palestinian Territory, Occupied','PS','275','PSE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PW','STATE','Palau','PW',NULL,'PW',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PYF','COUNTRY','French Polynesia','PF','258','PYF',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('QAT','COUNTRY','Qatar','QA','634','QAT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('QC','PROVINCE','Quebec','QC',NULL,'QC',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('REU','COUNTRY','Reunion','RE','638','REU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('RI','STATE','Rhode Island','RI',NULL,'RI',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ROU','COUNTRY','Romania','RO','642','ROU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('RUS','COUNTRY','Russian Federation','RU','643','RUS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('RWA','COUNTRY','Rwanda','RW','646','RWA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SAU','COUNTRY','Saudi Arabia','SA','682','SAU',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SC','STATE','South Carolina','SC',NULL,'SC',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','COUNTRY','Scotland','SCT','895','SCOT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SD','STATE','South Dakota','SD',NULL,'SD',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SDN','COUNTRY','Sudan','SD','736','SDN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SEN','COUNTRY','Senegal','SN','686','SEN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SGP','COUNTRY','Singapore','SG','702','SGP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SGS','COUNTRY','South Georgia And The South Sandwich Islands','GS','239','SGS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SHN','COUNTRY','St. Helena','SH','654','SHN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SJM','COUNTRY','Svalbard And Jan Mayen Islands','SJ','744','SJM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SK','PROVINCE','Saskatchewan','SK',NULL,'SK',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SLB','COUNTRY','Solomon Islands','SB','090','SLB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SLE','COUNTRY','Sierra Leone','SL','694','SLE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SLV','COUNTRY','El Salvador','SV','222','SLV',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SMR','COUNTRY','San Marino','SM','674','SMR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SOM','COUNTRY','Somalia','SO','706','SOM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SPM','COUNTRY','St. Pierre And Miquelon','PM','666','SPM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SRB','COUNTRY','Serbia','RS','688','SRB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('STP','COUNTRY','Sao Tome And Principe','ST','678','STP',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SUR','COUNTRY','Suriname','SR','740','SUR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SVK','COUNTRY','Slovakia (slovak Republic)','SK','703','SVK',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SVN','COUNTRY','Slovenia','SI','705','SVN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SWE','COUNTRY','Sweden','SE','752','SWE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SWZ','COUNTRY','Swaziland','SZ','748','SWZ',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SYC','COUNTRY','Seychelles','SC','690','SYC',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SYR','COUNTRY','Syrian Arab Republic','SY','760','SYR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TCA','COUNTRY','Turks And Caicos Islands','TC','796','TCA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TCD','COUNTRY','Chad','TD','148','TCD',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TGO','COUNTRY','Togo','TG','768','TGO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('THA','COUNTRY','Thailand','TH','764','THA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TJK','COUNTRY','Tajikistan','TJ','762','TJK',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TKL','COUNTRY','Tokelau','TK','772','TKL',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TKM','COUNTRY','Turkmenistan','TM','795','TKM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TLS','COUNTRY','East Timor','TL','626','TLS',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TN','STATE','Tennessee','TN',NULL,'TN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('TON','COUNTRY','Tonga','TO','776','TON',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TTO','COUNTRY','Trinidad And Tobago','TT','780','TTO',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TUN','COUNTRY','Tunisia','TN','788','TUN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TUR','COUNTRY','Turkey','TR','792','TUR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TUV','COUNTRY','Tuvalu','TV','798','TUV',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TWN','COUNTRY','Taiwan','TW','158','TWN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TX','STATE','Texas','TX',NULL,'TX',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('TZA','COUNTRY','Tanzania, United Republic Of','TZ','834','TZA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('UGA','COUNTRY','Uganda','UG','800','UGA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('UKR','COUNTRY','Ukraine','UA','804','UKR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('UM','STATE','U.S. Minor Outlying Islands','UM',NULL,'UM',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UMI','COUNTRY','United States Minor Outlying Islands','UM','581','UMI',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('URY','COUNTRY','Uruguay','UY','858','URY',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('US50','GROUP','US 50 (no APO/FPO)','US50',NULL,'US50',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','COUNTRY','United States','US','840','USA',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('USA-84057','POSTAL_CODE','84057','84057',NULL,'84057',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USAF','GROUP','US Armed Forces','USAF',NULL,'USAF',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USALL','GROUP','US All (w/ APO/FPO)','USALL',NULL,'USALL',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USCAN','GROUP','US/Canada','USCAN',NULL,'USCAN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USCN','GROUP','US Continental','USCN',NULL,'USCN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USMEXCAN','GROUP','US/Mexico/Canada','USMEXCAN',NULL,'USMEXCAN',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USTR','GROUP','US Territories','USTR',NULL,'USTR',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UT','STATE','Utah','UT',NULL,'UT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UT-SANPETE','COUNTY','Sanpete','SANPETE',NULL,'SANPETE',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UT-UTAH','COUNTY','Utah County','UTAH',NULL,'UTAH',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UZB','COUNTRY','Uzbekistan','UZ','860','UZB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('VA','STATE','Virginia','VA',NULL,'VA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('VAT','COUNTRY','Holy See (vatican City State)','VA','336','VAT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('VCT','COUNTRY','Saint Vincent And The Grenadines','VC','670','VCT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('VEN','COUNTRY','Venezuela','VE','862','VEN',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('VGB','COUNTRY','Virgin Islands (british)','VG','092','VGB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('VI','STATE','Virgin Islands','VI',NULL,'VI',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('VIR','COUNTRY','Virgin Islands (u.s.)','VI','850','VIR',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('VNM','COUNTRY','Viet Nam','VN','704','VNM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('VT','STATE','Vermont','VT',NULL,'VT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('VUT','COUNTRY','Vanuatu','VU','548','VUT',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('WA','STATE','Washington','WA',NULL,'WA',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','COUNTRY','Wales','WLS','898','WALS',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('WI','STATE','Wisconsin','WI',NULL,'WI',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WLF','COUNTRY','Wallis And Futuna Islands','WF','876','WLF',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('WSM','COUNTRY','Samoa','WS','882','WSM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('WV','STATE','West Virginia','WV',NULL,'WV',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WY','STATE','Wyoming','WY',NULL,'WY',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('YEM','COUNTRY','Yemen','YE','887','YEM',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('YT','PROVINCE','Yukon','YT',NULL,'YT',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('YUG','COUNTRY','Yugoslavia','YU','891','YUG',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ZAF','COUNTRY','South Africa','ZA','710','ZAF',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ZMB','COUNTRY','Zambia','ZM','894','ZMB',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ZWE','COUNTRY','Zimbabwe','ZW','716','ZWE',NULL,'2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('_NA_',NULL,'Not Applicable','_NA_',NULL,'_NA_',NULL,'2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01');
/*!40000 ALTER TABLE `geo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_assoc`
--

DROP TABLE IF EXISTS `geo_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_assoc` (
  `GEO_ID` varchar(20) NOT NULL,
  `GEO_ID_TO` varchar(20) NOT NULL,
  `GEO_ASSOC_TYPE_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`GEO_ID`,`GEO_ID_TO`),
  KEY `GEO_ASSC_TO_MAIN` (`GEO_ID`),
  KEY `GEO_ASSC_TO_ASSC` (`GEO_ID_TO`),
  KEY `GEO_ASSC_TO_TYPE` (`GEO_ASSOC_TYPE_ID`),
  KEY `GEO_ASSOC_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `GEO_ASSOC_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `GEO_ASSC_TO_ASSC` FOREIGN KEY (`GEO_ID_TO`) REFERENCES `geo` (`GEO_ID`),
  CONSTRAINT `GEO_ASSC_TO_MAIN` FOREIGN KEY (`GEO_ID`) REFERENCES `geo` (`GEO_ID`),
  CONSTRAINT `GEO_ASSC_TO_TYPE` FOREIGN KEY (`GEO_ASSOC_TYPE_ID`) REFERENCES `geo_assoc_type` (`GEO_ASSOC_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_assoc`
--

LOCK TABLES `geo_assoc` WRITE;
/*!40000 ALTER TABLE `geo_assoc` DISABLE KEYS */;
INSERT INTO `geo_assoc` VALUES ('AA','USAF','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AE','USAF','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AHUST','US50','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AHUST','USALL','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AK','AKHI','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AKHI','AHUST','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AL','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AP','USAF','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AR','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AS','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('AUS','AU-ACT','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUS','AU-NSW','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUS','AU-NT','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUS','AU-QLD','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUS','AU-SA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUS','AU-TAS','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUS','AU-VIC','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUS','AU-WA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('AUT','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('AZ','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('BEL','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('BGR','BG-01','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-02','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-03','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-04','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-05','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-06','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-07','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-08','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-09','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-10','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-11','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-12','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-13','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-14','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-15','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-16','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-17','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-18','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-19','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-20','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-21','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-22','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-23','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-24','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-25','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-26','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-27','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','BG-28','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BGR','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('BRA','BR-AL','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-AM','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-AP','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-BA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-CE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-DF','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-ES','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-GO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-MA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-MG','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-MS','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-MT','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-PA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-PB','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-PE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-PI','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-PR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-RJ','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-RN','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-RO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-RR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-RS','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-SC','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-SE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-SP','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('BRA','BR-TO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CA','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','AB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','BC','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','MB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','MEXCAN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','NB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','NL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','NS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','NT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','NU','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','ON','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','PE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','QC','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','SK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','USCAN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','USMEXCAN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CAN','YT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CHN','CN-11','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-12','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-13','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-14','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-15','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-21','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-22','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-23','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-31','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-32','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-33','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-34','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-35','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-36','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-37','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-41','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-42','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-43','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-44','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-45','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-46','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-50','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-51','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-52','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-53','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-54','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-61','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-62','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-63','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-64','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-65','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-71','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-91','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CHN','CN-92','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CO','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('COL','CO-AMA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-ANT','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-ARA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-ATL','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-BOL','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-BOY','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-CAL','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-CAQ','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-CAS','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-CAU','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-CES','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-CHO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-COR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-CUN','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-DC','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-GUA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-GUV','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-HUI','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-LAG','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-MAG','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-MET','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-NAR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-NSA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-PUT','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-QUI','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-RIS','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-SAN','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-SAP','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-SUC','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-TOL','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-VAC','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-VAU','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('COL','CO-VID','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('CT','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('CYP','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('CZE','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('DC','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('DE','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('DEU','DE-BE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-BR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-BW','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-BY','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-HB','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-HE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-HH','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-MV','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-NI','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-NW','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-RP','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-SA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-SH','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-SL','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-SN','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','DE-TH','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('DEU','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('DNK','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ENGL','GB-BDFD','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-BRKS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-BUCKS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-BWKS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-CAMBS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-CHES','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-CNWL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-CUMB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-DEVON','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-DRBYS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-DRHM','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-DRST','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-ESSX','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-GLOU','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-HAMPS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-HERTS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-HRFDS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-HUNTS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-KENT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-LANCS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-LIECS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-LINCS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-MSEX','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-NFLK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-NHANTS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-NHUMB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-NOTTS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-OXFD','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-RUTL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-SFFK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-SHROPS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-SOMST','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-STAFFS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-SURR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-SUSX','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-WILTS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-WMLD','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-WORCS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-WWKS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GB-YORKS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ENGL','GBR','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ES-AN','ES-AL','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AN','ES-CA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AN','ES-CO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AN','ES-GR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AN','ES-H','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AN','ES-J','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AN','ES-MA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AN','ES-SE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AR','ES-HU','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AR','ES-TE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AR','ES-Z','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-AS','ES-O','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CAN','ES-S','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-AV','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-BU','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-CR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-LE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-P','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-SA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-SG','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-SO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-VA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CL','ES-ZA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CM','ES-AB','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CM','ES-CU','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CM','ES-GU','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CM','ES-TO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CN','ES-GC','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CN','ES-TF','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CT','ES-B','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CT','ES-GI','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CT','ES-L','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-CT','ES-T','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-EX','ES-BA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-EX','ES-CC','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GA','ES-C','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GA','ES-LU','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GA','ES-OR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-GA','ES-PO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-IB','ES-PM','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-LR','ES-LO','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-MAD','ES-M','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-MUR','ES-MU','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-NAV','ES-NA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-PV','ES-BI','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-PV','ES-SS','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-PV','ES-VI','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-VC','ES-A','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-VC','ES-CS','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ES-VC','ES-V','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-AN','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-AR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-AS','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-CAN','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-CE','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-CL','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-CM','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-CN','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-CT','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-EX','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-GA','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-IB','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-LR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-MAD','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-ML','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-MUR','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-NAV','REGIONS','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02','2017-10-22 00:56:02'),('ESP','ES-PV','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:02','2017-10-22 00:56:03','2017-10-22 00:56:02'),('ESP','ES-VC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:02','2017-10-22 00:56:03','2017-10-22 00:56:02'),('ESP','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('EST','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('FIN','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('FL','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('FM','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('FR-ACY74','FR-74','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AGE47','FR-47','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AJA2A','FR-2A','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ALB81','FR-81','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ALE61','FR-61','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ALS','FR-67','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ALS','FR-68','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AMI80','FR-80','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ANG16','FR-16','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ANG49','FR-49','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AQU','FR-24','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AQU','FR-33','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AQU','FR-40','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AQU','FR-47','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AQU','FR-64','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ARR62','FR-62','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUC32','FR-32','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUR15','FR-15','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUV','FR-03','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUV','FR-15','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUV','FR-43','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AUV','FR-63','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AVG84','FR-84','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-AXR89','FR-89','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BAN','FR-14','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BAN','FR-50','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BAN','FR-61','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BAS2B','FR-2B','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BBY93','FR-93','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BEB01','FR-01','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BES25','FR-25','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BLD55','FR-55','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BLF90','FR-90','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BLO41','FR-41','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOR33','FR-33','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOU','FR-21','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOU','FR-58','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOU','FR-71','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOU','FR-89','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BOU18','FR-18','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BRE','FR-22','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BRE','FR-29','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BRE','FR-35','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BRE','FR-56','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-BVA60','FR-60','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CAE14','FR-14','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CAH46','FR-46','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CAR11','FR-11','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CBY73','FR-73','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEC51','FR-51','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEN','FR-18','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEN','FR-28','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEN','FR-36','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEN','FR-37','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEN','FR-41','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CEN','FR-45','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHA','FR-08','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHA','FR-10','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHA','FR-51','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHA','FR-52','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHA28','FR-28','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHM08','FR-08','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHM52','FR-52','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CHT36','FR-36','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CLF63','FR-63','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CLM68','FR-68','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-COR','FR-20','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-COR','FR-2A','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-COR','FR-2B','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-CTL94','FR-94','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DIG04','FR-04','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DIJ21','FR-21','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DOM','FR-971','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DOM','FR-972','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DOM','FR-973','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-DOM','FR-974','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-EPI88','FR-88','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-EVR27','FR-27','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-EVR91','FR-91','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-FCO','FR-25','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-FCO','FR-39','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-FCO','FR-70','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-FCO','FR-90','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-FOI09','FR-09','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-GAP05','FR-05','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-GRE38','FR-38','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-GUE23','FR-23','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-HNO','FR-27','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-HNO','FR-76','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','FR-75','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','FR-77','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','FR-78','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','FR-91','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','FR-92','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','FR-93','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','FR-94','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-IDF','FR-95','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LAO02','FR-02','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LAR','FR-11','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LAR','FR-30','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LAR','FR-34','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LAR','FR-48','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LAR','FR-66','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LIL59','FR-59','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LIM','FR-19','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LIM','FR-23','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LIM','FR-87','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LMA72','FR-72','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LMG87','FR-87','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LON39','FR-39','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LOR','FR-54','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LOR','FR-55','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LOR','FR-57','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LOR','FR-88','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LRO17','FR-17','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LVL53','FR-53','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-LYO69','FR-69','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MAR13','FR-13','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MCN71','FR-71','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MDM40','FR-40','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MEN48','FR-48','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MET57','FR-57','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','FR-09','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','FR-12','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','FR-31','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','FR-32','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','FR-46','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','FR-65','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','FR-81','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MIP','FR-82','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MLN77','FR-77','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MON34','FR-34','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MOU03','FR-03','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-MTB82','FR-82','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NAN44','FR-44','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NCY54','FR-54','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NEV58','FR-58','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NIC06','FR-06','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NIM30','FR-30','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NIO79','FR-79','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NPC','FR-59','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NPC','FR-62','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-NTR92','FR-92','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ORL45','FR-45','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAC','FR-04','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAC','FR-05','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAC','FR-06','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAC','FR-13','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAC','FR-83','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAC','FR-84','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAR75','FR-75','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PAU64','FR-64','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PDL','FR-44','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PDL','FR-49','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PDL','FR-53','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PDL','FR-72','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PDL','FR-85','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PER24','FR-24','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PEV43','FR-43','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PIC','FR-02','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PIC','FR-60','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PIC','FR-80','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-POC','FR-16','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-POC','FR-17','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-POC','FR-79','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-POC','FR-86','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-POI86','FR-86','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PPG66','FR-66','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PRI07','FR-07','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-PTO95','FR-95','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-QUI29','FR-29','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','FR-01','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','FR-07','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','FR-26','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','FR-38','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','FR-42','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','FR-69','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','FR-73','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RAL','FR-74','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-REN35','FR-35','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ROD12','FR-12','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-ROU76','FR-76','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-RSY85','FR-85','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-SBG67','FR-67','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-SBR22','FR-22','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-SET42','FR-42','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-SLO50','FR-50','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TBS65','FR-65','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TLN83','FR-83','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TLS31','FR-31','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TOM','FR-975','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TOM','FR-976','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TOM','FR-986','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TOM','FR-987','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TOM','FR-988','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TOU37','FR-37','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TRO10','FR-10','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-TUL19','FR-19','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-VAL26','FR-26','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-VAN56','FR-56','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-VSL70','FR-70','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FR-VSS78','FR-78','COUNTY_SEAT','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('FRA','FR-ALS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-AQU','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-AUV','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-BAN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-BOU','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-BRE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-CEN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-CHA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-COR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-FCO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-HNO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-IDF','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-LAR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-LIM','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-LOR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-MIP','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-NPC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-PAC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-PDL','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-PIC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-POC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('FRA','FR-RAL','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('GA','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('GBR','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('GRC','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('GU','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('HI','AKHI','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('HUN','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('IA','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ID','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('IL','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('IN','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('IND','IN-AN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-AP','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-AR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-AS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-BR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-CH','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-CT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-DD','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-DN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-GA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-GJ','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-HP','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-HR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-JH','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-JK','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-KA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-KL','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-LD','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-MH','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-ML','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-MN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-MP','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-MZ','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-ND','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-NL','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-OR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-PB','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-PY','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-RJ','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-SK','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-TN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-TR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-UP','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-UT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IND','IN-WB','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('IRL','IRL-CAVN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-CLARE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-CORK','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-CRLW','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-DBLN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-DNGL','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-GALW','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-KERRY','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-KLDR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-KLKNY','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-LAOIS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-LGFD','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-LMRK','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-LOUTH','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-LTRM','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-MAYO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-MEATH','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-MNGHN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-OFLY','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-RSCMN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-SLIGO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-TPRY','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-WKLW','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-WMETH','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-WTFD','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('IRL','IRL-WXFD','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('ITA','IT-AG','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-AL','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-AN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-AO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-AP','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-AQ','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-AR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-AT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-AV','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BG','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BL','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-BZ','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CB','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CH','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CL','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-CZ','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-EN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-FC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-FE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-FG','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-FI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-FM','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-FR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-GE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-GO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-GR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-IM','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-IS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-KR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-LC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-LE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-LI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-LO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-LT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-LU','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-MB','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-MC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-ME','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-MI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-MN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-MO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-MS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-MT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-NA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-NO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-NU','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-OG','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-OR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-OT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PD','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PG','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PU','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PV','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-PZ','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-RA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-RC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-RE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-RG','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-RI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-RM','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-RN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-RO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-SA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-SI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-SO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-SP','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-SR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-SS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-SV','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-TA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-TE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-TN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-TO','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-TP','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-TR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-TS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-TV','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-UD','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-VA','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-VC','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-VE','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-VI','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-VR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-VS','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-VT','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('ITA','IT-VV','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('KS','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('KY','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('LA','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('LTU','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LUX','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('LVA','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MA','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MD','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ME','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MEXCAN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-AG','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-BN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-BS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-CA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-CH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-CL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-CM','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-CP','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-DF','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-DU','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-GJ','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-GR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-HI','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-JA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-MC','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-MR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-MX','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-NA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-NL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-OA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-PU','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-QE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-QR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-SI','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-SL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-SO','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-TB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-TL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-TM','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-VE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-YU','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','MX-ZA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MEX','USMEXCAN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MH','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MI','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MLT','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('MN','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MO','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MP','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MS','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('MT','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NC','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ND','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NE','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NH','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NIRL','GBR','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NIRL','NIRL-ARMG','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL','NIRL-ATRM','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL','NIRL-DOWN','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL','NIRL-FMNH','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL','NIRL-LDRY','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NIRL','NIRL-TYR','REGIONS','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03','2017-10-22 00:56:03'),('NJ','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('NLD','NL-DR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-FL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-FR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-GL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-GR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-LB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-NB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-NH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-OV','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-UT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-ZE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-ZH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NLD','NL-ZL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NM','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NV','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('NY','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('OH','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('OK','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('OR','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PA','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('POL','PL-DŚ','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-KP','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-LB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-LS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-MP','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-MZ','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-OP','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-PK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-PL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-PM','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-ŚK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-ŚL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-WM','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-WP','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-ZP','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('POL','PL-ŁD','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PR','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('PRT','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('PW','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('RI','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('ROU','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SC','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-ABDN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-ANGS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-ARGL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-AYRS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-BANF','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-BUTE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-CLAK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-CMTY','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-DMBR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-DMFS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-ELOTH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-FIFE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-INVER','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-KNDN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-KRCUD','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-KRSS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-LRKS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-MLOTH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-MORAY','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-NAIRN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-ORK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-PEEBS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-PERTH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-RNFR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-ROSS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-ROXB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-SELKS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-SHET','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-STLNG','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-SUTH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-WGNSH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GB-WLOTH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SCOT','GBR','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SD','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('SVK','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SVN','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('SWE','EU','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('TN','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('TX','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UM','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','AA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','AE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','AK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','AL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','AP','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','AR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','AZ','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','CA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','CO','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','CT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','DC','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','DE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','FL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','GA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','GU','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','HI','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','IA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','ID','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','IL','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','IN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','KS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','KY','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','LA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','MA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','MD','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','ME','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','MI','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','MN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','MO','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','MS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','MT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','NC','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','ND','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','NE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','NH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','NJ','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','NM','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','NV','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','NY','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','OH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','OK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','OR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','PA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','PR','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','RI','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','SC','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','SD','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','TN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','TX','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','USA-84057','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','USCAN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','USMEXCAN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','UT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','VA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','VI','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','VT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','WA','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','WI','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','WV','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USA','WY','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USAF','USALL','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USCN','US50','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USCN','USALL','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('USTR','AHUST','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UT','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UT','UT-SANPETE','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UT','UT-UTAH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('UT-UTAH','USA-84057','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('VA','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('VI','USTR','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('VT','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WA','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-AGSY','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-BREK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-CDGN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-CMRN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-CNFN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-CTHN','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-DENB','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-FTSH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-GLAM','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-MIENT','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-MMTH','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-MNTGS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-PMBRK','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GB-RNRS','REGIONS','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WALS','GBR','GROUP_MEMBER','2017-10-22 00:56:02','2017-10-22 00:56:01','2017-10-22 00:56:02','2017-10-22 00:56:01'),('WI','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WV','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('WY','USCN','GROUP_MEMBER','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04');
/*!40000 ALTER TABLE `geo_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_assoc_type`
--

DROP TABLE IF EXISTS `geo_assoc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_assoc_type` (
  `GEO_ASSOC_TYPE_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`GEO_ASSOC_TYPE_ID`),
  KEY `G_ASSC_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `G_ASSC_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_assoc_type`
--

LOCK TABLES `geo_assoc_type` WRITE;
/*!40000 ALTER TABLE `geo_assoc_type` DISABLE KEYS */;
INSERT INTO `geo_assoc_type` VALUES ('COUNTY_CITY','City in a county','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('COUNTY_SEAT','Administrative Main City of a County','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('GROUP_MEMBER','Geo Group Member','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('POSTAL_CODE','Postal code associated to a GeoType','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('REGIONS','For a region of a larger Geo, i.e. states, counties, provinces...','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `geo_assoc_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_point`
--

DROP TABLE IF EXISTS `geo_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_point` (
  `GEO_POINT_ID` varchar(20) NOT NULL,
  `DATA_SOURCE_ID` varchar(20) DEFAULT NULL,
  `LATITUDE` double NOT NULL,
  `LONGITUDE` double NOT NULL,
  `ELEVATION` double DEFAULT NULL,
  `ELEVATION_UOM_ID` varchar(20) DEFAULT NULL,
  `INFORMATION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`GEO_POINT_ID`),
  KEY `GEOPOINT_DTSRC` (`DATA_SOURCE_ID`),
  KEY `GPT_TYPE_UOM` (`ELEVATION_UOM_ID`),
  KEY `GEO_POINT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `GEO_POINT_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `GEOPOINT_DTSRC` FOREIGN KEY (`DATA_SOURCE_ID`) REFERENCES `data_source` (`DATA_SOURCE_ID`),
  CONSTRAINT `GPT_TYPE_UOM` FOREIGN KEY (`ELEVATION_UOM_ID`) REFERENCES `uom` (`UOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_point`
--

LOCK TABLES `geo_point` WRITE;
/*!40000 ALTER TABLE `geo_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `geo_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_type`
--

DROP TABLE IF EXISTS `geo_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_type` (
  `GEO_TYPE_ID` varchar(20) NOT NULL,
  `PARENT_TYPE_ID` varchar(20) DEFAULT NULL,
  `HAS_TABLE` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`GEO_TYPE_ID`),
  KEY `GEO_TYPE_PARENT` (`PARENT_TYPE_ID`),
  KEY `GEO_TYPE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `GEO_TYPE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `GEO_TYPE_PARENT` FOREIGN KEY (`PARENT_TYPE_ID`) REFERENCES `geo_type` (`GEO_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_type`
--

LOCK TABLES `geo_type` WRITE;
/*!40000 ALTER TABLE `geo_type` DISABLE KEYS */;
INSERT INTO `geo_type` VALUES ('CITY',NULL,'N','City','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('COUNTRY',NULL,'N','Country','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('COUNTY',NULL,'N','County','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('COUNTY_CITY',NULL,'N','County-City','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('GROUP',NULL,'N','Group','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('MUNICIPALITY',NULL,'N','Municipality','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('POSTAL_CODE',NULL,'N','Postal Code','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('PROVINCE',NULL,'N','Province','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('REGION',NULL,'N','Region','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('SALES_TERRITORY','TERRITORY','N','Sales Territory','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('SERVICE_TERRITORY','TERRITORY','N','Service Territory','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('STATE',NULL,'N','State','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('TERRITORY',NULL,'N','Territory','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `geo_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_sandbox`
--

DROP TABLE IF EXISTS `job_sandbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_sandbox` (
  `JOB_ID` varchar(20) NOT NULL,
  `JOB_NAME` varchar(100) DEFAULT NULL,
  `RUN_TIME` datetime DEFAULT NULL,
  `POOL_ID` varchar(100) DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `PARENT_JOB_ID` varchar(20) DEFAULT NULL,
  `PREVIOUS_JOB_ID` varchar(20) DEFAULT NULL,
  `SERVICE_NAME` varchar(100) DEFAULT NULL,
  `LOADER_NAME` varchar(100) DEFAULT NULL,
  `MAX_RETRY` decimal(20,0) DEFAULT NULL,
  `AUTH_USER_LOGIN_ID` varchar(250) DEFAULT NULL,
  `RUN_AS_USER` varchar(250) DEFAULT NULL,
  `RUNTIME_DATA_ID` varchar(20) DEFAULT NULL,
  `RECURRENCE_INFO_ID` varchar(20) DEFAULT NULL,
  `TEMP_EXPR_ID` varchar(20) DEFAULT NULL,
  `CURRENT_RECURRENCE_COUNT` decimal(20,0) DEFAULT NULL,
  `MAX_RECURRENCE_COUNT` decimal(20,0) DEFAULT NULL,
  `RUN_BY_INSTANCE_ID` varchar(20) DEFAULT NULL,
  `START_DATE_TIME` datetime DEFAULT NULL,
  `FINISH_DATE_TIME` datetime DEFAULT NULL,
  `CANCEL_DATE_TIME` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`),
  KEY `JOB_SNDBX_RECINFO` (`RECURRENCE_INFO_ID`),
  KEY `JOB_SNDBX_TEMPEXPR` (`TEMP_EXPR_ID`),
  KEY `JOB_SNDBX_RNTMDTA` (`RUNTIME_DATA_ID`),
  KEY `JOB_SNDBX_AUSRLGN` (`AUTH_USER_LOGIN_ID`),
  KEY `JOB_SNDBX_USRLGN` (`RUN_AS_USER`),
  KEY `JOB_SNDBX_STTS` (`STATUS_ID`),
  KEY `JOB_SANDBOX_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `JOB_SANDBOX_TXCRTS` (`CREATED_TX_STAMP`),
  KEY `JOB_SNDBX_RUNSTAT` (`RUN_BY_INSTANCE_ID`,`STATUS_ID`),
  CONSTRAINT `JOB_SNDBX_AUSRLGN` FOREIGN KEY (`AUTH_USER_LOGIN_ID`) REFERENCES `user_login` (`USER_LOGIN_ID`),
  CONSTRAINT `JOB_SNDBX_RECINFO` FOREIGN KEY (`RECURRENCE_INFO_ID`) REFERENCES `recurrence_info` (`RECURRENCE_INFO_ID`),
  CONSTRAINT `JOB_SNDBX_RNTMDTA` FOREIGN KEY (`RUNTIME_DATA_ID`) REFERENCES `runtime_data` (`RUNTIME_DATA_ID`),
  CONSTRAINT `JOB_SNDBX_STTS` FOREIGN KEY (`STATUS_ID`) REFERENCES `status_item` (`STATUS_ID`),
  CONSTRAINT `JOB_SNDBX_TEMPEXPR` FOREIGN KEY (`TEMP_EXPR_ID`) REFERENCES `temporal_expression` (`TEMP_EXPR_ID`),
  CONSTRAINT `JOB_SNDBX_USRLGN` FOREIGN KEY (`RUN_AS_USER`) REFERENCES `user_login` (`USER_LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_sandbox`
--

LOCK TABLES `job_sandbox` WRITE;
/*!40000 ALTER TABLE `job_sandbox` DISABLE KEYS */;
INSERT INTO `job_sandbox` VALUES ('10000','Clear EntitySyncRemove Info','2017-10-23 00:00:00','pool','SERVICE_PENDING','8200','8200','cleanSyncRemoveInfo',NULL,NULL,NULL,'system',NULL,NULL,'MIDNIGHT_DAILY',NULL,-1,NULL,NULL,NULL,NULL,'2017-10-22 00:56:19','2017-10-22 00:56:19','2017-10-22 00:56:19','2017-10-22 00:56:19'),('10001','Purge Old Jobs','2017-10-23 00:00:00','pool','SERVICE_PENDING','PURGE_OLD_JOBS','PURGE_OLD_JOBS','purgeOldJobs',NULL,NULL,NULL,'system',NULL,NULL,'MIDNIGHT_DAILY',NULL,-1,NULL,NULL,NULL,NULL,'2017-10-22 00:56:19','2017-10-22 00:56:19','2017-10-22 00:56:19','2017-10-22 00:56:19'),('8200','Clear EntitySyncRemove Info','2000-01-01 00:00:00','pool','SERVICE_FINISHED',NULL,NULL,'cleanSyncRemoveInfo',NULL,NULL,NULL,'system',NULL,NULL,'MIDNIGHT_DAILY',NULL,-1,'ofbiz1','2017-10-22 00:56:19','2017-10-22 00:56:19',NULL,'2017-10-22 00:56:19','2017-10-22 00:56:19','2017-10-22 00:56:08','2017-10-22 00:56:08'),('PURGE_OLD_JOBS','Purge Old Jobs','2000-01-01 00:00:00','pool','SERVICE_FAILED',NULL,NULL,'purgeOldJobs',NULL,NULL,NULL,'system',NULL,NULL,'MIDNIGHT_DAILY',NULL,-1,'ofbiz1','2017-10-22 00:56:19','2017-10-22 00:56:20',NULL,'2017-10-22 00:56:20','2017-10-22 00:56:20','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `job_sandbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword_thesaurus`
--

DROP TABLE IF EXISTS `keyword_thesaurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyword_thesaurus` (
  `ENTERED_KEYWORD` varchar(255) NOT NULL,
  `ALTERNATE_KEYWORD` varchar(255) NOT NULL,
  `RELATIONSHIP_ENUM_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTERED_KEYWORD`,`ALTERNATE_KEYWORD`),
  KEY `KW_THRS_RLENM` (`RELATIONSHIP_ENUM_ID`),
  KEY `KWRD_THSRS_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `KWRD_THSRS_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `KW_THRS_RLENM` FOREIGN KEY (`RELATIONSHIP_ENUM_ID`) REFERENCES `enumeration` (`ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword_thesaurus`
--

LOCK TABLES `keyword_thesaurus` WRITE;
/*!40000 ALTER TABLE `keyword_thesaurus` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyword_thesaurus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_data`
--

DROP TABLE IF EXISTS `note_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note_data` (
  `NOTE_ID` varchar(20) NOT NULL,
  `NOTE_NAME` varchar(100) DEFAULT NULL,
  `NOTE_INFO` longtext,
  `NOTE_DATE_TIME` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`NOTE_ID`),
  KEY `NOTE_DATA_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `NOTE_DATA_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_data`
--

LOCK TABLES `note_data` WRITE;
/*!40000 ALTER TABLE `note_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period_type`
--

DROP TABLE IF EXISTS `period_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period_type` (
  `PERIOD_TYPE_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PERIOD_LENGTH` decimal(20,0) DEFAULT NULL,
  `UOM_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PERIOD_TYPE_ID`),
  KEY `PER_TYPE_UOM` (`UOM_ID`),
  KEY `PERIOD_TYPE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PERIOD_TYPE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `PER_TYPE_UOM` FOREIGN KEY (`UOM_ID`) REFERENCES `uom` (`UOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period_type`
--

LOCK TABLES `period_type` WRITE;
/*!40000 ALTER TABLE `period_type` DISABLE KEYS */;
INSERT INTO `period_type` VALUES ('FISCAL_BIWEEK','Fiscal Bi-Week',2,'TF_wk','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('FISCAL_MONTH','Fiscal Month',1,'TF_mon','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('FISCAL_QUARTER','Fiscal Quarter',3,'TF_mon','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('FISCAL_WEEK','Fiscal Week',1,'TF_wk','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('FISCAL_YEAR','Fiscal Year',1,'TF_yr','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SALES_MONTH','Sales Month',1,'TF_mon','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SALES_QUARTER','Sales Quarter',3,'TF_mon','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05');
/*!40000 ALTER TABLE `period_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform_type`
--

DROP TABLE IF EXISTS `platform_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform_type` (
  `PLATFORM_TYPE_ID` varchar(20) NOT NULL,
  `PLATFORM_NAME` varchar(100) DEFAULT NULL,
  `PLATFORM_VERSION` varchar(10) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PLATFORM_TYPE_ID`),
  KEY `PLTFRM_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PLTFRM_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform_type`
--

LOCK TABLES `platform_type` WRITE;
/*!40000 ALTER TABLE `platform_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `platform_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_page`
--

DROP TABLE IF EXISTS `portal_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_page` (
  `PORTAL_PAGE_ID` varchar(20) NOT NULL,
  `PORTAL_PAGE_NAME` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `OWNER_USER_LOGIN_ID` varchar(20) DEFAULT NULL,
  `ORIGINAL_PORTAL_PAGE_ID` varchar(20) DEFAULT NULL,
  `PARENT_PORTAL_PAGE_ID` varchar(20) DEFAULT NULL,
  `SEQUENCE_NUM` decimal(20,0) DEFAULT NULL,
  `SECURITY_GROUP_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PORTAL_PAGE_ID`),
  KEY `PortPage_PARENT` (`PARENT_PORTAL_PAGE_ID`),
  KEY `PORTPAGE_SECGRP` (`SECURITY_GROUP_ID`),
  KEY `PORTAL_PAGE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PORTAL_PAGE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `PORTPAGE_SECGRP` FOREIGN KEY (`SECURITY_GROUP_ID`) REFERENCES `security_group` (`GROUP_ID`),
  CONSTRAINT `PortPage_PARENT` FOREIGN KEY (`PARENT_PORTAL_PAGE_ID`) REFERENCES `portal_page` (`PORTAL_PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_page`
--

LOCK TABLES `portal_page` WRITE;
/*!40000 ALTER TABLE `portal_page` DISABLE KEYS */;
INSERT INTO `portal_page` VALUES ('_NA_','For using genericPortletScreen','To be able to have parameters at the portlet level, not PortletPage level','_NA_',NULL,NULL,0,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05');
/*!40000 ALTER TABLE `portal_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_page_column`
--

DROP TABLE IF EXISTS `portal_page_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_page_column` (
  `PORTAL_PAGE_ID` varchar(20) NOT NULL,
  `COLUMN_SEQ_ID` varchar(20) NOT NULL,
  `COLUMN_WIDTH_PIXELS` decimal(20,0) DEFAULT NULL,
  `COLUMN_WIDTH_PERCENTAGE` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PORTAL_PAGE_ID`,`COLUMN_SEQ_ID`),
  KEY `PRTL_PGCOL_PAGE` (`PORTAL_PAGE_ID`),
  KEY `PRTL_PG_CLN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PRTL_PG_CLN_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `PRTL_PGCOL_PAGE` FOREIGN KEY (`PORTAL_PAGE_ID`) REFERENCES `portal_page` (`PORTAL_PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_page_column`
--

LOCK TABLES `portal_page_column` WRITE;
/*!40000 ALTER TABLE `portal_page_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_page_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_page_portlet`
--

DROP TABLE IF EXISTS `portal_page_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_page_portlet` (
  `PORTAL_PAGE_ID` varchar(20) NOT NULL,
  `PORTAL_PORTLET_ID` varchar(20) NOT NULL,
  `PORTLET_SEQ_ID` varchar(20) NOT NULL,
  `COLUMN_SEQ_ID` varchar(20) DEFAULT NULL,
  `SEQUENCE_NUM` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PORTAL_PAGE_ID`,`PORTAL_PORTLET_ID`,`PORTLET_SEQ_ID`),
  KEY `PRTL_PGPTLT_PAGE` (`PORTAL_PAGE_ID`),
  KEY `PRTL_PGPTLT_PTLT` (`PORTAL_PORTLET_ID`),
  KEY `PRL_PG_PRTT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PRL_PG_PRTT_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `PRTL_PGPTLT_PAGE` FOREIGN KEY (`PORTAL_PAGE_ID`) REFERENCES `portal_page` (`PORTAL_PAGE_ID`),
  CONSTRAINT `PRTL_PGPTLT_PTLT` FOREIGN KEY (`PORTAL_PORTLET_ID`) REFERENCES `portal_portlet` (`PORTAL_PORTLET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_page_portlet`
--

LOCK TABLES `portal_page_portlet` WRITE;
/*!40000 ALTER TABLE `portal_page_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_page_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_portlet`
--

DROP TABLE IF EXISTS `portal_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_portlet` (
  `PORTAL_PORTLET_ID` varchar(20) NOT NULL,
  `PORTLET_NAME` varchar(100) DEFAULT NULL,
  `SCREEN_NAME` varchar(255) DEFAULT NULL,
  `SCREEN_LOCATION` varchar(255) DEFAULT NULL,
  `EDIT_FORM_NAME` varchar(255) DEFAULT NULL,
  `EDIT_FORM_LOCATION` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `SCREENSHOT` varchar(255) DEFAULT NULL,
  `SECURITY_SERVICE_NAME` varchar(255) DEFAULT NULL,
  `SECURITY_MAIN_ACTION` varchar(60) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PORTAL_PORTLET_ID`),
  KEY `PRTL_PRTLT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PRTL_PRTLT_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_portlet`
--

LOCK TABLES `portal_portlet` WRITE;
/*!40000 ALTER TABLE `portal_portlet` DISABLE KEYS */;
INSERT INTO `portal_portlet` VALUES ('FindGenericEntity','Entity List simple search criteria','FindGenericEntity','component://common/widget/PortalPageScreens.xml','FindGenericEntityParam','component://common/widget/PortletEditForms.xml','Simple search criteria, only Id (param idName) and description for entityList, result is sent to List${Entity}Area (FindGenericEntityPrtl define this area). This portel has 3 mandatory parameters.',NULL,NULL,'VIEW','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('GenericPortalPage','Sub PortalPage','GenericPortalPage','component://common/widget/PortalPageScreens.xml','GenericPortalPageParam','component://common/widget/PortletEditForms.xml','a portlet which included a portalPage to be able to have multiple line, each line being a sub page. This portlet has 1 mandatory parameters.',NULL,NULL,'VIEW','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('GenericScreenlet','Screenlet with one screen','GenericScreenlet','component://common/widget/PortalPageScreens.xml','GenericScreenletParam','component://common/widget/PortletEditForms.xml','Simple portlet using screenlet, with one screen. This portlet has 3 mandatory parameters.',NULL,NULL,'VIEW','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('GenericScreenletAjax','Screenlet with one screen called by ajax','GenericScreenletAjax','component://common/widget/PortalPageScreens.xml','GenericScreenletAjaxParam','component://common/widget/PortletEditForms.xml','Simple portlet using screenlet, with one screen which was update by ajax process, so with a div. This portlet has 4 mandatory parameters.',NULL,NULL,'VIEW','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('GricScltAjaxWithMenu','Screenlet with one screen, and one menu called by ajax','GenericScreenletAjaxWithMenu','component://common/widget/PortalPageScreens.xml','GenericScreenletAjaxWithMenuParam','component://common/widget/PortletEditForms.xml','Simple portlet using screenlet with a menu, with one screen which was update by ajax process, so with a div. This portlet has 6 mandatory parameters.',NULL,NULL,'VIEW','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05');
/*!40000 ALTER TABLE `portal_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet_attribute`
--

DROP TABLE IF EXISTS `portlet_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet_attribute` (
  `PORTAL_PAGE_ID` varchar(20) NOT NULL,
  `PORTAL_PORTLET_ID` varchar(20) NOT NULL,
  `PORTLET_SEQ_ID` varchar(20) NOT NULL,
  `ATTR_NAME` varchar(60) NOT NULL,
  `ATTR_VALUE` varchar(255) DEFAULT NULL,
  `ATTR_TYPE` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PORTAL_PAGE_ID`,`PORTAL_PORTLET_ID`,`PORTLET_SEQ_ID`,`ATTR_NAME`),
  KEY `PTLT_ATTR_PTLT` (`PORTAL_PORTLET_ID`),
  KEY `PRTLT_ATTRT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PRTLT_ATTRT_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `PTLT_ATTR_PTLT` FOREIGN KEY (`PORTAL_PORTLET_ID`) REFERENCES `portal_portlet` (`PORTAL_PORTLET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet_attribute`
--

LOCK TABLES `portlet_attribute` WRITE;
/*!40000 ALTER TABLE `portlet_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `portlet_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet_category`
--

DROP TABLE IF EXISTS `portlet_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet_category` (
  `PORTLET_CATEGORY_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PORTLET_CATEGORY_ID`),
  KEY `PRTLT_CTGR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PRTLT_CTGR_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet_category`
--

LOCK TABLES `portlet_category` WRITE;
/*!40000 ALTER TABLE `portlet_category` DISABLE KEYS */;
INSERT INTO `portlet_category` VALUES ('GENERIC_PORTLET','Generics portlets usable for easily parametrize portalPages','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05');
/*!40000 ALTER TABLE `portlet_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet_portlet_category`
--

DROP TABLE IF EXISTS `portlet_portlet_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet_portlet_category` (
  `PORTAL_PORTLET_ID` varchar(20) NOT NULL,
  `PORTLET_CATEGORY_ID` varchar(20) NOT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PORTAL_PORTLET_ID`,`PORTLET_CATEGORY_ID`),
  KEY `PPTLTCAT_PTPL` (`PORTAL_PORTLET_ID`),
  KEY `PPTLTCAT_PTLTCAT` (`PORTLET_CATEGORY_ID`),
  KEY `PRTT_PRT_CTR_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PRTT_PRT_CTR_TXCRS` (`CREATED_TX_STAMP`),
  CONSTRAINT `PPTLTCAT_PTLTCAT` FOREIGN KEY (`PORTLET_CATEGORY_ID`) REFERENCES `portlet_category` (`PORTLET_CATEGORY_ID`),
  CONSTRAINT `PPTLTCAT_PTPL` FOREIGN KEY (`PORTAL_PORTLET_ID`) REFERENCES `portal_portlet` (`PORTAL_PORTLET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet_portlet_category`
--

LOCK TABLES `portlet_portlet_category` WRITE;
/*!40000 ALTER TABLE `portlet_portlet_category` DISABLE KEYS */;
INSERT INTO `portlet_portlet_category` VALUES ('FindGenericEntity','GENERIC_PORTLET','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('GenericPortalPage','GENERIC_PORTLET','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('GenericScreenlet','GENERIC_PORTLET','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('GenericScreenletAjax','GENERIC_PORTLET','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('GricScltAjaxWithMenu','GENERIC_PORTLET','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05');
/*!40000 ALTER TABLE `portlet_portlet_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protected_view`
--

DROP TABLE IF EXISTS `protected_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protected_view` (
  `GROUP_ID` varchar(20) NOT NULL,
  `VIEW_NAME_ID` varchar(60) NOT NULL,
  `MAX_HITS` decimal(20,0) DEFAULT NULL,
  `MAX_HITS_DURATION` decimal(20,0) DEFAULT NULL,
  `TARPIT_DURATION` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`VIEW_NAME_ID`),
  KEY `VIEW_SECGRP_GRP` (`GROUP_ID`),
  KEY `PRTCTD_VW_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PRTCTD_VW_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `VIEW_SECGRP_GRP` FOREIGN KEY (`GROUP_ID`) REFERENCES `security_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protected_view`
--

LOCK TABLES `protected_view` WRITE;
/*!40000 ALTER TABLE `protected_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `protected_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protocol_type`
--

DROP TABLE IF EXISTS `protocol_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocol_type` (
  `PROTOCOL_TYPE_ID` varchar(20) NOT NULL,
  `PROTOCOL_NAME` varchar(100) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PROTOCOL_TYPE_ID`),
  KEY `PRTCL_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `PRTCL_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocol_type`
--

LOCK TABLES `protocol_type` WRITE;
/*!40000 ALTER TABLE `protocol_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `protocol_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrence_info`
--

DROP TABLE IF EXISTS `recurrence_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrence_info` (
  `RECURRENCE_INFO_ID` varchar(20) NOT NULL,
  `START_DATE_TIME` datetime DEFAULT NULL,
  `EXCEPTION_DATE_TIMES` longtext,
  `RECURRENCE_DATE_TIMES` longtext,
  `EXCEPTION_RULE_ID` varchar(20) DEFAULT NULL,
  `RECURRENCE_RULE_ID` varchar(20) DEFAULT NULL,
  `RECURRENCE_COUNT` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`RECURRENCE_INFO_ID`),
  KEY `REC_INFO_RCRLE` (`RECURRENCE_RULE_ID`),
  KEY `REC_INFO_EX_RCRLE` (`EXCEPTION_RULE_ID`),
  KEY `RCRRNC_INF_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `RCRRNC_INF_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `REC_INFO_EX_RCRLE` FOREIGN KEY (`EXCEPTION_RULE_ID`) REFERENCES `recurrence_rule` (`RECURRENCE_RULE_ID`),
  CONSTRAINT `REC_INFO_RCRLE` FOREIGN KEY (`RECURRENCE_RULE_ID`) REFERENCES `recurrence_rule` (`RECURRENCE_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrence_info`
--

LOCK TABLES `recurrence_info` WRITE;
/*!40000 ALTER TABLE `recurrence_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrence_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrence_rule`
--

DROP TABLE IF EXISTS `recurrence_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrence_rule` (
  `RECURRENCE_RULE_ID` varchar(20) NOT NULL,
  `FREQUENCY` varchar(60) DEFAULT NULL,
  `UNTIL_DATE_TIME` datetime DEFAULT NULL,
  `COUNT_NUMBER` decimal(20,0) DEFAULT NULL,
  `INTERVAL_NUMBER` decimal(20,0) DEFAULT NULL,
  `BY_SECOND_LIST` longtext,
  `BY_MINUTE_LIST` longtext,
  `BY_HOUR_LIST` longtext,
  `BY_DAY_LIST` longtext,
  `BY_MONTH_DAY_LIST` longtext,
  `BY_YEAR_DAY_LIST` longtext,
  `BY_WEEK_NO_LIST` longtext,
  `BY_MONTH_LIST` longtext,
  `BY_SET_POS_LIST` longtext,
  `WEEK_START` varchar(60) DEFAULT NULL,
  `X_NAME` longtext,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`RECURRENCE_RULE_ID`),
  KEY `RCRRNC_RL_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `RCRRNC_RL_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrence_rule`
--

LOCK TABLES `recurrence_rule` WRITE;
/*!40000 ALTER TABLE `recurrence_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrence_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runtime_data`
--

DROP TABLE IF EXISTS `runtime_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `runtime_data` (
  `RUNTIME_DATA_ID` varchar(20) NOT NULL,
  `RUNTIME_INFO` longtext,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`RUNTIME_DATA_ID`),
  KEY `RNTM_DT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `RNTM_DT_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runtime_data`
--

LOCK TABLES `runtime_data` WRITE;
/*!40000 ALTER TABLE `runtime_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `runtime_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group`
--

DROP TABLE IF EXISTS `security_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group` (
  `GROUP_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`),
  KEY `SCRT_GRP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SCRT_GRP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group`
--

LOCK TABLES `security_group` WRITE;
/*!40000 ALTER TABLE `security_group` DISABLE KEYS */;
INSERT INTO `security_group` VALUES ('BIZADMIN','Full Business Applications permission group, has all business app admin permissions, not technical permissions.','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('CMS','CMS System 前台基本安全组.','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMSBACKEND','CMS System 后台基本安全组.','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','Flexible Admin group, has all granular permissions.','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','Full Admin group, has all general permissions.','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('VIEWADMIN','Demo Admin group, has all view permissions.','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `security_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group_permission`
--

DROP TABLE IF EXISTS `security_group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group_permission` (
  `GROUP_ID` varchar(20) NOT NULL,
  `PERMISSION_ID` varchar(60) NOT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`PERMISSION_ID`),
  KEY `SEC_GRP_PERM_GRP` (`GROUP_ID`),
  KEY `SCT_GRP_PRMN_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SCT_GRP_PRMN_TXCRS` (`CREATED_TX_STAMP`),
  CONSTRAINT `SEC_GRP_PERM_GRP` FOREIGN KEY (`GROUP_ID`) REFERENCES `security_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group_permission`
--

LOCK TABLES `security_group_permission` WRITE;
/*!40000 ALTER TABLE `security_group_permission` DISABLE KEYS */;
INSERT INTO `security_group_permission` VALUES ('BIZADMIN','CMSBACKEND_ADMIN','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('BIZADMIN','CMS_ADMIN','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('BIZADMIN','OFBTOOLS_VIEW','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('BIZADMIN','PERIOD_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('CMS','CMSBACKEND_ADMIN','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMSBACKEND','CMSBACKEND_ADMIN','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMSBACKEND','SECURITY_ADMIN','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','ARTIFACT_INFO_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','CMSBACKEND_CREATE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','CMSBACKEND_DELETE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','CMSBACKEND_UPDATE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','CMSBACKEND_VIEW','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','CMS_CREATE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','CMS_DELETE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','CMS_UPDATE','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','CMS_VIEW','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FLEXADMIN','COMMON_CREATE','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','COMMON_DELETE','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','COMMON_UPDATE','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','COMMON_VIEW','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','DATAFILE_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','ENTITY_DATA_CREATE','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','ENTITY_DATA_DELETE','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','ENTITY_DATA_UPDATE','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','ENTITY_DATA_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','ENTITY_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','ENTITY_SYNC_ADMIN','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','ENUM_STATUS_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','LABEL_MANAGER_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','OFBTOOLS_VIEW','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','PERIOD_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','PORTALPAGE_ADMIN','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','SERVER_STATS_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','SERVICE_INVOKE_ANY','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','SERVICE_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','UTIL_CACHE_EDIT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','UTIL_CACHE_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','UTIL_DEBUG_EDIT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','UTIL_DEBUG_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FLEXADMIN','VISUALTHEME_CREATE','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','VISUALTHEME_DELETE','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','VISUALTHEME_UPDATE','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FLEXADMIN','WEBTOOLS_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','access','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','ARTIFACT_INFO_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','BI_ADMIN','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','CMSBACKEND_ADMIN','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FULLADMIN','CMS_ADMIN','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FULLADMIN','COMMON_ADMIN','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','create','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','DATAFILE_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','delete','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','ENTITY_DATA_ADMIN','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','ENTITY_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','ENTITY_SYNC_ADMIN','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','ENUM_STATUS_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','LABEL_MANAGER_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','OFBTOOLS_VIEW','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','PERIOD_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','PORTALPAGE_ADMIN','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','read','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','SECURITY_ADMIN','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('FULLADMIN','SERVER_STATS_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','SERVICE_INVOKE_ANY','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','SERVICE_MAINT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','TEMPEXPR_ADMIN','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','update','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','USERPREF_ADMIN','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','UTIL_CACHE_EDIT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','UTIL_CACHE_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','UTIL_DEBUG_EDIT','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','UTIL_DEBUG_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('FULLADMIN','VISUALTHEME_ADMIN','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('FULLADMIN','WEBTOOLS_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('VIEWADMIN','access','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('VIEWADMIN','ARTIFACT_INFO_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('VIEWADMIN','CMSBACKEND_VIEW','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('VIEWADMIN','CMS_VIEW','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('VIEWADMIN','COMMON_VIEW','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('VIEWADMIN','ENTITY_DATA_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('VIEWADMIN','LABEL_MANAGER_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('VIEWADMIN','OFBTOOLS_VIEW','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('VIEWADMIN','read','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('VIEWADMIN','SERVER_STATS_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('VIEWADMIN','UTIL_CACHE_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('VIEWADMIN','UTIL_DEBUG_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('VIEWADMIN','WEBTOOLS_VIEW','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06');
/*!40000 ALTER TABLE `security_group_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_permission`
--

DROP TABLE IF EXISTS `security_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_permission` (
  `PERMISSION_ID` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DYNAMIC_ACCESS` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PERMISSION_ID`),
  KEY `SCRT_PRMSSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SCRT_PRMSSN_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_permission`
--

LOCK TABLES `security_permission` WRITE;
/*!40000 ALTER TABLE `security_permission` DISABLE KEYS */;
INSERT INTO `security_permission` VALUES ('access','Base ACCESS permission',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('ARTIFACT_INFO_VIEW','View the Artifact Info pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('BI_ADMIN','ALL Business Intelligence operations.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('BI_VIEW','Business Intelligence View permission.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('CMSBACKEND_ADMIN','ALL operations in the CmsBackend Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMSBACKEND_CREATE','Create operations in the CmsBackend Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMSBACKEND_DELETE','Delete operations in the CmsBackend Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMSBACKEND_UPDATE','Update operations in the CmsBackend Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMSBACKEND_VIEW','View operations in the CmsBackend Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMS_ADMIN','ALL operations in the Cms Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMS_CREATE','Create operations in the Cms Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMS_DELETE','Delete operations in the Cms Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMS_UPDATE','Update operations in the Cms Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMS_VIEW','View operations in the Cms Component.',NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('COMMON_ADMIN','Admin operations in the Common Component.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('COMMON_CREATE','Create operations in the Common Component.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('COMMON_DELETE','Delete operations in the Common Component.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('COMMON_UPDATE','Update operations in the Common Component.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('COMMON_VIEW','View operations in the Common Component.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('create','Base CREATE permission',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('DATAFILE_MAINT','Use the Data File Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('delete','Base DELETE permission',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('ENTITY_DATA_ADMIN','ALL with the Entity Data Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ENTITY_DATA_CREATE','Create with the Entity Data Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ENTITY_DATA_DELETE','Delete with the Entity Data Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ENTITY_DATA_UPDATE','Update with the Entity Data Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ENTITY_DATA_VIEW','View with the Entity Data Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ENTITY_MAINT','Use the Entity Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ENTITY_SYNC_ADMIN','Use the Entity Sync Admin pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ENUM_STATUS_MAINT','Use the Enum and Status Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('LABEL_MANAGER_VIEW','View the Labels Info pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('OFBTOOLS_VIEW','Permission to access the Stock OFBiz Manager Applications.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('PERIOD_MAINT','Use the Period Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('PORTALPAGE_ADMIN','Admin operations on Portal Pages.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('read','Base READ permission',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('SERVER_STATS_VIEW','View the Server Statistics pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('SERVICE_INVOKE_ANY','Permission to invoke any service remotely.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('SERVICE_MAINT','Use the Service Maintenance pages.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('TEMPEXPR_ADMIN','Temporal expression admin',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('update','Base UPDATE permission',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('USERPREF_ADMIN','User preferences admin',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('UTIL_CACHE_EDIT','Edit a UtilCache instance.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('UTIL_CACHE_VIEW','View a UtilCache instance.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('UTIL_DEBUG_EDIT','Edit a UtilDebug instance.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('UTIL_DEBUG_VIEW','View a UtilDebug instance.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('VISUALTHEME_ADMIN','ALL operations on Visual Themes and Visual Theme Resources.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('VISUALTHEME_CREATE','Create Visual Themes and Visual Theme Resources.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('VISUALTHEME_DELETE','Delete Visual Themes and Visual Theme Resources.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('VISUALTHEME_UPDATE','Update Visual Themes and Visual Theme Resources.',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('WEBTOOLS_VIEW','Permission to access the WebTools Menu.',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06');
/*!40000 ALTER TABLE `security_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_permission_auto_grant`
--

DROP TABLE IF EXISTS `security_permission_auto_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_permission_auto_grant` (
  `PERMISSION_ID` varchar(60) NOT NULL,
  `GRANT_PERMISSION` varchar(250) NOT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`PERMISSION_ID`,`GRANT_PERMISSION`),
  KEY `SEC_PERM_AUTO_GRNT` (`PERMISSION_ID`),
  KEY `SCT_PRN_AT_GRT_TXP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SCT_PRN_AT_GRT_TXS` (`CREATED_TX_STAMP`),
  CONSTRAINT `SEC_PERM_AUTO_GRNT` FOREIGN KEY (`PERMISSION_ID`) REFERENCES `security_permission` (`PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_permission_auto_grant`
--

LOCK TABLES `security_permission_auto_grant` WRITE;
/*!40000 ALTER TABLE `security_permission_auto_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_permission_auto_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selenium_test_suite_path`
--

DROP TABLE IF EXISTS `selenium_test_suite_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selenium_test_suite_path` (
  `TEST_SUITE_ID` varchar(20) NOT NULL,
  `TEST_SUITE_NAME` varchar(100) DEFAULT NULL,
  `TEST_SUITE_TYPE` varchar(20) DEFAULT NULL,
  `TEST_SUITE_PATH` varchar(255) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TEST_SUITE_ID`),
  KEY `SLM_TST_ST_PTH_TXP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SLM_TST_ST_PTH_TXS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selenium_test_suite_path`
--

LOCK TABLES `selenium_test_suite_path` WRITE;
/*!40000 ALTER TABLE `selenium_test_suite_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `selenium_test_suite_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_value_item`
--

DROP TABLE IF EXISTS `sequence_value_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence_value_item` (
  `SEQ_NAME` varchar(60) NOT NULL,
  `SEQ_ID` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`),
  KEY `SQNC_VL_ITM_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SQNC_VL_ITM_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_value_item`
--

LOCK TABLES `sequence_value_item` WRITE;
/*!40000 ALTER TABLE `sequence_value_item` DISABLE KEYS */;
INSERT INTO `sequence_value_item` VALUES ('EntitySyncRemove',10010,NULL,NULL,NULL,NULL),('JobSandbox',10010,NULL,NULL,NULL,NULL),('ServerHitBin',10010,NULL,NULL,NULL,NULL),('Visit',10010,NULL,NULL,NULL,NULL),('Visitor',10010,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sequence_value_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_hit`
--

DROP TABLE IF EXISTS `server_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_hit` (
  `VISIT_ID` varchar(20) NOT NULL,
  `CONTENT_ID` varchar(250) NOT NULL,
  `HIT_START_DATE_TIME` datetime NOT NULL,
  `HIT_TYPE_ID` varchar(20) NOT NULL,
  `NUM_OF_BYTES` decimal(20,0) DEFAULT NULL,
  `RUNNING_TIME_MILLIS` decimal(20,0) DEFAULT NULL,
  `USER_LOGIN_ID` varchar(250) DEFAULT NULL,
  `STATUS_ID` varchar(20) DEFAULT NULL,
  `REQUEST_URL` varchar(255) DEFAULT NULL,
  `REFERRER_URL` varchar(255) DEFAULT NULL,
  `SERVER_IP_ADDRESS` varchar(20) DEFAULT NULL,
  `SERVER_HOST_NAME` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`VISIT_ID`,`CONTENT_ID`,`HIT_START_DATE_TIME`,`HIT_TYPE_ID`),
  KEY `SERVER_HIT_SHTYP` (`HIT_TYPE_ID`),
  KEY `SERVER_HIT_VISIT` (`VISIT_ID`),
  KEY `SERVER_HIT_STATUS` (`STATUS_ID`),
  KEY `SERVER_HIT_USER` (`USER_LOGIN_ID`),
  KEY `SERVER_HIT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SERVER_HIT_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `SERVER_HIT_SHTYP` FOREIGN KEY (`HIT_TYPE_ID`) REFERENCES `server_hit_type` (`HIT_TYPE_ID`),
  CONSTRAINT `SERVER_HIT_STATUS` FOREIGN KEY (`STATUS_ID`) REFERENCES `status_item` (`STATUS_ID`),
  CONSTRAINT `SERVER_HIT_USER` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `user_login` (`USER_LOGIN_ID`),
  CONSTRAINT `SERVER_HIT_VISIT` FOREIGN KEY (`VISIT_ID`) REFERENCES `visit` (`VISIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_hit`
--

LOCK TABLES `server_hit` WRITE;
/*!40000 ALTER TABLE `server_hit` DISABLE KEYS */;
INSERT INTO `server_hit` VALUES ('10000','cmsbackend.FindCmsArticle','2017-10-22 01:00:18','REQUEST',NULL,7173,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle?externalLoginKey=EL587369455333','https://127.0.0.1:8443/cmsbackend/control/main','192.168.1.104','ThinkPadT61P','2017-10-22 01:00:26','2017-10-22 01:00:26','2017-10-22 01:00:26','2017-10-22 01:00:26'),('10000','cmsbackend.FindCmsArticle','2017-10-22 01:00:31','REQUEST',NULL,1133,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle','https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle?externalLoginKey=EL587369455333','192.168.1.104','ThinkPadT61P','2017-10-22 01:00:32','2017-10-22 01:00:32','2017-10-22 01:00:32','2017-10-22 01:00:32'),('10000','cmsbackend.FindCmsArticle','2017-10-22 01:00:37','REQUEST',NULL,720,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle','https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle','192.168.1.104','ThinkPadT61P','2017-10-22 01:00:38','2017-10-22 01:00:38','2017-10-22 01:00:38','2017-10-22 01:00:38'),('10000','cmsbackend.FindCmsArticle','2017-10-22 01:00:42','REQUEST',NULL,1189,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle','https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle','192.168.1.104','ThinkPadT61P','2017-10-22 01:00:44','2017-10-22 01:00:44','2017-10-22 01:00:44','2017-10-22 01:00:44'),('10000','cmsbackend.FindCmsArticle','2017-10-22 01:00:50','REQUEST',NULL,1037,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle','https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle','192.168.1.104','ThinkPadT61P','2017-10-22 01:00:51','2017-10-22 01:00:51','2017-10-22 01:00:51','2017-10-22 01:00:51'),('10000','cmsbackend.FindCmsArticle','2017-10-22 01:01:00','REQUEST',NULL,965,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle?externalLoginKey=EL958125646220','https://127.0.0.1:8443/cmsbackend/control/FindCmsArticle','192.168.1.104','ThinkPadT61P','2017-10-22 01:01:01','2017-10-22 01:01:01','2017-10-22 01:01:01','2017-10-22 01:01:01'),('10000','cmsbackend.ListVisualThemes','2017-10-22 01:00:01','REQUEST',NULL,1632,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/ListVisualThemes','https://127.0.0.1:8443/cmsbackend/control/main','192.168.1.104','ThinkPadT61P','2017-10-22 01:00:02','2017-10-22 01:00:02','2017-10-22 01:00:02','2017-10-22 01:00:02'),('10000','cmsbackend.login','2017-10-22 00:59:57','REQUEST',NULL,682,NULL,NULL,'https://127.0.0.1:8443/cmsbackend/control/login','https://127.0.0.1:8443/cmsbackend/control/main','192.168.1.104','ThinkPadT61P','2017-10-22 00:59:58','2017-10-22 00:59:58','2017-10-22 00:59:58','2017-10-22 00:59:58'),('10000','cmsbackend.main','2017-10-22 00:59:51','REQUEST',NULL,4192,NULL,NULL,'https://127.0.0.1:8443/cmsbackend/control/main','','192.168.1.104','ThinkPadT61P','2017-10-22 00:59:55','2017-10-22 00:59:55','2017-10-22 00:59:55','2017-10-22 00:59:55'),('10000','cmsbackend.main','2017-10-22 00:59:58','REQUEST',NULL,924,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/main','https://127.0.0.1:8443/cmsbackend/control/main','192.168.1.104','ThinkPadT61P','2017-10-22 00:59:59','2017-10-22 00:59:59','2017-10-22 00:59:59','2017-10-22 00:59:59'),('10000','cmsbackend.main','2017-10-22 01:00:08','REQUEST',NULL,1174,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/main','https://127.0.0.1:8443/cmsbackend/control/setUserPreference','192.168.1.104','ThinkPadT61P','2017-10-22 01:00:09','2017-10-22 01:00:09','2017-10-22 01:00:09','2017-10-22 01:00:09'),('10000','cmsbackend.setUserPreference','2017-10-22 01:00:04','REQUEST',NULL,1020,'admin',NULL,'https://127.0.0.1:8443/cmsbackend/control/setUserPreference','https://127.0.0.1:8443/cmsbackend/control/ListVisualThemes','192.168.1.104','ThinkPadT61P','2017-10-22 01:00:05','2017-10-22 01:00:05','2017-10-22 01:00:05','2017-10-22 01:00:05');
/*!40000 ALTER TABLE `server_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_hit_bin`
--

DROP TABLE IF EXISTS `server_hit_bin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_hit_bin` (
  `SERVER_HIT_BIN_ID` varchar(20) NOT NULL,
  `CONTENT_ID` varchar(250) DEFAULT NULL,
  `HIT_TYPE_ID` varchar(20) DEFAULT NULL,
  `SERVER_IP_ADDRESS` varchar(20) DEFAULT NULL,
  `SERVER_HOST_NAME` varchar(255) DEFAULT NULL,
  `BIN_START_DATE_TIME` datetime DEFAULT NULL,
  `BIN_END_DATE_TIME` datetime DEFAULT NULL,
  `NUMBER_HITS` decimal(20,0) DEFAULT NULL,
  `TOTAL_TIME_MILLIS` decimal(20,0) DEFAULT NULL,
  `MIN_TIME_MILLIS` decimal(20,0) DEFAULT NULL,
  `MAX_TIME_MILLIS` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`SERVER_HIT_BIN_ID`),
  KEY `SERVER_HBIN_TYPE` (`HIT_TYPE_ID`),
  KEY `SRVR_HT_BN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SRVR_HT_BN_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `SERVER_HBIN_TYPE` FOREIGN KEY (`HIT_TYPE_ID`) REFERENCES `server_hit_type` (`HIT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_hit_bin`
--

LOCK TABLES `server_hit_bin` WRITE;
/*!40000 ALTER TABLE `server_hit_bin` DISABLE KEYS */;
INSERT INTO `server_hit_bin` VALUES ('10000','cmsbackend','VIEW','192.168.1.104','ThinkPadT61P','2017-10-22 00:45:00','2017-10-22 00:59:59',2,4226,900,3326,'2017-10-22 01:00:02','2017-10-22 01:00:02','2017-10-22 01:00:02','2017-10-22 01:00:02'),('10001','GLOBAL','VIEW','192.168.1.104','ThinkPadT61P','2017-10-22 00:45:00','2017-10-22 00:59:59',2,4226,900,3326,'2017-10-22 01:00:02','2017-10-22 01:00:02','2017-10-22 01:00:02','2017-10-22 01:00:02'),('10002','cmsbackend','REQUEST','192.168.1.104','ThinkPadT61P','2017-10-22 00:45:00','2017-10-22 00:59:59',3,5798,682,4192,'2017-10-22 01:00:03','2017-10-22 01:00:03','2017-10-22 01:00:03','2017-10-22 01:00:03'),('10003','GLOBAL','REQUEST','192.168.1.104','ThinkPadT61P','2017-10-22 00:45:00','2017-10-22 00:59:59',3,5798,682,4192,'2017-10-22 01:00:03','2017-10-22 01:00:03','2017-10-22 01:00:03','2017-10-22 01:00:03'),('10004','cmsbackend','EVENT','192.168.1.104','ThinkPadT61P','2017-10-22 00:45:00','2017-10-22 00:59:59',1,660,660,660,'2017-10-22 01:00:05','2017-10-22 01:00:05','2017-10-22 01:00:05','2017-10-22 01:00:05'),('10005','GLOBAL','EVENT','192.168.1.104','ThinkPadT61P','2017-10-22 00:45:00','2017-10-22 00:59:59',1,660,660,660,'2017-10-22 01:00:05','2017-10-22 01:00:05','2017-10-22 01:00:05','2017-10-22 01:00:05'),('10006','cmsbackend.main','VIEW','192.168.1.104','ThinkPadT61P','2017-10-22 00:45:00','2017-10-22 00:59:59',1,900,900,900,'2017-10-22 01:00:09','2017-10-22 01:00:09','2017-10-22 01:00:09','2017-10-22 01:00:09'),('10007','cmsbackend.main','REQUEST','192.168.1.104','ThinkPadT61P','2017-10-22 00:45:00','2017-10-22 00:59:59',2,5116,924,4192,'2017-10-22 01:00:09','2017-10-22 01:00:09','2017-10-22 01:00:09','2017-10-22 01:00:09');
/*!40000 ALTER TABLE `server_hit_bin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_hit_type`
--

DROP TABLE IF EXISTS `server_hit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_hit_type` (
  `HIT_TYPE_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`HIT_TYPE_ID`),
  KEY `SRVR_HT_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SRVR_HT_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_hit_type`
--

LOCK TABLES `server_hit_type` WRITE;
/*!40000 ALTER TABLE `server_hit_type` DISABLE KEYS */;
INSERT INTO `server_hit_type` VALUES ('ENTITY','Entity','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('EVENT','Event','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('REQUEST','Request','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('SERVICE','Service','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VIEW','View','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `server_hit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_semaphore`
--

DROP TABLE IF EXISTS `service_semaphore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_semaphore` (
  `SERVICE_NAME` varchar(100) NOT NULL,
  `LOCK_THREAD` varchar(100) DEFAULT NULL,
  `LOCK_TIME` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`SERVICE_NAME`),
  KEY `SRVC_SMPHR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `SRVC_SMPHR_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_semaphore`
--

LOCK TABLES `service_semaphore` WRITE;
/*!40000 ALTER TABLE `service_semaphore` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_semaphore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_language`
--

DROP TABLE IF EXISTS `standard_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standard_language` (
  `STANDARD_LANGUAGE_ID` varchar(20) NOT NULL,
  `LANG_CODE3T` varchar(10) DEFAULT NULL,
  `LANG_CODE3B` varchar(10) DEFAULT NULL,
  `LANG_CODE2` varchar(10) DEFAULT NULL,
  `LANG_NAME` varchar(60) DEFAULT NULL,
  `LANG_FAMILY` varchar(60) DEFAULT NULL,
  `LANG_CHARSET` varchar(60) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`STANDARD_LANGUAGE_ID`),
  KEY `STNDRD_LNGG_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `STNDRD_LNGG_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_language`
--

LOCK TABLES `standard_language` WRITE;
/*!40000 ALTER TABLE `standard_language` DISABLE KEYS */;
INSERT INTO `standard_language` VALUES ('6301','aar','aar','aa','Afar','Hamitic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6302','abk','abk','ab','Abkhazian','Ibero-caucasian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6303','ace','ace',NULL,'Achinese',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6304','ach','ach',NULL,'Acoli',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6305','ada','ada',NULL,'Adangme',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6306','afa','afa',NULL,'Afro-Asiatic (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6307','afh','afh',NULL,'Afrihili',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6308','afr','afr','af','Afrikaans','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6309','aka','aka',NULL,'Akan',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6310','akk','akk',NULL,'Akkadian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6311','ale','ale',NULL,'Aleut',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6312','alg','alg',NULL,'Algonquian languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6313','amh','amh','am','Amharic','Semitic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6314','ang','ang',NULL,'English, Old (ca. 450-1100)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6315','apa','apa',NULL,'Apache languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6316','ara','ara','ar','Arabic','Semitic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6317','arc','arc',NULL,'Aramaic',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6318','arn','arn',NULL,'Araucanian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6319','arp','arp',NULL,'Arapaho',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6320','art','art',NULL,'Artificial (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6321','arw','arw',NULL,'Arawak',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6322','asm','asm','as','Assamese','Indian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6323','ath','ath',NULL,'Athapascan languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6324','aus','aus',NULL,'Australian languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6325','ava','ava',NULL,'Avaric',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6326','ave','ave','ae','Avestan',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6327','awa','awa',NULL,'Awadhi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6328','aym','aym','ay','Aymara','Amerindian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6329','aze','aze','az','Azerbaijani','Turkic/altaic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6330','bad','bad',NULL,'Banda',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6331','bai','bai',NULL,'Bamileke languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6332','bak','bak','ba','Bashkir','Turkic/altaic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6333','bal','bal',NULL,'Baluchi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6334','bam','bam',NULL,'Bambara',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6335','ban','ban',NULL,'Balinese',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6336','bas','bas',NULL,'Basa',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6337','bat','bat',NULL,'Baltic (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6338','bej','bej',NULL,'Beja',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6339','bel','bel','be','Belarusian','Slavic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6340','bem','bem',NULL,'Bemba',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6341','ben','ben','bn','Bengali','Indian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6342','ber','ber',NULL,'Berber (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6343','bho','bho',NULL,'Bhojpuri',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6344','bih','bih','bh','Bihari','Indian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6345','bik','bik',NULL,'Bikol',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6346','bin','bin',NULL,'Bini',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6347','bis','bis','bi','Bislama',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6348','bla','bla',NULL,'Siksika',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6349','bnt','bnt',NULL,'Bantu (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6350','bod','tib','bo','Tibetan','Asian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6351','bos','bos','bs','Bosnian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6352','bra','bra',NULL,'Braj',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6353','bre','bre','br','Breton','Celtic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6354','btk','btk',NULL,'Batak (Indonesia)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6355','bua','bua',NULL,'Buriat',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6356','bug','bug',NULL,'Buginese',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6357','bul','bul','bg','Bulgarian','Slavic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6358','cad','cad',NULL,'Caddo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6359','cai','cai',NULL,'Central American Indian (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6360','car','car',NULL,'Carib',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6361','cat','cat','ca','Catalan','Romance',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6362','cau','cau',NULL,'Caucasian (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6363','ceb','ceb',NULL,'Cebuano',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6364','cel','cel',NULL,'Celtic (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6365','ces','cze','cs','Czech','Slavic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6366','cha','cha','ch','Chamorro',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6367','chb','chb',NULL,'Chibcha',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6368','che','che','ce','Chechen',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6369','chg','chg',NULL,'Chagatai',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6370','chk','chk',NULL,'Chuukese',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6371','chm','chm',NULL,'Mari',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6372','chn','chn',NULL,'Chinook jargon',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6373','cho','cho',NULL,'Choctaw',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6374','chp','chp',NULL,'Chipewyan',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6375','chr','chr',NULL,'Cherokee',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6376','chu','chu','cu','Church Slavic',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6377','chv','chv','cv','Chuvash',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6378','chy','chy',NULL,'Cheyenne',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6379','cmc','cmc',NULL,'Chamic languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6380','cop','cop',NULL,'Coptic',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6381','cor','cor','kw','Cornish',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6382','cos','cos','co','Corsican','Romance',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6383','cpe','cpe',NULL,'Creoles and pidgins, English based (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6384','cpf','cpf',NULL,'Creoles and pidgins, French-based (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6385','cpp','cpp',NULL,'Creoles and pidgins, Portuguese-based (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6386','cre','cre',NULL,'Cree',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6387','crp','crp',NULL,'Creoles and pidgins (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6388','cus','cus',NULL,'Cushitic (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6389','cym','wel','cy','Welsh','Celtic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6390','dak','dak',NULL,'Dakota',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6391','dan','dan','da','Danish','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6392','day','day',NULL,'Dayak',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6393','del','del',NULL,'Delaware',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6394','den','den',NULL,'Slave (Athapascan)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6395','deu','ger','de','German','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6396','dgr','dgr',NULL,'Dogrib',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6397','din','din',NULL,'Dinka',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6398','div','div',NULL,'Divehi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6399','doi','doi',NULL,'Dogri',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6400','dra','dra',NULL,'Dravidian (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6401','dua','dua',NULL,'Duala',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6402','dum','dum',NULL,'Dutch, Middle (ca. 1050-1350)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6403','dyu','dyu',NULL,'Dyula',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6404','dzo','dzo','dz','Dzongkha','Asian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6405','efi','efi',NULL,'Efik',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6406','egy','egy',NULL,'Egyptian (Ancient)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6407','eka','eka',NULL,'Ekajuk',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6408','ell','gre','el','Greek, Modern (1453-)','Latin/greek',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6409','elx','elx',NULL,'Elamite',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6410','eng','eng','en','English','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6411','enm','enm',NULL,'English, Middle (1100-1500)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6412','epo','epo','eo','Esperanto','International aux.',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6413','est','est','et','Estonian','Finno-ugric',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6414','eus','baq','eu','Basque','Basque',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6415','ewe','ewe',NULL,'Ewe',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6416','ewo','ewo',NULL,'Ewondo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6417','fan','fan',NULL,'Fang',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6418','fao','fao','fo','Faroese','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6419','fas','per','fa','Persian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6420','fat','fat',NULL,'Fanti',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6421','fij','fij','fj','Fijian','Oceanic/indonesian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6422','fin','fin','fi','Finnish','Finno-ugric',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6423','fiu','fiu',NULL,'Finno-Ugrian (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6424','fon','fon',NULL,'Fon',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6425','fra','fre','fr','French','Romance',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6426','frm','frm',NULL,'French, Middle (ca. 1400-1600)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6427','fro','fro',NULL,'French, Old (842-ca. 1400)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6428','fry','fry','fy','Frisian','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6429','ful','ful',NULL,'Fulah',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6430','fur','fur',NULL,'Friulian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6431','gaa','gaa',NULL,'Ga',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6432','gay','gay',NULL,'Gayo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6433','gba','gba',NULL,'Gbaya',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6434','gem','gem',NULL,'Germanic (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6435','gez','gez',NULL,'Geez',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6436','gil','gil',NULL,'Gilbertese',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6437','gla','gla','gd','Gaelic (Scots)','Celtic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6438','gle','gle','ga','Irish','Celtic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6439','glg','glg','gl','Gallegan','Romance',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6440','glv','glv','gv','Manx',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6441','gmh','gmh',NULL,'German, Middle High (ca. 1050-1500)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6442','goh','goh',NULL,'German, Old High (ca. 750-1050)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6443','gon','gon',NULL,'Gondi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6444','gor','gor',NULL,'Gorontalo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6445','got','got',NULL,'Gothic',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6446','grb','grb',NULL,'Grebo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6447','grc','grc',NULL,'Greek, Ancient (to 1453)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6448','grn','grn','gn','Guarani','Amerindian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6449','guj','guj','gu','Gujarati','Indian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6450','gwi','gwi',NULL,'Gwich´in',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6451','hai','hai',NULL,'Haida',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6452','hau','hau','ha','Hausa','Negro-african',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6453','haw','haw',NULL,'Hawaiian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6454','heb','heb','he','Hebrew',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6455','her','her','hz','Herero',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6456','hil','hil',NULL,'Hiligaynon',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6457','him','him',NULL,'Himachali',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6458','hin','hin','hi','Hindi','Indian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6459','hit','hit',NULL,'Hittite',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6460','hmn','hmn',NULL,'Hmong',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6461','hmo','hmo','ho','Hiri Motu',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6462','hrv','scr','hr','Croatian','Slavic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6463','hun','hun','hu','Hungarian','Finno-ugric',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6464','hup','hup',NULL,'Hupa',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6465','hye','arm','hy','Armenian','Indo-european (other)',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6466','iba','iba',NULL,'Iban',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6467','ibo','ibo',NULL,'Igbo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6468','ijo','ijo',NULL,'Ijo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6469','iku','iku','iu','Inuktitut',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6470','ile','ile','ie','Interlingue','International aux.',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6471','ilo','ilo',NULL,'Iloko',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6472','ina','ina','ia','Interlingua','International aux.',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6473','inc','inc',NULL,'Indic (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6474','ind','ind','id','Indonesian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6475','ine','ine',NULL,'Indo-European (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6476','ipk','ipk','ik','Inupiaq','Eskimo',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6477','ira','ira',NULL,'Iranian (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6478','iro','iro',NULL,'Iroquoian languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6479','isl','ice','is','Icelandic','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6480','ita','ita','it','Italian','Romance',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6481','jaw','jav','jw','Javanese',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6482','jpn','jpn','ja','Japanese','Asian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6483','jpr','jpr',NULL,'Judeo-Persian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6484','kaa','kaa',NULL,'Kara-Kalpak',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6485','kab','kab',NULL,'Kabyle',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6486','kac','kac',NULL,'Kachin',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6487','kal','kal','kl','Kalaallisut','Eskimo',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6488','kam','kam',NULL,'Kamba',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6489','kan','kan','kn','Kannada','Dravidian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6490','kar','kar',NULL,'Karen',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6491','kas','kas','ks','Kashmiri','Indian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6492','kat','geo','ka','Georgian','Ibero-caucasian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6493','kau','kau',NULL,'Kanuri',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6494','kaw','kaw',NULL,'Kawi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6495','kaz','kaz','kk','Kazakh','Turkic/altaic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6496','kha','kha',NULL,'Khasi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6497','khi','khi',NULL,'Khoisan (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6498','khm','khm','km','Khmer','Asian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6499','kho','kho',NULL,'Khotanese',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6500','kik','kik','ki','Kikuyu',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6501','kin','kin','rw','Kinyarwanda','Negro-african',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6502','kir','kir','ky','Kirghiz','Turkic/altaic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6503','kmb','kmb',NULL,'Kimbundu',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6504','kok','kok',NULL,'Konkani',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6505','kom','kom','kv','Komi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6506','kon','kon',NULL,'Kongo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6507','kor','kor','ko','Korean','Asian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6508','kos','kos',NULL,'Kosraean',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6509','kpe','kpe',NULL,'Kpelle',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6510','kro','kro',NULL,'Kru',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6511','kru','kru',NULL,'Kurukh',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6512','kum','kum',NULL,'Kumyk',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6513','kur','kur','ku','Kurdish','Iranian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6514','kut','kut',NULL,'Kutenai',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6515','lad','lad',NULL,'Ladino',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6516','lah','lah',NULL,'Lahnda',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6517','lam','lam',NULL,'Lamba',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6518','lao','lao','lo','Lao','Asian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6519','lat','lat','la','Latin','Latin/greek',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6520','lav','lav','lv','Latvian','Baltic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6521','lez','lez',NULL,'Lezghian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6522','lin','lin','ln','Lingala','Negro-african',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6523','lit','lit','lt','Lithuanian','Baltic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6524','lol','lol',NULL,'Mongo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6525','loz','loz',NULL,'Lozi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6526','ltz','ltz','lb','Letzeburgesch',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6527','lua','lua',NULL,'Luba-Lulua',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6528','lub','lub',NULL,'Luba-Katanga',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6529','lug','lug',NULL,'Ganda',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6530','lui','lui',NULL,'Luiseno',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6531','lun','lun',NULL,'Lunda',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6532','luo','luo',NULL,'Luo (Kenya and Tanzania)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6533','lus','lus',NULL,'lushai',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6534','mad','mad',NULL,'Madurese',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6535','mag','mag',NULL,'Magahi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6536','mah','mah','mh','Marshall',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6537','mai','mai',NULL,'Maithili',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6538','mak','mak',NULL,'Makasar',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6539','mal','mal','ml','Malayalam','Dravidian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6540','man','man',NULL,'Mandingo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6541','map','map',NULL,'Austronesian (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6542','mar','mar','mr','Marathi','Indian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6543','mas','mas',NULL,'Masai',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6544','mdr','mdr',NULL,'Mandar',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6545','men','men',NULL,'Mende',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6546','mga','mga',NULL,'Irish, Middle (900-1200)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6547','mic','mic',NULL,'Micmac',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6548','min','min',NULL,'Minangkabau',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6549','mis','mis',NULL,'Miscellaneous languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6550','mkd','mac','mk','Macedonian','Slavic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6551','mkh','mkh',NULL,'Mon-Khmer (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6552','mlg','mlg','mg','Malagasy','Oceanic/indonesian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6553','mlt','mlt','mt','Maltese','Semitic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6554','mnc','mnc',NULL,'Manchu',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6555','mni','mni',NULL,'Manipuri',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6556','mno','mno',NULL,'Manobo languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6557','moh','moh',NULL,'Mohawk',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6558','mol','mol','mo','Moldavian','Romance',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6559','mon','mon','mn','Mongolian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6560','mos','mos',NULL,'Mossi',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6561','mri','mao','mi','Maori','Oceanic/indonesian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6562','msa','may','ms','Malay','Oceanic/indonesian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6563','mul','mul',NULL,'Multiple languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6564','mun','mun',NULL,'Munda languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6565','mus','mus',NULL,'Creek',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6566','mwr','mwr',NULL,'Marwari',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6567','mya','bur','my','Burmese','Asian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6568','myn','myn',NULL,'Mayan languages',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6569','nah','nah',NULL,'Nahuatl',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6570','nai','nai',NULL,'North American Indian',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6571','nau','nau','na','Nauru',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6572','nav','nav','nv','Navajo',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6573','nbl','nbl','nr','Ndebele, South',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6574','nde','nde','nd','Ndebele, North',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6575','ndo','ndo','ng','Ndonga',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6576','nds','nds',NULL,'Low German; Low Saxon; German, Low; Saxon, Low',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6577','nep','nep','ne','Nepali','Indian',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6578','new','new',NULL,'Newari',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6579','nia','nia',NULL,'Nias',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6580','nic','nic',NULL,'Niger-Kordofanian (Other)',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6581','niu','niu',NULL,'Niuean',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6582','nld','dut','nl','Dutch','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6583','nno','nno','nn','Norwegian Nynorsk',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6584','nob','nob','nb','Norwegian Bokmål',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6585','non','non',NULL,'Norse, Old',NULL,NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6586','nor','nor','no','Norwegian','Germanic',NULL,'2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04','2017-10-22 00:56:04'),('6587','nso','nso',NULL,'Sotho, Northern',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6588','nub','nub',NULL,'Nubian languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6589','nya','nya','ny','Chichewa; Nyanja',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6590','nym','nym',NULL,'Nyamwezi',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6591','nyn','nyn',NULL,'Nyankole',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6592','nyo','nyo',NULL,'Nyoro',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6593','nzi','nzi',NULL,'Nzima',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6594','oci','oci','oc','Occitan (post 1500); Provençal','Romance',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6595','oji','oji',NULL,'Ojibwa',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6596','ori','ori','or','Oriya','Indian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6597','orm','orm','om','Oromo','Hamitic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6598','osa','osa',NULL,'Osage',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6599','oss','oss','os','Ossetian; Ossetic',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6600','ota','ota',NULL,'Turkish, Ottoman (1500-1928)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6601','oto','oto',NULL,'Otomian languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6602','paa','paa',NULL,'Papuan (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6603','pag','pag',NULL,'Pangasinan',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6604','pal','pal',NULL,'Pahlavi',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6605','pam','pam',NULL,'Pampanga',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6606','pan','pan','pa','Panjabi','Indian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6607','pap','pap',NULL,'Papiamento',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6608','pau','pau',NULL,'Palauan',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6609','peo','peo',NULL,'Persian, Old (ca. 600-400 b.c.)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6610','phi','phi',NULL,'Philippine (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6611','pli','pli','pi','Pali',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6612','pol','pol','pl','Polish','Slavic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6613','pon','pon',NULL,'Pohnpeian',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6614','por','por','pt','Portuguese','Romance',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6615','pra','pra',NULL,'Prakrit languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6616','pro','pro',NULL,'Provençal, Old (to 1500)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6617','pus','pus','ps','Pushto','Iranian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6618','que','que','qu','Quechua','Amerindian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6619','raj','raj',NULL,'Rajasthani',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6620','rap','rap',NULL,'Rapanui',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6621','rar','rar',NULL,'Rarotongan',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6622','roa','roa',NULL,'Romance (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6623','rom','rom',NULL,'Romany',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6624','ron','rum','ro','Romanian','Romance',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6625','run','run','rn','Rundi','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6626','rus','rus','ru','Russian','Slavic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6627','sad','sad',NULL,'Sandawe',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6628','sag','sag','sg','Sango','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6629','sah','sah',NULL,'Yakut',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6630','sai','sai',NULL,'South American Indian (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6631','sal','sal',NULL,'Salishan languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6632','sam','sam',NULL,'Samaritan Aramaic',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6633','san','san','sa','Sanskrit','Indian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6634','sas','sas',NULL,'Sasak',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6635','sat','sat',NULL,'Santali',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6636','sco','sco',NULL,'Scots',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6637','sel','sel',NULL,'Selkup',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6638','sem','sem',NULL,'Semitic (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6639','sga','sga',NULL,'Irish, Old (to 900)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6640','sgn','sgn',NULL,'Sign Languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6641','shn','shn',NULL,'Shan',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6642','sid','sid',NULL,'Sidamo',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6643','sin','sin','si','Sinhalese','Indian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6644','sio','sio',NULL,'Siouan languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6645','sit','sit',NULL,'Sino-Tibetan (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6646','sla','sla',NULL,'Slavic (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6647','slk','slo','sk','Slovak','Slavic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6648','slv','slv','sl','Slovenian','Slavic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6649','sme','sme','se','Northern Sami',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6650','smi','smi',NULL,'Sami languages (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6651','smo','smo','sm','Samoan','Oceanic/indonesian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6652','sna','sna','sn','Shona','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6653','snd','snd','sd','Sindhi','Indian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6654','snk','snk',NULL,'Soninke',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6655','sog','sog',NULL,'Sogdian',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6656','som','som','so','Somali','Hamitic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6657','son','son',NULL,'Songhai',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6658','sot','sot','st','Sotho, Southern','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6659','spa','spa','es','Spanish','Romance',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6660','sqi','alb','sq','Albanian','Indo-european (other)',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6661','srd','srd','sc','Sardinian',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6662','srp','scc','sr','Serbian','Slavic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6663','srr','srr',NULL,'Serer',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6664','ssa','ssa',NULL,'Nilo-Saharan (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6665','ssw','ssw','ss','Swati','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6666','suk','suk',NULL,'Sukuma',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6667','sun','sun','su','Sundanese','Oceanic/indonesian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6668','sus','sus',NULL,'Susu',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6669','sux','sux',NULL,'Sumerian',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6670','swa','swa','sw','Swahili','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6671','swe','swe','sv','Swedish','Germanic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6672','syr','syr',NULL,'Syriac',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6673','tah','tah','ty','Tahitian',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6674','tai','tai',NULL,'Tai (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6675','tam','tam','ta','Tamil','Dravidian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6676','tat','tat','tt','Tatar','Turkic/altaic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6677','tel','tel','te','Telugu','Dravidian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6678','tem','tem',NULL,'Timne',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6679','ter','ter',NULL,'Tereno',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6680','tet','tet',NULL,'Tetum',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6681','tgk','tgk','tg','Tajik','Iranian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6682','tgl','tgl','tl','Tagalog','Oceanic/indonesian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6683','tha','tha','th','Thai','Asian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6684','tig','tig',NULL,'Tigre',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6685','tir','tir','ti','Tigrinya','Semitic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6686','tiv','tiv',NULL,'Tiv',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6687','tkl','tkl',NULL,'Tokelau',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6688','tli','tli',NULL,'Tlingit',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6689','tmh','tmh',NULL,'Tamashek',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6690','tog','tog',NULL,'Tonga (Nyasa)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6691','ton','ton','to','Tonga (Tonga Islands)','Oceanic/indonesian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6692','tpi','tpi',NULL,'Tok Pisin',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6693','tsi','tsi',NULL,'Tsimshian',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6694','tsn','tsn','tn','Tswana','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6695','tso','tso','ts','Tsonga','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6696','tuk','tuk','tk','Turkmen','Turkic/altaic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6697','tum','tum',NULL,'Tumbuka',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6698','tur','tur','tr','Turkish','Turkic/altaic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6699','tut','tut',NULL,'Altaic (Other)',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6700','tvl','tvl',NULL,'Tuvalu',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6701','twi','twi','tw','Twi','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6702','tyv','tyv',NULL,'Tuvinian',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6703','uga','uga',NULL,'Ugaritic',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6704','uig','uig','ug','Uighur',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6705','ukr','ukr','uk','Ukrainian','Slavic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6706','umb','umb',NULL,'Umbundu',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6707','und','und',NULL,'Undetermined',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6708','urd','urd','ur','Urdu','Indian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6709','uzb','uzb','uz','Uzbek','Turkic/altaic',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6710','vai','vai',NULL,'Vai',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6711','ven','ven',NULL,'Venda',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6712','vie','vie','vi','Vietnamese','Asian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6713','vol','vol','vo','Volapük','International aux.',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6714','vot','vot',NULL,'Votic',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6715','wak','wak',NULL,'Wakashan languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6716','wal','wal',NULL,'Walamo',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6717','war','war',NULL,'Waray',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6718','was','was',NULL,'Washo',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6719','wen','wen',NULL,'Sorbian languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6720','wol','wol','wo','Wolof','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6721','xho','xho','xh','Xhosa','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6722','yao','yao',NULL,'Yao',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6723','yap','yap',NULL,'Yapese',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6724','yid','yid','yi','Yiddish',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6725','yor','yor','yo','Yoruba','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6726','ypk','ypk',NULL,'Yupik languages',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6727','zap','zap',NULL,'Zapotec',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6728','zen','zen',NULL,'Zenaga',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6729','zha','zha','za','Zhuang',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6730','zho','chi','zh','Chinese','Asian',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6731','znd','znd',NULL,'Zande',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6732','zul','zul','zu','Zulu','Negro-african',NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04'),('6733','zun','zun',NULL,'Zuni',NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:04','2017-10-22 00:56:05','2017-10-22 00:56:04');
/*!40000 ALTER TABLE `standard_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standard_time_period`
--

DROP TABLE IF EXISTS `standard_time_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standard_time_period` (
  `STANDARD_TIME_PERIOD_ID` varchar(20) NOT NULL,
  `PERIOD_TYPE_ID` varchar(20) DEFAULT NULL,
  `FROM_DATE` datetime DEFAULT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`STANDARD_TIME_PERIOD_ID`),
  KEY `STD_TM_PER_TYPE` (`PERIOD_TYPE_ID`),
  KEY `STNDD_TM_PRD_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `STNDD_TM_PRD_TXCRS` (`CREATED_TX_STAMP`),
  CONSTRAINT `STD_TM_PER_TYPE` FOREIGN KEY (`PERIOD_TYPE_ID`) REFERENCES `period_type` (`PERIOD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standard_time_period`
--

LOCK TABLES `standard_time_period` WRITE;
/*!40000 ALTER TABLE `standard_time_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `standard_time_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_item`
--

DROP TABLE IF EXISTS `status_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_item` (
  `STATUS_ID` varchar(20) NOT NULL,
  `STATUS_TYPE_ID` varchar(20) DEFAULT NULL,
  `STATUS_CODE` varchar(60) DEFAULT NULL,
  `SEQUENCE_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`STATUS_ID`),
  KEY `STATUS_TO_TYPE` (`STATUS_TYPE_ID`),
  KEY `STATUS_ITEM_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `STATUS_ITEM_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `STATUS_TO_TYPE` FOREIGN KEY (`STATUS_TYPE_ID`) REFERENCES `status_type` (`STATUS_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_item`
--

LOCK TABLES `status_item` WRITE;
/*!40000 ALTER TABLE `status_item` DISABLE KEYS */;
INSERT INTO `status_item` VALUES ('CAST_APPROVED','CMS_ARTICLE_STATUS','APPROVED','03','审核通过','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CAST_CANCELLED','CMS_ARTICLE_STATUS','CANCELLED','04','作废单据','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CAST_DEFINED','CMS_ARTICLE_STATUS','DEFINED','02','等待审核','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CCAS_APPROVED','CMS_ACCESSORY_STATUS','APPROVED','12','审核通过','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CCAS_CANCELLED','CMS_ACCESSORY_STATUS','CANCELLED','13','审核作废','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CCAS_DEFINED','CMS_ACCESSORY_STATUS','DEFINED','11','等待审核','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CLST_APPROVED','CMS_LEAVEWORD_STATUS','APPROVED','09','审核通过','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CLST_CANCELLED','CMS_LEAVEWORD_STATUS','CANCELLED','10','审核作废','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CLST_DEFINED','CMS_LEAVEWORD_STATUS','DEFINED','08','等待审核','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('ESR_COMPLETE','ENTSYNC_RUN','COMPLETE','04','Complete','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ESR_DATA_ERROR','ENTSYNC_RUN','DATA_ERROR','99','Data Error','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ESR_NOT_STARTED','ENTSYNC_RUN','NOT_STARTED','01','Not Started','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ESR_OTHER_ERROR','ENTSYNC_RUN','OTHER_ERROR','97','Other Error','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ESR_PENDING','ENTSYNC_RUN','PENDING','03','Offline Pending','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ESR_RUNNING','ENTSYNC_RUN','RUNNING','02','Running','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ESR_SERVICE_ERROR','ENTSYNC_RUN','SERVICE_ERROR','98','Service Call Error','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('NOT_SYNCHRONIZED','SYNCHRONIZE_STATUS','NOT_SYNCHRONIZED','01','Not-Synchronized','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('SERVICE_CANCELLED','SERVICE_STATUS','CANCELLED','99','Cancelled','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SERVICE_CRASHED','SERVICE_STATUS','CRASHED','40','Crashed','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SERVICE_FAILED','SERVICE_STATUS','FAILED','20','Failed','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SERVICE_FINISHED','SERVICE_STATUS','FINISHED','10','Finished','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SERVICE_PENDING','SERVICE_STATUS','PENDING','01','Pending','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SERVICE_QUEUED','SERVICE_STATUS','QUEUED','02','Queued','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SERVICE_RUNNING','SERVICE_STATUS','RUNNING','05','Running','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SYNCHRONIZED','SYNCHRONIZE_STATUS','SYNCHRONIZED','02','Synchronized','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VOTE_DRAFT','VOTE_STATUS','DRAFT','01','草稿','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('VOTE_OUTDATE','VOTE_STATUS','OUTDATE','03','过期','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('VOTE_RUNNING','VOTE_STATUS','RUNNING','02','正在进行','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('_NA_','_NA_','_NA_','0','Not Applicable','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `status_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_type`
--

DROP TABLE IF EXISTS `status_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_type` (
  `STATUS_TYPE_ID` varchar(20) NOT NULL,
  `PARENT_TYPE_ID` varchar(20) DEFAULT NULL,
  `HAS_TABLE` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`STATUS_TYPE_ID`),
  KEY `STATUS_TYPE_PARENT` (`PARENT_TYPE_ID`),
  KEY `STATUS_TYPE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `STATUS_TYPE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `STATUS_TYPE_PARENT` FOREIGN KEY (`PARENT_TYPE_ID`) REFERENCES `status_type` (`STATUS_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_type`
--

LOCK TABLES `status_type` WRITE;
/*!40000 ALTER TABLE `status_type` DISABLE KEYS */;
INSERT INTO `status_type` VALUES ('CMS_ACCESSORY_STATUS',NULL,'N','CmsAccessoryStatusItem','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMS_ARTICLE_STATUS',NULL,'N','CmsArticleStatusItem','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CMS_LEAVEWORD_STATUS',NULL,'N','CmsLeavewordStatusItem','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('ENTSYNC_RUN',NULL,'N','Entity Sync Run','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('SERVICE_STATUS',NULL,'N','Scheduled Service','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('SYNCHRONIZE_STATUS',NULL,'N','Synchronize','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VOTE_STATUS',NULL,'N','Vote Status Item','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('_NA_',NULL,NULL,'Not Applicable','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `status_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_valid_change`
--

DROP TABLE IF EXISTS `status_valid_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_valid_change` (
  `STATUS_ID` varchar(20) NOT NULL,
  `STATUS_ID_TO` varchar(20) NOT NULL,
  `CONDITION_EXPRESSION` varchar(255) DEFAULT NULL,
  `TRANSITION_NAME` varchar(100) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`STATUS_ID`,`STATUS_ID_TO`),
  KEY `STATUS_CHG_MAIN` (`STATUS_ID`),
  KEY `STATUS_CHG_TO` (`STATUS_ID_TO`),
  KEY `STS_VLD_CHG_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `STS_VLD_CHG_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `STATUS_CHG_MAIN` FOREIGN KEY (`STATUS_ID`) REFERENCES `status_item` (`STATUS_ID`),
  CONSTRAINT `STATUS_CHG_TO` FOREIGN KEY (`STATUS_ID_TO`) REFERENCES `status_item` (`STATUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_valid_change`
--

LOCK TABLES `status_valid_change` WRITE;
/*!40000 ALTER TABLE `status_valid_change` DISABLE KEYS */;
INSERT INTO `status_valid_change` VALUES ('CAST_APPROVED','CAST_CANCELLED',NULL,'Cancel','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CAST_DEFINED','CAST_APPROVED',NULL,'Approve','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('CAST_DEFINED','CAST_CANCELLED',NULL,'Cancel','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('VOTE_DRAFT','VOTE_RUNNING',NULL,'StartVote','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('VOTE_RUNNING','VOTE_OUTDATE',NULL,'EndVote','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08');
/*!40000 ALTER TABLE `status_valid_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarpitted_login_view`
--

DROP TABLE IF EXISTS `tarpitted_login_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarpitted_login_view` (
  `VIEW_NAME_ID` varchar(60) NOT NULL,
  `USER_LOGIN_ID` varchar(20) NOT NULL,
  `TARPIT_RELEASE_DATE_TIME` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`VIEW_NAME_ID`,`USER_LOGIN_ID`),
  KEY `TRPTD_LGN_VW_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TRPTD_LGN_VW_TXCRS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarpitted_login_view`
--

LOCK TABLES `tarpitted_login_view` WRITE;
/*!40000 ALTER TABLE `tarpitted_login_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarpitted_login_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporal_expression`
--

DROP TABLE IF EXISTS `temporal_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporal_expression` (
  `TEMP_EXPR_ID` varchar(20) NOT NULL,
  `TEMP_EXPR_TYPE_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DATE1` datetime DEFAULT NULL,
  `DATE2` datetime DEFAULT NULL,
  `INTEGER1` decimal(20,0) DEFAULT NULL,
  `INTEGER2` decimal(20,0) DEFAULT NULL,
  `STRING1` varchar(20) DEFAULT NULL,
  `STRING2` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TEMP_EXPR_ID`),
  KEY `TMPL_EXPRSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TMPL_EXPRSN_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporal_expression`
--

LOCK TABLES `temporal_expression` WRITE;
/*!40000 ALTER TABLE `temporal_expression` DISABLE KEYS */;
INSERT INTO `temporal_expression` VALUES ('1ST_AND_15TH_MONTH','UNION','First and Fifteenth of the month',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('1ST_MONDAY_IN_MONTH','DAY_IN_MONTH','First Monday in Month',NULL,NULL,2,1,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('2ND_MONDAY_IN_MONTH','DAY_IN_MONTH','Second Monday in Month',NULL,NULL,2,2,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('3RD_MONDAY_IN_MONTH','DAY_IN_MONTH','Third Monday in Month',NULL,NULL,2,3,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('4TH_MONDAY_IN_MONTH','DAY_IN_MONTH','Fourth Monday in Month',NULL,NULL,2,4,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('4TH_THURS_IN_MONTH','DAY_IN_MONTH','Fourth Thursday in Month',NULL,NULL,5,4,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('5PM_BIMONDAY','FREQUENCY','Every Other Monday at 5pm','2000-01-03 17:00:00',NULL,5,14,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('CHRISTMAS_DAY','INTERSECTION','Christmas Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('COLUMBUS_DAY','INTERSECTION','Columbus Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAILY_GRIND','INTERSECTION','Monday to Friday at 8am without US Federal Holidays',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_01','DAY_OF_MONTH_RANGE','Day 1 of Month',NULL,NULL,1,1,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_02','DAY_OF_MONTH_RANGE','Day 2 of Month',NULL,NULL,2,2,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_03','DAY_OF_MONTH_RANGE','Day 3 of Month',NULL,NULL,3,3,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_04','DAY_OF_MONTH_RANGE','Day 4 of Month',NULL,NULL,4,4,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_05','DAY_OF_MONTH_RANGE','Day 5 of Month',NULL,NULL,5,5,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_06','DAY_OF_MONTH_RANGE','Day 6 of Month',NULL,NULL,6,6,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_07','DAY_OF_MONTH_RANGE','Day 7 of Month',NULL,NULL,7,7,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_08','DAY_OF_MONTH_RANGE','Day 8 of Month',NULL,NULL,8,8,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_09','DAY_OF_MONTH_RANGE','Day 9 of Month',NULL,NULL,9,9,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_10','DAY_OF_MONTH_RANGE','Day 10 of Month',NULL,NULL,10,10,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_11','DAY_OF_MONTH_RANGE','Day 11 of Month',NULL,NULL,11,11,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_12','DAY_OF_MONTH_RANGE','Day 12 of Month',NULL,NULL,12,12,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_13','DAY_OF_MONTH_RANGE','Day 13 of Month',NULL,NULL,13,13,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_14','DAY_OF_MONTH_RANGE','Day 14 of Month',NULL,NULL,14,14,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_15','DAY_OF_MONTH_RANGE','Day 15 of Month',NULL,NULL,15,15,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_16','DAY_OF_MONTH_RANGE','Day 16 of Month',NULL,NULL,16,16,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_17','DAY_OF_MONTH_RANGE','Day 17 of Month',NULL,NULL,17,17,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_18','DAY_OF_MONTH_RANGE','Day 18 of Month',NULL,NULL,18,18,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_19','DAY_OF_MONTH_RANGE','Day 19 of Month',NULL,NULL,19,19,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_20','DAY_OF_MONTH_RANGE','Day 20 of Month',NULL,NULL,20,20,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_21','DAY_OF_MONTH_RANGE','Day 21 of Month',NULL,NULL,21,21,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_22','DAY_OF_MONTH_RANGE','Day 22 of Month',NULL,NULL,22,22,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_23','DAY_OF_MONTH_RANGE','Day 23 of Month',NULL,NULL,23,23,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_24','DAY_OF_MONTH_RANGE','Day 24 of Month',NULL,NULL,24,24,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_25','DAY_OF_MONTH_RANGE','Day 25 of Month',NULL,NULL,25,25,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_26','DAY_OF_MONTH_RANGE','Day 26 of Month',NULL,NULL,26,26,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_27','DAY_OF_MONTH_RANGE','Day 27 of Month',NULL,NULL,27,27,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_28','DAY_OF_MONTH_RANGE','Day 28 of Month',NULL,NULL,28,28,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_29','DAY_OF_MONTH_RANGE','Day 29 of Month',NULL,NULL,29,29,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_30','DAY_OF_MONTH_RANGE','Day 30 of Month',NULL,NULL,30,30,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFMONTH_31','DAY_OF_MONTH_RANGE','Day 31 of Month',NULL,NULL,31,31,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFWEEK_01','DAY_OF_WEEK_RANGE','Sunday',NULL,NULL,1,1,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFWEEK_02','DAY_OF_WEEK_RANGE','Monday',NULL,NULL,2,2,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFWEEK_03','DAY_OF_WEEK_RANGE','Tuesday',NULL,NULL,3,3,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFWEEK_04','DAY_OF_WEEK_RANGE','Wednesday',NULL,NULL,4,4,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFWEEK_05','DAY_OF_WEEK_RANGE','Thursday',NULL,NULL,5,5,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFWEEK_06','DAY_OF_WEEK_RANGE','Friday',NULL,NULL,6,6,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAYOFWEEK_07','DAY_OF_WEEK_RANGE','Saturday',NULL,NULL,7,7,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('GOVT_WORK_SCHED','DIFFERENCE','Monday to Friday without US Federal Holidays',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_00','HOUR_RANGE','Hour 0',NULL,NULL,0,0,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_01','HOUR_RANGE','Hour 1',NULL,NULL,1,1,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_02','HOUR_RANGE','Hour 2',NULL,NULL,2,2,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_03','HOUR_RANGE','Hour 3',NULL,NULL,3,3,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_04','HOUR_RANGE','Hour 4',NULL,NULL,4,4,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_05','HOUR_RANGE','Hour 5',NULL,NULL,5,5,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_06','HOUR_RANGE','Hour 6',NULL,NULL,6,6,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_07','HOUR_RANGE','Hour 7',NULL,NULL,7,7,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_08','HOUR_RANGE','Hour 8',NULL,NULL,8,8,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_09','HOUR_RANGE','Hour 9',NULL,NULL,9,9,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_10','HOUR_RANGE','Hour 10',NULL,NULL,10,10,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_11','HOUR_RANGE','Hour 11',NULL,NULL,11,11,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_12','HOUR_RANGE','Hour 12',NULL,NULL,12,12,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_13','HOUR_RANGE','Hour 13',NULL,NULL,13,13,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_14','HOUR_RANGE','Hour 14',NULL,NULL,14,14,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_15','HOUR_RANGE','Hour 15',NULL,NULL,15,15,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_16','HOUR_RANGE','Hour 16',NULL,NULL,16,16,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_17','HOUR_RANGE','Hour 17',NULL,NULL,17,17,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_18','HOUR_RANGE','Hour 18',NULL,NULL,18,18,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_19','HOUR_RANGE','Hour 19',NULL,NULL,19,19,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_20','HOUR_RANGE','Hour 20',NULL,NULL,20,20,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_21','HOUR_RANGE','Hour 21',NULL,NULL,21,21,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_22','HOUR_RANGE','Hour 22',NULL,NULL,22,22,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('HOUR_23','HOUR_RANGE','Hour 23',NULL,NULL,23,23,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('INDEPENDENCE_DAY','INTERSECTION','Independence Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('JANUARY_FIRST','INTERSECTION','January First',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('LABOR_DAY','INTERSECTION','Labor Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('LAST_MONDAY_IN_MONTH','DAY_IN_MONTH','Last Monday in Month',NULL,NULL,2,-1,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MEMORIAL_DAY','INTERSECTION','Memorial Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MIDNIGHT_DAILY','FREQUENCY','Daily Midnight','2000-01-01 00:00:00',NULL,5,1,NULL,NULL,'2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08','2017-10-22 00:56:08'),('MINUTE_00','MINUTE_RANGE','Minute 0',NULL,NULL,0,0,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_01','MINUTE_RANGE','Minute 1',NULL,NULL,1,1,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_02','MINUTE_RANGE','Minute 2',NULL,NULL,2,2,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_03','MINUTE_RANGE','Minute 3',NULL,NULL,3,3,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_04','MINUTE_RANGE','Minute 4',NULL,NULL,4,4,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_05','MINUTE_RANGE','Minute 5',NULL,NULL,5,5,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_06','MINUTE_RANGE','Minute 6',NULL,NULL,6,6,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_07','MINUTE_RANGE','Minute 7',NULL,NULL,7,7,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_08','MINUTE_RANGE','Minute 8',NULL,NULL,8,8,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_09','MINUTE_RANGE','Minute 9',NULL,NULL,9,9,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_10','MINUTE_RANGE','Minute 10',NULL,NULL,10,10,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_11','MINUTE_RANGE','Minute 11',NULL,NULL,11,11,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_12','MINUTE_RANGE','Minute 12',NULL,NULL,12,12,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_13','MINUTE_RANGE','Minute 13',NULL,NULL,13,13,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_14','MINUTE_RANGE','Minute 14',NULL,NULL,14,14,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_15','MINUTE_RANGE','Minute 15',NULL,NULL,15,15,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_16','MINUTE_RANGE','Minute 16',NULL,NULL,16,16,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_17','MINUTE_RANGE','Minute 17',NULL,NULL,17,17,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_18','MINUTE_RANGE','Minute 18',NULL,NULL,18,18,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_19','MINUTE_RANGE','Minute 19',NULL,NULL,19,19,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_20','MINUTE_RANGE','Minute 20',NULL,NULL,20,20,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_21','MINUTE_RANGE','Minute 21',NULL,NULL,21,21,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_22','MINUTE_RANGE','Minute 22',NULL,NULL,22,22,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_23','MINUTE_RANGE','Minute 23',NULL,NULL,23,23,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_24','MINUTE_RANGE','Minute 24',NULL,NULL,24,24,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_25','MINUTE_RANGE','Minute 25',NULL,NULL,25,25,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_26','MINUTE_RANGE','Minute 26',NULL,NULL,26,26,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_27','MINUTE_RANGE','Minute 27',NULL,NULL,27,27,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_28','MINUTE_RANGE','Minute 28',NULL,NULL,28,28,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_29','MINUTE_RANGE','Minute 29',NULL,NULL,29,29,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_30','MINUTE_RANGE','Minute 30',NULL,NULL,30,30,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_31','MINUTE_RANGE','Minute 31',NULL,NULL,31,31,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_32','MINUTE_RANGE','Minute 32',NULL,NULL,32,32,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_33','MINUTE_RANGE','Minute 33',NULL,NULL,33,33,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_34','MINUTE_RANGE','Minute 34',NULL,NULL,34,34,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_35','MINUTE_RANGE','Minute 35',NULL,NULL,35,35,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_36','MINUTE_RANGE','Minute 36',NULL,NULL,36,36,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_37','MINUTE_RANGE','Minute 37',NULL,NULL,37,37,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_38','MINUTE_RANGE','Minute 38',NULL,NULL,38,38,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_39','MINUTE_RANGE','Minute 39',NULL,NULL,39,39,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_40','MINUTE_RANGE','Minute 40',NULL,NULL,40,40,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_41','MINUTE_RANGE','Minute 41',NULL,NULL,41,41,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_42','MINUTE_RANGE','Minute 42',NULL,NULL,42,42,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_43','MINUTE_RANGE','Minute 43',NULL,NULL,43,43,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_44','MINUTE_RANGE','Minute 44',NULL,NULL,44,44,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_45','MINUTE_RANGE','Minute 45',NULL,NULL,45,45,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_46','MINUTE_RANGE','Minute 46',NULL,NULL,46,46,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_47','MINUTE_RANGE','Minute 47',NULL,NULL,47,47,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_48','MINUTE_RANGE','Minute 48',NULL,NULL,48,48,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_49','MINUTE_RANGE','Minute 49',NULL,NULL,49,49,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_50','MINUTE_RANGE','Minute 50',NULL,NULL,50,50,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_51','MINUTE_RANGE','Minute 51',NULL,NULL,51,51,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_52','MINUTE_RANGE','Minute 52',NULL,NULL,52,52,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_53','MINUTE_RANGE','Minute 53',NULL,NULL,53,53,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_54','MINUTE_RANGE','Minute 54',NULL,NULL,54,54,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_55','MINUTE_RANGE','Minute 55',NULL,NULL,55,55,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_56','MINUTE_RANGE','Minute 56',NULL,NULL,56,56,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_57','MINUTE_RANGE','Minute 57',NULL,NULL,57,57,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_58','MINUTE_RANGE','Minute 58',NULL,NULL,58,58,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MINUTE_59','MINUTE_RANGE','Minute 59',NULL,NULL,59,59,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MLK_DAY','INTERSECTION','Martin Luther King Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_01','MONTH_RANGE','January',NULL,NULL,0,0,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_02','MONTH_RANGE','February',NULL,NULL,1,1,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_03','MONTH_RANGE','March',NULL,NULL,2,2,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_04','MONTH_RANGE','April',NULL,NULL,3,3,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_05','MONTH_RANGE','May',NULL,NULL,4,4,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_06','MONTH_RANGE','June',NULL,NULL,5,5,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_07','MONTH_RANGE','July',NULL,NULL,6,6,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_08','MONTH_RANGE','August',NULL,NULL,7,7,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_09','MONTH_RANGE','September',NULL,NULL,8,8,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_10','MONTH_RANGE','October',NULL,NULL,9,9,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_11','MONTH_RANGE','November',NULL,NULL,10,10,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_12','MONTH_RANGE','December',NULL,NULL,11,11,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MONTH_RANGE_13','MONTH_RANGE','Undecimber',NULL,NULL,12,12,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MON_TO_FRI','DAY_OF_WEEK_RANGE','Monday to Friday',NULL,NULL,2,6,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('PRESIDENTS_DAY','INTERSECTION','Presidents Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('SAT_TO_SUN','DAY_OF_WEEK_RANGE','Saturday to Sunday',NULL,NULL,7,1,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('THANKSGIVING_DAY','INTERSECTION','Thanksgiving Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','UNION','US Federal Holidays',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('VETERANS_DAY','INTERSECTION','Veterans Day',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `temporal_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporal_expression_assoc`
--

DROP TABLE IF EXISTS `temporal_expression_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporal_expression_assoc` (
  `FROM_TEMP_EXPR_ID` varchar(20) NOT NULL,
  `TO_TEMP_EXPR_ID` varchar(20) NOT NULL,
  `EXPR_ASSOC_TYPE` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`FROM_TEMP_EXPR_ID`,`TO_TEMP_EXPR_ID`),
  KEY `TEMP_EXPR_FROM` (`FROM_TEMP_EXPR_ID`),
  KEY `TEMP_EXPR_TO` (`TO_TEMP_EXPR_ID`),
  KEY `TML_EXPRN_ASC_TXSP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TML_EXPRN_ASC_TXCS` (`CREATED_TX_STAMP`),
  CONSTRAINT `TEMP_EXPR_FROM` FOREIGN KEY (`FROM_TEMP_EXPR_ID`) REFERENCES `temporal_expression` (`TEMP_EXPR_ID`),
  CONSTRAINT `TEMP_EXPR_TO` FOREIGN KEY (`TO_TEMP_EXPR_ID`) REFERENCES `temporal_expression` (`TEMP_EXPR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporal_expression_assoc`
--

LOCK TABLES `temporal_expression_assoc` WRITE;
/*!40000 ALTER TABLE `temporal_expression_assoc` DISABLE KEYS */;
INSERT INTO `temporal_expression_assoc` VALUES ('1ST_AND_15TH_MONTH','DAYOFMONTH_01',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('1ST_AND_15TH_MONTH','DAYOFMONTH_15',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('CHRISTMAS_DAY','DAYOFMONTH_25',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('CHRISTMAS_DAY','MONTH_RANGE_12',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('COLUMBUS_DAY','2ND_MONDAY_IN_MONTH',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('COLUMBUS_DAY','MONTH_RANGE_10',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAILY_GRIND','GOVT_WORK_SCHED',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DAILY_GRIND','HOUR_08',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('GOVT_WORK_SCHED','MON_TO_FRI','INCLUDE','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('GOVT_WORK_SCHED','US_FED_HOLIDAYS','EXCLUDE','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('INDEPENDENCE_DAY','DAYOFMONTH_04',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('INDEPENDENCE_DAY','MONTH_RANGE_07',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('JANUARY_FIRST','DAYOFMONTH_01',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('JANUARY_FIRST','MONTH_RANGE_01',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('LABOR_DAY','1ST_MONDAY_IN_MONTH',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('LABOR_DAY','MONTH_RANGE_09',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MEMORIAL_DAY','LAST_MONDAY_IN_MONTH',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MEMORIAL_DAY','MONTH_RANGE_05',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MLK_DAY','3RD_MONDAY_IN_MONTH',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('MLK_DAY','MONTH_RANGE_01',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('PRESIDENTS_DAY','3RD_MONDAY_IN_MONTH',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('PRESIDENTS_DAY','MONTH_RANGE_02',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('THANKSGIVING_DAY','4TH_THURS_IN_MONTH',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('THANKSGIVING_DAY','MONTH_RANGE_11',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','CHRISTMAS_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','COLUMBUS_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','INDEPENDENCE_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','JANUARY_FIRST',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','LABOR_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','MEMORIAL_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','MLK_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','PRESIDENTS_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','THANKSGIVING_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('US_FED_HOLIDAYS','VETERANS_DAY',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('VETERANS_DAY','DAYOFMONTH_11',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('VETERANS_DAY','MONTH_RANGE_11',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `temporal_expression_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_blob`
--

DROP TABLE IF EXISTS `test_blob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_blob` (
  `TEST_BLOB_ID` varchar(20) NOT NULL,
  `TEST_BLOB_FIELD` longblob,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TEST_BLOB_ID`),
  KEY `TEST_BLOB_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TEST_BLOB_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_blob`
--

LOCK TABLES `test_blob` WRITE;
/*!40000 ALTER TABLE `test_blob` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_blob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_field_type`
--

DROP TABLE IF EXISTS `test_field_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_field_type` (
  `TEST_FIELD_TYPE_ID` varchar(20) NOT NULL,
  `BLOB_FIELD` longblob,
  `BYTE_ARRAY_FIELD` longblob,
  `OBJECT_FIELD` longblob,
  `DATE_FIELD` date DEFAULT NULL,
  `TIME_FIELD` time DEFAULT NULL,
  `DATE_TIME_FIELD` datetime DEFAULT NULL,
  `FIXED_POINT_FIELD` decimal(18,6) DEFAULT NULL,
  `FLOATING_POINT_FIELD` double DEFAULT NULL,
  `NUMERIC_FIELD` decimal(20,0) DEFAULT NULL,
  `CLOB_FIELD` longtext,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TEST_FIELD_TYPE_ID`),
  KEY `TST_FLD_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TST_FLD_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_field_type`
--

LOCK TABLES `test_field_type` WRITE;
/*!40000 ALTER TABLE `test_field_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_field_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testing`
--

DROP TABLE IF EXISTS `testing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testing` (
  `TESTING_ID` varchar(20) NOT NULL,
  `TESTING_TYPE_ID` varchar(20) DEFAULT NULL,
  `TESTING_NAME` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TESTING_SIZE` decimal(20,0) DEFAULT NULL,
  `TESTING_DATE` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TESTING_ID`),
  KEY `ENTITY_ENTY_TYP` (`TESTING_TYPE_ID`),
  KEY `TESTING_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TESTING_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `ENTITY_ENTY_TYP` FOREIGN KEY (`TESTING_TYPE_ID`) REFERENCES `testing_type` (`TESTING_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing`
--

LOCK TABLES `testing` WRITE;
/*!40000 ALTER TABLE `testing` DISABLE KEYS */;
/*!40000 ALTER TABLE `testing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testing_node`
--

DROP TABLE IF EXISTS `testing_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testing_node` (
  `TESTING_NODE_ID` varchar(20) NOT NULL,
  `PRIMARY_PARENT_NODE_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TESTING_NODE_ID`),
  KEY `TESTNG_NDE_PARNT` (`PRIMARY_PARENT_NODE_ID`),
  KEY `TSTNG_ND_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TSTNG_ND_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `TESTNG_NDE_PARNT` FOREIGN KEY (`PRIMARY_PARENT_NODE_ID`) REFERENCES `testing_node` (`TESTING_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing_node`
--

LOCK TABLES `testing_node` WRITE;
/*!40000 ALTER TABLE `testing_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `testing_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testing_node_member`
--

DROP TABLE IF EXISTS `testing_node_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testing_node_member` (
  `TESTING_NODE_ID` varchar(20) NOT NULL,
  `TESTING_ID` varchar(20) NOT NULL,
  `FROM_DATE` datetime NOT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TESTING_NODE_ID`,`TESTING_ID`,`FROM_DATE`),
  KEY `TESTING_NMBR_TEST` (`TESTING_ID`),
  KEY `TEST_NMBR_NODE` (`TESTING_NODE_ID`),
  KEY `TSTG_ND_MMR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TSTG_ND_MMR_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `TESTING_NMBR_TEST` FOREIGN KEY (`TESTING_ID`) REFERENCES `testing` (`TESTING_ID`),
  CONSTRAINT `TEST_NMBR_NODE` FOREIGN KEY (`TESTING_NODE_ID`) REFERENCES `testing_node` (`TESTING_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing_node_member`
--

LOCK TABLES `testing_node_member` WRITE;
/*!40000 ALTER TABLE `testing_node_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `testing_node_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testing_type`
--

DROP TABLE IF EXISTS `testing_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testing_type` (
  `TESTING_TYPE_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TESTING_TYPE_ID`),
  KEY `TSTNG_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TSTNG_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testing_type`
--

LOCK TABLES `testing_type` WRITE;
/*!40000 ALTER TABLE `testing_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `testing_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom` (
  `UOM_ID` varchar(20) NOT NULL,
  `UOM_TYPE_ID` varchar(20) DEFAULT NULL,
  `ABBREVIATION` varchar(60) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`UOM_ID`),
  KEY `UOM_TO_TYPE` (`UOM_TYPE_ID`),
  KEY `UOM_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `UOM_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `UOM_TO_TYPE` FOREIGN KEY (`UOM_TYPE_ID`) REFERENCES `uom_type` (`UOM_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES ('ADP','CURRENCY_MEASURE','ADP','Andoran peseta','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AED','CURRENCY_MEASURE','AED','United Arab Emirates Dirham','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AFA','CURRENCY_MEASURE','AFA','Afghani','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ALL','CURRENCY_MEASURE','ALL','Albanian Lek','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AMD','CURRENCY_MEASURE','AMD','Armenian Dram','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ANG','CURRENCY_MEASURE','ANG','West Indian Guilder','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AOK','CURRENCY_MEASURE','AOK','Angolan Kwanza','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ARA','CURRENCY_MEASURE','ARA','Argentinian Austral','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AREA_A','AREA_MEASURE','a','Are','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_cm2','AREA_MEASURE','cm2','Square Centimeter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_ft2','AREA_MEASURE','ft2','Square Foot','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_ha','AREA_MEASURE','ha','Hectare','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_in2','AREA_MEASURE','in2','Square Inch','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_km2','AREA_MEASURE','km2','Square Kilometer','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_m2','AREA_MEASURE','m2','Square Meter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_mi2','AREA_MEASURE','mi2','Square Mile','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_mm2','AREA_MEASURE','mm2','Square Millimeter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_rd2','AREA_MEASURE','rd2','Square Rod','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_yd2','AREA_MEASURE','yd2','Square Yard','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('ARS','CURRENCY_MEASURE','ARS','Argentina Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AUD','CURRENCY_MEASURE','AUD','Australian Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AWG','CURRENCY_MEASURE','AWG','Aruban Guilder','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('AZM','CURRENCY_MEASURE','AZM','Azerbaijan Manat','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BAD','CURRENCY_MEASURE','BAD','Bosnia-Herzogovinian Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BBD','CURRENCY_MEASURE','BBD','Barbados Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BDT','CURRENCY_MEASURE','BDT','Bangladesh Taka','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BGN','CURRENCY_MEASURE','BGN','Bulgarian Lev','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BHD','CURRENCY_MEASURE','BHD','Bahrain Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BIF','CURRENCY_MEASURE','BIF','Burundi Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BMD','CURRENCY_MEASURE','BMD','Bermudan Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BND','CURRENCY_MEASURE','BND','Brunei Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BOB','CURRENCY_MEASURE','BOB','Bolivian Boliviano','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BRL','CURRENCY_MEASURE','BRL','Brazilian Real','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BRR','CURRENCY_MEASURE','BRR','Brazil','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BSD','CURRENCY_MEASURE','BSD','Bahaman Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BWP','CURRENCY_MEASURE','BWP','Botswana Pula','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BYR','CURRENCY_MEASURE','BYR','Belorussian Ruble','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('BZD','CURRENCY_MEASURE','BZD','Belize Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CAD','CURRENCY_MEASURE','CAD','Canadian Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CDP','CURRENCY_MEASURE','CDP','Santo Domiongo','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CHF','CURRENCY_MEASURE','CHF','Swiss Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CLP','CURRENCY_MEASURE','CLP','Chilean Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CNY','CURRENCY_MEASURE','CNY','China','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('COP','CURRENCY_MEASURE','COP','Colombian Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CRC','CURRENCY_MEASURE','CRC','Costa Rica Colon','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CUP','CURRENCY_MEASURE','CUP','Cuban Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CVE','CURRENCY_MEASURE','CVE','Cape Verde Escudo','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CYP','CURRENCY_MEASURE','CYP','Cyprus Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('CZK','CURRENCY_MEASURE','CZK','Czech Krona','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DATASPD_bps','DATASPD_MEASURE','bps','Bit-per-second of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATASPD_Gbps','DATASPD_MEASURE','Gbps','Gigabit-per-second of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATASPD_Kbps','DATASPD_MEASURE','Kbps','Kilobit-per-second of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATASPD_Mbps','DATASPD_MEASURE','Mbps','Megabit-per-second of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATASPD_Tbps','DATASPD_MEASURE','Tbps','Terabit-per-second of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_b','DATA_MEASURE','B','Byte of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_Gb','DATA_MEASURE','GB','Gigabyte of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_Kb','DATA_MEASURE','KB','Kilobyte of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_Mb','DATA_MEASURE','MB','Megabyte of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_PB','DATA_MEASURE','PB','Petabyte of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_Tb','DATA_MEASURE','TB','Terabyte of Data','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DJF','CURRENCY_MEASURE','DJF','Djibouti Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DKK','CURRENCY_MEASURE','DKK','Danish Krone','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DOP','CURRENCY_MEASURE','DOP','Dominican Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DRP','CURRENCY_MEASURE','DRP','Dominican Republic Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('DZD','CURRENCY_MEASURE','DZD','Algerian Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ECS','CURRENCY_MEASURE','ECS','Ecuador Sucre','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('EEK','CURRENCY_MEASURE','EEK','Estonian Krone','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('EGP','CURRENCY_MEASURE','EGP','Egyptian Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('EN_Btu','ENERGY_MEASURE','Btu','British Thermal Unit','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_cal15','ENERGY_MEASURE','cal15','Calorie (@15.5c)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_HP','ENERGY_MEASURE','HP','Horsepower (mechanical)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_J','ENERGY_MEASURE','J','Joule (absolute)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_Kw','ENERGY_MEASURE','Kw','Kilowatt','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_w','ENERGY_MEASURE','w','Watt','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('ETB','CURRENCY_MEASURE','ETB','Ethiopian Birr','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('EUR','CURRENCY_MEASURE','EUR','Euro','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('FJD','CURRENCY_MEASURE','FJD','Fiji Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('FKP','CURRENCY_MEASURE','FKP','Falkland Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GBP','CURRENCY_MEASURE','GBP','British Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GEK','CURRENCY_MEASURE','GEK','Georgian Kupon','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GHC','CURRENCY_MEASURE','GHC','Ghanian Cedi','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GIP','CURRENCY_MEASURE','GIP','Gibraltar Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GMD','CURRENCY_MEASURE','GMD','Gambian Dalasi','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GNF','CURRENCY_MEASURE','GNF','Guinea Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GTQ','CURRENCY_MEASURE','GTQ','Guatemalan Quedzal','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GWP','CURRENCY_MEASURE','GWP','Guinea Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('GYD','CURRENCY_MEASURE','GYD','Guyanese Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HKD','CURRENCY_MEASURE','HKD','Hong Kong Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HNL','CURRENCY_MEASURE','HNL','Honduran Lempira','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HRD','CURRENCY_MEASURE','HRD','Croatian Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HTG','CURRENCY_MEASURE','HTG','Haitian Gourde','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('HUF','CURRENCY_MEASURE','HUF','Hungarian forint','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('IDR','CURRENCY_MEASURE','IDR','Indeonesian Rupiah','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ILS','CURRENCY_MEASURE','ILS','Israeli Scheckel','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('INR','CURRENCY_MEASURE','INR','Indian Rupee','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('IQD','CURRENCY_MEASURE','IQD','Iraqui Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('IRR','CURRENCY_MEASURE','IRR','Iranian Rial','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ISK','CURRENCY_MEASURE','ISK','Iceland Krona','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('JMD','CURRENCY_MEASURE','JMD','Jamaican Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('JOD','CURRENCY_MEASURE','JOD','Jordanian Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('JPY','CURRENCY_MEASURE','JPY','Japanese Yen','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KES','CURRENCY_MEASURE','KES','Kenyan Shilling','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KHR','CURRENCY_MEASURE','KHR','Cambodian Riel','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KIS','CURRENCY_MEASURE','KIS','Kirghizstan Som','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KMF','CURRENCY_MEASURE','KMF','Comoros Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KPW','CURRENCY_MEASURE','KPW','North Korean Won','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KRW','CURRENCY_MEASURE','KRW','South Korean Won','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KWD','CURRENCY_MEASURE','KWD','Kuwaiti Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KYD','CURRENCY_MEASURE','KYD','Cayman Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('KZT','CURRENCY_MEASURE','KZT','Kazakhstani Tenge','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('LAK','CURRENCY_MEASURE','LAK','Laotian Kip','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('LBP','CURRENCY_MEASURE','LBP','Lebanese Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('LEN_A','LENGTH_MEASURE','A','Angstrom','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_cb','LENGTH_MEASURE','cb','Cable','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_chG','LENGTH_MEASURE','chG','Chain (Gunter\'s/surveyor\'s)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_chR','LENGTH_MEASURE','chR','Chain (Ramden\'s/engineer\'s)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_cm','LENGTH_MEASURE','cm','Centimeter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_dam','LENGTH_MEASURE','dam','Dekameter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_dm','LENGTH_MEASURE','dm','Decimeter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_fm','LENGTH_MEASURE','fm','Fathom','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_ft','LENGTH_MEASURE','ft','Foot','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_fur','LENGTH_MEASURE','fur','Furlong','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_hand','LENGTH_MEASURE','hand','Hand (horse\'s height)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_in','LENGTH_MEASURE','in','Inch','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_km','LENGTH_MEASURE','km','Kilometer','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_league','LENGTH_MEASURE','league','League','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_lnG','LENGTH_MEASURE','lnG','Link (Gunter\'s)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_lnR','LENGTH_MEASURE','lnR','Link (Ramden\'s)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_m','LENGTH_MEASURE','m','Meter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mi','LENGTH_MEASURE','mi','Mile (statute/land)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mil','LENGTH_MEASURE','mil','Mil (Milli-inch)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mm','LENGTH_MEASURE','mm','Millimeter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_nmi','LENGTH_MEASURE','nmi','Mile (nautical/sea)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_pica','LENGTH_MEASURE','pica','Pica (type size)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_point','LENGTH_MEASURE','point','Point (type size)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_rd','LENGTH_MEASURE','rd','Rod','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_u','LENGTH_MEASURE','u','Micrometer (Micron)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_yd','LENGTH_MEASURE','yd','Yard','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LKR','CURRENCY_MEASURE','LKR','Sri Lankan Rupee','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('LRD','CURRENCY_MEASURE','LRD','Liberian Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('LSL','CURRENCY_MEASURE','LSL','Lesotho Loti','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('LTL','CURRENCY_MEASURE','LTL','Lithuanian Lita','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('LVL','CURRENCY_MEASURE','LVL','Latvian Lat','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('LYD','CURRENCY_MEASURE','LYD','Libyan Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MAD','CURRENCY_MEASURE','MAD','Moroccan Dirham','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MDL','CURRENCY_MEASURE','MDL','Moldavian Lei','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MGF','CURRENCY_MEASURE','MGF','Madagascan Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MNT','CURRENCY_MEASURE','MNT','Mongolian Tugrik','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MOP','CURRENCY_MEASURE','MOP','Macao Pataca','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MRO','CURRENCY_MEASURE','MRO','Mauritanian Ouguiya','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MTL','CURRENCY_MEASURE','MTL','Maltese Lira','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MUR','CURRENCY_MEASURE','MUR','Mauritius Rupee','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MVR','CURRENCY_MEASURE','MVR','Maldive Rufiyaa','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MWK','CURRENCY_MEASURE','MWK','Malawi Kwacha','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MXN','CURRENCY_MEASURE','MXN','Mexican Peso (new)','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MXP','CURRENCY_MEASURE','MXP','Mexican Peso (old)','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MYR','CURRENCY_MEASURE','MYR','Malaysian Ringgit','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('MZM','CURRENCY_MEASURE','MZM','Mozambique Metical','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('NGN','CURRENCY_MEASURE','NGN','Nigerian Naira','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('NIC','CURRENCY_MEASURE','NIC','Nicaragua','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('NIO','CURRENCY_MEASURE','NIO','Nicaraguan Cordoba','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('NIS','CURRENCY_MEASURE','NIS','New Israeli Shekel','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('NOK','CURRENCY_MEASURE','NOK','Norwegian Krone','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('NPR','CURRENCY_MEASURE','NPR','Nepalese Rupee','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('NZD','CURRENCY_MEASURE','NZD','New Zealand Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('OMR','CURRENCY_MEASURE','OMR','Omani Rial','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('OTH_A','OTHER_MEASURE','A','Amphere - Electric current','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('OTH_box','OTHER_MEASURE','bx','Box','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('OTH_cd','OTHER_MEASURE','cd','Candela - Luminosity (intensity of light)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('OTH_ea','OTHER_MEASURE','ea','Each','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('OTH_mol','OTHER_MEASURE','mol','Mole - Substance (molecule)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('OTH_pk','OTHER_MEASURE','pk','Package','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('OTH_pp','OTHER_MEASURE','pp','Per Person','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('PAB','CURRENCY_MEASURE','PAB','Panamanian Balboa','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PEI','CURRENCY_MEASURE','PEI','Peruvian Inti','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PEN','CURRENCY_MEASURE','PEN','Peruvian Sol - New','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PES','CURRENCY_MEASURE','PES','Peruvian Sol','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PGK','CURRENCY_MEASURE','PGK','Papua New Guinea Kina','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PHP','CURRENCY_MEASURE','PHP','Philippino Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PKR','CURRENCY_MEASURE','PKR','Pakistan Rupee','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PLN','CURRENCY_MEASURE','PLN','Polish Zloty','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PLZ','CURRENCY_MEASURE','PLZ','Poland','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('PYG','CURRENCY_MEASURE','PYG','Paraguayan Guarani','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('QAR','CURRENCY_MEASURE','QAR','Qatar Riyal','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ROL','CURRENCY_MEASURE','ROL','Romanian Leu','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('RUR','CURRENCY_MEASURE','RUR','Russian Rouble','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('RWF','CURRENCY_MEASURE','RWF','Rwanda Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SAR','CURRENCY_MEASURE','SAR','Saudi Riyal','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SBD','CURRENCY_MEASURE','SBD','Solomon Islands Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SCR','CURRENCY_MEASURE','SCR','Seychelles Rupee','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SDP','CURRENCY_MEASURE','SDP','Sudanese Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SEK','CURRENCY_MEASURE','SEK','Swedish Krona','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SGD','CURRENCY_MEASURE','SGD','Singapore Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SHP','CURRENCY_MEASURE','SHP','St.Helena Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SLL','CURRENCY_MEASURE','SLL','Leone','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SOL','CURRENCY_MEASURE','SOL','Peru','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SOS','CURRENCY_MEASURE','SOS','Somalian Shilling','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SRG','CURRENCY_MEASURE','SRG','Surinam Guilder','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('STD','CURRENCY_MEASURE','STD','Sao Tome / Principe Dobra','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SUR','CURRENCY_MEASURE','SUR','Russian Ruble (old)','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SVC','CURRENCY_MEASURE','SVC','El Salvador Colon','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SYP','CURRENCY_MEASURE','SYP','Syrian Pound','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('SZL','CURRENCY_MEASURE','SZL','Swaziland Lilangeni','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TEMP_C','TEMP_MEASURE','C','Degrees Celsius','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TEMP_F','TEMP_MEASURE','F','Degrees Fahrenheit','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TEMP_K','TEMP_MEASURE','K','Kelvin','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_century','TIME_FREQ_MEASURE','century','Time in Centuries','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_day','TIME_FREQ_MEASURE','day','Time in Days','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_decade','TIME_FREQ_MEASURE','decade','Time in Decades','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_hr','TIME_FREQ_MEASURE','hr','Time in Hours','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_millenium','TIME_FREQ_MEASURE','millenium','Time in Millenia','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_min','TIME_FREQ_MEASURE','min','Time in Minutes','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_mon','TIME_FREQ_MEASURE','mon','Time in Months','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_ms','TIME_FREQ_MEASURE','ms','Time in Milli-Seconds','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_s','TIME_FREQ_MEASURE','s','Time in Seconds','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_score','TIME_FREQ_MEASURE','score','Time in Scores','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_wk','TIME_FREQ_MEASURE','wk','Time in Weeks','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_yr','TIME_FREQ_MEASURE','yr','Time in Years','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('THB','CURRENCY_MEASURE','THB','Thailand Baht','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TJR','CURRENCY_MEASURE','TJR','Tadzhikistani Ruble','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TMM','CURRENCY_MEASURE','TMM','Turkmenistani Manat','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TND','CURRENCY_MEASURE','TND','Tunisian Dinar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TOP','CURRENCY_MEASURE','TOP','Tongan Pa\'anga','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TPE','CURRENCY_MEASURE','TPE','Timor Escudo','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TRY','CURRENCY_MEASURE','TRY','Turkish Lira','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TTD','CURRENCY_MEASURE','TTD','Trinidad and Tobago Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TWD','CURRENCY_MEASURE','TWD','New Taiwan Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('TZS','CURRENCY_MEASURE','TZS','Tanzanian Shilling','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('UAH','CURRENCY_MEASURE','UAH','Ukrainian Hryvnia','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('UGS','CURRENCY_MEASURE','UGS','Ugandan Shilling','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('USD','CURRENCY_MEASURE','USD','United States Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('UYP','CURRENCY_MEASURE','UYP','Uruguayan New Peso','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('UYU','CURRENCY_MEASURE','UYU','Uruguay','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('VDRY_cm3','VOLUME_DRY_MEASURE','cm3','Cubic centimeter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_ft3','VOLUME_DRY_MEASURE','ft3','Cubic foot','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_in3','VOLUME_DRY_MEASURE','in3','Cubic inch','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_m3','VOLUME_DRY_MEASURE','m3','Cubic meter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_mm3','VOLUME_DRY_MEASURE','mm3','Cubic millimeter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_ST','VOLUME_DRY_MEASURE','ST','Stere (cubic meter)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_yd3','VOLUME_DRY_MEASURE','yd3','Cubic yard','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VEB','CURRENCY_MEASURE','VEB','Venezuelan Bolivar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('VLIQ_bbl','VOLUME_LIQ_MEASURE','bbl','Barrel (US)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_cup','VOLUME_LIQ_MEASURE','cup','Cup','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_dr','VOLUME_LIQ_MEASURE','dr','Dram (US)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_galUK','VOLUME_LIQ_MEASURE','gal','Gallon (UK)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_galUS','VOLUME_LIQ_MEASURE','gal','Gallon (US)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_gi','VOLUME_LIQ_MEASURE','gi','Gill (1/4 UK pint)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_L','VOLUME_LIQ_MEASURE','L','Liter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ml','VOLUME_LIQ_MEASURE','ml','Milliliter','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ozUK','VOLUME_LIQ_MEASURE','fl. oz (UK)','Ounce, fluid (UK)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ozUS','VOLUME_LIQ_MEASURE','fl. oz (US)','Ounce, fluid (US)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ptUK','VOLUME_LIQ_MEASURE','pt (UK)','Pint (UK)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ptUS','VOLUME_LIQ_MEASURE','pt (US)','Pint (US)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_qt','VOLUME_LIQ_MEASURE','qt','Quart','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_Tbs','VOLUME_LIQ_MEASURE','Tbs','Tablespoon','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_tsp','VOLUME_LIQ_MEASURE','tsp','Teaspoon','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VND','CURRENCY_MEASURE','VND','Vietnamese Dong','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('VUV','CURRENCY_MEASURE','VUV','Vanuatu Vatu','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('WST','CURRENCY_MEASURE','WST','Samoan Tala','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('WT_dr_avdp','WEIGHT_MEASURE','dr avdp','Dram (avdp)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_dwt','WEIGHT_MEASURE','dwt','Pennyweight','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_g','WEIGHT_MEASURE','g','Gram','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_gr','WEIGHT_MEASURE','gr','Grain','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_kg','WEIGHT_MEASURE','kg','Kilogram','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_lb','WEIGHT_MEASURE','lb','Pound (avdp)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_lt','WEIGHT_MEASURE','lt','Ton (long or British)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_mg','WEIGHT_MEASURE','mg','Milligram','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_mt','WEIGHT_MEASURE','mt','Ton (metric)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_oz','WEIGHT_MEASURE','oz','Ounce (avdp)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_oz_tr','WEIGHT_MEASURE','oz tr','Ounce (troy)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_sh_t','WEIGHT_MEASURE','sh t','Ton (short or US)','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_st','WEIGHT_MEASURE','st','Stone','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('XAF','CURRENCY_MEASURE','XAF','Gabon C.f.A Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('XCD','CURRENCY_MEASURE','XCD','East Carribean Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('XOF','CURRENCY_MEASURE','XOF','Benin C.f.A. Franc','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('YER','CURRENCY_MEASURE','YER','Yemeni Ryal','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ZAR','CURRENCY_MEASURE','ZAR','South African Rand','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ZMK','CURRENCY_MEASURE','ZMK','Zambian Kwacha','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ZRZ','CURRENCY_MEASURE','ZRZ','Zaire','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01'),('ZWD','CURRENCY_MEASURE','ZWD','Zimbabwean Dollar','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01','2017-10-22 00:56:01');
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom_conversion`
--

DROP TABLE IF EXISTS `uom_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom_conversion` (
  `UOM_ID` varchar(20) NOT NULL,
  `UOM_ID_TO` varchar(20) NOT NULL,
  `CONVERSION_FACTOR` double DEFAULT NULL,
  `CUSTOM_METHOD_ID` varchar(20) DEFAULT NULL,
  `DECIMAL_SCALE` decimal(20,0) DEFAULT NULL,
  `ROUNDING_MODE` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`UOM_ID`,`UOM_ID_TO`),
  KEY `UOM_CONV_MAIN` (`UOM_ID`),
  KEY `UOM_CONV_TO` (`UOM_ID_TO`),
  KEY `UOM_CUSTOM_METHOD` (`CUSTOM_METHOD_ID`),
  KEY `UM_CNVRSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `UM_CNVRSN_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `UOM_CONV_MAIN` FOREIGN KEY (`UOM_ID`) REFERENCES `uom` (`UOM_ID`),
  CONSTRAINT `UOM_CONV_TO` FOREIGN KEY (`UOM_ID_TO`) REFERENCES `uom` (`UOM_ID`),
  CONSTRAINT `UOM_CUSTOM_METHOD` FOREIGN KEY (`CUSTOM_METHOD_ID`) REFERENCES `custom_method` (`CUSTOM_METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom_conversion`
--

LOCK TABLES `uom_conversion` WRITE;
/*!40000 ALTER TABLE `uom_conversion` DISABLE KEYS */;
INSERT INTO `uom_conversion` VALUES ('AREA_A','AREA_ft2',43560,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_a','AREA_m2',100,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_cm2','AREA_in2',0.155,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_cm2','AREA_mm2',100,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_ft2','AREA_in2',144,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_ha','AREA_A',2.471,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_ha','AREA_m2',10000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_km2','AREA_m2',1000000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_m2','AREA_cm2',10000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_mi2','AREA_A',639.8,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_rd2','AREA_ft2',272.25,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('AREA_yd2','AREA_ft2',9,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATASPD_Gbps','DATASPD_Mbps',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATASPD_Kbps','DATASPD_bps',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATASPD_Mbps','DATASPD_Kbps',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATASPD_Tbps','DATASPD_Gbps',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_B','DATA_b',8,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_Gb','DATA_Mb',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_Kb','DATA_b',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_Mb','DATA_Kb',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_PB','DATA_TB',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('DATA_Tb','DATA_Gb',1024,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_cal15','EN_J',4.1855,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_HP','EN_w',746,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_Kw','EN_HP',1.341,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('EN_Kw','EN_w',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_A','LEN_in',0.000000004,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_A','LEN_m',0.0000000001,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_cb','LEN_fm',120,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_cb','LEN_ft',720,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_chG','LEN_ft',66,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_chG','LEN_rd',4,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_chR','LEN_ft',100,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_cm','LEN_m',0.01,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_dam','LEN_m',10,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_dm','LEN_m',0.1,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_fm','LEN_ft',6,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_ft','LEN_in',12,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_ft','LEN_m',0.3048,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_fur','LEN_mi',0.125,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_hand','LEN_in',4,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_in','LEN_cm',2.54,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_in','LEN_mm',25.4,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_in','LEN_u',25400,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_km','LEN_m',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_league','LEN_mi',3,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_lnG','LEN_in',7.92,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_lnR','LEN_in',12,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_m','LEN_in',39.37,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mi','LEN_ft',5280,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mi','LEN_fur',8,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mi','LEN_km',1.609,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mil','LEN_in',0.001,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mm','LEN_m',0.001,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_mm','LEN_u',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_nmi','LEN_ft',6076.11549,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_nmi','LEN_km',1.85,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_pica','LEN_point',12,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_point','LEN_in',0.0138,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_point','LEN_mm',0.351,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_rd','LEN_ft',16.5,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_u','LEN_mm',0.001,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('LEN_yd','LEN_ft',3,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_century','TF_yr',100,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_day','TF_hr',24,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_decade','TF_yr',10,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_hr','TF_min',60,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_millenium','TF_yr',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_min','TF_s',60,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_s','TF_ms',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_score','TF_yr',20,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_wk','TF_day',7,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('TF_yr','TF_day',365,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_cm3','VDRY_in3',0.061,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_cm3','VDRY_mm3',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_ft3','VDRY_in3',1728,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_m3','VDRY_yd3',1.3,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_ST','VDRY_m3',1,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VDRY_yd3','VDRY_ft3',27,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_bbl','VLIQ_galUS',31.5,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_cup','VLIQ_Tbs',16,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_galUK','VDRY_m3',0.4546,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_galUK','VLIQ_galUS',1.2009,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_galUS','VLIQ_L',3.785,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_galUS','VLIQ_qt',4,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_L','VDRY_m3',0.001,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_L','VLIQ_ml',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_L','VLIQ_qt',1.056,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ml','VLIQ_L',0.001,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ozUK','VLIQ_L',0.029,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ozUK','VLIQ_ozUS',0.96,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ozUS','VLIQ_dr',8,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ozUS','VLIQ_Tbs',2,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ptUK','VLIQ_gi',4,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ptUK','VLIQ_ptUS',1.2,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_ptUS','VLIQ_ozUS',16,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_qt','VLIQ_ptUS',2,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('VLIQ_Tbs','VLIQ_tsp',3,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_dr_avdp','WT_oz',0.0625,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_dwt','WT_g',1.555,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_g','WT_kg',0.001,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_g','WT_lb',0.00220462247604,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_g','WT_mg',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_g','WT_oz',0.03527,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_gr','WT_g',0.0648,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_gr','WT_oz',0.00229,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_kg','WT_g',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_kg','WT_lb',2.2,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_lb','WT_oz',16,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_lt','WT_lb',2240,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_lt','WT_mt',1.02,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_mt','WT_kg',1000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_oz','WT_g',28,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_oz','WT_lb',0.0625,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_oz_tr','WT_g',30,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_sh_t','WT_lb',2000,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('WT_st','WT_lb',14,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05');
/*!40000 ALTER TABLE `uom_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom_conversion_dated`
--

DROP TABLE IF EXISTS `uom_conversion_dated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom_conversion_dated` (
  `UOM_ID` varchar(20) NOT NULL,
  `UOM_ID_TO` varchar(20) NOT NULL,
  `FROM_DATE` datetime NOT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `CONVERSION_FACTOR` double DEFAULT NULL,
  `CUSTOM_METHOD_ID` varchar(20) DEFAULT NULL,
  `DECIMAL_SCALE` decimal(20,0) DEFAULT NULL,
  `ROUNDING_MODE` varchar(20) DEFAULT NULL,
  `PURPOSE_ENUM_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`UOM_ID`,`UOM_ID_TO`,`FROM_DATE`),
  KEY `DATE_UOM_CONV_MAIN` (`UOM_ID`),
  KEY `DATE_UOM_CONV_TO` (`UOM_ID_TO`),
  KEY `UOMD_CUSTOM_METHOD` (`CUSTOM_METHOD_ID`),
  KEY `UOMD_PURPOSE_ENUM` (`PURPOSE_ENUM_ID`),
  KEY `UM_CNVRN_DTD_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `UM_CNVRN_DTD_TXCRS` (`CREATED_TX_STAMP`),
  CONSTRAINT `DATE_UOM_CONV_MAIN` FOREIGN KEY (`UOM_ID`) REFERENCES `uom` (`UOM_ID`),
  CONSTRAINT `DATE_UOM_CONV_TO` FOREIGN KEY (`UOM_ID_TO`) REFERENCES `uom` (`UOM_ID`),
  CONSTRAINT `UOMD_CUSTOM_METHOD` FOREIGN KEY (`CUSTOM_METHOD_ID`) REFERENCES `custom_method` (`CUSTOM_METHOD_ID`),
  CONSTRAINT `UOMD_PURPOSE_ENUM` FOREIGN KEY (`PURPOSE_ENUM_ID`) REFERENCES `enumeration` (`ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom_conversion_dated`
--

LOCK TABLES `uom_conversion_dated` WRITE;
/*!40000 ALTER TABLE `uom_conversion_dated` DISABLE KEYS */;
/*!40000 ALTER TABLE `uom_conversion_dated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom_group`
--

DROP TABLE IF EXISTS `uom_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom_group` (
  `UOM_GROUP_ID` varchar(20) NOT NULL,
  `UOM_ID` varchar(20) NOT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`UOM_GROUP_ID`,`UOM_ID`),
  KEY `UOM_GROUP_UOM` (`UOM_ID`),
  KEY `UOM_GROUP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `UOM_GROUP_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `UOM_GROUP_UOM` FOREIGN KEY (`UOM_ID`) REFERENCES `uom` (`UOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom_group`
--

LOCK TABLES `uom_group` WRITE;
/*!40000 ALTER TABLE `uom_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `uom_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom_type`
--

DROP TABLE IF EXISTS `uom_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom_type` (
  `UOM_TYPE_ID` varchar(20) NOT NULL,
  `PARENT_TYPE_ID` varchar(20) DEFAULT NULL,
  `HAS_TABLE` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`UOM_TYPE_ID`),
  KEY `UOM_TYPE_PARENT` (`PARENT_TYPE_ID`),
  KEY `UOM_TYPE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `UOM_TYPE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `UOM_TYPE_PARENT` FOREIGN KEY (`PARENT_TYPE_ID`) REFERENCES `uom_type` (`UOM_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom_type`
--

LOCK TABLES `uom_type` WRITE;
/*!40000 ALTER TABLE `uom_type` DISABLE KEYS */;
INSERT INTO `uom_type` VALUES ('AREA_MEASURE',NULL,'N','Area','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('CURRENCY_MEASURE',NULL,'N','Currency','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('DATASPD_MEASURE',NULL,'N','Data Speed','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('DATA_MEASURE',NULL,'N','Data Size','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('ENERGY_MEASURE',NULL,'N','Energy','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('LENGTH_MEASURE',NULL,'N','Length','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('OTHER_MEASURE',NULL,'N','Other','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('TEMP_MEASURE',NULL,'N','Temperature','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('TIME_FREQ_MEASURE',NULL,'N','Time/Frequency','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VOLUME_DRY_MEASURE',NULL,'N','Dry Volume','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('VOLUME_LIQ_MEASURE',NULL,'N','Liquid Volume','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('WEIGHT_MEASURE',NULL,'N','Weight','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `uom_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_agent`
--

DROP TABLE IF EXISTS `user_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_agent` (
  `USER_AGENT_ID` varchar(20) NOT NULL,
  `BROWSER_TYPE_ID` varchar(20) DEFAULT NULL,
  `PLATFORM_TYPE_ID` varchar(20) DEFAULT NULL,
  `PROTOCOL_TYPE_ID` varchar(20) DEFAULT NULL,
  `USER_AGENT_TYPE_ID` varchar(20) DEFAULT NULL,
  `USER_AGENT_METHOD_TYPE_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_AGENT_ID`),
  KEY `UAGENT_BROWSER` (`BROWSER_TYPE_ID`),
  KEY `UAGENT_PLATFORM` (`PLATFORM_TYPE_ID`),
  KEY `UAGENT_PROTOCOL` (`PROTOCOL_TYPE_ID`),
  KEY `UAGENT_TYPE` (`USER_AGENT_TYPE_ID`),
  KEY `UAGENT_METHOD` (`USER_AGENT_METHOD_TYPE_ID`),
  KEY `USER_AGENT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USER_AGENT_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `UAGENT_BROWSER` FOREIGN KEY (`BROWSER_TYPE_ID`) REFERENCES `browser_type` (`BROWSER_TYPE_ID`),
  CONSTRAINT `UAGENT_METHOD` FOREIGN KEY (`USER_AGENT_METHOD_TYPE_ID`) REFERENCES `user_agent_method_type` (`USER_AGENT_METHOD_TYPE_ID`),
  CONSTRAINT `UAGENT_PLATFORM` FOREIGN KEY (`PLATFORM_TYPE_ID`) REFERENCES `platform_type` (`PLATFORM_TYPE_ID`),
  CONSTRAINT `UAGENT_PROTOCOL` FOREIGN KEY (`PROTOCOL_TYPE_ID`) REFERENCES `protocol_type` (`PROTOCOL_TYPE_ID`),
  CONSTRAINT `UAGENT_TYPE` FOREIGN KEY (`USER_AGENT_TYPE_ID`) REFERENCES `user_agent_type` (`USER_AGENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_agent`
--

LOCK TABLES `user_agent` WRITE;
/*!40000 ALTER TABLE `user_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_agent_method_type`
--

DROP TABLE IF EXISTS `user_agent_method_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_agent_method_type` (
  `USER_AGENT_METHOD_TYPE_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_AGENT_METHOD_TYPE_ID`),
  KEY `USR_AGT_MTD_TP_TXP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USR_AGT_MTD_TP_TXS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_agent_method_type`
--

LOCK TABLES `user_agent_method_type` WRITE;
/*!40000 ALTER TABLE `user_agent_method_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_agent_method_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_agent_type`
--

DROP TABLE IF EXISTS `user_agent_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_agent_type` (
  `USER_AGENT_TYPE_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_AGENT_TYPE_ID`),
  KEY `USR_AGNT_TP_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USR_AGNT_TP_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_agent_type`
--

LOCK TABLES `user_agent_type` WRITE;
/*!40000 ALTER TABLE `user_agent_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_agent_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `USER_LOGIN_ID` varchar(250) NOT NULL,
  `CURRENT_PASSWORD` varchar(60) DEFAULT NULL,
  `PASSWORD_HINT` varchar(255) DEFAULT NULL,
  `IS_SYSTEM` char(1) DEFAULT NULL,
  `ENABLED` char(1) DEFAULT NULL,
  `HAS_LOGGED_OUT` char(1) DEFAULT NULL,
  `REQUIRE_PASSWORD_CHANGE` char(1) DEFAULT NULL,
  `LAST_CURRENCY_UOM` varchar(20) DEFAULT NULL,
  `LAST_LOCALE` varchar(10) DEFAULT NULL,
  `LAST_TIME_ZONE` varchar(60) DEFAULT NULL,
  `DISABLED_DATE_TIME` datetime DEFAULT NULL,
  `SUCCESSIVE_FAILED_LOGINS` decimal(20,0) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(250) DEFAULT NULL,
  `USER_LDAP_DN` varchar(250) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`),
  KEY `USER_LOGIN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USER_LOGIN_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES ('admin','{SHA}47ca69ebb4bdc9ae0adec130880165d2cc05db1a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('anonymous',NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59'),('bizadmin','{SHA}47ca69ebb4bdc9ae0adec130880165d2cc05db1a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('demoadmin','{SHA}47ca69ebb4bdc9ae0adec130880165d2cc05db1a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('flexadmin','{SHA}47ca69ebb4bdc9ae0adec130880165d2cc05db1a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('ltdadmin','{SHA}47ca69ebb4bdc9ae0adec130880165d2cc05db1a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('ltdadmin1','{SHA}47ca69ebb4bdc9ae0adec130880165d2cc05db1a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('system',NULL,NULL,'Y','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_history`
--

DROP TABLE IF EXISTS `user_login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login_history` (
  `USER_LOGIN_ID` varchar(250) NOT NULL,
  `VISIT_ID` varchar(20) DEFAULT NULL,
  `FROM_DATE` datetime NOT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `PASSWORD_USED` varchar(60) DEFAULT NULL,
  `SUCCESSFUL_LOGIN` char(1) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`,`FROM_DATE`),
  KEY `USER_LH_USER` (`USER_LOGIN_ID`),
  KEY `USR_LGN_HSR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USR_LGN_HSR_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `USER_LH_USER` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `user_login` (`USER_LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_history`
--

LOCK TABLES `user_login_history` WRITE;
/*!40000 ALTER TABLE `user_login_history` DISABLE KEYS */;
INSERT INTO `user_login_history` VALUES ('admin','10000','2017-10-22 00:59:57',NULL,NULL,'Y','2017-10-22 00:59:57','2017-10-22 00:59:57','2017-10-22 00:59:57','2017-10-22 00:59:57');
/*!40000 ALTER TABLE `user_login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_password_history`
--

DROP TABLE IF EXISTS `user_login_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login_password_history` (
  `USER_LOGIN_ID` varchar(250) NOT NULL,
  `FROM_DATE` datetime NOT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `CURRENT_PASSWORD` varchar(60) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`,`FROM_DATE`),
  KEY `USER_LPH_USER` (`USER_LOGIN_ID`),
  KEY `USR_LGN_PSD_HSR_TP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USR_LGN_PSD_HSR_TS` (`CREATED_TX_STAMP`),
  CONSTRAINT `USER_LPH_USER` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `user_login` (`USER_LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_password_history`
--

LOCK TABLES `user_login_password_history` WRITE;
/*!40000 ALTER TABLE `user_login_password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_security_group`
--

DROP TABLE IF EXISTS `user_login_security_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login_security_group` (
  `USER_LOGIN_ID` varchar(250) NOT NULL,
  `GROUP_ID` varchar(20) NOT NULL,
  `FROM_DATE` datetime NOT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`,`GROUP_ID`,`FROM_DATE`),
  KEY `USER_SECGRP_USER` (`USER_LOGIN_ID`),
  KEY `USER_SECGRP_GRP` (`GROUP_ID`),
  KEY `USR_LGN_SCT_GRP_TP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USR_LGN_SCT_GRP_TS` (`CREATED_TX_STAMP`),
  CONSTRAINT `USER_SECGRP_GRP` FOREIGN KEY (`GROUP_ID`) REFERENCES `security_group` (`GROUP_ID`),
  CONSTRAINT `USER_SECGRP_USER` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `user_login` (`USER_LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_security_group`
--

LOCK TABLES `user_login_security_group` WRITE;
/*!40000 ALTER TABLE `user_login_security_group` DISABLE KEYS */;
INSERT INTO `user_login_security_group` VALUES ('admin','FULLADMIN','2001-01-01 12:00:00',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('bizadmin','BIZADMIN','2001-01-01 12:00:00',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('demoadmin','VIEWADMIN','2001-01-01 12:00:00',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('flexadmin','FLEXADMIN','2001-01-01 12:00:00',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('ltdadmin','VIEWADMIN','2001-01-01 12:00:00',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('ltdadmin1','VIEWADMIN','2001-01-01 12:00:00',NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('system','FULLADMIN','2001-01-01 12:00:00',NULL,'2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `user_login_security_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_session`
--

DROP TABLE IF EXISTS `user_login_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login_session` (
  `USER_LOGIN_ID` varchar(250) NOT NULL,
  `SAVED_DATE` datetime DEFAULT NULL,
  `SESSION_DATA` longtext,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`),
  KEY `USER_SESSION_USER` (`USER_LOGIN_ID`),
  KEY `USR_LGN_SSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USR_LGN_SSN_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `USER_SESSION_USER` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `user_login` (`USER_LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_session`
--

LOCK TABLES `user_login_session` WRITE;
/*!40000 ALTER TABLE `user_login_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pref_group_type`
--

DROP TABLE IF EXISTS `user_pref_group_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_pref_group_type` (
  `USER_PREF_GROUP_TYPE_ID` varchar(60) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_PREF_GROUP_TYPE_ID`),
  KEY `USR_PRF_GRP_TP_TXP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USR_PRF_GRP_TP_TXS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pref_group_type`
--

LOCK TABLES `user_pref_group_type` WRITE;
/*!40000 ALTER TABLE `user_pref_group_type` DISABLE KEYS */;
INSERT INTO `user_pref_group_type` VALUES ('GLOBAL_PREFERENCES','Global preferences','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `user_pref_group_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preference`
--

DROP TABLE IF EXISTS `user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preference` (
  `USER_LOGIN_ID` varchar(250) NOT NULL,
  `USER_PREF_TYPE_ID` varchar(60) NOT NULL,
  `USER_PREF_GROUP_TYPE_ID` varchar(60) DEFAULT NULL,
  `USER_PREF_VALUE` varchar(255) DEFAULT NULL,
  `USER_PREF_DATA_TYPE` varchar(60) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`,`USER_PREF_TYPE_ID`),
  KEY `USR_PRFRNC_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `USR_PRFRNC_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preference`
--

LOCK TABLES `user_preference` WRITE;
/*!40000 ALTER TABLE `user_preference` DISABLE KEYS */;
INSERT INTO `user_preference` VALUES ('admin','javaScriptEnabled','GLOBAL_PREFERENCES','Y',NULL,'2017-10-22 00:59:57','2017-10-22 00:59:57','2017-10-22 00:59:57','2017-10-22 00:59:57'),('admin','VISUAL_THEME','GLOBAL_PREFERENCES','ADMINLET',NULL,'2017-10-22 01:00:04','2017-10-22 01:00:04','2017-10-22 01:00:04','2017-10-22 01:00:04'),('_NA_','VISUAL_THEME','GLOBAL_PREFERENCES','DEFAULT',NULL,'2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `user_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit` (
  `VISIT_ID` varchar(20) NOT NULL,
  `VISITOR_ID` varchar(20) DEFAULT NULL,
  `USER_LOGIN_ID` varchar(250) DEFAULT NULL,
  `USER_CREATED` char(1) DEFAULT NULL,
  `SESSION_ID` varchar(250) DEFAULT NULL,
  `SERVER_IP_ADDRESS` varchar(20) DEFAULT NULL,
  `SERVER_HOST_NAME` varchar(255) DEFAULT NULL,
  `WEBAPP_NAME` varchar(60) DEFAULT NULL,
  `INITIAL_LOCALE` varchar(60) DEFAULT NULL,
  `INITIAL_REQUEST` varchar(255) DEFAULT NULL,
  `INITIAL_REFERRER` varchar(255) DEFAULT NULL,
  `INITIAL_USER_AGENT` varchar(255) DEFAULT NULL,
  `USER_AGENT_ID` varchar(20) DEFAULT NULL,
  `CLIENT_IP_ADDRESS` varchar(60) DEFAULT NULL,
  `CLIENT_HOST_NAME` varchar(255) DEFAULT NULL,
  `CLIENT_USER` varchar(60) DEFAULT NULL,
  `CLIENT_IP_ISP_NAME` varchar(60) DEFAULT NULL,
  `CLIENT_IP_POSTAL_CODE` varchar(60) DEFAULT NULL,
  `CLIENT_IP_STATE_PROV_GEO_ID` varchar(20) DEFAULT NULL,
  `CLIENT_IP_COUNTRY_GEO_ID` varchar(20) DEFAULT NULL,
  `COOKIE` varchar(60) DEFAULT NULL,
  `FROM_DATE` datetime DEFAULT NULL,
  `THRU_DATE` datetime DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`VISIT_ID`),
  KEY `VISIT_VISITOR` (`VISITOR_ID`),
  KEY `VISIT_USER_AGNT` (`USER_AGENT_ID`),
  KEY `VISIT_CIP_STPRV` (`CLIENT_IP_STATE_PROV_GEO_ID`),
  KEY `VISIT_CIP_CNTRY` (`CLIENT_IP_COUNTRY_GEO_ID`),
  KEY `VISIT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `VISIT_TXCRTS` (`CREATED_TX_STAMP`),
  KEY `VISIT_THRU_IDX` (`THRU_DATE`),
  CONSTRAINT `VISIT_CIP_CNTRY` FOREIGN KEY (`CLIENT_IP_COUNTRY_GEO_ID`) REFERENCES `geo` (`GEO_ID`),
  CONSTRAINT `VISIT_CIP_STPRV` FOREIGN KEY (`CLIENT_IP_STATE_PROV_GEO_ID`) REFERENCES `geo` (`GEO_ID`),
  CONSTRAINT `VISIT_USER_AGNT` FOREIGN KEY (`USER_AGENT_ID`) REFERENCES `user_agent` (`USER_AGENT_ID`),
  CONSTRAINT `VISIT_VISITOR` FOREIGN KEY (`VISITOR_ID`) REFERENCES `visitor` (`VISITOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES ('10000','10000','admin','N','D650CCDFDFAEE0057841F0EC4AFA55DF.jvm1','192.168.1.104','ThinkPadT61P','cmsbackend','zh_CN','https://127.0.0.1:8443/cmsbackend/control/main','','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36',NULL,'127.0.0.1','127.0.0.1',NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:59:51',NULL,'2017-10-22 00:59:57','2017-10-22 00:59:57','2017-10-22 00:59:52','2017-10-22 00:59:52');
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor` (
  `VISITOR_ID` varchar(20) NOT NULL,
  `USER_LOGIN_ID` varchar(250) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`VISITOR_ID`),
  KEY `VISITOR_USRLGN` (`USER_LOGIN_ID`),
  KEY `VISITOR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `VISITOR_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `VISITOR_USRLGN` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `user_login` (`USER_LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES ('10000','admin','2017-10-22 00:59:57','2017-10-22 00:59:57','2017-10-22 00:59:51','2017-10-22 00:59:51');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visual_theme`
--

DROP TABLE IF EXISTS `visual_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visual_theme` (
  `VISUAL_THEME_ID` varchar(20) NOT NULL,
  `VISUAL_THEME_SET_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`VISUAL_THEME_ID`),
  KEY `VT_THEME_SET` (`VISUAL_THEME_SET_ID`),
  KEY `VSL_THM_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `VSL_THM_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `VT_THEME_SET` FOREIGN KEY (`VISUAL_THEME_SET_ID`) REFERENCES `visual_theme_set` (`VISUAL_THEME_SET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visual_theme`
--

LOCK TABLES `visual_theme` WRITE;
/*!40000 ALTER TABLE `visual_theme` DISABLE KEYS */;
INSERT INTO `visual_theme` VALUES ('ADMINLET','BACKOFFICE','It\'s adminlet, it\'s adminlet time. This theme gets down','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('BIZZNESS_TIME','BACKOFFICE','It\'s bizzness, it\'s bizzness time.  I couldn\'t have said it better myself. This theme gets down','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('BOOTS','BACKOFFICE','It\'s bootcss, it\'s bootcss time. This theme gets down','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','BACKOFFICE','It\'s coloradmin, it\'s coloradmin time. This theme gets down','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','BACKOFFICE','Tomahawk: the evolution of the Dropping Crumbs theme','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('TOMAHAWK','BACKOFFICE','Tomahawk: the evolution of the Dropping Crumbs theme','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07');
/*!40000 ALTER TABLE `visual_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visual_theme_resource`
--

DROP TABLE IF EXISTS `visual_theme_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visual_theme_resource` (
  `VISUAL_THEME_ID` varchar(20) NOT NULL,
  `RESOURCE_TYPE_ENUM_ID` varchar(20) NOT NULL,
  `SEQUENCE_ID` varchar(20) NOT NULL,
  `RESOURCE_VALUE` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`VISUAL_THEME_ID`,`RESOURCE_TYPE_ENUM_ID`,`SEQUENCE_ID`),
  KEY `VT_RES_THEME` (`VISUAL_THEME_ID`),
  KEY `VT_RES_TYPE_ENUM` (`RESOURCE_TYPE_ENUM_ID`),
  KEY `VSL_THM_RSC_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `VSL_THM_RSC_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `VT_RES_THEME` FOREIGN KEY (`VISUAL_THEME_ID`) REFERENCES `visual_theme` (`VISUAL_THEME_ID`),
  CONSTRAINT `VT_RES_TYPE_ENUM` FOREIGN KEY (`RESOURCE_TYPE_ENUM_ID`) REFERENCES `enumeration` (`ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visual_theme_resource`
--

LOCK TABLES `visual_theme_resource` WRITE;
/*!40000 ALTER TABLE `visual_theme_resource` DISABLE KEYS */;
INSERT INTO `visual_theme_resource` VALUES ('ADMINLET','VT_DOCBOOKSTYLESHEET','01','/images/themes/adminlet/docbook.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_FTR_TMPLT_LOC','01','component://adminlet/includes/footer.ftl','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_HDR_IMAGE_URL','01','/images/app_logo.gif','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_HDR_JAVASCRIPT','01','/images/themes/adminlet/js/bootstrap/js/bootstrap.js','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_HDR_JAVASCRIPT','02','/images/themes/adminlet/js/plugins/fastclick/fastclick.min.js','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_HDR_JAVASCRIPT','03','/images/themes/adminlet/js/plugins/parsley/dist/parsley.js','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_HDR_JAVASCRIPT','04','/images/themes/adminlet/dist/js/app.min.js','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_HDR_JAVASCRIPT','05','/images/bootstrap/main.js','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_HDR_TMPLT_LOC','01','component://adminlet/includes/header.ftl','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_HELPSTYLESHEET','01','/images/themes/adminlet/css/help.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_MSG_TMPLT_LOC','01','component://common/webcommon/includes/messages.ftl','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_NAME','01','ADMINLET','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_NAV_CLOSE_TMPLT','01','component://adminlet/includes/appbarClose.ftl','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_NAV_OPEN_TMPLT','01','component://adminlet/includes/appbarOpen.ftl','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_SCREENSHOT','01','/images/themes/adminlet/screenshot.png','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_SHORTCUT_ICON','01','/images/app.png','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_STYLESHEET','01','/images/themes/adminlet/css/bootstrap.min.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_STYLESHEET','02','/images/themes/adminlet/css/font-awesome/css/font-awesome.min.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_STYLESHEET','03','/images/themes/adminlet/css/ionicons/css/ionicons.min.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_STYLESHEET','04','/images/themes/adminlet/dist/css/AdminLTE.min.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_STYLESHEET','05','/images/themes/adminlet/dist/css/skins/_all-skins.min.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_STYLESHEET','06','/images/themes/adminlet/css/main.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_STYLESHEET','07','/images/themes/adminlet/css/app.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('ADMINLET','VT_STYLESHEET','08','/images/themes/coloradmin/plugins/parsley/src/parsley.css','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_DOCBOOKSTYLESHEET','01','/bizznesstime/webapp/bizznesstime/css/docbook.css','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_FTR_TMPLT_LOC','01','component://bizznesstime/includes/footer.ftl','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_HDR_IMAGE_URL','01','/images/ofbiz_logo.gif','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_HDR_JAVASCRIPT','01','/bizznesstime/js/application.js','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_HDR_TMPLT_LOC','01','component://bizznesstime/includes/header.ftl','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_HELPSTYLESHEET','01','/bizznesstime/css/help.css','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_MSG_TMPLT_LOC','01','component://bizznesstime/includes/messages.ftl','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_NAME','01','BIZZNESS_TIME','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_NAV_TMPLT_LOC','01','component://bizznesstime/includes/appbar.ftl','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_SCREENSHOT','01','/bizznesstime/screenshot.jpg','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_SHORTCUT_ICON','01','/images/ofbiz.ico','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BIZZNESS_TIME','VT_STYLESHEET','01','/bizznesstime/css/style.css','2017-10-22 00:56:07','2017-10-22 00:56:06','2017-10-22 00:56:07','2017-10-22 00:56:06'),('BOOTS','VT_DOCBOOKSTYLESHEET','01','/images/themes/bootcss/docbook.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_FTR_TMPLT_LOC','01','component://bootcss/includes/footer.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_IMAGE_URL','01','/images/app_logo.gif','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','01','/images/themes/coloradmin/plugins/bootstrap/js/bootstrap.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','02','/images/jquery/plugins/metisMenu/jquery.metisMenu.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','03','/images/jquery/plugins/slimscroll/jquery.slimscroll.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','04','/images/themes/adminlet/js/plugins/parsley/dist/parsley.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','05','/images/themes/bootcss/js/app.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','06','/images/pace/pace.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','07','/images/jquery/plugins/gritter/jquery.gritter.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','08','/images/jquery/plugins/dataTables/jquery.dataTables.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','09','/images/jquery/plugins/dataTables/dataTables.bootstrap.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','10','/images/jquery/plugins/dataTables/dataTables.responsive.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','11','/images/jquery/plugins/dataTables/dataTables.tableTools.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','12','/images/themes/bootcss/js/fixbrower.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_JAVASCRIPT','13','/images/bootstrap/main.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HDR_TMPLT_LOC','01','component://bootcss/includes/header.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_HELPSTYLESHEET','01','/images/themes/bootcss/css/help.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_MSG_TMPLT_LOC','01','component://common/webcommon/includes/messages.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_NAME','01','BOOTS','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_NAV_CLOSE_TMPLT','01','component://bootcss/includes/appbarClose.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_NAV_OPEN_TMPLT','01','component://bootcss/includes/appbarOpen.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_SCREENSHOT','01','/images/themes/bootcss/screenshot.jpg','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_SHORTCUT_ICON','01','/images/app.png','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','01','/images/themes/bootcss/css/bootstrap.min.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','02','/images/font-awesome/css/font-awesome.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','03','/images/jquery/plugins/gritter/jquery.gritter.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','04','/images/themes/bootcss/css/animate.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','05','/images/jquery/plugins/dataTables/dataTables.bootstrap.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','06','/images/jquery/plugins/dataTables/dataTables.responsive.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','07','/images/jquery/plugins/dataTables/dataTables.tableTools.min.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','08','/images/themes/coloradmin/plugins/parsley/src/parsley.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','09','/images/themes/bootcss/css/main.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('BOOTS','VT_STYLESHEET','10','/images/themes/bootcss/css/app.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_DOCBOOKSTYLESHEET','01','/images/themes/coloradmin/docbook.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_FTR_TMPLT_LOC','01','component://coloradmin/includes/footer.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_IMAGE_URL','01','/images/app_logo.gif','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_JAVASCRIPT','01','/images/themes/coloradmin/plugins/pace/pace.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_JAVASCRIPT','02','/images/themes/coloradmin/plugins/jquery/jquery-migrate-1.1.0.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_JAVASCRIPT','04','/images/themes/coloradmin/plugins/bootstrap/js/bootstrap.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_JAVASCRIPT','05','/images/themes/coloradmin/plugins/slimscroll/jquery.slimscroll.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_JAVASCRIPT','06','/images/themes/coloradmin/plugins/jquery-cookie/jquery.cookie.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_JAVASCRIPT','07','/images/themes/coloradmin/plugins/parsley/dist/parsley.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_JAVASCRIPT','08','/images/themes/coloradmin/js/apps.min.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_JAVASCRIPT','09','/images/bootstrap/main.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HDR_TMPLT_LOC','01','component://coloradmin/includes/header.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_HELPSTYLESHEET','01','/images/themes/coloradmin/css/help.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_MSG_TMPLT_LOC','01','component://coloradmin/includes/messages.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_NAME','01','COLORADMIN','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_NAV_CLOSE_TMPLT','01','component://coloradmin/includes/appbarClose.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_NAV_OPEN_TMPLT','01','component://coloradmin/includes/appbarOpen.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_SCREENSHOT','01','/images/themes/coloradmin/screenshot.png','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_SHORTCUT_ICON','01','/images/app.png','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','01','/images/themes/coloradmin/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','02','/images/themes/coloradmin/plugins/bootstrap/css/bootstrap.min.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','03','/images/themes/coloradmin/plugins/font-awesome/css/font-awesome.min.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','04','/images/themes/coloradmin/css/animate.min.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','05','/images/themes/coloradmin/css/style.min.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','06','/images/themes/coloradmin/css/style-responsive.min.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','07','/images/themes/coloradmin/css/theme/default.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','08','/images/themes/coloradmin/css/main.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','09','/images/themes/coloradmin/css/app.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('COLORADMIN','VT_STYLESHEET','10','/images/themes/coloradmin/plugins/parsley/src/parsley.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_DOCBOOKSTYLESHEET','01','/inspinia/webapp/inspinia/css/docbook.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_FTR_TMPLT_LOC','01','component://inspinia/includes/footer.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_HDR_IMAGE_URL','01','/images/ofbiz_logo.gif','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_HDR_JAVASCRIPT','01','/inspinia/js/dropdown.js','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_HDR_TMPLT_LOC','01','component://inspinia/includes/header.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_HELPSTYLESHEET','01','/inspinia/css/help.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_MSG_TMPLT_LOC','01','component://common/webcommon/includes/messages.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_NAME','01','INSPINIA','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_NAV_CLOSE_TMPLT','01','component://inspinia/includes/appbarClose.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_NAV_OPEN_TMPLT','01','component://inspinia/includes/appbarOpen.ftl','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_SCREENSHOT','01','/inspinia/screenshot.jpg','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_SHORTCUT_ICON','01','/images/ofbiz.ico','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('INSPINIA','VT_STYLESHEET','01','/inspinia/css/style.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('TOMAHAWK','VT_DOCBOOKSTYLESHEET','01','/tomahawk/webapp/tomahawk/css/docbook.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('TOMAHAWK','VT_FTR_TMPLT_LOC','01','component://tomahawk/includes/footer.ftl','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_HDR_IMAGE_URL','01','/images/ofbiz_logo.gif','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_HDR_JAVASCRIPT','01','/tomahawk/js/dropdown.js','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_HDR_TMPLT_LOC','01','component://tomahawk/includes/header.ftl','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_HELPSTYLESHEET','01','/tomahawk/css/help.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('TOMAHAWK','VT_MSG_TMPLT_LOC','01','component://common/webcommon/includes/messages.ftl','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_NAME','01','TOMAHAWK','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07'),('TOMAHAWK','VT_NAV_CLOSE_TMPLT','01','component://tomahawk/includes/appbarClose.ftl','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_NAV_OPEN_TMPLT','01','component://tomahawk/includes/appbarOpen.ftl','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_SCREENSHOT','01','/tomahawk/screenshot.jpg','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_SHORTCUT_ICON','01','/images/ofbiz.ico','2017-10-22 00:56:08','2017-10-22 00:56:07','2017-10-22 00:56:08','2017-10-22 00:56:07'),('TOMAHAWK','VT_STYLESHEET','01','/tomahawk/css/style.css','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07','2017-10-22 00:56:07');
/*!40000 ALTER TABLE `visual_theme_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visual_theme_set`
--

DROP TABLE IF EXISTS `visual_theme_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visual_theme_set` (
  `VISUAL_THEME_SET_ID` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`VISUAL_THEME_SET_ID`),
  KEY `VSL_THM_ST_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `VSL_THM_ST_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visual_theme_set`
--

LOCK TABLES `visual_theme_set` WRITE;
/*!40000 ALTER TABLE `visual_theme_set` DISABLE KEYS */;
INSERT INTO `visual_theme_set` VALUES ('BACKOFFICE','Themes to be used for backoffice applications','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59'),('ECOMMERCE','Themes to be used for ECommerce applications','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `visual_theme_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_page`
--

DROP TABLE IF EXISTS `web_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_page` (
  `WEB_PAGE_ID` varchar(20) NOT NULL,
  `PAGE_NAME` varchar(100) DEFAULT NULL,
  `WEB_SITE_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`WEB_PAGE_ID`),
  KEY `WEB_PAGE_SITE` (`WEB_SITE_ID`),
  KEY `WEB_PAGE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `WEB_PAGE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `WEB_PAGE_SITE` FOREIGN KEY (`WEB_SITE_ID`) REFERENCES `web_site` (`WEB_SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_page`
--

LOCK TABLES `web_page` WRITE;
/*!40000 ALTER TABLE `web_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_site`
--

DROP TABLE IF EXISTS `web_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_site` (
  `WEB_SITE_ID` varchar(20) NOT NULL,
  `SITE_NAME` varchar(100) DEFAULT NULL,
  `HTTP_HOST` varchar(255) DEFAULT NULL,
  `HTTP_PORT` varchar(10) DEFAULT NULL,
  `HTTPS_HOST` varchar(255) DEFAULT NULL,
  `HTTPS_PORT` varchar(10) DEFAULT NULL,
  `ENABLE_HTTPS` char(1) DEFAULT NULL,
  `STANDARD_CONTENT_PREFIX` varchar(255) DEFAULT NULL,
  `SECURE_CONTENT_PREFIX` varchar(255) DEFAULT NULL,
  `COOKIE_DOMAIN` varchar(255) DEFAULT NULL,
  `VISUAL_THEME_SET_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`WEB_SITE_ID`),
  KEY `WEB_SITE_THEME_SET` (`VISUAL_THEME_SET_ID`),
  KEY `WEB_SITE_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `WEB_SITE_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `WEB_SITE_THEME_SET` FOREIGN KEY (`VISUAL_THEME_SET_ID`) REFERENCES `visual_theme_set` (`VISUAL_THEME_SET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_site`
--

LOCK TABLES `web_site` WRITE;
/*!40000 ALTER TABLE `web_site` DISABLE KEYS */;
INSERT INTO `web_site` VALUES ('BI','Business Intelligence Application',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BACKOFFICE','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('WEBTOOLS','Web Tools',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BACKOFFICE','2017-10-22 00:56:00','2017-10-22 00:55:59','2017-10-22 00:56:00','2017-10-22 00:55:59');
/*!40000 ALTER TABLE `web_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webslinger_host_mapping`
--

DROP TABLE IF EXISTS `webslinger_host_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webslinger_host_mapping` (
  `HOST_NAME` varchar(100) NOT NULL,
  `CONTEXT_PATH` varchar(255) NOT NULL,
  `WEBSLINGER_SERVER_ID` varchar(20) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`HOST_NAME`,`CONTEXT_PATH`),
  KEY `WHM_WS` (`WEBSLINGER_SERVER_ID`),
  KEY `WBSLR_HST_MPG_TXSP` (`LAST_UPDATED_TX_STAMP`),
  KEY `WBSLR_HST_MPG_TXCS` (`CREATED_TX_STAMP`),
  CONSTRAINT `WHM_WS` FOREIGN KEY (`WEBSLINGER_SERVER_ID`) REFERENCES `webslinger_server` (`WEBSLINGER_SERVER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webslinger_host_mapping`
--

LOCK TABLES `webslinger_host_mapping` WRITE;
/*!40000 ALTER TABLE `webslinger_host_mapping` DISABLE KEYS */;
INSERT INTO `webslinger_host_mapping` VALUES ('*','/webslinger','WEBSLINGER','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06');
/*!40000 ALTER TABLE `webslinger_host_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webslinger_host_suffix`
--

DROP TABLE IF EXISTS `webslinger_host_suffix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webslinger_host_suffix` (
  `HOST_SUFFIX_ID` varchar(20) NOT NULL,
  `HOST_SUFFIX` varchar(100) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`HOST_SUFFIX_ID`),
  KEY `WBSLR_HST_SFX_TXSP` (`LAST_UPDATED_TX_STAMP`),
  KEY `WBSLR_HST_SFX_TXCS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webslinger_host_suffix`
--

LOCK TABLES `webslinger_host_suffix` WRITE;
/*!40000 ALTER TABLE `webslinger_host_suffix` DISABLE KEYS */;
INSERT INTO `webslinger_host_suffix` VALUES ('LOCALHOST','.localhost','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06'),('PREVIEW','.preview','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06');
/*!40000 ALTER TABLE `webslinger_host_suffix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webslinger_server`
--

DROP TABLE IF EXISTS `webslinger_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webslinger_server` (
  `WEBSLINGER_SERVER_ID` varchar(20) NOT NULL,
  `DELEGATOR_NAME` varchar(100) DEFAULT NULL,
  `DISPATCHER_NAME` varchar(100) DEFAULT NULL,
  `SERVER_NAME` varchar(100) DEFAULT NULL,
  `WEB_SITE_ID` varchar(20) DEFAULT NULL,
  `TARGET` varchar(100) DEFAULT NULL,
  `LOAD_AT_START` char(1) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`WEBSLINGER_SERVER_ID`),
  KEY `WSS_WS` (`WEB_SITE_ID`),
  KEY `WBSLNGR_SRR_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `WBSLNGR_SRR_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `WSS_WS` FOREIGN KEY (`WEB_SITE_ID`) REFERENCES `web_site` (`WEB_SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webslinger_server`
--

LOCK TABLES `webslinger_server` WRITE;
/*!40000 ALTER TABLE `webslinger_server` DISABLE KEYS */;
INSERT INTO `webslinger_server` VALUES ('WEBSLINGER','default','webslinger','webslinger',NULL,'ofbiz-component://webslinger/websites/webslinger',NULL,'2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06','2017-10-22 00:56:06');
/*!40000 ALTER TABLE `webslinger_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webslinger_server_base`
--

DROP TABLE IF EXISTS `webslinger_server_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webslinger_server_base` (
  `WEBSLINGER_SERVER_ID` varchar(20) NOT NULL,
  `BASE_NAME` varchar(100) NOT NULL,
  `SEQ_NUM` decimal(20,0) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`WEBSLINGER_SERVER_ID`,`BASE_NAME`),
  KEY `WSB_WS` (`WEBSLINGER_SERVER_ID`),
  KEY `WBSLR_SRR_BS_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `WBSLR_SRR_BS_TXCRS` (`CREATED_TX_STAMP`),
  CONSTRAINT `WSB_WS` FOREIGN KEY (`WEBSLINGER_SERVER_ID`) REFERENCES `webslinger_server` (`WEBSLINGER_SERVER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webslinger_server_base`
--

LOCK TABLES `webslinger_server_base` WRITE;
/*!40000 ALTER TABLE `webslinger_server_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `webslinger_server_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x509_issuer_provision`
--

DROP TABLE IF EXISTS `x509_issuer_provision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x509_issuer_provision` (
  `CERT_PROVISION_ID` varchar(20) NOT NULL,
  `COMMON_NAME` varchar(255) DEFAULT NULL,
  `ORGANIZATIONAL_UNIT` varchar(255) DEFAULT NULL,
  `ORGANIZATION_NAME` varchar(255) DEFAULT NULL,
  `CITY_LOCALITY` varchar(255) DEFAULT NULL,
  `STATE_PROVINCE` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `SERIAL_NUMBER` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`CERT_PROVISION_ID`),
  KEY `X59_ISR_PRVN_TXSTP` (`LAST_UPDATED_TX_STAMP`),
  KEY `X59_ISR_PRVN_TXCRS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x509_issuer_provision`
--

LOCK TABLES `x509_issuer_provision` WRITE;
/*!40000 ALTER TABLE `x509_issuer_provision` DISABLE KEYS */;
/*!40000 ALTER TABLE `x509_issuer_provision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ofbizolap`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ofbizolap` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `ofbizolap`;

--
-- Table structure for table `currency_dimension`
--

DROP TABLE IF EXISTS `currency_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_dimension` (
  `DIMENSION_ID` varchar(20) NOT NULL,
  `CURRENCY_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`DIMENSION_ID`),
  KEY `CRRNC_DMNSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `CRRNC_DMNSN_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_dimension`
--

LOCK TABLES `currency_dimension` WRITE;
/*!40000 ALTER TABLE `currency_dimension` DISABLE KEYS */;
INSERT INTO `currency_dimension` VALUES ('_NA_',NULL,'Currency Not Set.','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('_NF_',NULL,'Currency Not Found.','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05');
/*!40000 ALTER TABLE `currency_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_dimension`
--

DROP TABLE IF EXISTS `date_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`DIMENSION_ID`),
  KEY `DT_DMNSN_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `DT_DMNSN_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_dimension`
--

LOCK TABLES `date_dimension` WRITE;
/*!40000 ALTER TABLE `date_dimension` DISABLE KEYS */;
INSERT INTO `date_dimension` VALUES ('_NA_',NULL,'Date Not Set.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05'),('_NF_',NULL,'Date Not Found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05','2017-10-22 00:56:05');
/*!40000 ALTER TABLE `date_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ofbiztenant`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ofbiztenant` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `ofbiztenant`;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant` (
  `TENANT_ID` varchar(20) NOT NULL,
  `TENANT_NAME` varchar(100) DEFAULT NULL,
  `DOMAIN_NAME` varchar(255) DEFAULT NULL,
  `INITIAL_PATH` varchar(255) DEFAULT NULL,
  `DISABLED` char(1) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TENANT_ID`),
  KEY `TENANT_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TENANT_TXCRTS` (`CREATED_TX_STAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES ('DEMO1','Demo Tenant One',NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DEMO2','Demo Tenant Two',NULL,NULL,NULL,'2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_data_source`
--

DROP TABLE IF EXISTS `tenant_data_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_data_source` (
  `TENANT_ID` varchar(20) NOT NULL,
  `ENTITY_GROUP_NAME` varchar(100) NOT NULL,
  `JDBC_URI` varchar(255) DEFAULT NULL,
  `JDBC_USERNAME` varchar(255) DEFAULT NULL,
  `JDBC_PASSWORD` varchar(255) DEFAULT NULL,
  `LAST_UPDATED_STAMP` datetime DEFAULT NULL,
  `LAST_UPDATED_TX_STAMP` datetime DEFAULT NULL,
  `CREATED_STAMP` datetime DEFAULT NULL,
  `CREATED_TX_STAMP` datetime DEFAULT NULL,
  PRIMARY KEY (`TENANT_ID`,`ENTITY_GROUP_NAME`),
  KEY `TNTDTSRC_TNT` (`TENANT_ID`),
  KEY `TNNT_DT_SRC_TXSTMP` (`LAST_UPDATED_TX_STAMP`),
  KEY `TNNT_DT_SRC_TXCRTS` (`CREATED_TX_STAMP`),
  CONSTRAINT `TNTDTSRC_TNT` FOREIGN KEY (`TENANT_ID`) REFERENCES `tenant` (`TENANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_data_source`
--

LOCK TABLES `tenant_data_source` WRITE;
/*!40000 ALTER TABLE `tenant_data_source` DISABLE KEYS */;
INSERT INTO `tenant_data_source` VALUES ('DEMO1','org.ofbiz','jdbc:derby:ofbiz_DEMO1;create=true','ofbiz','ofbiz','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DEMO1','org.ofbiz.olap','jdbc:derby:ofbizolap_DEMO1;create=true','ofbiz','ofbiz','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DEMO2','org.ofbiz','jdbc:derby:ofbiz_DEMO2;create=true','ofbiz','ofbiz','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09'),('DEMO2','org.ofbiz.olap','jdbc:derby:ofbizolap_DEMO2;create=true','ofbiz','ofbiz','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09','2017-10-22 00:56:09');
/*!40000 ALTER TABLE `tenant_data_source` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-22  1:07:31
