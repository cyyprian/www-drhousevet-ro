# ************************************************************
# Sequel Ace SQL dump
# Version 3034
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.6.3-MariaDB)
# Database: drhousevet
# Generation Time: 2021-08-08 09:04:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table articles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),
	(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),
	(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),
	(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),
	(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
	(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),
	(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),
	(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
	(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),
	(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),
	(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),
	(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(23,4,'title','text','Title',1,1,1,1,1,1,'{}',2),
	(24,4,'excerpt','text_area','Excerpt',0,0,1,1,1,1,'{}',3),
	(25,4,'body','rich_text_box','Body',0,0,1,1,1,1,'{}',4),
	(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',5),
	(27,4,'meta_description','text','Meta Description',1,0,1,1,1,1,'{}',6),
	(28,4,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"0\":\"INACTIVE\",\"1\":\"ACTIVE\"}}',7),
	(29,4,'image','image','Image',0,1,1,1,1,1,'{\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"10%\"}]}',8),
	(30,4,'created_at','timestamp','Created At',0,0,1,1,0,1,'{}',9),
	(31,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),
	(33,6,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(34,7,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(35,8,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(44,11,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(45,11,'title','text','Title',1,1,1,1,1,1,'{}',2),
	(46,11,'excerpt','text_area','Excerpt',0,1,1,1,1,1,'{}',3),
	(47,11,'body','rich_text_box','Body',0,1,1,1,1,1,'{}',4),
	(48,11,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',5),
	(49,11,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"0\":\"INACTIVE\",\"1\":\"ACTIVE\"}}',6),
	(50,11,'image','image','Image',0,1,1,1,1,1,'{\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"10%\"}]}',7),
	(51,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),
	(52,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),
	(53,6,'title','text','Title',1,1,1,1,1,1,'{}',2),
	(54,6,'excerpt','text_area','Excerpt',0,1,1,1,1,1,'{}',3),
	(55,6,'body','rich_text_box','Body',0,1,1,1,1,1,'{}',4),
	(56,6,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:services,slug\"}}',5),
	(57,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"0\":\"INACTIVE\",\"1\":\"ACTIVE\"}}',6),
	(58,6,'image','image','Image',0,1,1,1,1,1,'{\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"10%\"}]}',7),
	(59,6,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),
	(60,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),
	(61,7,'question','text_area','Question',1,1,1,1,1,1,'{}',2),
	(62,7,'answer','rich_text_box','Answer',1,1,1,1,1,1,'{}',3),
	(63,7,'excerpt','text_area','Excerpt',0,1,1,1,1,1,'{}',4),
	(64,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),
	(65,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
	(66,8,'day','text','Day',1,1,1,1,1,1,'{}',2),
	(67,8,'start','text','Start',0,1,1,1,1,1,'{}',3),
	(68,8,'end','text','End',0,1,1,1,1,1,'{}',4),
	(69,8,'excerpt','text_area','Excerpt',0,1,1,1,1,1,'{}',5);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(4,'pages','pages','Page','Pages','voyager-file-text','App\\Models\\Page',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-08 01:31:29','2021-08-08 06:15:19'),
	(6,'services','services','Service','Services','voyager-list','App\\Models\\Service',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-08 01:50:36','2021-08-08 08:36:12'),
	(7,'faqs','faqs','Faq','Faqs','voyager-question','App\\Models\\Faq',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-08 01:52:34','2021-08-08 08:39:30'),
	(8,'opening_hours','opening-hours','Opening Hour','Opening Hours','voyager-watch','App\\Models\\OpeningHour',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-08 01:57:24','2021-08-08 08:43:01'),
	(11,'articles','articles','Article','Articles','voyager-news','App\\Models\\Article',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-08 08:21:36','2021-08-08 08:23:53');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

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



# Dump of table faqs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `faqs`;

CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-08-08 01:23:27','2021-08-08 01:23:27','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2021-08-08 01:23:27','2021-08-08 08:20:15','voyager.media.index',NULL),
	(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2021-08-08 01:23:27','2021-08-08 01:23:27','voyager.users.index',NULL),
	(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-08-08 01:23:27','2021-08-08 01:23:27','voyager.roles.index',NULL),
	(5,1,'Tools','','_self','voyager-tools',NULL,NULL,5,'2021-08-08 01:23:27','2021-08-08 08:20:15',NULL,NULL),
	(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-08-08 01:23:27','2021-08-08 08:20:15','voyager.menus.index',NULL),
	(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-08-08 01:23:27','2021-08-08 08:20:15','voyager.database.index',NULL),
	(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2021-08-08 01:23:27','2021-08-08 08:20:15','voyager.compass.index',NULL),
	(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2021-08-08 01:23:27','2021-08-08 08:20:15','voyager.bread.index',NULL),
	(10,1,'Settings','','_self','voyager-settings',NULL,NULL,6,'2021-08-08 01:23:27','2021-08-08 08:20:15','voyager.settings.index',NULL),
	(11,1,'Pages','','_self','voyager-file-text','#000000',NULL,8,'2021-08-08 01:31:29','2021-08-08 08:30:08','voyager.pages.index','null'),
	(13,1,'Services','','_self','voyager-list',NULL,NULL,9,'2021-08-08 01:50:36','2021-08-08 08:30:08','voyager.services.index',NULL),
	(14,1,'Faqs','','_self','voyager-question',NULL,NULL,10,'2021-08-08 01:52:34','2021-08-08 08:30:08','voyager.faqs.index',NULL),
	(15,1,'Opening Hours','','_self','voyager-watch',NULL,NULL,11,'2021-08-08 01:57:24','2021-08-08 08:30:08','voyager.opening-hours.index',NULL),
	(16,1,'Articles','','_self','voyager-news','#000000',NULL,7,'2021-08-08 08:21:36','2021-08-08 08:30:08','voyager.articles.index','null');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2021-08-08 01:23:27','2021-08-08 01:23:27');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_05_19_173453_create_menu_table',1),
	(6,'2016_10_21_190000_create_roles_table',1),
	(7,'2016_10_21_190000_create_settings_table',1),
	(8,'2016_11_30_135954_create_permission_table',1),
	(9,'2016_11_30_141208_create_permission_role_table',1),
	(10,'2016_12_26_201236_data_types__add__server_side',1),
	(11,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(12,'2017_01_14_005015_create_translations_table',1),
	(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(14,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(15,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(17,'2017_08_05_000000_add_group_to_settings_table',1),
	(18,'2017_11_26_013050_add_user_role_relationship',1),
	(19,'2017_11_26_015000_create_user_roles_table',1),
	(20,'2018_03_11_000000_add_user_settings',1),
	(21,'2018_03_14_000000_add_details_to_data_types_table',1),
	(22,'2018_03_16_000000_make_settings_value_nullable',1),
	(23,'2019_08_19_000000_create_failed_jobs_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table opening_hours
# ------------------------------------------------------------

DROP TABLE IF EXISTS `opening_hours`;

CREATE TABLE `opening_hours` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `day` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `title`, `excerpt`, `body`, `slug`, `status`, `image`, `created_at`, `updated_at`)
VALUES
	(1,'Home page','This is the Home page of the website..',NULL,'home',1,'pages/August2021/eyCdDipEwkbL4ofGh7Z5.png','2021-08-08 01:43:00','2021-08-08 08:08:43'),
	(3,'About us','About us page..','<h3 style=\"text-align: left;\"><code>Some content coming from admin..</code></h3>','about-us',1,NULL,'2021-08-08 02:21:00','2021-08-08 08:07:51');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin',NULL,'2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(2,'browse_bread',NULL,'2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(3,'browse_database',NULL,'2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(4,'browse_media',NULL,'2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(5,'browse_compass',NULL,'2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(6,'browse_menus','menus','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(7,'read_menus','menus','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(8,'edit_menus','menus','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(9,'add_menus','menus','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(10,'delete_menus','menus','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(11,'browse_roles','roles','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(12,'read_roles','roles','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(13,'edit_roles','roles','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(14,'add_roles','roles','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(15,'delete_roles','roles','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(16,'browse_users','users','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(17,'read_users','users','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(18,'edit_users','users','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(19,'add_users','users','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(20,'delete_users','users','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(21,'browse_settings','settings','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(22,'read_settings','settings','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(23,'edit_settings','settings','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(24,'add_settings','settings','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(25,'delete_settings','settings','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(26,'browse_pages','pages','2021-08-08 01:31:29','2021-08-08 01:31:29'),
	(27,'read_pages','pages','2021-08-08 01:31:29','2021-08-08 01:31:29'),
	(28,'edit_pages','pages','2021-08-08 01:31:29','2021-08-08 01:31:29'),
	(29,'add_pages','pages','2021-08-08 01:31:29','2021-08-08 01:31:29'),
	(30,'delete_pages','pages','2021-08-08 01:31:29','2021-08-08 01:31:29'),
	(36,'browse_services','services','2021-08-08 01:50:36','2021-08-08 01:50:36'),
	(37,'read_services','services','2021-08-08 01:50:36','2021-08-08 01:50:36'),
	(38,'edit_services','services','2021-08-08 01:50:36','2021-08-08 01:50:36'),
	(39,'add_services','services','2021-08-08 01:50:36','2021-08-08 01:50:36'),
	(40,'delete_services','services','2021-08-08 01:50:36','2021-08-08 01:50:36'),
	(41,'browse_faqs','faqs','2021-08-08 01:52:34','2021-08-08 01:52:34'),
	(42,'read_faqs','faqs','2021-08-08 01:52:34','2021-08-08 01:52:34'),
	(43,'edit_faqs','faqs','2021-08-08 01:52:34','2021-08-08 01:52:34'),
	(44,'add_faqs','faqs','2021-08-08 01:52:34','2021-08-08 01:52:34'),
	(45,'delete_faqs','faqs','2021-08-08 01:52:34','2021-08-08 01:52:34'),
	(46,'browse_opening_hours','opening_hours','2021-08-08 01:57:24','2021-08-08 01:57:24'),
	(47,'read_opening_hours','opening_hours','2021-08-08 01:57:24','2021-08-08 01:57:24'),
	(48,'edit_opening_hours','opening_hours','2021-08-08 01:57:24','2021-08-08 01:57:24'),
	(49,'add_opening_hours','opening_hours','2021-08-08 01:57:24','2021-08-08 01:57:24'),
	(50,'delete_opening_hours','opening_hours','2021-08-08 01:57:24','2021-08-08 01:57:24'),
	(51,'browse_articles','articles','2021-08-08 08:21:36','2021-08-08 08:21:36'),
	(52,'read_articles','articles','2021-08-08 08:21:36','2021-08-08 08:21:36'),
	(53,'edit_articles','articles','2021-08-08 08:21:36','2021-08-08 08:21:36'),
	(54,'add_articles','articles','2021-08-08 08:21:36','2021-08-08 08:21:36'),
	(55,'delete_articles','articles','2021-08-08 08:21:36','2021-08-08 08:21:36');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2021-08-08 01:23:27','2021-08-08 01:23:27'),
	(2,'user','Normal User','2021-08-08 01:23:27','2021-08-08 01:23:27');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table services
# ------------------------------------------------------------

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','The McLaren F1','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','settings/August2021/BHfo5NYF2gnSslKCxoof.png','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
	(6,'admin.title','Admin Title','The McLaren F1','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),
	(11,'site.representative_photo','Representative photo','settings/August2021/98ZYt9AUJgT1UgXtaL9f.png',NULL,'image',6,'Site'),
	(13,'site.icon','Site Icon','settings/August2021/uHSeRr4P9KVUayzvzP76.png',NULL,'image',7,'Site');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,1,'Ciprian','ciprian@devz.ro','users/default.png',NULL,'$2y$10$bfDQYmSas9CvWsIB.btzuOUa1xyUl8uUlOhFI115xbnX/kmcKm29W',NULL,NULL,NULL,NULL),
	(2,1,'Alin','Tur8atu@icloud.com','users/default.png',NULL,'$2y$10$pwnAI7axEpm1Mm206e9F1.Kfq9mxmGHCuBuktkvGo0emsVH9qSNK6',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
