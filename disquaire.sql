-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 17 jan. 2020 à 09:04
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `disquaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add album', 1, 'add_album'),
(2, 'Can change album', 1, 'change_album'),
(3, 'Can delete album', 1, 'delete_album'),
(4, 'Can view album', 1, 'view_album'),
(5, 'Can add artist', 2, 'add_artist'),
(6, 'Can change artist', 2, 'change_artist'),
(7, 'Can delete artist', 2, 'delete_artist'),
(8, 'Can view artist', 2, 'view_artist'),
(9, 'Can add contact', 3, 'add_contact'),
(10, 'Can change contact', 3, 'change_contact'),
(11, 'Can delete contact', 3, 'delete_contact'),
(12, 'Can view contact', 3, 'view_contact'),
(13, 'Can add booking', 4, 'add_booking'),
(14, 'Can change booking', 4, 'change_booking'),
(15, 'Can delete booking', 4, 'delete_booking'),
(16, 'Can view booking', 4, 'view_booking'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_520_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_520_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_520_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_520_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_520_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$8MjHvD4po6kQ$1tT0FnhwsJze7VL8z9E5u8cyV8IByH6hPUOYN7AMGXw=', '2020-01-16 21:51:52.301771', 1, 'admin', '', '', 'gbriche59@yahoo.fr', 1, 1, '2020-01-12 20:27:32.897853');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_520_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_520_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_520_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-12 20:31:28.598982', '12', 'geo1310', 2, '[]', 4, 1),
(2, '2020-01-12 20:33:08.292953', '12', 'geo1310', 3, '', 4, 1),
(3, '2020-01-12 20:33:45.153154', '7', 'geo1310', 3, '', 4, 1),
(4, '2020-01-12 20:36:06.931327', '13', 'gbriche', 1, '[{\"added\": {}}]', 4, 1),
(5, '2020-01-12 20:46:04.744402', '9', 'Ainsi soit Je', 2, '[{\"changed\": {\"fields\": [\"Reference\", \"Artists\"]}}]', 1, 1),
(6, '2020-01-12 20:47:17.574205', '4', 'geo1310', 2, '[{\"changed\": {\"name\": \"booking\", \"object\": \"geo1310\", \"fields\": [\"Contacted\"]}}]', 3, 1),
(7, '2020-01-12 20:47:34.555589', '4', 'geo1310', 2, '[{\"deleted\": {\"name\": \"booking\", \"object\": \"geo1310\"}}]', 3, 1),
(8, '2020-01-12 20:48:39.155870', '1', 'Sarbacane', 2, '[{\"changed\": {\"fields\": [\"Available\"]}}]', 1, 1),
(9, '2020-01-12 20:49:14.997545', '9', 'geo1310', 2, '[{\"changed\": {\"fields\": [\"Contacted\"]}}]', 4, 1),
(10, '2020-01-12 20:49:51.087444', '2', 'For Ever', 2, '[{\"changed\": {\"fields\": [\"Reference\", \"Available\"]}}]', 1, 1),
(11, '2020-01-12 20:57:59.763507', '10', 'L\'autre', 1, '[{\"added\": {}}]', 1, 1),
(12, '2020-01-13 19:11:49.762093', '15', 'gbriche', 1, '[{\"added\": {}}]', 4, 1),
(13, '2020-01-13 19:12:05.727387', '1', 'Sarbacane', 2, '[{\"changed\": {\"fields\": [\"Disponible\"]}}]', 1, 1),
(14, '2020-01-13 19:14:23.224825', '16', 'geo1310', 3, '', 4, 1),
(15, '2020-01-13 19:14:37.658899', '2', 'For Ever', 2, '[{\"changed\": {\"fields\": [\"Disponible\"]}}]', 1, 1),
(16, '2020-01-13 19:16:02.249855', '5', 'gbriche', 2, '[{\"changed\": {\"name\": \"r\\u00e9servation\", \"object\": \"gbriche\", \"fields\": [\"Demande trait\\u00e9e ?\"]}}, {\"changed\": {\"name\": \"r\\u00e9servation\", \"object\": \"gbriche\", \"fields\": [\"Demande trait\\u00e9e ?\"]}}, {\"changed\": {\"name\": \"r\\u00e9servation\", \"object\": \"gbriche\", \"fields\": [\"Demande trait\\u00e9e ?\"]}}]', 3, 1),
(17, '2020-01-13 20:08:15.595577', '19', 'gbriche', 1, '[{\"added\": {}}]', 4, 1),
(18, '2020-01-13 20:08:42.734709', '19', 'gbriche', 3, '', 4, 1),
(19, '2020-01-13 20:16:12.035425', '5', 'gbriche', 2, '[{\"changed\": {\"name\": \"r\\u00e9servation\", \"object\": \"gbriche\", \"fields\": [\"Demande trait\\u00e9e ?\"]}}]', 3, 1),
(20, '2020-01-13 20:17:02.247917', '15', 'gbriche', 2, '[{\"changed\": {\"fields\": [\"Demande trait\\u00e9e ?\"]}}]', 4, 1),
(21, '2020-01-13 20:26:58.519045', '5', 'geo1310', 2, '[{\"changed\": {\"fields\": [\"Nom\"]}}]', 3, 1),
(22, '2020-01-13 20:27:09.706659', '4', 'gbriche', 2, '[{\"changed\": {\"fields\": [\"Nom\"]}}]', 3, 1),
(23, '2020-01-16 21:53:53.291196', '7', 'UB 40', 1, '[{\"added\": {}}]', 2, 1),
(24, '2020-01-16 21:56:10.276647', '11', 'Labour of Love', 1, '[{\"added\": {}}]', 1, 1),
(25, '2020-01-16 22:02:54.947275', '4', 'gbriche', 2, '[{\"changed\": {\"name\": \"r\\u00e9servation\", \"object\": \"gbriche\", \"fields\": [\"Demande trait\\u00e9e ?\"]}}, {\"changed\": {\"name\": \"r\\u00e9servation\", \"object\": \"gbriche\", \"fields\": [\"Demande trait\\u00e9e ?\"]}}]', 3, 1),
(26, '2020-01-16 22:03:00.198464', '5', 'geo1310', 2, '[]', 3, 1),
(27, '2020-01-16 22:03:17.240156', '4', 'gbriche', 2, '[{\"deleted\": {\"name\": \"r\\u00e9servation\", \"object\": \"gbriche\"}}, {\"deleted\": {\"name\": \"r\\u00e9servation\", \"object\": \"gbriche\"}}]', 3, 1),
(28, '2020-01-16 22:03:53.612965', '5', 'geo1310', 2, '[{\"deleted\": {\"name\": \"r\\u00e9servation\", \"object\": \"geo1310\"}}, {\"deleted\": {\"name\": \"r\\u00e9servation\", \"object\": \"geo1310\"}}, {\"deleted\": {\"name\": \"r\\u00e9servation\", \"object\": \"geo1310\"}}]', 3, 1),
(29, '2020-01-16 22:08:02.529922', '8', 'Michael Jackson', 1, '[{\"added\": {}}]', 2, 1),
(30, '2020-01-16 22:08:54.353933', '12', 'Dangerous', 1, '[{\"added\": {}}]', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_520_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'store', 'album'),
(2, 'store', 'artist'),
(3, 'store', 'contact'),
(4, 'store', 'booking'),
(5, 'admin', 'logentry'),
(6, 'auth', 'permission'),
(7, 'auth', 'group'),
(8, 'auth', 'user'),
(9, 'contenttypes', 'contenttype'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-10 22:08:06.716791'),
(2, 'auth', '0001_initial', '2020-01-10 22:08:06.772057'),
(3, 'admin', '0001_initial', '2020-01-10 22:08:07.172836'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-10 22:08:07.288712'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-10 22:08:07.288712'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-10 22:08:07.335583'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-10 22:08:07.373341'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-10 22:08:07.404588'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-10 22:08:07.404588'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-10 22:08:07.435835'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-10 22:08:07.435835'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-10 22:08:07.451459'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-10 22:08:07.473593'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-10 22:08:07.504840'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-10 22:08:07.520464'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-10 22:08:07.536088'),
(17, 'sessions', '0001_initial', '2020-01-10 22:08:07.536088'),
(18, 'store', '0001_initial', '2020-01-10 22:08:07.620717');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_520_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_520_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dti5c40htnsrbxf8m0zp101g633uqpyb', 'MTI3OTcyODViMDI1YTQ3N2VmYzVlNGJjNGQwZjUxM2JlOGE3NjA0YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMTNkZGMzZDA1YjEzMGY1OTBmMzI2NjlkODBkZDQwYmFjYTAxYWJhIn0=', '2020-01-26 20:27:56.662617'),
('mspvm3k22o4zxm1yzagpxs9mc7b3md0m', 'NDI3YmU5M2Q1MjEzNmY5MmRmZmE0NTNiYmI4NWQzMjlhMjlmZDEzZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MmU1MjQxMGZlMDI0MTMyOTExMWEwNjZlZWQwYWI0ZWY0Yzg5NDlkIn0=', '2020-01-30 21:51:52.317395');

-- --------------------------------------------------------

--
-- Structure de la table `store_album`
--

DROP TABLE IF EXISTS `store_album`;
CREATE TABLE IF NOT EXISTS `store_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `available` tinyint(1) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_520_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `store_album`
--

INSERT INTO `store_album` (`id`, `reference`, `created_at`, `available`, `title`, `picture`) VALUES
(1, 1, '2020-01-07 01:06:06.000000', 1, 'Sarbacane', 'https://images-na.ssl-images-amazon.com/images/I/7181sCwyHRL._SL1500_.jpg'),
(2, 2, '2020-01-10 21:32:39.788005', 1, 'For Ever', 'https://images-na.ssl-images-amazon.com/images/I/71gYUcfcTlL._SX355_.jpg'),
(3, 3, '2020-01-10 21:34:42.712148', 1, 'Podium', 'https://static.actu.fr/uploads/2018/06/podium.jpg'),
(4, NULL, '2020-01-10 21:36:01.086601', 1, 'Alors Regarde', 'https://m.media-amazon.com/images/I/81XF8uYXV6L._SS500_.jpg'),
(5, NULL, '2020-01-10 21:39:23.656887', 1, 'Laisse Béton', 'http://ekladata.com/hGcFTKa_ec429SxsiaSWw44vRZI.jpg'),
(6, NULL, '2020-01-10 21:40:32.835528', 1, 'Morgane de toi', 'https://images-na.ssl-images-amazon.com/images/I/819p3X4tLeL._SL1400_.jpg'),
(7, NULL, '2020-01-10 21:41:41.958660', 1, 'Samedi soir sur la Terre', 'https://static.fnac-static.com/multimedia/Images/FR/NR/50/87/6f/7309136/1540-1/tsp20150826154808/Samedi-soir-sur-la-terre.jpg'),
(8, NULL, '2020-01-11 14:47:00.000000', 1, 'Elle a les Yeux Révolver', 'https://media.ultratop.be/cover/big/marc_lavoine-elle_a_les_yeux_revolver_s.jpg'),
(9, 0, '2020-01-11 14:51:00.000000', 1, 'Ainsi soit Je', 'https://i1.sndcdn.com/artworks-000319493679-d8nvzs-t500x500.jpg'),
(10, 1, '2020-01-12 19:57:59.732257', 1, 'L\'autre', 'https://www.innamoramento.net/public/referentiel/240/160_2012-11-14-08-12-55_1.JPG'),
(11, 1, '2020-01-16 20:56:10.245397', 1, 'Labour of Love', 'https://images-na.ssl-images-amazon.com/images/I/81NUhYY8gSL._SL1300_.jpg'),
(12, 3, '2020-01-16 21:08:54.322683', 1, 'Dangerous', 'https://www.discobuzz.fr/8532-14549-large_default/michael-jackson-dangerous-double-lp-vinyl-album.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `store_album_artists`
--

DROP TABLE IF EXISTS `store_album_artists`;
CREATE TABLE IF NOT EXISTS `store_album_artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_album_artists_album_id_artist_id_9c8fa2e6_uniq` (`album_id`,`artist_id`),
  KEY `store_album_artists_album_id_2d0c1a8e` (`album_id`),
  KEY `store_album_artists_artist_id_9d9c2c0a` (`artist_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `store_album_artists`
--

INSERT INTO `store_album_artists` (`id`, `album_id`, `artist_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 3),
(4, 4, 2),
(5, 5, 4),
(6, 6, 4),
(7, 7, 1),
(8, 8, 5),
(10, 9, 6),
(11, 10, 6),
(12, 11, 7),
(13, 12, 8);

-- --------------------------------------------------------

--
-- Structure de la table `store_artist`
--

DROP TABLE IF EXISTS `store_artist`;
CREATE TABLE IF NOT EXISTS `store_artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `store_artist`
--

INSERT INTO `store_artist` (`id`, `name`) VALUES
(1, 'Francis Cabrel'),
(2, 'Patrick Bruel'),
(3, 'Claude Francois'),
(4, 'Renaud'),
(5, 'Marc Lavoine'),
(6, 'Mylene Farmer'),
(7, 'UB 40'),
(8, 'Michael Jackson');

-- --------------------------------------------------------

--
-- Structure de la table `store_booking`
--

DROP TABLE IF EXISTS `store_booking`;
CREATE TABLE IF NOT EXISTS `store_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `contacted` tinyint(1) NOT NULL,
  `album_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `album_id` (`album_id`),
  KEY `store_booking_contact_id_d46d585e` (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `store_contact`
--

DROP TABLE IF EXISTS `store_contact`;
CREATE TABLE IF NOT EXISTS `store_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_520_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Déchargement des données de la table `store_contact`
--

INSERT INTO `store_contact` (`id`, `email`, `name`) VALUES
(5, 'geo1310@Hotmail.fr', 'geo1310'),
(4, 'gbriche59@yahoo.fr', 'gbriche');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
