-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mis
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `cf_privilege`
--

DROP TABLE IF EXISTS `cf_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_privilege` (
  `PrivilegeID` int(11) NOT NULL,
  `PrivilegeMaster` varchar(50) DEFAULT NULL,
  `PrivilegeMasterKey` int(11) DEFAULT NULL,
  `PrivilegeAccess` varchar(50) DEFAULT NULL,
  `PrivilegeAccessKey` int(11) DEFAULT NULL,
  `PrivilegeOperation` varchar(50) DEFAULT NULL,
  `CreateUserID` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `ModifyUserID` int(11) DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  `RecordStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PrivilegeID`),
  KEY `FK_PRI_UorR_idx` (`PrivilegeMasterKey`),
  KEY `FK_PRI_Menu_idx` (`PrivilegeAccessKey`),
  CONSTRAINT `FK_PRI_Button` FOREIGN KEY (`PrivilegeAccessKey`) REFERENCES `sys_button` (`BtnID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PRI_Menu` FOREIGN KEY (`PrivilegeAccessKey`) REFERENCES `sys_menu` (`MenuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PRI_Role` FOREIGN KEY (`PrivilegeMasterKey`) REFERENCES `cf_role` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PRI_Uer` FOREIGN KEY (`PrivilegeMasterKey`) REFERENCES `cf_user` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_privilege`
--

LOCK TABLES `cf_privilege` WRITE;
/*!40000 ALTER TABLE `cf_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_role`
--

DROP TABLE IF EXISTS `cf_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(50) DEFAULT NULL,
  `RoleDesc` varchar(50) DEFAULT NULL,
  `CreateUserID` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `ModifyUserID` int(11) DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  `RecordStatus` longtext,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_role`
--

LOCK TABLES `cf_role` WRITE;
/*!40000 ALTER TABLE `cf_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_user`
--

DROP TABLE IF EXISTS `cf_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_user` (
  `UserID` int(11) NOT NULL,
  `LoginName` longtext,
  `LoginPassword` varchar(50) DEFAULT NULL,
  `DeptID` int(11) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `RealName` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `NickName` varchar(50) DEFAULT NULL,
  `Address` longtext,
  `LastLoginTime` datetime DEFAULT NULL,
  `CreateUserID` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `ModifyUserID` int(11) DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  `RecordStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_user`
--

LOCK TABLES `cf_user` WRITE;
/*!40000 ALTER TABLE `cf_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_userrole`
--

DROP TABLE IF EXISTS `cf_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_userrole` (
  `UserRoleID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `RoleID` int(11) DEFAULT NULL,
  `CreateUserID` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `ModifyUserID` int(11) DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  `RecordStatus` longtext,
  PRIMARY KEY (`UserRoleID`),
  KEY `FK_UR_Uer_idx` (`UserID`),
  KEY `FK_UR_role_idx` (`RoleID`),
  CONSTRAINT `FK_UR_Uer` FOREIGN KEY (`UserID`) REFERENCES `cf_user` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_UR_role` FOREIGN KEY (`RoleID`) REFERENCES `cf_role` (`RoleID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_userrole`
--

LOCK TABLES `cf_userrole` WRITE;
/*!40000 ALTER TABLE `cf_userrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_button`
--

DROP TABLE IF EXISTS `sys_button`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_button` (
  `BtnID` int(11) NOT NULL,
  `BtnName` varchar(50) DEFAULT NULL,
  `BtnNo` varchar(50) DEFAULT NULL,
  `BtnClass` varchar(50) DEFAULT NULL,
  `BtnIcon` varchar(50) DEFAULT NULL,
  `BtnScript` varchar(50) DEFAULT NULL,
  `MenuNo` varchar(50) DEFAULT NULL,
  `InitStatus` varchar(50) DEFAULT NULL,
  `SeqNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`BtnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_button`
--

LOCK TABLES `sys_button` WRITE;
/*!40000 ALTER TABLE `sys_button` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_button` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `MenuID` int(11) NOT NULL,
  `MenuNo` varchar(50) DEFAULT NULL,
  `MenuParentNo` varchar(50) DEFAULT NULL,
  `MenuOrder` int(11) DEFAULT NULL,
  `MenuName` varchar(50) DEFAULT NULL,
  `MenuUrl` varchar(50) DEFAULT NULL,
  `MenuIcon` varchar(50) DEFAULT NULL,
  `IsVisible` int(11) DEFAULT NULL,
  `IsLeaf` int(11) DEFAULT NULL,
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-18 17:23:41
