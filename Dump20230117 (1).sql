CREATE DATABASE  IF NOT EXISTS `ahv_dev` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ahv_dev`;
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ahv_dev
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add device',8,'add_device'),(30,'Can change device',8,'change_device'),(31,'Can delete device',8,'delete_device'),(32,'Can view device',8,'view_device'),(33,'Can add master contents',9,'add_mastercontents'),(34,'Can change master contents',9,'change_mastercontents'),(35,'Can delete master contents',9,'delete_mastercontents'),(36,'Can view master contents',9,'view_mastercontents'),(37,'Can add driveroperatorregistration',10,'add_driveroperatorregistration'),(38,'Can change driveroperatorregistration',10,'change_driveroperatorregistration'),(39,'Can delete driveroperatorregistration',10,'delete_driveroperatorregistration'),(40,'Can view driveroperatorregistration',10,'view_driveroperatorregistration'),(41,'Can add heavyvehivalregistration',11,'add_heavyvehivalregistration'),(42,'Can change heavyvehivalregistration',11,'change_heavyvehivalregistration'),(43,'Can delete heavyvehivalregistration',11,'delete_heavyvehivalregistration'),(44,'Can view heavyvehivalregistration',11,'view_heavyvehivalregistration'),(45,'Can add labour_contructor',12,'add_labour_contructor'),(46,'Can change labour_contructor',12,'change_labour_contructor'),(47,'Can delete labour_contructor',12,'delete_labour_contructor'),(48,'Can view labour_contructor',12,'view_labour_contructor'),(49,'Can add request_driver_ operator',13,'add_request_driver_operator'),(50,'Can change request_driver_ operator',13,'change_request_driver_operator'),(51,'Can delete request_driver_ operator',13,'delete_request_driver_operator'),(52,'Can view request_driver_ operator',13,'view_request_driver_operator'),(53,'Can add request_ heavy_ vehical',14,'add_request_heavy_vehical'),(54,'Can change request_ heavy_ vehical',14,'change_request_heavy_vehical'),(55,'Can delete request_ heavy_ vehical',14,'delete_request_heavy_vehical'),(56,'Can view request_ heavy_ vehical',14,'view_request_heavy_vehical'),(57,'Can add request_labour_contructor',15,'add_request_labour_contructor'),(58,'Can change request_labour_contructor',15,'change_request_labour_contructor'),(59,'Can delete request_labour_contructor',15,'delete_request_labour_contructor'),(60,'Can view request_labour_contructor',15,'view_request_labour_contructor'),(61,'Can add request_ sub contractor',16,'add_request_subcontractor'),(62,'Can change request_ sub contractor',16,'change_request_subcontractor'),(63,'Can delete request_ sub contractor',16,'delete_request_subcontractor'),(64,'Can view request_ sub contractor',16,'view_request_subcontractor'),(65,'Can add requirement',17,'add_requirement'),(66,'Can change requirement',17,'change_requirement'),(67,'Can delete requirement',17,'delete_requirement'),(68,'Can view requirement',17,'view_requirement'),(69,'Can add subcontractorregistration',18,'add_subcontractorregistration'),(70,'Can change subcontractorregistration',18,'change_subcontractorregistration'),(71,'Can delete subcontractorregistration',18,'delete_subcontractorregistration'),(72,'Can view subcontractorregistration',18,'view_subcontractorregistration'),(73,'Can add vedio uplaod',19,'add_vediouplaod'),(74,'Can change vedio uplaod',19,'change_vediouplaod'),(75,'Can delete vedio uplaod',19,'delete_vediouplaod'),(76,'Can view vedio uplaod',19,'view_vediouplaod');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$PA8HuCa1ZVsekpdQyqDdBN$OWGvRnjDKcgd2lOCn6oU7jV7DpNCOjJWmMdYmPd7YZ8=','2023-01-15 10:15:17.720519',1,'admin','','','admin@gmail.com',1,1,'2023-01-15 10:14:49.807064');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `device_id` int NOT NULL AUTO_INCREMENT,
  `refresh_token` varchar(500) DEFAULT NULL,
  `device_type` varchar(20) NOT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `aws_arn` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int NOT NULL,
  PRIMARY KEY (`device_id`),
  KEY `device_created_by_96906200_fk_user_user_id` (`created_by`),
  CONSTRAINT `device_created_by_96906200_fk_user_user_id` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'user','device'),(10,'user','driveroperatorregistration'),(11,'user','heavyvehivalregistration'),(12,'user','labour_contructor'),(9,'user','mastercontents'),(13,'user','request_driver_operator'),(14,'user','request_heavy_vehical'),(15,'user','request_labour_contructor'),(16,'user','request_subcontractor'),(17,'user','requirement'),(18,'user','subcontractorregistration'),(7,'user','user'),(19,'user','vediouplaod');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-01-14 16:19:31.464963'),(2,'auth','0001_initial','2023-01-14 16:19:32.262153'),(3,'admin','0001_initial','2023-01-14 16:19:32.486783'),(4,'admin','0002_logentry_remove_auto_add','2023-01-14 16:19:32.507179'),(5,'admin','0003_logentry_add_action_flag_choices','2023-01-14 16:19:32.536780'),(6,'contenttypes','0002_remove_content_type_name','2023-01-14 16:19:32.701802'),(7,'auth','0002_alter_permission_name_max_length','2023-01-14 16:19:32.798005'),(8,'auth','0003_alter_user_email_max_length','2023-01-14 16:19:32.878957'),(9,'auth','0004_alter_user_username_opts','2023-01-14 16:19:32.909163'),(10,'auth','0005_alter_user_last_login_null','2023-01-14 16:19:33.001734'),(11,'auth','0006_require_contenttypes_0002','2023-01-14 16:19:33.007009'),(12,'auth','0007_alter_validators_add_error_messages','2023-01-14 16:19:33.023972'),(13,'auth','0008_alter_user_username_max_length','2023-01-14 16:19:33.124386'),(14,'auth','0009_alter_user_last_name_max_length','2023-01-14 16:19:33.206868'),(15,'auth','0010_alter_group_name_max_length','2023-01-14 16:19:33.261310'),(16,'auth','0011_update_proxy_permissions','2023-01-14 16:19:33.285498'),(17,'auth','0012_alter_user_first_name_max_length','2023-01-14 16:19:33.368390'),(18,'sessions','0001_initial','2023-01-14 16:19:33.419967'),(19,'user','0001_initial','2023-01-14 16:19:33.563293'),(20,'user','0002_mastercontents_vehicalbasicdetail_and_more','2023-01-14 16:19:34.317206'),(21,'user','0003_alter_vehicalbasicdetail_aadhar_number_and_more','2023-01-14 16:19:34.456638'),(22,'user','0004_driveroperatorregistration_heavyvehivalregistration_and_more','2023-01-14 16:19:34.869817');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('fbikhoq8cm0psnsbt2ve8otahqp3j41x','.eJxVjMsOwiAQRf-FtSGD5TG4dN9vIDNApWogKe3K-O_apAvd3nPOfYlA21rC1vMS5iQuQonT78YUH7nuIN2p3pqMra7LzHJX5EG7HFvKz-vh_h0U6uVbD0RMgOC1VQmsjlmBZjCeHBly2jOiig540mYAMBPT2aN1BjElJhTvD87ZN2Y:1pH02n:o3Gt0B4PyU1NdSfYh7a_5jCtiP1xaAvj7Z8cw6PA5fM','2023-01-29 10:15:17.734633');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driveroperatorregistration`
--

DROP TABLE IF EXISTS `driveroperatorregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driveroperatorregistration` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `vehicalname` varchar(200) NOT NULL,
  `expriencesinyear` int NOT NULL,
  `driveroperatorname` varchar(200) NOT NULL,
  `Aadhar_number` varchar(20) NOT NULL,
  `alternet_mobilenumber` varchar(20) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `driver_image` varchar(100) NOT NULL,
  `created_by` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driveroperatorregistration`
--

LOCK TABLES `driveroperatorregistration` WRITE;
/*!40000 ALTER TABLE `driveroperatorregistration` DISABLE KEYS */;
INSERT INTO `driveroperatorregistration` VALUES (1,'mahindra',2022,'sonu','1234','7753828863','DL-2345','C:/images.jpg',2,1);
/*!40000 ALTER TABLE `driveroperatorregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heavyvehicleaddress`
--

DROP TABLE IF EXISTS `heavyvehicleaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heavyvehicleaddress` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `country_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `is_active` int DEFAULT '1',
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heavyvehicleaddress`
--

LOCK TABLES `heavyvehicleaddress` WRITE;
/*!40000 ALTER TABLE `heavyvehicleaddress` DISABLE KEYS */;
INSERT INTO `heavyvehicleaddress` VALUES (1,1,2,4,7,1,1,'1'),(2,1,2,5,8,1,1,'2'),(3,1,2,9,8,2,1,'3');
/*!40000 ALTER TABLE `heavyvehicleaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heavyvehivalregistration`
--

DROP TABLE IF EXISTS `heavyvehivalregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heavyvehivalregistration` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `vehical_name` varchar(200) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `vehical_number` varchar(500) NOT NULL,
  `manufacture_date` varchar(500) NOT NULL,
  `ownername` varchar(300) NOT NULL,
  `Aadhar_number` varchar(20) NOT NULL,
  `vehicle_image` varchar(1000) NOT NULL,
  `created_by` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heavyvehivalregistration`
--

LOCK TABLES `heavyvehivalregistration` WRITE;
/*!40000 ALTER TABLE `heavyvehivalregistration` DISABLE KEYS */;
INSERT INTO `heavyvehivalregistration` VALUES (6,'thar ','red','DL-123','15-01-2023','rahul','123456789123','http://devapi.asiyaiheavyvehicle.com/user/static/Uploaded/UserProfiles/9481afde-671b-4531-b8c3-709e6ee64ba0youtube.png',2,1),(7,'hello ','helllo','up-123','15-01-2023','panditjee','32165478987','http://devapi.asiyaiheavyvehicle.com/user/static/Uploaded/UserProfiles/9481afde-671b-4531-b8c3-709e6ee64ba0youtube.png',2,1),(8,'ram ','ram','ram-123','15-01-2023','ramnarayan','32165478987','http://devapi.asiyaiheavyvehicle.com/user/static/Uploaded/UserProfiles/9481afde-671b-4531-b8c3-709e6ee64ba0youtube.png',2,1),(9,'ram ','ram','ram-123','15-01-2023','ramnarayan','32165478987','http://devapi.asiyaiheavyvehicle.com/user/static/Uploaded/UserProfiles/9481afde-671b-4531-b8c3-709e6ee64ba0youtube.png',2,1);
/*!40000 ALTER TABLE `heavyvehivalregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labour_contructor`
--

DROP TABLE IF EXISTS `labour_contructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labour_contructor` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `labourcontractorname` varchar(300) NOT NULL,
  `labourwork` varchar(200) NOT NULL,
  `lobourinnumber` varchar(12) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `contractorAadhar_number` varchar(20) NOT NULL,
  `labour_image` varchar(100) NOT NULL,
  `created_by` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labour_contructor`
--

LOCK TABLES `labour_contructor` WRITE;
/*!40000 ALTER TABLE `labour_contructor` DISABLE KEYS */;
INSERT INTO `labour_contructor` VALUES (1,'pawan','selling','7827536359','7753828863','7827536359','images.src',2,1);
/*!40000 ALTER TABLE `labour_contructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_driver_operator`
--

DROP TABLE IF EXISTS `request_driver_operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_driver_operator` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `vehicalname` varchar(200) NOT NULL,
  `expriencesinyear` int NOT NULL,
  `driveroperatorname` varchar(200) NOT NULL,
  `Aadhar_number` varchar(20) NOT NULL,
  `alternet_mobilenumber` int NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `driver_image` varchar(500) DEFAULT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `tehsil` varchar(100) NOT NULL,
  `created_by` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_driver_operator`
--

LOCK TABLES `request_driver_operator` WRITE;
/*!40000 ALTER TABLE `request_driver_operator` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_driver_operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_heavy_vehical`
--

DROP TABLE IF EXISTS `request_heavy_vehical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_heavy_vehical` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `vehical_name` varchar(200) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `vehical_number` varchar(500) NOT NULL,
  `ownername` varchar(300) NOT NULL,
  `Aadhar_number` varchar(20) NOT NULL,
  `vehicle_image` varchar(255) DEFAULT NULL,
  `manufectoring_date` varchar(100) NOT NULL,
  `created_by` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_heavy_vehical`
--

LOCK TABLES `request_heavy_vehical` WRITE;
/*!40000 ALTER TABLE `request_heavy_vehical` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_heavy_vehical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_labour_contructor`
--

DROP TABLE IF EXISTS `request_labour_contructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_labour_contructor` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `labourcontractorname` varchar(300) NOT NULL,
  `labourwork` varchar(200) NOT NULL,
  `lobourinnumber` varchar(12) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `contractorAadhar_number` varchar(20) NOT NULL,
  `labour_image` varchar(500) DEFAULT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `tehsil` varchar(100) NOT NULL,
  `created_by` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_labour_contructor`
--

LOCK TABLES `request_labour_contructor` WRITE;
/*!40000 ALTER TABLE `request_labour_contructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_labour_contructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_subcontractor`
--

DROP TABLE IF EXISTS `request_subcontractor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_subcontractor` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `contractorname` varchar(100) NOT NULL,
  `firmname` varchar(500) NOT NULL,
  `expriencesinyear` int NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `Aadhar_number` varchar(20) NOT NULL,
  `subcontractor_image` varchar(500) DEFAULT NULL,
  `created_by` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_subcontractor`
--

LOCK TABLES `request_subcontractor` WRITE;
/*!40000 ALTER TABLE `request_subcontractor` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_subcontractor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement`
--

DROP TABLE IF EXISTS `requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirement` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `requirement_image` varchar(500) NOT NULL,
  `created_by` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement`
--

LOCK TABLES `requirement` WRITE;
/*!40000 ALTER TABLE `requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcontractorregistration`
--

DROP TABLE IF EXISTS `subcontractorregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcontractorregistration` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `contractorname` varchar(100) NOT NULL,
  `firmname` varchar(500) NOT NULL,
  `expriencesinyear` int NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `Aadhar_number` varchar(20) NOT NULL,
  `subcontractor_image` varchar(500) NOT NULL,
  `created_by` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcontractorregistration`
--

LOCK TABLES `subcontractorregistration` WRITE;
/*!40000 ALTER TABLE `subcontractorregistration` DISABLE KEYS */;
INSERT INTO `subcontractorregistration` VALUES (1,'Rajpal yadav','bootick',20,'DL-1212','123456789','http://devapi.asiyaiheavyvehicle.com/user/static/Uploaded/UserProfiles/62861f98-d4c6-4677-bcca-f407b9b54628image_picker493152939838120239.jpg',2,1);
/*!40000 ALTER TABLE `subcontractorregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `country_code` int DEFAULT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `otp` varchar(4) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `updated_by` int DEFAULT NULL,
  `user_type` varchar(20) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,91,'7753828863','3137','2023-01-15 14:12:39.781638','2023-01-15 14:12:39.781854',0,'USER',NULL,NULL,NULL,1,0,NULL),(2,NULL,NULL,91,'7827536359','9339','2023-01-15 14:31:49.106293','2023-01-15 14:31:49.106353',0,'USER',NULL,NULL,NULL,1,0,NULL),(3,NULL,NULL,91,'9335194390','7027','2023-01-16 07:40:27.927586','2023-01-16 07:40:27.927682',0,'USER',NULL,NULL,NULL,1,0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mastercontents`
--

DROP TABLE IF EXISTS `user_mastercontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_mastercontents` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL,
  `relate_to` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mastercontents`
--

LOCK TABLES `user_mastercontents` WRITE;
/*!40000 ALTER TABLE `user_mastercontents` DISABLE KEYS */;
INSERT INTO `user_mastercontents` VALUES (1,'country','india',0),(2,'state','UttarPradesh',1),(3,'district','Farrukhabad',2),(4,'distict','Kannauj',2),(5,'district','Ghaziabad',2),(6,'city','Fatehgarh',3),(7,'city','Chhribramu',4),(8,'city','Noida',5);
/*!40000 ALTER TABLE `user_mastercontents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vedioupload`
--

DROP TABLE IF EXISTS `vedioupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vedioupload` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `image_uplaod` varchar(500) NOT NULL,
  `vediourl` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vedioupload`
--

LOCK TABLES `vedioupload` WRITE;
/*!40000 ALTER TABLE `vedioupload` DISABLE KEYS */;
/*!40000 ALTER TABLE `vedioupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ahv_dev'
--
/*!50003 DROP PROCEDURE IF EXISTS `driveroperator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `driveroperator`()
BEGIN
select do.vehicalname,do.expriencesinyear,do.driveroperatorname,do.Aadhar_number,
do.alternet_mobilenumber,do.license_number,do.driver_image,do.created_by as postedById,do.is_active,
u.first_name as postedByName, u.mobile_number,umc.value as country,umc1.value as state,umc2.value as distict
from  driveroperatorregistration do left join user u on do.created_by=u.user_id 
left join heavyvehicleaddress hvca on hvca.user_id = u.user_id
left join user_mastercontents umc on umc.Id = hvca.country_id and umc.relate_to = 0
left join user_mastercontents umc1 on umc1.Id = hvca.state_id and umc1.relate_to = 1
left join user_mastercontents umc2 on umc2.Id = hvca.district_id and umc2.relate_to = 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getvehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getvehicle`()
BEGIN
select hr.vehical_name,hr.company_name,hr.vehical_number,hr.manufacture_date,
hr.ownername,hr.Aadhar_number,hr.vehicle_image,hr.created_by as postedById,hr.is_active,
u.first_name as postedByName, u.mobile_number,umc.value as country,umc1.value as state,umc2.value as distict
from  heavyvehivalregistration hr left join user u on hr.created_by=u.user_id 
left join heavyvehicleaddress hvca on hvca.user_id = u.user_id
left join user_mastercontents umc on umc.Id = hvca.country_id and umc.relate_to = 0
left join user_mastercontents umc1 on umc1.Id = hvca.state_id and umc1.relate_to = 1
left join user_mastercontents umc2 on umc2.Id = hvca.district_id and umc2.relate_to = 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `laour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `laour`()
BEGIN
	select la.labourcontractorname, la.labourwork, la.lobourinnumber, la.mobile_number,
    la.contractorAadhar_number, la.labour_image,la.created_by as postedById,la.is_active,
u.first_name as postedByName, u.mobile_number,umc.value as country,umc1.value as state,umc2.value as distict
from  labour_contructor la left join user u on la.created_by=u.user_id 
left join heavyvehicleaddress hvca on hvca.user_id = u.user_id
left join user_mastercontents umc on umc.Id = hvca.country_id and umc.relate_to = 0
left join user_mastercontents umc1 on umc1.Id = hvca.state_id and umc1.relate_to = 1
left join user_mastercontents umc2 on umc2.Id = hvca.district_id and umc2.relate_to = 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `subcontrutor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `subcontrutor`()
BEGIN
select la.contractorname, la.firmname, la.expriencesinyear, la.license_number,
    la.Aadhar_number, la.subcontractor_image,la.created_by as postedById,la.is_active,
u.first_name as postedByName, u.mobile_number,umc.value as country,umc1.value as state,umc2.value as distict
from  subcontractorregistration la left join user u on la.created_by=u.user_id 
left join heavyvehicleaddress hvca on hvca.user_id = u.user_id
left join user_mastercontents umc on umc.Id = hvca.country_id and umc.relate_to = 0
left join user_mastercontents umc1 on umc1.Id = hvca.state_id and umc1.relate_to = 1
left join user_mastercontents umc2 on umc2.Id = hvca.district_id and umc2.relate_to = 2;
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

-- Dump completed on 2023-01-17 12:11:06
