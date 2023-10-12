-- MySQL dump 10.13  Distrib 8.1.0, for macos13.3 (arm64)
--
-- Host: localhost    Database: horego
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (43,'2014_10_12_000000_create_users_table',1),(44,'2014_10_12_100000_create_password_reset_tokens_table',1),(45,'2019_08_19_000000_create_failed_jobs_table',1),(46,'2019_12_14_000001_create_personal_access_tokens_table',1),(47,'2023_10_11_033438_create_organizations_table',1),(48,'2023_10_11_034058_create_persons_table',1),(49,'2023_10_11_034722_create_user_organizations_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizations_phone_unique` (`phone`),
  UNIQUE KEY `organizations_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES ('9a57c354-fa27-4fd5-b939-89c3f601d48c','Quitzon, Abernathy and Maggio','+1 (214) 876-5316','alden.damore@yahoo.com','simonis.com','https://via.placeholder.com/640x480.png/0022ff?text=animals+perferendis','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fe0b-44dc-bd4b-133eb01386cb','Lueilwitz Group','+1-678-255-4513','block.hailey@hane.com','ullrich.com','https://via.placeholder.com/640x480.png/007744?text=animals+ut','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Kirlin, Trantow and Abshire','(321) 447-8676','veum.myrna@gerhold.com','feeney.com','https://via.placeholder.com/640x480.png/00dd77?text=animals+ut','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-056c-4dd3-8ad3-cab8a1e30645','Lesch-Bergstrom','+1 (913) 360-0698','sonny.wilderman@friesen.com','schulist.com','https://via.placeholder.com/640x480.png/004444?text=animals+ea','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-08c7-4845-ae11-08c87f205d65','Christiansen, Schuppe and Bashirian','401.917.4109','dean48@yahoo.com','balistreri.com','https://via.placeholder.com/640x480.png/001100?text=animals+voluptatem','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0c39-4a35-897e-13b69465a20e','Padberg, Simonis and Heidenreich','+1-432-573-6000','skiles.paul@gmail.com','bernhard.org','https://via.placeholder.com/640x480.png/001144?text=animals+nihil','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0f77-43cb-8940-84aba8ab36df','Mertz, Ondricka and Champlin','651-604-5458','lyla.reynolds@hotmail.com','cronin.com','https://via.placeholder.com/640x480.png/0000cc?text=animals+alias','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-130d-4199-b7b8-8a3c26f8c779','Huel Ltd','+1 (609) 666-4654','abby00@durgan.org','fay.org','https://via.placeholder.com/640x480.png/00ff88?text=animals+ut','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-165e-41f0-a511-2e74dce47ed8','Goyette-Beahan','(234) 993-7368','efunk@stokes.com','torp.net','https://via.placeholder.com/640x480.png/00aaaa?text=animals+et','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-19ba-42ad-9324-742d0e15abc6','Will-Hamill','+1.458.479.8670','margarita33@yahoo.com','larson.net','https://via.placeholder.com/640x480.png/0033dd?text=animals+velit','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57f110-ef10-4aa4-9088-6c8506ce50b5','Naufalpedia','081287617807','naufal@pedia.com','naufal.pedia.com','http://localhost:8000/storage/logos/1697125157-(Iphone 13) 4.png','2023-10-11 04:49:32','2023-10-12 08:39:17'),('9a5a1bd1-db5f-4532-b8fd-04187ec670ad','Goorita','012312313','goorita.center@gmail.com','https://goorita.com','http://localhost:8000/storage/logos/1697118044-ghh-logo.svg','2023-10-12 06:40:44','2023-10-12 09:10:53');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','28f149ae4c9643a4289a18b4c3f5c86ae6aaf88488287d23252b63c5c30f906b','[\"admin\"]','2023-10-11 06:47:43',NULL,'2023-10-11 02:45:58','2023-10-11 06:47:43'),(2,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','47ec3a840d0209a5e7939088db586570ea30413efd864c75e6ead1f30442447f','[\"admin\"]',NULL,NULL,'2023-10-11 23:08:58','2023-10-11 23:08:58'),(3,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','26d7382bf4e6981343d9f373b59063497c8e4bd65dca16957982a7767a09a3d8','[\"admin\"]',NULL,NULL,'2023-10-11 23:51:07','2023-10-11 23:51:07'),(4,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','c72bacceb1110f136b8450bbce023a38a954ea40e2fd11ab549f7346a59bada2','[\"admin\"]',NULL,NULL,'2023-10-12 00:01:59','2023-10-12 00:01:59'),(5,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','e49317a490197128ebe0902a71f391016a5cdf53b162beb2dc60438f0668e151','[\"admin\"]',NULL,NULL,'2023-10-12 00:10:42','2023-10-12 00:10:42'),(6,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','9306e942cebccccd5b20bd42885f9f9fcf7566848ea8693dbe146fac6d8aa4e2','[\"admin\"]',NULL,NULL,'2023-10-12 00:12:35','2023-10-12 00:12:35'),(7,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','534ca9ae0569de6fe0170cd96cb920f813751111e05d7d3eea2b9e22cdd9bacb','[\"admin\"]',NULL,NULL,'2023-10-12 00:12:48','2023-10-12 00:12:48'),(8,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','08c102c6a485483646764400c142e21acb6c17707112c305eef780c2b675fb0f','[\"admin\"]',NULL,NULL,'2023-10-12 02:06:34','2023-10-12 02:06:34'),(9,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','ddeb064e8f3d9b2ec2fa6edaffd048806ac447e3ab8823b3a321a311a570d529','[\"admin\"]',NULL,NULL,'2023-10-12 02:11:27','2023-10-12 02:11:27'),(10,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','03b8f1c6cecebac78af84f87ca01ce26fbef5b1b04c6a520fcb4f54735afec3e','[\"admin\"]',NULL,NULL,'2023-10-12 02:12:05','2023-10-12 02:12:05'),(11,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','98b8b6f6694da542175628fb8e2a5e8f0f075f2dd59a8feb46a271f99a3350c2','[\"admin\"]',NULL,NULL,'2023-10-12 02:14:33','2023-10-12 02:14:33'),(12,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','77695efe3e8d74a330439a58b8dfb0b85c39ee90ff3df92f7d57a0ffa5b3e7cc','[\"admin\"]','2023-10-12 06:46:33',NULL,'2023-10-12 02:26:43','2023-10-12 06:46:33'),(13,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','6dc40674f7e9811d720525fffb9edf6b65b797a10e85132bd5262191c510f80a','[\"admin\"]','2023-10-12 11:30:59',NULL,'2023-10-12 02:30:18','2023-10-12 11:30:59'),(14,'App\\Models\\User','9a57c355-1f06-482b-9a55-58d3290d927c','ApiToken','b8ccefc3768b5e363289307e27a705fcbdc2cb5c0a9532822bc4301fd4ca01cb','[\"customer\"]',NULL,NULL,'2023-10-12 06:55:30','2023-10-12 06:55:30'),(15,'App\\Models\\User','9a57c355-1f06-482b-9a55-58d3290d927c','ApiToken','f02033259b0ea97bffc20af9b5c775f091659900ec31970f6f8561315f9dd620','[\"customer\"]',NULL,NULL,'2023-10-12 06:55:59','2023-10-12 06:55:59'),(16,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','00c9fbf3f77cbee2830e6fba36ecfc56195f2c3d80a1040304746b0a1cb738e8','[\"admin\"]','2023-10-12 11:28:25',NULL,'2023-10-12 06:58:08','2023-10-12 11:28:25'),(17,'App\\Models\\User','9a5a80d8-16cf-4a14-8e2f-2a66c2269838','ApiToken','b1560365f6d825dd0d723dcb3fa175e97c1cdfffef2f13a27e403e11c6535741','[\"customer\"]','2023-10-12 11:47:58',NULL,'2023-10-12 11:32:26','2023-10-12 11:47:58'),(18,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','3d21cdaa24ecd097fb793ef817ad625953e5bcdba183020243ddbf2b41e44302','[\"admin\"]','2023-10-12 11:48:09',NULL,'2023-10-12 11:48:04','2023-10-12 11:48:09'),(19,'App\\Models\\User','9a5a82ad-6eda-406b-ac25-128fadbd6dcc','ApiToken','93f52dcf31468e181cc25b306e316b93e59f08271de62e98a189bc64ea1c7685','[\"customer\",\"manager\"]',NULL,NULL,'2023-10-12 11:48:23','2023-10-12 11:48:23'),(20,'App\\Models\\User','9a5a82ad-6eda-406b-ac25-128fadbd6dcc','ApiToken','ca0319082d0db9263a5d0a3dd2ac7146bdd09e56bd145db245a6e61b4ba0962f','[\"customer\",\"manager\"]','2023-10-12 11:51:07',NULL,'2023-10-12 11:48:44','2023-10-12 11:51:07'),(21,'App\\Models\\User','9a5a80d8-16cf-4a14-8e2f-2a66c2269838','ApiToken','484822f9b1278ef41cd18df5d2e45c1c9a59014bced46a14e865faa099d14a20','[\"customer\"]','2023-10-12 11:53:13',NULL,'2023-10-12 11:51:43','2023-10-12 11:53:13'),(22,'App\\Models\\User','9a5a82ad-6eda-406b-ac25-128fadbd6dcc','ApiToken','18ec8a4dc8ce8d1493ec102857936a44e5bb26eeb13f35767b5cfac1f1c7c331','[\"customer\",\"manager\"]','2023-10-12 11:53:28',NULL,'2023-10-12 11:53:23','2023-10-12 11:53:28'),(23,'App\\Models\\User','9a57c354-f27e-48fa-b7e0-f8fa91382673','ApiToken','b42c0564728a7cafea0791645256e7944451bf7cc24cf72399b8e57df8523e5e','[\"admin\"]','2023-10-12 11:53:38',NULL,'2023-10-12 11:53:38','2023-10-12 11:53:38');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persons_phone_unique` (`phone`),
  UNIQUE KEY `persons_email_unique` (`email`),
  KEY `persons_organization_id_foreign` (`organization_id`),
  CONSTRAINT `persons_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES ('9a57c354-fc0f-4d5c-8b9f-9e49bb725486','9a57c354-fa27-4fd5-b939-89c3f601d48c','Joannie Bartell','+1.402.960.7186','gdare@pagac.info','https://via.placeholder.com/640x480.png/00bb77?text=animals+qui','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fc63-468b-8fab-ed43f3bc9e48','9a57c354-fa27-4fd5-b939-89c3f601d48c','Agnes Stanton','+1.815.214.3305','jayden69@hotmail.com','https://via.placeholder.com/640x480.png/008855?text=animals+et','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fc97-49b7-8286-18747d82080e','9a57c354-fa27-4fd5-b939-89c3f601d48c','Raphaelle Veum','+1-870-844-8009','lakin.dulce@hotmail.com','https://via.placeholder.com/640x480.png/00dddd?text=animals+in','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fcc7-47fd-91d3-70037d03087c','9a57c354-fa27-4fd5-b939-89c3f601d48c','Jadon Schuster','864.707.4031','ostark@grady.net','https://via.placeholder.com/640x480.png/002222?text=animals+modi','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fcf8-4a29-b2f7-6ec2c564c1d4','9a57c354-fa27-4fd5-b939-89c3f601d48c','Donna Walker Sr.','734-342-0544','efren.toy@yahoo.com','https://via.placeholder.com/640x480.png/008822?text=animals+architecto','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fd26-48d2-99a9-7dafc923fd30','9a57c354-fa27-4fd5-b939-89c3f601d48c','Ms. Kasandra Wisoky','+1 (815) 365-5286','borer.jewel@yahoo.com','https://via.placeholder.com/640x480.png/001111?text=animals+rerum','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fd55-4aed-ab2f-d94f7b1b6f15','9a57c354-fa27-4fd5-b939-89c3f601d48c','Mr. Amani Kuphal V','+1.813.859.8193','urempel@hodkiewicz.com','https://via.placeholder.com/640x480.png/001111?text=animals+enim','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fd82-453f-9c31-e27598794c59','9a57c354-fa27-4fd5-b939-89c3f601d48c','Mrs. Shannon Nitzsche I','+1-279-585-1052','arvel08@hotmail.com','https://via.placeholder.com/640x480.png/00ff55?text=animals+nihil','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fdb0-474d-b7dd-8e299ecbf7aa','9a57c354-fa27-4fd5-b939-89c3f601d48c','Madie Kunze','+1-810-699-1699','mharris@hotmail.com','https://via.placeholder.com/640x480.png/0022ff?text=animals+architecto','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c354-fddd-4b0a-ad40-292ffa67b824','9a57c354-fa27-4fd5-b939-89c3f601d48c','Cullen Grady','423.651.2016','jesse.veum@reichert.biz','https://via.placeholder.com/640x480.png/001111?text=animals+saepe','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0004-40c0-8c4e-b58e2cff243a','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Pete Marks','+1-253-766-3104','ricardo.kulas@sipes.net','https://via.placeholder.com/640x480.png/00aaff?text=animals+repudiandae','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0037-4821-ac7d-05bf002887fa','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Miss Caitlyn Bartell','606-827-2620','kaden.jacobson@thompson.com','https://via.placeholder.com/640x480.png/0022ee?text=animals+dignissimos','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-007e-4994-8123-bc74ca6c36e9','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Hoyt Feest','228-829-9914','antoinette.koepp@larkin.com','https://via.placeholder.com/640x480.png/000055?text=animals+perferendis','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-00ac-4eb5-bf69-7af2837ed081','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Ernest Roberts','231-455-2998','marietta.walter@hotmail.com','https://via.placeholder.com/640x480.png/005566?text=animals+voluptatem','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-00dc-456c-923f-3221a75fd54b','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Prof. Daniela Little','469.382.6637','kareem80@mcglynn.com','https://via.placeholder.com/640x480.png/00cc33?text=animals+ipsam','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0109-4352-8601-ef0abac889e3','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Anastasia Bergstrom IV','360.453.2422','nader.sincere@thompson.com','https://via.placeholder.com/640x480.png/0077cc?text=animals+unde','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0136-40c6-8aec-2f985f95f472','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Kali Dietrich','+1-520-905-4091','era87@yahoo.com','https://via.placeholder.com/640x480.png/005566?text=animals+incidunt','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0163-483f-a4ed-a1a3b59aed29','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Rico Volkman DDS','+17317877944','ova26@friesen.net','https://via.placeholder.com/640x480.png/0088dd?text=animals+magni','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-018f-4057-9767-5230d114bbf0','9a57c354-fe0b-44dc-bd4b-133eb01386cb','Mr. Floyd Marquardt','484.893.9108','josephine.feest@gmail.com','https://via.placeholder.com/640x480.png/0055ee?text=animals+sunt','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0361-4526-8599-b7ac5c492942','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Ms. Samara Collier III','+1.240.615.3454','berge.taryn@schiller.biz','https://via.placeholder.com/640x480.png/009933?text=animals+ut','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0391-4035-b625-0aec8e3ccdcb','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Dr. Otho Conn IV','1-920-661-2225','janelle.hill@beatty.com','https://via.placeholder.com/640x480.png/00ff88?text=animals+quod','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-03be-4c54-b2ae-5ae2e2cf0231','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Dr. Quinn O\'Hara','+19893304709','twila.rosenbaum@yahoo.com','https://via.placeholder.com/640x480.png/00ccee?text=animals+corrupti','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-03ec-4c1c-b63e-566f71f7244b','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Larissa Blick','+1.716.427.3958','dbrekke@yahoo.com','https://via.placeholder.com/640x480.png/00cc99?text=animals+vero','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0418-4ce3-8d20-695e4653b859','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Eino Zulauf','1-540-318-0715','pdeckow@hickle.info','https://via.placeholder.com/640x480.png/002288?text=animals+sequi','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-046b-4c64-93df-587882ff3680','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Ms. Otha Kiehn II','+1 (725) 514-7299','shanie.rohan@fahey.com','https://via.placeholder.com/640x480.png/009955?text=animals+voluptates','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-04b4-49dc-a1c8-5a60ea16f37f','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Mr. Emmet Abernathy','+1 (503) 624-1961','stacey.collier@hotmail.com','https://via.placeholder.com/640x480.png/003355?text=animals+et','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-04eb-4432-9e7d-c09989a5690f','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Nicholas Mayert','(812) 322-7980','willa69@rath.org','https://via.placeholder.com/640x480.png/0033aa?text=animals+est','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0515-4e7b-8e91-7bf97f6a8f34','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Bennie Kozey','(615) 217-4517','kokon@hintz.com','https://via.placeholder.com/640x480.png/00ff00?text=animals+in','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0540-4418-a96d-10b0a30e9589','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6','Ricky Heidenreich','+1 (660) 370-7851','mayert.gianni@osinski.com','https://via.placeholder.com/640x480.png/00dd88?text=animals+et','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-06eb-4f5b-8a50-91819ca8b6d7','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Ms. Ivah Walsh Sr.','(330) 541-0972','janessa19@gmail.com','https://via.placeholder.com/640x480.png/00ee77?text=animals+quibusdam','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0733-42f2-9a4a-5e7481c4824f','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Lora Jones','+1-567-214-7255','okuneva.keyon@yahoo.com','https://via.placeholder.com/640x480.png/00ffcc?text=animals+est','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0763-4990-b309-0adcac9a6a29','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Amy Upton III','+1-419-672-0106','ehayes@yahoo.com','https://via.placeholder.com/640x480.png/0011aa?text=animals+sint','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0791-47f4-a3fd-f9489bc83305','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Orin Morissette','(510) 341-7118','dedrick74@lubowitz.com','https://via.placeholder.com/640x480.png/0044cc?text=animals+sed','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-07bd-4d83-bbb5-08ffd0e5d4a5','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Jeramie Kshlerin','+1 (508) 623-5181','dangelo74@yahoo.com','https://via.placeholder.com/640x480.png/001144?text=animals+unde','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-07ea-4f48-b9a6-63c11833acec','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Destinee Stanton','(458) 753-2638','becker.eladio@kautzer.com','https://via.placeholder.com/640x480.png/0000dd?text=animals+repellat','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0818-4661-ab72-009c537b61f9','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Kaela McKenzie','+1-351-766-5548','daugherty.karlie@dicki.com','https://via.placeholder.com/640x480.png/00ff00?text=animals+quia','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0844-4eed-a1dc-ef79058a2390','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Kelley Nicolas','(361) 975-5427','stracke.magnus@harvey.com','https://via.placeholder.com/640x480.png/00ffff?text=animals+distinctio','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0870-443c-b341-49a5a1c6bd87','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Mariam Beier V','+1.657.877.7410','johan31@gmail.com','https://via.placeholder.com/640x480.png/0066ee?text=animals+aut','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-089b-4a13-bb71-39793f992550','9a57c355-056c-4dd3-8ad3-cab8a1e30645','Tavares Krajcik','1-734-760-1051','sbode@prohaska.net','https://via.placeholder.com/640x480.png/00dd44?text=animals+ex','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0a60-495a-b617-40bce70f2b9f','9a57c355-08c7-4845-ae11-08c87f205d65','Zechariah Will','+1 (847) 556-2481','sgerlach@yahoo.com','https://via.placeholder.com/640x480.png/009933?text=animals+laudantium','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0a90-4f25-8964-6b30794e0cc7','9a57c355-08c7-4845-ae11-08c87f205d65','Ressie Gaylord','848-890-7110','ronny.franecki@yahoo.com','https://via.placeholder.com/640x480.png/005577?text=animals+dolore','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0abf-4418-908a-02f15596cf3f','9a57c355-08c7-4845-ae11-08c87f205d65','Jazmin Treutel V','+1-660-990-2251','larson.wilfred@yahoo.com','https://via.placeholder.com/640x480.png/00ccaa?text=animals+animi','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0af4-4ff3-8194-92edad143922','9a57c355-08c7-4845-ae11-08c87f205d65','Anahi Berge','+1-248-809-0389','mconn@kutch.biz','https://via.placeholder.com/640x480.png/001177?text=animals+nisi','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0b22-4112-8813-c32f5c1c9e49','9a57c355-08c7-4845-ae11-08c87f205d65','Emely Denesik Sr.','+18586145219','veum.conrad@wyman.com','https://via.placeholder.com/640x480.png/00aa55?text=animals+et','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0b53-4f5b-b792-3bf06ebfd3d6','9a57c355-08c7-4845-ae11-08c87f205d65','Dr. Vito McLaughlin III','352-813-6654','jamar61@christiansen.com','https://via.placeholder.com/640x480.png/00aacc?text=animals+magnam','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0b7d-4699-82f8-37fa41aa856b','9a57c355-08c7-4845-ae11-08c87f205d65','Prof. Houston Kessler','281.527.6932','lesch.maureen@hilpert.com','https://via.placeholder.com/640x480.png/008844?text=animals+impedit','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0ba6-448c-9ca9-67041c5279b2','9a57c355-08c7-4845-ae11-08c87f205d65','Vanessa Romaguera','1-239-200-8761','hildegard65@mccullough.info','https://via.placeholder.com/640x480.png/00eeaa?text=animals+harum','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0bcf-439e-b41b-8c6a997caae5','9a57c355-08c7-4845-ae11-08c87f205d65','Ms. Madie Kiehn','901-937-7794','cremin.amelie@johns.com','https://via.placeholder.com/640x480.png/0022dd?text=animals+aut','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0c0e-4a70-8e8a-da3874a624ba','9a57c355-08c7-4845-ae11-08c87f205d65','Macie Bauch IV','406-466-4039','sharber@yahoo.com','https://via.placeholder.com/640x480.png/008844?text=animals+voluptatem','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0dbe-4622-a413-83454cb55769','9a57c355-0c39-4a35-897e-13b69465a20e','Burdette Daniel Sr.','+1-406-569-6197','nhill@yahoo.com','https://via.placeholder.com/640x480.png/0077bb?text=animals+qui','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0de8-438d-9321-cae1eb2f52cc','9a57c355-0c39-4a35-897e-13b69465a20e','Clara Dibbert','+16419065230','roberto29@wiza.com','https://via.placeholder.com/640x480.png/005599?text=animals+commodi','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0e12-4968-bf5b-cfddd1af2153','9a57c355-0c39-4a35-897e-13b69465a20e','Daron Hauck','+1-346-215-9035','emilia.hill@gmail.com','https://via.placeholder.com/640x480.png/0000ff?text=animals+est','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0e3d-48bc-bc4b-8677612d42cb','9a57c355-0c39-4a35-897e-13b69465a20e','Judd Turcotte','1-505-620-3344','ian91@hotmail.com','https://via.placeholder.com/640x480.png/00ff22?text=animals+et','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0e67-4274-8d9b-c8be0f41dc7f','9a57c355-0c39-4a35-897e-13b69465a20e','Winifred Greenfelder','952.632.8521','jordyn40@dibbert.com','https://via.placeholder.com/640x480.png/009911?text=animals+repellat','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0e95-4ff7-bad3-98cdbb117fae','9a57c355-0c39-4a35-897e-13b69465a20e','Mr. Jarod Hickle','+15207458405','gcrist@rau.com','https://via.placeholder.com/640x480.png/000000?text=animals+voluptatum','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0ec7-48b0-9e1d-266f4cc0d757','9a57c355-0c39-4a35-897e-13b69465a20e','Adrain Adams','916-903-0186','dewayne.ritchie@keeling.biz','https://via.placeholder.com/640x480.png/00ff77?text=animals+dignissimos','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0ef4-4aac-92ee-223d114655a8','9a57c355-0c39-4a35-897e-13b69465a20e','Kayli Schuster','878.902.9969','delphia.koch@quitzon.com','https://via.placeholder.com/640x480.png/004499?text=animals+in','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0f1e-427a-b6c1-f11be7402741','9a57c355-0c39-4a35-897e-13b69465a20e','Sydney Nienow','351.353.6797','neil.gaylord@hotmail.com','https://via.placeholder.com/640x480.png/00bb44?text=animals+alias','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-0f48-4fe7-8b65-6e88a1b53e08','9a57c355-0c39-4a35-897e-13b69465a20e','Miss Jessica McLaughlin V','(248) 485-0805','johan94@gmail.com','https://via.placeholder.com/640x480.png/00dd77?text=animals+est','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-10fc-4741-a940-84f573ab05d9','9a57c355-0f77-43cb-8940-84aba8ab36df','Daron Kuvalis','+1 (559) 666-2983','brigitte12@yahoo.com','https://via.placeholder.com/640x480.png/00ffbb?text=animals+est','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-112c-49ce-8720-368a11d0b444','9a57c355-0f77-43cb-8940-84aba8ab36df','Prof. Emerson Kreiger','+1-351-592-5957','mnicolas@funk.biz','https://via.placeholder.com/640x480.png/00dd44?text=animals+alias','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-115b-46c1-84ed-efc3bc4f7279','9a57c355-0f77-43cb-8940-84aba8ab36df','Ike Prosacco','(732) 306-6269','jesse23@gottlieb.org','https://via.placeholder.com/640x480.png/00ff33?text=animals+rerum','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1189-4104-af1e-8b23691cae95','9a57c355-0f77-43cb-8940-84aba8ab36df','Triston Ernser','(517) 561-6937','ehessel@kunze.biz','https://via.placeholder.com/640x480.png/0044bb?text=animals+id','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-11b6-4b26-ab30-32cf6a422bd8','9a57c355-0f77-43cb-8940-84aba8ab36df','Dawson Larkin','628-710-9848','gusikowski.mina@leffler.com','https://via.placeholder.com/640x480.png/0077ee?text=animals+molestias','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-11e5-4c50-a482-947bb525a95e','9a57c355-0f77-43cb-8940-84aba8ab36df','Prof. Walter Feil IV','+15204495344','flatley.derek@blanda.com','https://via.placeholder.com/640x480.png/004477?text=animals+aut','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1212-45a7-9997-f8899438da69','9a57c355-0f77-43cb-8940-84aba8ab36df','Weston Keeling','1-928-306-9619','jayme.simonis@zemlak.com','https://via.placeholder.com/640x480.png/004422?text=animals+a','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1253-44e4-a479-0236647b23df','9a57c355-0f77-43cb-8940-84aba8ab36df','Colten Funk','+1-248-790-6942','carter.isaac@gmail.com','https://via.placeholder.com/640x480.png/004411?text=animals+ullam','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1281-46ce-8e63-3771176590b0','9a57c355-0f77-43cb-8940-84aba8ab36df','Miss Isobel Lesch','(810) 601-6664','rhartmann@hotmail.com','https://via.placeholder.com/640x480.png/00cc77?text=animals+culpa','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-12dd-4c15-bc45-49161c8929fa','9a57c355-0f77-43cb-8940-84aba8ab36df','Prof. Joe Thompson MD','(205) 968-2953','mortimer.pagac@lindgren.com','https://via.placeholder.com/640x480.png/008822?text=animals+vel','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-147d-48b8-b3c3-dd2396f3b222','9a57c355-130d-4199-b7b8-8a3c26f8c779','Alan Adams','617.894.4963','aniyah43@effertz.com','https://via.placeholder.com/640x480.png/006677?text=animals+itaque','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-14b0-4e28-a9e1-5c273d9a2bd8','9a57c355-130d-4199-b7b8-8a3c26f8c779','Chelsey Purdy','+16518189799','buckridge.jarod@mohr.com','https://via.placeholder.com/640x480.png/008844?text=animals+veritatis','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-14dd-4bdd-a42c-78af83ac9aa4','9a57c355-130d-4199-b7b8-8a3c26f8c779','Warren Rath','678-402-8031','thansen@larkin.com','https://via.placeholder.com/640x480.png/00cc00?text=animals+distinctio','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-150c-4055-9568-a7cfd614e596','9a57c355-130d-4199-b7b8-8a3c26f8c779','Aryanna Connelly','(680) 919-5212','qrippin@stark.com','https://via.placeholder.com/640x480.png/00ff11?text=animals+et','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1539-4004-a996-00326b87a548','9a57c355-130d-4199-b7b8-8a3c26f8c779','Willow Stiedemann','1-435-808-7871','ybreitenberg@huels.com','https://via.placeholder.com/640x480.png/00ee44?text=animals+id','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1569-4894-ae7d-8baf01d8dddc','9a57c355-130d-4199-b7b8-8a3c26f8c779','Jared Casper PhD','(641) 703-2078','samson.kihn@gaylord.com','https://via.placeholder.com/640x480.png/005555?text=animals+odio','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-15a8-4179-9f90-0f99526c8caf','9a57c355-130d-4199-b7b8-8a3c26f8c779','Prof. Mckayla Morar','1-220-975-2003','harber.luna@greenfelder.org','https://via.placeholder.com/640x480.png/00bbff?text=animals+suscipit','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-15d6-42b5-a889-da407f775845','9a57c355-130d-4199-b7b8-8a3c26f8c779','Gladys Goldner','+1 (301) 257-1874','dell10@hotmail.com','https://via.placeholder.com/640x480.png/0055ff?text=animals+suscipit','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1603-4428-8cde-7b02789180e4','9a57c355-130d-4199-b7b8-8a3c26f8c779','Ms. Lexie Halvorson III','+1 (678) 339-3444','langosh.owen@carter.com','https://via.placeholder.com/640x480.png/00bb77?text=animals+velit','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1630-45d6-a70b-c167e3336d29','9a57c355-130d-4199-b7b8-8a3c26f8c779','Corbin Stiedemann','1-281-599-2754','allene73@yahoo.com','https://via.placeholder.com/640x480.png/0000bb?text=animals+cupiditate','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-17e1-465f-a205-fc2af5c309c6','9a57c355-165e-41f0-a511-2e74dce47ed8','Dr. Ashly Hegmann III','(419) 634-5708','olangworth@pollich.com','https://via.placeholder.com/640x480.png/0000aa?text=animals+voluptatibus','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1811-4b6f-9e69-550c326a44f4','9a57c355-165e-41f0-a511-2e74dce47ed8','Elijah Rutherford II','+15754416878','mann.olin@gmail.com','https://via.placeholder.com/640x480.png/0033ff?text=animals+eaque','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-183f-4920-a0e6-9d9ca5033454','9a57c355-165e-41f0-a511-2e74dce47ed8','Anabel Gleason I','(406) 552-1129','kay.cronin@cruickshank.com','https://via.placeholder.com/640x480.png/00aacc?text=animals+mollitia','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-186d-4b86-b7a2-9ccb8ef4beda','9a57c355-165e-41f0-a511-2e74dce47ed8','Skylar Farrell','+1-760-315-3076','yundt.loren@schoen.com','https://via.placeholder.com/640x480.png/00aa33?text=animals+ut','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-189a-45ca-a34f-30627150bdb6','9a57c355-165e-41f0-a511-2e74dce47ed8','Luella Doyle','+1-210-742-6677','jedediah.kilback@tillman.com','https://via.placeholder.com/640x480.png/003377?text=animals+blanditiis','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-18d6-4182-8ae6-6710ec03180f','9a57c355-165e-41f0-a511-2e74dce47ed8','Prof. Bradley Trantow Sr.','1-248-521-5096','harber.gordon@hotmail.com','https://via.placeholder.com/640x480.png/007755?text=animals+explicabo','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1906-4b16-b8be-047ae1872030','9a57c355-165e-41f0-a511-2e74dce47ed8','Curtis Ebert DVM','986.641.5382','carmella.okuneva@ziemann.com','https://via.placeholder.com/640x480.png/00ccff?text=animals+maiores','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1932-41aa-a1c1-5515c55d783b','9a57c355-165e-41f0-a511-2e74dce47ed8','Dr. Angelo Batz','559.940.7667','emilie00@yahoo.com','https://via.placeholder.com/640x480.png/005555?text=animals+eligendi','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-195d-4c1d-9da4-f9d080e34a42','9a57c355-165e-41f0-a511-2e74dce47ed8','Edythe Emard','661-842-7634','shyann77@yahoo.com','https://via.placeholder.com/640x480.png/006677?text=animals+magni','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-198c-4d25-87ea-80c9c888003a','9a57c355-165e-41f0-a511-2e74dce47ed8','Maximillian Mante','+1.850.371.9753','benedict.schumm@gmail.com','https://via.placeholder.com/640x480.png/0088aa?text=animals+et','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1b2c-4766-92f9-89f6919d2303','9a57c355-19ba-42ad-9324-742d0e15abc6','Lera Collier','+1.573.753.0414','mozelle16@gmail.com','https://via.placeholder.com/640x480.png/0011ee?text=animals+veritatis','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1b56-428b-8ccd-1a8190b4c92d','9a57c355-19ba-42ad-9324-742d0e15abc6','Turner Padberg','+1-636-948-3245','goodwin.una@gmail.com','https://via.placeholder.com/640x480.png/007788?text=animals+dolorem','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1b80-450a-974f-2fdba20ab71d','9a57c355-19ba-42ad-9324-742d0e15abc6','Wilford Pfannerstill','1-248-437-8795','ureilly@yahoo.com','https://via.placeholder.com/640x480.png/00ffee?text=animals+vel','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1ba9-48db-ab2c-4acdde903911','9a57c355-19ba-42ad-9324-742d0e15abc6','Grover Ondricka','386-351-1215','ywilkinson@hotmail.com','https://via.placeholder.com/640x480.png/00cc33?text=animals+sit','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1be7-44d4-adfd-d3314bbf227b','9a57c355-19ba-42ad-9324-742d0e15abc6','Wilson Jakubowski','+1-361-795-7479','prosacco.lester@yahoo.com','https://via.placeholder.com/640x480.png/00bbff?text=animals+explicabo','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1c12-47e6-8458-108b0344bc74','9a57c355-19ba-42ad-9324-742d0e15abc6','Sean Sawayn','+1-505-337-8901','conroy.blaise@runte.com','https://via.placeholder.com/640x480.png/00ff33?text=animals+sit','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1c3d-4081-be76-34c1a3b4cbf5','9a57c355-19ba-42ad-9324-742d0e15abc6','Ms. Blanche Sauer I','(561) 591-7013','ezequiel.lueilwitz@sipes.com','https://via.placeholder.com/640x480.png/006688?text=animals+quis','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1c69-4335-a570-8875ffd6cd34','9a57c355-19ba-42ad-9324-742d0e15abc6','Emmanuel Langosh DDS','(423) 903-9343','windler.rafael@hotmail.com','https://via.placeholder.com/640x480.png/0022bb?text=animals+commodi','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1c95-414e-abb0-13291cf28fb9','9a57c355-19ba-42ad-9324-742d0e15abc6','Mr. Mavis Kub','(385) 273-2314','kvolkman@hotmail.com','https://via.placeholder.com/640x480.png/0088aa?text=animals+nobis','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1cbf-4a72-a47a-627808ac6aeb','9a57c355-19ba-42ad-9324-742d0e15abc6','Agnes Kunde','1-626-406-4337','considine.graciela@erdman.com','https://via.placeholder.com/640x480.png/00aa77?text=animals+minus','2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a5a54c4-80c5-499e-b628-1aa80148fa63','9a57c354-fa27-4fd5-b939-89c3f601d48c','naufal','141414','naufal@mail.com','http://localhost:8000/storage/avatars/1697128176-GOOSEND_2.png','2023-10-12 09:19:58','2023-10-12 09:29:36'),('9a5a8abc-6c4c-40f5-be2f-fb298a54be05','9a57f110-ef10-4aa4-9088-6c8506ce50b5','test2','123123123133','test1@mail.com','http://localhost:8000/storage/avatars/1697136653-Playstore Screenshots - 5.png','2023-10-12 11:50:53','2023-10-12 11:51:03');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_organizations`
--

DROP TABLE IF EXISTS `user_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_organizations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_manager` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_organizations_user_id_foreign` (`user_id`),
  KEY `user_organizations_organization_id_foreign` (`organization_id`),
  CONSTRAINT `user_organizations_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  CONSTRAINT `user_organizations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_organizations`
--

LOCK TABLES `user_organizations` WRITE;
/*!40000 ALTER TABLE `user_organizations` DISABLE KEYS */;
INSERT INTO `user_organizations` VALUES ('9a57c355-2140-4b91-ab9b-597af949835e','9a57c355-1ddc-437e-82b0-b8b377f9f896','9a57c355-01bf-4d05-a8c3-fbfe70fafbe6',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-216c-46d0-ab19-cdc5db75c19d','9a57c355-1edb-489a-9420-a08a09d2470e','9a57c355-165e-41f0-a511-2e74dce47ed8',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-2190-48e9-8f9e-23ef636292e7','9a57c355-1f06-482b-9a55-58d3290d927c','9a57c355-19ba-42ad-9324-742d0e15abc6',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-21b7-43e7-bae8-b0f19b1d70c1','9a57c355-1eb0-451d-8a5f-004407f93e50','9a57c355-130d-4199-b7b8-8a3c26f8c779',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-21d8-4e99-9e22-1a71e9864269','9a57c355-1e85-481b-8536-927d756b0684','9a57c355-0f77-43cb-8940-84aba8ab36df',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-21fe-4233-a32e-0d4a8dfcb7c3','9a57c355-1e08-44e7-9fde-19f5fe6c331a','9a57c355-056c-4dd3-8ad3-cab8a1e30645',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-2223-4b97-be69-661299486d06','9a57c355-1d6d-4c23-b39e-036520f2445b','9a57c354-fa27-4fd5-b939-89c3f601d48c',0,'2023-10-11 02:41:39','2023-10-12 11:22:43'),('9a57c355-224f-4460-987d-fb6fbdd4539f','9a57c355-1dac-4210-9a2d-c4199cf5f74c','9a57c354-fe0b-44dc-bd4b-133eb01386cb',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-2276-43c7-a912-4853cabe5919','9a57c355-1e32-4fd3-9414-1937c6e09c1d','9a57c355-08c7-4845-ae11-08c87f205d65',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-229f-4d5b-a774-9f885b4893c9','9a57c355-1e5c-4861-a934-85d43aaa3e6f','9a57c355-0c39-4a35-897e-13b69465a20e',1,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a5a80a9-ccfd-42fc-8c41-a32ce0e1b814','9a5a791f-899e-4ef8-b054-80a611ceba05','9a57f110-ef10-4aa4-9088-6c8506ce50b5',0,'2023-10-12 11:22:43','2023-10-12 11:28:21'),('9a5a80d8-17c4-440e-83ca-c398235aaa6e','9a5a80d8-16cf-4a14-8e2f-2a66c2269838','9a57f110-ef10-4aa4-9088-6c8506ce50b5',0,'2023-10-12 11:23:13','2023-10-12 11:28:21'),('9a5a82ad-6ffa-408a-93fa-a7259d9602e3','9a5a82ad-6eda-406b-ac25-128fadbd6dcc','9a57f110-ef10-4aa4-9088-6c8506ce50b5',1,'2023-10-12 11:28:21','2023-10-12 11:28:21');
/*!40000 ALTER TABLE `user_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','customer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('9a57c354-f27e-48fa-b7e0-f8fa91382673','admin','081287617807','admin@mail.com','$2y$10$xDYt.b5EhKGLLRllEBtTHOVusKTpa0pIztfEHTR46zoOMTg6AVHt2','admin',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1d6d-4c23-b39e-036520f2445b','Clovis Prosacco','248.715.5108','heber19@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1dac-4210-9a2d-c4199cf5f74c','Dora Okuneva','1-727-952-0326','clockman@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1ddc-437e-82b0-b8b377f9f896','Margie Mueller','+1-940-753-1355','pedro.mckenzie@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1e08-44e7-9fde-19f5fe6c331a','Amber Morar','1-608-494-1810','martine90@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1e32-4fd3-9414-1937c6e09c1d','Gage Johnston','559-400-0079','skutch@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1e5c-4861-a934-85d43aaa3e6f','Dr. Manuel Mann III','(937) 560-7492','aleuschke@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1e85-481b-8536-927d756b0684','Prof. Alexandre Durgan','1-585-525-8732','blarson@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1eb0-451d-8a5f-004407f93e50','Dr. Sherman Kreiger DDS','385-304-9960','schamberger.marisa@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1edb-489a-9420-a08a09d2470e','Mia Adams','(660) 688-8974','gerlach.mozelle@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a57c355-1f06-482b-9a55-58d3290d927c','Larry Kuvalis','1-864-517-0644','aidan22@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','customer',NULL,'2023-10-11 02:41:39','2023-10-11 02:41:39'),('9a5a791f-899e-4ef8-b054-80a611ceba05','nopal','3332211','nopalnaxcpm@yahoo.com','$2y$10$oKfTFhru/n9RvITM9WePy.gAoryXmdv699iGPXgNd53x8ZfuPZnnK','customer',NULL,'2023-10-12 11:01:38','2023-10-12 11:01:38'),('9a5a80d8-16cf-4a14-8e2f-2a66c2269838','jamal','0001231','jamal@mail.com','$2y$10$ss5kUQcZjMVT2I6TNZbBqODbyDetsqTkrgAT9IhwwrdH2qr3TPq76','customer',NULL,'2023-10-12 11:23:13','2023-10-12 11:23:13'),('9a5a82ad-6eda-406b-ac25-128fadbd6dcc','sidik','1237129847914','sidik@naufalpedia.com','$2y$10$E6a/dn8hGnsKarQ8eUTgn.nLirqD0B8lgyk.aZnntjGimMjmdtaSm','customer',NULL,'2023-10-12 11:28:21','2023-10-12 11:28:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'horego'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-13  2:00:05
