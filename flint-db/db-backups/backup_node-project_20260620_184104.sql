/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: node-project
-- ------------------------------------------------------
-- Server version	11.8.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `cmn_department`
--

DROP TABLE IF EXISTS `cmn_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmn_department` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmn_department`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `cmn_department` WRITE;
/*!40000 ALTER TABLE `cmn_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmn_department` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cmn_location`
--

DROP TABLE IF EXISTS `cmn_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmn_location` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmn_location`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `cmn_location` WRITE;
/*!40000 ALTER TABLE `cmn_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmn_location` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `core_company`
--

DROP TABLE IF EXISTS `core_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_company` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_company`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `core_company` WRITE;
/*!40000 ALTER TABLE `core_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_company` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_app_application`
--

DROP TABLE IF EXISTS `sys_app_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_app_application` (
  `sys_id` varchar(32) NOT NULL,
  `sys_created_by` varchar(40) NOT NULL,
  `sys_updated_by` varchar(40) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `sys_name` varchar(255) DEFAULT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_scope` varchar(32) DEFAULT NULL,
  `sys_update_name` varchar(255) DEFAULT NULL,
  `sys_policy` varchar(40) DEFAULT NULL,
  `sys_package` varchar(32) DEFAULT NULL,
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `title` varchar(40) NOT NULL DEFAULT '0',
  `active` tinyint(1) DEFAULT 0,
  `roles` varchar(255) DEFAULT '0',
  `category` varchar(32) DEFAULT '0',
  `hint` varchar(255) DEFAULT '0',
  `description` varchar(4000) DEFAULT '0',
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_app_application`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_app_application` WRITE;
/*!40000 ALTER TABLE `sys_app_application` DISABLE KEYS */;
INSERT INTO `sys_app_application` VALUES
('3f9ccbdfb32b5ac8b3729ccf165dff75','system','system','sys_app_application','System','0','global','sys_app_application_3f9ccbdfb32b5ac8b3729ccf165dff75',NULL,NULL,'2025-08-27 19:58:54','2025-08-27 20:24:06','System Definition',1,'','','','');
/*!40000 ALTER TABLE `sys_app_application` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_app_module`
--

DROP TABLE IF EXISTS `sys_app_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_app_module` (
  `sys_id` char(36) NOT NULL,
  `sys_created_by` varchar(40) NOT NULL,
  `sys_updated_by` varchar(40) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `sys_name` varchar(255) DEFAULT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_scope` varchar(32) DEFAULT NULL,
  `sys_update_name` varchar(255) DEFAULT NULL,
  `sys_policy` varchar(40) DEFAULT NULL,
  `sys_package` varchar(32) DEFAULT NULL,
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `title` varchar(80) DEFAULT '0',
  `application` varchar(32) DEFAULT '0',
  `order` decimal(15,0) DEFAULT 0,
  `hint` varchar(255) DEFAULT '0',
  `active` tinyint(1) DEFAULT 0,
  `roles` varchar(255) DEFAULT '0',
  `link_type` varchar(40) DEFAULT '0',
  `name` varchar(80) DEFAULT '0',
  `view_name` varchar(40) DEFAULT '0',
  `query` varchar(3500) DEFAULT '0',
  `filter` varchar(3500) DEFAULT '0',
  `window_name` varchar(40) DEFAULT '0',
  `override_menu_roles` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_app_module`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_app_module` WRITE;
/*!40000 ALTER TABLE `sys_app_module` DISABLE KEYS */;
INSERT INTO `sys_app_module` VALUES
('171b13e11183541bacd2aa85225cd660','system','system','sys_app_module','System Property','0','global','sys_app_module_171b13e11183541bacd2aa85225cd660',NULL,NULL,'2025-08-28 16:51:08','2026-06-20 16:34:06','System Properties','',200,'0',1,'0','list_of_records','sys_properties','0','0','0','0',0),
('43f3724dd069542e8d4c67c8f5f7c960','system','system','sys_app_module','Locations','0',NULL,'sys_app_module_43f3724dd069542e8d4c67c8f5f7c960',NULL,NULL,'2026-06-20 16:08:29','2026-06-20 16:37:35','Locations','0',0,'0',1,'0','list_of_records','cmn_location','0','0','0','0',0),
('5080809185335374b6590d30223ed30f','system','system','sys_app_module','UI Pages','0',NULL,'sys_app_module_5080809185335374b6590d30223ed30f',NULL,NULL,'2026-06-13 19:52:40','2026-06-20 16:37:53','UI Pages','0',0,'0',1,'0','list_of_records','sys_ui_page','0','0','0','0',0),
('51c90fec7468541f8b9caad643834c9e','system','system','sys_app_module','Classes - Fields','0',NULL,'sys_app_module_51c90fec7468541f8b9caad643834c9e',NULL,NULL,'2025-08-27 20:39:52','2025-08-27 20:39:52','Classes - Fields','0',80,'0',1,'0','list_of_records','sys_glide_object','0','0','0','0',0),
('58dea73dd7815eb9bdbe7427f3fc0297','system','system','sys_app_module','Choices','0',NULL,'sys_app_module_58dea73dd7815eb9bdbe7427f3fc0297',NULL,NULL,'2026-06-20 12:45:32','2026-06-20 12:45:32','Choices','0',0,'0',1,'0','list_of_records','sys_choice','0','0','0','0',0),
('5a60183a9077571f8960c4b2e5a6cd6d','system','system','sys_app_module','Tables','0','global','sys_app_module_5a60183a9077571f8960c4b2e5a6cd6d',NULL,NULL,'2025-08-27 20:32:48','2025-08-27 20:34:44','Tables','System Definition',10,'Create and manage tables',1,'0','list_of_records','sys_db_object','0','0','active=true','0',0),
('601787b90b53589a8f2aaa33229fa3c7','system','system','sys_app_module','Application Menus','0',NULL,'sys_app_module_601787b90b53589a8f2aaa33229fa3c7',NULL,NULL,'2026-06-20 16:13:07','2026-06-20 16:36:38','Application Menus','0',0,'0',1,'0','list_of_records','sys_app_application','0','0','0','0',0),
('6c3cb8d1ce675a9b851e125eea47d135','system','system','sys_app_module','Users','0',NULL,'sys_app_module_6c3cb8d1ce675a9b851e125eea47d135',NULL,NULL,'2026-06-20 16:07:58','2026-06-20 16:37:46','Users','0',0,'0',1,'0','list_of_records','sys_user','0','0','0','0',0),
('79558534c90c5d4f9c65071857b080d5','system','system','sys_app_module','Applications','0',NULL,'sys_app_module_79558534c90c5d4f9c65071857b080d5',NULL,NULL,'2025-09-21 09:43:13','2025-09-21 09:43:13','Applications','0',0,'0',1,'0','list_of_records','sys_scope','0','0','0','0',0),
('90b5c882261950d2a99203f7e1e53aa5','system','system','sys_app_module','Modules','0',NULL,'sys_app_module_90b5c882261950d2a99203f7e1e53aa5',NULL,NULL,'2025-09-21 09:39:28','2025-09-21 09:39:28','Modules','0',1,'0',1,'0','list_of_records','sys_app_module','0','0','0','0',0),
('9c1487ba5309541fb8fc1301c03c3e08','system','system','sys_app_module','Application Files','0','global','sys_app_module_9c1487ba5309541fb8fc1301c03c3e08',NULL,NULL,'2025-08-27 20:38:45','2025-08-27 20:38:45','Application Files','',320,'List all application file records',1,'0','list_of_records','sys_metadata','0','0','','0',0),
('a4df546e60255e8ba0496e5274b1e863','system','system','sys_app_module','Companies','0',NULL,'sys_app_module_a4df546e60255e8ba0496e5274b1e863',NULL,NULL,'2026-06-20 16:09:02','2026-06-20 16:37:03','Companies','0',0,'0',1,'0','list_of_records','core_company','0','0','0','0',0),
('ae3a2c5bce435f369d0eef3bcc63b2f7','system','system','sys_app_module','sys_app_module','0','global','sys_app_module_ae3a2c5bce435f369d0eef3bcc63b2f7',NULL,NULL,'2025-08-27 20:37:01','2025-08-28 12:22:26','Dictionary','System Definition',15,'A list of tables and columns; tables are specified by a having a Type of collection',1,'0','list_of_records','sys_dictionary','0','0','active=true','0',0),
('cd060327e69d5f9bb89e732642c70845','system','system','sys_app_module','Departments','0',NULL,'sys_app_module_cd060327e69d5f9bb89e732642c70845',NULL,NULL,'2026-06-20 16:08:44','2026-06-20 16:37:27','Departments','0',0,'0',1,'0','list_of_records','cmn_department','0','0','0','0',0),
('ea939685f3ba5644b604809debfdd367','system','system','sys_app_module','User Preferences','0',NULL,'sys_app_module_ea939685f3ba5644b604809debfdd367',NULL,NULL,'2026-06-13 16:54:16','2026-06-20 16:38:00','User Preferences','0',0,'0',1,'0','list_of_records','sys_user_preference','0','0','0','0',0),
('fe2467ce27925d11a920a8cb9bd69efc','system','system','sys_app_module','Packages','0',NULL,'sys_app_module_fe2467ce27925d11a920a8cb9bd69efc',NULL,NULL,'2025-09-21 09:42:43','2025-09-21 09:42:43','Packages','0',0,'0',1,'0','list_of_records','sys_package','0','0','0','0',0);
/*!40000 ALTER TABLE `sys_app_module` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_choice`
--

DROP TABLE IF EXISTS `sys_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_choice` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `label` text DEFAULT NULL,
  `language` text DEFAULT NULL,
  `depedent_value` text DEFAULT NULL,
  `hint` text DEFAULT NULL,
  `element` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `name` varchar(32) DEFAULT '0',
  `sequence` int(11) DEFAULT 0,
  `inactive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_choice`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_choice` WRITE;
/*!40000 ALTER TABLE `sys_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_choice` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_db_object`
--

DROP TABLE IF EXISTS `sys_db_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_db_object` (
  `sys_id` char(36) NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_class_name` varchar(80) NOT NULL,
  `sys_name` varchar(255) DEFAULT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_update_name` varchar(255) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `label` varchar(80) DEFAULT NULL,
  `super_class` varchar(32) DEFAULT NULL,
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_scope` varchar(32) DEFAULT NULL,
  `sys_policy` varchar(40) DEFAULT NULL,
  `sys_package` varchar(32) DEFAULT NULL,
  `is_extendable` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_db_object`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_db_object` WRITE;
/*!40000 ALTER TABLE `sys_db_object` DISABLE KEYS */;
INSERT INTO `sys_db_object` VALUES
('0671f552394b5f8ea86ac8b65e656247','system','system','sys_db_object','Sys App Module','0','sys_db_object_0671f552394b5f8ea86ac8b65e656247','sys_app_module','Module','sys_metadata','2025-08-27 18:09:45','2025-08-27 18:09:45','global',NULL,NULL,0),
('1744788797415101b4ef71bd88240b9b','system','system','sys_db_object','Dictionary Entry','0','sys_db_object_1744788797415101b4ef71bd88240b9b','sys_dictionary','Dictionary Entry','sys_metadata','2024-03-26 21:35:17','2025-08-27 18:58:13','global',NULL,NULL,0),
('1c596175c155588f84623ed6663c397c','system','system','sys_db_object','Sys Properties','0','sys_db_object_1c596175c155588f84623ed6663c397c','sys_properties','System Property','sys_metadata','2025-08-28 16:54:21','2025-08-28 16:54:21','global',NULL,NULL,0),
('21ef018970fd5bcda350f765f261a1d3','system','system','sys_db_object','Department','0','sys_db_object_21ef018970fd5bcda350f765f261a1d3','cmn_department','Department',NULL,'2026-06-20 15:50:29','2026-06-20 15:50:33',NULL,NULL,NULL,0),
('3601f78f982b5213836a1c7a7f5dcc8d','system','system','sys_db_object','Sys App Application','0','sys_db_object_3601f78f982b5213836a1c7a7f5dcc8d','sys_app_application','Application Menu','sys_metadata','2025-08-26 11:39:55','2026-06-20 16:22:04','global',NULL,NULL,0),
('37a31c20f50003100a22c0b3dfa15126','system','system','sys_db_object','Test','0','sys_db_object_37a31c20f50003100a22c0b3dfa15126','test','TEST','','2026-04-01 03:55:16','2026-06-18 21:05:47','global','','1fa3d820f50003100a22c0b3dfa15103',0),
('39d765df78bb5ea9975b9f6217f110cc','system','system','sys_db_object','Sys Ui Page','0','sys_db_object_39d765df78bb5ea9975b9f6217f110cc','sys_ui_page','UI Page','sys_metadata','2026-06-13 19:34:45','2026-06-13 19:34:45',NULL,NULL,NULL,0),
('4ab34b6b5d6b56368fe6d11be7eba1dd','system','system','sys_db_object','Sys Choice','0','sys_db_object_4ab34b6b5d6b56368fe6d11be7eba1dd','sys_choice','Choice',NULL,'2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL,0),
('8878dd8fc08f5a5580dca64f187f1f71','system','system','sys_db_object','Sys Scope','0','sys_db_object_8878dd8fc08f5a5580dca64f187f1f71','sys_scope','Application','sys_package','2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL,0),
('964419cb15cd5062b2676569b7ba076d','system','system','sys_db_object','Table','0','sys_db_object_964419cb15cd5062b2676569b7ba076d','sys_db_object','Table','sys_metadata','2024-03-26 21:35:17','2025-08-27 18:58:32','global',NULL,NULL,0),
('9b5bd52f9a505910ba426503adfba149','system','system','sys_db_object','Company','0','sys_db_object_9b5bd52f9a505910ba426503adfba149','core_company','Company',NULL,'2026-06-20 15:38:44','2026-06-20 15:45:17',NULL,NULL,NULL,0),
('ba3e1fa3594e5cbe9de490c882cf8e08','system','system','sys_db_object','Sys User Preference','0','sys_db_object_ba3e1fa3594e5cbe9de490c882cf8e08','sys_user_preference','User Preference',NULL,'2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL,0),
('c0c3858c17e95b56b7c3aa3d923340c6','system','system','sys_db_object','Sys User','0','sys_db_object_c0c3858c17e95b56b7c3aa3d923340c6','sys_user','User',NULL,'2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL,0),
('e35ca9039bd950c8a717b622dba9dbd3','system','system','sys_db_object','Sys Package','0','sys_db_object_e35ca9039bd950c8a717b622dba9dbd3','sys_package','Package',NULL,'2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL,0),
('e5f0af6ba4975fb399642f61343d0bf6','system','system','sys_db_object','Location','0','sys_db_object_e5f0af6ba4975fb399642f61343d0bf6','cmn_location','Location',NULL,'2026-06-20 15:45:02','2026-06-20 15:45:07',NULL,NULL,NULL,0),
('ea3a9531b3ea5377ac7668e37493e418','system','system','sys_db_object','Field class','0','sys_db_object_ea3a9531b3ea5377ac7668e37493e418','sys_glide_object','Field class','sys_metadata','2024-03-26 21:35:17','2025-08-27 18:58:41','global',NULL,NULL,0),
('fe78c815242c5bc0ac401dd0c5fc712d','system','system','sys_db_object','Sys Metadata','0','sys_db_object_fe78c815242c5bc0ac401dd0c5fc712d','sys_metadata','Application File',NULL,'2024-03-26 21:35:17','2026-06-20 16:35:39','global',NULL,NULL,0);
/*!40000 ALTER TABLE `sys_db_object` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_dictionary`
--

DROP TABLE IF EXISTS `sys_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dictionary` (
  `sys_id` char(36) NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_class_name` varchar(80) NOT NULL,
  `sys_name` varchar(255) DEFAULT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_update_name` varchar(255) DEFAULT NULL,
  `element` varchar(80) DEFAULT NULL,
  `column_label` varchar(80) DEFAULT NULL,
  `internal_type` varchar(32) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `default_value` varchar(80) DEFAULT NULL,
  `max_length` int(6) DEFAULT NULL,
  `attrributes` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `unique` tinyint(1) DEFAULT NULL,
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_scope` varchar(32) DEFAULT NULL,
  `sys_policy` varchar(40) DEFAULT NULL,
  `sys_package` varchar(32) DEFAULT NULL,
  `reference_key` varchar(40) DEFAULT NULL,
  `reference_qual` text DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionary`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_dictionary` WRITE;
/*!40000 ALTER TABLE `sys_dictionary` DISABLE KEYS */;
INSERT INTO `sys_dictionary` VALUES
('007e290baf0557768da279f2d539a6cf','system','system','sys_dictionary','Time format','0','sys_dictionary_sys_user_time_format','time_format','Time format','string','sys_user','cmn_department',NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 15:54:01','2026-06-20 15:54:01',NULL,NULL,NULL,NULL,NULL),
('0234096a1d78529bb4c0ebe97de6e199','system','system','sys_dictionary','Value','0','sys_dictionary_sys_choice_value','value','Value','string','sys_choice',NULL,NULL,4000,NULL,1,NULL,NULL,NULL,'2026-06-20 12:52:11','2026-06-20 12:52:11',NULL,NULL,NULL,NULL,NULL),
('058e6fffc8cf59ca83dfc7f510797511','system','system','sys_dictionary','Reference key','0','sys_dictionary_sys_dictionary_reference_key','reference_key','Reference key','reference','sys_dictionary','sys_dictionary',NULL,40,NULL,1,NULL,NULL,NULL,'2025-09-21 13:40:10','2026-06-20 12:22:12','global',NULL,NULL,'element',NULL),
('0655d993d3515236a8ee86b837e7e43f','system','system','sys_dictionary','Title','0','sys_dictionary_0655d993d3515236a8ee86b837e7e43f','title','Title','string','sys_app_module',NULL,NULL,80,'',1,1,NULL,NULL,'2025-08-27 20:14:30','2026-06-20 12:22:32','global',NULL,NULL,NULL,NULL),
('07805207d9005f85ba362c8f675696a1','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_choice_sys_updated_by','sys_updated_by','Updated by','string','sys_choice',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL,NULL,NULL),
('07e42ab83dee5fb19aeac925c9f85671','system','system','sys_dictionary','Value','0','sys_dictionary_sys_user_preference_value','value','Value','string','sys_user_preference',NULL,'string',65000,NULL,1,NULL,0,NULL,'2026-06-13 16:52:43','2026-06-13 16:52:43',NULL,NULL,NULL,NULL,NULL),
('0ae203d236575148b06a144a25110582','system','system','sys_dictionary','Updated','0','sys_dictionary_cmn_department_sys_updated_on','sys_updated_on','Updated','datetime','cmn_department',NULL,NULL,6,NULL,1,NULL,0,NULL,'2026-06-20 15:50:29','2026-06-20 15:50:29','global',NULL,NULL,NULL,NULL),
('0e80ab516e1a5e27bd47e54e7c999192','system','system','sys_dictionary','Application','0',NULL,'sys_scope','Application','reference','sys_metadata','sys_scope',NULL,32,NULL,1,NULL,NULL,NULL,'2024-03-25 16:05:00','2026-06-20 12:10:28','global',NULL,NULL,NULL,NULL),
('0f18ae2950095510841ebbac13c6294a','system','system','sys_dictionary','description','0','sys_dictionary_0f18ae2950095510841ebbac13c6294a','description','Description','string','sys_app_application',NULL,NULL,4000,NULL,1,NULL,NULL,NULL,'2025-08-27 19:38:58','2025-08-27 19:38:58','global',NULL,NULL,NULL,NULL),
('0fa22f5258955d148a2d41a744bdb7a9','system','system','sys_dictionary','Version','0','sys_dictionary_sys_package_version','version','Version','string','sys_package',NULL,NULL,40,NULL,1,0,0,NULL,'2026-06-13 19:03:55','2026-06-13 19:03:55',NULL,NULL,NULL,NULL,NULL),
('0fedd405e99e5598b394473be8030f8f','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_choice_sys_mod_count','sys_mod_count','Updates','integer','sys_choice',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL,NULL,NULL),
('1234f2056e2e5ae0af378f04d18256c0','system','system','sys_dictionary','Display','0',NULL,'display','Display','boolean','sys_dictionary',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2024-02-22 22:35:14','2026-06-20 13:34:28',NULL,NULL,NULL,NULL,NULL),
('123a611fff025a16ace4ca715ddef2ba','system','system','sys_dictionary','Arguments','0','sys_dictionary_123a611fff025a16ace4ca715ddef2ba','query','Arguments','string','sys_app_module',NULL,NULL,3500,NULL,1,NULL,NULL,NULL,'2025-08-27 20:28:12','2026-06-20 12:22:43','global',NULL,NULL,NULL,NULL),
('1291a864dfac54d892c2b2e4924e169c','system','system','sys_dictionary','Table','0','sys_dictionary_1291a864dfac54d892c2b2e4924e169c','name','Table','string','sys_app_module',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2025-08-27 20:26:33','2026-06-20 12:22:50','global',NULL,NULL,NULL,NULL),
('1329f45f187853d1bf19c9e0c9aa6e05','system','system','sys_dictionary','Label','0',NULL,'label','Label','string','sys_glide_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:31:31','2026-06-18 21:49:47',NULL,NULL,NULL,NULL,NULL),
('1b408962630656d3aaebe86938b46c30','system','system','sys_dictionary','First name','0','sys_dictionary_sys_user_first_name','first_name','First name','string','sys_user',NULL,NULL,50,NULL,1,NULL,0,NULL,'2026-06-20 15:25:07','2026-06-20 15:25:07',NULL,NULL,NULL,NULL,NULL),
('1deeb19df3705738bda0810a50883a58','system','system','sys_dictionary','Updated','0','sys_dictionary_test_sys_updated_on','sys_updated_on','Updated','datetime','test',NULL,NULL,6,NULL,1,NULL,0,NULL,'2026-06-18 21:05:47','2026-06-18 21:05:47','global',NULL,NULL,NULL,NULL),
('1ebe4bfb6e9559639031251cd4c5abf6','system','system','sys_dictionary','Table','0','sys_dictionary_sys_choice_name','name','Table','reference','sys_choice','sys_db_object',NULL,80,NULL,1,NULL,NULL,NULL,'2026-06-20 12:55:11','2026-06-20 12:55:11',NULL,NULL,NULL,'name',NULL),
('267764e7fbef57cf93f4f52ce43b47c1','system','system','sys_dictionary','Sequence','0','sys_dictionary_sys_choice_sequence','sequence','Sequence','integer','sys_choice','sys_db_object',NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 12:56:33','2026-06-20 12:56:33',NULL,NULL,NULL,'name',NULL),
('28b8ca86b3155dceb6ed1f5b62b8e4c7','system','system','sys_dictionary','ID','0','sys_dictionary_sys_scope_source','source','ID','string','sys_scope',NULL,NULL,100,NULL,1,NULL,0,NULL,'2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL,NULL,NULL),
('2a904fb27ce6506c968fbdc87c4e2e93','system','system','sys_dictionary','Window name','0','sys_dictionary_2a904fb27ce6506c968fbdc87c4e2e93','window_name','Window name','string','sys_app_module',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-27 20:29:38','2026-06-20 12:23:14','global',NULL,NULL,NULL,NULL),
('2b2e07b14a95556cb58fe0eec59f94f3','system','system','sys_dictionary','Depedent value','0','sys_dictionary_sys_choice_depedent_value','depedent_value','Depedent value','string','sys_choice',NULL,NULL,100,NULL,1,NULL,NULL,NULL,'2026-06-20 12:50:27','2026-06-20 12:50:27',NULL,NULL,NULL,NULL,NULL),
('2cd66be07e095606abec28adb549ae68','system','system','sys_dictionary','Display name','0',NULL,'sys_name','Display name','string','sys_metadata',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:04:09','2026-06-20 12:10:36','global',NULL,NULL,NULL,NULL),
('2f389cde0770580ca7bd2f2ed3572c82','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_user_sys_created_by','sys_created_by','Created by','string','sys_user',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL,NULL,NULL),
('2fbcb4c972ee581c84545f4a3eb4972b','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_user_preference_sys_updated_by','sys_updated_by','Updated by','string','sys_user_preference',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL,NULL,NULL),
('30e6fb1a5f675b7db1624d5b780e9379','system','system','sys_dictionary','Active','0','sys_dictionary_sys_scope_active','active','Active','boolean','sys_scope',NULL,NULL,2,NULL,1,0,0,NULL,'2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL,NULL,NULL),
('31f9131c9ddf516ba3a09e87350144da','system','system','sys_dictionary','sys_id','0','sys_dictionary_sys_app_application_sys_id','sys_id','Sys ID','GUID','sys_app_application',NULL,NULL,32,NULL,1,NULL,0,NULL,'2025-08-26 11:39:56','2026-06-20 16:29:46',NULL,NULL,NULL,NULL,NULL),
('3505f20bda3257aeb6ca9e807d9f879a','system','system','sys_dictionary','ID','0','sys_dictionary_sys_package_source','source','ID','string','sys_package',NULL,NULL,100,NULL,1,NULL,0,NULL,'2026-06-13 19:03:11','2026-06-13 19:03:11',NULL,NULL,NULL,NULL,NULL),
('36e7c3236ffe5a12ac7e83936f137f66','system','system','sys_dictionary','Label','0',NULL,'label','Label','string','sys_db_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 15:53:27','2026-06-20 12:20:40',NULL,NULL,NULL,NULL,NULL),
('3927b4ac6de157c1ae273c36fb01d9fd','system','system','sys_dictionary','sys_scope','0','sys_dictionary_sys_scope',NULL,NULL,'collection','sys_scope',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL,NULL,NULL),
('39441016049c5812ab3dfb90a2a8c68d','system','system','sys_dictionary','Name','0','sys_dictionary_sys_ui_page_name','name','Name','string','sys_ui_page',NULL,NULL,250,NULL,1,NULL,0,NULL,'2026-06-13 19:45:16','2026-06-13 19:45:16',NULL,NULL,NULL,NULL,NULL),
('3999fd2ad4a2531d88da3cebc7000b15','system','system','sys_dictionary','User ID','0','sys_dictionary_sys_user_user_name','user_name','User ID','string','sys_user',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 15:24:39','2026-06-20 15:24:39',NULL,NULL,NULL,NULL,NULL),
('3a74d08c49af5095a88744007f0f02ee','system','system','sys_dictionary','Created by','0','sys_dictionary_cmn_department_sys_created_by','sys_created_by','Created by','string','cmn_department',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL,NULL,NULL),
('3aadb1ea9f5a5dde91a0ff7e52be9a41','system','system','sys_dictionary','Location','0','sys_dictionary_sys_user_location','location','Location','reference','sys_user','cmn_location',NULL,32,NULL,1,NULL,0,NULL,'2026-06-20 15:49:28','2026-06-20 15:49:41',NULL,NULL,NULL,NULL,NULL),
('3d49733b9ca4540ea3758b23dc369811','system','system','sys_dictionary','Hint','0','sys_dictionary_sys_choice_hint','hint','Hint','string','sys_choice',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2026-06-20 12:50:57','2026-06-20 12:50:57',NULL,NULL,NULL,NULL,NULL),
('3df03290b2b857148d462134f98e73ec','system','system','sys_dictionary','Created','0',NULL,'sys_created_on','Created','datetime','sys_metadata',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2024-03-25 16:17:06','2026-06-20 12:11:44','global',NULL,NULL,NULL,NULL),
('40d8e0565c6d5c3c907538a705776aba','system','system','sys_dictionary','Updated','0',NULL,'sys_updated_on','Updated','datetime','sys_metadata',NULL,NULL,6,NULL,1,NULL,0,NULL,'2024-03-25 16:16:06','2026-06-20 12:11:37','global',NULL,NULL,NULL,NULL),
('4118133ce19558348b1cc3b04da4c598','system','system','sys_dictionary','Time zone','0','sys_dictionary_sys_user_time_zone','time_zone','Time zone','string','sys_user','cmn_department',NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 15:54:25','2026-06-20 15:54:25',NULL,NULL,NULL,NULL,NULL),
('42d21e3d23cd5aa9b70f7a3fe1ba72e3','system','system','sys_dictionary','hint','0','sys_dictionary_42d21e3d23cd5aa9b70f7a3fe1ba72e3','hint','Hint','string','sys_app_application',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 19:38:12','2025-08-27 19:38:12','global',NULL,NULL,NULL,NULL),
('44e8d580af2d5417abc9615de6232c26','system','system','sys_dictionary','Language','0','sys_dictionary_sys_choice_language','language','Language','string','sys_choice',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 12:49:55','2026-06-20 12:49:55',NULL,NULL,NULL,NULL,NULL),
('4544458b683557898eeda3580e91d5d2','system','system','sys_dictionary','Identity type','0','sys_dictionary_sys_user_indentity_type','indentity_type','Identity type','reference','sys_user','sys_choice',NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 15:33:28','2026-06-20 15:33:28',NULL,NULL,NULL,NULL,NULL),
('45f49e3d53975ba1ab63e218a2b39d64','system','system','sys_dictionary','Override application menu roles','0','sys_dictionary_45f49e3d53975ba1ab63e218a2b39d64','override_menu_roles','Override application menu roles','boolean','sys_app_module',NULL,NULL,2,NULL,1,NULL,NULL,NULL,'2025-08-27 20:30:41','2026-06-20 16:18:11','global',NULL,NULL,NULL,NULL),
('4625994977d250e9834ee75bcbb1b383','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_glide_object_sys_mod_count','sys_mod_count','Updates','integer','sys_glide_object',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-03-25 16:24:53','2025-10-02 21:47:06',NULL,NULL,NULL,NULL,NULL),
('4917646e40825f42a04e74e803edf012','system','system','sys_dictionary','Description','0','sys_dictionary_sys_ui_page_description','description','Description','string','sys_ui_page',NULL,NULL,4000,NULL,1,NULL,0,NULL,'2026-06-13 19:44:57','2026-06-13 19:44:57',NULL,NULL,NULL,NULL,NULL),
('493b944c2527557ea08213b8b6d32a23','system','system','sys_dictionary','Created','0','sys_dictionary_cmn_department_sys_created_on','sys_created_on','Created','datetime','cmn_department',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-20 15:50:29','2026-06-20 15:50:29','global',NULL,NULL,NULL,NULL),
('4a07433786f25de88bf31061ff4662d8','system','system','sys_dictionary','Created by','0','sys_dictionary_test_sys_created_by','sys_created_by','Created by','string','test',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-18 21:05:47','2026-06-18 21:05:47',NULL,NULL,NULL,NULL,NULL),
('4ab4a5f27d7b528ea3006d21d780fad1','system','system','sys_dictionary','Name','0','sys_dictionary_sys_user_preference_name','name','Name','string','sys_user_preference',NULL,NULL,100,NULL,1,NULL,0,NULL,'2026-06-13 16:49:51','2026-06-13 16:49:51',NULL,NULL,NULL,NULL,NULL),
('4afc26c127625f61a35f258dbb644579','system','system','sys_dictionary','Password needs reset','0','sys_dictionary_sys_user_password_needs_reset','password_needs_reset','Password needs reset','boolean','sys_user','cmn_department','0',1,NULL,1,NULL,0,NULL,'2026-06-20 15:56:11','2026-06-20 15:58:27',NULL,NULL,NULL,NULL,NULL),
('4cabb881be405c6584deebc7e1ada739','system','system','sys_dictionary','Update','0',NULL,'sys_update_name','Update','string','sys_metadata',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:04:32','2026-06-20 12:11:31','global',NULL,NULL,NULL,NULL),
('4dc77788055255e08fe53403c5823722','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_user_preference_sys_updated_on','sys_updated_on','Updated','datetime','sys_user_preference',NULL,NULL,6,NULL,1,NULL,0,NULL,'2026-06-13 16:44:13','2026-06-13 16:44:13','global',NULL,NULL,NULL,NULL),
('5003dca034ed5a399c248d3731986b3d','system','system','sys_dictionary','Mobile phone','0','sys_dictionary_sys_user_mobile_phone','mobile_phone','Mobile phone','string','sys_user',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 16:07:24','2026-06-20 16:07:24',NULL,NULL,NULL,NULL,NULL),
('5019bb8e94f95e73acd69de107456322','system','system','sys_dictionary','Created','0','sys_dictionary_sys_user_sys_created_on','sys_created_on','Created','datetime','sys_user',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-20 15:06:24','2026-06-20 15:06:24','global',NULL,NULL,NULL,NULL),
('52ec5c0d69e6552083afe3c176cd8fa8','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_package','Package','reference','sys_dictionary','sys_package',NULL,32,NULL,1,NULL,0,NULL,'2024-03-25 16:59:38','2026-06-20 12:16:49',NULL,NULL,'Global',NULL,NULL),
('5473ea5ecc5b5c499a4ea4bd9421216c','system','system','sys_dictionary','Sys ID','0','sys_dictionary_core_company_sys_id','sys_id','Sys ID','string','core_company',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL,NULL,NULL),
('55cad31deda25edea496c7a5b81e87d6','system','system','sys_dictionary','Updates','0','sys_dictionary_test_sys_mod_count','sys_mod_count','Updates','integer','test',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-18 21:05:47','2026-06-18 21:05:47',NULL,NULL,NULL,NULL,NULL),
('5714a3c2c0c852038d08b057aee22c5d','system','system','sys_dictionary','City','0','sys_dictionary_sys_user_city','city','City','string','sys_user',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 16:05:44','2026-06-20 16:05:44',NULL,NULL,NULL,NULL,NULL),
('582511aaad7e51269f4a9ac69d542b79','system','system','sys_dictionary','sys_user_preference','0','sys_dictionary_sys_user_preference',NULL,NULL,'collection','sys_user_preference',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL,NULL,NULL),
('59313c2eba9656f5a8043b29112e8b5f','system','system','sys_dictionary','Class','0',NULL,'sys_class_name','Class','string','sys_metadata',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2024-03-25 16:01:04','2026-06-20 12:11:23','global',NULL,NULL,NULL,NULL),
('59d9d0bf74b15df0a7f3b2d68b12efa1','system','system','sys_dictionary','Type','0','sys_dictionary_sys_user_preference_type','type','Type','string','sys_user_preference',NULL,'string',40,NULL,1,NULL,0,NULL,'2026-06-13 16:50:18','2026-06-13 16:50:18',NULL,NULL,NULL,NULL,NULL),
('5a8abea71fa959f494a68abba1a72b28','system','system','sys_dictionary','Manager','0','sys_dictionary_sys_user_manager','manager','Manager','reference','sys_user','sys_user',NULL,32,NULL,1,NULL,0,NULL,'2026-06-20 15:36:30','2026-06-20 15:36:30',NULL,NULL,NULL,NULL,NULL),
('5c371cc5d9215e5abccfe28f1d65ad08','system','system','sys_dictionary','is_private','0','sys_dictionary_5c371cc5d9215e5abccfe28f1d65ad08','is_private','Private','boolean','sys_properties',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2025-08-28 17:09:17','2025-08-28 17:09:17','global',NULL,NULL,NULL,NULL),
('5d84678d3c15546d81e7cb99d6896cde','system','system','sys_dictionary','Use original value','0','sys_dictionary_sys_glide_object_use_original_value','use_original_value','Use original value','boolean','sys_glide_object',NULL,NULL,2,NULL,1,NULL,NULL,NULL,'2026-06-11 23:02:29','2026-06-11 23:02:29',NULL,NULL,NULL,NULL,NULL),
('5eb5b7ffeb265d67ae7d38ceb65d05e4','system','system','sys_dictionary','Company','0','sys_dictionary_sys_user_company','company','Company','reference','sys_user','core_company',NULL,32,NULL,1,NULL,0,NULL,'2026-06-20 15:47:48','2026-06-20 15:47:48',NULL,NULL,NULL,NULL,NULL),
('5eb992a8ea0d55b690969a7928949f0d','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_user_sys_mod_count','sys_mod_count','Updates','integer','sys_user',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL,NULL,NULL),
('5ecccd58e9e956f6bab85a39fbc424f5','system','system','sys_dictionary','active','0','sys_dictionary_5ecccd58e9e956f6bab85a39fbc424f5','active','Active','boolean','sys_app_application',NULL,'1',1,NULL,1,NULL,NULL,NULL,'2025-08-27 19:33:45','2025-08-28 16:58:01','global',NULL,NULL,NULL,NULL),
('5f6352f3a36459359528acc02d9f5912','system','system','sys_dictionary','Name','0','sys_dictionary_sys_scope_name','name','Name','string','sys_scope',NULL,NULL,100,NULL,1,1,0,NULL,'2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL,NULL,NULL),
('622a7652327055658505dd4b92fe39c5','system','system','sys_dictionary','Extends','0','sys_dictionary_sys_glide_object_scalar_type','scalar_type','Extends','string','sys_glide_object',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-18 21:53:55','2026-06-18 21:53:55',NULL,NULL,NULL,NULL,NULL),
('6481319422a95989b71ed8f8b6f32cc9','system','system','sys_dictionary','type','0','sys_dictionary_6481319422a95989b71ed8f8b6f32cc9','type','Type','string','sys_properties',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-28 17:05:58','2025-08-28 17:05:58','global',NULL,NULL,NULL,NULL),
('64e50a9979685f35a9892c8e686ac03b','system','system','sys_dictionary','roles','0','sys_dictionary_64e50a9979685f35a9892c8e686ac03b','roles','Roles','string','sys_app_application',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 19:36:02','2025-08-27 19:36:02','global',NULL,NULL,NULL,NULL),
('657ad65a2bd552cc8de23fcb25039964','system','system','sys_dictionary','Link type','0','sys_dictionary_657ad65a2bd552cc8de23fcb25039964','link_type','Link type','string','sys_app_module',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-27 20:25:41','2026-06-20 16:17:58','global',NULL,NULL,NULL,NULL),
('66a346eea7bd5a349bc387217ac83491','system','system','sys_dictionary','Sys ID','0',NULL,'sys_id','Sys ID','string','sys_metadata',NULL,NULL,32,NULL,1,NULL,0,NULL,'2024-03-25 15:59:26','2026-06-20 12:11:17','global',NULL,NULL,NULL,NULL),
('67eeb7c184eb5b56a48caa4b9503c2e0','system','system','sys_dictionary','Enable Multifactor Authentication','0','sys_dictionary_sys_user_enable_mutifactor_auth','enable_mutifactor_auth','Enable Multifactor Authentication','boolean','sys_user','cmn_department','0',1,NULL,1,NULL,0,NULL,'2026-06-20 15:59:26','2026-06-20 15:59:26',NULL,NULL,NULL,NULL,NULL),
('68496821c6d6542bb526f418f87b49f3','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_package_sys_mod_count','sys_mod_count','Updates','integer','sys_package',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL,NULL,NULL),
('6a263de48a7352908927c29b3d8a9b89','system','system','sys_dictionary','sys_ui_page','0','sys_dictionary_sys_ui_page',NULL,NULL,'collection','sys_ui_page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-13 19:34:45','2026-06-13 19:34:45',NULL,NULL,NULL,NULL,NULL),
('6c34b895a44e5a869f7707adb144fdf1','system','system','sys_dictionary','View name','0','sys_dictionary_6c34b895a44e5a869f7707adb144fdf1','view_name','View name','string','sys_app_module',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-27 20:27:08','2026-06-20 16:17:25','global',NULL,NULL,NULL,NULL),
('6cacfbe138c45e2e8874692c62720904','system','system','sys_dictionary','Created','0','sys_dictionary_test_sys_created_on','sys_created_on','Created','datetime','test',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-18 21:05:47','2026-06-18 21:05:47','global',NULL,NULL,NULL,NULL),
('6d9031064fc659169fac2394a55f91c3','system','system','sys_dictionary','Category','0','sys_dictionary_sys_ui_page_category','category','Category','string','sys_ui_page',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-13 19:45:43','2026-06-13 19:45:43',NULL,NULL,NULL,NULL,NULL),
('6e3f1c9763d8532a8faa6e90df510653','system','system','sys_dictionary','Unique','0',NULL,'unique','Unique','boolean','sys_dictionary',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2024-02-22 22:36:34','2026-06-20 12:15:08',NULL,NULL,NULL,NULL,NULL),
('6f16ae88d181592da5f377d8196f0c67','system','system','sys_dictionary','Updated by','0','sys_dictionary_test_sys_updated_by','sys_updated_by','Updated by','string','test',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-18 21:05:47','2026-06-18 21:05:47',NULL,NULL,NULL,NULL,NULL),
('703ed3f51b0b5f8babef695a8356500f','system','system','sys_dictionary','Created','0','sys_dictionary_sys_package_sys_created_on','sys_created_on','Created','datetime','sys_package',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-13 19:01:49','2026-06-13 19:01:49','global',NULL,NULL,NULL,NULL),
('704e644b7cad506e9cda29ad2c61e06a','system','system','sys_dictionary','Email','0','sys_dictionary_sys_user_email','email','Email','string','sys_user','core_company',NULL,100,NULL,1,NULL,0,NULL,'2026-06-20 15:48:34','2026-06-20 16:02:12',NULL,NULL,NULL,NULL,NULL),
('71631268d90f511b95c50c9a09cd77ea','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_user_sys_updated_on','sys_updated_on','Updated','datetime','sys_user',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-20 15:11:22','2026-06-20 15:11:22','global',NULL,NULL,NULL,NULL),
('73ad6075c71e5afdb1c347d5bc588d27','system','system','sys_dictionary','Name','0',NULL,'name','Name','string','sys_glide_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:31:19','2026-06-18 21:50:12',NULL,NULL,NULL,NULL,NULL),
('7698154cf6e458e18af12979fa7de549','system','system','sys_dictionary','Table','0',NULL,'name','Table','string','sys_dictionary','sys_db_object',NULL,80,NULL,1,NULL,1,NULL,'2024-02-22 22:25:35','2026-06-20 12:15:00',NULL,NULL,NULL,NULL,NULL),
('77fa940842c656a99d8de4710cb82b0e','system','system','sys_dictionary','Attributes','0',NULL,'attributes','Attributes','string','sys_glide_object',NULL,NULL,32,NULL,1,NULL,0,NULL,'2024-03-25 17:05:24','2026-06-18 21:55:12',NULL,NULL,NULL,NULL,NULL),
('7975133d5d665926ab1a5b8e40129ac8','system','system','sys_dictionary','Active','0','sys_dictionary_sys_dictionary_active','active','Active','boolean','sys_dictionary',NULL,'1',1,NULL,1,NULL,NULL,NULL,'2024-02-22 22:34:15','2025-08-28 18:26:53','global',NULL,NULL,NULL,NULL),
('7a2b2cd40db45be9902ce5f98d7e867c','system','system','sys_dictionary','Application menu','0','sys_dictionary_7a2b2cd40db45be9902ce5f98d7e867c','application','Application menu','reference','sys_app_module','sys_app_application',NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-27 20:15:29','2026-06-20 16:17:16','global',NULL,NULL,NULL,NULL),
('7d7221b091cb55ddb9caeaea3ec7bd28','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_user_preference_sys_mod_count','sys_mod_count','Updates','integer','sys_user_preference',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL,NULL,NULL),
('7fc28db6b9a553baa60990474eb1aed9','system','system','sys_dictionary','TEST REF','0','sys_dictionary_test_test_ref','test_ref','TEST REF','reference','test','test',NULL,32,NULL,1,NULL,0,NULL,'2026-06-18 21:30:15','2026-06-18 21:30:15',NULL,NULL,NULL,NULL,NULL),
('804776fc0b415fe69630efefd4eed4a6','system','system','sys_dictionary','Updated','0','sys_dictionary_cmn_location_sys_updated_on','sys_updated_on','Updated','datetime','cmn_location',NULL,NULL,6,NULL,1,NULL,0,NULL,'2026-06-20 15:45:02','2026-06-20 15:45:02','global',NULL,NULL,NULL,NULL),
('8061e63abd4c5dee87eef676b924e548','system','system','sys_dictionary','Description','0','sys_dictionary_sys_user_preference_description','description','Description','string','sys_user_preference',NULL,NULL,100,NULL,1,NULL,0,NULL,'2026-06-13 16:48:42','2026-06-13 16:48:42',NULL,NULL,NULL,NULL,NULL),
('806654a345ef5c838949aaea5aecce34','system','system','sys_dictionary','Updates','0','sys_dictionary_core_company_sys_mod_count','sys_mod_count','Updates','integer','core_company',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL,NULL,NULL),
('80e723bdcf9b554ba85363fb01937520','system','system','sys_dictionary','Column label','0','sys_dictionary_sys_dictionary_column_label','column_label','Column label','string','sys_dictionary',NULL,NULL,80,NULL,1,1,1,NULL,'2024-02-22 22:15:01','2025-09-21 14:04:50',NULL,NULL,NULL,NULL,NULL),
('8228716c38605ad09f6ff9d8fa8de9bc','system','system','sys_dictionary','sys_metadata','0','sys_dictionary_sys_metadata',NULL,NULL,'collection','sys_metadata',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 17:56:23','2025-08-28 17:56:41','global',NULL,NULL,NULL,NULL),
('823c58c9be0f5711ae20b39b832e0d7e','system','system','sys_dictionary','Name','0','sys_dictionary_sys_package_name','name','Name','string','sys_package',NULL,NULL,100,NULL,1,1,0,NULL,'2026-06-13 19:03:26','2026-06-13 19:03:26',NULL,NULL,NULL,NULL,NULL),
('82606188e15055b8a514c527d323cb53','system','system','sys_dictionary','Reference qual','0','sys_dictionary_sys_dictionary_reference_qual','reference_qual','Reference qual','string','sys_dictionary','sys_choice',NULL,1000,NULL,1,NULL,0,NULL,'2026-06-20 15:34:11','2026-06-20 15:34:11',NULL,NULL,NULL,NULL,NULL),
('826d546bacf25aa3b255a9c7d14452ab','system','system','sys_dictionary','Attributes','0',NULL,'attrributes','Attributes','string','sys_dictionary',NULL,NULL,1000,NULL,1,NULL,NULL,NULL,'2024-02-22 22:33:14','2026-06-20 12:14:50',NULL,NULL,NULL,NULL,NULL),
('845763be5970528895fc6d3098f95a27','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_choice_sys_updated_on','sys_updated_on','Updated','datetime','sys_choice',NULL,NULL,6,NULL,1,NULL,0,NULL,'2026-06-20 12:23:56','2026-06-20 12:23:56','global',NULL,NULL,NULL,NULL),
('84853d44e7ff5e1fb4aa4499fb48a2ff','system','system','sys_dictionary','Updated by','0','sys_dictionary_cmn_location_sys_updated_by','sys_updated_by','Updated by','string','cmn_location',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL,NULL,NULL),
('851372514c5b5e1bb94e396ef512939f','system','system','sys_dictionary','Script','0','sys_dictionary_sys_ui_page_script','script','Script','script','sys_ui_page',NULL,NULL,65000,NULL,1,NULL,0,NULL,'2026-06-13 19:44:13','2026-06-13 20:00:57',NULL,NULL,NULL,NULL,NULL),
('88b8860cb1835f98903e4d69f2efe7b8','system','system','sys_dictionary','Mandatory','0',NULL,'mandatory','Mandatory','boolean','sys_dictionary',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2024-02-22 22:36:07','2026-06-20 12:14:44',NULL,NULL,NULL,NULL,NULL),
('89aee9a05d805784802c425892a25674','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_user_preference_sys_created_by','sys_created_by','Created by','string','sys_user_preference',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL,NULL,NULL),
('8af9702b9b335873b023d1ebb113db1a','system','system','sys_dictionary','sys_glide_object','0','sys_dictionary_sys_glide_object',NULL,NULL,'collection','sys_glide_object',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 18:19:25','2025-08-28 18:19:30','global',NULL,NULL,NULL,NULL),
('8b6cb5167d5a57d4a51ab0923075571f','system','system','sys_dictionary','Created by','0','sys_dictionary_core_company_sys_created_by','sys_created_by','Created by','string','core_company',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL,NULL,NULL),
('8c03b29169265645ad214dc54490b7ea','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_choice_sys_id','sys_id','Sys ID','string','sys_choice',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL,NULL,NULL),
('8cfd60fdf04b530c80b21225cf11b283','system','system','sys_dictionary','Active','0','sys_dictionary_8cfd60fdf04b530c80b21225cf11b283','active','Active','boolean','sys_app_module',NULL,'1',1,NULL,1,NULL,NULL,NULL,'2025-08-27 20:22:32','2026-06-20 16:15:44','global',NULL,NULL,NULL,NULL),
('8d4b6fa3a01d5f47a32c0ea040cdfe17','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_ui_page_sys_id','sys_id','Sys ID','string','sys_ui_page',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-13 19:34:45','2026-06-13 19:34:45',NULL,NULL,NULL,NULL,NULL),
('8e0afcd73c115d6c96981dae1b59127b','system','system','sys_dictionary','System','0','sys_dictionary_sys_user_preference_system','system','System','boolean','sys_user_preference',NULL,'',2,NULL,1,NULL,0,NULL,'2026-06-13 17:11:08','2026-06-13 17:11:08',NULL,NULL,NULL,NULL,NULL),
('94408b65c1885c3a8375840e6c3f5b5b','system','system','sys_dictionary','title','0','sys_dictionary_94408b65c1885c3a8375840e6c3f5b5b','title','Title','string','sys_app_application',NULL,'',40,NULL,1,1,1,NULL,'2025-08-27 19:31:04','2025-08-27 20:01:42','global',NULL,NULL,NULL,NULL),
('95205600b190555ca6c4337ecd127e10','system','system','sys_dictionary','Name','0',NULL,'name','Name','string','sys_db_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:29:48','2026-06-20 12:20:33',NULL,NULL,NULL,NULL,NULL),
('95bf4ac569215ca5aab11b13f9af6171','system','system','sys_dictionary','Reference','0',NULL,'reference','Reference','reference','sys_dictionary','sys_db_object',NULL,80,NULL,1,NULL,NULL,NULL,'2024-02-22 22:27:58','2026-06-20 12:17:54',NULL,NULL,NULL,'name',NULL),
('973d772f7caf5280941057d00d79f80d','system','system','sys_dictionary','description','0','sys_dictionary_973d772f7caf5280941057d00d79f80d','description','Description','string','sys_properties',NULL,NULL,512,NULL,1,0,NULL,NULL,'2025-08-28 17:03:42','2025-08-28 17:03:42','global',NULL,NULL,NULL,NULL),
('9982a37670e9577483a1610826a2096f','system','system','sys_dictionary','Label','0','sys_dictionary_sys_choice_label','label','Label','string','sys_choice',NULL,NULL,100,NULL,1,NULL,NULL,NULL,'2026-06-20 12:49:18','2026-06-20 12:49:18',NULL,NULL,NULL,NULL,NULL),
('99ee8be10871502e931829064c151cf0','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_package_sys_updated_by','sys_updated_by','Updated by','string','sys_package',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL,NULL,NULL),
('9a40b2e7ad815ce8a74bfb98a6ee193d','system','system','sys_dictionary','sys_choice','0','sys_dictionary_sys_choice',NULL,NULL,'collection','sys_choice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL,NULL,NULL),
('9bb9c789cf575c8a9cc0b36918736746','system','system','sys_dictionary','Package','0',NULL,'sys_package','Package','reference','sys_glide_object','sys_package',NULL,32,NULL,1,NULL,0,NULL,'2024-03-25 16:54:41','2026-06-20 12:16:30',NULL,NULL,'Global',NULL,NULL),
('9c52e4677e47592687812ae713ae571f','system','system','sys_dictionary','Created by','0','sys_dictionary_cmn_location_sys_created_by','sys_created_by','Created by','string','cmn_location',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL,NULL,NULL),
('9d22bdb217035cd9b985acae54444bdf','system','system','sys_dictionary','Column name','0',NULL,'element','Column name','string','sys_dictionary',NULL,NULL,80,NULL,1,NULL,1,NULL,'2024-02-22 21:53:40','2026-06-20 12:14:18',NULL,NULL,NULL,NULL,NULL),
('9d544d00405b5380b591a28a31b1e4b3','system','system','sys_dictionary','Country code','0','sys_dictionary_sys_user_country','country','Country code','string','sys_user','cmn_department',NULL,3,NULL,1,NULL,0,NULL,'2026-06-20 15:53:13','2026-06-20 15:53:13',NULL,NULL,NULL,NULL,NULL),
('9e0a93afa9b45257b27379fac37d8db7','system','system','sys_dictionary','ignore_cache','0','sys_dictionary_9e0a93afa9b45257b27379fac37d8db7','ignore_cache','Ignore cache','boolean','sys_properties',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2025-08-28 17:08:17','2025-08-28 17:08:17','global',NULL,NULL,NULL,NULL),
('9eb458a85533513e9deba7f1316dbbee','system','system','sys_dictionary','Script compiled','0','sys_dictionary_sys_ui_page_script_compiled','script_compiled','Script compiled','script','sys_ui_page',NULL,NULL,65000,NULL,1,NULL,0,NULL,'2026-06-13 19:44:36','2026-06-13 20:00:48',NULL,NULL,NULL,NULL,NULL),
('9f17671e10f954fb9787998d9fa83c6e','system','system','sys_dictionary','Sys ID','0',NULL,'sys_id','Sys ID','GUID','sys_db_object',NULL,NULL,32,NULL,1,NULL,0,NULL,'2024-03-23 22:12:07','2026-06-20 12:20:23',NULL,NULL,NULL,NULL,NULL),
('9ffe5969a01f59c3b4d90ece9a57af94','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_package_sys_created_by','sys_created_by','Created by','string','sys_package',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL,NULL,NULL),
('a2fa6b8a7aa4540e8c9ee2bb59858fcd','system','system','sys_dictionary','Roles','0','sys_dictionary_a2fa6b8a7aa4540e8c9ee2bb59858fcd','roles','Roles','string','sys_app_module',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 20:23:04','2026-06-20 16:15:26','global',NULL,NULL,NULL,NULL),
('a33645077afd5f49af7abde13de9877f','system','system','sys_dictionary','cmn_location','0','sys_dictionary_cmn_location',NULL,NULL,'collection','cmn_location',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL,NULL,NULL),
('a4bf6625e5eb5583b0bf1630acff81d9','system','system','sys_dictionary','Active','0','sys_dictionary_sys_user_active','active','Active','boolean','sys_user',NULL,NULL,1,NULL,1,NULL,0,NULL,'2026-06-20 15:29:15','2026-06-20 15:29:15',NULL,NULL,NULL,NULL,NULL),
('a7919374cb2950639591477124b6b9a9','system','system','sys_dictionary','Title','0','sys_dictionary_sys_user_title','title','Title','string','sys_user',NULL,NULL,60,NULL,1,NULL,0,NULL,'2026-06-20 15:25:41','2026-06-20 15:25:41',NULL,NULL,NULL,NULL,NULL),
('a8e63b5a574a5cfd8c153b29e84f031c','system','system','sys_dictionary','sys_dictionary','0','sys_dictionary_sys_dictionary',NULL,NULL,'collection','sys_dictionary',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 18:17:35','2025-08-28 18:17:41','global',NULL,NULL,NULL,NULL),
('a96cb57d939c5cf1b47c5f3081f1b556','system','system','sys_dictionary','User','0','sys_dictionary_sys_user_preference_user','user','User','reference','sys_user_preference',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-13 16:47:23','2026-06-13 16:47:58',NULL,NULL,NULL,NULL,NULL),
('ad34c0a6b42e5749b2c193d1fa14ecd2','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_package_sys_id','sys_id','Sys ID','string','sys_package',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL,NULL,NULL),
('ae816a4ab5de591097d15da7a1eaadb2','system','system','sys_dictionary','sys_properties','0','sys_dictionary_sys_properties',NULL,NULL,'collection','sys_properties',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 16:54:21','2025-08-28 16:54:41','global',NULL,NULL,NULL,NULL),
('b04ead5fbb1f58bc9aaf77827cb12f91','system','system','sys_dictionary','Maximum length','0',NULL,'max_length','Maximum length','integer','sys_dictionary',NULL,NULL,6,NULL,1,NULL,1,NULL,'2024-02-22 22:32:46','2026-06-20 12:14:05',NULL,NULL,NULL,NULL,NULL),
('b2fa9f24b4ba5bc2a21ed88b4f17db1a','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_dictionary_sys_mod_count','sys_mod_count','Updates','integer','sys_dictionary',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-02-22 22:05:20','2025-10-02 21:46:14',NULL,NULL,NULL,NULL,NULL),
('b6cf40012db55e9589ced231ff8634d3','system','system','sys_dictionary','Sys ID','0',NULL,'sys_id','Sys ID','string','sys_glide_object',NULL,NULL,32,NULL,1,NULL,0,NULL,'2024-03-25 16:21:57','2026-06-18 21:54:18',NULL,NULL,NULL,NULL,NULL),
('b7d10f8b744359849a9e8d4f097a3406','system','system','sys_dictionary','Package','0','sys_dictionary_sys_metadata_sys_package','sys_package','Package','reference','sys_metadata','sys_package',NULL,32,NULL,1,NULL,NULL,NULL,'2026-06-20 13:10:46','2026-06-20 13:10:46','global',NULL,NULL,NULL,NULL),
('b91bd851217b5b6d8c72eb3a47725a17','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_user_sys_id','sys_id','Sys ID','string','sys_user',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL,NULL,NULL),
('b9db63d120ea5175b8b93a9f48e9ec51','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_user_preference_sys_id','sys_id','Sys ID','string','sys_user_preference',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL,NULL,NULL),
('bb30489c1e1352fba94d1bfa245c1b4a','system','system','sys_dictionary','Version','0','sys_dictionary_sys_scope_version','version','Version','string','sys_scope',NULL,NULL,40,NULL,1,0,0,NULL,'2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL,NULL,NULL),
('bc26d1a3b539516081e517f24df9cdb1','system','system','sys_dictionary','Updated by','0','sys_dictionary_core_company_sys_updated_by','sys_updated_by','Updated by','string','core_company',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL,NULL,NULL),
('beeab6a0d2e95e899988cc0035cd1b8b','system','system','sys_dictionary','read_roles','0','sys_dictionary_beeab6a0d2e95e899988cc0035cd1b8b','read_roles','Read roles','string','sys_properties',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-28 17:10:13','2025-08-28 17:10:13','global',NULL,NULL,NULL,NULL),
('c0e9a2809db955abb04d01263fc9fbc3','system','system','sys_dictionary','Sys ID','0',NULL,'sys_id','Sys ID','string','sys_dictionary',NULL,NULL,32,NULL,1,NULL,0,NULL,'2024-02-22 21:56:34','2026-06-20 12:13:44',NULL,NULL,NULL,NULL,NULL),
('c4e5bad19ed859ed96cc90f244844a9e','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_choice_sys_created_by','sys_created_by','Created by','string','sys_choice',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL,NULL,NULL),
('c4f93f48f398501d9d659e9825a6f330','system','system','sys_dictionary','test','0','sys_dictionary_test',NULL,NULL,'collection','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-04-01 03:55:16','2026-06-18 21:05:47','global','','1fa3d820f50003100a22c0b3dfa15103',NULL,NULL),
('c568415874fb544f9f3281ebbd2552c1','system','system','sys_dictionary','Filter','0','sys_dictionary_c568415874fb544f9f3281ebbd2552c1','filter','Filter','string','sys_app_module',NULL,NULL,3500,NULL,1,NULL,NULL,NULL,'2025-08-27 20:29:01','2026-06-20 16:15:12','global',NULL,NULL,NULL,NULL),
('c7e5747f6c145bb89056eba90fa78d00','system','system','sys_dictionary','Sys ID','0','sys_dictionary_test_sys_id','sys_id','Sys ID','string','test',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-18 21:05:47','2026-06-18 21:05:47',NULL,NULL,NULL,NULL,NULL),
('c8e05b2162765f6d840e7ebafa5a2701','system','system','sys_dictionary','Created','0','sys_dictionary_sys_choice_sys_created_on','sys_created_on','Created','datetime','sys_choice',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-20 12:23:56','2026-06-20 12:23:56','global',NULL,NULL,NULL,NULL),
('c9174019000b56e8ba50df358da29db0','system','system','sys_dictionary','Hint','0','sys_dictionary_c9174019000b56e8ba50df358da29db0','hint','Hint','string','sys_app_module',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 20:21:59','2026-06-20 16:15:02','global',NULL,NULL,NULL,NULL),
('cac6ce0f1689569ea35ef0f0fd2868c7','system','system','sys_dictionary','sys_app_module','0','sys_dictionary_sys_app_module',NULL,NULL,'collection','sys_app_module',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-08-27 19:15:55','global',NULL,NULL,NULL,NULL),
('cbcd0943c5e1549ea9f8118bd1090bff','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_package_sys_updated_on','sys_updated_on','Updated','datetime','sys_package',NULL,NULL,6,NULL,1,NULL,0,NULL,'2026-06-13 19:01:49','2026-06-13 19:01:49','global',NULL,NULL,NULL,NULL),
('cdf972559e93513e8cedf9aec43ae85a','system','system','sys_dictionary','Sys ID','0','sys_dictionary_cmn_location_sys_id','sys_id','Sys ID','string','cmn_location',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL,NULL,NULL),
('cf546cc809f850a2ac44e5b85c5229b8','system','system','sys_dictionary','Updates','0','sys_dictionary_cmn_location_sys_mod_count','sys_mod_count','Updates','integer','cmn_location',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL,NULL,NULL),
('cfef0bd420c15127ad8070953b9d76ab','system','system','sys_dictionary','Inactive','0','sys_dictionary_sys_choice_inactive','inactive','Inactive','boolean','sys_choice','sys_db_object',NULL,2,NULL,1,NULL,NULL,NULL,'2026-06-20 12:57:05','2026-06-20 12:57:05',NULL,NULL,NULL,'name',NULL),
('d25c51f9a0435ec482e9827017c4aa59','system','system','sys_dictionary','Active','0','sys_dictionary_sys_package_active','active','Active','boolean','sys_package',NULL,NULL,2,NULL,1,0,0,NULL,'2026-06-13 19:04:54','2026-06-13 19:04:54',NULL,NULL,NULL,NULL,NULL),
('d3a2e6e7c1bd504d828fb929e9bafc0d','system','system','sys_dictionary','Updated','0','sys_dictionary_core_company_sys_updated_on','sys_updated_on','Updated','datetime','core_company',NULL,NULL,6,NULL,1,NULL,0,NULL,'2026-06-20 15:38:44','2026-06-20 15:38:44','global',NULL,NULL,NULL,NULL),
('d56500e3b65e56718012a54f75d3e5b5','system','system','sys_dictionary','name','0','sys_dictionary_d56500e3b65e56718012a54f75d3e5b5','name','Name','string','sys_properties',NULL,NULL,100,NULL,1,1,1,NULL,'2025-08-28 17:02:34','2025-08-28 17:02:34','global',NULL,NULL,NULL,NULL),
('d5c994a9dd8151a8ad8b89588b4b6dbb','system','system','sys_dictionary','sys_db_object','0','sys_dictionary_sys_db_object',NULL,NULL,'collection','sys_db_object',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 18:16:27','2025-08-28 18:16:33','global',NULL,NULL,NULL,NULL),
('d6f7576b89f7574fb59a0432b8993984','system','system','sys_dictionary','Last name','0','sys_dictionary_sys_user_last_name','last_name','Last name','string','sys_user',NULL,NULL,50,NULL,1,NULL,0,NULL,'2026-06-20 15:25:22','2026-06-20 15:25:22',NULL,NULL,NULL,NULL,NULL),
('d7892f28dd1051f1bd3aff6b84f4b761','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_db_object_sys_mod_count','sys_mod_count','Updates','integer','sys_db_object',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-03-25 15:50:04','2025-10-02 21:47:11',NULL,NULL,NULL,NULL,NULL),
('d8bfc340675554a1ab20dc549fda3dc6','system','system','sys_dictionary','Created by','0',NULL,'sys_created_by','Created by','string','sys_metadata',NULL,NULL,40,NULL,1,NULL,0,NULL,'2024-03-25 16:00:17','2026-06-20 12:11:02','global',NULL,NULL,NULL,NULL),
('d90fec04f31a51dabbed943b87bfe61a','system','system','sys_dictionary','Updated by','0',NULL,'sys_updated_by','Updated by','string','sys_metadata',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-03-25 16:03:25','2026-06-20 12:10:54','global',NULL,NULL,NULL,NULL),
('d97dc82950885a8e95bbee21720fbe76','system','system','sys_dictionary','Created','0','sys_dictionary_sys_user_preference_sys_created_on','sys_created_on','Created','datetime','sys_user_preference',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-13 16:44:13','2026-06-13 16:44:13','global',NULL,NULL,NULL,NULL),
('d99f7fc3fbe8529ba938f942c77d688a','system','system','sys_dictionary','Name','0','sys_dictionary_test_name','name','Name','string','test','',NULL,160,NULL,1,0,0,NULL,'2026-06-18 21:31:58','2026-06-18 22:08:50',NULL,NULL,NULL,NULL,NULL),
('db04c23d66e55069b7055511062d72db','system','system','sys_dictionary','Updated by','0','sys_dictionary_cmn_department_sys_updated_by','sys_updated_by','Updated by','string','cmn_department',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL,NULL,NULL),
('db67136f346b5ff7a90c524408b55a12','system','system','sys_dictionary','sys_package','0','sys_dictionary_sys_package',NULL,NULL,'collection','sys_package',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL,NULL,NULL),
('dbf79411f7fb5d76982d23c85337f5d3','system','system','sys_dictionary','Updates','0','sys_dictionary_cmn_department_sys_mod_count','sys_mod_count','Updates','integer','cmn_department',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL,NULL,NULL),
('dd4a6f47521f547cba07a9d7d5a9eb94','system','system','sys_dictionary','Extensible','0','sys_dictionary_sys_db_object_is_extendable','is_extendable','Extensible','boolean','sys_db_object',NULL,'true',2,NULL,1,NULL,NULL,NULL,'2026-06-20 13:35:16','2026-06-20 15:39:43',NULL,NULL,NULL,NULL,NULL),
('de72b22ad61653ab93c5a83032cdcb40','system','system','sys_dictionary','Order','0','sys_dictionary_de72b22ad61653ab93c5a83032cdcb40','order','Order','decimal','sys_app_module',NULL,NULL,15,NULL,1,NULL,NULL,NULL,'2025-08-27 20:16:39','2026-06-20 16:14:49','global',NULL,NULL,NULL,NULL),
('dec4d3c7398051b2864a967b8bef202e','system','system','sys_dictionary','Default value','0',NULL,'default_value','Default value','string','sys_dictionary','',NULL,255,NULL,1,NULL,NULL,NULL,'2024-02-22 22:30:18','2026-06-20 12:13:38',NULL,NULL,NULL,NULL,NULL),
('e593c51e74c85bfdb224b2d3cc1a535e','system','system','sys_dictionary','category','0','sys_dictionary_e593c51e74c85bfdb224b2d3cc1a535e','category','Category','string','sys_app_application','sys_app_category',NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-27 19:37:08','2025-08-27 19:37:08','global',NULL,NULL,NULL,NULL),
('e6b15194380c5ea6b8db87d211b01fd1','system','system','sys_dictionary','Extends table','0',NULL,'super_class','Extends table','reference','sys_db_object','sys_db_object',NULL,32,NULL,1,NULL,0,NULL,'2024-03-25 15:57:36','2026-06-20 12:20:08',NULL,NULL,NULL,'name',NULL),
('e6df3f0c71c0564b933be5cc400b5e08','system','system','sys_dictionary','Length','0','sys_dictionary_sys_glide_object_scalar_length','scalar_length','Length','string','sys_glide_object',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-18 21:52:17','2026-06-18 21:52:17',NULL,NULL,NULL,NULL,NULL),
('e72f6b30be8b5cf2a5a97b4f24e774f3','system','system','sys_dictionary','core_company','0','sys_dictionary_core_company',NULL,NULL,'collection','core_company',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL,NULL,NULL),
('e860ef3cd5e959758f4f13b580507a4f','system','system','sys_dictionary','Street','0','sys_dictionary_sys_user_street','street','Street','string','sys_user',NULL,NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 16:07:00','2026-06-20 16:07:00',NULL,NULL,NULL,NULL,NULL),
('ea3dd83f46965de1bd5635d5bcbbe6e9','system','system','sys_dictionary','Created','0','sys_dictionary_cmn_location_sys_created_on','sys_created_on','Created','datetime','cmn_location',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-20 15:45:02','2026-06-20 15:45:02','global',NULL,NULL,NULL,NULL),
('eacf93cef3f9523fa362d920281fdf74','system','system','sys_dictionary','Locked out','0','sys_dictionary_sys_user_locked_out','locked_out','Locked out','boolean','sys_user',NULL,NULL,1,NULL,1,NULL,0,NULL,'2026-06-20 15:30:02','2026-06-20 15:30:02',NULL,NULL,NULL,NULL,NULL),
('eb349713c7ce53c2b0d611fb97a83b4a','system','system','sys_dictionary','sys_user','0','sys_dictionary_sys_user',NULL,NULL,'collection','sys_user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL,NULL,NULL),
('ebbed92efb8253b49863fafdc2cba986','system','system','sys_dictionary','Protection policy','0',NULL,'sys_policy','Protection policy','string','sys_metadata',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2024-03-25 16:07:07','2026-06-20 12:10:46','global',NULL,NULL,NULL,NULL),
('edc5f2e2ac635c0aaaa01679d9b6b97c','system','system','sys_dictionary','Type','0','sys_dictionary_sys_dictionary_internal_type','internal_type','Type','reference','sys_dictionary','sys_glide_object',NULL,40,NULL,1,NULL,1,NULL,'2024-02-22 22:20:44','2025-09-21 20:40:57',NULL,NULL,NULL,'name',NULL),
('ef63e4c95f2159d9a3827d05eb2cdd5d','system','system','sys_dictionary','Created','0','sys_dictionary_core_company_sys_created_on','sys_created_on','Created','datetime','core_company',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2026-06-20 15:38:44','2026-06-20 15:38:44','global',NULL,NULL,NULL,NULL),
('efa8c72ec84355e891012eb61f8f9ee5','system','system','sys_dictionary','Sys ID','0',NULL,'sys_id','Sys ID','GUID','sys_app_module',NULL,NULL,32,NULL,1,NULL,0,NULL,'2025-08-27 18:09:45','2026-06-20 16:14:32',NULL,NULL,NULL,NULL,NULL),
('f291dedd024a5a6592ac8876efb03d70','system','system','sys_dictionary','choices','0','sys_dictionary_f291dedd024a5a6592ac8876efb03d70','choices','Choices','string','sys_properties',NULL,NULL,512,NULL,1,NULL,NULL,NULL,'2025-08-28 17:04:34','2025-08-28 17:04:34','global',NULL,NULL,NULL,NULL),
('f2b436041cb8583b921bd849aaf002e1','system','system','sys_dictionary','write_roles','0','sys_dictionary_f2b436041cb8583b921bd849aaf002e1','write_roles','Write roles','string','sys_properties',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-28 17:11:28','2025-08-28 17:11:28','global',NULL,NULL,NULL,NULL),
('f4004854b98f5ea6a0b2754264a6227c','system','system','sys_dictionary','Visible','0','sys_dictionary_sys_glide_object_visible','visible','Visible','boolean','sys_glide_object',NULL,'',2,NULL,1,NULL,NULL,NULL,'2026-06-18 21:48:17','2026-06-18 21:48:17',NULL,NULL,NULL,NULL,NULL),
('f5458f95ef9055e0813888601710fd91','system','system','sys_dictionary','cmn_department','0','sys_dictionary_cmn_department',NULL,NULL,'collection','cmn_department',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL,NULL,NULL),
('f6b3b2b05d1951dcbc3404a72756dfda','system','system','sys_dictionary','Sys ID','0','sys_dictionary_cmn_department_sys_id','sys_id','Sys ID','string','cmn_department',NULL,NULL,32,NULL,1,NULL,0,NULL,'2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL,NULL,NULL),
('f74fba266c9050089312046e3b08f97c','system','system','sys_dictionary','Web service access only','0','sys_dictionary_sys_user_web_service_access_only','web_service_access_only','Web service access only','boolean','sys_user',NULL,'0',1,NULL,1,NULL,0,NULL,'2026-06-20 16:04:14','2026-06-20 16:04:14',NULL,NULL,NULL,NULL,NULL),
('f9d47bd124d05fc499c6941849422b82','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_user_sys_updated_by','sys_updated_by','Updated by','string','sys_user',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2026-06-20 15:06:24','2026-06-20 15:06:24',NULL,NULL,NULL,NULL,NULL),
('fc5a5954074d53b58be2e6ecaff806d0','system','system','sys_dictionary','Business phone','0','sys_dictionary_sys_user_phone','phone','Business phone','string','sys_user','cmn_department',NULL,40,NULL,1,NULL,0,NULL,'2026-06-20 15:54:55','2026-06-20 15:54:55',NULL,NULL,NULL,NULL,NULL),
('fe184c6a54e4596da1054b027b56b83e','system','system','sys_dictionary','value','0','sys_dictionary_fe184c6a54e4596da1054b027b56b83e','value','Value','string','sys_properties',NULL,NULL,4000,NULL,1,NULL,NULL,NULL,'2025-08-28 17:07:19','2025-08-28 17:07:19','global',NULL,NULL,NULL,NULL),
('fea948c6574252e38c0c7f0c46cd6815','system','system','sys_dictionary','Element','0','sys_dictionary_sys_choice_element','element','Element','string','sys_choice',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2026-06-20 12:51:13','2026-06-20 12:51:13',NULL,NULL,NULL,NULL,NULL),
('ff2bd1872c4f5084a9252a5aebfd6f79','system','system','sys_dictionary','Department','0','sys_dictionary_sys_user_department','department','Department','reference','sys_user','cmn_department',NULL,32,NULL,1,NULL,0,NULL,'2026-06-20 15:51:09','2026-06-20 15:51:09',NULL,NULL,NULL,NULL,NULL),
('ff848e1f26015885a19ac5a6fa1782d3','system','system','sys_dictionary','Package','0',NULL,'sys_package','Package','reference','sys_db_object','sys_package',NULL,32,NULL,1,NULL,0,NULL,'2024-03-25 16:59:44','2026-06-20 12:15:27',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_dictionary` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_glide_object`
--

DROP TABLE IF EXISTS `sys_glide_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_glide_object` (
  `sys_id` char(36) NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_class_name` varchar(80) NOT NULL DEFAULT 'sys_glide_object',
  `sys_name` varchar(255) DEFAULT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_update_name` varchar(255) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `label` varchar(80) DEFAULT NULL,
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_scope` varchar(32) DEFAULT NULL,
  `sys_policy` varchar(40) DEFAULT NULL,
  `sys_package` varchar(32) DEFAULT NULL,
  `use_original_value` tinyint(1) DEFAULT 0,
  `visible` tinyint(1) DEFAULT 0,
  `scalar_length` text DEFAULT NULL,
  `scalar_type` text DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_glide_object`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_glide_object` WRITE;
/*!40000 ALTER TABLE `sys_glide_object` DISABLE KEYS */;
INSERT INTO `sys_glide_object` VALUES
('013e50cec3fc51b4b29099ec2ca872b0','system','system','sys_glide_object','Collection','0','sys_glide_object_013e50cec3fc51b4b29099ec2ca872b0','collection','Collection','2024-03-26 21:10:42','2025-09-21 10:17:48','global',NULL,NULL,0,0,NULL,NULL),
('0e5b76a870b85644bd4385217c03d3ae','system','system','sys_glide_object','Decimal','0','sys_glide_object_0e5b76a870b85644bd4385217c03d3ae','decimal','Decimal','2024-03-26 21:04:26','2025-09-21 10:21:47','global',NULL,NULL,0,0,NULL,NULL),
('0eec8dc65a255ff182ee474ad083b9ec','system','system','sys_glide_object','Journal Input','0','sys_glide_object_0eec8dc65a255ff182ee474ad083b9ec','journal_input','Journal Input','2024-03-26 21:17:35','2025-09-21 10:13:02','global',NULL,NULL,0,0,NULL,NULL),
('11143ffaf3065090ad9f082af82295cd','system','system','sys_glide_object','HTML','0','sys_glide_object_11143ffaf3065090ad9f082af82295cd','html','HTML','2024-03-26 21:16:11','2025-09-21 10:13:40','global',NULL,NULL,0,0,NULL,NULL),
('165fbedf83fc57d8a5cc31c16fe90801','system','system','sys_glide_object','List','0','sys_glide_object_165fbedf83fc57d8a5cc31c16fe90801','list','List','2024-03-26 21:14:19','2025-09-21 10:14:39','global',NULL,NULL,0,0,NULL,NULL),
('1cb097b0bc4752e1a8271ca75c1952df','system','system','sys_glide_object','Integer','0','sys_glide_object_1cb097b0bc4752e1a8271ca75c1952df','integer','Integer','2024-03-26 20:50:02','2025-09-21 10:24:24','global',NULL,NULL,0,0,NULL,NULL),
('300a07fc74dd53b698a5cdb33936e714','system','system','sys_glide_object','Script','0','sys_glide_object_300a07fc74dd53b698a5cdb33936e714','script','Script','2024-03-26 21:22:36','2025-09-21 09:24:08',NULL,NULL,NULL,0,0,NULL,NULL),
('316855775a98511fa2c981708a838876','system','system','sys_glide_object','Translated Text','0','sys_glide_object_316855775a98511fa2c981708a838876','translated_text','Translated Text','2025-10-02 22:55:12','2026-06-18 21:56:49','global',NULL,NULL,0,0,NULL,NULL),
('33d94dbfaf22598d952331a4b56dfe1a','system','system','sys_glide_object','Floating Point Number','0','sys_glide_object_33d94dbfaf22598d952331a4b56dfe1a','float','Floating Point Number','2024-03-26 21:05:54','2025-09-21 10:20:49','global',NULL,NULL,0,0,NULL,NULL),
('3933603a0f975bdbb442b3f77db606bb','system','system','sys_glide_object','Date/Time','0','sys_glide_object_3933603a0f975bdbb442b3f77db606bb','datetime','Date/Time','2024-03-26 21:00:51','2025-09-21 10:23:36','global',NULL,NULL,0,0,NULL,NULL),
('3ed4b21d877e53868d9ac613d1de1fc6','system','system','sys_glide_object','Translated Field','0','sys_glide_object_3ed4b21d877e53868d9ac613d1de1fc6','translated_field','Translated Field','2025-08-27 19:30:03','2025-09-21 09:20:04','global',NULL,NULL,0,0,NULL,NULL),
('44837f530db25b46866b92b074290f30','system','system','sys_glide_object','Password (2 Way Encrypted)','0','sys_glide_object_44837f530db25b46866b92b074290f30','password2','Password (2 Way Encrypted)','2024-03-26 21:20:54','2025-09-21 10:08:32','global',NULL,NULL,0,0,NULL,NULL),
('4dc9c287d4555dfa9c440c1b21b97f05','system','system','sys_glide_object','Journal List','0','sys_glide_object_4dc9c287d4555dfa9c440c1b21b97f05','journal_list','Journal List','2024-03-26 21:17:47','2025-09-21 10:12:00','global',NULL,NULL,0,0,NULL,NULL),
('5314b3ea306e535e8203f0cd8428d160','system','system','sys_glide_object','Sys ID','0','sys_glide_object_5314b3ea306e535e8203f0cd8428d160','GUID','Sys ID (GUID)','2024-03-26 21:15:43','2025-10-02 19:45:08','global',NULL,NULL,0,0,NULL,NULL),
('611be76ed6445d1dab9a67143a1ab648','system','system','sys_glide_object','Conditions','0','sys_glide_object_611be76ed6445d1dab9a67143a1ab648','conditions','Conditions','2024-03-26 21:12:22','2025-09-21 10:17:02','global',NULL,NULL,0,0,NULL,NULL),
('63c53dad3e9a55fcb8d568a471ae3ef4','system','system','sys_glide_object','Name/Values','0','sys_glide_object_63c53dad3e9a55fcb8d568a471ae3ef4','name_values','Name/Values','2024-03-26 21:19:11','2025-09-21 10:09:27','global',NULL,NULL,0,0,NULL,NULL),
('661b503eb2075bc9ad126460550acb0b','system','system','sys_glide_object','System Class Name','0','sys_glide_object_661b503eb2075bc9ad126460550acb0b','sys_class_name','System Class Name','2024-03-26 21:24:30','2025-09-21 09:23:51',NULL,NULL,NULL,0,0,NULL,NULL),
('67e6c6092a4454738992e3d28801a0bb','system','system','sys_glide_object','Reference','0','sys_glide_object_67e6c6092a4454738992e3d28801a0bb','reference','Reference','2024-03-26 21:08:54','2025-09-21 10:19:32','global',NULL,NULL,0,0,NULL,NULL),
('70a2861dfa465045974b0eb81576c4f6','system','system','sys_glide_object','Password (1 Way Encrypted)','0','sys_glide_object_70a2861dfa465045974b0eb81576c4f6','password','Password (1 Way Encrypted)','2024-03-26 21:20:39','2025-09-21 10:09:01','global',NULL,NULL,0,0,NULL,NULL),
('754b3b9380fd5169b15e2ed33f0b59b0','system','system','sys_glide_object','Field Name','0','sys_glide_object_754b3b9380fd5169b15e2ed33f0b59b0','field_name','Field Name','2024-03-26 21:13:45','2025-09-21 10:15:13','global',NULL,NULL,0,0,NULL,NULL),
('82555faa4de15cfeb9add096df33a85c','system','system','sys_glide_object','Currency','0','sys_glide_object_82555faa4de15cfeb9add096df33a85c','currency','Currency','2024-03-26 21:04:53','2025-09-21 10:21:29','global',NULL,NULL,0,0,NULL,NULL),
('82dee5f75c1b5fd8a96cf5aac4b514b5','system','system','sys_glide_object','String','0','sys_glide_object_82dee5f75c1b5fd8a96cf5aac4b514b5','string','String','2024-02-17 20:39:20','2025-09-21 10:25:19','global',NULL,NULL,0,0,NULL,NULL),
('8aa14ddaf7a65c5e9469ca48cc7548b6','system','system','sys_glide_object','Journal','0','sys_glide_object_8aa14ddaf7a65c5e9469ca48cc7548b6','journal','Journal','2024-03-26 21:17:14','2025-09-21 10:12:20','global',NULL,NULL,0,0,NULL,NULL),
('8eb9e48df7a95a72a913a6665a2db11c','system','system','sys_glide_object','URL','0','sys_glide_object_8eb9e48df7a95a72a913a6665a2db11c','url','URL','2024-03-26 21:25:34','2025-09-21 09:22:37',NULL,NULL,NULL,0,0,NULL,NULL),
('907864abc0cb5a0e93928066d61e1c8c','system','system','sys_glide_object','User Roles','0','sys_glide_object_907864abc0cb5a0e93928066d61e1c8c','user_roles','User Roles','2025-08-27 19:22:13','2025-09-21 09:20:41','global',NULL,NULL,0,0,NULL,NULL),
('93f0be82e0f8503c9f5718c977d21ae9','system','system','sys_glide_object','Email','0','sys_glide_object_93f0be82e0f8503c9f5718c977d21ae9','email','Email','2024-03-26 21:13:01','2025-09-21 10:16:13','global',NULL,NULL,0,0,NULL,NULL),
('9dd07be9df565ff1a80b25ab755ae219','system','system','sys_glide_object','Radio Button Choice','0','sys_glide_object_9dd07be9df565ff1a80b25ab755ae219','radio','Radio Button Choice','2024-03-26 21:22:07','2025-09-21 10:06:42','global',NULL,NULL,0,0,NULL,NULL),
('9f47180cb03a5483a238c807090d5f1c','system','system','sys_glide_object','Table Name','0','sys_glide_object_9f47180cb03a5483a238c807090d5f1c','table_name','Table Name','2024-03-26 21:24:49','2025-09-21 09:23:30',NULL,NULL,NULL,0,0,NULL,NULL),
('a1121556417f5a889e0552e6f2e2b819','system','system','sys_glide_object','Choice','0','sys_glide_object_a1121556417f5a889e0552e6f2e2b819','choice','Choice','2024-03-26 21:10:12','2025-09-21 10:18:14','global',NULL,NULL,0,0,NULL,NULL),
('a3ab272594b755d9b08e857013e8159b','system','system','sys_glide_object','Date','0','sys_glide_object_a3ab272594b755d9b08e857013e8159b','date','Date','2024-03-26 20:58:27','2025-09-21 11:03:41','global',NULL,NULL,0,0,NULL,NULL),
('b3b97f9187e55017aa680a6037820832','system','system','sys_glide_object','True/False','0','sys_glide_object_b3b97f9187e55017aa680a6037820832','boolean','True/False','2024-03-26 20:47:43','2025-09-21 10:24:50','global',NULL,NULL,0,0,NULL,NULL),
('c7ad4e3135dc5c48b6aa2d334c88e7ad','system','system','sys_glide_object','JSON','0','sys_glide_object_c7ad4e3135dc5c48b6aa2d334c88e7ad','json','JSON','2024-03-26 21:18:13','2025-09-21 10:10:37','global',NULL,NULL,0,0,NULL,NULL),
('d2c1ef8958c5558cb65ae2a0f12f8128','system','system','sys_glide_object','Language','0','sys_glide_object_d2c1ef8958c5558cb65ae2a0f12f8128','language','Language','2024-03-26 21:18:43','2025-09-21 10:09:58','global',NULL,NULL,0,0,NULL,NULL),
('e0b55c9f1af75d9eb6a5cc586505b8d1','system','system','sys_glide_object','Time','0','sys_glide_object_e0b55c9f1af75d9eb6a5cc586505b8d1','time','Time','2024-03-26 21:01:42','2025-09-21 10:22:18','global',NULL,NULL,0,0,NULL,NULL),
('ea2ff4f2786b55c9b83bcc5b8f266ec0','system','system','sys_glide_object','Document ID','0','sys_glide_object_ea2ff4f2786b55c9b83bcc5b8f266ec0','document_id','Document ID','2024-03-26 21:08:09','2025-09-21 10:20:07','global',NULL,NULL,0,0,NULL,NULL);
/*!40000 ALTER TABLE `sys_glide_object` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_metadata`
--

DROP TABLE IF EXISTS `sys_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_metadata` (
  `sys_id` char(36) NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_class_name` varchar(80) NOT NULL,
  `sys_name` varchar(255) DEFAULT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_update_name` varchar(255) DEFAULT NULL,
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_scope` varchar(32) DEFAULT NULL,
  `sys_policy` varchar(40) DEFAULT NULL,
  `sys_package` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_metadata`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_metadata` WRITE;
/*!40000 ALTER TABLE `sys_metadata` DISABLE KEYS */;
INSERT INTO `sys_metadata` VALUES
('007e290baf0557768da279f2d539a6cf','system','system','sys_dictionary','Time format','0','sys_dictionary_sys_user_time_format','2026-06-20 15:54:01','2026-06-20 15:54:01',NULL,NULL,NULL),
('010c214049f4504787fde4f9be9ae162','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_user_sys_updated_on','2026-06-13 16:46:35','2026-06-13 16:46:35','global',NULL,NULL),
('0234096a1d78529bb4c0ebe97de6e199','system','system','sys_dictionary','Value','0','sys_dictionary_sys_choice_value','2026-06-20 12:52:11','2026-06-20 12:52:11',NULL,NULL,NULL),
('058e6fffc8cf59ca83dfc7f510797511','system','system','sys_dictionary','reference_key','0','sys_dictionary_sys_dictionary_reference_key','2025-09-21 13:40:10','2025-09-21 13:40:10','global',NULL,NULL),
('0655d993d3515236a8ee86b837e7e43f','system','system','sys_dictionary','title','0','sys_dictionary_0655d993d3515236a8ee86b837e7e43f','2025-08-27 20:14:30','2025-08-27 20:14:30','global',NULL,NULL),
('0671f552394b5f8ea86ac8b65e656247','system','system','sys_db_object','Sys App Module','0','sys_db_object_0671f552394b5f8ea86ac8b65e656247','2025-08-27 18:09:45','2025-08-27 18:09:45','global',NULL,NULL),
('07805207d9005f85ba362c8f675696a1','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_choice_sys_updated_by','2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL),
('07e42ab83dee5fb19aeac925c9f85671','system','system','sys_dictionary','Value','0','sys_dictionary_sys_user_preference_value','2026-06-13 16:52:43','2026-06-13 16:52:43',NULL,NULL,NULL),
('0a6c530583715aac8a269410ec767792','system','system','sys_dictionary','sys_name','0',NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL),
('0ae203d236575148b06a144a25110582','system','system','sys_dictionary','Updated','0','sys_dictionary_cmn_department_sys_updated_on','2026-06-20 15:50:29','2026-06-20 15:50:29','global',NULL,NULL),
('0bde73a712fe5f6cb31b313d1cd9a01d','system','system','sys_dictionary','Application','0','sys_dictionary_sys_ui_page_sys_scope','2026-06-20 13:11:18','2026-06-20 13:11:18','global',NULL,NULL),
('0f18ae2950095510841ebbac13c6294a','system','system','sys_dictionary','description','0','sys_dictionary_0f18ae2950095510841ebbac13c6294a','2025-08-27 19:38:58','2025-08-27 19:38:58','global',NULL,NULL),
('0fa22f5258955d148a2d41a744bdb7a9','system','system','sys_dictionary','Version','0','sys_dictionary_sys_package_version','2026-06-13 19:03:55','2026-06-13 19:03:55',NULL,NULL,NULL),
('0fedd405e99e5598b394473be8030f8f','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_choice_sys_mod_count','2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL),
('123a611fff025a16ace4ca715ddef2ba','system','system','sys_dictionary','query','0','sys_dictionary_123a611fff025a16ace4ca715ddef2ba','2025-08-27 20:28:12','2025-08-27 20:28:12','global',NULL,NULL),
('1291a864dfac54d892c2b2e4924e169c','system','system','sys_dictionary','name','0','sys_dictionary_1291a864dfac54d892c2b2e4924e169c','2025-08-27 20:26:33','2025-08-27 20:26:33','global',NULL,NULL),
('1744788797415101b4ef71bd88240b9b','system','system','sys_db_object','sys_dictionary','0',NULL,'2024-03-26 21:41:10','2024-03-26 21:41:10',NULL,NULL,NULL),
('1958ab09fa9f5927a4e4200090df69bc','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_user_sys_updated_on','2026-06-20 15:06:24','2026-06-20 15:06:24','global',NULL,NULL),
('1a900342577450959bac7a524836d694','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_app_application_sys_id','2026-06-20 16:12:29','2026-06-20 16:12:29',NULL,NULL,NULL),
('1b408962630656d3aaebe86938b46c30','system','system','sys_dictionary','First name','0','sys_dictionary_sys_user_first_name','2026-06-20 15:25:07','2026-06-20 15:25:07',NULL,NULL,NULL),
('1c596175c155588f84623ed6663c397c','system','system','sys_db_object','Sys Properties','0','sys_db_object_1c596175c155588f84623ed6663c397c','2025-08-28 16:54:21','2025-08-28 16:54:21','global',NULL,NULL),
('1cb1ce8d652e5a819d8e233926ccda09','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_user_sys_created_by','2026-06-20 15:06:24','2026-06-20 15:06:24',NULL,NULL,NULL),
('1d51694ac0fc51ba9b320c69ed0dada5','system','system','sys_dictionary','order','0','sys_dictionary_1d51694ac0fc51ba9b320c69ed0dada5','2025-08-27 20:19:36','2025-08-27 20:19:36','global',NULL,NULL),
('1deeb19df3705738bda0810a50883a58','system','system','sys_dictionary','Updated','0','sys_dictionary_test_sys_updated_on','2026-06-18 21:05:47','2026-06-18 21:05:47','global',NULL,NULL),
('1ebe4bfb6e9559639031251cd4c5abf6','system','system','sys_dictionary','Table','0','sys_dictionary_sys_choice_name','2026-06-20 12:55:11','2026-06-20 12:55:11',NULL,NULL,NULL),
('21ef018970fd5bcda350f765f261a1d3','system','system','sys_db_object','Cmn Department','0','sys_db_object_21ef018970fd5bcda350f765f261a1d3','2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL),
('266fcfdce4125ad69ad0dc54ce272574','system','system','sys_dictionary','sys_scope','0',NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL),
('267764e7fbef57cf93f4f52ce43b47c1','system','system','sys_dictionary','Sequence','0','sys_dictionary_sys_choice_sequence','2026-06-20 12:56:33','2026-06-20 12:56:33',NULL,NULL,NULL),
('28b8ca86b3155dceb6ed1f5b62b8e4c7','system','system','sys_dictionary','ID','0','sys_dictionary_sys_scope_source','2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL),
('2a3a5776d09856d49af3146c0001daf6','system','system','sys_dictionary','Created','0','sys_dictionary_sys_db_object_sys_created_on','2025-10-02 20:49:54','2025-10-02 20:49:54','global',NULL,NULL),
('2a7db5cc99f654c98e20165f0e9a8021','system','system','sys_dictionary','sys_updated_on','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('2a904fb27ce6506c968fbdc87c4e2e93','system','system','sys_dictionary','window_name','0','sys_dictionary_2a904fb27ce6506c968fbdc87c4e2e93','2025-08-27 20:29:38','2025-08-27 20:29:38','global',NULL,NULL),
('2b2e07b14a95556cb58fe0eec59f94f3','system','system','sys_dictionary','Depedent value','0','sys_dictionary_sys_choice_depedent_value','2026-06-20 12:50:27','2026-06-20 12:50:27',NULL,NULL,NULL),
('2f389cde0770580ca7bd2f2ed3572c82','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_user_sys_created_by','2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL),
('2fbcb4c972ee581c84545f4a3eb4972b','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_user_preference_sys_updated_by','2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL),
('2fd5179bd9d4586e8fbf3cd9fa4817fa','system','system','sys_dictionary','Created','0','sys_dictionary_sys_user_sys_created_on','2026-06-13 16:46:35','2026-06-13 16:46:35','global',NULL,NULL),
('308189237da253ab9b2c06de00d86273','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_app_application_sys_updated_on','2026-06-20 16:12:29','2026-06-20 16:12:29','global',NULL,NULL),
('30e6fb1a5f675b7db1624d5b780e9379','system','system','sys_dictionary','Active','0','sys_dictionary_sys_scope_active','2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL),
('31f9131c9ddf516ba3a09e87350144da','system','system','sys_dictionary','sys_id','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('3403152d0a165fed999b254432efc8b2','system','system','sys_dictionary','Created','0','sys_dictionary_sys_ui_page_sys_created_on','2026-06-20 13:17:59','2026-06-20 13:17:59','global',NULL,NULL),
('34566e72939d5ae8aaf42c74f942fc20','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_app_application_sys_mod_count','2026-06-20 16:12:29','2026-06-20 16:12:29',NULL,NULL,NULL),
('3505f20bda3257aeb6ca9e807d9f879a','system','system','sys_dictionary','ID','0','sys_dictionary_sys_package_source','2026-06-13 19:03:11','2026-06-13 19:03:11',NULL,NULL,NULL),
('3601f78f982b5213836a1c7a7f5dcc8d','system','system','sys_db_object','Application Menu','0','sys_db_object_3601f78f982b5213836a1c7a7f5dcc8d','2025-08-26 11:39:55','2025-08-26 11:39:55','global',NULL,NULL),
('37a31c20f50003100a22c0b3dfa15126','system','system','sys_db_object','Test','0','sys_db_object_37a31c20f50003100a22c0b3dfa15126','2026-04-01 03:55:16','2026-06-18 21:05:47','global','','1fa3d820f50003100a22c0b3dfa15103'),
('381395930a305703856985941b33f23e','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_user_sys_id','2026-06-20 15:06:24','2026-06-20 15:06:24',NULL,NULL,NULL),
('38396ff4de8c581d8d6f15899b8b6849','system','system','sys_dictionary','sys_update_name','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('38a2760492da5d27a4440dea244296d7','system','system','sys_dictionary','sys_app_application','0','sys_dictionary_sys_app_application','2026-06-20 16:12:29','2026-06-20 16:12:29',NULL,NULL,NULL),
('3927b4ac6de157c1ae273c36fb01d9fd','system','system','sys_dictionary','sys_scope','0','sys_dictionary_sys_scope','2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL),
('39441016049c5812ab3dfb90a2a8c68d','system','system','sys_dictionary','Name','0','sys_dictionary_sys_ui_page_name','2026-06-13 19:45:16','2026-06-13 19:45:16',NULL,NULL,NULL),
('3999fd2ad4a2531d88da3cebc7000b15','system','system','sys_dictionary','User ID','0','sys_dictionary_sys_user_user_name','2026-06-20 15:24:39','2026-06-20 15:24:39',NULL,NULL,NULL),
('39d765df78bb5ea9975b9f6217f110cc','system','system','sys_db_object','Sys Ui Page','0','sys_db_object_39d765df78bb5ea9975b9f6217f110cc','2026-06-13 19:34:45','2026-06-13 19:34:45',NULL,NULL,NULL),
('3a74d08c49af5095a88744007f0f02ee','system','system','sys_dictionary','Created by','0','sys_dictionary_cmn_department_sys_created_by','2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL),
('3aadb1ea9f5a5dde91a0ff7e52be9a41','system','system','sys_dictionary','Location','0','sys_dictionary_sys_user_location','2026-06-20 15:49:28','2026-06-20 15:49:28',NULL,NULL,NULL),
('3d49733b9ca4540ea3758b23dc369811','system','system','sys_dictionary','Hint','0','sys_dictionary_sys_choice_hint','2026-06-20 12:50:57','2026-06-20 12:50:57',NULL,NULL,NULL),
('4118133ce19558348b1cc3b04da4c598','system','system','sys_dictionary','Time zone','0','sys_dictionary_sys_user_time_zone','2026-06-20 15:54:25','2026-06-20 15:54:25',NULL,NULL,NULL),
('420d5c3c681c54c49dfc5975ca9b56f5','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_app_application_sys_created_by','2026-06-20 16:12:29','2026-06-20 16:12:29',NULL,NULL,NULL),
('42d21e3d23cd5aa9b70f7a3fe1ba72e3','system','system','sys_dictionary','hint','0','sys_dictionary_42d21e3d23cd5aa9b70f7a3fe1ba72e3','2025-08-27 19:38:12','2025-08-27 19:38:12','global',NULL,NULL),
('436621faf9375a4397f4286b5855c6fa','system','system','sys_dictionary','sys_user','0','sys_dictionary_sys_user','2026-06-20 15:06:24','2026-06-20 15:06:24','20c18993964d5d5b95b92b6e500adf3a',NULL,NULL),
('44e8d580af2d5417abc9615de6232c26','system','system','sys_dictionary','Language','0','sys_dictionary_sys_choice_language','2026-06-20 12:49:55','2026-06-20 12:49:55',NULL,NULL,NULL),
('4544458b683557898eeda3580e91d5d2','system','system','sys_dictionary','Identity type','0','sys_dictionary_sys_user_indentity_type','2026-06-20 15:33:28','2026-06-20 15:33:28',NULL,NULL,NULL),
('45f49e3d53975ba1ab63e218a2b39d64','system','system','sys_dictionary','override_menu_roles','0','sys_dictionary_45f49e3d53975ba1ab63e218a2b39d64','2025-08-27 20:30:41','2025-08-27 20:30:41','global',NULL,NULL),
('4917646e40825f42a04e74e803edf012','system','system','sys_dictionary','Description','0','sys_dictionary_sys_ui_page_description','2026-06-13 19:44:57','2026-06-13 19:44:57',NULL,NULL,NULL),
('493b944c2527557ea08213b8b6d32a23','system','system','sys_dictionary','Created','0','sys_dictionary_cmn_department_sys_created_on','2026-06-20 15:50:29','2026-06-20 15:50:29','global',NULL,NULL),
('4a07433786f25de88bf31061ff4662d8','system','system','sys_dictionary','Created by','0','sys_dictionary_test_sys_created_by','2026-06-18 21:05:47','2026-06-18 21:05:47',NULL,NULL,NULL),
('4ab34b6b5d6b56368fe6d11be7eba1dd','system','system','sys_db_object','Sys Choice','0','sys_db_object_4ab34b6b5d6b56368fe6d11be7eba1dd','2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL),
('4ab4a5f27d7b528ea3006d21d780fad1','system','system','sys_dictionary','Name','0','sys_dictionary_sys_user_preference_name','2026-06-13 16:49:51','2026-06-13 16:49:51',NULL,NULL,NULL),
('4afc26c127625f61a35f258dbb644579','system','system','sys_dictionary','Password needs reset','0','sys_dictionary_sys_user_password_needs_reset','2026-06-20 15:56:11','2026-06-20 15:56:11',NULL,NULL,NULL),
('4b6b77d615085177bdbbd9deb7a41327','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_ui_page_sys_created_by','2026-06-20 13:18:20','2026-06-20 13:18:20','global',NULL,NULL),
('4dc77788055255e08fe53403c5823722','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_user_preference_sys_updated_on','2026-06-13 16:44:13','2026-06-13 16:44:13','global',NULL,NULL),
('4e90035093b95a8e9c73159a805ea048','system','system','sys_dictionary','sys_policy','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('5003dca034ed5a399c248d3731986b3d','system','system','sys_dictionary','Mobile phone','0','sys_dictionary_sys_user_mobile_phone','2026-06-20 16:07:24','2026-06-20 16:07:24',NULL,NULL,NULL),
('5019bb8e94f95e73acd69de107456322','system','system','sys_dictionary','Created','0','sys_dictionary_sys_user_sys_created_on','2026-06-20 15:06:24','2026-06-20 15:06:24','global',NULL,NULL),
('5473ea5ecc5b5c499a4ea4bd9421216c','system','system','sys_dictionary','Sys ID','0','sys_dictionary_core_company_sys_id','2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL),
('55cad31deda25edea496c7a5b81e87d6','system','system','sys_dictionary','Updates','0','sys_dictionary_test_sys_mod_count','2026-06-18 21:05:47','2026-06-18 21:05:47',NULL,NULL,NULL),
('5714a3c2c0c852038d08b057aee22c5d','system','system','sys_dictionary','City','0','sys_dictionary_sys_user_city','2026-06-20 16:05:44','2026-06-20 16:05:44',NULL,NULL,NULL),
('582511aaad7e51269f4a9ac69d542b79','system','system','sys_dictionary','sys_user_preference','0','sys_dictionary_sys_user_preference','2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL),
('59d9d0bf74b15df0a7f3b2d68b12efa1','system','system','sys_dictionary','Type','0','sys_dictionary_sys_user_preference_type','2026-06-13 16:50:18','2026-06-13 16:50:18',NULL,NULL,NULL),
('5a0abd50cca25ca9bba2d9afd6fc2796','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_user_sys_mod_count','2026-06-20 15:06:24','2026-06-20 15:06:24',NULL,NULL,NULL),
('5a8abea71fa959f494a68abba1a72b28','system','system','sys_dictionary','Manager','0','sys_dictionary_sys_user_manager','2026-06-20 15:36:30','2026-06-20 15:36:30',NULL,NULL,NULL),
('5ab0789c05a058a4be03b4195bc87739','system','system','sys_dictionary','sys_scope','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('5adbf03c8d855b5e9c3b84d63626a8ee','system','system','sys_dictionary','sys_class_name','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('5b01162499795c629dd027e6a6f0d9ed','system','system','sys_db_object','Sys User','0','sys_db_object_5b01162499795c629dd027e6a6f0d9ed','2026-06-20 15:06:24','2026-06-20 15:06:24','20c18993964d5d5b95b92b6e500adf3a',NULL,NULL),
('5c371cc5d9215e5abccfe28f1d65ad08','system','system','sys_dictionary','is_private','0','sys_dictionary_5c371cc5d9215e5abccfe28f1d65ad08','2025-08-28 17:09:17','2025-08-28 17:09:17','global',NULL,NULL),
('5d84678d3c15546d81e7cb99d6896cde','system','system','sys_dictionary','Use original value','0','sys_dictionary_sys_glide_object_use_original_value','2026-06-11 23:02:29','2026-06-11 23:02:29',NULL,NULL,NULL),
('5eb5b7ffeb265d67ae7d38ceb65d05e4','system','system','sys_dictionary','Company','0','sys_dictionary_sys_user_company','2026-06-20 15:47:48','2026-06-20 15:47:48',NULL,NULL,NULL),
('5eb992a8ea0d55b690969a7928949f0d','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_user_sys_mod_count','2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL),
('5ecccd58e9e956f6bab85a39fbc424f5','system','system','sys_dictionary','active','0','sys_dictionary_5ecccd58e9e956f6bab85a39fbc424f5','2025-08-27 19:33:45','2025-08-27 19:33:45','global',NULL,NULL),
('5f6352f3a36459359528acc02d9f5912','system','system','sys_dictionary','Name','0','sys_dictionary_sys_scope_name','2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL),
('622a7652327055658505dd4b92fe39c5','system','system','sys_dictionary','Extends','0','sys_dictionary_sys_glide_object_scalar_type','2026-06-18 21:53:55','2026-06-18 21:53:55',NULL,NULL,NULL),
('62f3e60a40fa5dd8995d60fd2404cbb6','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_ui_page_sys_updated_by','2026-06-20 13:18:25','2026-06-20 13:18:25','global',NULL,NULL),
('6481319422a95989b71ed8f8b6f32cc9','system','system','sys_dictionary','type','0','sys_dictionary_6481319422a95989b71ed8f8b6f32cc9','2025-08-28 17:05:58','2025-08-28 17:05:58','global',NULL,NULL),
('64e50a9979685f35a9892c8e686ac03b','system','system','sys_dictionary','roles','0','sys_dictionary_64e50a9979685f35a9892c8e686ac03b','2025-08-27 19:36:02','2025-08-27 19:36:02','global',NULL,NULL),
('657ad65a2bd552cc8de23fcb25039964','system','system','sys_dictionary','link_type','0','sys_dictionary_657ad65a2bd552cc8de23fcb25039964','2025-08-27 20:25:41','2025-08-27 20:25:41','global',NULL,NULL),
('67eeb7c184eb5b56a48caa4b9503c2e0','system','system','sys_dictionary','Enable Multifactor Authentication','0','sys_dictionary_sys_user_enable_mutifactor_auth','2026-06-20 15:59:26','2026-06-20 15:59:26',NULL,NULL,NULL),
('68496821c6d6542bb526f418f87b49f3','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_package_sys_mod_count','2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL),
('6a263de48a7352908927c29b3d8a9b89','system','system','sys_dictionary','sys_ui_page','0','sys_dictionary_sys_ui_page','2026-06-13 19:34:45','2026-06-13 19:34:45',NULL,NULL,NULL),
('6c34b895a44e5a869f7707adb144fdf1','system','system','sys_dictionary','view_name','0','sys_dictionary_6c34b895a44e5a869f7707adb144fdf1','2025-08-27 20:27:08','2025-08-27 20:27:08','global',NULL,NULL),
('6cacfbe138c45e2e8874692c62720904','system','system','sys_dictionary','Created','0','sys_dictionary_test_sys_created_on','2026-06-18 21:05:47','2026-06-18 21:05:47','global',NULL,NULL),
('6d9031064fc659169fac2394a55f91c3','system','system','sys_dictionary','Category','0','sys_dictionary_sys_ui_page_category','2026-06-13 19:45:43','2026-06-13 19:45:43',NULL,NULL,NULL),
('6f16ae88d181592da5f377d8196f0c67','system','system','sys_dictionary','Updated by','0','sys_dictionary_test_sys_updated_by','2026-06-18 21:05:47','2026-06-18 21:05:47',NULL,NULL,NULL),
('703ed3f51b0b5f8babef695a8356500f','system','system','sys_dictionary','Created','0','sys_dictionary_sys_package_sys_created_on','2026-06-13 19:01:49','2026-06-13 19:01:49','global',NULL,NULL),
('704e644b7cad506e9cda29ad2c61e06a','system','system','sys_dictionary','Email','0','sys_dictionary_sys_user_email','2026-06-20 15:48:34','2026-06-20 15:48:34',NULL,NULL,NULL),
('7127798174a95155bc73516661fb4e61','system','system','sys_dictionary','sys_created_by','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('71631268d90f511b95c50c9a09cd77ea','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_user_sys_updated_on','2026-06-20 15:11:22','2026-06-20 15:11:22','global',NULL,NULL),
('7423c7c89df75a2e89083c38b3d3e530','system','system','sys_dictionary','sys_policy','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('7a061b322a885a358300b62807a2512f','system','system','sys_dictionary','sys_created_on','0',NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL),
('7a2b2cd40db45be9902ce5f98d7e867c','system','system','sys_dictionary','application','0','sys_dictionary_7a2b2cd40db45be9902ce5f98d7e867c','2025-08-27 20:15:29','2025-08-27 20:15:29','global',NULL,NULL),
('7d7221b091cb55ddb9caeaea3ec7bd28','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_user_preference_sys_mod_count','2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL),
('7e74e9e548f65caa92a4eb35a699f0d2','system','system','sys_dictionary','sys_created_by','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('7fac775f9d1f51a8bdcb1e3563f3d269','system','system','sys_dictionary','Update','0','sys_dictionary_sys_ui_page_sys_update_name','2026-06-20 13:18:09','2026-06-20 13:18:09','global',NULL,NULL),
('7fc28db6b9a553baa60990474eb1aed9','system','system','sys_dictionary','TEST REF','0','sys_dictionary_test_test_ref','2026-06-18 21:30:15','2026-06-18 21:30:15',NULL,NULL,NULL),
('804776fc0b415fe69630efefd4eed4a6','system','system','sys_dictionary','Updated','0','sys_dictionary_cmn_location_sys_updated_on','2026-06-20 15:45:02','2026-06-20 15:45:02','global',NULL,NULL),
('8061e63abd4c5dee87eef676b924e548','system','system','sys_dictionary','Description','0','sys_dictionary_sys_user_preference_description','2026-06-13 16:48:42','2026-06-13 16:48:42',NULL,NULL,NULL),
('806654a345ef5c838949aaea5aecce34','system','system','sys_dictionary','Updates','0','sys_dictionary_core_company_sys_mod_count','2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL),
('8228716c38605ad09f6ff9d8fa8de9bc','system','system','sys_dictionary','sys_metadata','0','sys_dictionary_8228716c38605ad09f6ff9d8fa8de9bc','2025-08-28 17:56:23','2025-08-28 17:56:23','global',NULL,NULL),
('823c58c9be0f5711ae20b39b832e0d7e','system','system','sys_dictionary','Name','0','sys_dictionary_sys_package_name','2026-06-13 19:03:26','2026-06-13 19:03:26',NULL,NULL,NULL),
('82606188e15055b8a514c527d323cb53','system','system','sys_dictionary','Reference qual','0','sys_dictionary_sys_dictionary_reference_qual','2026-06-20 15:34:11','2026-06-20 15:34:11',NULL,NULL,NULL),
('845763be5970528895fc6d3098f95a27','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_choice_sys_updated_on','2026-06-20 12:23:56','2026-06-20 12:23:56','global',NULL,NULL),
('84853d44e7ff5e1fb4aa4499fb48a2ff','system','system','sys_dictionary','Updated by','0','sys_dictionary_cmn_location_sys_updated_by','2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL),
('850be2aef9ef5ee9a3d009c743e87c1f','system','system','sys_dictionary','sys_updated_on','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:55',NULL,NULL,NULL),
('851372514c5b5e1bb94e396ef512939f','system','system','sys_dictionary','Script','0','sys_dictionary_sys_ui_page_script','2026-06-13 19:44:13','2026-06-13 19:44:13',NULL,NULL,NULL),
('8878dd8fc08f5a5580dca64f187f1f71','system','system','sys_db_object','Sys Scope','0','sys_db_object_8878dd8fc08f5a5580dca64f187f1f71','2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL),
('89aee9a05d805784802c425892a25674','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_user_preference_sys_created_by','2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL),
('8af9702b9b335873b023d1ebb113db1a','system','system','sys_dictionary','sys_glide_object','0','sys_dictionary_8af9702b9b335873b023d1ebb113db1a','2025-08-28 18:19:25','2025-08-28 18:19:25','global',NULL,NULL),
('8b6cb5167d5a57d4a51ab0923075571f','system','system','sys_dictionary','Created by','0','sys_dictionary_core_company_sys_created_by','2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL),
('8c03b29169265645ad214dc54490b7ea','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_choice_sys_id','2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL),
('8cfd60fdf04b530c80b21225cf11b283','system','system','sys_dictionary','active','0','sys_dictionary_8cfd60fdf04b530c80b21225cf11b283','2025-08-27 20:22:32','2025-08-27 20:22:32','global',NULL,NULL),
('8d4b6fa3a01d5f47a32c0ea040cdfe17','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_ui_page_sys_id','2026-06-13 19:34:45','2026-06-13 19:34:45',NULL,NULL,NULL),
('8e0afcd73c115d6c96981dae1b59127b','system','system','sys_dictionary','System','0','sys_dictionary_sys_user_preference_system','2026-06-13 17:11:08','2026-06-13 17:11:08',NULL,NULL,NULL),
('94408b65c1885c3a8375840e6c3f5b5b','system','system','sys_dictionary','title','0','sys_dictionary_94408b65c1885c3a8375840e6c3f5b5b','2025-08-27 19:31:04','2025-08-27 19:31:04','global',NULL,NULL),
('964419cb15cd5062b2676569b7ba076d','system','system','sys_db_object','sys_db_object','0',NULL,'2024-03-26 21:35:17','2024-03-26 21:35:17',NULL,NULL,NULL),
('973d772f7caf5280941057d00d79f80d','system','system','sys_dictionary','description','0','sys_dictionary_973d772f7caf5280941057d00d79f80d','2025-08-28 17:03:42','2025-08-28 17:03:42','global',NULL,NULL),
('9982a37670e9577483a1610826a2096f','system','system','sys_dictionary','Label','0','sys_dictionary_sys_choice_label','2026-06-20 12:49:18','2026-06-20 12:49:18',NULL,NULL,NULL),
('99ee8be10871502e931829064c151cf0','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_package_sys_updated_by','2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL),
('9a40b2e7ad815ce8a74bfb98a6ee193d','system','system','sys_dictionary','sys_choice','0','sys_dictionary_sys_choice','2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL),
('9b5bd52f9a505910ba426503adfba149','system','system','sys_db_object','Core Company','0','sys_db_object_9b5bd52f9a505910ba426503adfba149','2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL),
('9c52e4677e47592687812ae713ae571f','system','system','sys_dictionary','Created by','0','sys_dictionary_cmn_location_sys_created_by','2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL),
('9d544d00405b5380b591a28a31b1e4b3','system','system','sys_dictionary','Country code','0','sys_dictionary_sys_user_country','2026-06-20 15:53:13','2026-06-20 15:53:13',NULL,NULL,NULL),
('9e0a93afa9b45257b27379fac37d8db7','system','system','sys_dictionary','ignore_cache','0','sys_dictionary_9e0a93afa9b45257b27379fac37d8db7','2025-08-28 17:08:17','2025-08-28 17:08:17','global',NULL,NULL),
('9e1e3c684b205a15b798a018a4e2b674','system','system','sys_dictionary','Created','0','sys_dictionary_sys_app_application_sys_created_on','2026-06-20 16:12:29','2026-06-20 16:12:29','global',NULL,NULL),
('9eb458a85533513e9deba7f1316dbbee','system','system','sys_dictionary','Script compiled','0','sys_dictionary_sys_ui_page_script_compiled','2026-06-13 19:44:36','2026-06-13 19:44:36',NULL,NULL,NULL),
('9ee4bf50e9935433a764d222e8ec5386','system','system','sys_dictionary','Display name','0','sys_dictionary_sys_ui_page_sys_name','2026-06-20 13:15:44','2026-06-20 13:15:44','global',NULL,NULL),
('9ffe5969a01f59c3b4d90ece9a57af94','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_package_sys_created_by','2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL),
('a2fa6b8a7aa4540e8c9ee2bb59858fcd','system','system','sys_dictionary','roles','0','sys_dictionary_a2fa6b8a7aa4540e8c9ee2bb59858fcd','2025-08-27 20:23:04','2025-08-27 20:23:04','global',NULL,NULL),
('a33645077afd5f49af7abde13de9877f','system','system','sys_dictionary','cmn_location','0','sys_dictionary_cmn_location','2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL),
('a4bf6625e5eb5583b0bf1630acff81d9','system','system','sys_dictionary','Active','0','sys_dictionary_sys_user_active','2026-06-20 15:29:15','2026-06-20 15:29:15',NULL,NULL,NULL),
('a66e282f6d1356669ae4f2361298105c','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_ui_page_sys_updated_on','2026-06-20 13:18:04','2026-06-20 13:18:04','global',NULL,NULL),
('a7919374cb2950639591477124b6b9a9','system','system','sys_dictionary','Title','0','sys_dictionary_sys_user_title','2026-06-20 15:25:41','2026-06-20 15:25:41',NULL,NULL,NULL),
('a8e63b5a574a5cfd8c153b29e84f031c','system','system','sys_dictionary','sys_dictionary','0','sys_dictionary_a8e63b5a574a5cfd8c153b29e84f031c','2025-08-28 18:17:35','2025-08-28 18:17:35','global',NULL,NULL),
('a96cb57d939c5cf1b47c5f3081f1b556','system','system','sys_dictionary','User','0','sys_dictionary_sys_user_preference_user','2026-06-13 16:47:23','2026-06-13 16:47:23',NULL,NULL,NULL),
('ab22299e21665dd8b47b467057c871bd','system','system','sys_dictionary','sys_name','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('ac69930fde615028984c580e9b0d1cbd','system','system','sys_dictionary','sys_updated_by','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('ad34c0a6b42e5749b2c193d1fa14ecd2','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_package_sys_id','2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL),
('ad7ec2e2941051f88df098fb9a7d5af5','system','system','sys_dictionary','sys_update_name','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('ae816a4ab5de591097d15da7a1eaadb2','system','system','sys_dictionary','sys_properties','0','sys_dictionary_sys_properties','2025-08-28 16:54:21','2025-08-28 16:54:21','global',NULL,NULL),
('b49a0f05ebb758c9b5f66b42a5769389','system','system','sys_db_object','Sys App Application','0','sys_db_object_b49a0f05ebb758c9b5f66b42a5769389','2026-06-20 16:12:29','2026-06-20 16:12:29',NULL,NULL,NULL),
('b7d10f8b744359849a9e8d4f097a3406','system','system','sys_dictionary','Package','0','sys_dictionary_sys_metadata_sys_package','2026-06-20 13:10:46','2026-06-20 13:10:46','global',NULL,NULL),
('b91bd851217b5b6d8c72eb3a47725a17','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_user_sys_id','2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL),
('b9db63d120ea5175b8b93a9f48e9ec51','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_user_preference_sys_id','2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL),
('ba3e1fa3594e5cbe9de490c882cf8e08','system','system','sys_db_object','Sys User Preference','0','sys_db_object_ba3e1fa3594e5cbe9de490c882cf8e08','2026-06-13 16:44:13','2026-06-13 16:44:13',NULL,NULL,NULL),
('bb30489c1e1352fba94d1bfa245c1b4a','system','system','sys_dictionary','Version','0','sys_dictionary_sys_scope_version','2026-06-13 19:07:02','2026-06-13 19:07:02',NULL,NULL,NULL),
('bc26d1a3b539516081e517f24df9cdb1','system','system','sys_dictionary','Updated by','0','sys_dictionary_core_company_sys_updated_by','2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL),
('beeab6a0d2e95e899988cc0035cd1b8b','system','system','sys_dictionary','read_roles','0','sys_dictionary_beeab6a0d2e95e899988cc0035cd1b8b','2025-08-28 17:10:13','2025-08-28 17:10:13','global',NULL,NULL),
('c0c3858c17e95b56b7c3aa3d923340c6','system','system','sys_db_object','Sys User','0','sys_db_object_c0c3858c17e95b56b7c3aa3d923340c6','2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL),
('c4e5bad19ed859ed96cc90f244844a9e','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_choice_sys_created_by','2026-06-20 12:23:56','2026-06-20 12:23:56',NULL,NULL,NULL),
('c4f93f48f398501d9d659e9825a6f330','system','system','sys_dictionary','test','0','sys_dictionary_test','2026-04-01 03:55:16','2026-06-18 21:05:47','global','','1fa3d820f50003100a22c0b3dfa15103'),
('c568415874fb544f9f3281ebbd2552c1','system','system','sys_dictionary','filter','0','sys_dictionary_c568415874fb544f9f3281ebbd2552c1','2025-08-27 20:29:01','2025-08-27 20:29:01','global',NULL,NULL),
('c7e5747f6c145bb89056eba90fa78d00','system','system','sys_dictionary','Sys ID','0','sys_dictionary_test_sys_id','2026-06-18 21:05:47','2026-06-18 21:05:47',NULL,NULL,NULL),
('c8e05b2162765f6d840e7ebafa5a2701','system','system','sys_dictionary','Created','0','sys_dictionary_sys_choice_sys_created_on','2026-06-20 12:23:56','2026-06-20 12:23:56','global',NULL,NULL),
('c9174019000b56e8ba50df358da29db0','system','system','sys_dictionary','hint','0','sys_dictionary_c9174019000b56e8ba50df358da29db0','2025-08-27 20:21:59','2025-08-27 20:21:59','global',NULL,NULL),
('c926730b5f5b5adca9c5cfaf5950fd54','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_app_application_sys_updated_by','2026-06-20 16:12:29','2026-06-20 16:12:29',NULL,NULL,NULL),
('cac6ce0f1689569ea35ef0f0fd2868c7','system','system','sys_dictionary','sys_app_module','0','sys_dictionary_sys_app_module','2025-08-27 18:09:45','2025-08-27 18:09:45','global',NULL,NULL),
('cbcd0943c5e1549ea9f8118bd1090bff','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_package_sys_updated_on','2026-06-13 19:01:49','2026-06-13 19:01:49','global',NULL,NULL),
('cdf972559e93513e8cedf9aec43ae85a','system','system','sys_dictionary','Sys ID','0','sys_dictionary_cmn_location_sys_id','2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL),
('cf546cc809f850a2ac44e5b85c5229b8','system','system','sys_dictionary','Updates','0','sys_dictionary_cmn_location_sys_mod_count','2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL),
('cfef0bd420c15127ad8070953b9d76ab','system','system','sys_dictionary','Inactive','0','sys_dictionary_sys_choice_inactive','2026-06-20 12:57:05','2026-06-20 12:57:05',NULL,NULL,NULL),
('d25c51f9a0435ec482e9827017c4aa59','system','system','sys_dictionary','Active','0','sys_dictionary_sys_package_active','2026-06-13 19:04:54','2026-06-13 19:04:54',NULL,NULL,NULL),
('d3a2e6e7c1bd504d828fb929e9bafc0d','system','system','sys_dictionary','Updated','0','sys_dictionary_core_company_sys_updated_on','2026-06-20 15:38:44','2026-06-20 15:38:44','global',NULL,NULL),
('d56500e3b65e56718012a54f75d3e5b5','system','system','sys_dictionary','name','0','sys_dictionary_d56500e3b65e56718012a54f75d3e5b5','2025-08-28 17:02:34','2025-08-28 17:02:34','global',NULL,NULL),
('d5c994a9dd8151a8ad8b89588b4b6dbb','system','system','sys_dictionary','sys_db_object','0','sys_dictionary_d5c994a9dd8151a8ad8b89588b4b6dbb','2025-08-28 18:16:27','2025-08-28 18:16:27','global',NULL,NULL),
('d6f7576b89f7574fb59a0432b8993984','system','system','sys_dictionary','Last name','0','sys_dictionary_sys_user_last_name','2026-06-20 15:25:22','2026-06-20 15:25:22',NULL,NULL,NULL),
('d88218c2d8885fdda54ba5e9a7bdcc5b','system','system','sys_dictionary','sys_app_application','0','sys_dictionary_sys_app_application','2025-08-26 11:39:55','2025-08-27 16:49:27','global',NULL,NULL),
('d97dc82950885a8e95bbee21720fbe76','system','system','sys_dictionary','Created','0','sys_dictionary_sys_user_preference_sys_created_on','2026-06-13 16:44:13','2026-06-13 16:44:13','global',NULL,NULL),
('d99f7fc3fbe8529ba938f942c77d688a','system','system','sys_dictionary','Name','0','sys_dictionary_test_name','2026-06-18 21:31:58','2026-06-18 21:31:58',NULL,NULL,NULL),
('db04c23d66e55069b7055511062d72db','system','system','sys_dictionary','Updated by','0','sys_dictionary_cmn_department_sys_updated_by','2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL),
('db67136f346b5ff7a90c524408b55a12','system','system','sys_dictionary','sys_package','0','sys_dictionary_sys_package','2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL),
('dbf79411f7fb5d76982d23c85337f5d3','system','system','sys_dictionary','Updates','0','sys_dictionary_cmn_department_sys_mod_count','2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL),
('dd4a6f47521f547cba07a9d7d5a9eb94','system','system','sys_dictionary','Extensible','0','sys_dictionary_sys_db_object_is_extendable','2026-06-20 13:35:16','2026-06-20 13:35:16',NULL,NULL,NULL),
('de6891ca95565e06a8053c66a8ec2425','system','system','sys_dictionary','Protection policy','0','sys_dictionary_sys_ui_page_sys_policy','2026-06-20 13:18:58','2026-06-20 13:18:58','global',NULL,NULL),
('de72b22ad61653ab93c5a83032cdcb40','system','system','sys_dictionary','order','0','sys_dictionary_de72b22ad61653ab93c5a83032cdcb40','2025-08-27 20:16:39','2025-08-27 20:16:39','global',NULL,NULL),
('e35ca9039bd950c8a717b622dba9dbd3','system','system','sys_db_object','Sys Package','0','sys_db_object_e35ca9039bd950c8a717b622dba9dbd3','2026-06-13 19:01:49','2026-06-13 19:01:49',NULL,NULL,NULL),
('e593c51e74c85bfdb224b2d3cc1a535e','system','system','sys_dictionary','category','0','sys_dictionary_e593c51e74c85bfdb224b2d3cc1a535e','2025-08-27 19:37:08','2025-08-27 19:37:08','global',NULL,NULL),
('e5f0af6ba4975fb399642f61343d0bf6','system','system','sys_db_object','Cmn Location','0','sys_db_object_e5f0af6ba4975fb399642f61343d0bf6','2026-06-20 15:45:02','2026-06-20 15:45:02',NULL,NULL,NULL),
('e61149b881355ebf95f6c3c03e66fb06','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_user_sys_updated_by','2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL),
('e6df3f0c71c0564b933be5cc400b5e08','system','system','sys_dictionary','Length','0','sys_dictionary_sys_glide_object_scalar_length','2026-06-18 21:52:17','2026-06-18 21:52:17',NULL,NULL,NULL),
('e72f6b30be8b5cf2a5a97b4f24e774f3','system','system','sys_dictionary','core_company','0','sys_dictionary_core_company','2026-06-20 15:38:44','2026-06-20 15:38:44',NULL,NULL,NULL),
('e860ef3cd5e959758f4f13b580507a4f','system','system','sys_dictionary','Street','0','sys_dictionary_sys_user_street','2026-06-20 16:07:00','2026-06-20 16:07:00',NULL,NULL,NULL),
('ea3a9531b3ea5377ac7668e37493e418','system','system','sys_db_object','sys_glide_object','0',NULL,'2024-03-26 21:36:09','2024-03-26 21:36:09',NULL,NULL,NULL),
('ea3dd83f46965de1bd5635d5bcbbe6e9','system','system','sys_dictionary','Created','0','sys_dictionary_cmn_location_sys_created_on','2026-06-20 15:45:02','2026-06-20 15:45:02','global',NULL,NULL),
('eacf93cef3f9523fa362d920281fdf74','system','system','sys_dictionary','Locked out','0','sys_dictionary_sys_user_locked_out','2026-06-20 15:30:02','2026-06-20 15:30:02',NULL,NULL,NULL),
('eb349713c7ce53c2b0d611fb97a83b4a','system','system','sys_dictionary','sys_user','0','sys_dictionary_sys_user','2026-06-13 16:46:35','2026-06-13 16:46:35',NULL,NULL,NULL),
('eb9bc55adf325977970e8588ed6575b1','system','system','sys_dictionary','sys_updated_by','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('ef63e4c95f2159d9a3827d05eb2cdd5d','system','system','sys_dictionary','Created','0','sys_dictionary_core_company_sys_created_on','2026-06-20 15:38:44','2026-06-20 15:38:44','global',NULL,NULL),
('efa8c72ec84355e891012eb61f8f9ee5','system','system','sys_dictionary','sys_id','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('f291dedd024a5a6592ac8876efb03d70','system','system','sys_dictionary','choices','0','sys_dictionary_f291dedd024a5a6592ac8876efb03d70','2025-08-28 17:04:34','2025-08-28 17:04:34','global',NULL,NULL),
('f2b436041cb8583b921bd849aaf002e1','system','system','sys_dictionary','write_roles','0','sys_dictionary_f2b436041cb8583b921bd849aaf002e1','2025-08-28 17:11:28','2025-08-28 17:11:28','global',NULL,NULL),
('f3cc40b9b6d95ab2a8bb0c9de7642346','system','system','sys_dictionary','sys_created_on','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('f4004854b98f5ea6a0b2754264a6227c','system','system','sys_dictionary','Visible','0','sys_dictionary_sys_glide_object_visible','2026-06-18 21:48:17','2026-06-18 21:48:17',NULL,NULL,NULL),
('f5458f95ef9055e0813888601710fd91','system','system','sys_dictionary','cmn_department','0','sys_dictionary_cmn_department','2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL),
('f6b3b2b05d1951dcbc3404a72756dfda','system','system','sys_dictionary','Sys ID','0','sys_dictionary_cmn_department_sys_id','2026-06-20 15:50:29','2026-06-20 15:50:29',NULL,NULL,NULL),
('f74fba266c9050089312046e3b08f97c','system','system','sys_dictionary','Web service access only','0','sys_dictionary_sys_user_web_service_access_only','2026-06-20 16:04:14','2026-06-20 16:04:14',NULL,NULL,NULL),
('f9d47bd124d05fc499c6941849422b82','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_user_sys_updated_by','2026-06-20 15:06:24','2026-06-20 15:06:24',NULL,NULL,NULL),
('fc5a5954074d53b58be2e6ecaff806d0','system','system','sys_dictionary','Business phone','0','sys_dictionary_sys_user_phone','2026-06-20 15:54:55','2026-06-20 15:54:55',NULL,NULL,NULL),
('fe184c6a54e4596da1054b027b56b83e','system','system','sys_dictionary','value','0','sys_dictionary_fe184c6a54e4596da1054b027b56b83e','2025-08-28 17:07:19','2025-08-28 17:07:19','global',NULL,NULL),
('fe78c815242c5bc0ac401dd0c5fc712d','system','system','sys_db_object','sys_metadata','0',NULL,'2024-03-26 21:34:30','2024-03-26 21:34:30',NULL,NULL,NULL),
('fea948c6574252e38c0c7f0c46cd6815','system','system','sys_dictionary','Element','0','sys_dictionary_sys_choice_element','2026-06-20 12:51:13','2026-06-20 12:51:13',NULL,NULL,NULL),
('ff2bd1872c4f5084a9252a5aebfd6f79','system','system','sys_dictionary','Department','0','sys_dictionary_sys_user_department','2026-06-20 15:51:09','2026-06-20 15:51:09',NULL,NULL,NULL),
('ffb4726824a95caa9f92063fd4379c82','system','system','sys_dictionary','sys_class_name','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_metadata` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_package`
--

DROP TABLE IF EXISTS `sys_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_package` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `source` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `version` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_package`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_package` WRITE;
/*!40000 ALTER TABLE `sys_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_package` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_properties`
--

DROP TABLE IF EXISTS `sys_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_properties` (
  `sys_id` char(36) NOT NULL,
  `sys_created_by` varchar(40) NOT NULL,
  `sys_updated_by` varchar(40) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `sys_name` varchar(255) DEFAULT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_scope` varchar(32) DEFAULT NULL,
  `sys_update_name` varchar(255) DEFAULT NULL,
  `sys_policy` varchar(40) DEFAULT NULL,
  `sys_package` varchar(32) DEFAULT NULL,
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '0',
  `description` varchar(512) DEFAULT '0',
  `choices` varchar(512) DEFAULT '0',
  `type` varchar(40) DEFAULT '0',
  `value` varchar(4000) DEFAULT '0',
  `ignore_cache` tinyint(1) DEFAULT 0,
  `is_private` tinyint(1) DEFAULT 0,
  `read_roles` varchar(255) DEFAULT '0',
  `write_roles` varchar(255) DEFAULT '0',
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_properties`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_properties` WRITE;
/*!40000 ALTER TABLE `sys_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_properties` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_scope`
--

DROP TABLE IF EXISTS `sys_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_scope` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `version` text DEFAULT NULL,
  `source` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_scope`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_scope` WRITE;
/*!40000 ALTER TABLE `sys_scope` DISABLE KEYS */;
INSERT INTO `sys_scope` VALUES
('20c18993964d5d5b95b92b6e500adf3a','system','system','2026-06-13 19:39:20','2026-06-13 19:39:20','0','sys_scope',NULL,'global','Global',1),
('d8ba557d484a577483c3288f87f4a5d0','system','system','2026-06-20 12:06:12','2026-06-20 12:06:12','0','sys_scope',NULL,NULL,'Global',1);
/*!40000 ALTER TABLE `sys_scope` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_ui_page`
--

DROP TABLE IF EXISTS `sys_ui_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_ui_page` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `script` text DEFAULT NULL,
  `script_compiled` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `sys_package` varchar(32) DEFAULT '0',
  `sys_scope` varchar(32) DEFAULT '0',
  `sys_name` text DEFAULT NULL,
  `sys_created_on` datetime DEFAULT '0000-00-00 00:00:00',
  `sys_updated_on` datetime DEFAULT '0000-00-00 00:00:00',
  `sys_update_name` text DEFAULT NULL,
  `sys_created_by` text DEFAULT NULL,
  `sys_updated_by` text DEFAULT NULL,
  `sys_policy` text DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ui_page`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_ui_page` WRITE;
/*!40000 ALTER TABLE `sys_ui_page` DISABLE KEYS */;
INSERT INTO `sys_ui_page` VALUES
('7a82e80ff64d5e7a97150b04aa2d2b8b','sys_ui_page','import React, { useState } from \"react\";\n\nexport default function XmlUploader() {\n  const [file, setFile] = useState(null);\n  const [loading, setLoading] = useState(false);\n  const [result, setResult] = useState(null);\n  const [error, setError] = useState(\"\");\n\n  const handleFileChange = (event) => {\n    const selectedFile = event.target.files?.[0] || null;\n    setFile(selectedFile);\n    setResult(null);\n    setError(\"\");\n  };\n\n  const handleUpload = async () => {\n    if (!file) {\n      setError(\"Please select an XML file first.\");\n      return;\n    }\n\n    try {\n      setLoading(true);\n      setError(\"\");\n      setResult(null);\n\n      const formData = new FormData();\n      formData.append(\"file\", file);\n\n      const response = await fetch(\"/api/table/import/xml\", {\n        method: \"POST\",\n        body: formData,\n        headers: {\n          Accept: \"application/json\",\n        },\n      });\nconsole.log(response);\n      const text = await response.text();\nlet data;\ntry {\n  data = JSON.parse(text);\n} catch {\n  throw new Error(\"Server returned non-JSON: \" + text.substring(0, 300));\n}\n\n      if (!response.ok) {\n        throw new Error(data?.error || data?.message || \"XML import failed.\");\n      }\n\n      setResult(data);\n    } catch (e) {\n      setError(e.message || \"Unexpected error during upload.\");\n    } finally {\n      setLoading(false);\n    }\n  };\n\n  return (\n    <div\n      style={{\n        maxWidth: \"700px\",\n        margin: \"40px auto\",\n        padding: \"24px\",\n        border: \"1px solid #ddd\",\n        borderRadius: \"12px\",\n        fontFamily: \"Arial, sans-serif\",\n        background: \"#fff\",\n      }}\n    >\n      <h2 style={{ marginTop: 0 }}>XML Import</h2>\n\n      <p style={{ color: \"#555\" }}>\n        Select an XML file and upload it to the server import endpoint.\n      </p>\n\n      <input\n        type=\"file\"\n        accept=\".xml,text/xml,application/xml\"\n        onChange={handleFileChange}\n        style={{ marginTop: \"12px\" }}\n      />\n\n      {file && (\n        <p style={{ marginTop: \"12px\", color: \"#333\" }}>\n          Selected file: <strong>{file.name}</strong>\n        </p>\n      )}\n\n      <button\n        type=\"button\"\n        onClick={handleUpload}\n        disabled={loading}\n        style={{\n          marginTop: \"16px\",\n          padding: \"10px 16px\",\n          border: \"none\",\n          borderRadius: \"8px\",\n          background: loading ? \"#999\" : \"#1976d2\",\n          color: \"#fff\",\n          cursor: loading ? \"not-allowed\" : \"pointer\",\n        }}\n      >\n        {loading ? \"Uploading...\" : \"Upload XML\"}\n      </button>\n\n      {error && (\n        <div\n          style={{\n            marginTop: \"16px\",\n            padding: \"12px\",\n            borderRadius: \"8px\",\n            background: \"#fdecea\",\n            color: \"#b71c1c\",\n          }}\n        >\n          {error}\n        </div>\n      )}\n\n      {result && (\n        <div\n          style={{\n            marginTop: \"16px\",\n            padding: \"12px\",\n            borderRadius: \"8px\",\n            background: \"#e8f5e9\",\n            color: \"#1b5e20\",\n          }}\n        >\n          <div style={{ marginBottom: \"8px\" }}>\n            Upload completed successfully.\n          </div>\n          <pre\n            style={{\n              margin: 0,\n              whiteSpace: \"pre-wrap\",\n              wordBreak: \"break-word\",\n              fontSize: \"13px\",\n            }}\n          >\n            {JSON.stringify(result, null, 2)}\n          </pre>\n        </div>\n      )}\n    </div>\n  );\n}','\"use strict\";\n\nfunction _typeof(o) { \"@babel/helpers - typeof\"; return _typeof = \"function\" == typeof Symbol && \"symbol\" == typeof Symbol.iterator ? function (o) { return typeof o; } : function (o) { return o && \"function\" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype ? \"symbol\" : typeof o; }, _typeof(o); }\nObject.defineProperty(exports, \"__esModule\", {\n  value: true\n});\nexports.default = XmlUploader;\nvar _react = _interopRequireWildcard(require(\"react\"));\nfunction _interopRequireWildcard(e, t) { if (\"function\" == typeof WeakMap) var r = new WeakMap(), n = new WeakMap(); return (_interopRequireWildcard = function _interopRequireWildcard(e, t) { if (!t && e && e.__esModule) return e; var o, i, f = { __proto__: null, default: e }; if (null === e || \"object\" != _typeof(e) && \"function\" != typeof e) return f; if (o = t ? n : r) { if (o.has(e)) return o.get(e); o.set(e, f); } for (var _t3 in e) \"default\" !== _t3 && {}.hasOwnProperty.call(e, _t3) && ((i = (o = Object.defineProperty) && Object.getOwnPropertyDescriptor(e, _t3)) && (i.get || i.set) ? o(f, _t3, i) : f[_t3] = e[_t3]); return f; })(e, t); }\nfunction _regenerator() { /*! regenerator-runtime -- Copyright (c) 2014-present, Facebook, Inc. -- license (MIT): https://github.com/babel/babel/blob/main/packages/babel-helpers/LICENSE */ var e, t, r = \"function\" == typeof Symbol ? Symbol : {}, n = r.iterator || \"@@iterator\", o = r.toStringTag || \"@@toStringTag\"; function i(r, n, o, i) { var c = n && n.prototype instanceof Generator ? n : Generator, u = Object.create(c.prototype); return _regeneratorDefine2(u, \"_invoke\", function (r, n, o) { var i, c, u, f = 0, p = o || [], y = !1, G = { p: 0, n: 0, v: e, a: d, f: d.bind(e, 4), d: function d(t, r) { return i = t, c = 0, u = e, G.n = r, a; } }; function d(r, n) { for (c = r, u = n, t = 0; !y && f && !o && t < p.length; t++) { var o, i = p[t], d = G.p, l = i[2]; r > 3 ? (o = l === n) && (u = i[(c = i[4]) ? 5 : (c = 3, 3)], i[4] = i[5] = e) : i[0] <= d && ((o = r < 2 && d < i[1]) ? (c = 0, G.v = n, G.n = i[1]) : d < l && (o = r < 3 || i[0] > n || n > l) && (i[4] = r, i[5] = n, G.n = l, c = 0)); } if (o || r > 1) return a; throw y = !0, n; } return function (o, p, l) { if (f > 1) throw TypeError(\"Generator is already running\"); for (y && 1 === p && d(p, l), c = p, u = l; (t = c < 2 ? e : u) || !y;) { i || (c ? c < 3 ? (c > 1 && (G.n = -1), d(c, u)) : G.n = u : G.v = u); try { if (f = 2, i) { if (c || (o = \"next\"), t = i[o]) { if (!(t = t.call(i, u))) throw TypeError(\"iterator result is not an object\"); if (!t.done) return t; u = t.value, c < 2 && (c = 0); } else 1 === c && (t = i.return) && t.call(i), c < 2 && (u = TypeError(\"The iterator does not provide a \'\" + o + \"\' method\"), c = 1); i = e; } else if ((t = (y = G.n < 0) ? u : r.call(n, G)) !== a) break; } catch (t) { i = e, c = 1, u = t; } finally { f = 1; } } return { value: t, done: y }; }; }(r, o, i), !0), u; } var a = {}; function Generator() {} function GeneratorFunction() {} function GeneratorFunctionPrototype() {} t = Object.getPrototypeOf; var c = [][n] ? t(t([][n]())) : (_regeneratorDefine2(t = {}, n, function () { return this; }), t), u = GeneratorFunctionPrototype.prototype = Generator.prototype = Object.create(c); function f(e) { return Object.setPrototypeOf ? Object.setPrototypeOf(e, GeneratorFunctionPrototype) : (e.__proto__ = GeneratorFunctionPrototype, _regeneratorDefine2(e, o, \"GeneratorFunction\")), e.prototype = Object.create(u), e; } return GeneratorFunction.prototype = GeneratorFunctionPrototype, _regeneratorDefine2(u, \"constructor\", GeneratorFunctionPrototype), _regeneratorDefine2(GeneratorFunctionPrototype, \"constructor\", GeneratorFunction), GeneratorFunction.displayName = \"GeneratorFunction\", _regeneratorDefine2(GeneratorFunctionPrototype, o, \"GeneratorFunction\"), _regeneratorDefine2(u), _regeneratorDefine2(u, o, \"Generator\"), _regeneratorDefine2(u, n, function () { return this; }), _regeneratorDefine2(u, \"toString\", function () { return \"[object Generator]\"; }), (_regenerator = function _regenerator() { return { w: i, m: f }; })(); }\nfunction _regeneratorDefine2(e, r, n, t) { var i = Object.defineProperty; try { i({}, \"\", {}); } catch (e) { i = 0; } _regeneratorDefine2 = function _regeneratorDefine(e, r, n, t) { function o(r, n) { _regeneratorDefine2(e, r, function (e) { return this._invoke(r, n, e); }); } r ? i ? i(e, r, { value: n, enumerable: !t, configurable: !t, writable: !t }) : e[r] = n : (o(\"next\", 0), o(\"throw\", 1), o(\"return\", 2)); }, _regeneratorDefine2(e, r, n, t); }\nfunction asyncGeneratorStep(n, t, e, r, o, a, c) { try { var i = n[a](c), u = i.value; } catch (n) { return void e(n); } i.done ? t(u) : Promise.resolve(u).then(r, o); }\nfunction _asyncToGenerator(n) { return function () { var t = this, e = arguments; return new Promise(function (r, o) { var a = n.apply(t, e); function _next(n) { asyncGeneratorStep(a, r, o, _next, _throw, \"next\", n); } function _throw(n) { asyncGeneratorStep(a, r, o, _next, _throw, \"throw\", n); } _next(void 0); }); }; }\nfunction _slicedToArray(r, e) { return _arrayWithHoles(r) || _iterableToArrayLimit(r, e) || _unsupportedIterableToArray(r, e) || _nonIterableRest(); }\nfunction _nonIterableRest() { throw new TypeError(\"Invalid attempt to destructure non-iterable instance.\\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.\"); }\nfunction _unsupportedIterableToArray(r, a) { if (r) { if (\"string\" == typeof r) return _arrayLikeToArray(r, a); var t = {}.toString.call(r).slice(8, -1); return \"Object\" === t && r.constructor && (t = r.constructor.name), \"Map\" === t || \"Set\" === t ? Array.from(r) : \"Arguments\" === t || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(t) ? _arrayLikeToArray(r, a) : void 0; } }\nfunction _arrayLikeToArray(r, a) { (null == a || a > r.length) && (a = r.length); for (var e = 0, n = Array(a); e < a; e++) n[e] = r[e]; return n; }\nfunction _iterableToArrayLimit(r, l) { var t = null == r ? null : \"undefined\" != typeof Symbol && r[Symbol.iterator] || r[\"@@iterator\"]; if (null != t) { var e, n, i, u, a = [], f = !0, o = !1; try { if (i = (t = t.call(r)).next, 0 === l) { if (Object(t) !== t) return; f = !1; } else for (; !(f = (e = i.call(t)).done) && (a.push(e.value), a.length !== l); f = !0); } catch (r) { o = !0, n = r; } finally { try { if (!f && null != t.return && (u = t.return(), Object(u) !== u)) return; } finally { if (o) throw n; } } return a; } }\nfunction _arrayWithHoles(r) { if (Array.isArray(r)) return r; }\nfunction XmlUploader() {\n  var _useState = (0, _react.useState)(null),\n    _useState2 = _slicedToArray(_useState, 2),\n    file = _useState2[0],\n    setFile = _useState2[1];\n  var _useState3 = (0, _react.useState)(false),\n    _useState4 = _slicedToArray(_useState3, 2),\n    loading = _useState4[0],\n    setLoading = _useState4[1];\n  var _useState5 = (0, _react.useState)(null),\n    _useState6 = _slicedToArray(_useState5, 2),\n    result = _useState6[0],\n    setResult = _useState6[1];\n  var _useState7 = (0, _react.useState)(\"\"),\n    _useState8 = _slicedToArray(_useState7, 2),\n    error = _useState8[0],\n    setError = _useState8[1];\n  var handleFileChange = function handleFileChange(event) {\n    var _event$target$files;\n    var selectedFile = ((_event$target$files = event.target.files) === null || _event$target$files === void 0 ? void 0 : _event$target$files[0]) || null;\n    setFile(selectedFile);\n    setResult(null);\n    setError(\"\");\n  };\n  var handleUpload = /*#__PURE__*/function () {\n    var _ref = _asyncToGenerator(/*#__PURE__*/_regenerator().m(function _callee() {\n      var formData, response, text, data, _data, _data2, _t, _t2;\n      return _regenerator().w(function (_context) {\n        while (1) switch (_context.p = _context.n) {\n          case 0:\n            if (file) {\n              _context.n = 1;\n              break;\n            }\n            setError(\"Please select an XML file first.\");\n            return _context.a(2);\n          case 1:\n            _context.p = 1;\n            setLoading(true);\n            setError(\"\");\n            setResult(null);\n            formData = new FormData();\n            formData.append(\"file\", file);\n            _context.n = 2;\n            return fetch(\"/api/table/import/xml\", {\n              method: \"POST\",\n              body: formData,\n              headers: {\n                Accept: \"application/json\"\n              }\n            });\n          case 2:\n            response = _context.v;\n            console.log(response);\n            _context.n = 3;\n            return response.text();\n          case 3:\n            text = _context.v;\n            _context.p = 4;\n            data = JSON.parse(text);\n            _context.n = 6;\n            break;\n          case 5:\n            _context.p = 5;\n            _t = _context.v;\n            throw new Error(\"Server returned non-JSON: \" + text.substring(0, 300));\n          case 6:\n            if (response.ok) {\n              _context.n = 7;\n              break;\n            }\n            throw new Error(((_data = data) === null || _data === void 0 ? void 0 : _data.error) || ((_data2 = data) === null || _data2 === void 0 ? void 0 : _data2.message) || \"XML import failed.\");\n          case 7:\n            setResult(data);\n            _context.n = 9;\n            break;\n          case 8:\n            _context.p = 8;\n            _t2 = _context.v;\n            setError(_t2.message || \"Unexpected error during upload.\");\n          case 9:\n            _context.p = 9;\n            setLoading(false);\n            return _context.f(9);\n          case 10:\n            return _context.a(2);\n        }\n      }, _callee, null, [[4, 5], [1, 8, 9, 10]]);\n    }));\n    return function handleUpload() {\n      return _ref.apply(this, arguments);\n    };\n  }();\n  return /*#__PURE__*/_react.default.createElement(\"div\", {\n    style: {\n      maxWidth: \"700px\",\n      margin: \"40px auto\",\n      padding: \"24px\",\n      border: \"1px solid #ddd\",\n      borderRadius: \"12px\",\n      fontFamily: \"Arial, sans-serif\",\n      background: \"#fff\"\n    }\n  }, /*#__PURE__*/_react.default.createElement(\"h2\", {\n    style: {\n      marginTop: 0\n    }\n  }, \"XML Import\"), /*#__PURE__*/_react.default.createElement(\"p\", {\n    style: {\n      color: \"#555\"\n    }\n  }, \"Select an XML file and upload it to the server import endpoint.\"), /*#__PURE__*/_react.default.createElement(\"input\", {\n    type: \"file\",\n    accept: \".xml,text/xml,application/xml\",\n    onChange: handleFileChange,\n    style: {\n      marginTop: \"12px\"\n    }\n  }), file && /*#__PURE__*/_react.default.createElement(\"p\", {\n    style: {\n      marginTop: \"12px\",\n      color: \"#333\"\n    }\n  }, \"Selected file: \", /*#__PURE__*/_react.default.createElement(\"strong\", null, file.name)), /*#__PURE__*/_react.default.createElement(\"button\", {\n    type: \"button\",\n    onClick: handleUpload,\n    disabled: loading,\n    style: {\n      marginTop: \"16px\",\n      padding: \"10px 16px\",\n      border: \"none\",\n      borderRadius: \"8px\",\n      background: loading ? \"#999\" : \"#1976d2\",\n      color: \"#fff\",\n      cursor: loading ? \"not-allowed\" : \"pointer\"\n    }\n  }, loading ? \"Uploading...\" : \"Upload XML\"), error && /*#__PURE__*/_react.default.createElement(\"div\", {\n    style: {\n      marginTop: \"16px\",\n      padding: \"12px\",\n      borderRadius: \"8px\",\n      background: \"#fdecea\",\n      color: \"#b71c1c\"\n    }\n  }, error), result && /*#__PURE__*/_react.default.createElement(\"div\", {\n    style: {\n      marginTop: \"16px\",\n      padding: \"12px\",\n      borderRadius: \"8px\",\n      background: \"#e8f5e9\",\n      color: \"#1b5e20\"\n    }\n  }, /*#__PURE__*/_react.default.createElement(\"div\", {\n    style: {\n      marginBottom: \"8px\"\n    }\n  }, \"Upload completed successfully.\"), /*#__PURE__*/_react.default.createElement(\"pre\", {\n    style: {\n      margin: 0,\n      whiteSpace: \"pre-wrap\",\n      wordBreak: \"break-word\",\n      fontSize: \"13px\"\n    }\n  }, JSON.stringify(result, null, 2))));\n}','import xml','$importxml',NULL,'0','0',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_ui_page` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `user_name` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `locked_out` tinyint(1) DEFAULT 0,
  `indentity_type` varchar(32) DEFAULT '0',
  `manager` varchar(32) DEFAULT '0',
  `company` varchar(32) DEFAULT '0',
  `email` varchar(32) DEFAULT '0',
  `location` varchar(32) DEFAULT '0',
  `department` varchar(32) DEFAULT '0',
  `country` text DEFAULT NULL,
  `time_format` text DEFAULT NULL,
  `time_zone` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `enable_mutifactor_auth` tinyint(1) DEFAULT 0,
  `web_service_access_only` tinyint(1) DEFAULT 0,
  `city` text DEFAULT NULL,
  `street` text DEFAULT NULL,
  `mobile_phone` text DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sys_user_preference`
--

DROP TABLE IF EXISTS `sys_user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_preference` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `user` varchar(32) DEFAULT '0',
  `description` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `system` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_preference`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `sys_user_preference` WRITE;
/*!40000 ALTER TABLE `sys_user_preference` DISABLE KEYS */;
INSERT INTO `sys_user_preference` VALUES
('0c70e9dc8fad5adb80c6fdd0610e1973','system','system','2026-06-20 13:01:08','2026-06-20 13:01:08','0','sys_user_preference','0',NULL,'list.columns.sys_db_object',NULL,'{\"columns\":[\"sys_name\",\"label\",\"name\",\"sys_id\",\"super_class\",\"sys_created_on\",\"sys_updated_on\",\"sys_class_name\"]}',1),
('59a5e88c6abe57969d07c25fd63d240b','system','system','2026-06-20 13:02:05','2026-06-20 13:02:05','0','sys_user_preference','0',NULL,'list.columns.sys_user_preference',NULL,'{\"columns\":[\"name\",\"type\",\"value\",\"description\",\"system\",\"user\",\"sys_id\",\"sys_updated_on\"]}',1),
('6c011ad9199d585aafaed73491b9d840','system','system','2026-06-20 16:39:23','2026-06-20 16:39:23','0','sys_user_preference','0',NULL,'list.columns.sys_app_module',NULL,'{\"columns\":[\"title\",\"name\",\"link_type\",\"application\",\"active\",\"order\",\"sys_id\",\"sys_name\"]}',1),
('6c4bb2f6fd5352efa2104964f30833f5','system','system','2026-06-13 17:05:57','2026-06-13 17:05:57','0','sys_user_preference','0',NULL,'list.columns.sys_dictionary',NULL,'{\"columns\":[\"sys_name\",\"name\",\"column_label\",\"element\",\"active\",\"mandatory\",\"reference\",\"sys_id\",\"internal_type\",\"default_value\",\"max_length\",\"display\"]}',0),
('759b1dddcb675404af212dab0b5b7b26','system','system','2026-06-13 18:53:55','2026-06-13 18:54:07','0','sys_user_preference','0',NULL,'list.columns.sys_metadata',NULL,'{\"columns\":[\"sys_id\",\"sys_name\",\"sys_update_name\",\"sys_created_on\",\"sys_updated_on\"]}',1),
('8a1e0f88d4735a1daf66120337da8a89','system','system','2026-06-18 21:36:45','2026-06-18 21:37:06','0','sys_user_preference','0',NULL,'list.columns.sys_glide_object',NULL,'{\"columns\":[\"sys_name\",\"name\",\"label\",\"sys_mod_count\",\"visible\",\"use_original_value\",\"scalar_length\",\"scalar_type\",\"sys_id\",\"sys_created_on\",\"sys_updated_on\"]}',1),
('f2ce3ec7a6e8515790c08d456f980d4f','system','system','2026-06-13 17:14:06','2026-06-13 19:07:26','0','sys_user_preference','0',NULL,'list.columns.sys_dictionary',NULL,'{\"columns\":[\"sys_name\",\"name\",\"active\",\"column_label\",\"element\",\"display\",\"internal_type\",\"reference\",\"max_length\",\"default_value\",\"sys_created_on\",\"sys_id\"]}',1),
('f9cd3ae718195f6b853aceac25cf325e','system','system','2026-06-20 13:29:43','2026-06-20 13:29:43','0','sys_user_preference','0',NULL,'list.columns.sys_ui_page',NULL,'{\"columns\":[\"sys_name\",\"name\",\"description\",\"category\",\"sys_id\",\"sys_created_on\",\"sys_updated_on\",\"sys_class_name\"]}',1);
/*!40000 ALTER TABLE `sys_user_preference` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `sys_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sys_created_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_updated_by` varchar(40) NOT NULL DEFAULT 'system',
  `sys_created_on` datetime NOT NULL,
  `sys_updated_on` datetime NOT NULL,
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_class_name` varchar(80) NOT NULL,
  `test_ref` varchar(32) DEFAULT '0',
  `name` text DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES
('222a9d66dd0e5ff6a341e5e9da8754c5','system','system','2026-06-18 21:31:12','2026-06-18 21:32:21','0','test','0','test1'),
('697ceae7e52d59d688cf1f962f4a53c7','system','system','2026-06-18 21:31:26','2026-06-18 21:32:09','0','test','222a9d66dd0e5ff6a341e5e9da8754c5','test2');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-06-20 16:41:05
