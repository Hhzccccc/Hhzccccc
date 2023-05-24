-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: hospitaldata
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `areaId` int NOT NULL AUTO_INCREMENT,
  `areaName` varchar(50) NOT NULL,
  PRIMARY KEY (`areaId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'广东深圳'),(2,'四川南充'),(3,'广东广州'),(4,'黄梓成计算有限公司 ');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban`
--

DROP TABLE IF EXISTS `ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ban` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `bname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban`
--

LOCK TABLES `ban` WRITE;
/*!40000 ALTER TABLE `ban` DISABLE KEYS */;
INSERT INTO `ban` VALUES (1,'有班'),(2,'无班');
/*!40000 ALTER TABLE `ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baoque`
--

DROP TABLE IF EXISTS `baoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baoque` (
  `baoqueid` int NOT NULL AUTO_INCREMENT,
  `baoqueName` varchar(100) DEFAULT NULL,
  `baoqueNum` int DEFAULT NULL,
  PRIMARY KEY (`baoqueid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baoque`
--

LOCK TABLES `baoque` WRITE;
/*!40000 ALTER TABLE `baoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `baoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed` (
  `bedId` int NOT NULL AUTO_INCREMENT,
  `bedname` varchar(300) NOT NULL,
  `departmentId` int NOT NULL,
  `state` int DEFAULT NULL,
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`bedId`) USING BTREE,
  KEY `fk_bedDepartmentid` (`departmentId`) USING BTREE,
  CONSTRAINT `fk_bedDepartmentid` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed`
--

LOCK TABLES `bed` WRITE;
/*!40000 ALTER TABLE `bed` DISABLE KEYS */;
INSERT INTO `bed` VALUES (8,'外科1',8,0,10),(9,'内科一',7,1,10);
/*!40000 ALTER TABLE `bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caigou`
--

DROP TABLE IF EXISTS `caigou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caigou` (
  `caigouid` int NOT NULL AUTO_INCREMENT,
  `caigouname` varchar(50) DEFAULT NULL,
  `gonghuoshang` varchar(50) DEFAULT NULL,
  `danwei` varchar(10) DEFAULT NULL,
  `candi` varchar(100) DEFAULT NULL,
  `leixing` varchar(20) DEFAULT NULL,
  `shuliang` int DEFAULT NULL,
  PRIMARY KEY (`caigouid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caigou`
--

LOCK TABLES `caigou` WRITE;
/*!40000 ALTER TABLE `caigou` DISABLE KEYS */;
INSERT INTO `caigou` VALUES (16,'阿莫西林','春天大药房 ','盒','医药有限公司 ','西药',20);
/*!40000 ALTER TABLE `caigou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashier` (
  `cashier` int NOT NULL AUTO_INCREMENT,
  `reportId` int NOT NULL,
  `durgname` varchar(500) NOT NULL,
  `durgnum` int NOT NULL,
  `repiceprice` double NOT NULL,
  `repicetotal` double NOT NULL,
  `state` int DEFAULT NULL,
  `ctime` date DEFAULT NULL,
  `ostate` int DEFAULT NULL,
  `jie` varchar(500) DEFAULT NULL,
  `mstate` int DEFAULT NULL,
  PRIMARY KEY (`cashier`) USING BTREE,
  KEY `fk_reportId` (`reportId`) USING BTREE,
  CONSTRAINT `fk_reportId` FOREIGN KEY (`reportId`) REFERENCES `report` (`reportid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashier`
--

LOCK TABLES `cashier` WRITE;
/*!40000 ALTER TABLE `cashier` DISABLE KEYS */;
INSERT INTO `cashier` VALUES (34,28,'板蓝根',1,30,30,0,'2023-03-06',NULL,NULL,NULL),(35,28,'阿莫西林',1,30,30,0,'2023-03-06',NULL,NULL,NULL),(36,28,'挂号费',1,30,30,2,'2023-03-06',NULL,NULL,NULL),(37,29,'ct',1,100,100,1,'2023-03-06',1,'脑部肿瘤',1),(38,29,'打针',1,20,20,1,'2023-03-06',0,NULL,1),(39,30,'阿莫西林',1,30,30,0,'2023-03-06',NULL,NULL,NULL),(40,30,'ct',1,100,100,1,'2023-03-06',1,'良好',1),(41,30,'挂号费',1,30,30,2,'2023-03-06',NULL,NULL,NULL),(43,31,'ct',1,100,100,1,'2023-03-06',1,'良好',1),(44,31,'打针',1,20,20,1,'2023-03-06',0,NULL,1),(45,32,'板蓝根',3,30,90,0,'2023-03-09',NULL,NULL,NULL),(46,32,'打针',1,20,20,1,'2023-03-09',0,NULL,1),(47,32,'ct',1,100,100,1,'2023-03-09',1,'神经性头痛',1),(48,32,'挂号费',1,20,20,2,'2023-03-09',NULL,NULL,NULL),(49,33,'板蓝根',10,30,300,0,'2023-03-09',NULL,NULL,NULL),(50,33,'ct',1,100,100,1,'2023-03-09',1,'确实不行',1),(51,33,'打针',1,20,20,1,'2023-03-09',0,NULL,1),(52,33,'挂号费',1,20,20,2,'2023-03-09',NULL,NULL,NULL),(53,34,'阿莫西林',1,30,30,0,'2022-12-26',NULL,NULL,NULL),(54,37,'板蓝根',5,30,150,0,'2023-03-17',NULL,NULL,NULL),(55,37,'阿莫西林',5,30,150,0,'2023-03-17',NULL,NULL,NULL),(56,36,'板蓝根',5,30,150,0,'2023-03-17',NULL,NULL,NULL),(57,36,'阿莫西林',2,30,60,0,'2023-03-17',NULL,NULL,NULL),(58,37,'挂号费',1,30,30,2,'2023-03-17',NULL,NULL,NULL),(61,38,'板蓝根',1,30,30,0,'2023-03-20',NULL,NULL,NULL),(62,46,'ct',1,100,100,1,'2023-03-27',1,NULL,0);
/*!40000 ALTER TABLE `cashier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkup`
--

DROP TABLE IF EXISTS `checkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkup` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `registerid` int DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  KEY `fk_rid` (`registerid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkup`
--

LOCK TABLES `checkup` WRITE;
/*!40000 ALTER TABLE `checkup` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `departmentId` int NOT NULL AUTO_INCREMENT,
  `department` varchar(300) NOT NULL,
  PRIMARY KEY (`departmentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (7,'内科'),(8,'外科');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctorId` int NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(300) NOT NULL,
  `departmentId` int NOT NULL,
  `registeredId` int NOT NULL,
  `dstate` int DEFAULT NULL,
  `amStartTime` varchar(10) DEFAULT '8:00',
  `amEndTime` varchar(10) DEFAULT '12:00',
  `pmStartTime` varchar(10) DEFAULT '14:00',
  `pmEndTime` varchar(10) DEFAULT '18:00',
  PRIMARY KEY (`doctorId`) USING BTREE,
  KEY `fk_department` (`departmentId`) USING BTREE,
  KEY `fk_registeredtype` (`registeredId`) USING BTREE,
  CONSTRAINT `fk_department` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_registeredtype` FOREIGN KEY (`registeredId`) REFERENCES `registeredtype` (`registeredid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (13,'医生a',7,5,0,'8:00','12:00','14:00','18:00'),(14,'黄梓成',7,6,0,'8:00','12:00','14:00','18:00'),(15,'医生b',7,5,1,'8:00','12:00','14:00','18:00'),(16,'医生c',8,5,1,'8:00','12:00','14:00','18:00');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugdictionary`
--

DROP TABLE IF EXISTS `drugdictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugdictionary` (
  `drugId` int NOT NULL AUTO_INCREMENT,
  `drugName` varchar(50) NOT NULL,
  `unitId` int NOT NULL,
  `sellingPrice` double NOT NULL,
  `areaId` int NOT NULL,
  `typeId` int NOT NULL,
  PRIMARY KEY (`drugId`) USING BTREE,
  KEY `fk_unitid` (`unitId`) USING BTREE,
  KEY `fk_areaId` (`areaId`) USING BTREE,
  KEY `fk_typeId` (`typeId`) USING BTREE,
  CONSTRAINT `fk_areaId` FOREIGN KEY (`areaId`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_typeId` FOREIGN KEY (`typeId`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_unitid` FOREIGN KEY (`unitId`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugdictionary`
--

LOCK TABLES `drugdictionary` WRITE;
/*!40000 ALTER TABLE `drugdictionary` DISABLE KEYS */;
INSERT INTO `drugdictionary` VALUES (1,'板蓝根',9,30,2,5),(2,'阿莫西林',7,30,1,5);
/*!40000 ALTER TABLE `drugdictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugstore`
--

DROP TABLE IF EXISTS `drugstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugstore` (
  `rugstoreId` int NOT NULL AUTO_INCREMENT,
  `drugstoreName` varchar(100) NOT NULL,
  `supplierId` int DEFAULT NULL,
  `skullId` int DEFAULT NULL,
  `warehouseId` int DEFAULT NULL,
  `unit` int NOT NULL,
  `tradePrice` double NOT NULL,
  `sellingPrice` double NOT NULL,
  `area` int NOT NULL,
  `type` int NOT NULL,
  `produceDate` date NOT NULL,
  `validDate` date NOT NULL,
  `drugstorenum` int NOT NULL,
  `batch` varchar(200) NOT NULL,
  PRIMARY KEY (`rugstoreId`) USING BTREE,
  KEY `fk_supplierId` (`supplierId`) USING BTREE,
  KEY `fk_skullId` (`skullId`) USING BTREE,
  KEY `fk_warehouseId` (`warehouseId`) USING BTREE,
  KEY `fk_dgarea` (`area`) USING BTREE,
  KEY `fk_dgunit` (`unit`) USING BTREE,
  KEY `fk_dtype` (`type`) USING BTREE,
  CONSTRAINT `fk_dgarea` FOREIGN KEY (`area`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_dgunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`),
  CONSTRAINT `fk_dtype` FOREIGN KEY (`type`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_skullId` FOREIGN KEY (`skullId`) REFERENCES `skull` (`skullid`),
  CONSTRAINT `fk_supplierId` FOREIGN KEY (`supplierId`) REFERENCES `upplier` (`supplierid`),
  CONSTRAINT `fk_warehouseId` FOREIGN KEY (`warehouseId`) REFERENCES `warehuose` (`warehouseid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugstore`
--

LOCK TABLES `drugstore` WRITE;
/*!40000 ALTER TABLE `drugstore` DISABLE KEYS */;
INSERT INTO `drugstore` VALUES (1,'板蓝根',5,4,2,9,10,30,4,5,'2023-03-09','2024-03-09',30000,'2023321'),(2,'阿莫西林',5,4,2,7,10,30,4,5,'2023-03-21','2024-03-21',70000,'2023321');
/*!40000 ALTER TABLE `drugstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home` (
  `homeId` int NOT NULL AUTO_INCREMENT,
  `homeName` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `carId` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`homeId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (73,'王五','男',22,NULL,NULL),(74,'赵六','男',23,'412823199912242414','17634525258');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitalprice`
--

DROP TABLE IF EXISTS `hospitalprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitalprice` (
  `hospitalpriceid` int NOT NULL AUTO_INCREMENT,
  `registerId` int NOT NULL,
  `durgname` varchar(500) NOT NULL,
  `durgnum` int NOT NULL,
  `repiceprice` double NOT NULL,
  `repicetotal` double NOT NULL,
  `htime` datetime DEFAULT NULL,
  `state` int DEFAULT NULL,
  PRIMARY KEY (`hospitalpriceid`) USING BTREE,
  KEY `fk_registerId` (`registerId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitalprice`
--

LOCK TABLES `hospitalprice` WRITE;
/*!40000 ALTER TABLE `hospitalprice` DISABLE KEYS */;
INSERT INTO `hospitalprice` VALUES (104,12,'开颅手术',1,500,500,'2023-03-09 15:12:26',1),(105,12,'阿莫西林',2,30,60,'2023-03-09 15:13:47',2),(106,13,'板蓝根',1,30,30,'2023-03-09 19:11:44',0);
/*!40000 ALTER TABLE `hospitalprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huishou`
--

DROP TABLE IF EXISTS `huishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huishou` (
  `huishouid` int NOT NULL AUTO_INCREMENT,
  `huishouname` varchar(50) NOT NULL,
  `huishounumber` int NOT NULL,
  `huishoupihao` varchar(50) DEFAULT NULL,
  `jbr` varchar(10) DEFAULT NULL,
  `beizhu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`huishouid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huishou`
--

LOCK TABLES `huishou` WRITE;
/*!40000 ALTER TABLE `huishou` DISABLE KEYS */;
INSERT INTO `huishou` VALUES (5,'阿莫西林',17,'20230309','门诊','有问题，请更换 17盒');
/*!40000 ALTER TABLE `huishou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inhospitaltype`
--

DROP TABLE IF EXISTS `inhospitaltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inhospitaltype` (
  `inhospitalId` int NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int NOT NULL,
  `price` double NOT NULL,
  `bigprojectId` int NOT NULL,
  PRIMARY KEY (`inhospitalId`) USING BTREE,
  KEY `fk_inhospitaltype` (`bigprojectId`) USING BTREE,
  KEY `fk_inhunit` (`unit`) USING BTREE,
  CONSTRAINT `fk_inhospitaltype` FOREIGN KEY (`bigprojectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_inhunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inhospitaltype`
--

LOCK TABLES `inhospitaltype` WRITE;
/*!40000 ALTER TABLE `inhospitaltype` DISABLE KEYS */;
/*!40000 ALTER TABLE `inhospitaltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inoutpatienttype`
--

DROP TABLE IF EXISTS `inoutpatienttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inoutpatienttype` (
  `inoutpatientId` int NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int NOT NULL,
  `bigproJectId` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`inoutpatientId`) USING BTREE,
  KEY `fk_inoutpatienttype` (`bigproJectId`) USING BTREE,
  KEY `fk_intunit` (`unit`) USING BTREE,
  CONSTRAINT `fk_inoutpatienttype` FOREIGN KEY (`bigproJectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_intunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inoutpatienttype`
--

LOCK TABLES `inoutpatienttype` WRITE;
/*!40000 ALTER TABLE `inoutpatienttype` DISABLE KEYS */;
INSERT INTO `inoutpatienttype` VALUES (5,'开颅手术',8,1,500);
/*!40000 ALTER TABLE `inoutpatienttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jilu`
--

DROP TABLE IF EXISTS `jilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jilu` (
  `jiluid` int NOT NULL AUTO_INCREMENT,
  `jiluname` varchar(50) NOT NULL,
  `jilutime` datetime NOT NULL,
  `jilutype` varchar(50) NOT NULL,
  `jilupeople` varchar(20) NOT NULL,
  `jilunumber` int DEFAULT NULL,
  `jilupihao` varchar(50) NOT NULL,
  PRIMARY KEY (`jiluid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jilu`
--

LOCK TABLES `jilu` WRITE;
/*!40000 ALTER TABLE `jilu` DISABLE KEYS */;
INSERT INTO `jilu` VALUES (187,'板蓝根','2023-03-06 14:58:00','常规入库','黄梓成',100,'20230306'),(188,'阿莫西林','2023-03-06 14:58:46','常规入库','黄梓成',30,'20230306'),(189,'阿莫西林','2023-03-06 14:59:42','正常出库','黄梓成',20,'20230306'),(190,'板蓝根','2023-03-06 14:59:49','正常出库','黄梓成',50,'20230306'),(191,'板蓝根','2023-03-06 15:17:48','紧急补给药房','黄梓成',10,'20230306'),(192,'阿莫西林','2023-03-06 15:24:55','正常出库','黄梓成',10,'20230306'),(193,'阿莫西林','2023-03-21 23:12:00','常规入库','黄梓成',50000,'2023321'),(194,'阿莫西林','2023-03-21 23:12:00','常规入库','黄梓成',50000,'2023321'),(199,'阿莫西林','2023-03-27 22:45:02','正常出库','黄梓成',10000,'2023321'),(196,'板蓝根','2023-03-21 23:15:06','常规入库','黄梓成',50000,'2023321'),(197,'阿莫西林','2023-03-21 23:19:14','正常出库','黄梓成',20000,'2023321'),(198,'板蓝根','2023-03-21 23:19:21','正常出库','黄梓成',20040,'2023321');
/*!40000 ALTER TABLE `jilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneytype`
--

DROP TABLE IF EXISTS `moneytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moneytype` (
  `MoneyId` int NOT NULL AUTO_INCREMENT,
  `Moneytype` varchar(300) NOT NULL,
  `Percent` varchar(30) NOT NULL,
  PRIMARY KEY (`MoneyId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneytype`
--

LOCK TABLES `moneytype` WRITE;
/*!40000 ALTER TABLE `moneytype` DISABLE KEYS */;
INSERT INTO `moneytype` VALUES (10,'无','0%'),(11,'城镇社保','30%'),(12,'农村医疗合作社','35%');
/*!40000 ALTER TABLE `moneytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outpatienttype`
--

DROP TABLE IF EXISTS `outpatienttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outpatienttype` (
  `outpatientId` int NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  `unit` int NOT NULL,
  `bigprojectId` int NOT NULL,
  `price` double NOT NULL,
  `ostate` int DEFAULT NULL,
  PRIMARY KEY (`outpatientId`) USING BTREE,
  KEY `fk_outpatienttype` (`bigprojectId`) USING BTREE,
  KEY `fk_outunit` (`unit`) USING BTREE,
  CONSTRAINT `fk_outpatienttype` FOREIGN KEY (`bigprojectId`) REFERENCES `projecttype` (`projectid`),
  CONSTRAINT `fk_outunit` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outpatienttype`
--

LOCK TABLES `outpatienttype` WRITE;
/*!40000 ALTER TABLE `outpatienttype` DISABLE KEYS */;
INSERT INTO `outpatienttype` VALUES (7,'ct',8,2,100,1),(8,'打针',8,2,20,0);
/*!40000 ALTER TABLE `outpatienttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paiban`
--

DROP TABLE IF EXISTS `paiban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paiban` (
  `paiId` int NOT NULL AUTO_INCREMENT,
  `one` varchar(50) DEFAULT '无班',
  `two` varchar(50) DEFAULT '无班',
  `three` varchar(50) DEFAULT '无班',
  `four` varchar(50) DEFAULT '无班',
  `five` varchar(50) DEFAULT '无班',
  `six` varchar(50) DEFAULT '无班',
  `seven` varchar(50) DEFAULT '无班',
  `doctorId` int DEFAULT NULL,
  PRIMARY KEY (`paiId`) USING BTREE,
  KEY `fk_paiId` (`doctorId`) USING BTREE,
  CONSTRAINT `fk_paiId` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`doctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paiban`
--

LOCK TABLES `paiban` WRITE;
/*!40000 ALTER TABLE `paiban` DISABLE KEYS */;
INSERT INTO `paiban` VALUES (12,'有班','有班','有班','有班','有班','有班','有班',16),(13,'有班','有班','有班','有班','有班','有班','有班',15),(14,'有班','有班','有班','有班','有班','有班','有班',14),(15,'有班','有班','有班','有班','有班','有班','有班',13);
/*!40000 ALTER TABLE `paiban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay` (
  `payid` int NOT NULL AUTO_INCREMENT,
  `registerid` int DEFAULT NULL,
  `money` double DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  PRIMARY KEY (`payid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay`
--

LOCK TABLES `pay` WRITE;
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
INSERT INTO `pay` VALUES (9,12,10,'2023-03-09 15:13:09'),(10,13,10,'2023-03-09 09:44:56'),(11,13,1111,'2023-03-15 23:11:24'),(12,13,50000,'2023-03-27 16:44:38');
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `pharmacyId` int NOT NULL AUTO_INCREMENT,
  `pharmacyName` varchar(50) NOT NULL,
  `drugstoreId` int DEFAULT NULL,
  `skullId` int DEFAULT NULL,
  `warehouseId` int DEFAULT NULL,
  `unit` int NOT NULL,
  `sellingPrice` double NOT NULL,
  `area` int NOT NULL,
  `type` int NOT NULL,
  `produceDate` date NOT NULL,
  `validDate` date NOT NULL,
  `drugstorenum` int NOT NULL,
  `skullbatch` varchar(200) NOT NULL,
  PRIMARY KEY (`pharmacyId`) USING BTREE,
  KEY `fk_drugstoreIdp` (`drugstoreId`) USING BTREE,
  KEY `fk_skullIdp` (`skullId`) USING BTREE,
  KEY `fk_warehouseIdp` (`warehouseId`) USING BTREE,
  KEY `fk_dgareap` (`area`) USING BTREE,
  KEY `fk_unitp` (`unit`) USING BTREE,
  KEY `fk_typep` (`type`) USING BTREE,
  CONSTRAINT `fk_dgareap` FOREIGN KEY (`area`) REFERENCES `area` (`areaId`),
  CONSTRAINT `fk_drugstoreIdp` FOREIGN KEY (`drugstoreId`) REFERENCES `drugstore` (`rugstoreId`),
  CONSTRAINT `fk_skullIdp` FOREIGN KEY (`skullId`) REFERENCES `skull` (`skullid`),
  CONSTRAINT `fk_typep` FOREIGN KEY (`type`) REFERENCES `type` (`typeid`),
  CONSTRAINT `fk_unitp` FOREIGN KEY (`unit`) REFERENCES `unit` (`unitid`),
  CONSTRAINT `fk_warehouseIdp` FOREIGN KEY (`warehouseId`) REFERENCES `warehuose` (`warehouseid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES (1,'板蓝根',NULL,4,2,9,30,4,5,'2023-03-06','2024-03-06',20074,'20230306'),(2,'阿莫西林',NULL,4,2,7,30,4,5,'2023-03-21','2024-03-21',30000,'2023321');
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projecttype`
--

DROP TABLE IF EXISTS `projecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projecttype` (
  `projectId` int NOT NULL AUTO_INCREMENT,
  `projectName` varchar(300) NOT NULL,
  PRIMARY KEY (`projectId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projecttype`
--

LOCK TABLES `projecttype` WRITE;
/*!40000 ALTER TABLE `projecttype` DISABLE KEYS */;
INSERT INTO `projecttype` VALUES (1,'住院医疗综合服务类'),(2,'门诊医疗综合服务类');
/*!40000 ALTER TABLE `projecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `registerid` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `age` int NOT NULL,
  `sex` varchar(20) NOT NULL,
  `department` int NOT NULL,
  `doctor` int NOT NULL,
  `diagnose` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Idcard` varchar(60) DEFAULT NULL,
  `registerDate` datetime DEFAULT NULL,
  `bedNum` int DEFAULT NULL,
  `Operator` varchar(200) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `state` int DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `price` double unsigned DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `zhuan` datetime DEFAULT NULL,
  PRIMARY KEY (`registerid`) USING BTREE,
  KEY `fk_regdepartment` (`department`) USING BTREE,
  KEY `fk_regdoctor` (`doctor`) USING BTREE,
  CONSTRAINT `fk_regdepartment` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_regdoctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (12,'患者a',25,'男',7,13,'脑部肿瘤','河南','15565792390','412827199605062586','2023-03-09 15:11:17',9,'门诊',10010,1,'2023-03-09 15:14:05',392,'30%',NULL),(13,'患者b',24,'男',7,13,'良好','湖南','13271678052','412702199902080557','2023-03-09 09:39:50',9,'超级管理员',52121,0,NULL,NULL,'35%',NULL);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registeredtype`
--

DROP TABLE IF EXISTS `registeredtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registeredtype` (
  `registeredId` int NOT NULL AUTO_INCREMENT,
  `type` varchar(300) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`registeredId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeredtype`
--

LOCK TABLES `registeredtype` WRITE;
/*!40000 ALTER TABLE `registeredtype` DISABLE KEYS */;
INSERT INTO `registeredtype` VALUES (5,'普通挂号',20),(6,'专家号',30);
/*!40000 ALTER TABLE `registeredtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `reportId` int NOT NULL AUTO_INCREMENT,
  `reportName` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `department` int DEFAULT NULL,
  `doctor` int DEFAULT NULL,
  `reportType` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `users` varchar(100) DEFAULT NULL,
  `state` int DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `carid` varchar(100) NOT NULL,
  `zhuan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`reportId`) USING BTREE,
  KEY `fk_departmentr` (`department`) USING BTREE,
  KEY `fk_doctor` (`doctor`) USING BTREE,
  KEY `fk_reportType` (`reportType`) USING BTREE,
  CONSTRAINT `fk_departmentr` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentId`),
  CONSTRAINT `fk_doctor` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctorId`),
  CONSTRAINT `fk_reportType` FOREIGN KEY (`reportType`) REFERENCES `registeredtype` (`registeredId`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (28,'患者a','男',20,7,14,6,30,'2023-03-15 14:00:00','超级管理员',3,'13183380740','412827199807156595','头痛，发烧'),(29,'患者b','男',20,7,14,6,30,'2023-03-15 15:04:50','门诊',5,'15565792390','412827199605062586','脑部肿瘤'),(30,'患者c','男',20,7,14,6,30,'2023-03-15 14:00:00','超级管理员',3,'13183380740','412369199512023695','头痛'),(31,'患者d','男',12,7,13,5,20,'2023-03-15 09:16:47','超级管理员',5,'13271678052','412702199902080557','良好'),(32,'患者e','男',22,7,13,5,20,'2023-03-15 11:03:22','超级管理员',3,'19157472402','440981199909255555','头疼'),(33,'患者f','女',22,7,13,5,20,'2023-03-15 13:27:34','超级管理员',3,'19154742514','444444444444444444','脑子不太行'),(34,'患者g','男',1,7,13,5,20,'2023-03-16 22:49:33','超级管理员',0,'13666666666','140000000000000000','测试'),(35,'患者h','男',1,7,13,5,20,'2023-03-16 02:44:05','超级管理员',4,'13666666668','140111111111111111','头痛'),(36,'患者01','男',30,7,14,6,30,'2023-03-17 02:44:05','门诊',0,'13713772365','442036522819191635','aaa\n'),(37,'患者02','男',25,7,14,6,30,'2023-03-17 10:57:48','超级管理员',3,'13713770876','990909888787878654','牛奶喝多了胃胀气'),(38,'患者a','男',22,7,13,5,20,'2023-03-20 16:14:11','超级管理员',0,'13713770229','225463599854645895','腹泻'),(39,'测试患者','男',33,7,14,6,30,'2023-03-21 15:38:58','超级管理员',0,'14514553662','778787999876675625',NULL),(40,'1','男',1,7,14,6,30,'2023-03-22 15:42:37','超级管理员',0,'12356555855','445696988525256120',NULL),(41,'张三','男',12,7,14,6,30,'2023-03-21 15:59:13','超级管理员',0,'14514553662','558989655214548568','测试'),(42,'1','男',12,7,14,6,30,'2023-03-21 16:11:22','超级管理员',0,'13659599665','115365966595959485',NULL),(43,'测试患者','男',12,7,14,6,30,'2023-03-21 16:25:29','超级管理员',0,'12321334223','778787888787878987',NULL),(44,'ss','男',23,7,14,6,30,'2023-03-21 16:27:41','超级管理员',0,'15915995120','440306222545454688',NULL),(45,'a','男',18,7,14,6,30,'2023-03-22 00:00:00','超级管理员',0,'12525665885','445859662545455655',NULL),(46,'22','男',22,7,14,6,30,'2023-03-27 00:00:00','超级管理员',0,'12312334223','444444444444444444','11');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skull`
--

DROP TABLE IF EXISTS `skull`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skull` (
  `skullId` int NOT NULL AUTO_INCREMENT,
  `skullName` varchar(300) NOT NULL,
  PRIMARY KEY (`skullId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skull`
--

LOCK TABLES `skull` WRITE;
/*!40000 ALTER TABLE `skull` DISABLE KEYS */;
INSERT INTO `skull` VALUES (1,'黄梓成'),(2,'药品管理员'),(3,'药房护士'),(4,'门诊管理员'),(5,'临时管理员');
/*!40000 ALTER TABLE `skull` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `spread` int DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `available` int DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'医院管理系统','',1,NULL,'&#xe68e;',1),(2,1,'患者就诊','',0,NULL,'&#xe653;',1),(3,1,'住院管理','',0,NULL,'&#xe663;',1),(4,1,'系统管理','',0,'','&#xe716;',1),(6,2,'用户挂号','../cao/index',0,NULL,'&#xe770;',1),(7,2,'开设处方','../caocc/cc',0,NULL,'&#xe657;',1),(8,3,'入院登记','../liao/admin',0,NULL,'&#xe65b;',1),(9,3,'预交金缴费','../liao/pay',0,NULL,'&#xe6b2;',1),(11,3,'开设医嘱','../liao/drug',0,NULL,'&#xe705;',1),(14,4,'用户管理','../toLoadAllUser',0,NULL,'&#xe770;',1),(15,1,'医院管理',NULL,0,NULL,'&#xe653;',1),(27,2,'开设检查','../caoout/xiang',0,NULL,'&#xe60a;',1),(28,2,'项目缴费','../xpay/xiangpay',0,NULL,'&#xe65e;',1),(29,51,'查询药品仓库','../dsnavigation/pharymacyhtml',0,NULL,'&#xe656;',1),(30,54,'库房药品查询','../dsnavigation/selectdurg',0,NULL,'&#xe65a;',1),(31,54,'药品入库','../dsnavigation/beputinstorage',0,NULL,'&#xe654;',1),(32,51,'药品日期报警','../dsnavigation/seldrugDate',0,NULL,'&#xe664;',1),(33,51,'药品报缺','../dsnavigation/selectless',0,NULL,'&#xe702;\n',1),(34,54,'药品出库','../dsnavigation/selectchuku',0,NULL,'&#xe65c;',1),(35,54,'药品信息','../toDrugdictionary',0,NULL,'&#xe63c;',1),(36,15,'医生排班','../toPaiban',0,NULL,'&#xe613;',1),(37,15,'医生对比','../toDoctorDuibi',0,NULL,'&#xe62d;',1),(38,51,'药品信息','../toDrugdictionary',0,NULL,'&#xe63c;',1),(39,15,'项目总揽','../toProjectTypeManage',0,NULL,'&#xe63c;',1),(40,15,'年度报告','../toReportFinance',0,NULL,'&#xe62c;',1),(41,57,'角色菜单管理','../toLoadAllRole',0,NULL,'&#xe66f;',1),(42,15,'医生管理','../toDoctor',0,NULL,'&#xe770;',1),(43,15,'科室管理','../toDepartments',0,NULL,'&#xe629;',1),(44,57,'菜单管理','../toMenuManager',0,NULL,'&#xe716;',1),(45,51,'药品类型管理','../toType',0,NULL,'&#xe60a;',1),(46,54,'经办人管理','../toSkull',0,NULL,'&#xe612;',1),(47,54,'供货商管理','../toSupply',0,NULL,'&#xe613;',1),(48,51,'单位管理','../toUnit',0,NULL,'&#xe62d;',1),(49,3,'开设检查','../liao/item',0,NULL,'&#xe705;',1),(51,1,'医院药房管理','',0,NULL,'&#xe705;',1),(52,54,'药品操作记录','../dsnavigation/record',0,NULL,'&#xe60e;',1),(53,2,'项目检查','../xpay/seljian',0,NULL,'&#xe674;',1),(54,1,'仓库药品管理',NULL,0,NULL,'&#xe632;',1),(55,1,'药品分发',NULL,0,NULL,'&#xe609;',1),(56,3,'项目检查','../xpay/seljian',0,NULL,'&#xe674;',1),(57,1,'菜单管理',NULL,0,NULL,'&#xe631;',1),(64,2,'药品缴费','../caoout/out',0,NULL,'&#xe65e;',1),(69,2,'门诊患者库','../caotake/haun',0,NULL,'&#xe66f;',1),(72,55,'门诊取药','../caotake/seltake',0,NULL,'&#xe857;',1),(73,55,'住院取药','../liao/pharmacy',0,NULL,'&#xe63c;',1),(86,3,'出院结算','../liao/leave',0,NULL,'&#xe65a;',1),(88,15,'挂号类型管理','../toRegisteredType',0,NULL,'&#xe60a;',1),(89,54,'仓库管理','../toWarehuose',0,NULL,'&#xe620;',1),(90,57,'菜单修改','../toMenuRight',0,NULL,'&#xe857;',1),(91,57,'标签图标浏览','../icon',0,NULL,'&#xe67b;',1),(92,96,'住院部年度统计','../toBing2',0,NULL,'&#xe630;',1),(93,96,'住院收入统计','../toZhuYaunManage',0,NULL,'&#xe62c;',1),(94,1,'患者加号',NULL,0,NULL,'&#xe61f;',1),(95,94,'患者挂号','../cao/index',0,NULL,'&#xe679;',1),(96,1,'住院统计',NULL,0,NULL,'&#xe857;',1),(97,1,'患者挂号',NULL,0,NULL,'&#xe66f;',1),(98,97,'患者挂号','../cao/index',0,NULL,'&#xe770;',1),(99,1,'门诊缴费',NULL,0,NULL,'&#xe698;',1),(100,99,'项目缴费','../xpay/xiangpay',0,NULL,'&#xe65e;',1),(101,99,'药品缴费','../caoout/out',0,NULL,'&#xe65e;',1),(102,1,'住院缴费',NULL,0,NULL,'&#xe657;',1),(103,102,'住院预交金','../liao/pay',0,NULL,'&#xe6b2;',1),(104,102,'出院结算','../liao/leave',0,NULL,'&#xe65a;',1),(105,2,'今日门诊统计','../toCurrent',0,NULL,'&#xe60a;',1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `roleid` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `roledesc` varchar(255) DEFAULT NULL,
  `available` int DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','拥有所有菜单权限',1),(2,'门诊医师','拥有门诊的挂号以及看病权限',1),(3,'住院医师','拥有住院开医嘱以及检查的权限',1),(4,'医院综合','拥有医院对患者看病的所有权限',1),(5,'收费站','拥有患者挂号以及患者缴费的权限',1),(6,'药品管理员','拥有药品分发以及药品管理的权限',1),(7,'药品分发员','拥有药品分发的权限',1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `rid` int NOT NULL,
  `mid` int NOT NULL,
  PRIMARY KEY (`rid`,`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1),(1,2),(1,3),(1,4),(1,6),(1,7),(1,8),(1,9),(1,11),(1,14),(1,15),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,64),(1,69),(1,72),(1,73),(1,86),(1,88),(1,89),(1,90),(1,91),(1,92),(1,93),(1,96),(1,105),(2,1),(2,2),(2,7),(2,27),(2,53),(2,69),(2,94),(2,95),(2,105),(3,3),(3,8),(3,9),(3,11),(3,49),(3,56),(3,86),(3,92),(3,93),(3,96),(4,1),(4,2),(4,3),(4,7),(4,8),(4,9),(4,11),(4,27),(4,28),(4,49),(4,53),(4,55),(4,56),(4,64),(4,69),(4,72),(4,73),(4,86),(4,92),(4,93),(4,96),(4,97),(4,98),(4,99),(4,100),(4,101),(4,102),(4,103),(4,104),(4,105),(5,97),(5,98),(5,99),(5,100),(5,101),(5,102),(5,103),(5,104),(6,29),(6,30),(6,31),(6,32),(6,33),(6,34),(6,35),(6,38),(6,51),(6,52),(6,54),(6,55),(6,72),(6,73),(7,55),(7,72),(7,73);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_user`
--

DROP TABLE IF EXISTS `sys_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_user` (
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`uid`,`rid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_user`
--

LOCK TABLES `sys_role_user` WRITE;
/*!40000 ALTER TABLE `sys_role_user` DISABLE KEYS */;
INSERT INTO `sys_role_user` VALUES (1,1),(2,2),(28,2),(28,3),(28,5),(28,7),(29,3),(30,5),(31,6),(32,7);
/*!40000 ALTER TABLE `sys_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` int DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `type` int DEFAULT '2' COMMENT '1，超级管理员,2，系统用户',
  `available` int DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','440306200105050315','超级管理员',22,'广东省广州市花都区城市理工学院','13456489201','7644ae7ea09187c96d21d2677529a4f1','超管',1,1,'c4b608'),(2,'mz','440306199905210324','门诊医师',22,'广东省广州市花都区城市理工学院','13456489202','45f06e8c979af441bf1b34d4d7170c25','门诊医师',3,1,'613a58'),(28,'xxzh','412827199807156565','学校综合',1,'广东省广州市花都区城市理工学院','13456489203','91e2bc737fce28ba05de612a6ef2c99e','门诊综合',2,1,'44ffac'),(29,'zy','440306199905210324','住院医师',22,'广东省广州市花都区城市理工学院','13456489204','557082c5a5f83e9dac5aa9e02b14565a','住院医师',2,1,'734e7e'),(30,'sf','440306199905210324','收费站',22,'广东省广州市花都区城市理工学院','13456489205','43044f6e6e19faa9e24b931cbabeeff7','收费站',2,1,'e7b1bb'),(31,'ypgl','440306199905210324','药品管理员',1,'广东省广州市花都区城市理工学院','13754985206','64eabbe91af557ba1f8a656753e1f0e6','药品管理员',2,1,'528f0e'),(32,'yf','440306199905210324','药品分发员',1,'广东省广州市花都区城市理工学院','13456489207','aad4cc0482453e65ecbe8ca8cae06267','药品分发员',2,1,'790700');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `typeId` int NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) NOT NULL,
  PRIMARY KEY (`typeId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (5,'西药'),(6,'中药');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `unitId` int NOT NULL AUTO_INCREMENT,
  `unitName` varchar(50) NOT NULL,
  PRIMARY KEY (`unitId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (7,'盒'),(8,'次'),(9,'袋');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upplier`
--

DROP TABLE IF EXISTS `upplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upplier` (
  `supplierId` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(300) NOT NULL,
  `supplierPhone` varchar(100) DEFAULT NULL,
  `supplierAddress` varchar(300) DEFAULT NULL,
  `state` int DEFAULT NULL,
  PRIMARY KEY (`supplierId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upplier`
--

LOCK TABLES `upplier` WRITE;
/*!40000 ALTER TABLE `upplier` DISABLE KEYS */;
INSERT INTO `upplier` VALUES (1,'德尔宝（Derbio）医药供应商',NULL,NULL,0),(2,'马克斯·普朗克（Max Planck）药品公司',NULL,NULL,0),(3,'嘉事堂',NULL,NULL,0),(4,'人民同泰',NULL,NULL,0),(5,'春天大药房 ',NULL,NULL,0),(6,'瑞康医药',NULL,NULL,0);
/*!40000 ALTER TABLE `upplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehuose`
--

DROP TABLE IF EXISTS `warehuose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehuose` (
  `warehouseId` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(300) NOT NULL,
  PRIMARY KEY (`warehouseId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehuose`
--

LOCK TABLES `warehuose` WRITE;
/*!40000 ALTER TABLE `warehuose` DISABLE KEYS */;
INSERT INTO `warehuose` VALUES (2,'仓库');
/*!40000 ALTER TABLE `warehuose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29 20:36:29
