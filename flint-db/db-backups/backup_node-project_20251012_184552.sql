/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: node-project
-- ------------------------------------------------------
-- Server version	11.8.3-MariaDB

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

LOCK TABLES `sys_app_application` WRITE;
/*!40000 ALTER TABLE `sys_app_application` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sys_app_application` VALUES
('3f9ccbdfb32b5ac8b3729ccf165dff75','system','system','sys_app_application','System','0','global','sys_app_application_3f9ccbdfb32b5ac8b3729ccf165dff75',NULL,NULL,'2025-08-27 19:58:54','2025-08-27 20:24:06','System Definition',1,'','','','');
/*!40000 ALTER TABLE `sys_app_application` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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

LOCK TABLES `sys_app_module` WRITE;
/*!40000 ALTER TABLE `sys_app_module` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sys_app_module` VALUES
('171b13e11183541bacd2aa85225cd660','system','system','sys_app_module','System Property','0','global','sys_app_module_171b13e11183541bacd2aa85225cd660',NULL,NULL,'2025-08-28 16:51:08','2025-08-28 17:19:01','System Property','',200,'0',1,'0','list_of_records','sys_properties','0','0','0','0',0),
('51c90fec7468541f8b9caad643834c9e','system','system','sys_app_module','Classes - Fields','0',NULL,'sys_app_module_51c90fec7468541f8b9caad643834c9e',NULL,NULL,'2025-08-27 20:39:52','2025-08-27 20:39:52','Classes - Fields','0',80,'0',1,'0','list_of_records','sys_glide_object','0','0','0','0',0),
('5a60183a9077571f8960c4b2e5a6cd6d','system','system','sys_app_module','Tables','0','global','sys_app_module_5a60183a9077571f8960c4b2e5a6cd6d',NULL,NULL,'2025-08-27 20:32:48','2025-08-27 20:34:44','Tables','System Definition',10,'Create and manage tables',1,'0','list_of_records','sys_db_object','0','0','active=true','0',0),
('79558534c90c5d4f9c65071857b080d5','system','system','sys_app_module','Applications','0',NULL,'sys_app_module_79558534c90c5d4f9c65071857b080d5',NULL,NULL,'2025-09-21 09:43:13','2025-09-21 09:43:13','Applications','0',0,'0',1,'0','list_of_records','sys_scope','0','0','0','0',0),
('90b5c882261950d2a99203f7e1e53aa5','system','system','sys_app_module','Modules','0',NULL,'sys_app_module_90b5c882261950d2a99203f7e1e53aa5',NULL,NULL,'2025-09-21 09:39:28','2025-09-21 09:39:28','Modules','0',1,'0',1,'0','list_of_records','sys_app_module','0','0','0','0',0),
('9c1487ba5309541fb8fc1301c03c3e08','system','system','sys_app_module','Application Files','0','global','sys_app_module_9c1487ba5309541fb8fc1301c03c3e08',NULL,NULL,'2025-08-27 20:38:45','2025-08-27 20:38:45','Application Files','',320,'List all application file records',1,'0','list_of_records','sys_metadata','0','0','','0',0),
('ae3a2c5bce435f369d0eef3bcc63b2f7','system','system','sys_app_module','sys_app_module','0','global','sys_app_module_ae3a2c5bce435f369d0eef3bcc63b2f7',NULL,NULL,'2025-08-27 20:37:01','2025-08-28 12:22:26','Dictionary','System Definition',15,'A list of tables and columns; tables are specified by a having a Type of collection',1,'0','list_of_records','sys_dictionary','0','0','active=true','0',0),
('fe2467ce27925d11a920a8cb9bd69efc','system','system','sys_app_module','Packages','0',NULL,'sys_app_module_fe2467ce27925d11a920a8cb9bd69efc',NULL,NULL,'2025-09-21 09:42:43','2025-09-21 09:42:43','Packages','0',0,'0',1,'0','list_of_records','sys_package','0','0','0','0',0);
/*!40000 ALTER TABLE `sys_app_module` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_db_object`
--

LOCK TABLES `sys_db_object` WRITE;
/*!40000 ALTER TABLE `sys_db_object` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sys_db_object` VALUES
('0671f552394b5f8ea86ac8b65e656247','system','system','sys_db_object','Sys App Module','0','sys_db_object_0671f552394b5f8ea86ac8b65e656247','sys_app_module','Module','sys_metadata','2025-08-27 18:09:45','2025-08-27 18:09:45','global',NULL,NULL),
('1744788797415101b4ef71bd88240b9b','system','system','sys_db_object','Dictionary Entry','0','sys_db_object_1744788797415101b4ef71bd88240b9b','sys_dictionary','Dictionary Entry','sys_metadata','2024-03-26 21:35:17','2025-08-27 18:58:13','global',NULL,NULL),
('1c596175c155588f84623ed6663c397c','system','system','sys_db_object','Sys Properties','0','sys_db_object_1c596175c155588f84623ed6663c397c','sys_properties','System Property','sys_metadata','2025-08-28 16:54:21','2025-08-28 16:54:21','global',NULL,NULL),
('3601f78f982b5213836a1c7a7f5dcc8d','system','system','sys_db_object','Application Menu','0','sys_db_object_3601f78f982b5213836a1c7a7f5dcc8d','sys_app_application','Application Menu','sys_metadata','2025-08-26 11:39:55','2025-08-26 11:39:55','global',NULL,NULL),
('4ee7f131ccbf588194d609af71adc2c1','system','system','sys_db_object','Sys Package','0','sys_db_object_4ee7f131ccbf588194d609af71adc2c1','sys_package','Package',NULL,'2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL),
('8d937577030254e89e5e3a7e7f0a477b','system','system','sys_db_object','Test','0','sys_db_object_8d937577030254e89e5e3a7e7f0a477b','test','TEST',NULL,'2025-08-28 19:35:00','2025-08-28 19:35:26','global',NULL,NULL),
('964419cb15cd5062b2676569b7ba076d','system','system','sys_db_object','Table','0','sys_db_object_964419cb15cd5062b2676569b7ba076d','sys_db_object','Table','sys_metadata','2024-03-26 21:35:17','2025-08-27 18:58:32','global',NULL,NULL),
('a90c3cddc0ab5147bb05acd3f6bf6acb','system','system','sys_db_object','Sys Scope','0','sys_db_object_a90c3cddc0ab5147bb05acd3f6bf6acb','sys_scope','Application','sys_package','2025-10-02 22:58:38','2025-10-02 22:58:38',NULL,NULL,NULL),
('ea3a9531b3ea5377ac7668e37493e418','system','system','sys_db_object','Field class','0','sys_db_object_ea3a9531b3ea5377ac7668e37493e418','sys_glide_object','Field class','sys_metadata','2024-03-26 21:35:17','2025-08-27 18:58:41','global',NULL,NULL),
('fe78c815242c5bc0ac401dd0c5fc712d','system','system','sys_db_object','Application File','0','sys_db_object_fe78c815242c5bc0ac401dd0c5fc712d','sys_metadata','Application',NULL,'2024-03-26 21:35:17','2025-08-27 18:58:50','global',NULL,NULL);
/*!40000 ALTER TABLE `sys_db_object` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionary`
--

LOCK TABLES `sys_dictionary` WRITE;
/*!40000 ALTER TABLE `sys_dictionary` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sys_dictionary` VALUES
('058e6fffc8cf59ca83dfc7f510797511','system','system','sys_dictionary','reference_key','0','sys_dictionary_sys_dictionary_reference_key','reference_key','Reference key','82dee5f75c1b5fd8a96cf5aac4b514b5','sys_dictionary',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-09-21 13:40:10','2025-09-21 13:40:10','global',NULL,NULL,NULL),
('0655d993d3515236a8ee86b837e7e43f','system','system','sys_dictionary','title','0','sys_dictionary_0655d993d3515236a8ee86b837e7e43f','title','Title','string','sys_app_module',NULL,NULL,80,'',1,1,NULL,NULL,'2025-08-27 20:14:30','2025-08-27 20:14:30','global',NULL,NULL,NULL),
('0999748a21b853f0ae93be8289b88d92','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_updated_by','Updated by','string','sys_glide_object',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-03-25 16:23:03','2024-03-25 16:23:03',NULL,NULL,NULL,NULL),
('0a6c530583715aac8a269410ec767792','system','system','sys_dictionary','sys_name','0',NULL,'sys_name','Display name','string','sys_app_application',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL,NULL),
('0e80ab516e1a5e27bd47e54e7c999192','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_scope','Scope','string','sys_metadata',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2024-03-25 16:05:00','2025-08-28 17:51:50','global',NULL,NULL,NULL),
('0f18ae2950095510841ebbac13c6294a','system','system','sys_dictionary','description','0','sys_dictionary_0f18ae2950095510841ebbac13c6294a','description','Description','string','sys_app_application',NULL,NULL,4000,NULL,1,NULL,NULL,NULL,'2025-08-27 19:38:58','2025-08-27 19:38:58','global',NULL,NULL,NULL),
('1234f2056e2e5ae0af378f04d18256c0','system','system','sys_dictionary','sys_dictionary','0',NULL,'display','Display','boolean','sys_dictionary',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2024-02-22 22:35:14','2024-02-22 22:35:14',NULL,NULL,NULL,NULL),
('123a611fff025a16ace4ca715ddef2ba','system','system','sys_dictionary','query','0','sys_dictionary_123a611fff025a16ace4ca715ddef2ba','query','Arguments','string','sys_app_module',NULL,NULL,3500,NULL,1,NULL,NULL,NULL,'2025-08-27 20:28:12','2025-08-27 20:28:12','global',NULL,NULL,NULL),
('1291a864dfac54d892c2b2e4924e169c','system','system','sys_dictionary','name','0','sys_dictionary_1291a864dfac54d892c2b2e4924e169c','name','Table','string','sys_app_module',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2025-08-27 20:26:33','2025-08-27 20:26:33','global',NULL,NULL,NULL),
('1329f45f187853d1bf19c9e0c9aa6e05','system','system','sys_dictionary','sys_glide_object','0',NULL,'label','Label','string','sys_glide_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:31:31','2024-03-25 16:31:31',NULL,NULL,NULL,NULL),
('15e239c8943351e19fb28d5f8f0ceb87','system','system','sys_dictionary','sys_glide_object','0',NULL,'use_original_value','Use original value','boolean','sys_glide_object',NULL,NULL,2,NULL,1,NULL,1,NULL,'2024-03-25 17:07:58','2024-03-25 17:07:58',NULL,NULL,NULL,NULL),
('188d08da1a8d514d9e5916f06cc47957','system','system','sys_dictionary','Name','0','sys_dictionary_sys_scope_name','name','Name','string','sys_scope',NULL,NULL,100,NULL,1,NULL,NULL,NULL,'2025-10-02 22:58:38','2025-10-02 22:58:38',NULL,NULL,NULL,NULL),
('1c1220b982a8567496dbc2230f4acb42','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_package_sys_id','sys_id','Sys ID','string','sys_package',NULL,NULL,32,NULL,1,NULL,1,NULL,'2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL,NULL),
('228ea207d6a45f3ab406aa727eef326e','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_created_by','Created by','string','sys_db_object',NULL,NULL,40,NULL,1,NULL,1,NULL,'2024-03-23 22:28:55','2024-03-25 14:43:56',NULL,NULL,NULL,NULL),
('266fcfdce4125ad69ad0dc54ce272574','system','system','sys_dictionary','sys_scope','0',NULL,'sys_scope','Scope','string','sys_app_application',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL,NULL),
('27d3d8cf04985836926b63ec6bf35c6b','system','system','sys_dictionary','Application','0','sys_dictionary_sys_dictionary_sys_scope','sys_scope','Application','string','sys_dictionary',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2024-02-22 22:07:37','2025-10-02 22:33:21',NULL,NULL,NULL,NULL),
('2a3a5776d09856d49af3146c0001daf6','system','system','sys_dictionary','Created','0','sys_dictionary_sys_db_object_sys_created_on','sys_created_on','Created','datetime','sys_db_object',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-10-02 20:49:54','2025-10-02 20:49:54','global',NULL,NULL,NULL),
('2a7db5cc99f654c98e20165f0e9a8021','system','system','sys_dictionary','sys_updated_on','0',NULL,'sys_updated_on','Updated','datetime','sys_app_module',NULL,NULL,6,NULL,1,NULL,1,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL),
('2a904fb27ce6506c968fbdc87c4e2e93','system','system','sys_dictionary','window_name','0','sys_dictionary_2a904fb27ce6506c968fbdc87c4e2e93','window_name','Window name','string','sys_app_module',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-27 20:29:38','2025-08-27 20:29:38','global',NULL,NULL,NULL),
('2cd66be07e095606abec28adb549ae68','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_name','Display name','string','sys_metadata',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:04:09','2025-08-28 17:52:23','global',NULL,NULL,NULL),
('31f9131c9ddf516ba3a09e87350144da','system','system','sys_dictionary','sys_id','0',NULL,'sys_id','Sys ID','string','sys_app_application',NULL,NULL,32,NULL,1,NULL,1,NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL,NULL),
('3527e4d02a9755d7b642a115e57ed42c','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_update_name','Update','string','sys_dictionary',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-02-22 22:09:19','2024-02-22 22:09:19',NULL,NULL,NULL,NULL),
('35402c8677b25f99b2ccb78d58877ef8','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_name','Display name','string','sys_glide_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:24:23','2024-03-25 16:24:23',NULL,NULL,NULL,NULL),
('36e7c3236ffe5a12ac7e83936f137f66','system','system','sys_dictionary','sys_db_object','0',NULL,'label','Label','string','sys_db_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 15:53:27','2024-03-25 15:53:27',NULL,NULL,NULL,NULL),
('38396ff4de8c581d8d6f15899b8b6849','system','system','sys_dictionary','sys_update_name','0',NULL,'sys_update_name','Update','string','sys_app_application',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-26 11:39:56','2025-08-26 11:39:55',NULL,NULL,NULL,NULL),
('3df03290b2b857148d462134f98e73ec','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_created_on','Created','datetime','sys_metadata',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2024-03-25 16:17:06','2025-08-28 17:52:10','global',NULL,NULL,NULL),
('3f7db7d288865343a3017231ebeebdb0','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_policy','Policy','string','sys_dictionary',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-02-22 22:10:14','2024-02-22 22:10:14',NULL,NULL,NULL,NULL),
('40d8e0565c6d5c3c907538a705776aba','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_updated_on','Updated','datetime','sys_metadata',NULL,NULL,6,NULL,1,NULL,1,NULL,'2024-03-25 16:16:06','2025-08-28 17:52:03','global',NULL,NULL,NULL),
('42d21e3d23cd5aa9b70f7a3fe1ba72e3','system','system','sys_dictionary','hint','0','sys_dictionary_42d21e3d23cd5aa9b70f7a3fe1ba72e3','hint','Hint','string','sys_app_application',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 19:38:12','2025-08-27 19:38:12','global',NULL,NULL,NULL),
('4343418974ca59ef826d42262f8cca96','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_updated_by','Updated by','string','sys_dictionary',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-02-22 21:59:49','2024-03-25 14:47:20',NULL,NULL,NULL,NULL),
('4578052cf7485eae9481dd1b131890db','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_package_sys_mod_count','sys_mod_count','Updates','integer','sys_package',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL,NULL),
('45f49e3d53975ba1ab63e218a2b39d64','system','system','sys_dictionary','override_menu_roles','0','sys_dictionary_45f49e3d53975ba1ab63e218a2b39d64','override_menu_roles','Override application menu roles','boolean','sys_app_module',NULL,NULL,2,NULL,1,NULL,NULL,NULL,'2025-08-27 20:30:41','2025-08-27 20:30:41','global',NULL,NULL,NULL),
('4625994977d250e9834ee75bcbb1b383','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_glide_object_sys_mod_count','sys_mod_count','Updates','integer','sys_glide_object',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-03-25 16:24:53','2025-10-02 21:47:06',NULL,NULL,NULL,NULL),
('4cabb881be405c6584deebc7e1ada739','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_update_name','Update','string','sys_metadata',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:04:32','2025-08-28 17:51:42','global',NULL,NULL,NULL),
('4d2762fc68d55973825608178eaaab1a','system','system','sys_dictionary','ID','0','sys_dictionary_test_u_ID','u_ID','ID','GUID','test',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2025-10-02 19:47:00','2025-10-02 19:47:00','global',NULL,NULL,NULL),
('4e90035093b95a8e9c73159a805ea048','system','system','sys_dictionary','sys_policy','0',NULL,'sys_policy','Protection policy','string','sys_app_application',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL,NULL),
('4f146585d97c519ba83f8f07c317f807','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_created_by','Created by','string','sys_glide_object',NULL,NULL,40,NULL,1,NULL,1,NULL,'2024-03-25 16:22:48','2024-03-25 16:22:48',NULL,NULL,NULL,NULL),
('52ec5c0d69e6552083afe3c176cd8fa8','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_package','Package','string','sys_dictionary',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-03-25 16:59:38','2024-03-25 16:59:38',NULL,NULL,NULL,NULL),
('59313c2eba9656f5a8043b29112e8b5f','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_class_name','Class','string','sys_metadata',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2024-03-25 16:01:04','2025-08-28 17:50:55','global',NULL,NULL,NULL),
('5ab0789c05a058a4be03b4195bc87739','system','system','sys_dictionary','Scope','0','sys_dictionary_sys_app_module_sys_scope','sys_scope','Scope','reference','sys_app_module',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-10-02 16:11:43','global',NULL,NULL,NULL),
('5adbf03c8d855b5e9c3b84d63626a8ee','system','system','sys_dictionary','sys_class_name','0',NULL,'sys_class_name','Class','string','sys_app_application',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL,NULL),
('5afa91e94ff255e1b3be26a07826557e','system','system','sys_dictionary','sys_glide_object','0',NULL,'visible','Visible','boolean','sys_glide_object',NULL,NULL,2,NULL,1,NULL,1,NULL,'2024-03-25 18:19:16','2024-03-25 18:19:16',NULL,NULL,NULL,NULL),
('5c371cc5d9215e5abccfe28f1d65ad08','system','system','sys_dictionary','is_private','0','sys_dictionary_5c371cc5d9215e5abccfe28f1d65ad08','is_private','Private','boolean','sys_properties',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2025-08-28 17:09:17','2025-08-28 17:09:17','global',NULL,NULL,NULL),
('5ecccd58e9e956f6bab85a39fbc424f5','system','system','sys_dictionary','active','0','sys_dictionary_5ecccd58e9e956f6bab85a39fbc424f5','active','Active','boolean','sys_app_application',NULL,'1',1,NULL,1,NULL,NULL,NULL,'2025-08-27 19:33:45','2025-08-28 16:58:01','global',NULL,NULL,NULL),
('5f5f4024e3c851cf9c24b0f6c59ebf13','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_name','Display name','string','sys_dictionary',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-02-22 22:03:59','2024-03-25 16:21:14',NULL,NULL,NULL,NULL),
('6481319422a95989b71ed8f8b6f32cc9','system','system','sys_dictionary','type','0','sys_dictionary_6481319422a95989b71ed8f8b6f32cc9','type','Type','string','sys_properties',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-28 17:05:58','2025-08-28 17:05:58','global',NULL,NULL,NULL),
('64e50a9979685f35a9892c8e686ac03b','system','system','sys_dictionary','roles','0','sys_dictionary_64e50a9979685f35a9892c8e686ac03b','roles','Roles','string','sys_app_application',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 19:36:02','2025-08-27 19:36:02','global',NULL,NULL,NULL),
('657ad65a2bd552cc8de23fcb25039964','system','system','sys_dictionary','link_type','0','sys_dictionary_657ad65a2bd552cc8de23fcb25039964','link_type','Link type','string','sys_app_module',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-27 20:25:41','2025-08-27 20:25:41','global',NULL,NULL,NULL),
('66a346eea7bd5a349bc387217ac83491','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_id','Sys ID','string','sys_metadata',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-03-25 15:59:26','2025-08-28 17:48:59','global',NULL,NULL,NULL),
('693e0733a10b5dd3adfa0f83b83907ec','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_package_sys_updated_on','sys_updated_on','Updated','datetime','sys_package',NULL,NULL,6,NULL,1,NULL,1,NULL,'2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL,NULL),
('6c34b895a44e5a869f7707adb144fdf1','system','system','sys_dictionary','view_name','0','sys_dictionary_6c34b895a44e5a869f7707adb144fdf1','view_name','View name','string','sys_app_module',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-27 20:27:08','2025-08-27 20:27:08','global',NULL,NULL,NULL),
('6e2891df5a81593bb4af1322de9bbbc9','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_update_name','Update','string','sys_glide_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:27:28','2024-03-25 16:27:28',NULL,NULL,NULL,NULL),
('6e3f1c9763d8532a8faa6e90df510653','system','system','sys_dictionary','sys_dictionary','0',NULL,'unique','Unique','boolean','sys_dictionary',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2024-02-22 22:36:34','2024-02-22 22:36:34',NULL,NULL,NULL,NULL),
('7127798174a95155bc73516661fb4e61','system','system','sys_dictionary','sys_created_by','0',NULL,'sys_created_by','Created by','string','sys_app_application',NULL,NULL,40,NULL,1,NULL,1,NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL,NULL),
('73ad6075c71e5afdb1c347d5bc588d27','system','system','sys_dictionary','sys_glide_object','0',NULL,'name','Name','string','sys_glide_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:31:19','2024-03-25 16:31:19',NULL,NULL,NULL,NULL),
('7423c7c89df75a2e89083c38b3d3e530','system','system','sys_dictionary','sys_policy','0',NULL,'sys_policy','Protection policy','string','sys_app_module',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL),
('75198bd88e72516ca3bd5d4dba3eb3d9','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_policy','Protection policy','string','sys_glide_object',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2024-03-25 16:27:48','2024-03-25 16:27:48',NULL,NULL,NULL,NULL),
('7698154cf6e458e18af12979fa7de549','system','system','sys_dictionary','sys_dictionary','0',NULL,'name','Table','string','sys_dictionary','sys_db_object',NULL,80,NULL,1,NULL,1,NULL,'2024-02-22 22:25:35','2024-02-22 22:25:35',NULL,NULL,NULL,NULL),
('77fa940842c656a99d8de4710cb82b0e','system','system','sys_dictionary','sys_glide_object','0',NULL,'attributes','Attributes','string','sys_glide_object',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-03-25 17:05:24','2024-03-25 17:05:24',NULL,NULL,NULL,NULL),
('7975133d5d665926ab1a5b8e40129ac8','system','system','sys_dictionary','Active','0','sys_dictionary_sys_dictionary_active','active','Active','boolean','sys_dictionary',NULL,'1',1,NULL,1,NULL,NULL,NULL,'2024-02-22 22:34:15','2025-08-28 18:26:53','global',NULL,NULL,NULL),
('7a061b322a885a358300b62807a2512f','system','system','sys_dictionary','sys_created_on','0',NULL,'sys_created_on','Created','datetime','sys_app_application',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL,NULL),
('7a2b2cd40db45be9902ce5f98d7e867c','system','system','sys_dictionary','application','0','sys_dictionary_7a2b2cd40db45be9902ce5f98d7e867c','application','Application menu','string','sys_app_module',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-27 20:15:29','2025-08-27 20:15:29','global',NULL,NULL,NULL),
('7e74e9e548f65caa92a4eb35a699f0d2','system','system','sys_dictionary','sys_created_by','0',NULL,'sys_created_by','Created by','string','sys_app_module',NULL,NULL,40,NULL,1,NULL,1,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL),
('80e723bdcf9b554ba85363fb01937520','system','system','sys_dictionary','Column label','0','sys_dictionary_sys_dictionary_column_label','column_label','Column label','string','sys_dictionary',NULL,NULL,80,NULL,1,1,1,NULL,'2024-02-22 22:15:01','2025-09-21 14:04:50',NULL,NULL,NULL,NULL),
('8228716c38605ad09f6ff9d8fa8de9bc','system','system','sys_dictionary','sys_metadata','0','sys_dictionary_sys_metadata',NULL,NULL,'collection','sys_metadata',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 17:56:23','2025-08-28 17:56:41','global',NULL,NULL,NULL),
('826d546bacf25aa3b255a9c7d14452ab','system','system','sys_dictionary','sys_dictionary','0',NULL,'attrributes','Attributes','string','sys_dictionary',NULL,NULL,1000,NULL,1,NULL,NULL,NULL,'2024-02-22 22:33:14','2024-02-22 22:33:14',NULL,NULL,NULL,NULL),
('84e437f8f270556aa4d5be9f0806b1f5','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_policy','Policy','string','sys_db_object',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-03-25 15:51:40','2024-03-25 15:51:40',NULL,NULL,NULL,NULL),
('850be2aef9ef5ee9a3d009c743e87c1f','system','system','sys_dictionary','sys_updated_on','0',NULL,'sys_updated_on','Updated','datetime','sys_app_application',NULL,NULL,6,NULL,1,NULL,1,NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL,NULL),
('88b8860cb1835f98903e4d69f2efe7b8','system','system','sys_dictionary','sys_dictionary','0',NULL,'mandatory','Mandatory','boolean','sys_dictionary',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2024-02-22 22:36:07','2024-02-22 22:36:07',NULL,NULL,NULL,NULL),
('8af9702b9b335873b023d1ebb113db1a','system','system','sys_dictionary','sys_glide_object','0','sys_dictionary_sys_glide_object',NULL,NULL,'collection','sys_glide_object',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 18:19:25','2025-08-28 18:19:30','global',NULL,NULL,NULL),
('8c0b511f4e4154e988f7a31091fd1205','system','system','sys_dictionary','title','0','sys_dictionary_test_title','title','Title','string','test',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-28 20:42:17','2025-08-28 20:42:17','global',NULL,NULL,NULL),
('8cfd60fdf04b530c80b21225cf11b283','system','system','sys_dictionary','active','0','sys_dictionary_8cfd60fdf04b530c80b21225cf11b283','active','Active','boolean','sys_app_module',NULL,'1',1,NULL,1,NULL,NULL,NULL,'2025-08-27 20:22:32','2025-08-28 16:57:43','global',NULL,NULL,NULL),
('8f4ed601838b582890ed0c89b38547cd','system','system','sys_dictionary','sys_scope','0','sys_dictionary_sys_scope',NULL,NULL,'collection','sys_scope',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-10-02 22:58:38','2025-10-02 22:58:38',NULL,NULL,NULL,NULL),
('8fdc8924d273513887317f76bc436eaf','system','system','sys_dictionary','sys_package','0','sys_dictionary_sys_package',NULL,NULL,'collection','sys_package',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL,NULL),
('94408b65c1885c3a8375840e6c3f5b5b','system','system','sys_dictionary','title','0','sys_dictionary_94408b65c1885c3a8375840e6c3f5b5b','title','Title','string','sys_app_application',NULL,'',40,NULL,1,1,1,NULL,'2025-08-27 19:31:04','2025-08-27 20:01:42','global',NULL,NULL,NULL),
('95205600b190555ca6c4337ecd127e10','system','system','sys_dictionary','sys_db_object','0',NULL,'name','Name','string','sys_db_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 16:29:48','2024-03-25 16:29:48',NULL,NULL,NULL,NULL),
('95bf4ac569215ca5aab11b13f9af6171','system','system','sys_dictionary','sys_dictionary','0',NULL,'reference','Reference','string','sys_dictionary','sys_db_object',NULL,80,NULL,1,NULL,NULL,NULL,'2024-02-22 22:27:58','2024-02-22 22:27:58',NULL,NULL,NULL,NULL),
('973d772f7caf5280941057d00d79f80d','system','system','sys_dictionary','description','0','sys_dictionary_973d772f7caf5280941057d00d79f80d','description','Description','string','sys_properties',NULL,NULL,512,NULL,1,0,NULL,NULL,'2025-08-28 17:03:42','2025-08-28 17:03:42','global',NULL,NULL,NULL),
('9a3e83a026df5e1984ededdd00ed5e95','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_package_sys_updated_by','sys_updated_by','Updated by','string','sys_package',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL,NULL),
('9bb9c789cf575c8a9cc0b36918736746','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_package','Package','string','sys_glide_object',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-03-25 16:54:41','2024-03-25 16:54:41',NULL,NULL,NULL,NULL),
('9c56c7264607557c86370330bbfe2a65','system','system','sys_dictionary','test_66','0','sys_dictionary_test_test_66','test_66','Test 66','reference','test','test',NULL,32,NULL,1,NULL,NULL,NULL,'2025-10-02 15:59:57','2025-10-02 15:59:57','global',NULL,NULL,NULL),
('9d22bdb217035cd9b985acae54444bdf','system','system','sys_dictionary','sys_dictionary','0',NULL,'element','Column name','string','sys_dictionary',NULL,NULL,80,NULL,1,NULL,1,NULL,'2024-02-22 21:53:40','2024-02-22 21:53:40',NULL,NULL,NULL,NULL),
('9e0a93afa9b45257b27379fac37d8db7','system','system','sys_dictionary','ignore_cache','0','sys_dictionary_9e0a93afa9b45257b27379fac37d8db7','ignore_cache','Ignore cache','boolean','sys_properties',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2025-08-28 17:08:17','2025-08-28 17:08:17','global',NULL,NULL,NULL),
('9e5d7a19f09a5b088136f1a454c87558','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_updated_by','Updated by','string','sys_db_object',NULL,NULL,40,NULL,1,NULL,1,NULL,'2024-03-23 22:29:42','2024-03-25 14:44:15',NULL,NULL,NULL,NULL),
('9ef334b73cbe50b9885cec0f257bf36f','system','system','sys_dictionary','Name','0','sys_dictionary_sys_package_name','name','Name','string','sys_package',NULL,NULL,100,NULL,1,NULL,NULL,NULL,'2025-10-02 22:51:39','2025-10-02 22:51:39',NULL,NULL,NULL,NULL),
('9f17671e10f954fb9787998d9fa83c6e','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_id','Sys ID','string','sys_db_object',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-03-23 22:12:07','2024-03-23 22:12:07',NULL,NULL,NULL,NULL),
('a2fa6b8a7aa4540e8c9ee2bb59858fcd','system','system','sys_dictionary','roles','0','sys_dictionary_a2fa6b8a7aa4540e8c9ee2bb59858fcd','roles','Roles','string','sys_app_module',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 20:23:04','2025-08-27 20:23:04','global',NULL,NULL,NULL),
('a82035745a0151c69d691d74021f9af3','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_class_name','Class','string','sys_glide_object',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2024-03-25 16:23:36','2024-03-25 16:23:36',NULL,NULL,NULL,NULL),
('a8e63b5a574a5cfd8c153b29e84f031c','system','system','sys_dictionary','sys_dictionary','0','sys_dictionary_sys_dictionary',NULL,NULL,'collection','sys_dictionary',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 18:17:35','2025-08-28 18:17:41','global',NULL,NULL,NULL),
('aaa73c550474598fa8b0302e64ff4f64','system','system','sys_dictionary','Test11','0','sys_dictionary_test_test11','test11','Test11','reference','test','sys_dictionary',NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-28 20:26:43','2025-10-02 16:09:50','global',NULL,NULL,NULL),
('ab034f25448251e18481f64525237c9a','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_package_sys_created_by','sys_created_by','Created by','string','sys_package',NULL,NULL,40,NULL,1,NULL,1,NULL,'2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL,NULL),
('ab22299e21665dd8b47b467057c871bd','system','system','sys_dictionary','sys_name','0',NULL,'sys_name','Display name','string','sys_app_module',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL),
('ac69930fde615028984c580e9b0d1cbd','system','system','sys_dictionary','sys_updated_by','0',NULL,'sys_updated_by','Updated by','string','sys_app_application',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL,NULL),
('ad7ec2e2941051f88df098fb9a7d5af5','system','system','sys_dictionary','sys_update_name','0',NULL,'sys_update_name','Update','string','sys_app_module',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL),
('ae816a4ab5de591097d15da7a1eaadb2','system','system','sys_dictionary','sys_properties','0','sys_dictionary_sys_properties',NULL,NULL,'collection','sys_properties',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 16:54:21','2025-08-28 16:54:41','global',NULL,NULL,NULL),
('b04ead5fbb1f58bc9aaf77827cb12f91','system','system','sys_dictionary','sys_dictionary','0',NULL,'max_length','Maximum length','number','sys_dictionary',NULL,NULL,6,NULL,1,NULL,1,NULL,'2024-02-22 22:32:46','2024-02-22 22:32:46',NULL,NULL,NULL,NULL),
('b2fa9f24b4ba5bc2a21ed88b4f17db1a','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_dictionary_sys_mod_count','sys_mod_count','Updates','integer','sys_dictionary',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-02-22 22:05:20','2025-10-02 21:46:14',NULL,NULL,NULL,NULL),
('b3f1858ed2785b709de8b7294887e994','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_class_name','Class','string','sys_dictionary',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2024-02-22 22:02:05','2024-02-22 22:02:05',NULL,NULL,NULL,NULL),
('b6a896ee08005605a15a91d4e0d497df','system','system','sys_dictionary','TEST 77','0','sys_dictionary_test_test_77','test_77','TEST 77','string','test',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-10-02 16:22:14','2025-10-02 16:22:14','global',NULL,NULL,NULL),
('b6cf40012db55e9589ced231ff8634d3','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_id','Sys ID','string','sys_glide_object',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-03-25 16:21:57','2024-03-25 16:21:57',NULL,NULL,NULL,NULL),
('bde9c6bd34a150f99d97259712460de0','system','system','sys_dictionary','sys_glide_object','0',NULL,'scalar_type','Extends','string','sys_glide_object',NULL,NULL,40,NULL,1,NULL,1,NULL,'2024-03-25 17:06:05','2024-03-25 17:06:05',NULL,NULL,NULL,NULL),
('beeab6a0d2e95e899988cc0035cd1b8b','system','system','sys_dictionary','read_roles','0','sys_dictionary_beeab6a0d2e95e899988cc0035cd1b8b','read_roles','Read roles','string','sys_properties',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-28 17:10:13','2025-08-28 17:10:13','global',NULL,NULL,NULL),
('c0e9a2809db955abb04d01263fc9fbc3','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_id','Sys ID','string','sys_dictionary',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-02-22 21:56:34','2024-03-23 22:11:01',NULL,NULL,NULL,NULL),
('c1c2c778ed86583189ab88139d777915','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_created_by','Created by','string','sys_dictionary',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-02-22 21:58:21','2024-02-22 21:58:21',NULL,NULL,NULL,NULL),
('c37494672c3154dea21b43b6643eb094','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_updated_on','Updated','datetime','sys_dictionary',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2024-02-22 22:38:56','2025-08-28 16:59:01',NULL,NULL,NULL,NULL),
('c568415874fb544f9f3281ebbd2552c1','system','system','sys_dictionary','filter','0','sys_dictionary_c568415874fb544f9f3281ebbd2552c1','filter','Filter','string','sys_app_module',NULL,NULL,3500,NULL,1,NULL,NULL,NULL,'2025-08-27 20:29:01','2025-08-27 20:29:01','global',NULL,NULL,NULL),
('c9174019000b56e8ba50df358da29db0','system','system','sys_dictionary','hint','0','sys_dictionary_c9174019000b56e8ba50df358da29db0','hint','Hint','string','sys_app_module',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-27 20:21:59','2025-08-27 20:21:59','global',NULL,NULL,NULL),
('cac6ce0f1689569ea35ef0f0fd2868c7','system','system','sys_dictionary','sys_app_module','0','sys_dictionary_sys_app_module',NULL,NULL,'collection','sys_app_module',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-08-27 19:15:55','global',NULL,NULL,NULL),
('cf7da34432f85e19a7e7ab7cf714a44c','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_updated_on','Updated','datetime','sys_db_object',NULL,NULL,6,NULL,1,NULL,1,NULL,'2024-03-23 22:29:33','2024-03-25 14:43:23',NULL,NULL,NULL,NULL),
('d56500e3b65e56718012a54f75d3e5b5','system','system','sys_dictionary','name','0','sys_dictionary_d56500e3b65e56718012a54f75d3e5b5','name','Name','string','sys_properties',NULL,NULL,100,NULL,1,1,1,NULL,'2025-08-28 17:02:34','2025-08-28 17:02:34','global',NULL,NULL,NULL),
('d5c994a9dd8151a8ad8b89588b4b6dbb','system','system','sys_dictionary','sys_db_object','0','sys_dictionary_sys_db_object',NULL,NULL,'collection','sys_db_object',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 18:16:27','2025-08-28 18:16:33','global',NULL,NULL,NULL),
('d7892f28dd1051f1bd3aff6b84f4b761','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_db_object_sys_mod_count','sys_mod_count','Updates','integer','sys_db_object',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-03-25 15:50:04','2025-10-02 21:47:11',NULL,NULL,NULL,NULL),
('d88218c2d8885fdda54ba5e9a7bdcc5b','system','system','sys_dictionary','sys_app_application','0','sys_dictionary_sys_app_application',NULL,NULL,'collection','sys_app_application',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-26 11:39:55','2025-08-27 16:45:32','global',NULL,NULL,NULL),
('d8bfc340675554a1ab20dc549fda3dc6','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_created_by','Created by','string','sys_metadata',NULL,NULL,40,NULL,1,NULL,1,NULL,'2024-03-25 16:00:17','2025-08-28 17:50:28','global',NULL,NULL,NULL),
('d90fec04f31a51dabbed943b87bfe61a','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_updated_by','Updated by','string','sys_metadata',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2024-03-25 16:03:25','2025-08-28 17:51:34','global',NULL,NULL,NULL),
('d99df4c26e005cb5be9be0bfad36c6c5','system','system','sys_dictionary','sys_glide_object','0',NULL,'scalar_length','Length','string','sys_glide_object',NULL,NULL,40,NULL,1,NULL,1,NULL,'2024-03-25 17:06:22','2024-03-25 17:06:22',NULL,NULL,NULL,NULL),
('dc49893104ed5125a2b68caa22f14b7f','system','system','sys_dictionary','Application','0','sys_dictionary_sys_glide_object_sys_scope','sys_scope','Application','string','sys_glide_object',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2024-03-25 16:27:08','2025-10-02 22:56:29',NULL,NULL,NULL,NULL),
('dc6ea6f1ef7e5346bf9006220eb77b66','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_class_name','Class','string','sys_db_object',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2024-03-25 15:29:32','2024-03-25 15:29:32',NULL,NULL,NULL,NULL),
('de72b22ad61653ab93c5a83032cdcb40','system','system','sys_dictionary','order','0','sys_dictionary_de72b22ad61653ab93c5a83032cdcb40','order','Order','decimal','sys_app_module',NULL,NULL,15,NULL,1,NULL,NULL,NULL,'2025-08-27 20:16:39','2025-08-27 20:16:39','global',NULL,NULL,NULL),
('dec4d3c7398051b2864a967b8bef202e','system','system','sys_dictionary','sys_dictionary','0',NULL,'default_value','Default value','string','sys_dictionary','',NULL,255,NULL,1,NULL,NULL,NULL,'2024-02-22 22:30:18','2024-02-22 22:30:18',NULL,NULL,NULL,NULL),
('e253976775685a3bad0de209ebb685a3','system','system','sys_dictionary','Created','0','sys_dictionary_sys_package_sys_created_on','sys_created_on','Created','datetime','sys_package',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-10-02 22:15:22','2025-10-02 22:15:22','global',NULL,NULL,NULL),
('e49ac179cfac518284e6f5ae29e185f4','system','system','sys_dictionary','test','0','sys_dictionary_test',NULL,NULL,'collection','test',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'2025-08-28 19:35:00','2025-08-28 19:35:40','global',NULL,NULL,NULL),
('e593c51e74c85bfdb224b2d3cc1a535e','system','system','sys_dictionary','category','0','sys_dictionary_e593c51e74c85bfdb224b2d3cc1a535e','category','Category','string','sys_app_application','sys_app_category',NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-27 19:37:08','2025-08-27 19:37:08','global',NULL,NULL,NULL),
('e6b15194380c5ea6b8db87d211b01fd1','system','system','sys_dictionary','sys_db_object','0',NULL,'super_class','Extends table','string','sys_db_object',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-03-25 15:57:36','2024-03-25 15:57:35',NULL,NULL,NULL,NULL),
('e6f635cd33dc5dab91130d237e61f5b5','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_update_name','Update','string','sys_db_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 15:51:07','2024-03-25 15:51:07',NULL,NULL,NULL,NULL),
('e8bb2b99d5825ebeb6ab5ee162cc29df','system','system','sys_dictionary','sys_dictionary','0',NULL,'sys_created_on','Created','datetime','sys_dictionary',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2024-02-22 22:38:15','2025-08-28 16:59:22',NULL,NULL,NULL,NULL),
('eb36b7fa92ab5fff801e3856224c6d7b','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_name','Display name','string','sys_db_object',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2024-03-25 15:49:20','2024-03-25 16:20:52',NULL,NULL,NULL,NULL),
('eb42e5c48b835484becaa52eef94b26e','system','system','sys_dictionary','test22','0','sys_dictionary_test_test22','test22','TEST 22','reference','test','sys_db_object',NULL,32,NULL,1,NULL,NULL,NULL,'2025-08-28 20:41:05','2025-08-28 20:43:26','global',NULL,NULL,NULL),
('eb9bc55adf325977970e8588ed6575b1','system','system','sys_dictionary','sys_updated_by','0',NULL,'sys_updated_by','Updated by','string','sys_app_module',NULL,NULL,40,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL),
('ebbed92efb8253b49863fafdc2cba986','system','system','sys_dictionary','sys_metadata','0',NULL,'sys_policy','Protection policy','string','sys_metadata',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2024-03-25 16:07:07','2025-08-28 17:51:57','global',NULL,NULL,NULL),
('ecb776360e2452a099055a22bd4e960f','system','system','sys_dictionary','Application','0','sys_dictionary_sys_db_object_sys_scope','sys_scope','Application','string','sys_db_object',NULL,NULL,32,NULL,1,NULL,NULL,NULL,'2024-03-25 15:50:29','2025-10-02 22:31:42',NULL,NULL,NULL,NULL),
('edc5f2e2ac635c0aaaa01679d9b6b97c','system','system','sys_dictionary','Type','0','sys_dictionary_sys_dictionary_internal_type','internal_type','Type','reference','sys_dictionary','sys_glide_object',NULL,40,NULL,1,NULL,1,NULL,'2024-02-22 22:20:44','2025-09-21 20:40:57',NULL,NULL,NULL,'name'),
('ee44ba1c14a855718a6b5729a12c4dee','system','system','sys_dictionary','test_55','0','sys_dictionary_test_test_55','test_55','test 55','reference','test','sys_glide_object',NULL,32,NULL,1,NULL,NULL,NULL,'2025-09-21 19:40:12','2025-09-21 19:40:12','global',NULL,NULL,'name'),
('efa8c72ec84355e891012eb61f8f9ee5','system','system','sys_dictionary','sys_id','0',NULL,'sys_id','Sys ID','string','sys_app_module',NULL,NULL,32,NULL,1,NULL,1,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL),
('f291dedd024a5a6592ac8876efb03d70','system','system','sys_dictionary','choices','0','sys_dictionary_f291dedd024a5a6592ac8876efb03d70','choices','Choices','string','sys_properties',NULL,NULL,512,NULL,1,NULL,NULL,NULL,'2025-08-28 17:04:34','2025-08-28 17:04:34','global',NULL,NULL,NULL),
('f2b436041cb8583b921bd849aaf002e1','system','system','sys_dictionary','write_roles','0','sys_dictionary_f2b436041cb8583b921bd849aaf002e1','write_roles','Write roles','string','sys_properties',NULL,NULL,255,NULL,1,NULL,NULL,NULL,'2025-08-28 17:11:28','2025-08-28 17:11:28','global',NULL,NULL,NULL),
('f3cc40b9b6d95ab2a8bb0c9de7642346','system','system','sys_dictionary','sys_created_on','0',NULL,'sys_created_on','Created','datetime','sys_app_module',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL),
('f974bfb3429a56a2bc1ac14e71ec9eec','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_updated_on','Updated','datetime','sys_glide_object',NULL,NULL,6,NULL,1,NULL,1,NULL,'2024-03-25 16:32:28','2024-03-25 16:32:28',NULL,NULL,NULL,NULL),
('fdc619b7988b50348a01250f8b648620','system','system','sys_dictionary','sys_glide_object','0',NULL,'sys_created_on','Created','datetime','sys_glide_object',NULL,NULL,6,NULL,1,NULL,NULL,NULL,'2024-03-25 16:32:10','2024-03-25 16:32:10',NULL,NULL,NULL,NULL),
('fe184c6a54e4596da1054b027b56b83e','system','system','sys_dictionary','value','0','sys_dictionary_fe184c6a54e4596da1054b027b56b83e','value','Value','string','sys_properties',NULL,NULL,4000,NULL,1,NULL,NULL,NULL,'2025-08-28 17:07:19','2025-08-28 17:07:19','global',NULL,NULL,NULL),
('ff848e1f26015885a19ac5a6fa1782d3','system','system','sys_dictionary','sys_db_object','0',NULL,'sys_package','Package','string','sys_db_object',NULL,NULL,32,NULL,1,NULL,1,NULL,'2024-03-25 16:59:44','2024-03-25 16:59:44',NULL,NULL,NULL,NULL),
('ffb4726824a95caa9f92063fd4379c82','system','system','sys_dictionary','sys_class_name','0',NULL,'sys_class_name','Class','string','sys_app_module',NULL,NULL,80,NULL,1,NULL,NULL,NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_dictionary` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_glide_object`
--

LOCK TABLES `sys_glide_object` WRITE;
/*!40000 ALTER TABLE `sys_glide_object` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sys_glide_object` VALUES
('013e50cec3fc51b4b29099ec2ca872b0','system','system','sys_glide_object','Collection','0','sys_glide_object_013e50cec3fc51b4b29099ec2ca872b0','collection','Collection','2024-03-26 21:10:42','2025-09-21 10:17:48','global',NULL,NULL),
('0e5b76a870b85644bd4385217c03d3ae','system','system','sys_glide_object','Decimal','0','sys_glide_object_0e5b76a870b85644bd4385217c03d3ae','decimal','Decimal','2024-03-26 21:04:26','2025-09-21 10:21:47','global',NULL,NULL),
('0eec8dc65a255ff182ee474ad083b9ec','system','system','sys_glide_object','Journal Input','0','sys_glide_object_0eec8dc65a255ff182ee474ad083b9ec','journal_input','Journal Input','2024-03-26 21:17:35','2025-09-21 10:13:02','global',NULL,NULL),
('11143ffaf3065090ad9f082af82295cd','system','system','sys_glide_object','HTML','0','sys_glide_object_11143ffaf3065090ad9f082af82295cd','html','HTML','2024-03-26 21:16:11','2025-09-21 10:13:40','global',NULL,NULL),
('165fbedf83fc57d8a5cc31c16fe90801','system','system','sys_glide_object','List','0','sys_glide_object_165fbedf83fc57d8a5cc31c16fe90801','list','List','2024-03-26 21:14:19','2025-09-21 10:14:39','global',NULL,NULL),
('1cb097b0bc4752e1a8271ca75c1952df','system','system','sys_glide_object','Integer','0','sys_glide_object_1cb097b0bc4752e1a8271ca75c1952df','integer','Integer','2024-03-26 20:50:02','2025-09-21 10:24:24','global',NULL,NULL),
('300a07fc74dd53b698a5cdb33936e714','system','system','sys_glide_object','Script','0','sys_glide_object_300a07fc74dd53b698a5cdb33936e714','script','Script','2024-03-26 21:22:36','2025-09-21 09:24:08',NULL,NULL,NULL),
('316855775a98511fa2c981708a838876','system','system','sys_glide_object','translated_text','0','sys_glide_object_316855775a98511fa2c981708a838876','translated_text','Translated Text','2025-10-02 22:55:12','2025-10-02 22:57:14','global',NULL,NULL),
('33d94dbfaf22598d952331a4b56dfe1a','system','system','sys_glide_object','Floating Point Number','0','sys_glide_object_33d94dbfaf22598d952331a4b56dfe1a','float','Floating Point Number','2024-03-26 21:05:54','2025-09-21 10:20:49','global',NULL,NULL),
('3933603a0f975bdbb442b3f77db606bb','system','system','sys_glide_object','Date/Time','0','sys_glide_object_3933603a0f975bdbb442b3f77db606bb','datetime','Date/Time','2024-03-26 21:00:51','2025-09-21 10:23:36','global',NULL,NULL),
('3ed4b21d877e53868d9ac613d1de1fc6','system','system','sys_glide_object','Translated Field','0','sys_glide_object_3ed4b21d877e53868d9ac613d1de1fc6','translated_field','Translated Field','2025-08-27 19:30:03','2025-09-21 09:20:04','global',NULL,NULL),
('44837f530db25b46866b92b074290f30','system','system','sys_glide_object','Password (2 Way Encrypted)','0','sys_glide_object_44837f530db25b46866b92b074290f30','password2','Password (2 Way Encrypted)','2024-03-26 21:20:54','2025-09-21 10:08:32','global',NULL,NULL),
('4dc9c287d4555dfa9c440c1b21b97f05','system','system','sys_glide_object','Journal List','0','sys_glide_object_4dc9c287d4555dfa9c440c1b21b97f05','journal_list','Journal List','2024-03-26 21:17:47','2025-09-21 10:12:00','global',NULL,NULL),
('5314b3ea306e535e8203f0cd8428d160','system','system','sys_glide_object','Sys ID','0','sys_glide_object_5314b3ea306e535e8203f0cd8428d160','GUID','Sys ID (GUID)','2024-03-26 21:15:43','2025-10-02 19:45:08','global',NULL,NULL),
('611be76ed6445d1dab9a67143a1ab648','system','system','sys_glide_object','Conditions','0','sys_glide_object_611be76ed6445d1dab9a67143a1ab648','conditions','Conditions','2024-03-26 21:12:22','2025-09-21 10:17:02','global',NULL,NULL),
('63c53dad3e9a55fcb8d568a471ae3ef4','system','system','sys_glide_object','Name/Values','0','sys_glide_object_63c53dad3e9a55fcb8d568a471ae3ef4','name_values','Name/Values','2024-03-26 21:19:11','2025-09-21 10:09:27','global',NULL,NULL),
('661b503eb2075bc9ad126460550acb0b','system','system','sys_glide_object','System Class Name','0','sys_glide_object_661b503eb2075bc9ad126460550acb0b','sys_class_name','System Class Name','2024-03-26 21:24:30','2025-09-21 09:23:51',NULL,NULL,NULL),
('67e6c6092a4454738992e3d28801a0bb','system','system','sys_glide_object','Reference','0','sys_glide_object_67e6c6092a4454738992e3d28801a0bb','reference','Reference','2024-03-26 21:08:54','2025-09-21 10:19:32','global',NULL,NULL),
('70a2861dfa465045974b0eb81576c4f6','system','system','sys_glide_object','Password (1 Way Encrypted)','0','sys_glide_object_70a2861dfa465045974b0eb81576c4f6','password','Password (1 Way Encrypted)','2024-03-26 21:20:39','2025-09-21 10:09:01','global',NULL,NULL),
('754b3b9380fd5169b15e2ed33f0b59b0','system','system','sys_glide_object','Field Name','0','sys_glide_object_754b3b9380fd5169b15e2ed33f0b59b0','field_name','Field Name','2024-03-26 21:13:45','2025-09-21 10:15:13','global',NULL,NULL),
('82555faa4de15cfeb9add096df33a85c','system','system','sys_glide_object','Currency','0','sys_glide_object_82555faa4de15cfeb9add096df33a85c','currency','Currency','2024-03-26 21:04:53','2025-09-21 10:21:29','global',NULL,NULL),
('82dee5f75c1b5fd8a96cf5aac4b514b5','system','system','sys_glide_object','String','0','sys_glide_object_82dee5f75c1b5fd8a96cf5aac4b514b5','string','String','2024-02-17 20:39:20','2025-09-21 10:25:19','global',NULL,NULL),
('8aa14ddaf7a65c5e9469ca48cc7548b6','system','system','sys_glide_object','Journal','0','sys_glide_object_8aa14ddaf7a65c5e9469ca48cc7548b6','journal','Journal','2024-03-26 21:17:14','2025-09-21 10:12:20','global',NULL,NULL),
('8eb9e48df7a95a72a913a6665a2db11c','system','system','sys_glide_object','URL','0','sys_glide_object_8eb9e48df7a95a72a913a6665a2db11c','url','URL','2024-03-26 21:25:34','2025-09-21 09:22:37',NULL,NULL,NULL),
('907864abc0cb5a0e93928066d61e1c8c','system','system','sys_glide_object','User Roles','0','sys_glide_object_907864abc0cb5a0e93928066d61e1c8c','user_roles','User Roles','2025-08-27 19:22:13','2025-09-21 09:20:41','global',NULL,NULL),
('93f0be82e0f8503c9f5718c977d21ae9','system','system','sys_glide_object','Email','0','sys_glide_object_93f0be82e0f8503c9f5718c977d21ae9','email','Email','2024-03-26 21:13:01','2025-09-21 10:16:13','global',NULL,NULL),
('9dd07be9df565ff1a80b25ab755ae219','system','system','sys_glide_object','Radio Button Choice','0','sys_glide_object_9dd07be9df565ff1a80b25ab755ae219','radio','Radio Button Choice','2024-03-26 21:22:07','2025-09-21 10:06:42','global',NULL,NULL),
('9f47180cb03a5483a238c807090d5f1c','system','system','sys_glide_object','Table Name','0','sys_glide_object_9f47180cb03a5483a238c807090d5f1c','table_name','Table Name','2024-03-26 21:24:49','2025-09-21 09:23:30',NULL,NULL,NULL),
('a1121556417f5a889e0552e6f2e2b819','system','system','sys_glide_object','Choice','0','sys_glide_object_a1121556417f5a889e0552e6f2e2b819','choice','Choice','2024-03-26 21:10:12','2025-09-21 10:18:14','global',NULL,NULL),
('a3ab272594b755d9b08e857013e8159b','system','system','sys_glide_object','Date','0','sys_glide_object_a3ab272594b755d9b08e857013e8159b','date','Date','2024-03-26 20:58:27','2025-09-21 11:03:41','global',NULL,NULL),
('b3b97f9187e55017aa680a6037820832','system','system','sys_glide_object','True/False','0','sys_glide_object_b3b97f9187e55017aa680a6037820832','boolean','True/False','2024-03-26 20:47:43','2025-09-21 10:24:50','global',NULL,NULL),
('c7ad4e3135dc5c48b6aa2d334c88e7ad','system','system','sys_glide_object','JSON','0','sys_glide_object_c7ad4e3135dc5c48b6aa2d334c88e7ad','json','JSON','2024-03-26 21:18:13','2025-09-21 10:10:37','global',NULL,NULL),
('d2c1ef8958c5558cb65ae2a0f12f8128','system','system','sys_glide_object','Language','0','sys_glide_object_d2c1ef8958c5558cb65ae2a0f12f8128','language','Language','2024-03-26 21:18:43','2025-09-21 10:09:58','global',NULL,NULL),
('e0b55c9f1af75d9eb6a5cc586505b8d1','system','system','sys_glide_object','Time','0','sys_glide_object_e0b55c9f1af75d9eb6a5cc586505b8d1','time','Time','2024-03-26 21:01:42','2025-09-21 10:22:18','global',NULL,NULL),
('ea2ff4f2786b55c9b83bcc5b8f266ec0','system','system','sys_glide_object','Document ID','0','sys_glide_object_ea2ff4f2786b55c9b83bcc5b8f266ec0','document_id','Document ID','2024-03-26 21:08:09','2025-09-21 10:20:07','global',NULL,NULL);
/*!40000 ALTER TABLE `sys_glide_object` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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

LOCK TABLES `sys_metadata` WRITE;
/*!40000 ALTER TABLE `sys_metadata` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sys_metadata` VALUES
('058e6fffc8cf59ca83dfc7f510797511','system','system','sys_dictionary','reference_key','0','sys_dictionary_sys_dictionary_reference_key','2025-09-21 13:40:10','2025-09-21 13:40:10','global',NULL,NULL),
('0655d993d3515236a8ee86b837e7e43f','system','system','sys_dictionary','title','0','sys_dictionary_0655d993d3515236a8ee86b837e7e43f','2025-08-27 20:14:30','2025-08-27 20:14:30','global',NULL,NULL),
('0671f552394b5f8ea86ac8b65e656247','system','system','sys_db_object','Sys App Module','0','sys_db_object_0671f552394b5f8ea86ac8b65e656247','2025-08-27 18:09:45','2025-08-27 18:09:45','global',NULL,NULL),
('0684810e97905ad595f8f1b7e0d7f5ac','system','system','sys_dictionary','test11','0','sys_dictionary_0684810e97905ad595f8f1b7e0d7f5ac','2025-08-28 20:25:49','2025-08-28 20:25:49','global',NULL,NULL),
('0a6c530583715aac8a269410ec767792','system','system','sys_dictionary','sys_name','0',NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL),
('0f18ae2950095510841ebbac13c6294a','system','system','sys_dictionary','description','0','sys_dictionary_0f18ae2950095510841ebbac13c6294a','2025-08-27 19:38:58','2025-08-27 19:38:58','global',NULL,NULL),
('123a611fff025a16ace4ca715ddef2ba','system','system','sys_dictionary','query','0','sys_dictionary_123a611fff025a16ace4ca715ddef2ba','2025-08-27 20:28:12','2025-08-27 20:28:12','global',NULL,NULL),
('1291a864dfac54d892c2b2e4924e169c','system','system','sys_dictionary','name','0','sys_dictionary_1291a864dfac54d892c2b2e4924e169c','2025-08-27 20:26:33','2025-08-27 20:26:33','global',NULL,NULL),
('143330a149ec58c7964e10822450abbc','system','system','sys_dictionary','test1','0','sys_dictionary_143330a149ec58c7964e10822450abbc','2025-08-28 19:39:44','2025-08-28 19:39:44','global',NULL,NULL),
('1744788797415101b4ef71bd88240b9b','system','system','sys_db_object','sys_dictionary','0',NULL,'2024-03-26 21:41:10','2024-03-26 21:41:10',NULL,NULL,NULL),
('188d08da1a8d514d9e5916f06cc47957','system','system','sys_dictionary','Name','0','sys_dictionary_sys_scope_name','2025-10-02 22:58:38','2025-10-02 22:58:38',NULL,NULL,NULL),
('1c1220b982a8567496dbc2230f4acb42','system','system','sys_dictionary','Sys ID','0','sys_dictionary_sys_package_sys_id','2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL),
('1c596175c155588f84623ed6663c397c','system','system','sys_db_object','Sys Properties','0','sys_db_object_1c596175c155588f84623ed6663c397c','2025-08-28 16:54:21','2025-08-28 16:54:21','global',NULL,NULL),
('1d51694ac0fc51ba9b320c69ed0dada5','system','system','sys_dictionary','order','0','sys_dictionary_1d51694ac0fc51ba9b320c69ed0dada5','2025-08-27 20:19:36','2025-08-27 20:19:36','global',NULL,NULL),
('1f0972509b1a56d4b0bd57b5622c7367','system','system','sys_dictionary','test_66','0','sys_dictionary_test_test_66','2025-09-21 19:41:10','2025-09-21 19:41:10','global',NULL,NULL),
('22ca0d71ea605ef684a70974fc406197','system','system','sys_dictionary','test_44','0','sys_dictionary_test_test_44','2025-09-21 09:14:30','2025-09-21 09:14:30','global',NULL,NULL),
('266fcfdce4125ad69ad0dc54ce272574','system','system','sys_dictionary','sys_scope','0',NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL),
('2a3a5776d09856d49af3146c0001daf6','system','system','sys_dictionary','Created','0','sys_dictionary_sys_db_object_sys_created_on','2025-10-02 20:49:54','2025-10-02 20:49:54','global',NULL,NULL),
('2a7db5cc99f654c98e20165f0e9a8021','system','system','sys_dictionary','sys_updated_on','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('2a904fb27ce6506c968fbdc87c4e2e93','system','system','sys_dictionary','window_name','0','sys_dictionary_2a904fb27ce6506c968fbdc87c4e2e93','2025-08-27 20:29:38','2025-08-27 20:29:38','global',NULL,NULL),
('31f9131c9ddf516ba3a09e87350144da','system','system','sys_dictionary','sys_id','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('357c481ef36a59c1b8c5c77f9b713573','system','system','sys_dictionary','test1','0','sys_dictionary_357c481ef36a59c1b8c5c77f9b713573','2025-08-28 19:52:08','2025-08-28 19:52:08','global',NULL,NULL),
('3601f78f982b5213836a1c7a7f5dcc8d','system','system','sys_db_object','Application Menu','0','sys_db_object_3601f78f982b5213836a1c7a7f5dcc8d','2025-08-26 11:39:55','2025-08-26 11:39:55','global',NULL,NULL),
('38396ff4de8c581d8d6f15899b8b6849','system','system','sys_dictionary','sys_update_name','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('42d21e3d23cd5aa9b70f7a3fe1ba72e3','system','system','sys_dictionary','hint','0','sys_dictionary_42d21e3d23cd5aa9b70f7a3fe1ba72e3','2025-08-27 19:38:12','2025-08-27 19:38:12','global',NULL,NULL),
('4578052cf7485eae9481dd1b131890db','system','system','sys_dictionary','Updates','0','sys_dictionary_sys_package_sys_mod_count','2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL),
('45f49e3d53975ba1ab63e218a2b39d64','system','system','sys_dictionary','override_menu_roles','0','sys_dictionary_45f49e3d53975ba1ab63e218a2b39d64','2025-08-27 20:30:41','2025-08-27 20:30:41','global',NULL,NULL),
('46148bfd1d6a56cabcb52a21b145deb8','system','system','sys_dictionary','test1','0','sys_dictionary_46148bfd1d6a56cabcb52a21b145deb8','2025-08-28 19:40:50','2025-08-28 19:40:50','global',NULL,NULL),
('47b3dc3a88a85005a073186778df8bef','system','system','sys_dictionary','test2','0','sys_dictionary_47b3dc3a88a85005a073186778df8bef','2025-08-28 20:17:01','2025-08-28 20:17:01','global',NULL,NULL),
('4d2762fc68d55973825608178eaaab1a','system','system','sys_dictionary','ID','0','sys_dictionary_test_u_ID','2025-10-02 19:47:01','2025-10-02 19:47:00','global',NULL,NULL),
('4e90035093b95a8e9c73159a805ea048','system','system','sys_dictionary','sys_policy','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('4ee7f131ccbf588194d609af71adc2c1','system','system','sys_db_object','Sys Package','0','sys_db_object_4ee7f131ccbf588194d609af71adc2c1','2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL),
('59ebb809de895634a9034c51a2002554','system','system','sys_dictionary','test1','0','sys_dictionary_59ebb809de895634a9034c51a2002554','2025-08-28 19:59:00','2025-08-28 19:59:00','global',NULL,NULL),
('5ab0789c05a058a4be03b4195bc87739','system','system','sys_dictionary','sys_scope','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('5adbf03c8d855b5e9c3b84d63626a8ee','system','system','sys_dictionary','sys_class_name','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('5c371cc5d9215e5abccfe28f1d65ad08','system','system','sys_dictionary','is_private','0','sys_dictionary_5c371cc5d9215e5abccfe28f1d65ad08','2025-08-28 17:09:17','2025-08-28 17:09:17','global',NULL,NULL),
('5ecccd58e9e956f6bab85a39fbc424f5','system','system','sys_dictionary','active','0','sys_dictionary_5ecccd58e9e956f6bab85a39fbc424f5','2025-08-27 19:33:45','2025-08-27 19:33:45','global',NULL,NULL),
('644e594e7af955a0ad6d132c6f6f5359','system','system','sys_dictionary','test1','0','sys_dictionary_644e594e7af955a0ad6d132c6f6f5359','2025-08-28 19:51:37','2025-08-28 19:51:37','global',NULL,NULL),
('6481319422a95989b71ed8f8b6f32cc9','system','system','sys_dictionary','type','0','sys_dictionary_6481319422a95989b71ed8f8b6f32cc9','2025-08-28 17:05:58','2025-08-28 17:05:58','global',NULL,NULL),
('64e50a9979685f35a9892c8e686ac03b','system','system','sys_dictionary','roles','0','sys_dictionary_64e50a9979685f35a9892c8e686ac03b','2025-08-27 19:36:02','2025-08-27 19:36:02','global',NULL,NULL),
('657ad65a2bd552cc8de23fcb25039964','system','system','sys_dictionary','link_type','0','sys_dictionary_657ad65a2bd552cc8de23fcb25039964','2025-08-27 20:25:41','2025-08-27 20:25:41','global',NULL,NULL),
('693e0733a10b5dd3adfa0f83b83907ec','system','system','sys_dictionary','Updated','0','sys_dictionary_sys_package_sys_updated_on','2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL),
('6c34b895a44e5a869f7707adb144fdf1','system','system','sys_dictionary','view_name','0','sys_dictionary_6c34b895a44e5a869f7707adb144fdf1','2025-08-27 20:27:08','2025-08-27 20:27:08','global',NULL,NULL),
('702ecc40c0ea588fa5d5bfb8ef74d854','system','system','sys_dictionary','test22','0','sys_dictionary_test_test22','2025-08-28 20:38:20','2025-08-28 20:38:20','global',NULL,NULL),
('7127798174a95155bc73516661fb4e61','system','system','sys_dictionary','sys_created_by','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('7423c7c89df75a2e89083c38b3d3e530','system','system','sys_dictionary','sys_policy','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('7a061b322a885a358300b62807a2512f','system','system','sys_dictionary','sys_created_on','0',NULL,'2025-08-26 11:39:55','2025-08-26 11:39:55',NULL,NULL,NULL),
('7a2b2cd40db45be9902ce5f98d7e867c','system','system','sys_dictionary','application','0','sys_dictionary_7a2b2cd40db45be9902ce5f98d7e867c','2025-08-27 20:15:29','2025-08-27 20:15:29','global',NULL,NULL),
('7e74e9e548f65caa92a4eb35a699f0d2','system','system','sys_dictionary','sys_created_by','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('8228716c38605ad09f6ff9d8fa8de9bc','system','system','sys_dictionary','sys_metadata','0','sys_dictionary_8228716c38605ad09f6ff9d8fa8de9bc','2025-08-28 17:56:23','2025-08-28 17:56:23','global',NULL,NULL),
('850be2aef9ef5ee9a3d009c743e87c1f','system','system','sys_dictionary','sys_updated_on','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:55',NULL,NULL,NULL),
('870d1cf4c7eb53749c5786fdfb00c3c2','system','system','sys_dictionary','test_55','0','sys_dictionary_test_test_55','2025-09-21 13:28:29','2025-09-21 13:28:29','global',NULL,NULL),
('88d31ef66fbe577aa33ed9e27c225e7d','system','system','sys_dictionary','test1','0','sys_dictionary_88d31ef66fbe577aa33ed9e27c225e7d','2025-08-28 20:15:17','2025-08-28 20:15:17','global',NULL,NULL),
('8af9702b9b335873b023d1ebb113db1a','system','system','sys_dictionary','sys_glide_object','0','sys_dictionary_8af9702b9b335873b023d1ebb113db1a','2025-08-28 18:19:25','2025-08-28 18:19:25','global',NULL,NULL),
('8c0b511f4e4154e988f7a31091fd1205','system','system','sys_dictionary','title','0','sys_dictionary_test_title','2025-08-28 20:42:17','2025-08-28 20:42:17','global',NULL,NULL),
('8cfd60fdf04b530c80b21225cf11b283','system','system','sys_dictionary','active','0','sys_dictionary_8cfd60fdf04b530c80b21225cf11b283','2025-08-27 20:22:32','2025-08-27 20:22:32','global',NULL,NULL),
('8d937577030254e89e5e3a7e7f0a477b','system','system','sys_db_object','Test','0','sys_db_object_8d937577030254e89e5e3a7e7f0a477b','2025-08-28 19:35:00','2025-08-28 19:35:00',NULL,NULL,NULL),
('8f4ed601838b582890ed0c89b38547cd','system','system','sys_dictionary','sys_scope','0','sys_dictionary_sys_scope','2025-10-02 22:58:38','2025-10-02 22:58:38',NULL,NULL,NULL),
('8fdc8924d273513887317f76bc436eaf','system','system','sys_dictionary','sys_package','0','sys_dictionary_sys_package','2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL),
('94408b65c1885c3a8375840e6c3f5b5b','system','system','sys_dictionary','title','0','sys_dictionary_94408b65c1885c3a8375840e6c3f5b5b','2025-08-27 19:31:04','2025-08-27 19:31:04','global',NULL,NULL),
('964419cb15cd5062b2676569b7ba076d','system','system','sys_db_object','sys_db_object','0',NULL,'2024-03-26 21:35:17','2024-03-26 21:35:17',NULL,NULL,NULL),
('973d772f7caf5280941057d00d79f80d','system','system','sys_dictionary','description','0','sys_dictionary_973d772f7caf5280941057d00d79f80d','2025-08-28 17:03:42','2025-08-28 17:03:42','global',NULL,NULL),
('9a3e83a026df5e1984ededdd00ed5e95','system','system','sys_dictionary','Updated by','0','sys_dictionary_sys_package_sys_updated_by','2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL),
('9c56c7264607557c86370330bbfe2a65','system','system','sys_dictionary','test_66','0','sys_dictionary_test_test_66','2025-10-02 15:59:57','2025-10-02 15:59:57','global',NULL,NULL),
('9e0a93afa9b45257b27379fac37d8db7','system','system','sys_dictionary','ignore_cache','0','sys_dictionary_9e0a93afa9b45257b27379fac37d8db7','2025-08-28 17:08:17','2025-08-28 17:08:17','global',NULL,NULL),
('9ef334b73cbe50b9885cec0f257bf36f','system','system','sys_dictionary','Name','0','sys_dictionary_sys_package_name','2025-10-02 22:51:39','2025-10-02 22:51:39',NULL,NULL,NULL),
('a26172ca962f58dab7380049586502ea','system','system','sys_dictionary','test1','0','sys_dictionary_a26172ca962f58dab7380049586502ea','2025-08-28 19:40:09','2025-08-28 19:40:09','global',NULL,NULL),
('a2fa6b8a7aa4540e8c9ee2bb59858fcd','system','system','sys_dictionary','roles','0','sys_dictionary_a2fa6b8a7aa4540e8c9ee2bb59858fcd','2025-08-27 20:23:04','2025-08-27 20:23:04','global',NULL,NULL),
('a8e63b5a574a5cfd8c153b29e84f031c','system','system','sys_dictionary','sys_dictionary','0','sys_dictionary_a8e63b5a574a5cfd8c153b29e84f031c','2025-08-28 18:17:35','2025-08-28 18:17:35','global',NULL,NULL),
('a90c3cddc0ab5147bb05acd3f6bf6acb','system','system','sys_db_object','Sys Scope','0','sys_db_object_a90c3cddc0ab5147bb05acd3f6bf6acb','2025-10-02 22:58:38','2025-10-02 22:58:38',NULL,NULL,NULL),
('aaa73c550474598fa8b0302e64ff4f64','system','system','sys_dictionary','test11','0','sys_dictionary_aaa73c550474598fa8b0302e64ff4f64','2025-08-28 20:26:43','2025-08-28 20:26:43','global',NULL,NULL),
('ab034f25448251e18481f64525237c9a','system','system','sys_dictionary','Created by','0','sys_dictionary_sys_package_sys_created_by','2025-10-02 22:15:22','2025-10-02 22:15:22',NULL,NULL,NULL),
('ab22299e21665dd8b47b467057c871bd','system','system','sys_dictionary','sys_name','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('ac69930fde615028984c580e9b0d1cbd','system','system','sys_dictionary','sys_updated_by','0',NULL,'2025-08-26 11:39:56','2025-08-26 11:39:56',NULL,NULL,NULL),
('ad7ec2e2941051f88df098fb9a7d5af5','system','system','sys_dictionary','sys_update_name','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('ad838af883605029a19e1007e58b00c3','system','system','sys_dictionary','test1','0','sys_dictionary_ad838af883605029a19e1007e58b00c3','2025-08-28 19:58:25','2025-08-28 19:58:25','global',NULL,NULL),
('ae816a4ab5de591097d15da7a1eaadb2','system','system','sys_dictionary','sys_properties','0','sys_dictionary_sys_properties','2025-08-28 16:54:21','2025-08-28 16:54:21','global',NULL,NULL),
('afd87e152062572298011f505893be1b','system','system','sys_dictionary','test11','0','sys_dictionary_afd87e152062572298011f505893be1b','2025-08-28 20:25:17','2025-08-28 20:25:17','global',NULL,NULL),
('b6a896ee08005605a15a91d4e0d497df','system','system','sys_dictionary','TEST 77','0','sys_dictionary_test_test_77','2025-10-02 16:22:14','2025-10-02 16:22:14','global',NULL,NULL),
('beeab6a0d2e95e899988cc0035cd1b8b','system','system','sys_dictionary','read_roles','0','sys_dictionary_beeab6a0d2e95e899988cc0035cd1b8b','2025-08-28 17:10:13','2025-08-28 17:10:13','global',NULL,NULL),
('c1055fb22f9c5e319d03b66ef69f9373','system','system','sys_dictionary','test1','0','sys_dictionary_c1055fb22f9c5e319d03b66ef69f9373','2025-08-28 20:01:34','2025-08-28 20:01:34','global',NULL,NULL),
('c568415874fb544f9f3281ebbd2552c1','system','system','sys_dictionary','filter','0','sys_dictionary_c568415874fb544f9f3281ebbd2552c1','2025-08-27 20:29:01','2025-08-27 20:29:01','global',NULL,NULL),
('c9174019000b56e8ba50df358da29db0','system','system','sys_dictionary','hint','0','sys_dictionary_c9174019000b56e8ba50df358da29db0','2025-08-27 20:21:59','2025-08-27 20:21:59','global',NULL,NULL),
('cac6ce0f1689569ea35ef0f0fd2868c7','system','system','sys_dictionary','sys_app_module','0','sys_dictionary_sys_app_module','2025-08-27 18:09:45','2025-08-27 18:09:45','global',NULL,NULL),
('d56500e3b65e56718012a54f75d3e5b5','system','system','sys_dictionary','name','0','sys_dictionary_d56500e3b65e56718012a54f75d3e5b5','2025-08-28 17:02:34','2025-08-28 17:02:34','global',NULL,NULL),
('d5c994a9dd8151a8ad8b89588b4b6dbb','system','system','sys_dictionary','sys_db_object','0','sys_dictionary_d5c994a9dd8151a8ad8b89588b4b6dbb','2025-08-28 18:16:27','2025-08-28 18:16:27','global',NULL,NULL),
('d88218c2d8885fdda54ba5e9a7bdcc5b','system','system','sys_dictionary','sys_app_application','0','sys_dictionary_sys_app_application','2025-08-26 11:39:55','2025-08-27 16:49:27','global',NULL,NULL),
('de72b22ad61653ab93c5a83032cdcb40','system','system','sys_dictionary','order','0','sys_dictionary_de72b22ad61653ab93c5a83032cdcb40','2025-08-27 20:16:39','2025-08-27 20:16:39','global',NULL,NULL),
('e253976775685a3bad0de209ebb685a3','system','system','sys_dictionary','Created','0','sys_dictionary_sys_package_sys_created_on','2025-10-02 22:15:22','2025-10-02 22:15:22','global',NULL,NULL),
('e49ac179cfac518284e6f5ae29e185f4','system','system','sys_dictionary','test','0','sys_dictionary_test','2025-08-28 19:35:00','2025-08-28 19:35:00',NULL,NULL,NULL),
('e593c51e74c85bfdb224b2d3cc1a535e','system','system','sys_dictionary','category','0','sys_dictionary_e593c51e74c85bfdb224b2d3cc1a535e','2025-08-27 19:37:08','2025-08-27 19:37:08','global',NULL,NULL),
('ea3a9531b3ea5377ac7668e37493e418','system','system','sys_db_object','sys_glide_object','0',NULL,'2024-03-26 21:36:09','2024-03-26 21:36:09',NULL,NULL,NULL),
('eb42e5c48b835484becaa52eef94b26e','system','system','sys_dictionary','test22','0','sys_dictionary_test_test22','2025-08-28 20:41:05','2025-08-28 20:41:05','global',NULL,NULL),
('eb9bc55adf325977970e8588ed6575b1','system','system','sys_dictionary','sys_updated_by','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('ee44ba1c14a855718a6b5729a12c4dee','system','system','sys_dictionary','test_55','0','sys_dictionary_test_test_55','2025-09-21 19:40:12','2025-09-21 19:40:12','global',NULL,NULL),
('efa8c72ec84355e891012eb61f8f9ee5','system','system','sys_dictionary','sys_id','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('f291dedd024a5a6592ac8876efb03d70','system','system','sys_dictionary','choices','0','sys_dictionary_f291dedd024a5a6592ac8876efb03d70','2025-08-28 17:04:34','2025-08-28 17:04:34','global',NULL,NULL),
('f2b436041cb8583b921bd849aaf002e1','system','system','sys_dictionary','write_roles','0','sys_dictionary_f2b436041cb8583b921bd849aaf002e1','2025-08-28 17:11:28','2025-08-28 17:11:28','global',NULL,NULL),
('f3cc40b9b6d95ab2a8bb0c9de7642346','system','system','sys_dictionary','sys_created_on','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL),
('fe184c6a54e4596da1054b027b56b83e','system','system','sys_dictionary','value','0','sys_dictionary_fe184c6a54e4596da1054b027b56b83e','2025-08-28 17:07:19','2025-08-28 17:07:19','global',NULL,NULL),
('fe78c815242c5bc0ac401dd0c5fc712d','system','system','sys_db_object','sys_metadata','0',NULL,'2024-03-26 21:34:30','2024-03-26 21:34:30',NULL,NULL,NULL),
('ffb4726824a95caa9f92063fd4379c82','system','system','sys_dictionary','sys_class_name','0',NULL,'2025-08-27 18:09:45','2025-08-27 18:09:45',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_metadata` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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
  `sys_mod_count` varchar(6) NOT NULL,
  `sys_created_on` datetime DEFAULT '0000-00-00 00:00:00',
  `sys_updated_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(100) DEFAULT '0',
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_package`
--

LOCK TABLES `sys_package` WRITE;
/*!40000 ALTER TABLE `sys_package` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `sys_package` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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

LOCK TABLES `sys_properties` WRITE;
/*!40000 ALTER TABLE `sys_properties` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `sys_properties` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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
  `sys_mod_count` varchar(6) NOT NULL,
  `name` varchar(100) DEFAULT '0',
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_scope`
--

LOCK TABLES `sys_scope` WRITE;
/*!40000 ALTER TABLE `sys_scope` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `sys_scope` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
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
  `test11` varchar(32) DEFAULT '0',
  `test22` varchar(32) DEFAULT '0',
  `title` varchar(255) DEFAULT '0',
  `test_55` varchar(32) DEFAULT '0',
  `test_66` varchar(32) DEFAULT '0',
  `test_77` varchar(40) DEFAULT '0',
  `u_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `test` VALUES
('964ccd04f6f45cd49632dddf2e6aab92','system','system','test',NULL,'0',NULL,'test_964ccd04f6f45cd49632dddf2e6aab92',NULL,NULL,'2025-09-05 13:54:17','2025-10-02 19:48:34','1291a864dfac54d892c2b2e4924e169c','3601f78f982b5213836a1c7a7f5dcc8d','fsdfsd','float','0','0','964ccd04f6f45cd49632dddf2e6aab92');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-10-12 16:45:52
