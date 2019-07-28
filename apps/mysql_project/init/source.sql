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
  `organization_id` bigint(32) NOT NULL,
  `project_id` bigint(32) NOT NULL,
  `creator_id` bigint(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `sequence` bigint(32) NOT NULL DEFAULT '0',
  `item_count` int(32) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `creator_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `translated_name` varchar(255) DEFAULT NULL,
  `closed` int(2) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `sequence` int(16) NOT NULL DEFAULT '0',
  `deleted` int(2) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `first_sprint_no` int(6) DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_task_type_proj_id` (`organization_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `name` varchar(32) NOT NULL,
  `desc` varchar(1024) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
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

-- Dump completed on 2019-07-28 15:18:40
-- default data 

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

-- Dump completed on 2019-07-28 15:19:15
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

-- Dump completed on 2019-07-28 15:19:50
