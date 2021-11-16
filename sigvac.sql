-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sigvac
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arrondissements`
--

DROP TABLE IF EXISTS `arrondissements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arrondissements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code_arrondissement` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_arrondissement` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `population_arrondissement` int(11) DEFAULT NULL,
  `superficie_arrondissement` double DEFAULT NULL,
  `communes_id` int(10) unsigned NOT NULL,
  `district_sanitaires_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `arrondissements_communes_id_foreign` (`communes_id`),
  KEY `arrondissements_district_sanitaires_id_foreign` (`district_sanitaires_id`),
  CONSTRAINT `arrondissements_communes_id_foreign` FOREIGN KEY (`communes_id`) REFERENCES `communes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `arrondissements_district_sanitaires_id_foreign` FOREIGN KEY (`district_sanitaires_id`) REFERENCES `district_sanitaires` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrondissements`
--

LOCK TABLES `arrondissements` WRITE;
/*!40000 ALTER TABLE `arrondissements` DISABLE KEYS */;
/*!40000 ALTER TABLE `arrondissements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canals`
--

DROP TABLE IF EXISTS `canals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canals`
--

LOCK TABLES `canals` WRITE;
/*!40000 ALTER TABLE `canals` DISABLE KEYS */;
INSERT INTO `canals` VALUES (1,'2021-11-10 12:03:22','2021-11-10 12:03:22','Web'),(2,'2021-11-10 12:03:22','2021-11-10 12:03:22','Mob'),(3,'2021-11-10 12:03:22','2021-11-10 12:03:22','Tab');
/*!40000 ALTER TABLE `canals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communes`
--

DROP TABLE IF EXISTS `communes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_commune` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_commune` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `population_commune` int(11) DEFAULT NULL,
  `superficie_commune` double DEFAULT NULL,
  `departements_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `communes_departements_id_foreign` (`departements_id`),
  CONSTRAINT `communes_departements_id_foreign` FOREIGN KEY (`departements_id`) REFERENCES `departements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communes`
--

LOCK TABLES `communes` WRITE;
/*!40000 ALTER TABLE `communes` DISABLE KEYS */;
/*!40000 ALTER TABLE `communes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departements`
--

DROP TABLE IF EXISTS `departements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_departement` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_departement` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `population_departement` int(11) NOT NULL,
  `superficie_departement` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departements`
--

LOCK TABLES `departements` WRITE;
/*!40000 ALTER TABLE `departements` DISABLE KEYS */;
INSERT INTO `departements` VALUES (1,'DEP01','BRAZZAVILLE',2051565,NULL,'2021-11-10 12:03:22','2021-11-10 12:03:22'),(2,'DEP02','POINTE-NOIRE',1264637,NULL,'2021-11-10 12:03:22','2021-11-10 12:03:22'),(3,'DEP03','NIARI',349856,NULL,'2021-11-10 12:03:22','2021-11-10 12:03:22'),(4,'DEP04','LEKOUMOU',145850,NULL,'2021-11-10 12:03:22','2021-11-10 12:03:22');
/*!40000 ALTER TABLE `departements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district_sanitaires`
--

DROP TABLE IF EXISTS `district_sanitaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district_sanitaires` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_district_sanitaire` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_district_sanitaire` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departements_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `district_sanitaires_departements_id_foreign` (`departements_id`),
  CONSTRAINT `district_sanitaires_departements_id_foreign` FOREIGN KEY (`departements_id`) REFERENCES `departements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_sanitaires`
--

LOCK TABLES `district_sanitaires` WRITE;
/*!40000 ALTER TABLE `district_sanitaires` DISABLE KEYS */;
/*!40000 ALTER TABLE `district_sanitaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_district` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_district` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `population_district` int(11) DEFAULT NULL,
  `superficie_district` double DEFAULT NULL,
  `departements_id` int(10) unsigned NOT NULL,
  `district_sanitaires_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `districts_departements_id_foreign` (`departements_id`),
  KEY `districts_district_sanitaires_id_foreign` (`district_sanitaires_id`),
  CONSTRAINT `districts_departements_id_foreign` FOREIGN KEY (`departements_id`) REFERENCES `departements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `districts_district_sanitaires_id_foreign` FOREIGN KEY (`district_sanitaires_id`) REFERENCES `district_sanitaires` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etat_civils`
--

DROP TABLE IF EXISTS `etat_civils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etat_civils` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `etat_civil` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etat_civils`
--

LOCK TABLES `etat_civils` WRITE;
/*!40000 ALTER TABLE `etat_civils` DISABLE KEYS */;
INSERT INTO `etat_civils` VALUES (1,'Célibataire','2021-11-10 12:03:22','2021-11-10 12:03:22'),(2,'Marié(e)','2021-11-10 12:03:22','2021-11-10 12:03:22'),(3,'Divorcé(e)','2021-11-10 12:03:22','2021-11-10 12:03:22'),(4,'Veuf(-ve)','2021-11-10 12:03:22','2021-11-10 12:03:22');
/*!40000 ALTER TABLE `etat_civils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `identifications`
--

DROP TABLE IF EXISTS `identifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prenom` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat_civils_id` int(10) unsigned NOT NULL,
  `pays_id` int(10) unsigned DEFAULT NULL,
  `departements_id` int(10) unsigned DEFAULT NULL,
  `type_identites_id` int(10) unsigned DEFAULT NULL,
  `numero_identite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_pere` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_mere` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personne_contact` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_personne_contact` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifiant_unique` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifiant_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifications_telephone_unique` (`telephone`),
  UNIQUE KEY `identifications_email_unique` (`email`),
  KEY `identifications_pays_id_foreign` (`pays_id`),
  KEY `identifications_etat_civils_id_foreign` (`etat_civils_id`),
  KEY `identifications_departements_id_foreign` (`departements_id`),
  KEY `identifications_type_identites_id_foreign` (`type_identites_id`),
  CONSTRAINT `identifications_departements_id_foreign` FOREIGN KEY (`departements_id`) REFERENCES `departements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `identifications_etat_civils_id_foreign` FOREIGN KEY (`etat_civils_id`) REFERENCES `etat_civils` (`id`) ON DELETE CASCADE,
  CONSTRAINT `identifications_pays_id_foreign` FOREIGN KEY (`pays_id`) REFERENCES `tr_pays` (`id_pays`) ON DELETE CASCADE,
  CONSTRAINT `identifications_type_identites_id_foreign` FOREIGN KEY (`type_identites_id`) REFERENCES `type_identites` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identifications`
--

LOCK TABLES `identifications` WRITE;
/*!40000 ALTER TABLE `identifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `identifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_11_08_095957_create_roles_table',1),(2,'2013_11_08_100013_create_permissions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2019_12_14_000001_create_personal_access_tokens_table',1),(7,'2021_11_08_104106_create_type_identites_table',1),(8,'2021_11_08_104134_create_etat_civils_table',1),(9,'2021_11_08_104155_create_canals_table',1),(10,'2021_11_08_104213_create_pays_table',1),(11,'2021_11_08_104229_create_departements_table',1),(12,'2021_11_08_104252_create_communes_table',1),(13,'2021_11_08_104312_create_district_sanitaires_table',1),(14,'2021_11_08_104313_create_districts_table',1),(15,'2021_11_08_104330_create_arrondissements_table',1),(16,'2021_11_08_110834_create_identifications_table',1),(17,'2021_11_09_131316_add_nom_to_canals_table',1),(18,'2021_11_10_121257_create_personnes_table',1),(19,'2021_11_10_142626_create_session_logs_table',2),(20,'2021_11_10_145746_add_sequence_to_t_personne_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'role.index','Afficher les rôles','Gestion des rôles','2021-11-10 12:03:22','2021-11-10 12:03:22'),(2,'role.create','Ajouter un rôle','Gestion des rôles','2021-11-10 12:03:22','2021-11-10 12:03:22'),(3,'role.edit','Modifier un rôle','Gestion des rôles','2021-11-10 12:03:22','2021-11-10 12:03:22'),(4,'role.destroy','Supprimer un rôle','Gestion des rôles','2021-11-10 12:03:22','2021-11-10 12:03:22'),(5,'role.show','Voir un rôle','Gestion des rôles','2021-11-10 12:03:22','2021-11-10 12:03:22'),(6,'user.index','Afficher les utilisateurs','Gestion des utilisateurs','2021-11-10 12:03:22','2021-11-10 12:03:22'),(7,'user.create','Ajouter un utilisateur','Gestion des utilisateurs','2021-11-10 12:03:22','2021-11-10 12:03:22'),(8,'user.edit','Modifier un utilisateur','Gestion des utilisateurs','2021-11-10 12:03:22','2021-11-10 12:03:22'),(9,'user.destroy','Supprimer un utilisateur','Gestion des utilisateurs','2021-11-10 12:03:22','2021-11-10 12:03:22'),(10,'user.show','Voir un utilisateur','Gestion des utilisateurs','2021-11-10 12:03:22','2021-11-10 12:03:22'),(11,'user.changestate','Activer ou desactiver un utilisateur','Gestion des utilisateurs','2021-11-10 12:03:22','2021-11-10 12:03:22'),(12,'identification.index','Afficher les utilisateurs','Gestion l\'identifcation','2021-11-10 12:03:22','2021-11-10 12:03:22'),(13,'identification.create','Ajouter un utilisateur','Gestion l\'identifcation','2021-11-10 12:03:22','2021-11-10 12:03:22'),(14,'identification.edit','Modifier un utilisateur','Gestion l\'identifcation','2021-11-10 12:03:22','2021-11-10 12:03:22'),(15,'identification.destroy','Supprimer un utilisateur','Gestion l\'identifcation','2021-11-10 12:03:22','2021-11-10 12:03:22'),(16,'identification.show','Voir un utilisateur','Gestion l\'identifcation','2021-11-10 12:03:22','2021-11-10 12:03:22'),(17,'identification.changestate','Activer ou desactiver un utilisateur','Gestion l\'identifcation','2021-11-10 12:03:22','2021-11-10 12:03:22');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permissions` (
  `roles_id` int(10) unsigned NOT NULL,
  `permissions_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`roles_id`,`permissions_id`),
  KEY `role_permissions_permissions_id_foreign` (`permissions_id`),
  CONSTRAINT `role_permissions_permissions_id_foreign` FOREIGN KEY (`permissions_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_permissions_roles_id_foreign` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (1,1,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,2,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,3,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,4,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,5,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,6,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,7,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,8,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,9,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,10,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,11,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,12,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,13,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,14,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,15,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,16,'2021-11-15 11:15:56','2021-11-15 11:15:56'),(1,17,'2021-11-15 11:15:56','2021-11-15 11:15:56');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrateur','2021-11-10 12:03:22','2021-11-10 12:03:22'),(2,'Sous-admin','2021-11-10 12:03:22','2021-11-10 12:03:22');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_personne`
--

DROP TABLE IF EXISTS `t_personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_personne` (
  `id_personne` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero_personne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom_personne` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_personne` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_jeune_fille` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pays` int(10) unsigned DEFAULT NULL,
  `nom_pere` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_mere` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_prenom_personne_contact` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_personne_contact` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_personne_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_piece_identite_personne_contat` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee_naissance_personne` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifiant_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sequence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_personne`),
  UNIQUE KEY `t_personne_telephone_personne_contact_unique` (`telephone_personne_contact`),
  UNIQUE KEY `t_personne_email_personne_contact_unique` (`email_personne_contact`),
  KEY `t_personne_id_pays_foreign` (`id_pays`),
  CONSTRAINT `t_personne_id_pays_foreign` FOREIGN KEY (`id_pays`) REFERENCES `tr_pays` (`id_pays`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_personne`
--

LOCK TABLES `t_personne` WRITE;
/*!40000 ALTER TABLE `t_personne` DISABLE KEYS */;
INSERT INTO `t_personne` VALUES (1,'KSMS2M0','Seth','Kasalu','Seth Mukinayi Kasalu','M',NULL,NULL,3,'Mukinayi Kasalu','Seth Mukinayi Kasalu',NULL,NULL,'0812157633','mukinayiseth@gmail.com',NULL,NULL,'KSMS2M0.jpeg','2021-11-10 15:01:59','2021-11-11 14:58:07','A01'),(2,'KCMJ3M0','Carley','Koukiabeka',NULL,'M',NULL,NULL,7,'Musuamba','Jade Mukinayi Musuamba',NULL,NULL,NULL,'hilarykalini@gmail.com',NULL,NULL,'KCMJ3M0.jpeg','2021-11-11 15:55:03','2021-11-11 15:55:19','A01');
/*!40000 ALTER TABLE `t_personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_session_logs`
--

DROP TABLE IF EXISTS `t_session_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_session_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_session_logs`
--

LOCK TABLES `t_session_logs` WRITE;
/*!40000 ALTER TABLE `t_session_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_session_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_pays`
--

DROP TABLE IF EXISTS `tr_pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tr_pays` (
  `id_pays` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_pays` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_pays_fr` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_pays_eng` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_pays` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_alpha2` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_alpha3` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pays`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_pays`
--

LOCK TABLES `tr_pays` WRITE;
/*!40000 ALTER TABLE `tr_pays` DISABLE KEYS */;
INSERT INTO `tr_pays` VALUES (1,'PAYS01','Afghanistan','Afghanistan','4','AF','AFG','2021-11-10 12:03:21','2021-11-10 12:03:21'),(2,'PAYS02','Îles Åland','Åland Islands','248','AX','ALA','2021-11-10 12:03:21','2021-11-10 12:03:21'),(3,'PAYS03','Albanie','Albania','8','AL','ALB','2021-11-10 12:03:21','2021-11-10 12:03:21'),(4,'PAYS04','Algérie','Algeria','12','DZ','DZA','2021-11-10 12:03:21','2021-11-10 12:03:21'),(5,'PAYS05','Samoa américaines','American Samoa','16','AS','ASM','2021-11-10 12:03:21','2021-11-10 12:03:21'),(6,'PAYS06','Andorre','Andorra','20','AD','AND','2021-11-10 12:03:21','2021-11-10 12:03:21'),(7,'PAYS07','Angola','Angola','24','AO','AGO','2021-11-10 12:03:21','2021-11-10 12:03:21'),(8,'PAYS08','Anguilla','Anguilla','660','AI','AIA','2021-11-10 12:03:21','2021-11-10 12:03:21'),(9,'PAYS09','Antarctique','Antarctica','10','AQ','ATA','2021-11-10 12:03:21','2021-11-10 12:03:21'),(10,'PAYS10','Antigua-et-Barbuda','Antigua-and-Barbuda','28','AG','ATG','2021-11-10 12:03:21','2021-11-10 12:03:21'),(11,'PAYS11','Argentine','Argentina','32','AR','ARG','2021-11-10 12:03:21','2021-11-10 12:03:21'),(12,'PAYS12','Arménie','Armenia','51','AM','ARM','2021-11-10 12:03:21','2021-11-10 12:03:21'),(13,'PAYS13','Aruba','Aruba','533','AW','ABW','2021-11-10 12:03:21','2021-11-10 12:03:21'),(14,'PAYS14','Australie','Australia','36','AU','AUS','2021-11-10 12:03:21','2021-11-10 12:03:21'),(15,'PAYS15','Autriche','Autrichia','40','AT','AUT','2021-11-10 12:03:21','2021-11-10 12:03:21');
/*!40000 ALTER TABLE `tr_pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_identites`
--

DROP TABLE IF EXISTS `type_identites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_identites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_type_piece_identite` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_type_piece_identite` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lib_court_type_piece_identite` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_identites`
--

LOCK TABLES `type_identites` WRITE;
/*!40000 ALTER TABLE `type_identites` DISABLE KEYS */;
INSERT INTO `type_identites` VALUES (1,'TYPIECE01','Passport','PSPRT','2021-11-10 12:03:22','2021-11-10 12:03:22'),(2,'TYPIECE02','Carte nationale d\'identité','CNI','2021-11-10 12:03:22','2021-11-10 12:03:22'),(3,'TYPIECE03','Carte consulaire','CC','2021-11-10 12:03:22','2021-11-10 12:03:22'),(4,'TYPIECE04','Carte de séjour','CS','2021-11-10 12:03:22','2021-11-10 12:03:22'),(5,'TYPIECE05','Carte scolaire','CSC','2021-11-10 12:03:22','2021-11-10 12:03:22'),(6,'TYPIECE06','Carte d\'étudiant','CEL','2021-11-10 12:03:22','2021-11-10 12:03:22'),(7,'TYPIECE07','Permis de conduire','PDC','2021-11-10 12:03:22','2021-11-10 12:03:22');
/*!40000 ALTER TABLE `type_identites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `prenom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `roles_id` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_roles_id_foreign` (`roles_id`),
  CONSTRAINT `users_roles_id_foreign` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Prefils','Nguengoro','M','065239199','nguengorop@gmail.com',NULL,'$2y$10$dOt0gXPXLL5dQrMVv9vJ7Oiwp3eJMOARyjk8SudmDcnDMwitYuLTK',1,1,NULL,'2021-11-10 12:03:22','2021-11-10 12:03:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 13:37:28
