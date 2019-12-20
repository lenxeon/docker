--
-- 初始化 PLAT 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_plat;
CREATE DATABASE `db_plat` DEFAULT CHARACTER SET utf8mb4 ;
use db_plat;


-- -------------------------------------------------------- schema \r\n
-- tables \r\n
-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_plat
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_comment_000`
--

DROP TABLE IF EXISTS `tb_comment_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comment_000` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `subject_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `reply_times` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_comment_sub_id` (`organization_id`,`subject_id`,`create_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_comment_001`
--

DROP TABLE IF EXISTS `tb_comment_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comment_001` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `subject_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `reply_times` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_comment_sub_id` (`organization_id`,`subject_id`,`create_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_content_000`
--

DROP TABLE IF EXISTS `tb_content_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_content_000` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `res_id` bigint(32) NOT NULL,
  `meta_key` varchar(32) NOT NULL,
  `meta_val` longtext,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_content_001`
--

DROP TABLE IF EXISTS `tb_content_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_content_001` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `res_id` bigint(32) NOT NULL,
  `meta_key` varchar(32) NOT NULL,
  `meta_val` longtext,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_plat_help`
--

DROP TABLE IF EXISTS `tb_plat_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plat_help` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `summary` varchar(512) DEFAULT NULL,
  `content` text,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_plat_module`
--

DROP TABLE IF EXISTS `tb_plat_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plat_module` (
  `id` bigint(32) NOT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(36) DEFAULT '0',
  `background_color` varchar(45) DEFAULT NULL,
  `advice_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `summary` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_num` decimal(22,0) NOT NULL DEFAULT '0',
  `status` decimal(22,0) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_plat_seq`
--

DROP TABLE IF EXISTS `tb_plat_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plat_seq` (
  `seq` bigint(16) NOT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_sys_event`
--

DROP TABLE IF EXISTS `tb_sys_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sys_event` (
  `id` varchar(64) NOT NULL,
  `module` varchar(64) NOT NULL COMMENT '哪个模块',
  `name` varchar(64) NOT NULL COMMENT '事件名称',
  `sequence` int(11) NOT NULL DEFAULT '0' COMMENT '编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_sys_event_subscribe`
--

DROP TABLE IF EXISTS `tb_sys_event_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sys_event_subscribe` (
  `id` bigint(32) NOT NULL,
  `event_id` bigint(32) NOT NULL COMMENT '哪个事件',
  `channel_id` int(11) NOT NULL DEFAULT '0' COMMENT '哪个渠道',
  `template` text COMMENT '所有模板',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_000`
--

DROP TABLE IF EXISTS `tb_tag_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_000` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `type` varchar(45) NOT NULL COMMENT '标签类别',
  `name` varchar(32) NOT NULL,
  `favorite` int(1) DEFAULT '0',
  `css` varchar(32) DEFAULT NULL,
  `py` varchar(128) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_org_name` (`organization_id`,`type`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_001`
--

DROP TABLE IF EXISTS `tb_tag_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_001` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `type` varchar(45) NOT NULL COMMENT '标签类别',
  `name` varchar(32) NOT NULL,
  `favorite` int(1) DEFAULT '0',
  `css` varchar(32) DEFAULT NULL,
  `py` varchar(128) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_org_name` (`organization_id`,`type`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_rel_000`
--

DROP TABLE IF EXISTS `tb_tag_rel_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_rel_000` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(16) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `tag_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_sub_tag` (`organization_id`,`subject_id`,`tag_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_rel_001`
--

DROP TABLE IF EXISTS `tb_tag_rel_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_rel_001` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(16) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `tag_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_sub_tag` (`organization_id`,`subject_id`,`tag_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_plat'
--

--
-- Dumping routines for database 'db_plat'
--
/*!50003 DROP PROCEDURE IF EXISTS `fun_get_next_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fun_get_next_version`(OUT nextval INT, OUT maxval INT)
    DETERMINISTIC
BEGIN
	START TRANSACTION;
    -- SET AUTOCOMMIT = 0;
		select seq into nextval from tb_plat_seq for update;
		UPDATE tb_plat_seq SET seq = seq + 100;
		select seq into maxval from tb_plat_seq for update;
	COMMIT;
    SET AUTOCOMMIT = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12 15:49:28
-- default data \r\n
--
-- 初始化 UC 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_uc;
CREATE DATABASE `db_uc` DEFAULT CHARACTER SET utf8mb4 ;
use db_uc;


-- -------------------------------------------------------- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_uc
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_third_corp`
--

DROP TABLE IF EXISTS `tb_third_corp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_corp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(45) NOT NULL,
  `corp_id` varchar(45) NOT NULL COMMENT '企业ID',
  `agent_id` varchar(45) NOT NULL COMMENT '应用ID',
  `agent_secret` varchar(255) NOT NULL COMMENT '应用密钥',
  `receive_msg_token` varchar(255) NOT NULL,
  `receive_msg_aes_key` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `local_organization_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `corp_id` (`corp_id`,`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_department_000`
--

DROP TABLE IF EXISTS `tb_third_department_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_department_000` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `third_department_id` varchar(45) NOT NULL,
  `local_department_id` bigint(36) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`third_department_id`),
  UNIQUE KEY `index3` (`organization_id`,`local_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_department_001`
--

DROP TABLE IF EXISTS `tb_third_department_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_department_001` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `third_department_id` varchar(45) NOT NULL,
  `local_department_id` bigint(36) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`third_department_id`),
  UNIQUE KEY `index3` (`organization_id`,`local_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_employee_000`
--

DROP TABLE IF EXISTS `tb_third_employee_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_employee_000` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `third_user_id` varchar(45) NOT NULL,
  `local_employee_id` bigint(36) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`third_user_id`),
  UNIQUE KEY `index3` (`organization_id`,`local_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_employee_001`
--

DROP TABLE IF EXISTS `tb_third_employee_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_employee_001` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `third_user_id` varchar(45) NOT NULL,
  `local_employee_id` bigint(36) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`third_user_id`),
  UNIQUE KEY `index3` (`organization_id`,`local_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_account`
--

DROP TABLE IF EXISTS `tb_uc_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_account` (
  `id` bigint(36) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_collection`
--

DROP TABLE IF EXISTS `tb_uc_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_collection` (
  `id` int(32) NOT NULL,
  `organization_id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `py` varchar(255) NOT NULL,
  `pin_yin` varchar(255) NOT NULL,
  `type` varchar(32) NOT NULL,
  `member_count` int(11) NOT NULL DEFAULT '0',
  `creator_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_collection_member`
--

DROP TABLE IF EXISTS `tb_uc_collection_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_collection_member` (
  `id` int(32) NOT NULL COMMENT '主键无意义',
  `organization_id` int(32) NOT NULL COMMENT '组织ID',
  `collection_id` int(32) NOT NULL COMMENT '集合ID',
  `collection_type` int(2) NOT NULL DEFAULT '0' COMMENT '0 部门成员 1项目成员',
  `employee_id` int(32) NOT NULL COMMENT '员工ID',
  `role_id` int(2) NOT NULL COMMENT '角色',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `coll_em_rel` (`organization_id`,`collection_id`,`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_department`
--

DROP TABLE IF EXISTS `tb_uc_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_department` (
  `id` int(32) NOT NULL,
  `organization_id` int(32) NOT NULL,
  `parent_id` int(32) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `py` varchar(255) NOT NULL,
  `pin_yin` varchar(255) DEFAULT NULL,
  `creator_id` varchar(32) DEFAULT NULL,
  `leader_id` int(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_organization_id` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_employee`
--

DROP TABLE IF EXISTS `tb_uc_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_employee` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `organization_id` bigint(32) NOT NULL COMMENT '组织id',
  `name` varchar(255) NOT NULL,
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `account_id` bigint(32) DEFAULT NULL COMMENT '绑定用户ID',
  `sex` int(2) DEFAULT '0' COMMENT '性别 0男 1女',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `join_date` datetime DEFAULT NULL COMMENT '入职时间',
  `job_name` varchar(36) DEFAULT NULL COMMENT '职位',
  `status` int(1) DEFAULT '0' COMMENT '状态 0正常 1离职',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_organization_id` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_employee_login_history`
--

DROP TABLE IF EXISTS `tb_uc_employee_login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_employee_login_history` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_id` bigint(32) NOT NULL COMMENT '用户id',
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `ua` varchar(255) DEFAULT NULL COMMENT 'user agent',
  `ip` varchar(45) DEFAULT NULL COMMENT 'ip',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登陆时间',
  `organization_id` bigint(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_organization_id` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_local_auth`
--

DROP TABLE IF EXISTS `tb_uc_local_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_local_auth` (
  `id` int(36) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0 用户名 1手机 2邮箱',
  `user_id` int(36) NOT NULL COMMENT '用户表中的ID',
  `identify` varchar(45) NOT NULL COMMENT '用户标识，可以是手机号，邮箱，唯一登陆名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `salt` varchar(32) NOT NULL COMMENT '随机盐',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_type_identify` (`type`,`identify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_organization`
--

DROP TABLE IF EXISTS `tb_uc_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_organization` (
  `id` int(32) NOT NULL COMMENT 'id',
  `scope` varchar(16) DEFAULT NULL COMMENT '唯一标识',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `description` varchar(2000) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `contact` varchar(32) NOT NULL COMMENT '创建人ID',
  `mobile` varchar(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL,
  `ticket` varchar(64) DEFAULT NULL COMMENT '用于邀请注册',
  PRIMARY KEY (`id`),
  KEY `index2` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_permission`
--

DROP TABLE IF EXISTS `tb_uc_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_permission` (
  `uuid` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `model` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_role`
--

DROP TABLE IF EXISTS `tb_uc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_role` (
  `uuid` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_role_permission`
--

DROP TABLE IF EXISTS `tb_uc_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_role_permission` (
  `uuid` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  `authority_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `idx_role_authority` (`role_id`,`authority_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_security_code`
--

DROP TABLE IF EXISTS `tb_uc_security_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_security_code` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL COMMENT '类型 邮箱0,短信1',
  `channel` varchar(32) DEFAULT NULL COMMENT '渠道，指用户接收密码的手机号或者邮箱',
  `rand` int(4) DEFAULT NULL COMMENT '随机数',
  `code` varchar(32) NOT NULL COMMENT '随机有效识别码',
  `expire_time` datetime NOT NULL COMMENT '过期时间，通常24小时',
  `used` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已经被使用',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`) USING BTREE,
  KEY `idx_expire_time` (`expire_time`) USING BTREE,
  KEY `idx_create_date` (`create_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COMMENT='验证码数据，用于修改密码，邮箱等场景中';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_team`
--

DROP TABLE IF EXISTS `tb_uc_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_team` (
  `id` int(32) NOT NULL,
  `organization_id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `py` varchar(255) NOT NULL,
  `pin_yin` varchar(255) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `creator_id` int(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_organization_id` (`organization_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_team_project`
--

DROP TABLE IF EXISTS `tb_uc_team_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_team_project` (
  `uuid` varchar(32) NOT NULL,
  `team_id` varchar(32) NOT NULL,
  `project_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `organization_id` varchar(32) NOT NULL,
  `tb_uc_team_projectcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `uidx_project_team` (`team_id`,`project_id`) USING BTREE,
  KEY `idx_organization_id` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_uc'
--

--
-- Dumping routines for database 'db_uc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12 15:49:28
-- default data \r\n
--
-- 初始化 PROJECT 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_project;
CREATE DATABASE `db_project` DEFAULT CHARACTER SET utf8mb4 ;
use db_project;


-- -------------------------------------------------------- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_project
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board` (
  `id` bigint(64) NOT NULL,
  `identify` varchar(32) NOT NULL COMMENT '标识：\n普通项目的默认看板：p:id:def\n',
  `name` varchar(128) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_board_stage_000`
--

DROP TABLE IF EXISTS `tb_board_stage_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_stage_000` (
  `id` bigint(32) NOT NULL,
  `clazz` varchar(45) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `project_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `item_count` int(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `release_id` bigint(32) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_board_stage_001`
--

DROP TABLE IF EXISTS `tb_board_stage_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_stage_001` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `project_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `item_count` int(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `release_id` bigint(32) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_board_stage_task_000`
--

DROP TABLE IF EXISTS `tb_board_stage_task_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_stage_task_000` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `stage_id` bigint(32) NOT NULL,
  `task_id` bigint(32) NOT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`stage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_board_stage_task_001`
--

DROP TABLE IF EXISTS `tb_board_stage_task_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_stage_task_001` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `stage_id` bigint(32) NOT NULL,
  `task_id` bigint(32) NOT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`stage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_action`
--

DROP TABLE IF EXISTS `tb_const_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_action` (
  `id` int(32) NOT NULL DEFAULT '0',
  `organization_id` int(32) NOT NULL,
  `from_id` int(32) NOT NULL,
  `to_id` int(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_field`
--

DROP TABLE IF EXISTS `tb_const_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_field` (
  `id` bigint(36) NOT NULL,
  `label` varchar(128) NOT NULL,
  `name` varchar(32) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `read_only` tinyint(2) NOT NULL DEFAULT '0',
  `extend` tinyint(2) NOT NULL DEFAULT '0',
  `render_type` varchar(45) NOT NULL,
  `translated_label` varchar(128) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `rules` varchar(2018) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_field_option`
--

DROP TABLE IF EXISTS `tb_const_field_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_field_option` (
  `id` bigint(36) NOT NULL,
  `field_id` bigint(36) NOT NULL,
  `label` varchar(128) NOT NULL,
  `sequence` bigint(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_field_scheme`
--

DROP TABLE IF EXISTS `tb_const_field_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_field_scheme` (
  `id` bigint(36) NOT NULL,
  `type` varchar(64) NOT NULL,
  `field_id` bigint(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`type`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_module`
--

DROP TABLE IF EXISTS `tb_const_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_module` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `parent_id` int(32) DEFAULT NULL,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_permission`
--

DROP TABLE IF EXISTS `tb_const_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_permission` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `model` varchar(32) NOT NULL,
  `model_name` varchar(45) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_permission_auth`
--

DROP TABLE IF EXISTS `tb_const_permission_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_permission_auth` (
  `id` bigint(36) NOT NULL,
  `permission_id` bigint(36) NOT NULL,
  `object_type` varchar(45) NOT NULL,
  `object_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_priority`
--

DROP TABLE IF EXISTS `tb_const_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_priority` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_release`
--

DROP TABLE IF EXISTS `tb_const_release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_release` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `project_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'TODO',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `first_sprint_no` int(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=695416 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_resultion`
--

DROP TABLE IF EXISTS `tb_const_resultion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_resultion` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_role`
--

DROP TABLE IF EXISTS `tb_const_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_role` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `translated_name` varchar(1024) DEFAULT NULL,
  `sequence` int(8) NOT NULL DEFAULT '0',
  `summary` varchar(1024) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_screen`
--

DROP TABLE IF EXISTS `tb_const_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_screen` (
  `id` bigint(36) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_status`
--

DROP TABLE IF EXISTS `tb_const_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_status` (
  `id` bigint(32) NOT NULL COMMENT '工作流的状态值',
  `organization_id` bigint(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_tasktype`
--

DROP TABLE IF EXISTS `tb_const_tasktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_tasktype` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_version`
--

DROP TABLE IF EXISTS `tb_const_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_version` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `released` int(2) NOT NULL DEFAULT '0',
  `archived` int(11) NOT NULL DEFAULT '0',
  `start_date` timestamp NULL DEFAULT NULL,
  `released_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_custom_field_000`
--

DROP TABLE IF EXISTS `tb_custom_field_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_custom_field_000` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `res_id` bigint(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_value` varchar(1024) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_custom_field_001`
--

DROP TABLE IF EXISTS `tb_custom_field_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_custom_field_001` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `res_id` bigint(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_value` varchar(1024) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_book_000`
--

DROP TABLE IF EXISTS `tb_document_book_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_book_000` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `project_id` bigint(36) DEFAULT NULL,
  `creator_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `post_count` int(6) DEFAULT '0',
  `comment_enable` int(4) DEFAULT '0',
  `deleted` decimal(2,0) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_book_001`
--

DROP TABLE IF EXISTS `tb_document_book_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_book_001` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `project_id` bigint(36) DEFAULT NULL,
  `creator_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `post_count` int(6) DEFAULT '0',
  `comment_enable` int(4) DEFAULT '0',
  `deleted` decimal(2,0) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_book_user_rel_000`
--

DROP TABLE IF EXISTS `tb_document_book_user_rel_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_book_user_rel_000` (
  `id` int(32) NOT NULL COMMENT '主键无意义',
  `organization_id` int(32) NOT NULL COMMENT '组织ID',
  `book_id` int(32) NOT NULL COMMENT '集合ID',
  `employee_id` int(32) NOT NULL COMMENT '员工ID',
  `role` int(2) NOT NULL COMMENT '角色',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`book_id`,`employee_id`,`role`),
  KEY `index1` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_book_user_rel_001`
--

DROP TABLE IF EXISTS `tb_document_book_user_rel_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_book_user_rel_001` (
  `id` int(32) NOT NULL COMMENT '主键无意义',
  `organization_id` int(32) NOT NULL COMMENT '组织ID',
  `book_id` int(32) NOT NULL COMMENT '集合ID',
  `employee_id` int(32) NOT NULL COMMENT '员工ID',
  `role` int(2) NOT NULL COMMENT '角色',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`book_id`,`employee_id`,`role`),
  KEY `index1` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_chapter_000`
--

DROP TABLE IF EXISTS `tb_document_chapter_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_chapter_000` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `book_id` bigint(32) NOT NULL,
  `parent_id` bigint(32) DEFAULT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `summary` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sequence` decimal(22,0) NOT NULL DEFAULT '0',
  `deleted` decimal(22,0) DEFAULT '0',
  `imaged` int(2) DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_chapter_001`
--

DROP TABLE IF EXISTS `tb_document_chapter_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_chapter_001` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `book_id` bigint(32) NOT NULL,
  `parent_id` bigint(32) DEFAULT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `summary` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sequence` decimal(22,0) NOT NULL DEFAULT '0',
  `deleted` decimal(22,0) DEFAULT '0',
  `imaged` int(2) DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_file_000`
--

DROP TABLE IF EXISTS `tb_document_file_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_file_000` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `dirver_id` bigint(36) DEFAULT '0',
  `parent_id` bigint(36) DEFAULT NULL,
  `project_id` bigint(36) DEFAULT NULL,
  `creator_id` bigint(36) NOT NULL,
  `name` varchar(36) NOT NULL,
  `clazz` varchar(16) DEFAULT '0' COMMENT 'file folder image',
  `other_name` varchar(36) DEFAULT NULL,
  `length` bigint(36) DEFAULT '0',
  `summary` varchar(1024) DEFAULT NULL,
  `children_count` int(9) DEFAULT '0',
  `color` varchar(36) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `ext` varchar(36) DEFAULT NULL,
  `md5` varchar(36) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`),
  KEY `index3` (`name`),
  KEY `index4` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_file_001`
--

DROP TABLE IF EXISTS `tb_document_file_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_file_001` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `dirver_id` bigint(36) DEFAULT '0',
  `parent_id` bigint(36) DEFAULT NULL,
  `project_id` bigint(36) DEFAULT NULL,
  `creator_id` bigint(36) NOT NULL,
  `name` varchar(36) NOT NULL,
  `clazz` varchar(16) DEFAULT '0' COMMENT 'file folder image',
  `other_name` varchar(36) DEFAULT NULL,
  `length` bigint(36) DEFAULT '0',
  `summary` varchar(1024) DEFAULT NULL,
  `children_count` int(9) DEFAULT '0',
  `color` varchar(36) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `ext` varchar(36) DEFAULT NULL,
  `md5` varchar(36) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`),
  KEY `index3` (`name`),
  KEY `index4` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_events`
--

DROP TABLE IF EXISTS `tb_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_events` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(64) NOT NULL,
  `color` varchar(64) DEFAULT NULL,
  `deleted` int(2) NOT NULL DEFAULT '0',
  `crossed` int(2) NOT NULL DEFAULT '0',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=514810 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_events_user_rel`
--

DROP TABLE IF EXISTS `tb_events_user_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_events_user_rel` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `event_id` int(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`event_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project`
--

DROP TABLE IF EXISTS `tb_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project` (
  `id` bigint(32) NOT NULL COMMENT '项目ID',
  `organization_id` bigint(32) NOT NULL COMMENT '公司ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `name` varchar(128) NOT NULL COMMENT '项目名称',
  `py` varchar(45) DEFAULT NULL,
  `pin_yin` varchar(255) DEFAULT NULL,
  `summary` varchar(255) NOT NULL COMMENT '项目描述',
  `category` varchar(16) DEFAULT NULL,
  `code` int(4) NOT NULL DEFAULT '0' COMMENT '项目编码',
  `scope` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否开放',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(2) NOT NULL DEFAULT '0' COMMENT '删除 0正常 1删除',
  `archived` int(2) NOT NULL DEFAULT '0' COMMENT '是否已归档 0未 1已',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_sprint`
--

DROP TABLE IF EXISTS `tb_project_sprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_sprint` (
  `id` bigint(16) NOT NULL,
  `organization_id` bigint(16) DEFAULT NULL,
  `project_id` bigint(16) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sequence` int(16) DEFAULT NULL,
  `released` int(10) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version_project` (`project_id`),
  KEY `idx_version_sequence` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_task_user_rel_000`
--

DROP TABLE IF EXISTS `tb_project_task_user_rel_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_task_user_rel_000` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(36) NOT NULL,
  `task_id` bigint(36) NOT NULL,
  `user_id` bigint(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_task_user` (`organization_id`,`task_id`,`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_task_user_rel_001`
--

DROP TABLE IF EXISTS `tb_project_task_user_rel_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_task_user_rel_001` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(36) NOT NULL,
  `task_id` bigint(36) NOT NULL,
  `user_id` bigint(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_task_user` (`organization_id`,`task_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_todo_000`
--

DROP TABLE IF EXISTS `tb_project_todo_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_todo_000` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `organization_id` bigint(32) NOT NULL COMMENT '组织ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `source_id` bigint(32) DEFAULT '0' COMMENT '从哪复制的',
  `subject_id` bigint(32) NOT NULL COMMENT '主体ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `pos` bigint(32) DEFAULT NULL COMMENT '位置',
  `summary` varchar(255) DEFAULT '' COMMENT '描述',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `times` int(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index3` (`organization_id`,`source_id`),
  KEY `index2` (`organization_id`,`subject_id`,`times`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_todo_001`
--

DROP TABLE IF EXISTS `tb_project_todo_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_todo_001` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `organization_id` bigint(32) NOT NULL COMMENT '组织ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `source_id` bigint(32) DEFAULT '0' COMMENT '从哪复制的',
  `subject_id` bigint(32) NOT NULL COMMENT '主体ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `pos` bigint(32) DEFAULT NULL COMMENT '位置',
  `summary` varchar(255) DEFAULT '' COMMENT '描述',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `times` int(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index3` (`organization_id`,`source_id`),
  KEY `index2` (`organization_id`,`subject_id`,`times`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_todo_item_000`
--

DROP TABLE IF EXISTS `tb_project_todo_item_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_todo_item_000` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `organization_id` bigint(32) NOT NULL,
  `todo_id` bigint(32) NOT NULL COMMENT '组织ID',
  `pos` bigint(32) DEFAULT '0' COMMENT '位置',
  `content` varchar(4000) DEFAULT '',
  `status` int(11) DEFAULT '0',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`todo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_todo_item_001`
--

DROP TABLE IF EXISTS `tb_project_todo_item_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_todo_item_001` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `organization_id` bigint(32) NOT NULL,
  `todo_id` bigint(32) NOT NULL COMMENT '组织ID',
  `pos` bigint(32) DEFAULT '0' COMMENT '位置',
  `content` varchar(4000) DEFAULT '',
  `status` int(11) DEFAULT '0',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`todo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_rel_000`
--

DROP TABLE IF EXISTS `tb_tag_rel_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_rel_000` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(16) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `tag_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_sub_tag` (`organization_id`,`subject_id`,`tag_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_rel_001`
--

DROP TABLE IF EXISTS `tb_tag_rel_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_rel_001` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(16) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `tag_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_sub_tag` (`organization_id`,`subject_id`,`tag_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_task_000`
--

DROP TABLE IF EXISTS `tb_task_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_task_000` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `clazz` varchar(32) NOT NULL COMMENT '任务类型',
  `organization_id` bigint(32) NOT NULL COMMENT '组织ID',
  `project_Id` bigint(32) NOT NULL COMMENT '项目ID',
  `workflow_id` bigint(32) NOT NULL DEFAULT '0' COMMENT '工作流ID',
  `parent_id` bigint(32) DEFAULT NULL COMMENT '父ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `executor_id` bigint(32) DEFAULT NULL COMMENT '负责人ID',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近的更新时间',
  `plan_start_date` datetime DEFAULT NULL COMMENT '计划开始时间',
  `plan_end_date` datetime DEFAULT NULL COMMENT '计划完成时间',
  `end_date` datetime DEFAULT NULL COMMENT '实际完成时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `module_id` int(9) DEFAULT NULL COMMENT '模块ID',
  `status_id` int(32) NOT NULL DEFAULT '0' COMMENT '状态ID',
  `priority_id` int(2) NOT NULL DEFAULT '0' COMMENT '优先级ID',
  `resolution_id` int(32) NOT NULL DEFAULT '0' COMMENT '解决结果',
  `source_id` bigint(32) DEFAULT NULL COMMENT 'task 是归属哪个story\nstory 是归属哪个feature',
  `percent` int(3) NOT NULL DEFAULT '0' COMMENT '进度 0-100',
  `visible` int(1) NOT NULL DEFAULT '0' COMMENT ' 0项目成员可见 members 1参与人可见 involves ',
  `man_hours` int(6) NOT NULL DEFAULT '0' COMMENT '工时',
  `deleted` int(2) NOT NULL DEFAULT '0' COMMENT '是否已经删除',
  `accepted` int(11) NOT NULL DEFAULT '0' COMMENT '是否已经接受，敏捷需求',
  `finished` int(11) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL COMMENT '颜色',
  `type` varchar(32) DEFAULT NULL COMMENT 'feature, story的类型枚举',
  `effort` int(4) DEFAULT NULL COMMENT '影响，效果',
  `point` int(4) DEFAULT NULL COMMENT '点数',
  `version` bigint(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_task_001`
--

DROP TABLE IF EXISTS `tb_task_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_task_001` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `clazz` varchar(32) NOT NULL COMMENT '任务类型',
  `organization_id` bigint(32) NOT NULL COMMENT '组织ID',
  `project_Id` bigint(32) NOT NULL COMMENT '项目ID',
  `workflow_id` bigint(32) NOT NULL DEFAULT '0' COMMENT '工作流ID',
  `parent_id` bigint(32) DEFAULT NULL COMMENT '父ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `executor_id` bigint(32) DEFAULT NULL COMMENT '负责人ID',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近的更新时间',
  `plan_start_date` datetime DEFAULT NULL COMMENT '计划开始时间',
  `plan_end_date` datetime DEFAULT NULL COMMENT '计划完成时间',
  `end_date` datetime DEFAULT NULL COMMENT '实际完成时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `module_id` int(9) DEFAULT NULL COMMENT '模块ID',
  `status_id` int(32) NOT NULL DEFAULT '0' COMMENT '状态ID',
  `priority_id` int(2) NOT NULL DEFAULT '0' COMMENT '优先级ID',
  `resolution_id` int(32) NOT NULL DEFAULT '0' COMMENT '解决结果',
  `source_id` bigint(32) DEFAULT NULL COMMENT 'task 是归属哪个story\nstory 是归属哪个feature',
  `percent` int(3) NOT NULL DEFAULT '0' COMMENT '进度 0-100',
  `visible` int(1) NOT NULL DEFAULT '0' COMMENT ' 0项目成员可见 members 1参与人可见 involves ',
  `man_hours` int(6) NOT NULL DEFAULT '0' COMMENT '工时',
  `deleted` int(2) NOT NULL DEFAULT '0' COMMENT '是否已经删除',
  `accepted` int(11) NOT NULL DEFAULT '0' COMMENT '是否已经接受，敏捷需求',
  `finished` int(11) NOT NULL,
  `color` varchar(32) DEFAULT NULL COMMENT '颜色',
  `type` varchar(32) DEFAULT NULL COMMENT 'feature, story的类型枚举',
  `effort` int(4) DEFAULT NULL COMMENT '影响，效果',
  `point` int(4) DEFAULT NULL COMMENT '点数',
  `version` bigint(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_project'
--

--
-- Dumping routines for database 'db_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12 15:49:28
-- default data \r\n
-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_project
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Dumping data for table `tb_const_permission`
--

LOCK TABLES `tb_const_permission` WRITE;
/*!40000 ALTER TABLE `tb_const_permission` DISABLE KEYS */;
INSERT INTO `tb_const_permission` VALUES (1,'管理项目','project','项目权限','允许在JIRA中管理项目。','update',0),(2,'浏览项目','project','项目权限','允许浏览项目和项目所属的问题。','view',0),(5,'被分配','task','问题权限','允许其他用户把问题分配给这个权限的用户。',NULL,0),(6,'分配问题','task','问题权限','允许分配问题给其他用户','assign',0),(7,'关闭问题','task','问题权限','允许关闭问题。通常是开发人员解决问题，质检部门负责关闭。',NULL,0),(8,'创建问题','task','问题权限','允许创建问题','admin.permissions.CREATE_TASK',0),(9,'删除问题','task','问题权限','允许删除问题','delete',0),(10,'编辑问题','task','问题权限','允许编辑问题','update',0),(11,'链接问题','task','问题权限','允许将多个问题建立联系。只有当链接问题功能打开后才能使用。','link',0),(12,'修改报告人','task','问题权限','允许在创建和编辑问题时修改报告人。',NULL,0),(14,'解决问题','task','问题权限','允许解决和重新打开问题。包括可以设置\'解决版本\'。',NULL,0),(15,'规划问题日程','task','问题权限','允许查看或编辑问题的到期日。',NULL,0),(16,'设置安全级别','task','问题权限','允许设置一个问题的安全级别，来决定哪些用户可以浏览这个问题。',NULL,0),(17,'执行工作流','task','问题权限','允许执行工作流。',NULL,0),(20,'添加备注','comment','使用备注权限','允许为问题添加备注',NULL,0),(21,'删除所有备注','comment','使用备注权限','允许删除所有备注。',NULL,0),(22,'删除自己的备注','comment','使用备注权限','允许删除自己的备注',NULL,0),(23,'编辑所有备注','comment','使用备注权限','允许编辑所有备注。',NULL,0),(24,'编辑自己的备注','comment','使用备注权限','允许编辑自己的备注。',NULL,0),(25,'添加附件','attachment','附件权限','这个权限中的用户可以为问题添加附件。','create',0),(26,'删除所有附件','attachment','附件权限','拥有这个权限的用户可以删除所有附件。','delete',0),(27,'删除自己的附件','attachment','附件权限','拥有这个权限的用户可以删除自己的附件。',NULL,0),(28,'删除所有工作日志','man-hour','时间追踪权限','允许删除所有人的工作日志记录。',NULL,0),(29,'删除自己的工作日志','man-hour','时间追踪权限','允许删除自己的工作日志记录。',NULL,0),(30,'编辑所有工作日志','man-hour','时间追踪权限','允许编辑所有人的工作日志记录。',NULL,0),(31,'编辑自己的工作日志','man-hour','时间追踪权限','允许编辑自己的工作日志记录。',NULL,0),(32,'添加工作日志','man-hour','时间追踪权限','允许为问题记录工作日志。只有当时间追踪功能打开后才能使用。',NULL,0);
/*!40000 ALTER TABLE `tb_const_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12 15:49:28
-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_project
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Dumping data for table `tb_const_priority`
--
-- WHERE:  id > 0

LOCK TABLES `tb_const_priority` WRITE;
/*!40000 ALTER TABLE `tb_const_priority` DISABLE KEYS */;
INSERT INTO `tb_const_priority` VALUES (1,1013802,'1013601','致命',NULL,'This problem will block progress.','fa fa-bug',NULL,0,0,'2016-06-29 15:13:12'),(2,1013802,'1013601','重要',NULL,'Serious problem that could block progress.','fa fa-exclamation-circle',NULL,0,0,'2016-06-29 15:13:52'),(3,1013802,'1013601','普通',NULL,'Has the potential to affect progress.','fa fa-question-circle',NULL,0,0,'2016-06-29 15:14:35'),(4,1013802,'1013601','细微',NULL,'Trivial problem with little or no impact on progress.','fa fa-warning',NULL,0,0,'2017-01-09 12:43:58');
/*!40000 ALTER TABLE `tb_const_priority` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12 15:49:28
--
-- 初始化 QUARTZ 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_quartz;
CREATE DATABASE `db_quartz` DEFAULT CHARACTER SET utf8mb4 ;
use db_quartz;


-- -------------------------------------------------------- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_quartz
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `qtz_blob_triggers`
--

DROP TABLE IF EXISTS `qtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_calendars`
--

DROP TABLE IF EXISTS `qtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_cron_triggers`
--

DROP TABLE IF EXISTS `qtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_extend_triggers_back`
--

DROP TABLE IF EXISTS `qtz_extend_triggers_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_extend_triggers_back` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_extend_triggers_execute_log`
--

DROP TABLE IF EXISTS `qtz_extend_triggers_execute_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_extend_triggers_execute_log` (
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 NOT NULL,
  `FIRE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `HTTP_STATUS` int(4) DEFAULT NULL,
  `HTTP_RESP` text,
  `STATUS` int(1) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_fired_triggers`
--

DROP TABLE IF EXISTS `qtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_job_details`
--

DROP TABLE IF EXISTS `qtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_locks`
--

DROP TABLE IF EXISTS `qtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_scheduler_state`
--

DROP TABLE IF EXISTS `qtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_simple_triggers`
--

DROP TABLE IF EXISTS `qtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_triggers`
--

DROP TABLE IF EXISTS `qtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_quartz'
--

--
-- Dumping routines for database 'db_quartz'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12 15:49:28
-- default data \r\n
--
-- 初始化 CHARGE 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_charge;
CREATE DATABASE `db_charge` DEFAULT CHARACTER SET utf8mb4 ;
use db_charge;


-- ------------------------------------------------------
-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_charge
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_bill`
--

DROP TABLE IF EXISTS `tb_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_bill` (
  `id` bigint(32) NOT NULL COMMENT '项目ID',
  `organization_id` bigint(32) NOT NULL COMMENT '公司ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `category_id` bigint(16) NOT NULL COMMENT '项目分类ID',
  `name` varchar(128) NOT NULL COMMENT '项目名称',
  `code` int(4) NOT NULL DEFAULT '0' COMMENT '项目编码',
  `summary` varchar(255) NOT NULL COMMENT '项目描述',
  `open` smallint(1) NOT NULL COMMENT '是否开放',
  `ico` varchar(255) DEFAULT NULL COMMENT '图标',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(2) NOT NULL DEFAULT '0' COMMENT '删除 0正常 1删除',
  `archived` int(2) NOT NULL DEFAULT '0' COMMENT '是否已归档 0未 1已',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_charge_transaction_000`
--

DROP TABLE IF EXISTS `tb_charge_transaction_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_charge_transaction_000` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '公司的交易流水',
  `type` int(2) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `operator` varchar(64) NOT NULL,
  `point` bigint(11) NOT NULL DEFAULT '0',
  `balance` bigint(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=655230 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_charge'
--

--
-- Dumping routines for database 'db_charge'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12 15:49:28
-- default data \r\n
--
-- 初始化 PLAT 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_plat;
CREATE DATABASE `db_plat` DEFAULT CHARACTER SET utf8mb4 ;
use db_plat;


-- -------------------------------------------------------- schema \r\n
-- tables \r\n
-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_plat
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_comment_000`
--

DROP TABLE IF EXISTS `tb_comment_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comment_000` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `subject_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `reply_times` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_comment_sub_id` (`organization_id`,`subject_id`,`create_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_comment_001`
--

DROP TABLE IF EXISTS `tb_comment_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comment_001` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `subject_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `reply_times` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_comment_sub_id` (`organization_id`,`subject_id`,`create_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_content_000`
--

DROP TABLE IF EXISTS `tb_content_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_content_000` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `res_id` bigint(32) NOT NULL,
  `meta_key` varchar(32) NOT NULL,
  `meta_val` longtext,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_content_001`
--

DROP TABLE IF EXISTS `tb_content_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_content_001` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `res_id` bigint(32) NOT NULL,
  `meta_key` varchar(32) NOT NULL,
  `meta_val` longtext,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_plat_help`
--

DROP TABLE IF EXISTS `tb_plat_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plat_help` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `summary` varchar(512) DEFAULT NULL,
  `content` text,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_plat_module`
--

DROP TABLE IF EXISTS `tb_plat_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plat_module` (
  `id` bigint(32) NOT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(36) DEFAULT '0',
  `background_color` varchar(45) DEFAULT NULL,
  `advice_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `summary` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_num` decimal(22,0) NOT NULL DEFAULT '0',
  `status` decimal(22,0) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_plat_seq`
--

DROP TABLE IF EXISTS `tb_plat_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plat_seq` (
  `seq` bigint(16) NOT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_sys_event`
--

DROP TABLE IF EXISTS `tb_sys_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sys_event` (
  `id` varchar(64) NOT NULL,
  `module` varchar(64) NOT NULL COMMENT '哪个模块',
  `name` varchar(64) NOT NULL COMMENT '事件名称',
  `sequence` int(11) NOT NULL DEFAULT '0' COMMENT '编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_000`
--

DROP TABLE IF EXISTS `tb_tag_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_000` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `type` varchar(45) NOT NULL COMMENT '标签类别',
  `name` varchar(32) NOT NULL,
  `favorite` int(1) DEFAULT '0',
  `css` varchar(32) DEFAULT NULL,
  `py` varchar(128) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_org_name` (`organization_id`,`type`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_001`
--

DROP TABLE IF EXISTS `tb_tag_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_001` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `type` varchar(45) NOT NULL COMMENT '标签类别',
  `name` varchar(32) NOT NULL,
  `favorite` int(1) DEFAULT '0',
  `css` varchar(32) DEFAULT NULL,
  `py` varchar(128) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_org_name` (`organization_id`,`type`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_rel_000`
--

DROP TABLE IF EXISTS `tb_tag_rel_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_rel_000` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(16) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `tag_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_sub_tag` (`organization_id`,`subject_id`,`tag_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_rel_001`
--

DROP TABLE IF EXISTS `tb_tag_rel_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_rel_001` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(16) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `tag_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_sub_tag` (`organization_id`,`subject_id`,`tag_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_plat'
--

--
-- Dumping routines for database 'db_plat'
--
/*!50003 DROP PROCEDURE IF EXISTS `fun_get_next_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fun_get_next_version`(OUT nextval INT, OUT maxval INT)
    DETERMINISTIC
BEGIN
	START TRANSACTION;
    -- SET AUTOCOMMIT = 0;
		select seq into nextval from tb_plat_seq for update;
		UPDATE tb_plat_seq SET seq = seq + 100;
		select seq into maxval from tb_plat_seq for update;
	COMMIT;
    SET AUTOCOMMIT = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 16:37:51
-- default data \r\n
--
-- 初始化 UC 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_uc;
CREATE DATABASE `db_uc` DEFAULT CHARACTER SET utf8mb4 ;
use db_uc;


-- -------------------------------------------------------- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_uc
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_third_corp`
--

DROP TABLE IF EXISTS `tb_third_corp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_corp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suite_id` varchar(64) NOT NULL,
  `third_id` varchar(64) NOT NULL COMMENT '企业ID',
  `third_name` varchar(255) NOT NULL COMMENT '应用ID',
  `local_organization_id` int(11) NOT NULL,
  `permanent_code` varchar(255) NOT NULL COMMENT '应用密钥',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `corp_id` (`suite_id`,`third_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_department_000`
--

DROP TABLE IF EXISTS `tb_third_department_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_department_000` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `third_department_id` varchar(45) NOT NULL,
  `local_department_id` bigint(36) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`third_department_id`),
  UNIQUE KEY `index3` (`organization_id`,`local_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_department_001`
--

DROP TABLE IF EXISTS `tb_third_department_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_department_001` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `third_department_id` varchar(45) NOT NULL,
  `local_department_id` bigint(36) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`third_department_id`),
  UNIQUE KEY `index3` (`organization_id`,`local_department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_employee_000`
--

DROP TABLE IF EXISTS `tb_third_employee_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_employee_000` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `third_user_id` varchar(45) NOT NULL,
  `local_employee_id` bigint(36) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`third_user_id`),
  UNIQUE KEY `index3` (`organization_id`,`local_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_employee_001`
--

DROP TABLE IF EXISTS `tb_third_employee_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_employee_001` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `third_user_id` varchar(45) NOT NULL,
  `local_employee_id` bigint(36) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`organization_id`,`third_user_id`),
  UNIQUE KEY `index3` (`organization_id`,`local_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_third_suite`
--

DROP TABLE IF EXISTS `tb_third_suite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_suite` (
  `id` varchar(64) NOT NULL COMMENT '套件id',
  `name` varchar(64) NOT NULL COMMENT '套件名字',
  `en_name` varchar(64) NOT NULL COMMENT '套件英语名',
  `plat` int(2) NOT NULL COMMENT '哪家平台 企业微信，钉钉，飞书',
  `isv_corp_id` varchar(128) NOT NULL COMMENT 'ISV 商户ID',
  `secret` varchar(64) NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_account`
--

DROP TABLE IF EXISTS `tb_uc_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_account` (
  `id` bigint(36) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_collection`
--

DROP TABLE IF EXISTS `tb_uc_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_collection` (
  `id` int(32) NOT NULL,
  `organization_id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `py` varchar(255) NOT NULL,
  `pin_yin` varchar(255) NOT NULL,
  `type` varchar(32) NOT NULL,
  `member_count` int(11) NOT NULL DEFAULT '0',
  `creator_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_collection_member`
--

DROP TABLE IF EXISTS `tb_uc_collection_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_collection_member` (
  `id` int(32) NOT NULL COMMENT '主键无意义',
  `organization_id` int(32) NOT NULL COMMENT '组织ID',
  `collection_id` int(32) NOT NULL COMMENT '集合ID',
  `collection_type` int(2) NOT NULL DEFAULT '0' COMMENT '0 部门成员 1项目成员',
  `employee_id` int(32) NOT NULL COMMENT '员工ID',
  `role_id` int(2) NOT NULL COMMENT '角色',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `coll_em_rel` (`organization_id`,`collection_id`,`employee_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_department`
--

DROP TABLE IF EXISTS `tb_uc_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_department` (
  `id` int(32) NOT NULL,
  `organization_id` int(32) NOT NULL,
  `parent_id` int(32) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `py` varchar(255) NOT NULL,
  `pin_yin` varchar(255) DEFAULT NULL,
  `creator_id` varchar(32) DEFAULT NULL,
  `leader_id` int(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_organization_id` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_employee`
--

DROP TABLE IF EXISTS `tb_uc_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_employee` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `organization_id` bigint(32) NOT NULL COMMENT '组织id',
  `name` varchar(255) NOT NULL,
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `account_id` bigint(32) DEFAULT NULL COMMENT '绑定用户ID',
  `sex` int(2) DEFAULT '0' COMMENT '性别 0男 1女',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `join_date` datetime DEFAULT NULL COMMENT '入职时间',
  `job_name` varchar(36) DEFAULT NULL COMMENT '职位',
  `status` int(1) DEFAULT '0' COMMENT '状态 0正常 1离职',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_organization_id` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_employee_login_history`
--

DROP TABLE IF EXISTS `tb_uc_employee_login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_employee_login_history` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_id` bigint(32) NOT NULL COMMENT '用户id',
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `ua` varchar(255) DEFAULT NULL COMMENT 'user agent',
  `ip` varchar(45) DEFAULT NULL COMMENT 'ip',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登陆时间',
  `organization_id` bigint(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_organization_id` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_local_auth`
--

DROP TABLE IF EXISTS `tb_uc_local_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_local_auth` (
  `id` int(36) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0 用户名 1手机 2邮箱',
  `user_id` int(36) NOT NULL COMMENT '用户表中的ID',
  `identify` varchar(45) NOT NULL COMMENT '用户标识，可以是手机号，邮箱，唯一登陆名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `salt` varchar(32) NOT NULL COMMENT '随机盐',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_type_identify` (`type`,`identify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_organization`
--

DROP TABLE IF EXISTS `tb_uc_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_organization` (
  `id` int(32) NOT NULL COMMENT 'id',
  `scope` varchar(16) DEFAULT NULL COMMENT '唯一标识',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `description` varchar(2000) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `contact` varchar(32) NOT NULL COMMENT '创建人ID',
  `mobile` varchar(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL,
  `ticket` varchar(64) DEFAULT NULL COMMENT '用于邀请注册',
  PRIMARY KEY (`id`),
  KEY `index2` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_permission`
--

DROP TABLE IF EXISTS `tb_uc_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_permission` (
  `uuid` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `model` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_role`
--

DROP TABLE IF EXISTS `tb_uc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_role` (
  `uuid` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_role_permission`
--

DROP TABLE IF EXISTS `tb_uc_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_role_permission` (
  `uuid` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  `authority_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `idx_role_authority` (`role_id`,`authority_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_security_code`
--

DROP TABLE IF EXISTS `tb_uc_security_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_security_code` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL COMMENT '类型 邮箱0,短信1',
  `channel` varchar(32) DEFAULT NULL COMMENT '渠道，指用户接收密码的手机号或者邮箱',
  `rand` int(4) DEFAULT NULL COMMENT '随机数',
  `code` varchar(32) NOT NULL COMMENT '随机有效识别码',
  `expire_time` datetime NOT NULL COMMENT '过期时间，通常24小时',
  `used` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已经被使用',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`) USING BTREE,
  KEY `idx_expire_time` (`expire_time`) USING BTREE,
  KEY `idx_create_date` (`create_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COMMENT='验证码数据，用于修改密码，邮箱等场景中';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_team`
--

DROP TABLE IF EXISTS `tb_uc_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_team` (
  `id` int(32) NOT NULL,
  `organization_id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `py` varchar(255) NOT NULL,
  `pin_yin` varchar(255) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `creator_id` int(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_organization_id` (`organization_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_uc_team_project`
--

DROP TABLE IF EXISTS `tb_uc_team_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_team_project` (
  `uuid` varchar(32) NOT NULL,
  `team_id` varchar(32) NOT NULL,
  `project_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `organization_id` varchar(32) NOT NULL,
  `tb_uc_team_projectcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `uidx_project_team` (`team_id`,`project_id`) USING BTREE,
  KEY `idx_organization_id` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_uc'
--

--
-- Dumping routines for database 'db_uc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 16:37:51
-- default data \r\n
--
-- 初始化 PROJECT 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_project;
CREATE DATABASE `db_project` DEFAULT CHARACTER SET utf8mb4 ;
use db_project;


-- -------------------------------------------------------- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_project
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board` (
  `id` bigint(64) NOT NULL,
  `identify` varchar(32) NOT NULL COMMENT '标识：\n普通项目的默认看板：p:id:def\n',
  `name` varchar(128) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_board_stage_000`
--

DROP TABLE IF EXISTS `tb_board_stage_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_stage_000` (
  `id` bigint(32) NOT NULL,
  `clazz` varchar(45) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `project_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `item_count` int(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `release_id` bigint(32) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_board_stage_001`
--

DROP TABLE IF EXISTS `tb_board_stage_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_stage_001` (
  `id` bigint(32) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `project_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `item_count` int(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `release_id` bigint(32) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `done_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_board_stage_task_000`
--

DROP TABLE IF EXISTS `tb_board_stage_task_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_stage_task_000` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `stage_id` bigint(32) NOT NULL,
  `task_id` bigint(32) NOT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`stage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_board_stage_task_001`
--

DROP TABLE IF EXISTS `tb_board_stage_task_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_board_stage_task_001` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `stage_id` bigint(32) NOT NULL,
  `task_id` bigint(32) NOT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`stage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_action`
--

DROP TABLE IF EXISTS `tb_const_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_action` (
  `id` int(32) NOT NULL DEFAULT '0',
  `organization_id` int(32) NOT NULL,
  `from_id` int(32) NOT NULL,
  `to_id` int(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_field`
--

DROP TABLE IF EXISTS `tb_const_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_field` (
  `id` bigint(36) NOT NULL,
  `label` varchar(128) NOT NULL,
  `name` varchar(32) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `read_only` tinyint(2) NOT NULL DEFAULT '0',
  `extend` tinyint(2) NOT NULL DEFAULT '0',
  `render_type` varchar(45) NOT NULL,
  `translated_label` varchar(128) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `rules` varchar(2018) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_field_option`
--

DROP TABLE IF EXISTS `tb_const_field_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_field_option` (
  `id` bigint(36) NOT NULL,
  `field_id` bigint(36) NOT NULL,
  `label` varchar(128) NOT NULL,
  `sequence` bigint(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_field_scheme`
--

DROP TABLE IF EXISTS `tb_const_field_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_field_scheme` (
  `id` bigint(36) NOT NULL,
  `type` varchar(64) NOT NULL,
  `field_id` bigint(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`type`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_module`
--

DROP TABLE IF EXISTS `tb_const_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_module` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `parent_id` int(32) DEFAULT NULL,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_permission`
--

DROP TABLE IF EXISTS `tb_const_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_permission` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `model` varchar(32) NOT NULL,
  `model_name` varchar(45) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_permission_auth`
--

DROP TABLE IF EXISTS `tb_const_permission_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_permission_auth` (
  `id` bigint(36) NOT NULL,
  `permission_id` bigint(36) NOT NULL,
  `object_type` varchar(45) NOT NULL,
  `object_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_priority`
--

DROP TABLE IF EXISTS `tb_const_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_priority` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_release`
--

DROP TABLE IF EXISTS `tb_const_release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_release` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `project_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'TODO',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `first_sprint_no` int(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=695416 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_resultion`
--

DROP TABLE IF EXISTS `tb_const_resultion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_resultion` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_role`
--

DROP TABLE IF EXISTS `tb_const_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_role` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `translated_name` varchar(1024) DEFAULT NULL,
  `sequence` int(8) NOT NULL DEFAULT '0',
  `summary` varchar(1024) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_screen`
--

DROP TABLE IF EXISTS `tb_const_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_screen` (
  `id` bigint(36) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_status`
--

DROP TABLE IF EXISTS `tb_const_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_status` (
  `id` bigint(32) NOT NULL COMMENT '工作流的状态值',
  `organization_id` bigint(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_tasktype`
--

DROP TABLE IF EXISTS `tb_const_tasktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_tasktype` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_const_version`
--

DROP TABLE IF EXISTS `tb_const_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_const_version` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `ico` varchar(64) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `released` int(2) NOT NULL DEFAULT '0',
  `archived` int(11) NOT NULL DEFAULT '0',
  `start_date` timestamp NULL DEFAULT NULL,
  `released_date` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_custom_field_000`
--

DROP TABLE IF EXISTS `tb_custom_field_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_custom_field_000` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `res_id` bigint(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_value` varchar(1024) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_custom_field_001`
--

DROP TABLE IF EXISTS `tb_custom_field_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_custom_field_001` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(32) NOT NULL,
  `res_id` bigint(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_value` varchar(1024) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_book_000`
--

DROP TABLE IF EXISTS `tb_document_book_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_book_000` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `project_id` bigint(36) DEFAULT NULL,
  `creator_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `post_count` int(6) DEFAULT '0',
  `comment_enable` int(4) DEFAULT '0',
  `deleted` decimal(2,0) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_book_001`
--

DROP TABLE IF EXISTS `tb_document_book_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_book_001` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `project_id` bigint(36) DEFAULT NULL,
  `creator_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `post_count` int(6) DEFAULT '0',
  `comment_enable` int(4) DEFAULT '0',
  `deleted` decimal(2,0) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_book_user_rel_000`
--

DROP TABLE IF EXISTS `tb_document_book_user_rel_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_book_user_rel_000` (
  `id` int(32) NOT NULL COMMENT '主键无意义',
  `organization_id` int(32) NOT NULL COMMENT '组织ID',
  `book_id` int(32) NOT NULL COMMENT '集合ID',
  `employee_id` int(32) NOT NULL COMMENT '员工ID',
  `role` int(2) NOT NULL COMMENT '角色',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`book_id`,`employee_id`,`role`),
  KEY `index1` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_book_user_rel_001`
--

DROP TABLE IF EXISTS `tb_document_book_user_rel_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_book_user_rel_001` (
  `id` int(32) NOT NULL COMMENT '主键无意义',
  `organization_id` int(32) NOT NULL COMMENT '组织ID',
  `book_id` int(32) NOT NULL COMMENT '集合ID',
  `employee_id` int(32) NOT NULL COMMENT '员工ID',
  `role` int(2) NOT NULL COMMENT '角色',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`book_id`,`employee_id`,`role`),
  KEY `index1` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_chapter_000`
--

DROP TABLE IF EXISTS `tb_document_chapter_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_chapter_000` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `book_id` bigint(32) NOT NULL,
  `parent_id` bigint(32) DEFAULT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `summary` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sequence` decimal(22,0) NOT NULL DEFAULT '0',
  `deleted` decimal(22,0) DEFAULT '0',
  `imaged` int(2) DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_chapter_001`
--

DROP TABLE IF EXISTS `tb_document_chapter_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_chapter_001` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `book_id` bigint(32) NOT NULL,
  `parent_id` bigint(32) DEFAULT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `summary` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sequence` decimal(22,0) NOT NULL DEFAULT '0',
  `deleted` decimal(22,0) DEFAULT '0',
  `imaged` int(2) DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_file_000`
--

DROP TABLE IF EXISTS `tb_document_file_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_file_000` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `dirver_id` bigint(36) DEFAULT '0',
  `parent_id` bigint(36) DEFAULT NULL,
  `project_id` bigint(36) DEFAULT NULL,
  `creator_id` bigint(36) NOT NULL,
  `name` varchar(36) NOT NULL,
  `clazz` varchar(16) DEFAULT '0' COMMENT 'file folder image',
  `other_name` varchar(36) DEFAULT NULL,
  `length` bigint(36) DEFAULT '0',
  `summary` varchar(1024) DEFAULT NULL,
  `children_count` int(9) DEFAULT '0',
  `color` varchar(36) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `ext` varchar(36) DEFAULT NULL,
  `md5` varchar(36) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`),
  KEY `index3` (`name`),
  KEY `index4` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_document_file_001`
--

DROP TABLE IF EXISTS `tb_document_file_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_document_file_001` (
  `id` bigint(36) NOT NULL,
  `organization_id` bigint(36) NOT NULL,
  `dirver_id` bigint(36) DEFAULT '0',
  `parent_id` bigint(36) DEFAULT NULL,
  `project_id` bigint(36) DEFAULT NULL,
  `creator_id` bigint(36) NOT NULL,
  `name` varchar(36) NOT NULL,
  `clazz` varchar(16) DEFAULT '0' COMMENT 'file folder image',
  `other_name` varchar(36) DEFAULT NULL,
  `length` bigint(36) DEFAULT '0',
  `summary` varchar(1024) DEFAULT NULL,
  `children_count` int(9) DEFAULT '0',
  `color` varchar(36) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `ext` varchar(36) DEFAULT NULL,
  `md5` varchar(36) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`),
  KEY `index3` (`name`),
  KEY `index4` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_events`
--

DROP TABLE IF EXISTS `tb_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_events` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(64) NOT NULL,
  `color` varchar(64) DEFAULT NULL,
  `deleted` int(2) NOT NULL DEFAULT '0',
  `crossed` int(2) NOT NULL DEFAULT '0',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=514810 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_events_user_rel`
--

DROP TABLE IF EXISTS `tb_events_user_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_events_user_rel` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `event_id` int(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`event_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project`
--

DROP TABLE IF EXISTS `tb_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project` (
  `id` bigint(32) NOT NULL COMMENT '项目ID',
  `organization_id` bigint(32) NOT NULL COMMENT '公司ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `name` varchar(128) NOT NULL COMMENT '项目名称',
  `py` varchar(45) DEFAULT NULL,
  `pin_yin` varchar(255) DEFAULT NULL,
  `summary` varchar(255) NOT NULL COMMENT '项目描述',
  `category` varchar(16) DEFAULT NULL,
  `code` int(4) NOT NULL DEFAULT '0' COMMENT '项目编码',
  `scope` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否开放',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(2) NOT NULL DEFAULT '0' COMMENT '删除 0正常 1删除',
  `archived` int(2) NOT NULL DEFAULT '0' COMMENT '是否已归档 0未 1已',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_sprint`
--

DROP TABLE IF EXISTS `tb_project_sprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_sprint` (
  `id` bigint(16) NOT NULL,
  `organization_id` bigint(16) DEFAULT NULL,
  `project_id` bigint(16) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sequence` int(16) DEFAULT NULL,
  `released` int(10) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version_project` (`project_id`),
  KEY `idx_version_sequence` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_task_user_rel_000`
--

DROP TABLE IF EXISTS `tb_project_task_user_rel_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_task_user_rel_000` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(36) NOT NULL,
  `task_id` bigint(36) NOT NULL,
  `user_id` bigint(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_task_user` (`organization_id`,`task_id`,`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_task_user_rel_001`
--

DROP TABLE IF EXISTS `tb_project_task_user_rel_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_task_user_rel_001` (
  `id` bigint(36) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(36) NOT NULL,
  `task_id` bigint(36) NOT NULL,
  `user_id` bigint(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_task_user` (`organization_id`,`task_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_todo_000`
--

DROP TABLE IF EXISTS `tb_project_todo_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_todo_000` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `organization_id` bigint(32) NOT NULL COMMENT '组织ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `source_id` bigint(32) DEFAULT '0' COMMENT '从哪复制的',
  `subject_id` bigint(32) NOT NULL COMMENT '主体ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `pos` bigint(32) DEFAULT NULL COMMENT '位置',
  `summary` varchar(255) DEFAULT '' COMMENT '描述',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `times` int(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index3` (`organization_id`,`source_id`),
  KEY `index2` (`organization_id`,`subject_id`,`times`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_todo_001`
--

DROP TABLE IF EXISTS `tb_project_todo_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_todo_001` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `organization_id` bigint(32) NOT NULL COMMENT '组织ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `source_id` bigint(32) DEFAULT '0' COMMENT '从哪复制的',
  `subject_id` bigint(32) NOT NULL COMMENT '主体ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `pos` bigint(32) DEFAULT NULL COMMENT '位置',
  `summary` varchar(255) DEFAULT '' COMMENT '描述',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `times` int(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index3` (`organization_id`,`source_id`),
  KEY `index2` (`organization_id`,`subject_id`,`times`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_todo_item_000`
--

DROP TABLE IF EXISTS `tb_project_todo_item_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_todo_item_000` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `organization_id` bigint(32) NOT NULL,
  `todo_id` bigint(32) NOT NULL COMMENT '组织ID',
  `pos` bigint(32) DEFAULT '0' COMMENT '位置',
  `content` varchar(4000) DEFAULT '',
  `status` int(11) DEFAULT '0',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`todo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_project_todo_item_001`
--

DROP TABLE IF EXISTS `tb_project_todo_item_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_todo_item_001` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `organization_id` bigint(32) NOT NULL,
  `todo_id` bigint(32) NOT NULL COMMENT '组织ID',
  `pos` bigint(32) DEFAULT '0' COMMENT '位置',
  `content` varchar(4000) DEFAULT '',
  `status` int(11) DEFAULT '0',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  KEY `index2` (`organization_id`,`todo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_system_event_logs`
--

DROP TABLE IF EXISTS `tb_system_event_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_system_event_logs` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `organization_id` int(32) NOT NULL,
  `creator_id` varchar(32) NOT NULL,
  `event_type` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=514810 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_system_event_subscribe`
--

DROP TABLE IF EXISTS `tb_system_event_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_system_event_subscribe` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(128) NOT NULL,
  `channel_id` varchar(128) NOT NULL,
  `template` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=514810 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_system_event_subscribe_scope`
--

DROP TABLE IF EXISTS `tb_system_event_subscribe_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_system_event_subscribe_scope` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(128) NOT NULL,
  `channel_id` varchar(128) NOT NULL,
  `clazz` varchar(128) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`channel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=514810 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_rel_000`
--

DROP TABLE IF EXISTS `tb_tag_rel_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_rel_000` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(16) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `tag_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_sub_tag` (`organization_id`,`subject_id`,`tag_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_tag_rel_001`
--

DROP TABLE IF EXISTS `tb_tag_rel_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_rel_001` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(16) NOT NULL,
  `subject_id` varchar(32) NOT NULL,
  `tag_id` varchar(32) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_sub_tag` (`organization_id`,`subject_id`,`tag_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_task_000`
--

DROP TABLE IF EXISTS `tb_task_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_task_000` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `clazz` varchar(32) NOT NULL COMMENT '任务类型',
  `organization_id` bigint(32) NOT NULL COMMENT '组织ID',
  `project_Id` bigint(32) NOT NULL COMMENT '项目ID',
  `workflow_id` bigint(32) NOT NULL DEFAULT '0' COMMENT '工作流ID',
  `parent_id` bigint(32) DEFAULT NULL COMMENT '父ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `executor_id` bigint(32) DEFAULT NULL COMMENT '负责人ID',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近的更新时间',
  `plan_start_date` datetime DEFAULT NULL COMMENT '计划开始时间',
  `plan_end_date` datetime DEFAULT NULL COMMENT '计划完成时间',
  `end_date` datetime DEFAULT NULL COMMENT '实际完成时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `module_id` int(9) DEFAULT NULL COMMENT '模块ID',
  `status_id` int(32) NOT NULL DEFAULT '0' COMMENT '状态ID',
  `priority_id` int(2) NOT NULL DEFAULT '0' COMMENT '优先级ID',
  `resolution_id` int(32) NOT NULL DEFAULT '0' COMMENT '解决结果',
  `source_id` bigint(32) DEFAULT NULL COMMENT 'task 是归属哪个story\nstory 是归属哪个feature',
  `percent` int(3) NOT NULL DEFAULT '0' COMMENT '进度 0-100',
  `visible` int(1) NOT NULL DEFAULT '0' COMMENT ' 0项目成员可见 members 1参与人可见 involves ',
  `man_hours` int(6) NOT NULL DEFAULT '0' COMMENT '工时',
  `deleted` int(2) NOT NULL DEFAULT '0' COMMENT '是否已经删除',
  `accepted` int(11) NOT NULL DEFAULT '0' COMMENT '是否已经接受，敏捷需求',
  `finished` int(11) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL COMMENT '颜色',
  `type` varchar(32) DEFAULT NULL COMMENT 'feature, story的类型枚举',
  `effort` int(4) DEFAULT NULL COMMENT '影响，效果',
  `point` int(4) DEFAULT NULL COMMENT '点数',
  `version` bigint(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_task_001`
--

DROP TABLE IF EXISTS `tb_task_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_task_001` (
  `id` bigint(32) NOT NULL COMMENT '任务ID',
  `clazz` varchar(32) NOT NULL COMMENT '任务类型',
  `organization_id` bigint(32) NOT NULL COMMENT '组织ID',
  `project_Id` bigint(32) NOT NULL COMMENT '项目ID',
  `workflow_id` bigint(32) NOT NULL DEFAULT '0' COMMENT '工作流ID',
  `parent_id` bigint(32) DEFAULT NULL COMMENT '父ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `executor_id` bigint(32) DEFAULT NULL COMMENT '负责人ID',
  `name` varchar(255) NOT NULL COMMENT '标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近的更新时间',
  `plan_start_date` datetime DEFAULT NULL COMMENT '计划开始时间',
  `plan_end_date` datetime DEFAULT NULL COMMENT '计划完成时间',
  `end_date` datetime DEFAULT NULL COMMENT '实际完成时间',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `module_id` int(9) DEFAULT NULL COMMENT '模块ID',
  `status_id` int(32) NOT NULL DEFAULT '0' COMMENT '状态ID',
  `priority_id` int(2) NOT NULL DEFAULT '0' COMMENT '优先级ID',
  `resolution_id` int(32) NOT NULL DEFAULT '0' COMMENT '解决结果',
  `source_id` bigint(32) DEFAULT NULL COMMENT 'task 是归属哪个story\nstory 是归属哪个feature',
  `percent` int(3) NOT NULL DEFAULT '0' COMMENT '进度 0-100',
  `visible` int(1) NOT NULL DEFAULT '0' COMMENT ' 0项目成员可见 members 1参与人可见 involves ',
  `man_hours` int(6) NOT NULL DEFAULT '0' COMMENT '工时',
  `deleted` int(2) NOT NULL DEFAULT '0' COMMENT '是否已经删除',
  `accepted` int(11) NOT NULL DEFAULT '0' COMMENT '是否已经接受，敏捷需求',
  `finished` int(11) NOT NULL,
  `color` varchar(32) DEFAULT NULL COMMENT '颜色',
  `type` varchar(32) DEFAULT NULL COMMENT 'feature, story的类型枚举',
  `effort` int(4) DEFAULT NULL COMMENT '影响，效果',
  `point` int(4) DEFAULT NULL COMMENT '点数',
  `version` bigint(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_project'
--

--
-- Dumping routines for database 'db_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 16:37:51
-- default data \r\n
-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_project
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Dumping data for table `tb_const_permission`
--

LOCK TABLES `tb_const_permission` WRITE;
/*!40000 ALTER TABLE `tb_const_permission` DISABLE KEYS */;
INSERT INTO `tb_const_permission` VALUES (1,'管理项目','project','项目权限','允许在JIRA中管理项目。','update',0),(2,'浏览项目','project','项目权限','允许浏览项目和项目所属的问题。','view',0),(5,'被分配','task','问题权限','允许其他用户把问题分配给这个权限的用户。',NULL,0),(6,'分配问题','task','问题权限','允许分配问题给其他用户','assign',0),(7,'关闭问题','task','问题权限','允许关闭问题。通常是开发人员解决问题，质检部门负责关闭。',NULL,0),(8,'创建问题','task','问题权限','允许创建问题','admin.permissions.CREATE_TASK',0),(9,'删除问题','task','问题权限','允许删除问题','delete',0),(10,'编辑问题','task','问题权限','允许编辑问题','update',0),(11,'链接问题','task','问题权限','允许将多个问题建立联系。只有当链接问题功能打开后才能使用。','link',0),(12,'修改报告人','task','问题权限','允许在创建和编辑问题时修改报告人。',NULL,0),(14,'解决问题','task','问题权限','允许解决和重新打开问题。包括可以设置\'解决版本\'。',NULL,0),(15,'规划问题日程','task','问题权限','允许查看或编辑问题的到期日。',NULL,0),(16,'设置安全级别','task','问题权限','允许设置一个问题的安全级别，来决定哪些用户可以浏览这个问题。',NULL,0),(17,'执行工作流','task','问题权限','允许执行工作流。',NULL,0),(20,'添加备注','comment','使用备注权限','允许为问题添加备注',NULL,0),(21,'删除所有备注','comment','使用备注权限','允许删除所有备注。',NULL,0),(22,'删除自己的备注','comment','使用备注权限','允许删除自己的备注',NULL,0),(23,'编辑所有备注','comment','使用备注权限','允许编辑所有备注。',NULL,0),(24,'编辑自己的备注','comment','使用备注权限','允许编辑自己的备注。',NULL,0),(25,'添加附件','attachment','附件权限','这个权限中的用户可以为问题添加附件。','create',0),(26,'删除所有附件','attachment','附件权限','拥有这个权限的用户可以删除所有附件。','delete',0),(27,'删除自己的附件','attachment','附件权限','拥有这个权限的用户可以删除自己的附件。',NULL,0),(28,'删除所有工作日志','man-hour','时间追踪权限','允许删除所有人的工作日志记录。',NULL,0),(29,'删除自己的工作日志','man-hour','时间追踪权限','允许删除自己的工作日志记录。',NULL,0),(30,'编辑所有工作日志','man-hour','时间追踪权限','允许编辑所有人的工作日志记录。',NULL,0),(31,'编辑自己的工作日志','man-hour','时间追踪权限','允许编辑自己的工作日志记录。',NULL,0),(32,'添加工作日志','man-hour','时间追踪权限','允许为问题记录工作日志。只有当时间追踪功能打开后才能使用。',NULL,0);
/*!40000 ALTER TABLE `tb_const_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 16:37:52
-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_project
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Dumping data for table `tb_const_priority`
--
-- WHERE:  id > 0

LOCK TABLES `tb_const_priority` WRITE;
/*!40000 ALTER TABLE `tb_const_priority` DISABLE KEYS */;
INSERT INTO `tb_const_priority` VALUES (1,1013802,'1013601','致命',NULL,'This problem will block progress.','fa fa-bug',NULL,0,0,'2016-06-29 15:13:12'),(2,1013802,'1013601','重要',NULL,'Serious problem that could block progress.','fa fa-exclamation-circle',NULL,0,0,'2016-06-29 15:13:52'),(3,1013802,'1013601','普通',NULL,'Has the potential to affect progress.','fa fa-question-circle',NULL,0,0,'2016-06-29 15:14:35'),(4,1013802,'1013601','细微',NULL,'Trivial problem with little or no impact on progress.','fa fa-warning',NULL,0,0,'2017-01-09 12:43:58');
/*!40000 ALTER TABLE `tb_const_priority` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 16:37:52
--
-- 初始化 QUARTZ 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_quartz;
CREATE DATABASE `db_quartz` DEFAULT CHARACTER SET utf8mb4 ;
use db_quartz;


-- -------------------------------------------------------- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_quartz
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `qtz_blob_triggers`
--

DROP TABLE IF EXISTS `qtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_calendars`
--

DROP TABLE IF EXISTS `qtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_cron_triggers`
--

DROP TABLE IF EXISTS `qtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_extend_triggers_back`
--

DROP TABLE IF EXISTS `qtz_extend_triggers_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_extend_triggers_back` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_extend_triggers_execute_log`
--

DROP TABLE IF EXISTS `qtz_extend_triggers_execute_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_extend_triggers_execute_log` (
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 NOT NULL,
  `FIRE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `HTTP_STATUS` int(4) DEFAULT NULL,
  `HTTP_RESP` text,
  `STATUS` int(1) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_fired_triggers`
--

DROP TABLE IF EXISTS `qtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_job_details`
--

DROP TABLE IF EXISTS `qtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_locks`
--

DROP TABLE IF EXISTS `qtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_scheduler_state`
--

DROP TABLE IF EXISTS `qtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_simple_triggers`
--

DROP TABLE IF EXISTS `qtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qtz_triggers`
--

DROP TABLE IF EXISTS `qtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_quartz'
--

--
-- Dumping routines for database 'db_quartz'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 16:37:52
-- default data \r\n
--
-- 初始化 CHARGE 项目
-- ------------------------------------------------------
-- Server version	5.7.17-log

use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Sample09X#';
flush privileges;
DROP DATABASE IF EXISTS db_charge;
CREATE DATABASE `db_charge` DEFAULT CHARACTER SET utf8mb4 ;
use db_charge;


-- ------------------------------------------------------
-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: mysql    Database: db_charge
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `tb_bill`
--

DROP TABLE IF EXISTS `tb_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_bill` (
  `id` bigint(32) NOT NULL COMMENT '项目ID',
  `organization_id` bigint(32) NOT NULL COMMENT '公司ID',
  `creator_id` bigint(32) NOT NULL COMMENT '创建人ID',
  `category_id` bigint(16) NOT NULL COMMENT '项目分类ID',
  `name` varchar(128) NOT NULL COMMENT '项目名称',
  `code` int(4) NOT NULL DEFAULT '0' COMMENT '项目编码',
  `summary` varchar(255) NOT NULL COMMENT '项目描述',
  `open` smallint(1) NOT NULL COMMENT '是否开放',
  `ico` varchar(255) DEFAULT NULL COMMENT '图标',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` int(2) NOT NULL DEFAULT '0' COMMENT '删除 0正常 1删除',
  `archived` int(2) NOT NULL DEFAULT '0' COMMENT '是否已归档 0未 1已',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_charge_transaction_000`
--

DROP TABLE IF EXISTS `tb_charge_transaction_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_charge_transaction_000` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '公司的交易流水',
  `type` int(2) NOT NULL,
  `organization_id` bigint(32) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `operator` varchar(64) NOT NULL,
  `point` bigint(11) NOT NULL DEFAULT '0',
  `balance` bigint(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=655230 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_charge'
--

--
-- Dumping routines for database 'db_charge'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 16:37:52
-- default data \r\n
