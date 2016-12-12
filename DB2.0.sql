-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mis
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `cf_customer`
--

DROP TABLE IF EXISTS `cf_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `contactName` varchar(255) DEFAULT NULL,
  `contactTitle` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_customer`
--

LOCK TABLES `cf_customer` WRITE;
/*!40000 ALTER TABLE `cf_customer` DISABLE KEYS */;
INSERT INTO `cf_customer` VALUES (1,'wgwgwge444444444','fewfewf44','gwegwge','wgwgwg','gewg','aaa','weg','','',''),(2,'IIIIIFFFEEE','谢略','稻米','4545','广州',NULL,'4444',NULL,NULL,NULL),(3,'Alfreds Futterkiste','Maria Anders','Sales Representative','Obere Str. 57','Berlin',NULL,'12209','Germany','030-0074321','030-0076545'),(4,'Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','Avda. de la Constitución 2222','México D.F.','122','05021','Mexico','(5) 555-4729','(5) 555-3745'),(5,'Antonio Moreno Taquería','Antonio Moreno','Owner','Mataderos  2312','México D.F.',NULL,'05023','Mexico','(5) 555-3932',NULL),(7,'Berglunds snabbköp','Christina Berglund','Order Administrator','Berguvsvägen  8','Luleå',NULL,'S-958 22','Sweden','0921-12 34 65','0921-12 34 67'),(8,'Blauer See Delikatessen','Hanna Moos','Sales Representative','Forsterstr. 57','Mannheim',NULL,'68306','Germany','0621-08460','0621-08924'),(9,'Blondel père et fils','Frédérique Citeaux','Marketing Manager','24, place Kléber','Strasbourg',NULL,'67000','France','88.60.15.31','88.60.15.32'),(10,'Bólido Comidas preparadas','Martín Sommer','Owner','C/ Araquil, 67','Madrid',NULL,'28023','Spain','(91) 555 22 82','(91) 555 91 99'),(11,'Bon app\'','Laurence Lebihan','Owner','12, rue des Bouchers','Marseille',NULL,'13008','France','91.24.45.40','91.24.45.41'),(13,'B\'s Beverages','Victoria Ashworth','Sales Representative','Fauntleroy Circus','London',NULL,'EC2 5NT','UK','(171) 555-1212',NULL),(14,'Cactus Comidas para llevar','Patricio Simpson','Sales Agent','Cerrito 333','Buenos Aires',NULL,'1010','Argentina','(1) 135-5555','(1) 135-4892'),(16,'Chop-suey Chinese','Yang Wang','Owner','Hauptstr. 29','Bern',NULL,'3012','Switzerland','0452-076545',NULL),(18,'Consolidated Holdings','Elizabeth Brown','Sales Representative','Berkeley Gardens\r\n12  Brewery ','London',NULL,'WX1 6LT','UK','(171) 555-2282','(171) 555-9199'),(19,'Drachenblut Delikatessen','Sven Ottlieb','Order Administrator','Walserweg 21','Aachen',NULL,'52066','Germany','0241-039123','0241-059428'),(20,'Du monde entier','Janine Labrune','Owner','67, rue des Cinquante Otages','Nantes',NULL,'44000','France','40.67.88.88','40.67.89.89'),(21,'Eastern Connection','Ann Devon','Sales Agent','35 King George','London',NULL,'WX3 6FW','UK','(171) 555-0297','(171) 555-3373'),(22,'Ernst Handel','Roland Mendel','Sales Manager','Kirchgasse 6','Graz',NULL,'8010','Austria','7675-3425','7675-3426'),(23,'Familia Arquibaldo','Aria Cruz','Marketing Assistant','Rua Orós, 92','São Paulo','SP','05442-030','Brazil','(11) 555-9857',NULL),(24,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Accounting Manager','C/ Moralzarzal, 86','Madrid',NULL,'28034','Spain','(91) 555 94 44','(91) 555 55 93'),(25,'Folies gourmandes','Martine Rancé','Assistant Sales Agent','184, chaussée de Tournai','Lille',NULL,'59000','France','20.16.10.16','20.16.10.17'),(26,'Folk och fä HB','Maria Larsson','Owner','Åkergatan 24','Bräcke',NULL,'S-844 67','Sweden','0695-34 67 21',NULL),(27,'Frankenversand','Peter Franken','Marketing Manager','Berliner Platz 43','München',NULL,'80805','Germany','089-0877310','089-0877451'),(28,'France restauration','Carine Schmitt','Marketing Manager','54, rue Royale','Nantes',NULL,'44000','France','40.32.21.21','40.32.21.20'),(29,'Franchi S.p.A.','Paolo Accorti','Sales Representative','Via Monte Bianco 34','Torino',NULL,'10100','Italy','011-4988260','011-4988261'),(30,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez ','Sales Manager','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal','(1) 354-2534','(1) 354-2535'),(31,'Galería del gastrónomo','Eduardo Saavedra','Marketing Manager','Rambla de Cataluña, 23','Barcelona',NULL,'08022','Spain','(93) 203 4560','(93) 203 4561'),(32,'Godos Cocina Típica','José Pedro Freyre','Sales Manager','C/ Romero, 33','Sevilla',NULL,'41101','Spain','(95) 555 82 82',NULL),(33,'Gourmet Lanchonetes','André Fonseca','Sales Associate','Av. Brasil, 442','Campinas','SP','04876-786','Brazil','(11) 555-9482',NULL),(34,'Great Lakes Food Market','Howard Snyder','Marketing Manager','2732 Baker Blvd.','Eugene','OR','97403','USA','(503) 555-7555',NULL),(35,'GROSELLA-Restaurante','Manuel Pereira','Owner','5ª Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','(2) 283-2951','(2) 283-3397'),(36,'Hanari Carnes','Mario Pontes','Accounting Manager','Rua do Paço, 67','Rio de Janeiro','RJ','05454-876','Brazil','(21) 555-0091','(21) 555-8765'),(37,'HILARIÓN-Abastos','Carlos Hernández','Sales Representative','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','5022','Venezuela','(5) 555-1340','(5) 555-1948'),(38,'Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','City Center Plaza\r\n516 Main St.','Elgin','OR','97827','USA','(503) 555-6874','(503) 555-2376'),(39,'11','','','','1223','','','','','');
/*!40000 ALTER TABLE `cf_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_privilege`
--

DROP TABLE IF EXISTS `cf_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PrivilegeOperation` varchar(50) DEFAULT NULL,
  `RecordStatus` varchar(50) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `Icon` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_privilege`
--

LOCK TABLES `cf_privilege` WRITE;
/*!40000 ALTER TABLE `cf_privilege` DISABLE KEYS */;
INSERT INTO `cf_privilege` VALUES (1,'菜单','Menu',0,NULL,'0',NULL,'0'),(2,'按钮','Button',0,NULL,'0',NULL,'0'),(3,'基础信息管理','BaseManage',1,NULL,'0',NULL,'0'),(4,'客户管理','CustomerManage',1,NULL,'0',NULL,'0'),(5,'组织架构','OrganizationalMenu',1,NULL,'0',NULL,'0'),(6,'系统管理','SystemrManage',1,NULL,'亚父',NULL,'0'),(7,'组织架构','OrganizationalBtn',2,NULL,'亚父',NULL,'0'),(8,'权限中心','Center',2,NULL,'亚父',NULL,'0'),(11,'类别','BaseManageType',3,NULL,'3','类别','0'),(12,'产品','BaseManageProduct',3,NULL,'3','产品','0'),(13,'供应商','BaseManageSupplier',3,NULL,'3','供应商','0'),(14,'员工','BaseManageStaff',3,NULL,'3','员工','0'),(15,'客户','CustomerManageCu',4,NULL,'3','客户','customerManage'),(16,'权限中心','SystemrManageCenter',6,NULL,'3','权限中心','privilege_menu2'),(17,'角色','OrganizationalRole',5,NULL,'3','角色','role_menu'),(18,'用户','OrganizationalUser',5,NULL,'3','用户','usermenu'),(21,'查看用户','CenterViewUer',8,NULL,'',NULL,'0'),(22,'查看角色','CenterViewRole',8,NULL,NULL,NULL,'0'),(23,'分配权限','CenterPermitPri',8,NULL,NULL,NULL,'0'),(24,'禁用权限','CenterForbidPri',8,NULL,NULL,NULL,'0'),(25,'用户-新增','UserAdd',7,NULL,NULL,NULL,'0'),(26,'用户-修改','UserUpdate',7,NULL,NULL,NULL,'0'),(27,'用户-删除','UserDelete',7,NULL,NULL,NULL,'0'),(28,'角色-新增','RoleAdd',7,NULL,NULL,NULL,'0'),(29,'角色-删除','RoleDelete',7,NULL,NULL,NULL,'0'),(30,'角色-修改','RoleUpdate',7,NULL,NULL,NULL,'0'),(31,'菜单权限','MenuPermissions',6,NULL,NULL,NULL,'privilege_menu1'),(32,'部门','Department',5,NULL,NULL,NULL,'dept_menu');
/*!40000 ALTER TABLE `cf_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_privilege_list`
--

DROP TABLE IF EXISTS `cf_privilege_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_privilege_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PrivilegeAccess` varchar(50) DEFAULT NULL,
  `PrivilegeAccessKey` int(11) DEFAULT NULL,
  `PrivilegeMaster` varchar(50) DEFAULT NULL,
  `PrivilegeMasterKey` int(11) DEFAULT NULL,
  `toId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_privilege_list`
--

LOCK TABLES `cf_privilege_list` WRITE;
/*!40000 ALTER TABLE `cf_privilege_list` DISABLE KEYS */;
INSERT INTO `cf_privilege_list` VALUES (1,'permit',NULL,'role',1,1),(2,'permit',NULL,'role',1,2),(3,'permit',NULL,'role',1,3),(4,'permit',NULL,'role',1,4),(5,'permit',NULL,'role',1,5),(6,'permit',NULL,'role',1,6),(7,'permit',NULL,'role',1,7),(8,'permit',NULL,'role',1,8),(9,'permit',NULL,'role',1,9),(10,'permit',NULL,'role',1,10),(11,'permit',NULL,'role',1,11),(12,'permit',NULL,'role',1,12),(13,'permit',NULL,'role',1,13),(14,'permit',NULL,'role',1,14),(15,'permit',NULL,'role',1,15),(16,'permit',NULL,'role',1,16),(17,'permit',NULL,'role',1,17),(18,'permit',NULL,'role',1,18),(19,'permit',NULL,'role',1,19),(20,'permit',NULL,'role',1,20),(21,'permit',NULL,'role',1,21),(22,'permit',NULL,'role',1,22),(23,'permit',NULL,'role',1,23),(24,'permit',NULL,'role',1,24),(25,'permit',NULL,'role',1,25),(26,'permit',NULL,'role',1,26),(27,'permit',NULL,'role',1,27),(28,'permit',NULL,'role',1,28),(29,'permit',NULL,'role',1,29),(30,'permit',NULL,'role',1,30),(31,'permit',NULL,'role',1,31),(32,'permit',NULL,'role',1,32);
/*!40000 ALTER TABLE `cf_privilege_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_role`
--

DROP TABLE IF EXISTS `cf_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleDesc` varchar(255) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_role`
--

LOCK TABLES `cf_role` WRITE;
/*!40000 ALTER TABLE `cf_role` DISABLE KEYS */;
INSERT INTO `cf_role` VALUES (1,'拥有所有的权限','高级管理员');
/*!40000 ALTER TABLE `cf_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_user`
--

DROP TABLE IF EXISTS `cf_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(50) NOT NULL,
  `LoginPassword` varchar(50) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_user`
--

LOCK TABLES `cf_user` WRITE;
/*!40000 ALTER TABLE `cf_user` DISABLE KEYS */;
INSERT INTO `cf_user` VALUES (1,'test1','123','测试账号');
/*!40000 ALTER TABLE `cf_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_userrole`
--

DROP TABLE IF EXISTS `cf_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_userrole`
--

LOCK TABLES `cf_userrole` WRITE;
/*!40000 ALTER TABLE `cf_userrole` DISABLE KEYS */;
INSERT INTO `cf_userrole` VALUES (1,1,1);
/*!40000 ALTER TABLE `cf_userrole` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-12 20:43:04
