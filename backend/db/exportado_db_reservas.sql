-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_reservas
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$11hzPWFHRFBWD2E1mvNLLW$tk2G/nPmlczPO5pcbvAjqC4DGlpAlGnA1IPVc+lJEV8=','2023-12-08 15:24:30.406832',1,'admin','','','',1,1,'2023-12-08 05:25:40.425988');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-08 10:43:36.765828','1','Genero object (1)',1,'[{\"added\": {}}]',8,1),(2,'2023-12-08 15:29:15.942980','1','Sainte Jeanne Boutique & Spa',1,'[{\"added\": {}}]',7,1),(3,'2023-12-08 16:04:29.811601','2','Vila Da Santa',1,'[{\"added\": {}}]',7,1),(4,'2023-12-08 16:07:06.977480','3','Tierra Patagonia',1,'[{\"added\": {}}]',7,1),(5,'2023-12-08 16:09:30.989119','4','La Bamba de Areco',1,'[{\"added\": {}}]',7,1),(6,'2023-12-08 16:11:48.993997','5','Ponta dos Ganchos',1,'[{\"added\": {}}]',7,1),(7,'2023-12-08 16:13:14.127311','6','Vik Chile',1,'[{\"added\": {}}]',7,1),(8,'2023-12-08 16:15:10.879007','7','Campo Tinto',1,'[{\"added\": {}}]',7,1),(9,'2023-12-08 16:17:21.977300','8','Rincón del Socorro',1,'[{\"added\": {}}]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'api','genero'),(7,'api','hotel'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-08 04:14:13.586829'),(2,'auth','0001_initial','2023-12-08 04:14:13.938443'),(3,'admin','0001_initial','2023-12-08 04:14:14.025580'),(4,'admin','0002_logentry_remove_auto_add','2023-12-08 04:14:14.030562'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-08 04:14:14.034734'),(6,'contenttypes','0002_remove_content_type_name','2023-12-08 04:14:14.089760'),(7,'auth','0002_alter_permission_name_max_length','2023-12-08 04:14:14.129302'),(8,'auth','0003_alter_user_email_max_length','2023-12-08 04:14:14.177596'),(9,'auth','0004_alter_user_username_opts','2023-12-08 04:14:14.182580'),(10,'auth','0005_alter_user_last_login_null','2023-12-08 04:14:14.223102'),(11,'auth','0006_require_contenttypes_0002','2023-12-08 04:14:14.225095'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-08 04:14:14.231076'),(13,'auth','0008_alter_user_username_max_length','2023-12-08 04:14:14.276188'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-08 04:14:14.359959'),(15,'auth','0010_alter_group_name_max_length','2023-12-08 04:14:14.398297'),(16,'auth','0011_update_proxy_permissions','2023-12-08 04:14:14.404277'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-08 04:14:14.441338'),(18,'sessions','0001_initial','2023-12-08 04:14:14.467776');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2jffwlcxe69iiqfe5v56xq72raofc2ey','.eJxVjMsOwiAQRf-FtSE8pggu3fsNZIahUjWQlHZl_HfbpAvd3nPOfYuI61Li2vMcJxYXocXpdyNMz1x3wA-s9yZTq8s8kdwVedAub43z63q4fwcFe9lq461KwSElo_0IZzs6rY0PngGHDTCbrCmgdQReEZIC0F5ZYoasaBCfL84CN5A:1rBTUJ:M0TyrfIzocDloRqYyEN-NpgLymlIbD7bvVcIad_eAmY','2023-12-22 05:33:23.566824'),('9o90cfc6el9q8gg17y1i4debmk7auzfw','.eJxVjMsOwiAQRf-FtSE8pggu3fsNZIahUjWQlHZl_HfbpAvd3nPOfYuI61Li2vMcJxYXocXpdyNMz1x3wA-s9yZTq8s8kdwVedAub43z63q4fwcFe9lq461KwSElo_0IZzs6rY0PngGHDTCbrCmgdQReEZIC0F5ZYoasaBCfL84CN5A:1rBciM:EaUKxwawV0WNRK9jatEU8ev4erU-Vu6F7X9M2DKahvk','2023-12-22 15:24:30.412812');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero_documento` varchar(12) DEFAULT NULL,
  `apellido_paterno` varchar(100) DEFAULT NULL,
  `apellido_materno` varchar(100) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero_id` int NOT NULL,
  `tipodocumento_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_cliente_tbl_genero` (`genero_id`),
  KEY `fk_tbl_cliente_tbl_tipodocumento1` (`tipodocumento_id`),
  CONSTRAINT `fk_tbl_cliente_tbl_genero` FOREIGN KEY (`genero_id`) REFERENCES `tbl_genero` (`id`),
  CONSTRAINT `fk_tbl_cliente_tbl_tipodocumento1` FOREIGN KEY (`tipodocumento_id`) REFERENCES `tbl_tipodocumento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES (1,'42221122','PEREZ','GUTIERREZ','JOSE','966989292','JOSE@GMAIL.COM','1990-11-20',1,1),(2,'42454512','OCHANTE','CUBA','LUIS','966949494','LUIS@GMAIL.COM','1990-08-01',1,1);
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genero`
--

DROP TABLE IF EXISTS `tbl_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'MASCULINO'),(2,'FEMENINO');
/*!40000 ALTER TABLE `tbl_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_habitacion`
--

DROP TABLE IF EXISTS `tbl_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_habitacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `hotel_id` int NOT NULL,
  `tipohabitacion_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_habitacion_tbl_hotel1` (`hotel_id`),
  KEY `fk_tbl_habitacion_tbl_tipohabitacion1` (`tipohabitacion_id`),
  CONSTRAINT `fk_tbl_habitacion_tbl_hotel1` FOREIGN KEY (`hotel_id`) REFERENCES `tbl_hotel` (`id`),
  CONSTRAINT `fk_tbl_habitacion_tbl_tipohabitacion1` FOREIGN KEY (`tipohabitacion_id`) REFERENCES `tbl_tipohabitacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_habitacion`
--

LOCK TABLES `tbl_habitacion` WRITE;
/*!40000 ALTER TABLE `tbl_habitacion` DISABLE KEYS */;
INSERT INTO `tbl_habitacion` VALUES (1,101,0,1,1),(2,102,0,1,1),(3,501,1,1,2),(4,101,1,2,2),(5,102,0,2,1),(6,102,0,2,1);
/*!40000 ALTER TABLE `tbl_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hotel`
--

DROP TABLE IF EXISTS `tbl_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_hotel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `numero_habitaciones` int DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `imagen` varchar(500) DEFAULT NULL,
  `descripcion` longtext,
  `calificacion` int DEFAULT NULL,
  `localizacion` varchar(500) DEFAULT NULL,
  `precio_minimo` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hotel`
--

LOCK TABLES `tbl_hotel` WRITE;
/*!40000 ALTER TABLE `tbl_hotel` DISABLE KEYS */;
INSERT INTO `tbl_hotel` VALUES (1,'Sainte Jeanne Boutique & Spa',50,'Av. Los portales N° 120','966959595','https://res.cloudinary.com/diyxrjxec/image/upload/v1702049355/ankm1u8fgxo7p563uwro.jpg','Sainte Jeanne Hotel Boutique & Spa está ubicado en el corazón de Los Troncos, un barrio residencial y elegante de Mar del Plata. El lujo, el confort y la pasión por los detalles dan personalidad a esta cálida propuesta',1,'Mar del Plata, Argentina',700),(2,'Vila Da Santa',30,'Jr. Las palmeras N° 1562','95959595','https://res.cloudinary.com/diyxrjxec/image/upload/v1702051469/kbeueq14pow95dmvsklk.jpg','Esta casa de pescadores fue renovada con elegancia, pero sin descuidar su espíritu original. Se abre a un gran patio central con dos piscinas de diseño, una de ellas climatizada para ofrecer a sus huéspedes todo el confort y esplendor.',3,'Buzios, Brasil',500),(3,'Tierra Patagonia',20,'Av. Los palmeras N° 1200','969696969','https://res.cloudinary.com/diyxrjxec/image/upload/v1702051626/h7tm0oowalmlrh83ybeo.jpg','Tierra Patagonia Hotel & Spa es un lujoso hotel ubicado en la Patagonia chilena a orillas del lago Sarmiento, envuelto en el extraordinario escenario natural de Torres del Paine, un parque nacional rodeado de montañas, cascadas, glaciares, lagos y peñascos.',1,'Torres del Paine, Chile',300),(4,'La Bamba de Areco',50,'Jr. las camelias N° 1062','999111222','https://res.cloudinary.com/diyxrjxec/image/upload/v1702051770/iepb4rciw5zixfpe9uwy.jpg','La Bamba de Areco está ubicada en San Antonio de Areco, en el corazón de la pampa. Es una de las estancias más antiguas de la Argentina, recientemente restaurada para ofrecer a sus huéspedes todo el confort y esplendor colonial.',4,'Buenos Aires, Argentina',600),(5,'Ponta dos Ganchos',50,'Av. Benavides N° 1500','999333222','https://res.cloudinary.com/diyxrjxec/image/upload/v1702051908/gqpejsjmxjvvvwjmzei7.jpg','Ubicado a pasos de San Pablo, Río de Janeiro, e incluso Buenos Aires, en una península privada y rodeado por un pintoresco pueblo de pescadores, se encuentra Ponta dos Ganchos, uno de los resorts de playa más exclusivos del sur de Brasil.',4,'Buzios, Brasil',800),(6,'Vik Chile',20,'Av. Los palmeras N° 125','999111333','https://res.cloudinary.com/diyxrjxec/image/upload/v1702051993/lehy6hfnspu9d4jqryai.jpg','Vik Chile es una hacienda moderna y sofisticada en donde confluyen el arte y el diseño de vanguardia, una ubicación sin igual, fabulosos escenarios naturales, servicio personalizado y una cuidada atención por el medioambiente.',4,'Millahue, Chile',900),(7,'Campo Tinto',35,'Jr. colonia N° 1012','999111444','https://res.cloudinary.com/diyxrjxec/image/upload/v1702052110/ospyne9cbjqcpz4k71ao.jpg','Campo Tinto es una chacra de 25 hectáreas ubicada en el corazón de San Roque, en medio del ondulante Carmelo, una zona de chacras, viñedos, bodegas y frutales, con mucha historia y un ritmo de vida tranquilo y natural.',3,'Colonia, Uruguay',500),(8,'Rincón del Socorro',50,'Av. Benavides N° 121','999111666','https://res.cloudinary.com/diyxrjxec/image/upload/v1702052241/st8afsyobirsu0xf6uji.jpg','Rincón del Socorro es una estancia ubicada en la reserva natural de los Esteros del Iberá, un santuario de vida silvestre, donde la Fundación Conservation Land Trust decidió desarrollar un ambicioso proyecto de recuperación y conservación.',3,'Corrientes, Argentina',500);
/*!40000 ALTER TABLE `tbl_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reserva`
--

DROP TABLE IF EXISTS `tbl_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reserva` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_reserva` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `precio_total` double DEFAULT NULL,
  `cliente_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_reserva_tbl_cliente1` (`cliente_id`),
  KEY `fk_tbl_reserva_tbl_hotel1` (`hotel_id`),
  CONSTRAINT `fk_tbl_reserva_tbl_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `tbl_cliente` (`id`),
  CONSTRAINT `fk_tbl_reserva_tbl_hotel1` FOREIGN KEY (`hotel_id`) REFERENCES `tbl_hotel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reserva`
--

LOCK TABLES `tbl_reserva` WRITE;
/*!40000 ALTER TABLE `tbl_reserva` DISABLE KEYS */;
INSERT INTO `tbl_reserva` VALUES (1,'2023-12-08','2023-12-11','2023-12-15',1,1000,1,1),(2,'2023-12-08','2023-12-18','2023-12-22',1,500,2,2);
/*!40000 ALTER TABLE `tbl_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reservadetalle`
--

DROP TABLE IF EXISTS `tbl_reservadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reservadetalle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reserva_id` int NOT NULL,
  `habitacion_id` int NOT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_reservadetalle_tbl_reserva1` (`reserva_id`),
  KEY `fk_tbl_reservadetalle_tbl_habitacion1` (`habitacion_id`),
  CONSTRAINT `fk_tbl_reservadetalle_tbl_habitacion1` FOREIGN KEY (`habitacion_id`) REFERENCES `tbl_habitacion` (`id`),
  CONSTRAINT `fk_tbl_reservadetalle_tbl_reserva1` FOREIGN KEY (`reserva_id`) REFERENCES `tbl_reserva` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reservadetalle`
--

LOCK TABLES `tbl_reservadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_reservadetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reservadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipodocumento`
--

DROP TABLE IF EXISTS `tbl_tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipodocumento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipodocumento`
--

LOCK TABLES `tbl_tipodocumento` WRITE;
/*!40000 ALTER TABLE `tbl_tipodocumento` DISABLE KEYS */;
INSERT INTO `tbl_tipodocumento` VALUES (1,'DNI'),(2,'CARNÉ DE EXTRANJERÍA');
/*!40000 ALTER TABLE `tbl_tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipohabitacion`
--

DROP TABLE IF EXISTS `tbl_tipohabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipohabitacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipohabitacion`
--

LOCK TABLES `tbl_tipohabitacion` WRITE;
/*!40000 ALTER TABLE `tbl_tipohabitacion` DISABLE KEYS */;
INSERT INTO `tbl_tipohabitacion` VALUES (1,'SIMPLE',500.00),(2,'DOBLE',700.00);
/*!40000 ALTER TABLE `tbl_tipohabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_reservas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 20:34:24
