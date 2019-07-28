use db_uc;

-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
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
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `user_id` bigint(32) DEFAULT NULL COMMENT '绑定用户ID',
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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4;
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
  `scope` varchar(16) NOT NULL COMMENT '唯一标识',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `description` varchar(2000) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `contact` varchar(32) NOT NULL COMMENT '创建人ID',
  `mobile` varchar(32) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='验证码数据，用于修改密码，邮箱等场景中';
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
-- Table structure for table `tb_uc_user`
--

DROP TABLE IF EXISTS `tb_uc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uc_user` (
  `id` bigint(36) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `visited` bit(1) NOT NULL DEFAULT b'0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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

-- Dump completed on 2019-07-28 15:21:01
-- default data 

