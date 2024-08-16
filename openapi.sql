-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: openapi
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `interface_info`
--

DROP TABLE IF EXISTS `interface_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interface_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `url` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '接口地址',
  `requestParams` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求参数',
  `requestHeader` text COLLATE utf8mb4_unicode_ci COMMENT '请求头',
  `responseHeader` text COLLATE utf8mb4_unicode_ci COMMENT '响应头',
  `status` int NOT NULL DEFAULT '0' COMMENT '接口状态（0-关闭，1-开启）',
  `method` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求类型',
  `userId` bigint NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除(0-未删, 1-已删)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='接口信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface_info`
--

LOCK TABLES `interface_info` WRITE;
/*!40000 ALTER TABLE `interface_info` DISABLE KEYS */;
INSERT INTO `interface_info` VALUES (1,'许擎宇','薛聪健','www.cary-king.net','石炫明','潘博涛','谭聪健',0,'石炫明',9500534531,'2024-07-02 23:01:34','2024-07-21 18:23:10',1),(2,'陆弘文','白志强','www.leslee-kuhn.net','石炫明','潘懿轩','马鸿涛',1,'陈峻熙',3982575846,'2024-07-02 23:01:34','2024-07-22 07:42:35',0),(3,'毛建辉','罗文','www.rosaria-kilback.io','石炫明','冯子默','彭哲瀚',0,'赵远航',121776355,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(4,'彭雨泽','蔡煜祺','www.norris-bergstrom.biz','石炫明','董思源','田晓博',0,'潘擎宇',740,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(5,'傅志强','陈梓晨','www.jordan-reinger.com','石炫明','金志强','熊锦程',0,'邓睿渊',35542559,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(6,'吕黎昕','孔越彬','www.fe-okon.info','石炫明','万伟宸','林昊然',0,'孟荣轩',1445,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(7,'夏雪松','许子骞','www.lashawna-legros.co','石炫明','蔡昊然','胡鹏涛',0,'钟立辉',34075514,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(8,'严钰轩','阎志泽','www.kay-funk.biz','石炫明','莫皓轩','郭黎昕',0,'龚天宇',70956,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(9,'萧嘉懿','曹熠彤','www.margarette-lindgren.biz','石炫明','田泽洋','邓睿渊',0,'梁志强',98,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(10,'杜驰','冯思源','www.vashti-auer.org','石炫明','黎健柏','武博文',0,'李伟宸',9,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(11,'史金鑫','蔡鹏涛','www.diann-keebler.org','石炫明','徐烨霖','阎建辉',0,'李烨伟',125,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(12,'林炫明','贾旭尧','www.dotty-kuvalis.io','石炫明','梁雨泽','龙伟泽',0,'许智渊',79998,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(13,'何钰轩','赖智宸','www.andy-adams.net','石炫明','崔思淼','白鸿煊',0,'邵振家',7167482751,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(14,'魏志强','于立诚','www.ione-aufderhar.biz','石炫明','朱懿轩','万智渊',0,'唐昊强',741098,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(15,'严君浩','金胤祥','www.duane-boyle.org','石炫明','雷昊焱','侯思聪',0,'郝思',580514,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(16,'姚皓轩','金鹏','www.lyda-klein.biz','石炫明','杜昊强','邵志泽',0,'冯鸿涛',6546,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(17,'廖驰','沈泽洋','www.consuelo-sipes.info','石炫明','彭昊然','邓耀杰',0,'周彬',7761037,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(18,'赖智渊','邓志泽','www.emerson-mann.co','石炫明','熊明哲','贺哲瀚',0,'田鹏',381422,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(19,'许涛','陆致远','www.vella-ankunding.name','石炫明','贾哲瀚','莫昊焱',0,'袁越彬',4218096,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(20,'吕峻熙','沈鹏飞','www.shari-reichel.org','石炫明','郭鸿煊','覃烨霖',0,'熊黎昕',493,'2024-07-02 23:01:34','2024-07-02 23:01:34',0),(21,'许擎宇','薛聪健','www.cary-king.net','石炫明','潘博涛','谭聪健',1,'石炫明',9500534531,'2024-07-02 23:07:18','2024-07-27 12:08:44',0),(22,'陆弘文','白志强','www.leslee-kuhn.net','石炫明','潘懿轩','马鸿涛',0,'陈峻熙',3982575846,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(23,'毛建辉','罗文','www.rosaria-kilback.io','石炫明','冯子默','彭哲瀚',0,'赵远航',121776355,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(24,'彭雨泽','蔡煜祺','www.norris-bergstrom.biz','石炫明','董思源','田晓博',0,'潘擎宇',740,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(25,'傅志强','陈梓晨','www.jordan-reinger.com','石炫明','金志强','熊锦程',0,'邓睿渊',35542559,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(26,'吕黎昕','孔越彬','www.fe-okon.info','石炫明','万伟宸','林昊然',0,'孟荣轩',1445,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(27,'夏雪松','许子骞','www.lashawna-legros.co','石炫明','蔡昊然','胡鹏涛',0,'钟立辉',34075514,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(28,'严钰轩','阎志泽','www.kay-funk.biz','石炫明','莫皓轩','郭黎昕',0,'龚天宇',70956,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(29,'萧嘉懿','曹熠彤','www.margarette-lindgren.biz','石炫明','田泽洋','邓睿渊',0,'梁志强',98,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(30,'杜驰','冯思源','www.vashti-auer.org','石炫明','黎健柏','武博文',0,'李伟宸',9,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(31,'史金鑫','蔡鹏涛','www.diann-keebler.org','石炫明','徐烨霖','阎建辉',0,'李烨伟',125,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(32,'林炫明','贾旭尧','www.dotty-kuvalis.io','石炫明','梁雨泽','龙伟泽',0,'许智渊',79998,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(33,'何钰轩','赖智宸','www.andy-adams.net','石炫明','崔思淼','白鸿煊',0,'邵振家',7167482751,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(34,'魏志强','于立诚','www.ione-aufderhar.biz','石炫明','朱懿轩','万智渊',0,'唐昊强',741098,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(35,'严君浩','金胤祥','www.duane-boyle.org','石炫明','雷昊焱','侯思聪',0,'郝思',580514,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(36,'姚皓轩','金鹏','www.lyda-klein.biz','石炫明','杜昊强','邵志泽',0,'冯鸿涛',6546,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(37,'廖驰','沈泽洋','www.consuelo-sipes.info','石炫明','彭昊然','邓耀杰',0,'周彬',7761037,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(38,'赖智渊','邓志泽','www.emerson-mann.co','石炫明','熊明哲','贺哲瀚',0,'田鹏',381422,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(39,'许涛','陆致远','www.vella-ankunding.name','石炫明','贾哲瀚','莫昊焱',0,'袁越彬',4218096,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(40,'吕峻熙','沈鹏飞','www.shari-reichel.org','石炫明','郭鸿煊','覃烨霖',0,'熊黎昕',493,'2024-07-02 23:07:18','2024-07-02 23:07:18',0),(41,'getUsernameByPost','获取用户名','http://localhost:8123/api/user','null','{\n  \"Content-Type\": \"application/json\"\n}','{\n  \"Content-Type\": \"application/json\"\n}',1,'Post',1,'2024-07-27 11:53:42','2024-07-27 11:54:02',0);
/*!40000 ALTER TABLE `interface_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `userAccount` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userAvatar` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `gender` tinyint DEFAULT NULL COMMENT '性别',
  `userRole` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user / admin',
  `userPassword` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `accessKey` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'accessKey',
  `secretKey` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'secretKey',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_userAccount` (`userAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'周杰','Jack','',0,'admin','b0dd3697a192885d7c055db46155b26a','Jack','abcdefg','2024-07-02 23:27:51','2024-07-09 23:44:52',0),(2,NULL,'Jake',NULL,NULL,'user','b0dd3697a192885d7c055db46155b26a','8e655aac82f0cc0381a7cab8e7d5bd5a','8f20a6d288b86f6d2b0812f55f22c241','2024-07-29 16:18:49','2024-07-29 16:18:49',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_interface_info`
--

DROP TABLE IF EXISTS `user_interface_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_interface_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` bigint NOT NULL COMMENT '调用用户 id',
  `interfaceInfoId` bigint NOT NULL COMMENT '接口 id',
  `totalNum` int NOT NULL DEFAULT '0' COMMENT '总调用次数',
  `leftNum` int NOT NULL DEFAULT '0' COMMENT '剩余调用次数',
  `status` int NOT NULL DEFAULT '0' COMMENT '0-正常，1-禁用',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除(0-未删, 1-已删)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户调用接口关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interface_info`
--

LOCK TABLES `user_interface_info` WRITE;
/*!40000 ALTER TABLE `user_interface_info` DISABLE KEYS */;
INSERT INTO `user_interface_info` VALUES (1,1,41,11,5,0,'2024-08-06 17:19:52','2024-08-07 10:57:30',0);
/*!40000 ALTER TABLE `user_interface_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 17:52:13
