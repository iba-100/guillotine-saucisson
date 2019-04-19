-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 19 avr. 2019 à 10:05
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20170912085504'),
('20170913125128'),
('20171003103916'),
('20180102140039');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
CREATE TABLE IF NOT EXISTS `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_address`
--

INSERT INTO `sylius_address` (`id`, `customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `company`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`) VALUES
(1, NULL, 'Craig', 'Effertz', NULL, 'Elsa Squares', NULL, 'Keelingville', '40638-6490', '2019-01-18 13:52:04', '2019-01-18 13:52:04', 'US', NULL, NULL),
(2, NULL, 'Craig', 'Effertz', NULL, 'Elsa Squares', NULL, 'Keelingville', '40638-6490', '2019-01-18 13:52:04', '2019-01-18 13:52:04', 'US', NULL, NULL),
(3, 11, 'Craig', 'Effertz', NULL, 'Elsa Squares', NULL, 'Keelingville', '40638-6490', '2019-01-18 13:52:04', '2019-01-18 13:52:04', 'US', NULL, NULL),
(4, NULL, 'Lauren', 'Emmerich', NULL, 'Mustafa Mall', NULL, 'Ardenville', '23289-3554', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(5, NULL, 'Lauren', 'Emmerich', NULL, 'Mustafa Mall', NULL, 'Ardenville', '23289-3554', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(6, 21, 'Lauren', 'Emmerich', NULL, 'Mustafa Mall', NULL, 'Ardenville', '23289-3554', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(7, NULL, 'Bud', 'Johns', NULL, 'Osbaldo Inlet', NULL, 'Reggieton', '49290', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(8, NULL, 'Bud', 'Johns', NULL, 'Osbaldo Inlet', NULL, 'Reggieton', '49290', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(9, 17, 'Bud', 'Johns', NULL, 'Osbaldo Inlet', NULL, 'Reggieton', '49290', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(10, NULL, 'Tamara', 'Olson', NULL, 'Corkery Passage', NULL, 'Bradenport', '50529', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(11, NULL, 'Tamara', 'Olson', NULL, 'Corkery Passage', NULL, 'Bradenport', '50529', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(12, 12, 'Tamara', 'Olson', NULL, 'Corkery Passage', NULL, 'Bradenport', '50529', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(13, NULL, 'Margarett', 'Cummings', NULL, 'Josephine Terrace', NULL, 'Langmouth', '71281-9491', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(14, NULL, 'Margarett', 'Cummings', NULL, 'Josephine Terrace', NULL, 'Langmouth', '71281-9491', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(15, 10, 'Margarett', 'Cummings', NULL, 'Josephine Terrace', NULL, 'Langmouth', '71281-9491', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(16, NULL, 'Alfredo', 'Okuneva', NULL, 'Terrance Loop', NULL, 'Spencerton', '52733-2364', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(17, NULL, 'Alfredo', 'Okuneva', NULL, 'Terrance Loop', NULL, 'Spencerton', '52733-2364', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(18, 2, 'Alfredo', 'Okuneva', NULL, 'Terrance Loop', NULL, 'Spencerton', '52733-2364', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(19, NULL, 'Gabrielle', 'Dietrich', NULL, 'Stark Plain', NULL, 'New Aylafurt', '79774', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(20, NULL, 'Gabrielle', 'Dietrich', NULL, 'Stark Plain', NULL, 'New Aylafurt', '79774', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(21, 19, 'Gabrielle', 'Dietrich', NULL, 'Stark Plain', NULL, 'New Aylafurt', '79774', '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'US', NULL, NULL),
(22, NULL, 'Rebekah', 'Crona', NULL, 'Grady Oval', NULL, 'Medhurstville', '33509', '2019-01-18 13:52:06', '2019-01-18 13:52:07', 'US', NULL, NULL),
(23, NULL, 'Rebekah', 'Crona', NULL, 'Grady Oval', NULL, 'Medhurstville', '33509', '2019-01-18 13:52:06', '2019-01-18 13:52:07', 'US', NULL, NULL),
(24, 10, 'Rebekah', 'Crona', NULL, 'Grady Oval', NULL, 'Medhurstville', '33509', '2019-01-18 13:52:06', '2019-01-18 13:52:07', 'US', NULL, NULL),
(25, NULL, 'Arvid', 'Bashirian', NULL, 'Thea Street', NULL, 'Gutkowskiville', '44770-6807', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(26, NULL, 'Arvid', 'Bashirian', NULL, 'Thea Street', NULL, 'Gutkowskiville', '44770-6807', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(27, 20, 'Arvid', 'Bashirian', NULL, 'Thea Street', NULL, 'Gutkowskiville', '44770-6807', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(28, NULL, 'Melody', 'Mills', NULL, 'Minnie Squares', NULL, 'Port Porter', '29524-3708', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(29, NULL, 'Melody', 'Mills', NULL, 'Minnie Squares', NULL, 'Port Porter', '29524-3708', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(30, 17, 'Melody', 'Mills', NULL, 'Minnie Squares', NULL, 'Port Porter', '29524-3708', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(31, NULL, 'Flavio', 'Rodriguez', NULL, 'Torphy Green', NULL, 'Predovicton', '79713-7875', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(32, NULL, 'Flavio', 'Rodriguez', NULL, 'Torphy Green', NULL, 'Predovicton', '79713-7875', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(33, 6, 'Flavio', 'Rodriguez', NULL, 'Torphy Green', NULL, 'Predovicton', '79713-7875', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(34, NULL, 'Cordelia', 'Mitchell', NULL, 'Yundt Light', NULL, 'Valentinaton', '78039', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(35, NULL, 'Cordelia', 'Mitchell', NULL, 'Yundt Light', NULL, 'Valentinaton', '78039', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(36, 8, 'Cordelia', 'Mitchell', NULL, 'Yundt Light', NULL, 'Valentinaton', '78039', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(37, NULL, 'Cooper', 'Powlowski', NULL, 'Gutmann Light', NULL, 'Heathcoteport', '82205-6108', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(38, NULL, 'Cooper', 'Powlowski', NULL, 'Gutmann Light', NULL, 'Heathcoteport', '82205-6108', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(39, 10, 'Cooper', 'Powlowski', NULL, 'Gutmann Light', NULL, 'Heathcoteport', '82205-6108', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(40, NULL, 'Elaina', 'Runolfsdottir', NULL, 'Kelley Radial', NULL, 'Padbergstad', '25347', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(41, NULL, 'Elaina', 'Runolfsdottir', NULL, 'Kelley Radial', NULL, 'Padbergstad', '25347', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(42, 12, 'Elaina', 'Runolfsdottir', NULL, 'Kelley Radial', NULL, 'Padbergstad', '25347', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(43, NULL, 'Abbey', 'Tromp', NULL, 'Renner Drive', NULL, 'Larsonmouth', '58756-4026', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(44, NULL, 'Abbey', 'Tromp', NULL, 'Renner Drive', NULL, 'Larsonmouth', '58756-4026', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(45, 9, 'Abbey', 'Tromp', NULL, 'Renner Drive', NULL, 'Larsonmouth', '58756-4026', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(46, NULL, 'Deshaun', 'Goodwin', NULL, 'Abbey Plaza', NULL, 'Julioville', '43030-8843', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(47, NULL, 'Deshaun', 'Goodwin', NULL, 'Abbey Plaza', NULL, 'Julioville', '43030-8843', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(48, 20, 'Deshaun', 'Goodwin', NULL, 'Abbey Plaza', NULL, 'Julioville', '43030-8843', '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'US', NULL, NULL),
(49, NULL, 'Bailee', 'Herman', NULL, 'Vandervort Vista', NULL, 'Wittingborough', '12079-2738', '2019-01-18 13:52:07', '2019-01-18 13:52:08', 'US', NULL, NULL),
(50, NULL, 'Bailee', 'Herman', NULL, 'Vandervort Vista', NULL, 'Wittingborough', '12079-2738', '2019-01-18 13:52:07', '2019-01-18 13:52:08', 'US', NULL, NULL),
(51, 2, 'Bailee', 'Herman', NULL, 'Vandervort Vista', NULL, 'Wittingborough', '12079-2738', '2019-01-18 13:52:07', '2019-01-18 13:52:08', 'US', NULL, NULL),
(52, NULL, 'Lucienne', 'Torp', NULL, 'Predovic Spur', NULL, 'Lebsackfurt', '32554', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(53, NULL, 'Lucienne', 'Torp', NULL, 'Predovic Spur', NULL, 'Lebsackfurt', '32554', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(54, 4, 'Lucienne', 'Torp', NULL, 'Predovic Spur', NULL, 'Lebsackfurt', '32554', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(55, NULL, 'Alejandra', 'O\'Hara', NULL, 'Twila Tunnel', NULL, 'Wizaland', '92385-4481', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(56, NULL, 'Alejandra', 'O\'Hara', NULL, 'Twila Tunnel', NULL, 'Wizaland', '92385-4481', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(57, 6, 'Alejandra', 'O\'Hara', NULL, 'Twila Tunnel', NULL, 'Wizaland', '92385-4481', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(58, NULL, 'Rafaela', 'Watsica', NULL, 'Gia Gateway', NULL, 'West Flossiefurt', '74156', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(59, NULL, 'Rafaela', 'Watsica', NULL, 'Gia Gateway', NULL, 'West Flossiefurt', '74156', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(60, 5, 'Rafaela', 'Watsica', NULL, 'Gia Gateway', NULL, 'West Flossiefurt', '74156', '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'US', NULL, NULL),
(61, 5, 'Cole', 'Schroeder', NULL, '2652 Fay Track', NULL, 'Port Trevaville', '89440-2645', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(62, 10, 'Velma', 'Littel', NULL, '2090 Dusty Square Suite 441', NULL, 'Buckridgeville', '94254', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(63, 7, 'Weldon', 'Trantow', '+1.491.769.8450', '761 Kellie Camp Suite 073', NULL, 'West Kellie', '71164-4684', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(64, 15, 'Kailey', 'Spencer', NULL, '7289 Yasmine Plaza', NULL, 'Lake Ladariusland', '59327-9664', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(65, 12, 'Conner', 'Thompson', '1-274-709-1975 x153', '78881 Hertha Crossroad Suite 378', 'Glover Inc', 'Jarredhaven', '37172', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(66, 11, 'Damien', 'Lowe', NULL, '6320 Santa Ville', NULL, 'South Jannieside', '01810', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(67, 13, 'Tyreek', 'Schinner', '1-994-534-3967 x37681', '37349 Mekhi Bridge Apt. 990', 'Hudson-Goodwin', 'Raquelberg', '07253', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(68, 13, 'Gail', 'Connelly', '225.922.5947 x59330', '2382 Keebler Divide Apt. 446', 'Kihn, Gulgowski and Walsh', 'Kearachester', '39846-9818', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(69, 13, 'Marjory', 'Howell', NULL, '30286 Barrows Loop', 'Bechtelar Inc', 'Faheyhaven', '91840-1461', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL),
(70, 20, 'Blaze', 'Hoppe', '784-469-6303 x635', '484 Prohaska Harbor Suite 382', 'Adams and Sons', 'Gusmouth', '60764-0881', '2019-01-18 13:52:11', '2019-01-18 13:52:11', 'US', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_address_log_entries`
--

DROP TABLE IF EXISTS `sylius_address_log_entries`;
CREATE TABLE IF NOT EXISTS `sylius_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_address_log_entries`
--

INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(1, 'create', '2019-01-18 13:52:04', '1', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Craig\";s:8:\"lastName\";s:7:\"Effertz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Elsa Squares\";s:7:\"company\";N;s:4:\"city\";s:12:\"Keelingville\";s:8:\"postcode\";s:10:\"40638-6490\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(2, 'create', '2019-01-18 13:52:04', '2', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Craig\";s:8:\"lastName\";s:7:\"Effertz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Elsa Squares\";s:7:\"company\";N;s:4:\"city\";s:12:\"Keelingville\";s:8:\"postcode\";s:10:\"40638-6490\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(3, 'create', '2019-01-18 13:52:04', '3', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Craig\";s:8:\"lastName\";s:7:\"Effertz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Elsa Squares\";s:7:\"company\";N;s:4:\"city\";s:12:\"Keelingville\";s:8:\"postcode\";s:10:\"40638-6490\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(4, 'create', '2019-01-18 13:52:08', '4', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Lauren\";s:8:\"lastName\";s:8:\"Emmerich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Mustafa Mall\";s:7:\"company\";N;s:4:\"city\";s:10:\"Ardenville\";s:8:\"postcode\";s:10:\"23289-3554\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(5, 'create', '2019-01-18 13:52:08', '5', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Lauren\";s:8:\"lastName\";s:8:\"Emmerich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Mustafa Mall\";s:7:\"company\";N;s:4:\"city\";s:10:\"Ardenville\";s:8:\"postcode\";s:10:\"23289-3554\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(6, 'create', '2019-01-18 13:52:08', '6', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Lauren\";s:8:\"lastName\";s:8:\"Emmerich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Mustafa Mall\";s:7:\"company\";N;s:4:\"city\";s:10:\"Ardenville\";s:8:\"postcode\";s:10:\"23289-3554\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(7, 'create', '2019-01-18 13:52:08', '7', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Bud\";s:8:\"lastName\";s:5:\"Johns\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Osbaldo Inlet\";s:7:\"company\";N;s:4:\"city\";s:9:\"Reggieton\";s:8:\"postcode\";s:5:\"49290\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(8, 'create', '2019-01-18 13:52:08', '8', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Bud\";s:8:\"lastName\";s:5:\"Johns\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Osbaldo Inlet\";s:7:\"company\";N;s:4:\"city\";s:9:\"Reggieton\";s:8:\"postcode\";s:5:\"49290\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(9, 'create', '2019-01-18 13:52:08', '9', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Bud\";s:8:\"lastName\";s:5:\"Johns\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Osbaldo Inlet\";s:7:\"company\";N;s:4:\"city\";s:9:\"Reggieton\";s:8:\"postcode\";s:5:\"49290\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(10, 'create', '2019-01-18 13:52:08', '10', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Tamara\";s:8:\"lastName\";s:5:\"Olson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"Corkery Passage\";s:7:\"company\";N;s:4:\"city\";s:10:\"Bradenport\";s:8:\"postcode\";s:5:\"50529\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(11, 'create', '2019-01-18 13:52:08', '11', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Tamara\";s:8:\"lastName\";s:5:\"Olson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"Corkery Passage\";s:7:\"company\";N;s:4:\"city\";s:10:\"Bradenport\";s:8:\"postcode\";s:5:\"50529\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(12, 'create', '2019-01-18 13:52:08', '12', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Tamara\";s:8:\"lastName\";s:5:\"Olson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"Corkery Passage\";s:7:\"company\";N;s:4:\"city\";s:10:\"Bradenport\";s:8:\"postcode\";s:5:\"50529\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(13, 'create', '2019-01-18 13:52:08', '13', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Margarett\";s:8:\"lastName\";s:8:\"Cummings\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"Josephine Terrace\";s:7:\"company\";N;s:4:\"city\";s:9:\"Langmouth\";s:8:\"postcode\";s:10:\"71281-9491\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(14, 'create', '2019-01-18 13:52:08', '14', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Margarett\";s:8:\"lastName\";s:8:\"Cummings\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"Josephine Terrace\";s:7:\"company\";N;s:4:\"city\";s:9:\"Langmouth\";s:8:\"postcode\";s:10:\"71281-9491\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(15, 'create', '2019-01-18 13:52:08', '15', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Margarett\";s:8:\"lastName\";s:8:\"Cummings\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"Josephine Terrace\";s:7:\"company\";N;s:4:\"city\";s:9:\"Langmouth\";s:8:\"postcode\";s:10:\"71281-9491\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(16, 'create', '2019-01-18 13:52:08', '16', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Alfredo\";s:8:\"lastName\";s:7:\"Okuneva\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Terrance Loop\";s:7:\"company\";N;s:4:\"city\";s:10:\"Spencerton\";s:8:\"postcode\";s:10:\"52733-2364\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(17, 'create', '2019-01-18 13:52:08', '17', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Alfredo\";s:8:\"lastName\";s:7:\"Okuneva\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Terrance Loop\";s:7:\"company\";N;s:4:\"city\";s:10:\"Spencerton\";s:8:\"postcode\";s:10:\"52733-2364\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(18, 'create', '2019-01-18 13:52:08', '18', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Alfredo\";s:8:\"lastName\";s:7:\"Okuneva\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Terrance Loop\";s:7:\"company\";N;s:4:\"city\";s:10:\"Spencerton\";s:8:\"postcode\";s:10:\"52733-2364\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(19, 'create', '2019-01-18 13:52:08', '19', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Gabrielle\";s:8:\"lastName\";s:8:\"Dietrich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Stark Plain\";s:7:\"company\";N;s:4:\"city\";s:12:\"New Aylafurt\";s:8:\"postcode\";s:5:\"79774\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(20, 'create', '2019-01-18 13:52:08', '20', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Gabrielle\";s:8:\"lastName\";s:8:\"Dietrich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Stark Plain\";s:7:\"company\";N;s:4:\"city\";s:12:\"New Aylafurt\";s:8:\"postcode\";s:5:\"79774\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(21, 'create', '2019-01-18 13:52:08', '21', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Gabrielle\";s:8:\"lastName\";s:8:\"Dietrich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Stark Plain\";s:7:\"company\";N;s:4:\"city\";s:12:\"New Aylafurt\";s:8:\"postcode\";s:5:\"79774\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(22, 'create', '2019-01-18 13:52:08', '22', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Rebekah\";s:8:\"lastName\";s:5:\"Crona\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"Grady Oval\";s:7:\"company\";N;s:4:\"city\";s:13:\"Medhurstville\";s:8:\"postcode\";s:5:\"33509\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(23, 'create', '2019-01-18 13:52:08', '23', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Rebekah\";s:8:\"lastName\";s:5:\"Crona\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"Grady Oval\";s:7:\"company\";N;s:4:\"city\";s:13:\"Medhurstville\";s:8:\"postcode\";s:5:\"33509\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(24, 'create', '2019-01-18 13:52:08', '24', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Rebekah\";s:8:\"lastName\";s:5:\"Crona\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"Grady Oval\";s:7:\"company\";N;s:4:\"city\";s:13:\"Medhurstville\";s:8:\"postcode\";s:5:\"33509\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(25, 'create', '2019-01-18 13:52:08', '25', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Arvid\";s:8:\"lastName\";s:9:\"Bashirian\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Thea Street\";s:7:\"company\";N;s:4:\"city\";s:14:\"Gutkowskiville\";s:8:\"postcode\";s:10:\"44770-6807\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(26, 'create', '2019-01-18 13:52:08', '26', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Arvid\";s:8:\"lastName\";s:9:\"Bashirian\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Thea Street\";s:7:\"company\";N;s:4:\"city\";s:14:\"Gutkowskiville\";s:8:\"postcode\";s:10:\"44770-6807\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(27, 'create', '2019-01-18 13:52:08', '27', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Arvid\";s:8:\"lastName\";s:9:\"Bashirian\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Thea Street\";s:7:\"company\";N;s:4:\"city\";s:14:\"Gutkowskiville\";s:8:\"postcode\";s:10:\"44770-6807\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(28, 'create', '2019-01-18 13:52:08', '28', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Melody\";s:8:\"lastName\";s:5:\"Mills\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"Minnie Squares\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Porter\";s:8:\"postcode\";s:10:\"29524-3708\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(29, 'create', '2019-01-18 13:52:08', '29', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Melody\";s:8:\"lastName\";s:5:\"Mills\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"Minnie Squares\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Porter\";s:8:\"postcode\";s:10:\"29524-3708\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(30, 'create', '2019-01-18 13:52:08', '30', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Melody\";s:8:\"lastName\";s:5:\"Mills\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"Minnie Squares\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Porter\";s:8:\"postcode\";s:10:\"29524-3708\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(31, 'create', '2019-01-18 13:52:08', '31', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Flavio\";s:8:\"lastName\";s:9:\"Rodriguez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Torphy Green\";s:7:\"company\";N;s:4:\"city\";s:11:\"Predovicton\";s:8:\"postcode\";s:10:\"79713-7875\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(32, 'create', '2019-01-18 13:52:08', '32', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Flavio\";s:8:\"lastName\";s:9:\"Rodriguez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Torphy Green\";s:7:\"company\";N;s:4:\"city\";s:11:\"Predovicton\";s:8:\"postcode\";s:10:\"79713-7875\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(33, 'create', '2019-01-18 13:52:08', '33', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Flavio\";s:8:\"lastName\";s:9:\"Rodriguez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Torphy Green\";s:7:\"company\";N;s:4:\"city\";s:11:\"Predovicton\";s:8:\"postcode\";s:10:\"79713-7875\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(34, 'create', '2019-01-18 13:52:08', '34', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Cordelia\";s:8:\"lastName\";s:8:\"Mitchell\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Yundt Light\";s:7:\"company\";N;s:4:\"city\";s:12:\"Valentinaton\";s:8:\"postcode\";s:5:\"78039\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(35, 'create', '2019-01-18 13:52:08', '35', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Cordelia\";s:8:\"lastName\";s:8:\"Mitchell\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Yundt Light\";s:7:\"company\";N;s:4:\"city\";s:12:\"Valentinaton\";s:8:\"postcode\";s:5:\"78039\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(36, 'create', '2019-01-18 13:52:08', '36', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Cordelia\";s:8:\"lastName\";s:8:\"Mitchell\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Yundt Light\";s:7:\"company\";N;s:4:\"city\";s:12:\"Valentinaton\";s:8:\"postcode\";s:5:\"78039\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(37, 'create', '2019-01-18 13:52:08', '37', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Cooper\";s:8:\"lastName\";s:9:\"Powlowski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Gutmann Light\";s:7:\"company\";N;s:4:\"city\";s:13:\"Heathcoteport\";s:8:\"postcode\";s:10:\"82205-6108\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(38, 'create', '2019-01-18 13:52:08', '38', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Cooper\";s:8:\"lastName\";s:9:\"Powlowski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Gutmann Light\";s:7:\"company\";N;s:4:\"city\";s:13:\"Heathcoteport\";s:8:\"postcode\";s:10:\"82205-6108\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(39, 'create', '2019-01-18 13:52:08', '39', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Cooper\";s:8:\"lastName\";s:9:\"Powlowski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Gutmann Light\";s:7:\"company\";N;s:4:\"city\";s:13:\"Heathcoteport\";s:8:\"postcode\";s:10:\"82205-6108\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(40, 'create', '2019-01-18 13:52:08', '40', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Elaina\";s:8:\"lastName\";s:13:\"Runolfsdottir\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Kelley Radial\";s:7:\"company\";N;s:4:\"city\";s:11:\"Padbergstad\";s:8:\"postcode\";s:5:\"25347\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(41, 'create', '2019-01-18 13:52:08', '41', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Elaina\";s:8:\"lastName\";s:13:\"Runolfsdottir\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Kelley Radial\";s:7:\"company\";N;s:4:\"city\";s:11:\"Padbergstad\";s:8:\"postcode\";s:5:\"25347\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(42, 'create', '2019-01-18 13:52:08', '42', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Elaina\";s:8:\"lastName\";s:13:\"Runolfsdottir\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Kelley Radial\";s:7:\"company\";N;s:4:\"city\";s:11:\"Padbergstad\";s:8:\"postcode\";s:5:\"25347\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(43, 'create', '2019-01-18 13:52:08', '43', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Abbey\";s:8:\"lastName\";s:5:\"Tromp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Renner Drive\";s:7:\"company\";N;s:4:\"city\";s:11:\"Larsonmouth\";s:8:\"postcode\";s:10:\"58756-4026\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(44, 'create', '2019-01-18 13:52:08', '44', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Abbey\";s:8:\"lastName\";s:5:\"Tromp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Renner Drive\";s:7:\"company\";N;s:4:\"city\";s:11:\"Larsonmouth\";s:8:\"postcode\";s:10:\"58756-4026\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(45, 'create', '2019-01-18 13:52:08', '45', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Abbey\";s:8:\"lastName\";s:5:\"Tromp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Renner Drive\";s:7:\"company\";N;s:4:\"city\";s:11:\"Larsonmouth\";s:8:\"postcode\";s:10:\"58756-4026\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(46, 'create', '2019-01-18 13:52:08', '46', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Deshaun\";s:8:\"lastName\";s:7:\"Goodwin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Abbey Plaza\";s:7:\"company\";N;s:4:\"city\";s:10:\"Julioville\";s:8:\"postcode\";s:10:\"43030-8843\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(47, 'create', '2019-01-18 13:52:08', '47', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Deshaun\";s:8:\"lastName\";s:7:\"Goodwin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Abbey Plaza\";s:7:\"company\";N;s:4:\"city\";s:10:\"Julioville\";s:8:\"postcode\";s:10:\"43030-8843\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(48, 'create', '2019-01-18 13:52:08', '48', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Deshaun\";s:8:\"lastName\";s:7:\"Goodwin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Abbey Plaza\";s:7:\"company\";N;s:4:\"city\";s:10:\"Julioville\";s:8:\"postcode\";s:10:\"43030-8843\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(49, 'create', '2019-01-18 13:52:08', '49', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Bailee\";s:8:\"lastName\";s:6:\"Herman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"Vandervort Vista\";s:7:\"company\";N;s:4:\"city\";s:14:\"Wittingborough\";s:8:\"postcode\";s:10:\"12079-2738\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(50, 'create', '2019-01-18 13:52:08', '50', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Bailee\";s:8:\"lastName\";s:6:\"Herman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"Vandervort Vista\";s:7:\"company\";N;s:4:\"city\";s:14:\"Wittingborough\";s:8:\"postcode\";s:10:\"12079-2738\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(51, 'create', '2019-01-18 13:52:08', '51', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Bailee\";s:8:\"lastName\";s:6:\"Herman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"Vandervort Vista\";s:7:\"company\";N;s:4:\"city\";s:14:\"Wittingborough\";s:8:\"postcode\";s:10:\"12079-2738\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(52, 'create', '2019-01-18 13:52:08', '52', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Lucienne\";s:8:\"lastName\";s:4:\"Torp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Predovic Spur\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lebsackfurt\";s:8:\"postcode\";s:5:\"32554\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(53, 'create', '2019-01-18 13:52:08', '53', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Lucienne\";s:8:\"lastName\";s:4:\"Torp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Predovic Spur\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lebsackfurt\";s:8:\"postcode\";s:5:\"32554\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(54, 'create', '2019-01-18 13:52:08', '54', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Lucienne\";s:8:\"lastName\";s:4:\"Torp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Predovic Spur\";s:7:\"company\";N;s:4:\"city\";s:11:\"Lebsackfurt\";s:8:\"postcode\";s:5:\"32554\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(55, 'create', '2019-01-18 13:52:08', '55', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alejandra\";s:8:\"lastName\";s:6:\"O\'Hara\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Twila Tunnel\";s:7:\"company\";N;s:4:\"city\";s:8:\"Wizaland\";s:8:\"postcode\";s:10:\"92385-4481\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(56, 'create', '2019-01-18 13:52:08', '56', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alejandra\";s:8:\"lastName\";s:6:\"O\'Hara\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Twila Tunnel\";s:7:\"company\";N;s:4:\"city\";s:8:\"Wizaland\";s:8:\"postcode\";s:10:\"92385-4481\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(57, 'create', '2019-01-18 13:52:08', '57', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alejandra\";s:8:\"lastName\";s:6:\"O\'Hara\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Twila Tunnel\";s:7:\"company\";N;s:4:\"city\";s:8:\"Wizaland\";s:8:\"postcode\";s:10:\"92385-4481\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(58, 'create', '2019-01-18 13:52:08', '58', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Rafaela\";s:8:\"lastName\";s:7:\"Watsica\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Gia Gateway\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Flossiefurt\";s:8:\"postcode\";s:5:\"74156\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(59, 'create', '2019-01-18 13:52:08', '59', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Rafaela\";s:8:\"lastName\";s:7:\"Watsica\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Gia Gateway\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Flossiefurt\";s:8:\"postcode\";s:5:\"74156\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(60, 'create', '2019-01-18 13:52:08', '60', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Rafaela\";s:8:\"lastName\";s:7:\"Watsica\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Gia Gateway\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Flossiefurt\";s:8:\"postcode\";s:5:\"74156\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(61, 'create', '2019-01-18 13:52:11', '61', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Cole\";s:8:\"lastName\";s:9:\"Schroeder\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"2652 Fay Track\";s:7:\"company\";N;s:4:\"city\";s:15:\"Port Trevaville\";s:8:\"postcode\";s:10:\"89440-2645\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(62, 'create', '2019-01-18 13:52:11', '62', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Velma\";s:8:\"lastName\";s:6:\"Littel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"2090 Dusty Square Suite 441\";s:7:\"company\";N;s:4:\"city\";s:14:\"Buckridgeville\";s:8:\"postcode\";s:5:\"94254\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(63, 'create', '2019-01-18 13:52:11', '63', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Weldon\";s:8:\"lastName\";s:7:\"Trantow\";s:11:\"phoneNumber\";s:15:\"+1.491.769.8450\";s:6:\"street\";s:25:\"761 Kellie Camp Suite 073\";s:7:\"company\";N;s:4:\"city\";s:11:\"West Kellie\";s:8:\"postcode\";s:10:\"71164-4684\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(64, 'create', '2019-01-18 13:52:11', '64', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Kailey\";s:8:\"lastName\";s:7:\"Spencer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"7289 Yasmine Plaza\";s:7:\"company\";N;s:4:\"city\";s:17:\"Lake Ladariusland\";s:8:\"postcode\";s:10:\"59327-9664\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(65, 'create', '2019-01-18 13:52:11', '65', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Conner\";s:8:\"lastName\";s:8:\"Thompson\";s:11:\"phoneNumber\";s:19:\"1-274-709-1975 x153\";s:6:\"street\";s:32:\"78881 Hertha Crossroad Suite 378\";s:7:\"company\";s:10:\"Glover Inc\";s:4:\"city\";s:11:\"Jarredhaven\";s:8:\"postcode\";s:5:\"37172\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(66, 'create', '2019-01-18 13:52:11', '66', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Damien\";s:8:\"lastName\";s:4:\"Lowe\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"6320 Santa Ville\";s:7:\"company\";N;s:4:\"city\";s:16:\"South Jannieside\";s:8:\"postcode\";s:5:\"01810\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(67, 'create', '2019-01-18 13:52:11', '67', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Tyreek\";s:8:\"lastName\";s:8:\"Schinner\";s:11:\"phoneNumber\";s:21:\"1-994-534-3967 x37681\";s:6:\"street\";s:27:\"37349 Mekhi Bridge Apt. 990\";s:7:\"company\";s:14:\"Hudson-Goodwin\";s:4:\"city\";s:10:\"Raquelberg\";s:8:\"postcode\";s:5:\"07253\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(68, 'create', '2019-01-18 13:52:11', '68', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Gail\";s:8:\"lastName\";s:8:\"Connelly\";s:11:\"phoneNumber\";s:19:\"225.922.5947 x59330\";s:6:\"street\";s:28:\"2382 Keebler Divide Apt. 446\";s:7:\"company\";s:25:\"Kihn, Gulgowski and Walsh\";s:4:\"city\";s:12:\"Kearachester\";s:8:\"postcode\";s:10:\"39846-9818\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(69, 'create', '2019-01-18 13:52:11', '69', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Marjory\";s:8:\"lastName\";s:6:\"Howell\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"30286 Barrows Loop\";s:7:\"company\";s:13:\"Bechtelar Inc\";s:4:\"city\";s:10:\"Faheyhaven\";s:8:\"postcode\";s:10:\"91840-1461\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(70, 'create', '2019-01-18 13:52:11', '70', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Blaze\";s:8:\"lastName\";s:5:\"Hoppe\";s:11:\"phoneNumber\";s:17:\"784-469-6303 x635\";s:6:\"street\";s:29:\"484 Prohaska Harbor Suite 382\";s:7:\"company\";s:14:\"Adams and Sons\";s:4:\"city\";s:8:\"Gusmouth\";s:8:\"postcode\";s:10:\"60764-0881\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
CREATE TABLE IF NOT EXISTS `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_adjustment`
--

INSERT INTO `sylius_adjustment` (`id`, `order_id`, `order_item_id`, `order_item_unit_id`, `type`, `label`, `amount`, `is_neutral`, `is_locked`, `origin_code`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 'order_promotion', 'Christmas', -51, 0, 0, 'christmas', '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(2, NULL, NULL, 2, 'order_promotion', 'Christmas', -50, 0, 0, 'christmas', '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(3, NULL, NULL, 3, 'order_promotion', 'Christmas', -50, 0, 0, 'christmas', '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(4, NULL, NULL, 4, 'order_promotion', 'Christmas', -51, 0, 0, 'christmas', '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(5, NULL, NULL, 5, 'order_promotion', 'Christmas', -51, 0, 0, 'christmas', '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(6, NULL, NULL, 6, 'order_promotion', 'Christmas', -51, 0, 0, 'christmas', '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(7, NULL, NULL, 7, 'order_promotion', 'Christmas', -50, 0, 0, 'christmas', '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(8, 1, NULL, NULL, 'shipping', 'UPS', 2960, 0, 0, NULL, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(9, NULL, NULL, 8, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(10, NULL, NULL, 9, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(11, NULL, NULL, 10, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(12, NULL, NULL, 11, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(13, NULL, NULL, 12, 'order_promotion', 'Christmas', -4, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(14, NULL, NULL, 13, 'order_promotion', 'Christmas', -37, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(15, NULL, NULL, 14, 'order_promotion', 'Christmas', -37, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(16, NULL, NULL, 15, 'order_promotion', 'Christmas', -37, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(17, NULL, NULL, 16, 'order_promotion', 'Christmas', -18, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(18, NULL, NULL, 17, 'order_promotion', 'Christmas', -18, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(19, NULL, NULL, 18, 'order_promotion', 'Christmas', -18, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(20, NULL, NULL, 19, 'order_promotion', 'Christmas', -18, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(21, NULL, NULL, 20, 'order_promotion', 'Christmas', -18, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(22, NULL, NULL, 21, 'order_promotion', 'Christmas', -20, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(23, 2, NULL, NULL, 'shipping', 'DHL Express', 2313, 0, 0, NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(24, NULL, NULL, 22, 'order_promotion', 'Christmas', -23, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(25, NULL, NULL, 23, 'order_promotion', 'Christmas', -23, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(26, NULL, NULL, 24, 'order_promotion', 'Christmas', -22, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(27, NULL, NULL, 25, 'order_promotion', 'Christmas', -22, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(28, NULL, NULL, 26, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(29, NULL, NULL, 27, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(30, NULL, NULL, 28, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(31, NULL, NULL, 29, 'order_promotion', 'Christmas', -20, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(32, NULL, NULL, 30, 'order_promotion', 'Christmas', -47, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(33, NULL, NULL, 31, 'order_promotion', 'Christmas', -47, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(34, NULL, NULL, 32, 'order_promotion', 'Christmas', -47, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(35, 3, NULL, NULL, 'shipping', 'UPS', 2960, 0, 0, NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(36, NULL, NULL, 33, 'order_promotion', 'Christmas', -19, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(37, NULL, NULL, 34, 'order_promotion', 'Christmas', -56, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(38, NULL, NULL, 35, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(39, NULL, NULL, 36, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(40, NULL, NULL, 37, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(41, NULL, NULL, 38, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(42, 4, NULL, NULL, 'shipping', 'UPS', 2960, 0, 0, NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(43, NULL, NULL, 39, 'order_promotion', 'Christmas', -51, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(44, NULL, NULL, 40, 'order_promotion', 'Christmas', -51, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(45, NULL, NULL, 41, 'order_promotion', 'Christmas', -50, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(46, NULL, NULL, 42, 'order_promotion', 'Christmas', -43, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(47, NULL, NULL, 43, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(48, NULL, NULL, 44, 'order_promotion', 'Christmas', -58, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(49, NULL, NULL, 45, 'order_promotion', 'Christmas', -69, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(50, NULL, NULL, 46, 'order_promotion', 'Christmas', -69, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(51, NULL, NULL, 47, 'order_promotion', 'Christmas', -69, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(52, NULL, NULL, 48, 'order_promotion', 'Christmas', -69, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(53, 5, NULL, NULL, 'shipping', 'FedEx', 8941, 0, 0, NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(54, NULL, NULL, 49, 'order_promotion', 'Christmas', -40, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(55, NULL, NULL, 50, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(56, NULL, NULL, 51, 'order_promotion', 'Christmas', -36, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(57, NULL, NULL, 52, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(58, NULL, NULL, 53, 'order_promotion', 'Christmas', -34, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(59, NULL, NULL, 54, 'order_promotion', 'Christmas', -34, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(60, NULL, NULL, 55, 'order_promotion', 'Christmas', -1, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(61, NULL, NULL, 56, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(62, NULL, NULL, 57, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(63, NULL, NULL, 58, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(64, 6, NULL, NULL, 'shipping', 'UPS', 2960, 0, 0, NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(65, NULL, NULL, 59, 'order_promotion', 'Christmas', -46, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(66, NULL, NULL, 60, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(67, NULL, NULL, 61, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(68, NULL, NULL, 62, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(69, NULL, NULL, 63, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(70, NULL, NULL, 64, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(71, NULL, NULL, 65, 'order_promotion', 'Christmas', -46, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(72, NULL, NULL, 66, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(73, NULL, NULL, 67, 'order_promotion', 'Christmas', -7, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(74, NULL, NULL, 68, 'order_promotion', 'Christmas', -7, 0, 0, 'christmas', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(75, 7, NULL, NULL, 'shipping', 'FedEx', 8941, 0, 0, NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(76, NULL, NULL, 69, 'order_promotion', 'Christmas', -46, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(77, NULL, NULL, 70, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(78, NULL, NULL, 71, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(79, NULL, NULL, 72, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(80, NULL, NULL, 73, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(81, NULL, NULL, 74, 'order_promotion', 'Christmas', -46, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(82, NULL, NULL, 75, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(83, NULL, NULL, 76, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(84, NULL, NULL, 77, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(85, NULL, NULL, 78, 'order_promotion', 'Christmas', -45, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(86, NULL, NULL, 79, 'order_promotion', 'Christmas', -2, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(87, NULL, NULL, 80, 'order_promotion', 'Christmas', -2, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(88, NULL, NULL, 81, 'order_promotion', 'Christmas', -1, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(89, NULL, NULL, 82, 'order_promotion', 'Christmas', -1, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(90, NULL, NULL, 83, 'order_promotion', 'Christmas', -1, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(91, NULL, NULL, 84, 'order_promotion', 'Christmas', -10, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(92, NULL, NULL, 85, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(93, NULL, NULL, 86, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(94, NULL, NULL, 87, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(95, NULL, NULL, 88, 'order_promotion', 'Christmas', -9, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(96, NULL, NULL, 89, 'order_promotion', 'Christmas', -23, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(97, NULL, NULL, 90, 'order_promotion', 'Christmas', -23, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(98, NULL, NULL, 91, 'order_promotion', 'Christmas', -23, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(99, NULL, NULL, 92, 'order_promotion', 'Christmas', -22, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(100, NULL, NULL, 93, 'order_promotion', 'Christmas', -22, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(101, 8, NULL, NULL, 'shipping', 'FedEx', 8941, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(102, 9, NULL, NULL, 'shipping', 'UPS', 2960, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(103, NULL, NULL, 95, 'order_promotion', 'Christmas', -28, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(104, NULL, NULL, 96, 'order_promotion', 'Christmas', -27, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(105, NULL, NULL, 97, 'order_promotion', 'Christmas', -27, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(106, NULL, NULL, 98, 'order_promotion', 'Christmas', -44, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(107, NULL, NULL, 99, 'order_promotion', 'Christmas', -44, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(108, NULL, NULL, 100, 'order_promotion', 'Christmas', -43, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(109, NULL, NULL, 101, 'order_promotion', 'Christmas', -43, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(110, NULL, NULL, 102, 'order_promotion', 'Christmas', -43, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(111, NULL, NULL, 103, 'order_promotion', 'Christmas', -36, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(112, NULL, NULL, 104, 'order_promotion', 'Christmas', -36, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(113, NULL, NULL, 105, 'order_promotion', 'Christmas', -36, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(114, NULL, NULL, 106, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(115, NULL, NULL, 107, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(116, 10, NULL, NULL, 'shipping', 'FedEx', 8941, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(117, NULL, NULL, 108, 'order_promotion', 'Christmas', -37, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(118, NULL, NULL, 109, 'order_promotion', 'Christmas', -37, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(119, NULL, NULL, 110, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(120, NULL, NULL, 111, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(121, NULL, NULL, 112, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(122, NULL, NULL, 113, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(123, NULL, NULL, 114, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(124, NULL, NULL, 115, 'order_promotion', 'Christmas', -36, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(125, NULL, NULL, 116, 'order_promotion', 'Christmas', -36, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(126, NULL, NULL, 117, 'order_promotion', 'Christmas', -36, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(127, NULL, NULL, 118, 'order_promotion', 'Christmas', -36, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(128, NULL, NULL, 119, 'order_promotion', 'Christmas', -11, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(129, NULL, NULL, 120, 'order_promotion', 'Christmas', -11, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(130, NULL, NULL, 121, 'order_promotion', 'Christmas', -11, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(131, NULL, NULL, 122, 'order_promotion', 'Christmas', -10, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(132, 11, NULL, NULL, 'shipping', 'FedEx', 8941, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(133, NULL, NULL, 123, 'order_promotion', 'Christmas', -15, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(134, NULL, NULL, 124, 'order_promotion', 'Christmas', -15, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(135, NULL, NULL, 125, 'order_promotion', 'Christmas', -15, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(136, NULL, NULL, 126, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(137, NULL, NULL, 127, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(138, NULL, NULL, 128, 'order_promotion', 'Christmas', -53, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(139, NULL, NULL, 129, 'order_promotion', 'Christmas', -53, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(140, NULL, NULL, 130, 'order_promotion', 'Christmas', -22, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(141, NULL, NULL, 131, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(142, NULL, NULL, 132, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(143, 12, NULL, NULL, 'shipping', 'DHL Express', 2313, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(144, NULL, NULL, 133, 'order_promotion', 'Christmas', -68, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(145, NULL, NULL, 134, 'order_promotion', 'Christmas', -68, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(146, NULL, NULL, 135, 'order_promotion', 'Christmas', -68, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(147, NULL, NULL, 136, 'order_promotion', 'Christmas', -68, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(148, NULL, NULL, 137, 'order_promotion', 'Christmas', -67, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(149, NULL, NULL, 138, 'order_promotion', 'Christmas', -51, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(150, 13, NULL, NULL, 'shipping', 'UPS', 2960, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(151, NULL, NULL, 139, 'order_promotion', 'Christmas', -1, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(152, NULL, NULL, 140, 'order_promotion', 'Christmas', -1, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(153, NULL, NULL, 142, 'order_promotion', 'Christmas', -58, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(154, NULL, NULL, 143, 'order_promotion', 'Christmas', -58, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(155, NULL, NULL, 144, 'order_promotion', 'Christmas', -57, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(156, NULL, NULL, 145, 'order_promotion', 'Christmas', -57, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(157, NULL, NULL, 146, 'order_promotion', 'Christmas', -57, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(158, NULL, NULL, 147, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(159, NULL, NULL, 148, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(160, NULL, NULL, 149, 'order_promotion', 'Christmas', -51, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(161, NULL, NULL, 150, 'order_promotion', 'Christmas', -55, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(162, 14, NULL, NULL, 'shipping', 'UPS', 2960, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(163, NULL, NULL, 151, 'order_promotion', 'Christmas', -27, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(164, NULL, NULL, 152, 'order_promotion', 'Christmas', -26, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(165, NULL, NULL, 153, 'order_promotion', 'Christmas', -26, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(166, NULL, NULL, 154, 'order_promotion', 'Christmas', -26, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(167, NULL, NULL, 155, 'order_promotion', 'Christmas', -22, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(168, NULL, NULL, 156, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(169, NULL, NULL, 157, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(170, NULL, NULL, 158, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(171, 15, NULL, NULL, 'shipping', 'FedEx', 8941, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(172, 16, NULL, NULL, 'shipping', 'DHL Express', 2313, 0, 0, NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(173, 17, NULL, NULL, 'shipping', 'FedEx', 8941, 0, 0, NULL, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(174, NULL, NULL, 163, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(175, NULL, NULL, 164, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(176, NULL, NULL, 165, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(177, NULL, NULL, 166, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(178, NULL, NULL, 167, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(179, NULL, NULL, 168, 'order_promotion', 'Christmas', -4, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(180, NULL, NULL, 169, 'order_promotion', 'Christmas', -4, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(181, NULL, NULL, 170, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(182, NULL, NULL, 171, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(183, NULL, NULL, 172, 'order_promotion', 'Christmas', -15, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(184, NULL, NULL, 173, 'order_promotion', 'Christmas', -15, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(185, NULL, NULL, 174, 'order_promotion', 'Christmas', -15, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(186, 18, NULL, NULL, 'shipping', 'DHL Express', 2313, 0, 0, NULL, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(187, NULL, NULL, 175, 'order_promotion', 'Christmas', -47, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(188, NULL, NULL, 176, 'order_promotion', 'Christmas', -47, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(189, NULL, NULL, 177, 'order_promotion', 'Christmas', -46, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(190, NULL, NULL, 178, 'order_promotion', 'Christmas', -46, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(191, NULL, NULL, 179, 'order_promotion', 'Christmas', -60, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(192, NULL, NULL, 180, 'order_promotion', 'Christmas', -60, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(193, NULL, NULL, 181, 'order_promotion', 'Christmas', -32, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(194, NULL, NULL, 182, 'order_promotion', 'Christmas', -32, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(195, NULL, NULL, 183, 'order_promotion', 'Christmas', -32, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(196, NULL, NULL, 184, 'order_promotion', 'Christmas', -31, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(197, NULL, NULL, 185, 'order_promotion', 'Christmas', -31, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(198, NULL, NULL, 186, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(199, NULL, NULL, 187, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(200, NULL, NULL, 188, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(201, NULL, NULL, 189, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(202, NULL, NULL, 190, 'order_promotion', 'Christmas', -14, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(203, 19, NULL, NULL, 'shipping', 'DHL Express', 2313, 0, 0, NULL, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(204, NULL, NULL, 191, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(205, NULL, NULL, 192, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(206, NULL, NULL, 193, 'order_promotion', 'Christmas', -35, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(207, NULL, NULL, 194, 'order_promotion', 'Christmas', -18, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(208, NULL, NULL, 195, 'order_promotion', 'Christmas', -29, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(209, NULL, NULL, 196, 'order_promotion', 'Christmas', -29, 0, 0, 'christmas', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(210, 20, NULL, NULL, 'shipping', 'FedEx', 8941, 0, 0, NULL, '2019-01-18 13:52:08', '2019-01-18 13:52:08');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_access_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_access_token`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_api_access_token`
--

INSERT INTO `sylius_admin_api_access_token` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(1, 1, 2, 'SampleToken', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_admin_api_auth_code`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_client`
--

DROP TABLE IF EXISTS `sylius_admin_api_client`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_api_client`
--

INSERT INTO `sylius_admin_api_client` (`id`, `random_id`, `redirect_uris`, `secret`, `allowed_grant_types`) VALUES
(1, 'demo_client', 'a:0:{}', 'secret_demo_client', 'a:1:{i:0;s:8:\"password\";}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_refresh_token`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
CREATE TABLE IF NOT EXISTS `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_user`
--

INSERT INTO `sylius_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`, `encoder_name`) VALUES
(1, 'sylius', 'sylius', 1, '37gscouveiqsc84s8kk8oo4wwokscc8', 'rrWMAqy6bJl/zvHSTqmy+yVHMXwgKP1BtI84srUvNgbv+T4x/SVUWlxNSYX7PIpwSB3qTGs9A9kVmvO6KlXi8g==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'sylius@example.com', 'sylius@example.com', '2019-01-18 13:51:44', '2019-01-18 13:51:44', 'John', 'Doe', 'en_US', NULL),
(2, 'api', 'api', 1, 'pl5pk6huhes04kgss04ckk4sckgk8co', '5zXOJmtoETMhNTeiKPDZ+XDmik17kahoDRQQ9u1O4w8y9410NQJTReF+K/W2rqLSS3P/PbxoR3+9BZjgnGVGyA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}', 'api@example.com', 'api@example.com', '2019-01-18 13:51:44', '2019-01-18 13:51:44', 'Luke', 'Brushwood', 'en_US', NULL),
(3, 'login', 'login', 1, 'b35qnsfa8wg8s4s0o44sccgs4s480kk', '$argon2i$v=19$m=1024,t=2,p=2$cHRwOUNtSGIucnNQUWN0Wg$sjN3PKyDb4V2VegbIPYLk2k8/ar6Wgz9uILFAtddpEE', '2019-04-19 10:01:10', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'login@gmail.com', 'login@gmail.com', '2019-01-18 13:53:20', '2019-04-19 10:03:25', NULL, NULL, 'en_US', 'argon2i');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
CREATE TABLE IF NOT EXISTS `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `shop_billing_data_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel`
--

INSERT INTO `sylius_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `skipping_payment_step_allowed`, `account_verification_required`, `shop_billing_data_id`) VALUES
(1, 1, 2, 1, 'US_WEB', 'US Web Store', 'Tan', NULL, 1, 'localhost', '2019-01-18 13:51:42', '2019-01-18 13:53:20', NULL, 'order_items_based', NULL, 0, 0, 1, NULL),
(2, 2, 2, 2, 'FR', 'France', '#000000', NULL, 1, NULL, '2019-01-18 15:37:19', '2019-01-18 15:37:21', NULL, 'order_items_based', NULL, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
CREATE TABLE IF NOT EXISTS `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_currencies`
--

INSERT INTO `sylius_channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
CREATE TABLE IF NOT EXISTS `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_locales`
--

INSERT INTO `sylius_channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_pricing`
--

DROP TABLE IF EXISTS `sylius_channel_pricing`;
CREATE TABLE IF NOT EXISTS `sylius_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_pricing`
--

INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `original_price`, `channel_code`) VALUES
(1, 1, 813, NULL, 'US_WEB'),
(2, 2, 565, NULL, 'US_WEB'),
(3, 3, 285, NULL, 'US_WEB'),
(4, 4, 131, NULL, 'US_WEB'),
(5, 5, 166, NULL, 'US_WEB'),
(6, 6, 78, NULL, 'US_WEB'),
(7, 7, 743, NULL, 'US_WEB'),
(8, 8, 218, NULL, 'US_WEB'),
(9, 9, 987, NULL, 'US_WEB'),
(10, 10, 663, NULL, 'US_WEB'),
(11, 11, 216, NULL, 'US_WEB'),
(12, 12, 508, NULL, 'US_WEB'),
(13, 13, 825, NULL, 'US_WEB'),
(14, 14, 308, NULL, 'US_WEB'),
(15, 15, 212, NULL, 'US_WEB'),
(16, 16, 374, NULL, 'US_WEB'),
(17, 17, 672, NULL, 'US_WEB'),
(18, 18, 272, NULL, 'US_WEB'),
(19, 19, 157, NULL, 'US_WEB'),
(20, 20, 865, NULL, 'US_WEB'),
(21, 21, 129, NULL, 'US_WEB'),
(22, 22, 761, NULL, 'US_WEB'),
(23, 23, 226, NULL, 'US_WEB'),
(24, 24, 236, NULL, 'US_WEB'),
(25, 25, 676, NULL, 'US_WEB'),
(26, 26, 200, NULL, 'US_WEB'),
(27, 27, 620, NULL, 'US_WEB'),
(28, 28, 745, NULL, 'US_WEB'),
(29, 29, 320, NULL, 'US_WEB'),
(30, 30, 265, NULL, 'US_WEB'),
(31, 31, 577, NULL, 'US_WEB'),
(32, 32, 723, NULL, 'US_WEB'),
(33, 33, 465, NULL, 'US_WEB'),
(34, 34, 821, NULL, 'US_WEB'),
(35, 35, 923, NULL, 'US_WEB'),
(36, 36, 894, NULL, 'US_WEB'),
(37, 37, 964, NULL, 'US_WEB'),
(38, 38, 46, NULL, 'US_WEB'),
(39, 39, 264, NULL, 'US_WEB'),
(40, 40, 466, NULL, 'US_WEB'),
(41, 41, 518, NULL, 'US_WEB'),
(42, 42, 399, NULL, 'US_WEB'),
(43, 43, 509, NULL, 'US_WEB'),
(44, 44, 765, NULL, 'US_WEB'),
(45, 45, 483, NULL, 'US_WEB'),
(46, 46, 854, NULL, 'US_WEB'),
(47, 47, 886, NULL, 'US_WEB'),
(48, 48, 470, NULL, 'US_WEB'),
(49, 49, 177, NULL, 'US_WEB'),
(50, 50, 516, NULL, 'US_WEB'),
(51, 51, 973, NULL, 'US_WEB'),
(52, 52, 55, NULL, 'US_WEB'),
(53, 53, 7, NULL, 'US_WEB'),
(54, 54, 18, NULL, 'US_WEB'),
(55, 55, 6, NULL, 'US_WEB'),
(56, 56, 267, NULL, 'US_WEB'),
(57, 57, 558, NULL, 'US_WEB'),
(58, 58, 552, NULL, 'US_WEB'),
(59, 59, 387, NULL, 'US_WEB'),
(60, 60, 412, NULL, 'US_WEB'),
(61, 61, 37, NULL, 'US_WEB'),
(62, 62, 418, NULL, 'US_WEB'),
(63, 63, 206, NULL, 'US_WEB'),
(64, 64, 556, NULL, 'US_WEB'),
(65, 65, 775, NULL, 'US_WEB'),
(66, 66, 975, NULL, 'US_WEB'),
(67, 67, 563, NULL, 'US_WEB'),
(68, 68, 131, NULL, 'US_WEB'),
(69, 69, 666, NULL, 'US_WEB'),
(70, 70, 623, NULL, 'US_WEB'),
(71, 71, 875, NULL, 'US_WEB'),
(72, 72, 507, NULL, 'US_WEB'),
(73, 73, 781, NULL, 'US_WEB'),
(74, 74, 7, NULL, 'US_WEB'),
(75, 75, 789, NULL, 'US_WEB'),
(76, 76, 76, NULL, 'US_WEB'),
(77, 77, 322, NULL, 'US_WEB'),
(78, 78, 965, NULL, 'US_WEB'),
(79, 79, 578, NULL, 'US_WEB'),
(80, 80, 298, NULL, 'US_WEB'),
(81, 81, 152, NULL, 'US_WEB'),
(82, 82, 621, NULL, 'US_WEB'),
(83, 83, 701, NULL, 'US_WEB'),
(84, 84, 391, NULL, 'US_WEB'),
(85, 85, 281, NULL, 'US_WEB'),
(86, 86, 695, NULL, 'US_WEB'),
(87, 87, 198, NULL, 'US_WEB'),
(88, 88, 181, NULL, 'US_WEB'),
(89, 89, 320, NULL, 'US_WEB'),
(90, 90, 162, NULL, 'US_WEB'),
(91, 91, 500, NULL, 'US_WEB'),
(92, 92, 529, NULL, 'US_WEB'),
(93, 93, 27, NULL, 'US_WEB'),
(94, 94, 40, NULL, 'US_WEB'),
(95, 95, 788, NULL, 'US_WEB'),
(96, 96, 647, NULL, 'US_WEB'),
(97, 97, 721, NULL, 'US_WEB'),
(98, 98, 971, NULL, 'US_WEB'),
(99, 99, 20, NULL, 'US_WEB'),
(100, 100, 305, NULL, 'US_WEB'),
(101, 101, 452, NULL, 'US_WEB'),
(102, 102, 502, NULL, 'US_WEB'),
(103, 103, 177, NULL, 'US_WEB'),
(104, 104, 97, NULL, 'US_WEB'),
(105, 105, 558, NULL, 'US_WEB'),
(106, 106, 134, NULL, 'US_WEB'),
(107, 107, 653, NULL, 'US_WEB'),
(108, 108, 231, NULL, 'US_WEB'),
(109, 109, 694, NULL, 'US_WEB'),
(110, 110, 282, NULL, 'US_WEB'),
(111, 111, 789, NULL, 'US_WEB'),
(112, 112, 987, NULL, 'US_WEB'),
(113, 113, 976, NULL, 'US_WEB'),
(114, 114, 571, NULL, 'US_WEB'),
(115, 115, 373, NULL, 'US_WEB'),
(116, 116, 246, NULL, 'US_WEB'),
(117, 117, 669, NULL, 'US_WEB'),
(118, 118, 210, NULL, 'US_WEB'),
(119, 119, 616, NULL, 'US_WEB'),
(120, 120, 248, NULL, 'US_WEB'),
(121, 121, 129, NULL, 'US_WEB'),
(122, 122, 649, NULL, 'US_WEB'),
(123, 123, 146, NULL, 'US_WEB'),
(124, 124, 879, NULL, 'US_WEB'),
(125, 125, 364, NULL, 'US_WEB'),
(126, 126, 155, NULL, 'US_WEB'),
(127, 127, 934, NULL, 'US_WEB'),
(128, 128, 973, NULL, 'US_WEB'),
(129, 129, 437, NULL, 'US_WEB'),
(130, 130, 244, NULL, 'US_WEB'),
(131, 131, 555, NULL, 'US_WEB'),
(132, 132, 271, NULL, 'US_WEB'),
(133, 133, 37, NULL, 'US_WEB'),
(134, 134, 307, NULL, 'US_WEB'),
(135, 135, 802, NULL, 'US_WEB'),
(136, 136, 166, NULL, 'US_WEB'),
(137, 137, 427, NULL, 'US_WEB'),
(138, 138, 141, NULL, 'US_WEB'),
(139, 139, 379, NULL, 'US_WEB'),
(140, 140, 133, NULL, 'US_WEB'),
(141, 141, 646, NULL, 'US_WEB'),
(142, 142, 100, NULL, 'US_WEB'),
(143, 143, 805, NULL, 'US_WEB'),
(144, 144, 54, NULL, 'US_WEB'),
(145, 145, 141, NULL, 'US_WEB'),
(146, 146, 231, NULL, 'US_WEB'),
(147, 147, 17, NULL, 'US_WEB'),
(148, 148, 633, NULL, 'US_WEB'),
(149, 149, 125, NULL, 'US_WEB'),
(150, 150, 723, NULL, 'US_WEB'),
(151, 151, 586, NULL, 'US_WEB'),
(152, 152, 12, NULL, 'US_WEB'),
(153, 153, 421, NULL, 'US_WEB'),
(154, 154, 256, NULL, 'US_WEB'),
(155, 155, 114, NULL, 'US_WEB'),
(156, 156, 827, NULL, 'US_WEB'),
(157, 157, 451, NULL, 'US_WEB'),
(158, 158, 889, NULL, 'US_WEB'),
(159, 159, 383, NULL, 'US_WEB'),
(160, 160, 917, NULL, 'US_WEB'),
(161, 161, 828, NULL, 'US_WEB'),
(162, 162, 298, NULL, 'US_WEB'),
(163, 163, 752, NULL, 'US_WEB'),
(164, 164, 369, NULL, 'US_WEB'),
(165, 165, 860, NULL, 'US_WEB'),
(166, 166, 630, NULL, 'US_WEB'),
(167, 167, 222, NULL, 'US_WEB'),
(168, 168, 797, NULL, 'US_WEB'),
(169, 169, 391, NULL, 'US_WEB'),
(170, 170, 190, NULL, 'US_WEB'),
(171, 171, 286, NULL, 'US_WEB'),
(172, 172, 789, NULL, 'US_WEB'),
(173, 173, 9, NULL, 'US_WEB'),
(174, 174, 356, NULL, 'US_WEB'),
(175, 175, 403, NULL, 'US_WEB'),
(176, 176, 12, NULL, 'US_WEB'),
(177, 177, 157, NULL, 'US_WEB'),
(178, 178, 476, NULL, 'US_WEB'),
(179, 179, 883, NULL, 'US_WEB'),
(180, 180, 393, NULL, 'US_WEB'),
(181, 181, 13, NULL, 'US_WEB'),
(182, 182, 82, NULL, 'US_WEB'),
(183, 183, 506, NULL, 'US_WEB'),
(184, 184, 412, NULL, 'US_WEB'),
(185, 185, 873, NULL, 'US_WEB'),
(186, 186, 309, NULL, 'US_WEB'),
(187, 187, 177, NULL, 'US_WEB'),
(188, 188, 312, NULL, 'US_WEB'),
(189, 189, 32, NULL, 'US_WEB'),
(190, 190, 978, NULL, 'US_WEB'),
(191, 191, 771, NULL, 'US_WEB'),
(192, 192, 659, NULL, 'US_WEB'),
(193, 193, 607, NULL, 'US_WEB'),
(194, 194, 128, NULL, 'US_WEB'),
(195, 195, 850, NULL, 'US_WEB'),
(196, 196, 189, NULL, 'US_WEB'),
(197, 197, 726, NULL, 'US_WEB'),
(198, 198, 625, NULL, 'US_WEB'),
(199, 199, 573, NULL, 'US_WEB'),
(200, 200, 33, NULL, 'US_WEB'),
(201, 201, 381, NULL, 'US_WEB'),
(202, 202, 295, NULL, 'US_WEB'),
(203, 203, 645, NULL, 'US_WEB'),
(204, 204, 557, NULL, 'US_WEB'),
(205, 205, 98, NULL, 'US_WEB'),
(206, 206, 400, NULL, 'US_WEB'),
(207, 207, 619, NULL, 'US_WEB'),
(208, 208, 538, NULL, 'US_WEB'),
(209, 209, 878, NULL, 'US_WEB'),
(210, 210, 641, NULL, 'US_WEB'),
(211, 211, 715, NULL, 'US_WEB'),
(212, 212, 853, NULL, 'US_WEB'),
(213, 213, 832, NULL, 'US_WEB'),
(214, 214, 742, NULL, 'US_WEB'),
(215, 215, 80, NULL, 'US_WEB'),
(216, 216, 949, NULL, 'US_WEB'),
(217, 217, 460, NULL, 'US_WEB'),
(218, 218, 992, NULL, 'US_WEB'),
(219, 219, 733, NULL, 'US_WEB'),
(220, 220, 883, NULL, 'US_WEB'),
(221, 221, 391, NULL, 'US_WEB'),
(222, 222, 966, NULL, 'US_WEB'),
(223, 223, 186, NULL, 'US_WEB'),
(224, 224, 47, NULL, 'US_WEB'),
(225, 225, 552, NULL, 'US_WEB'),
(226, 226, 575, NULL, 'US_WEB'),
(227, 227, 976, NULL, 'US_WEB'),
(228, 228, 441, NULL, 'US_WEB'),
(229, 229, 934, NULL, 'US_WEB'),
(230, 230, 468, NULL, 'US_WEB'),
(231, 231, 997, NULL, 'US_WEB'),
(232, 232, 596, NULL, 'US_WEB'),
(233, 233, 928, NULL, 'US_WEB'),
(234, 234, 297, NULL, 'US_WEB'),
(235, 235, 414, NULL, 'US_WEB'),
(236, 236, 677, NULL, 'US_WEB'),
(237, 237, 988, NULL, 'US_WEB'),
(238, 238, 8, NULL, 'US_WEB'),
(239, 239, 509, NULL, 'US_WEB'),
(240, 240, 288, NULL, 'US_WEB'),
(241, 241, 207, NULL, 'US_WEB'),
(242, 242, 297, NULL, 'US_WEB'),
(243, 243, 506, NULL, 'US_WEB'),
(244, 244, 56, NULL, 'US_WEB'),
(245, 245, 232, NULL, 'US_WEB'),
(246, 246, 482, NULL, 'US_WEB'),
(247, 247, 228, NULL, 'US_WEB'),
(248, 248, 123, NULL, 'US_WEB'),
(249, 249, 401, NULL, 'US_WEB'),
(250, 250, 571, NULL, 'US_WEB'),
(251, 251, 273, NULL, 'US_WEB'),
(252, 252, 708, NULL, 'US_WEB'),
(253, 253, 267, NULL, 'US_WEB'),
(254, 254, 723, NULL, 'US_WEB'),
(255, 255, 307, NULL, 'US_WEB'),
(256, 256, 668, NULL, 'US_WEB'),
(257, 257, 150, NULL, 'US_WEB'),
(258, 258, 798, NULL, 'US_WEB'),
(259, 259, 466, NULL, 'US_WEB'),
(260, 260, 436, NULL, 'US_WEB'),
(261, 261, 912, NULL, 'US_WEB'),
(262, 262, 769, NULL, 'US_WEB'),
(263, 263, 972, NULL, 'US_WEB'),
(264, 264, 908, NULL, 'US_WEB'),
(265, 265, 573, NULL, 'US_WEB'),
(266, 266, 910, NULL, 'US_WEB'),
(267, 267, 741, NULL, 'US_WEB'),
(268, 268, 477, NULL, 'US_WEB'),
(269, 269, 757, NULL, 'US_WEB'),
(270, 270, 577, NULL, 'US_WEB'),
(271, 271, 665, NULL, 'US_WEB'),
(272, 272, 219, NULL, 'US_WEB'),
(273, 273, 820, NULL, 'US_WEB'),
(274, 274, 921, NULL, 'US_WEB'),
(275, 275, 510, NULL, 'US_WEB'),
(276, 276, 440, NULL, 'US_WEB'),
(277, 277, 511, NULL, 'US_WEB'),
(278, 278, 18, NULL, 'US_WEB'),
(279, 279, 995, NULL, 'US_WEB'),
(280, 280, 729, NULL, 'US_WEB'),
(281, 281, 345, NULL, 'US_WEB'),
(282, 282, 359, NULL, 'US_WEB'),
(283, 283, 604, NULL, 'US_WEB'),
(284, 284, 449, NULL, 'US_WEB'),
(285, 285, 321, NULL, 'US_WEB'),
(286, 286, 543, NULL, 'US_WEB'),
(287, 287, 561, NULL, 'US_WEB'),
(288, 288, 257, NULL, 'US_WEB'),
(289, 289, 349, NULL, 'US_WEB'),
(290, 290, 848, NULL, 'US_WEB'),
(291, 291, 395, NULL, 'US_WEB'),
(292, 292, 425, NULL, 'US_WEB'),
(293, 293, 78, NULL, 'US_WEB'),
(294, 294, 998, NULL, 'US_WEB'),
(295, 295, 671, NULL, 'US_WEB'),
(296, 296, 150, NULL, 'US_WEB'),
(297, 297, 324, NULL, 'US_WEB'),
(298, 298, 929, NULL, 'US_WEB'),
(299, 299, 638, NULL, 'US_WEB'),
(300, 300, 734, NULL, 'US_WEB'),
(301, 301, 802, NULL, 'US_WEB'),
(302, 302, 983, NULL, 'US_WEB'),
(303, 303, 724, NULL, 'US_WEB'),
(304, 304, 202, NULL, 'US_WEB'),
(305, 305, 703, NULL, 'US_WEB'),
(306, 306, 2, NULL, 'US_WEB'),
(307, 307, 562, NULL, 'US_WEB'),
(308, 308, 174, NULL, 'US_WEB'),
(309, 309, 700, NULL, 'US_WEB'),
(310, 310, 125, NULL, 'US_WEB'),
(311, 311, 854, NULL, 'US_WEB'),
(312, 312, 888, NULL, 'US_WEB'),
(313, 313, 492, NULL, 'US_WEB'),
(314, 314, 672, NULL, 'US_WEB'),
(315, 315, 488, NULL, 'US_WEB'),
(316, 316, 97, NULL, 'US_WEB'),
(317, 317, 822, NULL, 'US_WEB'),
(318, 318, 279, NULL, 'US_WEB'),
(319, 319, 155, NULL, 'US_WEB'),
(320, 320, 712, NULL, 'US_WEB'),
(321, 321, 558, NULL, 'US_WEB'),
(322, 322, 843, NULL, 'US_WEB'),
(323, 323, 973, NULL, 'US_WEB'),
(324, 324, 412, NULL, 'US_WEB'),
(325, 325, 883, NULL, 'US_WEB'),
(326, 326, 221, NULL, 'US_WEB'),
(327, 327, 246, NULL, 'US_WEB'),
(328, 328, 754, NULL, 'US_WEB'),
(329, 329, 77, NULL, 'US_WEB'),
(330, 330, 245, NULL, 'US_WEB'),
(331, 331, 4000, 4000, 'US_WEB'),
(332, 331, 4000, 4000, 'FR');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
CREATE TABLE IF NOT EXISTS `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_country`
--

INSERT INTO `sylius_country` (`id`, `code`, `enabled`) VALUES
(1, 'US', 1),
(2, 'FR', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
CREATE TABLE IF NOT EXISTS `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_currency`
--

INSERT INTO `sylius_currency` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'USD', '2019-01-18 13:51:42', '2019-01-18 13:51:42'),
(2, 'EUR', '2019-01-18 13:53:20', '2019-01-18 13:53:20');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
CREATE TABLE IF NOT EXISTS `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_customer`
--

INSERT INTO `sylius_customer` (`id`, `customer_group_id`, `default_address_id`, `email`, `email_canonical`, `first_name`, `last_name`, `birthday`, `gender`, `created_at`, `updated_at`, `phone_number`, `subscribed_to_newsletter`) VALUES
(1, 2, NULL, 'shop@example.com', 'shop@example.com', 'John', 'Doe', NULL, 'u', '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL, 0),
(2, 2, NULL, 'augusta35@thompson.com', 'augusta35@thompson.com', 'Eliane', 'Ankunding', NULL, 'u', '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL, 0),
(3, 1, NULL, 'arielle57@yahoo.com', 'arielle57@yahoo.com', 'Camylle', 'Stroman', NULL, 'u', '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL, 0),
(4, 1, NULL, 'west.felicity@rosenbaum.org', 'west.felicity@rosenbaum.org', 'Paxton', 'Prosacco', NULL, 'u', '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL, 0),
(5, 1, NULL, 'cronin.kirstin@yahoo.com', 'cronin.kirstin@yahoo.com', 'Andres', 'Hill', NULL, 'u', '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL, 0),
(6, 1, NULL, 'ola44@yahoo.com', 'ola44@yahoo.com', 'Alexys', 'Swaniawski', NULL, 'u', '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL, 0),
(7, 1, NULL, 'rice.jared@stroman.com', 'rice.jared@stroman.com', 'Jerrod', 'Rempel', NULL, 'u', '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL, 0),
(8, 1, NULL, 'jgutkowski@wiza.com', 'jgutkowski@wiza.com', 'Garth', 'Davis', NULL, 'u', '2019-01-18 13:51:43', '2019-01-18 13:51:44', NULL, 0),
(9, 1, NULL, 'verla73@grimes.com', 'verla73@grimes.com', 'Malachi', 'Smitham', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(10, 1, NULL, 'yost.arlo@braun.com', 'yost.arlo@braun.com', 'Josephine', 'Beer', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(11, 1, NULL, 'nbernhard@ruecker.com', 'nbernhard@ruecker.com', 'Hyman', 'Moore', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(12, 2, NULL, 'kaylin19@yahoo.com', 'kaylin19@yahoo.com', 'Darion', 'Labadie', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(13, 2, NULL, 'cwehner@hotmail.com', 'cwehner@hotmail.com', 'Rozella', 'Ankunding', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(14, 1, NULL, 'jayme.denesik@hotmail.com', 'jayme.denesik@hotmail.com', 'Alek', 'Terry', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(15, 1, NULL, 'selina.mcglynn@hotmail.com', 'selina.mcglynn@hotmail.com', 'Kiera', 'Hamill', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(16, 2, NULL, 'uwintheiser@yahoo.com', 'uwintheiser@yahoo.com', 'Kendra', 'Doyle', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(17, 2, NULL, 'chauncey.bernhard@hotmail.com', 'chauncey.bernhard@hotmail.com', 'Cordelia', 'Boehm', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(18, 1, NULL, 'cleve.rogahn@rempel.com', 'cleve.rogahn@rempel.com', 'Rocky', 'Legros', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(19, 2, NULL, 'glenna44@yahoo.com', 'glenna44@yahoo.com', 'Nicolette', 'Ebert', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(20, 1, NULL, 'jaskolski.curtis@crooks.com', 'jaskolski.curtis@crooks.com', 'Hudson', 'Boyle', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0),
(21, 1, NULL, 'raleigh.moore@gerlach.com', 'raleigh.moore@gerlach.com', 'Earline', 'Roberts', NULL, 'u', '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
CREATE TABLE IF NOT EXISTS `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_customer_group`
--

INSERT INTO `sylius_customer_group` (`id`, `code`, `name`) VALUES
(1, 'retail', 'Retail'),
(2, 'wholesale', 'Wholesale');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_exchange_rate`
--

DROP TABLE IF EXISTS `sylius_exchange_rate`;
CREATE TABLE IF NOT EXISTS `sylius_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
CREATE TABLE IF NOT EXISTS `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_gateway_config`
--

INSERT INTO `sylius_gateway_config` (`id`, `gateway_name`, `factory_name`, `config`) VALUES
(1, 'Offline', 'offline', '[]'),
(2, 'Offline', 'offline', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
CREATE TABLE IF NOT EXISTS `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_locale`
--

INSERT INTO `sylius_locale` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en_US', '2019-01-18 13:51:42', '2019-01-18 13:51:42'),
(2, 'fr_FR', '2019-01-18 14:21:14', '2019-01-18 14:21:14');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
CREATE TABLE IF NOT EXISTS `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order`
--

INSERT INTO `sylius_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`) VALUES
(1, 1, 2, 1, NULL, 11, '000000001', NULL, 'new', '2019-01-18 13:52:04', 4701, 2960, 7661, '2019-01-18 13:52:04', '2019-01-18 13:52:04', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'gdwJArS4C1', NULL),
(2, 4, 5, 1, NULL, 21, '000000002', NULL, 'new', '2019-01-18 13:52:06', 3467, 2313, 5780, '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'xN2PMfVp6r', NULL),
(3, 7, 8, 1, NULL, 17, '000000003', NULL, 'new', '2019-01-18 13:52:06', 4174, 2960, 7134, '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'nqBehGLofF', NULL),
(4, 10, 11, 1, NULL, 12, '000000004', NULL, 'new', '2019-01-18 13:52:06', 3916, 2960, 6876, '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'b7cFGcD96L', NULL),
(5, 13, 14, 1, NULL, 10, '000000005', NULL, 'new', '2019-01-18 13:52:06', 7547, 8941, 16488, '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'IP9Rh5T0aa', NULL),
(6, 16, 17, 1, NULL, 2, '000000006', NULL, 'new', '2019-01-18 13:52:06', 5106, 2960, 8066, '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '465Lbb3Mwj', NULL),
(7, 19, 20, 1, NULL, 19, '000000007', NULL, 'new', '2019-01-18 13:52:06', 4038, 8941, 12979, '2019-01-18 13:52:06', '2019-01-18 13:52:06', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '5DNvPkpxMb', NULL),
(8, 22, 23, 1, NULL, 10, '000000008', NULL, 'new', '2019-01-18 13:52:07', 8217, 8941, 17158, '2019-01-18 13:52:06', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'YmjhDmsMYx', NULL),
(9, 25, 26, 1, NULL, 20, '000000009', NULL, 'new', '2019-01-18 13:52:07', 821, 2960, 3781, '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'W0WTcPTdpJ', NULL),
(10, 28, 29, 1, NULL, 17, '000000010', NULL, 'new', '2019-01-18 13:52:07', 6331, 8941, 15272, '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'IjSjuRyJs-', NULL),
(11, 31, 32, 1, NULL, 6, '000000011', NULL, 'new', '2019-01-18 13:52:07', 6064, 8941, 15005, '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'e2X61d1go9', NULL),
(12, 34, 35, 1, NULL, 8, '000000012', NULL, 'new', '2019-01-18 13:52:07', 3230, 2313, 5543, '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'txLXp3P9GS', NULL),
(13, 37, 38, 1, NULL, 10, '000000013', NULL, 'new', '2019-01-18 13:52:07', 5188, 2960, 8148, '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '4umcZa0y8q', NULL),
(14, 40, 41, 1, NULL, 12, '000000014', 'Quaerat repellat sed est voluptate quia.', 'new', '2019-01-18 13:52:07', 6707, 2960, 9667, '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'yXaNmK1Bo7', NULL),
(15, 43, 44, 1, NULL, 9, '000000015', NULL, 'new', '2019-01-18 13:52:07', 2526, 8941, 11467, '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'a6yo_Rak47', NULL),
(16, 46, 47, 1, NULL, 20, '000000016', NULL, 'new', '2019-01-18 13:52:07', 54, 2313, 2367, '2019-01-18 13:52:07', '2019-01-18 13:52:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'uEz7v1MJIH', NULL),
(17, 49, 50, 1, NULL, 2, '000000017', NULL, 'new', '2019-01-18 13:52:08', 518, 8941, 9459, '2019-01-18 13:52:07', '2019-01-18 13:52:08', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'u_R4VJIjQd', NULL),
(18, 52, 53, 1, NULL, 4, '000000018', NULL, 'new', '2019-01-18 13:52:08', 3400, 2313, 5713, '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'Um~qTM~5n8', NULL),
(19, 55, 56, 1, NULL, 6, '000000019', 'Repellendus voluptatem animi amet qui nihil explicabo.', 'new', '2019-01-18 13:52:08', 7098, 2313, 9411, '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'j~q1e4X2H2', NULL),
(20, 58, 59, 1, NULL, 5, '000000020', NULL, 'new', '2019-01-18 13:52:08', 2399, 8941, 11340, '2019-01-18 13:52:08', '2019-01-18 13:52:08', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'Ta6JfdIsGw', NULL),
(21, NULL, NULL, 2, NULL, NULL, NULL, NULL, 'cart', NULL, 4000, 0, 4000, '2019-01-18 15:47:49', '2019-01-18 15:47:55', 'EUR', 'fr_FR', 'cart', 'cart', 'cart', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
CREATE TABLE IF NOT EXISTS `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_item`
--

INSERT INTO `sylius_order_item` (`id`, `order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`) VALUES
(1, 1, 97, 3, 721, 2012, 0, 2012, 0, 'Book \"mollitia\" by Dr. Destin Bergnaum Sr.', 'totam'),
(2, 1, 32, 4, 723, 2689, 0, 2689, 0, 'Mug \"assumenda\"', 'molestiae'),
(3, 2, 68, 4, 131, 488, 0, 488, 0, 'Sticker \"hic\"', 'et'),
(4, 2, 244, 1, 56, 52, 0, 52, 0, 'T-Shirt \"ea\"', 'itaque'),
(5, 2, 92, 3, 529, 1476, 0, 1476, 0, 'Book \"quisquam\" by Lela Mertz Sr.', 'omnis'),
(6, 2, 154, 5, 256, 1190, 0, 1190, 0, 'T-Shirt \"dolor\"', 'praesentium'),
(7, 2, 85, 1, 281, 261, 0, 261, 0, 'Sticker \"nihil\"', 'quia'),
(8, 3, 29, 4, 320, 1190, 0, 1190, 0, 'Mug \"earum\"', 'reiciendis'),
(9, 3, 80, 4, 298, 1109, 0, 1109, 0, 'Sticker \"molestiae\"', 'labore'),
(10, 3, 17, 3, 672, 1875, 0, 1875, 0, 'Mug \"doloremque\"', 'ea'),
(11, 4, 132, 1, 271, 252, 0, 252, 0, 'T-Shirt \"recusandae\"', 'quam'),
(12, 4, 95, 5, 788, 3664, 0, 3664, 0, 'Book \"veniam\" by Zoila Waelchi', 'occaecati'),
(13, 5, 97, 3, 721, 2011, 0, 2011, 0, 'Book \"mollitia\" by Dr. Destin Bergnaum Sr.', 'totam'),
(14, 5, 82, 1, 621, 578, 0, 578, 0, 'Sticker \"nesciunt\"', 'qui'),
(15, 5, 105, 1, 558, 519, 0, 519, 0, 'Book \"ut\" by Marshall Kshlerin', 'qui'),
(16, 5, 13, 1, 825, 767, 0, 767, 0, 'Mug \"eos\"', 'corporis'),
(17, 5, 9, 4, 987, 3672, 0, 3672, 0, 'Mug \"dicta\"', 'quae'),
(18, 6, 67, 2, 563, 1047, 0, 1047, 0, 'Sticker \"hic\"', 'laboriosam'),
(19, 6, 72, 2, 507, 943, 0, 943, 0, 'Sticker \"accusamus\"', 'soluta'),
(20, 6, 45, 2, 483, 898, 0, 898, 0, 'Mug \"at\"', 'soluta'),
(21, 6, 99, 1, 20, 19, 0, 19, 0, 'Book \"dolores\" by Destinee Carroll', 'reprehenderit'),
(22, 6, 95, 3, 788, 2199, 0, 2199, 0, 'Book \"veniam\" by Zoila Waelchi', 'occaecati'),
(23, 7, 96, 4, 647, 2407, 0, 2407, 0, 'Book \"officia\" by Celestine Upton', 'ducimus'),
(24, 7, 68, 2, 131, 244, 0, 244, 0, 'Sticker \"hic\"', 'et'),
(25, 7, 122, 2, 649, 1207, 0, 1207, 0, 'T-Shirt \"recusandae\"', 'modi'),
(26, 7, 104, 2, 97, 180, 0, 180, 0, 'Book \"qui\" by Miss Iliana Marvin V', 'et'),
(27, 8, 96, 5, 647, 3009, 0, 3009, 0, 'Book \"officia\" by Celestine Upton', 'ducimus'),
(28, 8, 96, 5, 647, 3009, 0, 3009, 0, 'Book \"officia\" by Celestine Upton', 'ducimus'),
(29, 8, 99, 5, 20, 93, 0, 93, 0, 'Book \"dolores\" by Destinee Carroll', 'reprehenderit'),
(30, 8, 68, 5, 131, 609, 0, 609, 0, 'Sticker \"hic\"', 'et'),
(31, 8, 77, 5, 322, 1497, 0, 1497, 0, 'Sticker \"totam\"', 'explicabo'),
(32, 9, 34, 1, 821, 821, 0, 821, 0, 'Mug \"odio\"', 'et'),
(33, 10, 169, 3, 391, 1091, 0, 1091, 0, 'T-Shirt \"enim\"', 'natus'),
(34, 10, 27, 5, 620, 2883, 0, 2883, 0, 'Mug \"quia\"', 'enim'),
(35, 10, 72, 5, 507, 2357, 0, 2357, 0, 'Sticker \"accusamus\"', 'soluta'),
(36, 11, 92, 2, 529, 984, 0, 984, 0, 'Book \"quisquam\" by Lela Mertz Sr.', 'omnis'),
(37, 11, 105, 5, 558, 2595, 0, 2595, 0, 'Book \"ut\" by Marshall Kshlerin', 'qui'),
(38, 11, 50, 4, 516, 1920, 0, 1920, 0, 'Sticker \"dolorem\"', 'beatae'),
(39, 11, 81, 4, 152, 565, 0, 565, 0, 'Sticker \"molestiae\"', 'perspiciatis'),
(40, 12, 63, 5, 206, 957, 0, 957, 0, 'Sticker \"omnis\"', 'quam'),
(41, 12, 22, 2, 761, 1416, 0, 1416, 0, 'Mug \"et\"', 'minima'),
(42, 12, 255, 3, 307, 857, 0, 857, 0, 'T-Shirt \"ea\"', 'commodi'),
(43, 13, 98, 5, 971, 4516, 0, 4516, 0, 'Book \"nam\" by Mrs. Palma Parisian PhD', 'nulla'),
(44, 13, 32, 1, 723, 672, 0, 672, 0, 'Mug \"assumenda\"', 'molestiae'),
(45, 14, 55, 3, 6, 16, 0, 16, 0, 'Sticker \"numquam\"', 'et'),
(46, 14, 34, 5, 821, 3818, 0, 3818, 0, 'Mug \"odio\"', 'et'),
(47, 14, 95, 2, 788, 1466, 0, 1466, 0, 'Book \"veniam\" by Zoila Waelchi', 'occaecati'),
(48, 14, 303, 1, 724, 673, 0, 673, 0, 'T-Shirt \"ullam\"', 'natus'),
(49, 14, 75, 1, 789, 734, 0, 734, 0, 'Sticker \"est\"', 'distinctio'),
(50, 15, 16, 4, 374, 1391, 0, 1391, 0, 'Mug \"doloremque\"', 'qui'),
(51, 15, 100, 4, 305, 1135, 0, 1135, 0, 'Book \"aperiam\" by Shanel Botsford', 'atque'),
(52, 16, 93, 2, 27, 54, 0, 54, 0, 'Book \"possimus\" by Demarcus Miller', 'ea'),
(53, 17, 54, 1, 18, 18, 0, 18, 0, 'Sticker \"voluptatibus\"', 'deserunt'),
(54, 17, 91, 1, 500, 500, 0, 500, 0, 'Book \"rem\" by Elva Fadel', 'perferendis'),
(55, 18, 102, 5, 502, 2335, 0, 2335, 0, 'Book \"dignissimos\" by Josefina Lebsack', 'asperiores'),
(56, 18, 52, 2, 55, 102, 0, 102, 0, 'Sticker \"voluptatibus\"', 'dolores'),
(57, 18, 26, 2, 200, 372, 0, 372, 0, 'Mug \"quia\"', 'ut'),
(58, 18, 15, 3, 212, 591, 0, 591, 0, 'Mug \"eos\"', 'fugit'),
(59, 19, 69, 4, 666, 2478, 0, 2478, 0, 'Sticker \"hic\"', 'enim'),
(60, 19, 46, 2, 854, 1588, 0, 1588, 0, 'Sticker \"et\"', 'sed'),
(61, 19, 101, 5, 452, 2102, 0, 2102, 0, 'Book \"illo\" by Bill McGlynn', 'nemo'),
(62, 19, 26, 5, 200, 930, 0, 930, 0, 'Mug \"quia\"', 'ut'),
(63, 20, 91, 3, 500, 1395, 0, 1395, 0, 'Book \"rem\" by Elva Fadel', 'perferendis'),
(64, 20, 154, 1, 256, 238, 0, 238, 0, 'T-Shirt \"dolor\"', 'praesentium'),
(65, 20, 324, 2, 412, 766, 0, 766, 0, 'T-Shirt \"maiores\"', 'dolor'),
(66, 21, 331, 1, 4000, 4000, 0, 4000, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
CREATE TABLE IF NOT EXISTS `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_item_unit`
--

INSERT INTO `sylius_order_item_unit` (`id`, `order_item_id`, `shipment_id`, `adjustments_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, -51, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(2, 1, 1, -50, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(3, 1, 1, -50, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(4, 2, 1, -51, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(5, 2, 1, -51, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(6, 2, 1, -51, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(7, 2, 1, -50, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(8, 3, 2, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(9, 3, 2, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(10, 3, 2, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(11, 3, 2, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(12, 4, 2, -4, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(13, 5, 2, -37, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(14, 5, 2, -37, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(15, 5, 2, -37, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(16, 6, 2, -18, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(17, 6, 2, -18, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(18, 6, 2, -18, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(19, 6, 2, -18, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(20, 6, 2, -18, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(21, 7, 2, -20, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(22, 8, 3, -23, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(23, 8, 3, -23, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(24, 8, 3, -22, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(25, 8, 3, -22, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(26, 9, 3, -21, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(27, 9, 3, -21, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(28, 9, 3, -21, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(29, 9, 3, -20, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(30, 10, 3, -47, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(31, 10, 3, -47, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(32, 10, 3, -47, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(33, 11, 4, -19, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(34, 12, 4, -56, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(35, 12, 4, -55, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(36, 12, 4, -55, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(37, 12, 4, -55, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(38, 12, 4, -55, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(39, 13, 5, -51, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(40, 13, 5, -51, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(41, 13, 5, -50, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(42, 14, 5, -43, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(43, 15, 5, -39, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(44, 16, 5, -58, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(45, 17, 5, -69, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(46, 17, 5, -69, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(47, 17, 5, -69, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(48, 17, 5, -69, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(49, 18, 6, -40, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(50, 18, 6, -39, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(51, 19, 6, -36, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(52, 19, 6, -35, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(53, 20, 6, -34, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(54, 20, 6, -34, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(55, 21, 6, -1, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(56, 22, 6, -55, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(57, 22, 6, -55, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(58, 22, 6, -55, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(59, 23, 7, -46, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(60, 23, 7, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(61, 23, 7, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(62, 23, 7, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(63, 24, 7, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(64, 24, 7, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(65, 25, 7, -46, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(66, 25, 7, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(67, 26, 7, -7, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(68, 26, 7, -7, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(69, 27, 8, -46, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(70, 27, 8, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(71, 27, 8, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(72, 27, 8, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(73, 27, 8, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(74, 28, 8, -46, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(75, 28, 8, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(76, 28, 8, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(77, 28, 8, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(78, 28, 8, -45, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(79, 29, 8, -2, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(80, 29, 8, -2, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(81, 29, 8, -1, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(82, 29, 8, -1, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(83, 29, 8, -1, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(84, 30, 8, -10, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(85, 30, 8, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(86, 30, 8, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(87, 30, 8, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(88, 30, 8, -9, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(89, 31, 8, -23, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(90, 31, 8, -23, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(91, 31, 8, -23, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(92, 31, 8, -22, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(93, 31, 8, -22, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(94, 32, 9, 0, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(95, 33, 10, -28, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(96, 33, 10, -27, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(97, 33, 10, -27, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(98, 34, 10, -44, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(99, 34, 10, -44, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(100, 34, 10, -43, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(101, 34, 10, -43, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(102, 34, 10, -43, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(103, 35, 10, -36, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(104, 35, 10, -36, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(105, 35, 10, -36, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(106, 35, 10, -35, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(107, 35, 10, -35, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(108, 36, 11, -37, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(109, 36, 11, -37, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(110, 37, 11, -39, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(111, 37, 11, -39, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(112, 37, 11, -39, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(113, 37, 11, -39, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(114, 37, 11, -39, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(115, 38, 11, -36, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(116, 38, 11, -36, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(117, 38, 11, -36, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(118, 38, 11, -36, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(119, 39, 11, -11, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(120, 39, 11, -11, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(121, 39, 11, -11, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(122, 39, 11, -10, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(123, 40, 12, -15, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(124, 40, 12, -15, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(125, 40, 12, -15, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(126, 40, 12, -14, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(127, 40, 12, -14, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(128, 41, 12, -53, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(129, 41, 12, -53, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(130, 42, 12, -22, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(131, 42, 12, -21, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(132, 42, 12, -21, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(133, 43, 13, -68, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(134, 43, 13, -68, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(135, 43, 13, -68, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(136, 43, 13, -68, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(137, 43, 13, -67, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(138, 44, 13, -51, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(139, 45, 14, -1, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(140, 45, 14, -1, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(141, 45, 14, 0, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(142, 46, 14, -58, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(143, 46, 14, -58, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(144, 46, 14, -57, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(145, 46, 14, -57, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(146, 46, 14, -57, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(147, 47, 14, -55, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(148, 47, 14, -55, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(149, 48, 14, -51, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(150, 49, 14, -55, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(151, 50, 15, -27, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(152, 50, 15, -26, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(153, 50, 15, -26, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(154, 50, 15, -26, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(155, 51, 15, -22, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(156, 51, 15, -21, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(157, 51, 15, -21, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(158, 51, 15, -21, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(159, 52, 16, 0, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(160, 52, 16, 0, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(161, 53, 17, 0, '2019-01-18 13:52:07', '2019-01-18 13:52:08'),
(162, 54, 17, 0, '2019-01-18 13:52:07', '2019-01-18 13:52:08'),
(163, 55, 18, -35, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(164, 55, 18, -35, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(165, 55, 18, -35, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(166, 55, 18, -35, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(167, 55, 18, -35, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(168, 56, 18, -4, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(169, 56, 18, -4, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(170, 57, 18, -14, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(171, 57, 18, -14, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(172, 58, 18, -15, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(173, 58, 18, -15, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(174, 58, 18, -15, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(175, 59, 19, -47, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(176, 59, 19, -47, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(177, 59, 19, -46, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(178, 59, 19, -46, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(179, 60, 19, -60, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(180, 60, 19, -60, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(181, 61, 19, -32, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(182, 61, 19, -32, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(183, 61, 19, -32, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(184, 61, 19, -31, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(185, 61, 19, -31, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(186, 62, 19, -14, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(187, 62, 19, -14, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(188, 62, 19, -14, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(189, 62, 19, -14, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(190, 62, 19, -14, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(191, 63, 20, -35, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(192, 63, 20, -35, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(193, 63, 20, -35, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(194, 64, 20, -18, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(195, 65, 20, -29, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(196, 65, 20, -29, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(197, 66, NULL, 0, '2019-01-18 15:47:50', '2019-01-18 15:47:56');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
CREATE TABLE IF NOT EXISTS `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_sequence`
--

INSERT INTO `sylius_order_sequence` (`id`, `idx`, `version`) VALUES
(1, 20, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
CREATE TABLE IF NOT EXISTS `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment`
--

INSERT INTO `sylius_payment` (`id`, `method_id`, `order_id`, `currency_code`, `amount`, `state`, `details`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'USD', 7661, 'new', '[]', '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(2, 2, 2, 'USD', 5780, 'new', '[]', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(3, 1, 3, 'USD', 7134, 'new', '[]', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(4, 1, 4, 'USD', 6876, 'new', '[]', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(5, 2, 5, 'USD', 16488, 'new', '[]', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(6, 2, 6, 'USD', 8066, 'new', '[]', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(7, 1, 7, 'USD', 12979, 'new', '[]', '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(8, 2, 8, 'USD', 17158, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(9, 2, 9, 'USD', 3781, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(10, 1, 10, 'USD', 15272, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(11, 1, 11, 'USD', 15005, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(12, 2, 12, 'USD', 5543, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(13, 1, 13, 'USD', 8148, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(14, 1, 14, 'USD', 9667, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(15, 2, 15, 'USD', 11467, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(16, 2, 16, 'USD', 2367, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(17, 1, 17, 'USD', 9459, 'new', '[]', '2019-01-18 13:52:07', '2019-01-18 13:52:08'),
(18, 1, 18, 'USD', 5713, 'new', '[]', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(19, 2, 19, 'USD', 9411, 'new', '[]', '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(20, 2, 20, 'USD', 11340, 'new', '[]', '2019-01-18 13:52:08', '2019-01-18 13:52:08');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_config_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method`
--

INSERT INTO `sylius_payment_method` (`id`, `gateway_config_id`, `code`, `environment`, `is_enabled`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 'cash_on_delivery', NULL, 1, 0, '2019-01-18 13:51:42', '2019-01-18 13:51:42'),
(2, 2, 'bank_transfer', NULL, 1, 1, '2019-01-18 13:51:43', '2019-01-18 13:51:43');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method_channels`
--

DROP TABLE IF EXISTS `sylius_payment_method_channels`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method_channels`
--

INSERT INTO `sylius_payment_method_channels` (`payment_method_id`, `channel_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method_translation`
--

INSERT INTO `sylius_payment_method_translation` (`id`, `translatable_id`, `name`, `description`, `instructions`, `locale`) VALUES
(1, 1, 'Cash on delivery', 'Non perferendis architecto et explicabo nemo.', NULL, 'en_US'),
(2, 2, 'Bank transfer', 'Cumque est omnis qui quia ipsam quibusdam voluptatem incidunt.', NULL, 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
CREATE TABLE IF NOT EXISTS `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
CREATE TABLE IF NOT EXISTS `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product`
--

INSERT INTO `sylius_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`) VALUES
(1, 2, '21931e1d-2ee5-331a-8867-9fca21e46788', '2019-01-14 01:42:31', '2019-01-18 13:51:46', 0, 'match', 0),
(2, 2, '639e2829-076e-3544-bf9a-a75c40e6543d', '2019-01-11 18:17:48', '2019-01-18 13:51:46', 1, 'match', 0),
(3, 2, '8e76030c-d91d-36a3-ac5f-337cfc478872', '2019-01-17 09:59:05', '2019-01-18 13:51:46', 1, 'match', 0),
(4, 2, 'ec2f98cb-5b32-3d98-9070-d12e571cf958', '2019-01-16 17:41:44', '2019-01-18 13:51:46', 1, 'match', 0),
(5, 2, '162b5fde-c00f-3694-9bd2-6cd1e9bd0e2e', '2019-01-14 04:14:33', '2019-01-18 13:51:59', 1, 'match', 2),
(6, 2, 'c25dc681-b4d9-3db9-8235-db421d7cf008', '2019-01-13 08:33:59', '2019-01-18 13:51:46', 1, 'match', 0),
(7, 2, '62008151-64b4-37db-9232-09436b33f7d8', '2019-01-12 10:51:01', '2019-01-18 13:51:46', 1, 'match', 0),
(8, 2, 'aa4f67df-c9e4-3870-8c42-3461035ab6bd', '2019-01-16 19:32:53', '2019-01-18 13:51:59', 1, 'match', 3),
(9, 2, '15b0c9cd-7d6a-3749-b837-00019c8e7237', '2019-01-12 09:06:02', '2019-01-18 13:51:46', 1, 'match', 0),
(10, 2, '5f007cc1-cca0-3ae4-acb6-8f1925dcce0b', '2019-01-13 03:47:48', '2019-01-18 13:51:46', 1, 'match', 0),
(11, 2, '5d5d5ed1-374d-3381-9d10-aabe32815a2d', '2019-01-15 12:14:56', '2019-01-18 13:51:48', 1, 'match', 0),
(12, 2, '4b0908a7-a8eb-31ec-a885-1e51bc5b0066', '2019-01-14 02:19:36', '2019-01-18 13:51:48', 1, 'match', 0),
(13, 2, '6ee19d48-6a6b-3635-a776-9e238ca001db', '2019-01-13 17:10:06', '2019-01-18 13:51:48', 1, 'match', 0),
(14, 2, '03ca605c-1c5a-35d0-b284-464a89598ad8', '2019-01-17 19:19:53', '2019-01-18 13:51:59', 1, 'match', 5),
(15, 2, '53f0f9c6-ef5a-3517-9175-731b3690d81e', '2019-01-13 22:26:17', '2019-01-18 13:52:00', 0, 'match', 4),
(16, 3, 'bdfb1304-0cca-3edb-b58f-64effca54eb3', '2019-01-15 20:10:55', '2019-01-18 13:51:49', 1, 'choice', 0),
(17, 3, '68ee6288-1403-3002-ab41-3727bf57f45b', '2019-01-16 20:15:59', '2019-01-18 13:51:49', 1, 'choice', 0),
(18, 3, 'a4e9930c-afa2-358a-8da0-2b761325342e', '2019-01-18 12:52:31', '2019-01-18 13:51:49', 1, 'choice', 0),
(19, 3, 'e8df7bdb-532a-3f6e-9569-8fa1e89b53b3', '2019-01-14 17:29:32', '2019-01-18 13:51:49', 1, 'choice', 0),
(20, 3, 'fa933176-dd5b-33d8-ba1f-1486768e130d', '2019-01-17 00:14:59', '2019-01-18 13:51:49', 1, 'choice', 0),
(21, 3, '5604a217-c86d-303c-a852-e891d450bd76', '2019-01-14 11:35:05', '2019-01-18 13:51:50', 1, 'choice', 0),
(22, 3, 'b7da8313-a634-3ebb-804a-1bd121bb4ad7', '2019-01-17 09:19:48', '2019-01-18 13:52:01', 1, 'choice', 3),
(23, 3, 'd740688c-3fec-3ab4-8036-a41d167b490a', '2019-01-14 07:02:19', '2019-01-18 13:51:50', 1, 'choice', 0),
(24, 3, 'afac61d2-2325-37d5-921d-dcfd17d358b8', '2019-01-14 17:08:20', '2019-01-18 13:51:50', 1, 'choice', 0),
(25, 3, '967cafae-823c-34eb-a855-9bfad8093dbd', '2019-01-17 06:45:49', '2019-01-18 13:52:03', 1, 'choice', 5),
(26, 3, 'a5acfc19-5aad-3b99-a087-5a58c6b95d90', '2019-01-11 14:20:54', '2019-01-18 13:51:50', 1, 'choice', 0),
(27, 3, '28c0ffbf-10b6-3904-a7f5-3a42765af68c', '2019-01-14 01:02:58', '2019-01-18 13:51:50', 0, 'choice', 0),
(28, 3, 'e1156aca-8c89-3db0-b598-6fc5c85040ad', '2019-01-12 08:19:41', '2019-01-18 13:51:50', 1, 'choice', 0),
(29, 3, '5dea3c36-5c72-3b03-b4da-2e3504f89a6a', '2019-01-12 23:14:30', '2019-01-18 13:51:51', 1, 'choice', 0),
(30, 3, 'fe1ad830-bae5-353e-9128-31a5e15eb61d', '2019-01-17 01:40:05', '2019-01-18 13:51:51', 1, 'choice', 0),
(31, 4, '2e031e16-6c64-362b-8484-9786a3c92d43', '2019-01-12 23:19:48', '2019-01-18 13:51:52', 1, 'match', 0),
(32, 4, '5299db2b-876a-39f3-a3e1-e8d5f8f49c81', '2019-01-18 00:17:16', '2019-01-18 13:52:00', 1, 'match', 3),
(33, 4, '2a686ec4-af5e-315a-b255-505053fb34d9', '2019-01-12 13:54:48', '2019-01-18 13:51:59', 1, 'match', 1),
(34, 4, '89530d7e-cb36-373e-b0bd-8c708a419744', '2019-01-16 19:14:36', '2019-01-18 13:51:52', 1, 'match', 0),
(35, 4, 'b5a5805c-6baf-3bb2-b001-f9c6dcbf498f', '2019-01-14 01:22:46', '2019-01-18 13:51:52', 1, 'match', 0),
(36, 4, '5dcd022e-e409-3c4d-9c20-3dccf03b310d', '2019-01-16 08:23:56', '2019-01-18 13:51:52', 1, 'match', 0),
(37, 4, '2b77efcb-de08-3ca3-97b7-09c4b20c5070', '2019-01-15 16:34:54', '2019-01-18 13:51:52', 1, 'match', 0),
(38, 4, '5876a7bf-28e2-32bf-8f00-85e136ec5652', '2019-01-15 02:20:36', '2019-01-18 13:51:52', 1, 'match', 0),
(39, 4, '2b5af28b-884c-34e6-85d5-ed7c53dff5f8', '2019-01-12 22:32:11', '2019-01-18 13:51:52', 1, 'match', 0),
(40, 4, '31bd97ef-50d7-37fc-afdf-d47ed5d002da', '2019-01-12 04:44:22', '2019-01-18 13:52:03', 1, 'match', 2.75),
(41, 4, 'aec56969-24b0-3cb3-b582-9e8138be2941', '2019-01-18 05:21:52', '2019-01-18 13:51:53', 1, 'match', 0),
(42, 4, 'c25d5d88-d73b-3ef4-8091-98b81f9ba144', '2019-01-15 19:06:53', '2019-01-18 13:52:02', 1, 'match', 5),
(43, 4, 'fd0dec89-7f94-3368-ac94-e1bc37cc4b59', '2019-01-15 22:08:09', '2019-01-18 13:51:53', 1, 'match', 0),
(44, 4, 'b48a2eca-9c50-366e-94e6-e5100c34f118', '2019-01-18 10:30:14', '2019-01-18 13:51:53', 1, 'match', 0),
(45, 4, '1f530e05-d6d7-38de-9c40-72a991328634', '2019-01-12 21:49:57', '2019-01-18 13:52:01', 0, 'match', 1),
(46, 7, 'fed5f83b-0c91-3784-ae72-38043a329a75', '2019-01-18 08:44:15', '2019-01-18 13:51:54', 1, 'match', 0),
(47, 6, 'f63c496d-2711-376c-a53a-265ac74fb71e', '2019-01-18 00:06:41', '2019-01-18 13:51:54', 1, 'match', 0),
(48, 7, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a', '2019-01-16 09:23:15', '2019-01-18 13:51:54', 0, 'match', 0),
(49, 6, 'c07925d6-267e-3ada-b6c1-d3b415c5efae', '2019-01-15 14:11:10', '2019-01-18 13:51:54', 1, 'match', 0),
(50, 6, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee', '2019-01-12 10:08:17', '2019-01-18 13:52:00', 1, 'match', 5),
(51, 7, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd', '2019-01-17 20:16:03', '2019-01-18 13:51:55', 1, 'match', 0),
(52, 6, '69eba40f-1d7c-333a-97da-a8d478c2e919', '2019-01-12 18:42:28', '2019-01-18 13:51:55', 1, 'match', 0),
(53, 6, 'b0988076-ceda-3630-a849-13e841458e26', '2019-01-15 21:21:38', '2019-01-18 13:51:55', 1, 'match', 0),
(54, 6, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2', '2019-01-15 14:14:47', '2019-01-18 13:51:55', 1, 'match', 0),
(55, 6, '79e23536-add0-3c3d-90e8-923143d63506', '2019-01-12 14:46:42', '2019-01-18 13:52:02', 1, 'match', 4),
(56, 6, 'fcb07ef4-0168-3687-bfa8-bacc556655d9', '2019-01-12 22:43:35', '2019-01-18 13:52:00', 1, 'match', 1),
(57, 6, '545254b9-63c0-39cc-bfc1-c3be1c415379', '2019-01-16 09:16:15', '2019-01-18 13:51:57', 1, 'match', 0),
(58, 7, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136', '2019-01-16 04:48:54', '2019-01-18 13:51:57', 0, 'match', 0),
(59, 6, 'e2abf511-a182-3ae2-96cb-e73bc6636677', '2019-01-13 12:21:57', '2019-01-18 13:52:00', 1, 'match', 2),
(60, 7, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7', '2019-01-12 05:19:38', '2019-01-18 13:51:58', 1, 'match', 0),
(61, NULL, 'Montre', '2019-01-18 15:45:10', '2019-01-18 15:45:15', 1, 'choice', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
CREATE TABLE IF NOT EXISTS `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association`
--

INSERT INTO `sylius_product_association` (`id`, `association_type_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 53, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(2, 1, 6, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(3, 1, 12, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(4, 1, 25, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(5, 1, 50, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(6, 1, 9, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(7, 1, 20, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(8, 1, 42, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(9, 1, 4, '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(10, 1, 14, '2019-01-18 13:52:03', '2019-01-18 13:52:03');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_product`
--

INSERT INTO `sylius_product_association_product` (`association_id`, `product_id`) VALUES
(1, 53),
(1, 55),
(1, 57),
(2, 1),
(2, 4),
(2, 10),
(3, 2),
(3, 10),
(3, 11),
(4, 19),
(4, 25),
(4, 29),
(5, 47),
(5, 53),
(5, 59),
(6, 2),
(6, 3),
(6, 8),
(7, 18),
(7, 22),
(7, 26),
(8, 31),
(8, 43),
(8, 45),
(9, 2),
(9, 10),
(9, 15),
(10, 7),
(10, 8),
(10, 15);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_type`
--

DROP TABLE IF EXISTS `sylius_product_association_type`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_type`
--

INSERT INTO `sylius_product_association_type` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'similar_products', '2019-01-18 13:52:03', '2019-01-18 13:52:03');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_type_translation`
--

DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_type_translation`
--

INSERT INTO `sylius_product_association_type_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Similar products', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute`
--

INSERT INTO `sylius_product_attribute` (`id`, `code`, `type`, `storage_type`, `configuration`, `created_at`, `updated_at`, `position`) VALUES
(1, 'mug_material', 'select', 'json', 'a:2:{s:8:\"multiple\";b:0;s:7:\"choices\";a:4:{s:36:\"37a6cc1f-e1f0-3b77-946d-73215e33ba87\";a:1:{s:5:\"en_US\";s:19:\"Invisible porcelain\";}s:36:\"8420d7b0-4403-3a0c-8b34-72f56b66189f\";a:1:{s:5:\"en_US\";s:11:\"Banana skin\";}s:36:\"622ee9e4-44c3-3bca-ba09-bdcc70c739ae\";a:1:{s:5:\"en_US\";s:9:\"Porcelain\";}s:36:\"13fa5710-bd9b-3ecc-bd4f-6d1810b0d739\";a:1:{s:5:\"en_US\";s:9:\"Centipede\";}}}', '2019-01-18 13:51:45', '2019-01-18 13:51:45', 0),
(2, 'sticker_paper', 'text', 'text', 'a:0:{}', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 1),
(3, 'sticker_resolution', 'text', 'text', 'a:0:{}', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 2),
(4, 'book_author', 'text', 'text', 'a:0:{}', '2019-01-18 13:51:51', '2019-01-18 13:51:51', 3),
(5, 'book_isbn', 'text', 'text', 'a:0:{}', '2019-01-18 13:51:51', '2019-01-18 13:51:51', 4),
(6, 'book_pages', 'integer', 'integer', 'a:0:{}', '2019-01-18 13:51:51', '2019-01-18 13:51:51', 5),
(7, 'book_genre', 'select', 'json', 'a:2:{s:8:\"multiple\";b:1;s:7:\"choices\";a:4:{s:36:\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\";a:1:{s:5:\"en_US\";s:15:\"Science Fiction\";}s:36:\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\";a:1:{s:5:\"en_US\";s:7:\"Romance\";}s:36:\"f5741f2e-dc73-369f-a756-64643f8d9a06\";a:1:{s:5:\"en_US\";s:8:\"Thriller\";}s:36:\"acaead55-4870-3064-a927-ea6a94bb3f03\";a:1:{s:5:\"en_US\";s:6:\"Sports\";}}}', '2019-01-18 13:51:51', '2019-01-18 13:51:51', 6),
(8, 't_shirt_brand', 'text', 'text', 'a:0:{}', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 7),
(9, 't_shirt_collection', 'text', 'text', 'a:0:{}', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 8),
(10, 't_shirt_material', 'text', 'text', 'a:0:{}', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 9);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute_translation`
--

INSERT INTO `sylius_product_attribute_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Mug material', 'en_US'),
(2, 2, 'Sticker paper', 'en_US'),
(3, 3, 'Sticker resolution', 'en_US'),
(4, 4, 'Book author', 'en_US'),
(5, 5, 'Book ISBN', 'en_US'),
(6, 6, 'Book pages', 'en_US'),
(7, 7, 'Book genre', 'en_US'),
(8, 8, 'T-Shirt brand', 'en_US'),
(9, 9, 'T-Shirt collection', 'en_US'),
(10, 10, 'T-Shirt material', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute_value`
--

INSERT INTO `sylius_product_attribute_value` (`id`, `product_id`, `attribute_id`, `locale_code`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`) VALUES
(1, 1, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"37a6cc1f-e1f0-3b77-946d-73215e33ba87\"]'),
(2, 2, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"37a6cc1f-e1f0-3b77-946d-73215e33ba87\"]'),
(3, 3, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"13fa5710-bd9b-3ecc-bd4f-6d1810b0d739\"]'),
(4, 4, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"13fa5710-bd9b-3ecc-bd4f-6d1810b0d739\"]'),
(5, 5, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"622ee9e4-44c3-3bca-ba09-bdcc70c739ae\"]'),
(6, 6, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"8420d7b0-4403-3a0c-8b34-72f56b66189f\"]'),
(7, 7, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"13fa5710-bd9b-3ecc-bd4f-6d1810b0d739\"]'),
(8, 8, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"622ee9e4-44c3-3bca-ba09-bdcc70c739ae\"]'),
(9, 9, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"37a6cc1f-e1f0-3b77-946d-73215e33ba87\"]'),
(10, 10, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"37a6cc1f-e1f0-3b77-946d-73215e33ba87\"]'),
(11, 11, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"13fa5710-bd9b-3ecc-bd4f-6d1810b0d739\"]'),
(12, 12, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"8420d7b0-4403-3a0c-8b34-72f56b66189f\"]'),
(13, 13, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"37a6cc1f-e1f0-3b77-946d-73215e33ba87\"]'),
(14, 14, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"37a6cc1f-e1f0-3b77-946d-73215e33ba87\"]'),
(15, 15, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"8420d7b0-4403-3a0c-8b34-72f56b66189f\"]'),
(16, 16, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 16, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 17, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 17, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 18, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 18, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 19, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 19, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 20, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 20, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 21, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 21, 3, 'en_US', 'FULL HD', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 22, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 22, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 23, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 23, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 24, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 24, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 25, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 25, 3, 'en_US', 'FULL HD', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 26, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 26, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 27, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 27, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 28, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 28, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 29, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 29, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 30, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 30, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 31, 4, 'en_US', 'Elva Fadel', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 31, 5, 'en_US', '9781337191852', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 31, 6, 'en_US', NULL, NULL, 619, NULL, NULL, NULL, NULL),
(49, 31, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"f5741f2e-dc73-369f-a756-64643f8d9a06\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\",\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\"]'),
(50, 32, 4, 'en_US', 'Lela Mertz Sr.', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 32, 5, 'en_US', '9780749495558', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 32, 6, 'en_US', NULL, NULL, 173, NULL, NULL, NULL, NULL),
(53, 32, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"acaead55-4870-3064-a927-ea6a94bb3f03\"]'),
(54, 33, 4, 'en_US', 'Demarcus Miller', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 33, 5, 'en_US', '9788784481536', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 33, 6, 'en_US', NULL, NULL, 205, NULL, NULL, NULL, NULL),
(57, 33, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\"]'),
(58, 34, 4, 'en_US', 'Dolores Herman DDS', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 34, 5, 'en_US', '9790887128812', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 34, 6, 'en_US', NULL, NULL, 574, NULL, NULL, NULL, NULL),
(61, 34, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"acaead55-4870-3064-a927-ea6a94bb3f03\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\",\"f5741f2e-dc73-369f-a756-64643f8d9a06\",\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\"]'),
(62, 35, 4, 'en_US', 'Zoila Waelchi', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 35, 5, 'en_US', '9783352810718', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 35, 6, 'en_US', NULL, NULL, 612, NULL, NULL, NULL, NULL),
(65, 35, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\",\"acaead55-4870-3064-a927-ea6a94bb3f03\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\"]'),
(66, 36, 4, 'en_US', 'Celestine Upton', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 36, 5, 'en_US', '9780875012803', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 36, 6, 'en_US', NULL, NULL, 704, NULL, NULL, NULL, NULL),
(69, 36, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"acaead55-4870-3064-a927-ea6a94bb3f03\",\"f5741f2e-dc73-369f-a756-64643f8d9a06\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\"]'),
(70, 37, 4, 'en_US', 'Dr. Destin Bergnaum Sr.', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 37, 5, 'en_US', '9788659520834', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 37, 6, 'en_US', NULL, NULL, 470, NULL, NULL, NULL, NULL),
(73, 37, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\"]'),
(74, 38, 4, 'en_US', 'Mrs. Palma Parisian PhD', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 38, 5, 'en_US', '9796082825501', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 38, 6, 'en_US', NULL, NULL, 843, NULL, NULL, NULL, NULL),
(77, 38, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\",\"f5741f2e-dc73-369f-a756-64643f8d9a06\",\"acaead55-4870-3064-a927-ea6a94bb3f03\"]'),
(78, 39, 4, 'en_US', 'Destinee Carroll', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 39, 5, 'en_US', '9784232386576', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 39, 6, 'en_US', NULL, NULL, 605, NULL, NULL, NULL, NULL),
(81, 39, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\",\"acaead55-4870-3064-a927-ea6a94bb3f03\",\"f5741f2e-dc73-369f-a756-64643f8d9a06\"]'),
(82, 40, 4, 'en_US', 'Shanel Botsford', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 40, 5, 'en_US', '9784812997178', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 40, 6, 'en_US', NULL, NULL, 67, NULL, NULL, NULL, NULL),
(85, 40, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"acaead55-4870-3064-a927-ea6a94bb3f03\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\",\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\"]'),
(86, 41, 4, 'en_US', 'Bill McGlynn', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 41, 5, 'en_US', '9798138078343', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 41, 6, 'en_US', NULL, NULL, 814, NULL, NULL, NULL, NULL),
(89, 41, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"f5741f2e-dc73-369f-a756-64643f8d9a06\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\"]'),
(90, 42, 4, 'en_US', 'Josefina Lebsack', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 42, 5, 'en_US', '9788432310485', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 42, 6, 'en_US', NULL, NULL, 332, NULL, NULL, NULL, NULL),
(93, 42, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"f5741f2e-dc73-369f-a756-64643f8d9a06\"]'),
(94, 43, 4, 'en_US', 'Bryce Dicki', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 43, 5, 'en_US', '9789397155227', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 43, 6, 'en_US', NULL, NULL, 803, NULL, NULL, NULL, NULL),
(97, 43, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\"]'),
(98, 44, 4, 'en_US', 'Miss Iliana Marvin V', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 44, 5, 'en_US', '9789366488301', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 44, 6, 'en_US', NULL, NULL, 885, NULL, NULL, NULL, NULL),
(101, 44, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"3d06e088-8a59-3b78-87f7-e1bd34778ecd\",\"f5741f2e-dc73-369f-a756-64643f8d9a06\",\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\"]'),
(102, 45, 4, 'en_US', 'Marshall Kshlerin', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 45, 5, 'en_US', '9790264228449', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 45, 6, 'en_US', NULL, NULL, 386, NULL, NULL, NULL, NULL),
(105, 45, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"eafcc992-e490-32ee-8d3b-11ae7dd3060f\",\"f5741f2e-dc73-369f-a756-64643f8d9a06\"]'),
(106, 46, 8, 'en_US', 'Nike', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 46, 9, 'en_US', 'Sylius Summer 2012', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 46, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 47, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 47, 9, 'en_US', 'Sylius Winter 2000', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 47, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 48, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 48, 9, 'en_US', 'Sylius Spring 1996', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 48, 10, 'en_US', 'Potato 100%', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 49, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 49, 9, 'en_US', 'Sylius Spring 1995', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 49, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 50, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 50, 9, 'en_US', 'Sylius Summer 1996', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 50, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 51, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 51, 9, 'en_US', 'Sylius Summer 2004', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 51, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 52, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 52, 9, 'en_US', 'Sylius Autumn 2007', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 52, 10, 'en_US', 'Potato 100%', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 53, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 53, 9, 'en_US', 'Sylius Spring 2011', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 53, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 54, 8, 'en_US', 'Nike', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 54, 9, 'en_US', 'Sylius Winter 1995', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 54, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 55, 8, 'en_US', 'Adidas', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 55, 9, 'en_US', 'Sylius Spring 2000', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 55, 10, 'en_US', 'Potato 100%', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 56, 8, 'en_US', 'Nike', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 56, 9, 'en_US', 'Sylius Summer 2009', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 56, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 57, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 57, 9, 'en_US', 'Sylius Summer 2001', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 57, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 58, 8, 'en_US', 'Nike', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 58, 9, 'en_US', 'Sylius Summer 2008', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 58, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 59, 8, 'en_US', 'Nike', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 59, 9, 'en_US', 'Sylius Winter 2009', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 59, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 60, 8, 'en_US', 'Adidas', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 60, 9, 'en_US', 'Sylius Winter 2003', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 60, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
CREATE TABLE IF NOT EXISTS `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_channels`
--

INSERT INTO `sylius_product_channels` (`product_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
CREATE TABLE IF NOT EXISTS `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_image`
--

INSERT INTO `sylius_product_image` (`id`, `owner_id`, `type`, `path`) VALUES
(1, 1, 'main', '2c/c3/b678679d3369b7c9a10c3b45a220.jpeg'),
(2, 1, 'thumbnail', 'fd/1d/2b9679f8539c9170050eb975cc0d.jpeg'),
(3, 2, 'main', 'cf/15/c327c4a375a13622093f0be30471.jpeg'),
(4, 2, 'thumbnail', '69/66/31a844f79eeaee8057828ab588c8.jpeg'),
(5, 3, 'main', 'f1/39/cc569f958606a9f3714858f2f433.jpeg'),
(6, 3, 'thumbnail', '8d/f4/d80cc2766603659cc2268c421df4.jpeg'),
(7, 4, 'main', '0f/b2/5e50a7b98fe7b74abb22d24864cd.jpeg'),
(8, 4, 'thumbnail', 'd7/da/1dcc4066bd55eba59b2fb82755fd.jpeg'),
(9, 5, 'main', '80/0a/bb4783907f415eb86262d81442ef.jpeg'),
(10, 5, 'thumbnail', 'a8/a8/bec84e32940783324b5eb5307125.jpeg'),
(11, 6, 'main', '31/d4/d18dddf6eb0952016e4a95787c3b.jpeg'),
(12, 6, 'thumbnail', 'be/9a/4413d58f891c761222e2a815d9a1.jpeg'),
(13, 7, 'main', '8f/74/b0b9a17248562ea8791a8452c9f1.jpeg'),
(14, 7, 'thumbnail', 'c6/09/d23808ea9cc375cd97292b0c549f.jpeg'),
(15, 8, 'main', 'a4/5a/b13eedb39a4c0aacd3ea4207b965.jpeg'),
(16, 8, 'thumbnail', '5b/79/6754f2335396fb05ec20d2a80671.jpeg'),
(17, 9, 'main', '0e/41/c742266fff0ffbaee3a5113c372b.jpeg'),
(18, 9, 'thumbnail', '9a/50/af7a0f21154b26b304cea47e5339.jpeg'),
(19, 10, 'main', 'c2/5c/129405740c0f2c02b4af38cdc979.jpeg'),
(20, 10, 'thumbnail', '34/0a/6a70fa4738ea8801c4908b463e30.jpeg'),
(21, 11, 'main', '6a/4a/3052fbb33274c4dc14a90c14e3e9.jpeg'),
(22, 11, 'thumbnail', '87/22/2199c3a080eaee9cb027417f98b3.jpeg'),
(23, 12, 'main', '80/d3/7456725ef2925d995cebf83995d8.jpeg'),
(24, 12, 'thumbnail', '59/4f/b1c6940226f11e63153cfe3beda2.jpeg'),
(25, 13, 'main', '78/5a/ab71a75c490696fd57ca22be5a5a.jpeg'),
(26, 13, 'thumbnail', '5c/e8/a25e63778105dcf589b9874a1865.jpeg'),
(27, 14, 'main', '6f/2d/0ff2117ba4f5283e7f7535e2def1.jpeg'),
(28, 14, 'thumbnail', '33/3d/138ff4d3ba934123f88ffecb8c39.jpeg'),
(29, 15, 'main', 'e7/c8/8915bb700baafd4d90250a66fbc1.jpeg'),
(30, 15, 'thumbnail', 'ff/76/b696cda10ea39d8ac71c1dc40393.jpeg'),
(31, 16, 'main', '7f/63/3502fe04909a3fa6ebea7298d875.jpeg'),
(32, 16, 'thumbnail', '1a/7d/a4d6d01d1e2cf174ce6d133581dd.jpeg'),
(33, 17, 'main', '5f/bf/8e191a2f5447130fbb33ba79a5e6.jpeg'),
(34, 17, 'thumbnail', '9e/2a/1e5c8f546001bd948df63848baf6.jpeg'),
(35, 18, 'main', '58/c3/6e6c39ae7efa507fb0947026a50a.jpeg'),
(36, 18, 'thumbnail', '09/ae/dc7be20d9d19f29ceaf1d982ba81.jpeg'),
(37, 19, 'main', 'c6/42/dedef92ebc976a904c6520475a8c.jpeg'),
(38, 19, 'thumbnail', 'e5/75/f098c24beae55981ea1738baf32d.jpeg'),
(39, 20, 'main', '79/04/7a5cf003e08a84a6fc8a798cb278.jpeg'),
(40, 20, 'thumbnail', 'db/7f/03a44ca2e6fbd613aea0acffcf6b.jpeg'),
(41, 21, 'main', '4d/89/ae2143042fcbf85a30d2a8190113.jpeg'),
(42, 21, 'thumbnail', '28/f6/50a80ac212ff0cc097f0c6f26d66.jpeg'),
(43, 22, 'main', '46/09/cd3565b397b8bd2484af1ed7c36b.jpeg'),
(44, 22, 'thumbnail', '28/af/775c6f8fb3ecff9c5fe645ced112.jpeg'),
(45, 23, 'main', 'e8/ed/e9d1f34552b2e62e02f286b02296.jpeg'),
(46, 23, 'thumbnail', 'c0/59/3e3a39d3d4ae30ae3ec2214e7483.jpeg'),
(47, 24, 'main', '95/0b/aeb574fd2e8306e3c02c52a75c31.jpeg'),
(48, 24, 'thumbnail', 'ba/88/804610393f8131495bfd22f9beef.jpeg'),
(49, 25, 'main', '1d/a8/9c05cbddde3846cc3f808348f104.jpeg'),
(50, 25, 'thumbnail', '1e/b0/455a94fe2126ef89a673b60d803b.jpeg'),
(51, 26, 'main', '37/40/88ba6d85800faaf651b6434b12b8.jpeg'),
(52, 26, 'thumbnail', 'e6/63/9b3f86b587de8a019103bbebb6f0.jpeg'),
(53, 27, 'main', 'a5/4c/08502806cce49fbedf98b7735386.jpeg'),
(54, 27, 'thumbnail', '19/96/e25b070e22cedfd0cb25ee443db8.jpeg'),
(55, 28, 'main', '3a/55/61ebb754137bbc9b6bcf5f300c3c.jpeg'),
(56, 28, 'thumbnail', '2a/f7/e5122e2cb67c8e91652112b595a1.jpeg'),
(57, 29, 'main', 'f9/2d/f7c5b184836c30d80e4bfd6d341a.jpeg'),
(58, 29, 'thumbnail', '34/40/50577e9b18703bcb73cfa3920ddd.jpeg'),
(59, 30, 'main', '2c/e9/e5895e18d5848d44e0c98c4b882e.jpeg'),
(60, 30, 'thumbnail', '4f/3c/a9528327046f7e8f6a378db35cd0.jpeg'),
(61, 31, 'main', '05/02/17236d32597e9161fb8f72249a5b.jpeg'),
(62, 31, 'thumbnail', 'c2/cc/8dbea9ed36f43769fac1ec9a4e1d.jpeg'),
(63, 32, 'main', '1d/bb/116859f669bd93d8c078edb4e95b.jpeg'),
(64, 32, 'thumbnail', '3f/d8/c53ab5c870f9b7e2233187447191.jpeg'),
(65, 33, 'main', 'ca/ae/39084950efc7a37a2f08b2ca0923.jpeg'),
(66, 33, 'thumbnail', 'b9/ae/cfd8893da497b80544af84cffca1.jpeg'),
(67, 34, 'main', 'a2/b1/fd7b5c2c5288cafc67ed71132483.jpeg'),
(68, 34, 'thumbnail', '89/a2/cf93e573d7f302bf9947d0ce79a6.jpeg'),
(69, 35, 'main', 'cb/77/a556f4348db3edff7157a611016d.jpeg'),
(70, 35, 'thumbnail', '1f/66/6a6098a40c359117c43b551662bd.jpeg'),
(71, 36, 'main', 'f9/30/e189bf5e84555b1c90aba0cf24e0.jpeg'),
(72, 36, 'thumbnail', 'fa/9c/3b191eb19d5cfed49450a54a941c.jpeg'),
(73, 37, 'main', 'dc/7b/62f990f3857e71e9b827a190203f.jpeg'),
(74, 37, 'thumbnail', '94/a5/b84135c75baa5efd339a655c5f60.jpeg'),
(75, 38, 'main', '79/12/23cf195272710767a5748645775a.jpeg'),
(76, 38, 'thumbnail', '07/f7/b2749210a61b4f8fd38b52c46c05.jpeg'),
(77, 39, 'main', 'c3/41/d87c9bf5bcf4ff0ef21bc9b27a75.jpeg'),
(78, 39, 'thumbnail', '4d/a4/c0dc7337fc964f6759efcdeb0f22.jpeg'),
(79, 40, 'main', 'ff/9a/75178f6e2658e389500218fe03cd.jpeg'),
(80, 40, 'thumbnail', '02/5d/e11c5583d38e3ce0cda90fb05a13.jpeg'),
(81, 41, 'main', 'b0/59/2a9893cd12d77117323c2eeb7550.jpeg'),
(82, 41, 'thumbnail', '62/bb/7695384f4c4ca37c8a4621cfb184.jpeg'),
(83, 42, 'main', 'f2/02/7e8f7599aa1e102ae28b133c7e11.jpeg'),
(84, 42, 'thumbnail', 'b3/29/c199af7cda038195482c0992f1f4.jpeg'),
(85, 43, 'main', '55/0f/cc1e68e320173e96ac5f9227255b.jpeg'),
(86, 43, 'thumbnail', '9f/e0/95072f0df2a8f8acaaa5621c952c.jpeg'),
(87, 44, 'main', 'e3/1f/0c53cf8a053521793ae78e851432.jpeg'),
(88, 44, 'thumbnail', '96/1d/bf128b6a87aa9b4b3eb8ecd2e6b3.jpeg'),
(89, 45, 'main', 'be/0f/0944a690db5ed581a32e31293611.jpeg'),
(90, 45, 'thumbnail', '99/f7/43d46feb516ab8e7dec3b3d15e43.jpeg'),
(91, 46, 'main', '9b/bb/b0a48929bd1469dfe9814926d5c9.jpeg'),
(92, 46, 'thumbnail', '96/85/35e0de06077b993bbc39542e43ff.jpeg'),
(93, 47, 'main', '6e/ff/4d4dc790380d039d68faf153f49a.jpeg'),
(94, 47, 'thumbnail', 'd4/a3/9676d0e6482788d360b665a16248.jpeg'),
(95, 48, 'main', '26/90/08d416e3d0474e05b5f0a90e21a5.jpeg'),
(96, 48, 'thumbnail', 'ab/4e/eba95d316d2ec6e3ca702bac0af4.jpeg'),
(97, 49, 'main', '1a/76/8c0d577f540ba8448542dc387a68.jpeg'),
(98, 49, 'thumbnail', '27/61/0ea0b88f5db99b8d011862f89072.jpeg'),
(99, 50, 'main', '67/a4/1cb6f7bc1c63cb19d682c4903b6e.jpeg'),
(100, 50, 'thumbnail', '0e/47/d12c498949b3d9d135de50d14ab3.jpeg'),
(101, 51, 'main', 'dc/db/ee1a483cfd48e53d542dc1d2688e.jpeg'),
(102, 51, 'thumbnail', 'ee/3b/86564d2d201ee78b7c1d0081444f.jpeg'),
(103, 52, 'main', '20/fe/60f9710f2d5b43927b2ed284ace4.jpeg'),
(104, 52, 'thumbnail', '17/93/1a5b1971dd853f9ac9f7159af6b1.jpeg'),
(105, 53, 'main', '65/6b/70b9cd4210938b3c580d5c27794d.jpeg'),
(106, 53, 'thumbnail', '88/43/7bee3fbf49556bbd5d737cdfbbbf.jpeg'),
(107, 54, 'main', 'b3/56/08745b5551f9d3412f7dd3dc1229.jpeg'),
(108, 54, 'thumbnail', '78/80/51a4cda2d27d3a2d7fa80962d1c7.jpeg'),
(109, 55, 'main', '36/d7/1b0ac5092c83879e52437d89e47b.jpeg'),
(110, 55, 'thumbnail', 'a7/1c/fbb8ab60e62e0233cafbf7a537fb.jpeg'),
(111, 56, 'main', '6d/e7/666355ac783130d2fb48c97b5192.jpeg'),
(112, 56, 'thumbnail', 'f5/4d/f857a8f5d238620ef140b4c8d787.jpeg'),
(113, 57, 'main', '9e/b7/722edb18b708f0ab7c866a11110f.jpeg'),
(114, 57, 'thumbnail', '51/a5/af326dbbf60592548bc283515963.jpeg'),
(115, 58, 'main', '8e/ff/5f0f1827952134050f4ce1fb73d2.jpeg'),
(116, 58, 'thumbnail', '74/8c/e62610f133b19e32a0b81bbab877.jpeg'),
(117, 59, 'main', 'e3/fe/f35263fc27e85d16b945c1d3291c.jpeg'),
(118, 59, 'thumbnail', '03/dc/f2cd00c53687cab143beace0dcc1.jpeg'),
(119, 60, 'main', 'dd/0e/ba620ebffeb202c0c5dfbb8a079f.jpeg'),
(120, 60, 'thumbnail', 'fb/94/a5024aa3d16bb9cda5648d8bbbdb.jpeg'),
(121, 61, NULL, 'f6/c0/9315695b1222668808c7e0b4ff63.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_image_product_variants`
--

DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
CREATE TABLE IF NOT EXISTS `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
CREATE TABLE IF NOT EXISTS `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option`
--

INSERT INTO `sylius_product_option` (`id`, `code`, `position`, `created_at`, `updated_at`) VALUES
(1, 'mug_type', 0, '2019-01-18 13:51:45', '2019-01-18 13:51:45'),
(2, 'sticker_size', 1, '2019-01-18 13:51:49', '2019-01-18 13:51:49'),
(3, 't_shirt_color', 2, '2019-01-18 13:51:54', '2019-01-18 13:51:54'),
(4, 't_shirt_size', 3, '2019-01-18 13:51:54', '2019-01-18 13:51:54');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
CREATE TABLE IF NOT EXISTS `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_options`
--

INSERT INTO `sylius_product_options` (`product_id`, `option_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(46, 3),
(46, 4),
(47, 3),
(47, 4),
(48, 3),
(48, 4),
(49, 3),
(49, 4),
(50, 3),
(50, 4),
(51, 3),
(51, 4),
(52, 3),
(52, 4),
(53, 3),
(53, 4),
(54, 3),
(54, 4),
(55, 3),
(55, 4),
(56, 3),
(56, 4),
(57, 3),
(57, 4),
(58, 3),
(58, 4),
(59, 3),
(59, 4),
(60, 3),
(60, 4);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_translation`
--

INSERT INTO `sylius_product_option_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Mug type', 'en_US'),
(2, 2, 'Sticker size', 'en_US'),
(3, 3, 'T-Shirt color', 'en_US'),
(4, 4, 'T-Shirt size', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_value`
--

INSERT INTO `sylius_product_option_value` (`id`, `option_id`, `code`) VALUES
(1, 1, 'mug_type_medium'),
(2, 1, 'mug_type_double'),
(3, 1, 'mug_type_monster'),
(4, 2, 'sticker_size_3'),
(5, 2, 'sticker_size_5'),
(6, 2, 'sticker_size_7'),
(7, 3, 't_shirt_color_red'),
(8, 3, 't_shirt_color_black'),
(9, 3, 't_shirt_color_white'),
(10, 4, 't_shirt_size_s'),
(11, 4, 't_shirt_size_m'),
(12, 4, 't_shirt_size_l'),
(13, 4, 't_shirt_size_xl'),
(14, 4, 't_shirt_size_xxl');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_value_translation`
--

INSERT INTO `sylius_product_option_value_translation` (`id`, `translatable_id`, `value`, `locale`) VALUES
(1, 1, 'Medium mug', 'en_US'),
(2, 2, 'Double mug', 'en_US'),
(3, 3, 'Monster mug', 'en_US'),
(4, 4, '3\"', 'en_US'),
(5, 5, '5\"', 'en_US'),
(6, 6, '7\"', 'en_US'),
(7, 7, 'Red', 'en_US'),
(8, 8, 'Black', 'en_US'),
(9, 9, 'White', 'en_US'),
(10, 10, 'S', 'en_US'),
(11, 11, 'M', 'en_US'),
(12, 12, 'L', 'en_US'),
(13, 13, 'XL', 'en_US'),
(14, 14, 'XXL', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
CREATE TABLE IF NOT EXISTS `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_review`
--

INSERT INTO `sylius_product_review` (`id`, `product_id`, `author_id`, `title`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 8, 'incidunt non autem', 5, 'Sit et ullam quo quia amet. Ut nihil corrupti sit omnis impedit. Iure ipsa porro sunt dolorum.', 'new', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(2, 34, 4, 'qui iste porro', 4, 'Et accusamus iusto dolorem accusamus et voluptatem suscipit ab. Doloremque veniam incidunt blanditiis qui aut. Rem dicta quia beatae aut harum ex.', 'rejected', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(3, 8, 17, 'repellat exercitationem qui', 3, 'Eligendi qui rerum vel unde earum aut et. A iure non repellendus omnis aliquid dolores. Fuga quae ullam exercitationem iusto.', 'accepted', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(4, 52, 15, 'ut nihil eius', 2, 'Enim doloremque quia quia non. Sapiente similique animi quo non autem sint fugit suscipit. Sit corporis incidunt commodi.', 'new', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(5, 14, 7, 'et asperiores qui', 5, 'Veritatis et sint possimus reprehenderit qui ab ducimus. Saepe veniam sed repellat maiores voluptas repellat. Omnis facere harum odio quam sit est nihil.', 'accepted', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(6, 13, 7, 'incidunt et rem', 3, 'Et ad pariatur natus qui dignissimos. Accusantium repellendus cupiditate itaque dolore reprehenderit laudantium. Non cumque quibusdam cum quam quos facilis veniam.', 'new', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(7, 5, 17, 'mollitia nihil possimus', 2, 'Ex consectetur aliquid cum tenetur qui. Dolorum qui quia iure nulla tempora ut sit. Impedit numquam est id placeat velit sed ut excepturi.', 'accepted', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(8, 52, 12, 'sint officia eum', 5, 'Quod minima voluptates consequuntur rem. Ut iusto optio magni voluptate iusto aperiam. Officia quia ut corrupti voluptates.', 'rejected', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(9, 5, 15, 'recusandae laudantium consequatur', 5, 'Fugiat aliquam quam voluptas modi dignissimos. Sint nostrum quia corporis aut quisquam. Id voluptas corrupti dolores impedit itaque magni.', 'rejected', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(10, 33, 8, 'et consequatur doloremque', 1, 'Dicta consectetur consequatur aperiam repellendus veritatis. Explicabo dolores et accusamus nemo non. Ut aut adipisci ex reiciendis.', 'accepted', '2019-01-18 13:51:59', '2019-01-18 13:51:59'),
(11, 15, 8, 'facere dolor nulla', 4, 'Autem quas non quo fugit sit eligendi. Sequi minus velit sit laboriosam quod. Id vero labore nihil quis voluptatem non nemo.', 'accepted', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(12, 50, 7, 'neque eos officiis', 5, 'Molestias consequatur in quia laudantium iusto. Officiis sed pariatur minus unde ullam mollitia aut. Cumque perspiciatis temporibus suscipit.', 'accepted', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(13, 34, 17, 'dolorem voluptatem eaque', 2, 'Cum natus reiciendis quia laboriosam maiores deleniti itaque. Omnis dolorem ut incidunt laboriosam quam consequuntur neque. Aspernatur nesciunt sit mollitia et.', 'rejected', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(14, 32, 21, 'itaque saepe est', 3, 'Error quod sed sunt quam. Ea tenetur sed debitis sunt. Provident magnam ut quis aperiam.', 'accepted', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(15, 59, 14, 'laborum quae eius', 2, 'Ipsum vel nesciunt itaque laboriosam ex et est. Quo illo et omnis quos et ullam. Blanditiis necessitatibus provident aspernatur modi ullam quibusdam molestiae.', 'accepted', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(16, 15, 3, 'saepe porro ut', 1, 'Libero facere a sint tenetur ab quos cum in. Porro natus ipsa qui adipisci dolor dignissimos. Quia officia ea suscipit minima deserunt consequatur.', 'rejected', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(17, 56, 19, 'et quia molestiae', 1, 'Nam similique corporis temporibus. Odit nostrum quos veniam rerum est commodi. Itaque non animi aliquid quo eos odio maxime eius.', 'accepted', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(18, 60, 19, 'asperiores ratione illo', 1, 'Excepturi consequatur incidunt tempora atque et molestiae. Eaque ab placeat eum ut autem. Aut facere et explicabo assumenda explicabo voluptatum.', 'new', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(19, 40, 5, 'asperiores id voluptatum', 5, 'Suscipit excepturi est neque voluptas dolores animi. Harum eius adipisci nulla ut. Est illum incidunt mollitia eos enim quidem.', 'accepted', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(20, 23, 7, 'culpa sed laborum', 5, 'Illum fugit veritatis minima ad et cum. Ut ipsum distinctio omnis a. Officia suscipit in et vitae dolores.', 'new', '2019-01-18 13:52:00', '2019-01-18 13:52:00'),
(21, 46, 15, 'non aut iure', 1, 'Eos temporibus aut reiciendis earum quas. Sint ullam voluptatum molestias autem enim sed. Atque expedita non alias voluptate dolores.', 'new', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(22, 7, 18, 'illum hic quam', 4, 'Et nihil veniam et quas ut non veritatis. Ut quaerat suscipit corrupti enim enim explicabo minima quaerat. Fuga sapiente totam quod debitis autem.', 'rejected', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(23, 10, 7, 'alias similique labore', 3, 'Ducimus tempore molestias nam nemo at expedita itaque. Cumque minima quas quo perspiciatis. Culpa labore aut ut explicabo illum quo.', 'rejected', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(24, 45, 18, 'est sed velit', 1, 'Impedit ea quia earum non ut. Ex iusto temporibus at dolor dolor deleniti. Et reiciendis fugit provident qui dolor qui.', 'accepted', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(25, 40, 7, 'placeat deserunt tempora', 1, 'Temporibus deleniti voluptas optio blanditiis. Rerum magnam ipsa explicabo mollitia. Nam recusandae veniam quidem qui.', 'accepted', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(26, 59, 13, 'et natus quibusdam', 3, 'Fugiat laboriosam est maiores. Hic omnis dolorem nulla temporibus maxime. Tempora voluptas aut odit sit soluta et.', 'rejected', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(27, 42, 1, 'enim sunt eligendi', 5, 'Veniam suscipit eaque qui exercitationem. Placeat harum corrupti nihil facere quos pariatur. Dolores necessitatibus amet voluptatem molestias tempore.', 'new', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(28, 54, 8, 'mollitia blanditiis vel', 3, 'Eius dolorem hic quis ipsum consequuntur quisquam et maiores. Quam et et provident sint. Facere voluptas corrupti nihil.', 'new', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(29, 22, 17, 'necessitatibus sed sed', 3, 'Quia et est voluptatem itaque qui quas possimus. Fugiat aliquid ut assumenda magni quaerat. Nihil ut quo cum ullam expedita.', 'accepted', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(30, 40, 18, 'aperiam aliquid non', 1, 'Earum quia voluptatem doloribus ex. Architecto aliquid id illo maxime atque. Sequi hic enim reiciendis vel placeat veniam.', 'accepted', '2019-01-18 13:52:01', '2019-01-18 13:52:01'),
(31, 42, 10, 'ipsam voluptas aut', 5, 'Sit voluptatem quos debitis dolores dolores est. Sequi laudantium saepe est ad. Sed et consequatur consequuntur est fugit cupiditate non omnis.', 'accepted', '2019-01-18 13:52:02', '2019-01-18 13:52:02'),
(32, 14, 9, 'quae inventore sint', 1, 'Recusandae reiciendis corrupti natus aperiam fugit facilis. Explicabo vel ut vero magnam quasi. Aperiam autem quasi ad dicta amet a.', 'rejected', '2019-01-18 13:52:02', '2019-01-18 13:52:02'),
(33, 32, 10, 'dolores quis et', 2, 'Et dolore similique asperiores. Sunt commodi vero officiis et. Quidem ut maiores vitae asperiores praesentium sequi.', 'rejected', '2019-01-18 13:52:02', '2019-01-18 13:52:02'),
(34, 32, 3, 'ab placeat nostrum', 4, 'Dicta magnam sint nihil sit. Eaque est eum itaque nemo architecto. Et minima ratione recusandae consequatur aliquid quia qui.', 'new', '2019-01-18 13:52:02', '2019-01-18 13:52:02'),
(35, 8, 4, 'aliquid maiores commodi', 4, 'Corporis nobis enim dolorum recusandae dolorum minima corrupti. Reiciendis id vel ipsam mollitia deserunt. Veniam aperiam asperiores non et consequuntur.', 'new', '2019-01-18 13:52:02', '2019-01-18 13:52:02'),
(36, 55, 10, 'incidunt accusamus officiis', 4, 'Odio esse hic quaerat facilis. Non iure et velit dolore soluta deserunt doloribus. Voluptatem ratione id maxime id quia reiciendis consequatur modi.', 'accepted', '2019-01-18 13:52:02', '2019-01-18 13:52:02'),
(37, 25, 20, 'tempora voluptatum impedit', 5, 'Reprehenderit beatae repellendus voluptatem voluptas repudiandae sit expedita placeat. Consequatur molestias magnam reiciendis architecto. Sequi fugiat est ut ratione assumenda laborum.', 'accepted', '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(38, 40, 9, 'at reprehenderit est', 4, 'Magni aliquam et corporis dolore. Ea non voluptatum voluptatum dolorem. Totam at ea amet perspiciatis.', 'accepted', '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(39, 41, 12, 'dolor est delectus', 1, 'Neque repellat possimus aut est libero ut. Magnam atque et dolor harum minima aliquam et ut. Consectetur et nulla tempore delectus repudiandae.', 'rejected', '2019-01-18 13:52:03', '2019-01-18 13:52:03'),
(40, 53, 5, 'eligendi expedita voluptas', 4, 'Minus rem corrupti aut perferendis mollitia porro voluptatem. Odio sequi unde ex est repellendus. Sapiente repellendus aut ea consequatur.', 'rejected', '2019-01-18 13:52:03', '2019-01-18 13:52:03');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
CREATE TABLE IF NOT EXISTS `sylius_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_taxon`
--

INSERT INTO `sylius_product_taxon` (`id`, `product_id`, `taxon_id`, `position`) VALUES
(1, 1, 2, 0),
(2, 2, 2, 1),
(3, 3, 2, 2),
(4, 4, 2, 3),
(5, 5, 2, 4),
(6, 6, 2, 5),
(7, 7, 2, 6),
(8, 8, 2, 7),
(9, 9, 2, 8),
(10, 10, 2, 9),
(11, 11, 2, 10),
(12, 12, 2, 11),
(13, 13, 2, 12),
(14, 14, 2, 13),
(15, 15, 2, 14),
(16, 16, 3, 0),
(17, 17, 3, 1),
(18, 18, 3, 2),
(19, 19, 3, 3),
(20, 20, 3, 4),
(21, 21, 3, 5),
(22, 22, 3, 6),
(23, 23, 3, 7),
(24, 24, 3, 8),
(25, 25, 3, 9),
(26, 26, 3, 10),
(27, 27, 3, 11),
(28, 28, 3, 12),
(29, 29, 3, 13),
(30, 30, 3, 14),
(31, 31, 4, 0),
(32, 32, 4, 1),
(33, 33, 4, 2),
(34, 34, 4, 3),
(35, 35, 4, 4),
(36, 36, 4, 5),
(37, 37, 4, 6),
(38, 38, 4, 7),
(39, 39, 4, 8),
(40, 40, 4, 9),
(41, 41, 4, 10),
(42, 42, 4, 11),
(43, 43, 4, 12),
(44, 44, 4, 13),
(45, 45, 4, 14),
(46, 46, 5, 0),
(47, 46, 7, 0),
(48, 47, 5, 1),
(49, 47, 6, 0),
(50, 48, 5, 2),
(51, 48, 7, 1),
(52, 49, 5, 3),
(53, 49, 6, 1),
(54, 50, 5, 4),
(55, 50, 6, 2),
(56, 51, 5, 5),
(57, 51, 7, 2),
(58, 52, 5, 6),
(59, 52, 6, 3),
(60, 53, 5, 7),
(61, 53, 6, 4),
(62, 54, 5, 8),
(63, 54, 6, 5),
(64, 55, 5, 9),
(65, 55, 6, 6),
(66, 56, 5, 10),
(67, 56, 6, 7),
(68, 57, 5, 11),
(69, 57, 6, 8),
(70, 58, 5, 12),
(71, 58, 7, 3),
(72, 59, 5, 13),
(73, 59, 6, 9),
(74, 60, 5, 14),
(75, 60, 7, 4);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_translation`
--

INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
(1, 1, 'Mug \"consectetur\"', 'mug-consectetur', 'Numquam et ipsum nesciunt repudiandae esse aliquam. Voluptatem in labore adipisci minus est quia accusantium ipsam. Facilis perferendis dolorum necessitatibus eos est. Nihil labore voluptate veniam eius quo nulla enim consequatur. Impedit aut inventore hic voluptatibus laudantium ut.\n\nBeatae est facilis error laudantium. Nihil autem sed ratione vitae porro dolorem soluta. Molestiae adipisci id ipsum at atque quo perspiciatis. Ex corrupti officiis sunt quas consequatur pariatur molestiae.\n\nQuia cum corrupti aut ut nihil earum neque. Architecto quam et sunt qui. Explicabo magnam voluptate id ut consequuntur. In et occaecati illum eveniet sit et.', NULL, NULL, 'Quas dicta recusandae ipsa. Voluptatibus porro nam fugiat. Ipsa consequatur voluptates veritatis accusantium commodi.', 'en_US'),
(2, 2, 'Mug \"quaerat\"', 'mug-quaerat', 'Minus omnis voluptate ipsam vero. Et sit commodi quam culpa. Velit ut molestiae asperiores.\n\nOdio voluptatem quae quibusdam et quisquam soluta ipsum. Iusto eum porro ipsum mollitia. Adipisci officia a similique nihil.\n\nNesciunt numquam voluptas ut molestiae modi. Non et ratione quia sapiente consequuntur. Nam magni nemo incidunt est qui minima dolor.', NULL, NULL, 'Voluptatibus laudantium voluptatem eos ipsa. Dolores est hic maiores aliquid ratione sed quos. Quia repellendus eum aliquid rerum dolores magni. In consequatur vel quia libero. Ut mollitia neque est at velit inventore aut.', 'en_US'),
(3, 3, 'Mug \"dicta\"', 'mug-dicta', 'Et labore a animi quas. Quisquam aut fugit dolorem. Aspernatur nam voluptatem maiores sit. Sed non incidunt et.\n\nOptio voluptas et quis ad. Est sit perferendis consequuntur voluptatum et vel. Molestias labore voluptatem alias nam suscipit error. Tempore et dolorum ut facilis.\n\nEveniet eos sapiente nobis magnam doloremque sed dolorem. Velit numquam aut omnis omnis. Quia culpa non autem sunt dolores. Illum omnis nihil non unde corporis velit.', NULL, NULL, 'Maiores aut ipsam sit in et impedit. Voluptatem ut maxime quae veniam aperiam. Dolorum qui corporis temporibus inventore dolore voluptas iusto nulla. Rerum sequi aut suscipit consequatur nemo.', 'en_US'),
(4, 4, 'Mug \"qui\"', 'mug-qui', 'Ut aliquam beatae qui similique voluptatem ea. Cum voluptatum iste tempora voluptatum pariatur ratione dicta. Laborum quasi quisquam magnam id modi ea. Blanditiis eos qui delectus et quas eaque.\n\nEst nemo ex doloribus sed ut. Dolorem quibusdam minima qui est rem veniam. Et culpa impedit quia eaque eos omnis. Tempora molestias et deserunt sit adipisci repellat nobis omnis.\n\nQuibusdam quis id quo quia. Sunt facilis atque pariatur non.', NULL, NULL, 'Totam nisi soluta tenetur qui quibusdam. Maiores in animi saepe tenetur ea eos. Ratione sunt iste et officia sint aut. Qui dolorum accusamus dolores incidunt voluptatem dolor.', 'en_US'),
(5, 5, 'Mug \"eos\"', 'mug-eos', 'Tempora eligendi explicabo amet ullam. Architecto facilis et cumque et porro ad. Est cumque nam eos labore aut adipisci velit. Voluptas est possimus corrupti. Molestias nobis fuga quibusdam sapiente odit asperiores perferendis sapiente.\n\nQui doloremque blanditiis nostrum hic. Atque nisi provident voluptas quasi rem ipsum. Ipsum a illum labore iure. Reprehenderit voluptas eaque aut.\n\nRepellendus iusto animi illum eveniet ducimus optio. Ut dolor reprehenderit nostrum deserunt velit voluptatibus. Possimus est non similique ut libero dolor fugiat.', NULL, NULL, 'Delectus sapiente eos corporis et. Ut voluptate amet vero ut. Commodi saepe omnis laudantium et deleniti quaerat. Quidem iusto est tempora qui sint aspernatur.', 'en_US'),
(6, 6, 'Mug \"doloremque\"', 'mug-doloremque', 'Sequi perferendis tempora neque. Sunt et nostrum tenetur et sed architecto. Quae sit cum rerum alias sit voluptates. Sed et et iure et. Consectetur dolor veritatis neque sit eos ut ducimus.\n\nAutem aperiam qui cumque. Facere et quia qui ex consequuntur. Facilis temporibus impedit voluptate quisquam amet.\n\nAccusantium reprehenderit a eos explicabo. Exercitationem ipsam accusamus amet in quasi. Unde optio non totam in iusto autem veritatis. Nisi illo blanditiis doloremque adipisci.', NULL, NULL, 'Ut accusantium placeat officia dolores. Nisi vel atque at soluta ea veniam corrupti. Doloremque neque aut tenetur ut fuga incidunt. Numquam rerum repellendus facere omnis occaecati.', 'en_US'),
(7, 7, 'Mug \"occaecati\"', 'mug-occaecati', 'Repudiandae minus non dolores. Consequatur sequi esse magnam tempora. Voluptatem cupiditate id in qui exercitationem mollitia omnis et.\n\nSit aut eum eos iste. Nobis qui cumque vero qui in sunt qui. Asperiores aut consequatur optio omnis possimus. Cumque ab et est quidem mollitia adipisci in. Consequatur occaecati rem dicta.\n\nDebitis porro aspernatur omnis earum consequatur. Quia facilis ullam at culpa hic placeat quo. Et delectus est vitae.', NULL, NULL, 'Et sed culpa quam ea dolorum vel ut. Laborum repellat placeat et nostrum minima. Distinctio velit distinctio id necessitatibus dignissimos. Quia officia sit consequatur sed. Eum sint in dolore deserunt aut.', 'en_US'),
(8, 8, 'Mug \"et\"', 'mug-et', 'Dolor veritatis nostrum consequatur cupiditate suscipit molestiae. Aspernatur ut iusto ratione ex soluta et aspernatur. Aut harum architecto quidem quia fugit. Ex rerum consequatur ut alias error.\n\nOfficiis ut dignissimos unde repellendus aut. Nam ea natus velit in delectus. Necessitatibus eum iusto et voluptatem minima consequatur expedita.\n\nMaxime voluptatem beatae non debitis consequatur atque. Aperiam maxime libero architecto provident. Aut praesentium pariatur et. Non aut praesentium tempore ex blanditiis quasi unde quibusdam.', NULL, NULL, 'Dolor qui at ea expedita odio rerum harum. Earum est repellendus voluptas ipsam aut quae omnis.', 'en_US'),
(9, 9, 'Mug \"quia\"', 'mug-quia', 'Quo quia ipsum corrupti. Est corporis molestias omnis quae voluptatibus voluptas veritatis. Harum neque repellendus repellendus quae iste soluta mollitia. Esse beatae ea velit minima.\n\nRem ut molestias reprehenderit aut. Quidem dolore velit eligendi modi doloribus nisi atque veniam. Qui autem temporibus consequatur optio quaerat quisquam.\n\nMolestias fuga rem accusamus nisi. Eum quia impedit quod recusandae architecto qui magni. Quibusdam ut sequi molestiae sint quos exercitationem.', NULL, NULL, 'Excepturi voluptatibus aut et qui aliquam ipsam fugit. Sit rerum autem reprehenderit dolore dolorum delectus commodi. Repudiandae blanditiis consequatur est ab molestias.', 'en_US'),
(10, 10, 'Mug \"earum\"', 'mug-earum', 'Fuga molestiae quibusdam aut ut. Doloribus minima odit porro reprehenderit culpa et numquam. Ex expedita quos dolorum et et soluta. Natus sed minus et aperiam sunt dolorem.\n\nOptio et cumque suscipit molestias necessitatibus neque autem. Assumenda amet quaerat itaque omnis hic. In ab nihil reprehenderit possimus et.\n\nAutem optio nostrum est vero aut officiis. Adipisci dolorem voluptas nihil est quia. Enim ad et debitis. Maiores qui quisquam labore occaecati.', NULL, NULL, 'Nihil dolor veritatis eligendi provident. Animi quis sed tempora. Nesciunt animi rem fugiat aut minus corporis. Quia iure animi vero odit nihil nam.', 'en_US'),
(11, 11, 'Mug \"assumenda\"', 'mug-assumenda', 'Ut iste ut cumque esse. Ex sit qui laborum error aut. Laudantium quasi laudantium ut neque unde autem. Et saepe ratione nobis autem.\n\nEx ex laudantium magni quam. Asperiores ad sint sunt repellendus. Dolor mollitia eveniet id debitis.\n\nCupiditate cupiditate ducimus cum molestiae. Sed et eum a quae reiciendis ea.', NULL, NULL, 'Nihil et alias distinctio id. Magnam aspernatur porro perspiciatis. Blanditiis perferendis earum quaerat odio aperiam quod id. Aut quas officiis earum molestiae omnis ut dignissimos.', 'en_US'),
(12, 12, 'Mug \"odio\"', 'mug-odio', 'Assumenda aut voluptate natus est reiciendis et ab. Non quisquam quia tempora autem odit. Alias voluptatum doloribus veniam ea dolorem consectetur delectus. Occaecati quia et magnam voluptate dolor porro.\n\nSapiente animi doloribus quibusdam sed. Blanditiis perferendis omnis officia similique. Illum qui ut repellat neque voluptatem porro consequatur beatae. Quia maxime adipisci consequatur magni cumque velit.\n\nOccaecati dolores et nemo eos. Aperiam eos minima vitae. Qui et neque fuga est deleniti numquam.', NULL, NULL, 'Eos et est ad voluptas nesciunt perspiciatis quo libero. Aut vero velit quis vero suscipit optio. Qui magni dolorem non quo voluptatem. Est veniam quia quos commodi aperiam est corporis.', 'en_US'),
(13, 13, 'Mug \"itaque\"', 'mug-itaque', 'Ab reprehenderit vitae veritatis ut. Non hic itaque laudantium omnis adipisci est. Voluptatem quis eius officia incidunt nihil in quidem.\n\nDoloremque porro eaque corrupti sequi quae laudantium veritatis. Quia ratione quis consequatur repudiandae molestiae laboriosam accusantium voluptate. Et tempora consequatur ea itaque explicabo non impedit cumque. Rerum error voluptatum est vel at. Esse perferendis commodi cum suscipit et.\n\nVeritatis qui repudiandae dolorem fuga et cum iste. Impedit praesentium dignissimos molestiae rerum molestiae.', NULL, NULL, 'Ut est eum quidem aut laudantium amet. Quis possimus beatae ad est sit sint porro. Tenetur nemo magnam impedit molestiae fuga vero. Fugiat dolores nobis sequi labore eos.', 'en_US'),
(14, 14, 'Mug \"fuga\"', 'mug-fuga', 'Quia ab eum rerum id. Facere voluptatibus omnis sint rerum dicta debitis. Vel occaecati et et molestias est. Aut necessitatibus ad rerum tempora aut est.\n\nVoluptas sunt et tempora eligendi eveniet earum. Ipsam autem quo non omnis. Odio quam nemo consequatur voluptatibus voluptatem blanditiis odit.\n\nVoluptatem debitis vero blanditiis ea ex numquam. Deserunt ut quia saepe et voluptatem. Molestiae aperiam commodi sed aliquam non id officiis.', NULL, NULL, 'Quae atque rem aspernatur sit soluta. Beatae doloremque veritatis aut eveniet iusto. Repellat quasi totam ullam debitis.', 'en_US'),
(15, 15, 'Mug \"at\"', 'mug-at', 'Minima corrupti velit sunt et. Aut dolore reiciendis unde. Omnis ab modi officia consequatur vitae quae.\n\nQuis non non et voluptas. Dolores ratione nemo voluptatem officiis et impedit. Incidunt numquam architecto fugiat officia voluptas reprehenderit delectus.\n\nAliquid alias et velit aut velit doloribus. Pariatur magnam assumenda aut omnis exercitationem. Architecto et aut a rerum animi dolor vero. Quia recusandae aut ut molestias iusto quo vero.', NULL, NULL, 'Id sunt aperiam tenetur occaecati sapiente ut. Iusto voluptas recusandae molestias vel nesciunt nihil. Eius dignissimos deserunt est.', 'en_US'),
(16, 16, 'Sticker \"et\"', 'sticker-et', 'Natus ex temporibus inventore quod in. Quidem vitae qui quia unde aut neque. Dolorem delectus similique exercitationem similique aliquid.\n\nPerferendis consectetur corrupti sint ut voluptatum iste. Beatae aperiam aut numquam ut inventore. Iure vel sunt labore dolorum.\n\nOfficia exercitationem consequatur pariatur porro. Consequatur aliquam ut exercitationem qui rerum animi dolor doloribus. Est maxime impedit eaque. Velit vitae quis sint quia id earum tempora. Quo qui et officia mollitia placeat vitae et est.', NULL, NULL, 'Occaecati atque veniam itaque. Necessitatibus nulla deserunt nemo ad reiciendis nulla. Voluptate aut nemo nesciunt vel. Eius neque laudantium explicabo tenetur suscipit sit ipsa.', 'en_US'),
(17, 17, 'Sticker \"dolorem\"', 'sticker-dolorem', 'Mollitia fuga alias assumenda aut. Non laborum vitae quaerat perferendis.\n\nArchitecto repellendus nihil voluptatem autem quis. Officia perspiciatis dolor est. Corrupti voluptate consequatur occaecati blanditiis qui unde.\n\nFugit illum dolor rem eos aspernatur ea repellat aspernatur. Ut et ut et iure pariatur. Et fuga consequatur minus vero. Quo fuga veritatis omnis itaque quae quam illum. Veritatis ut voluptatem incidunt dolorem ea.', NULL, NULL, 'Iure harum officiis laboriosam tenetur. Eos cum quis aut quas ipsum quia distinctio tempore. Fuga dolorem et consequatur quas accusantium sunt.', 'en_US'),
(18, 18, 'Sticker \"voluptatibus\"', 'sticker-voluptatibus', 'Maiores repudiandae placeat enim debitis. Expedita atque dicta nemo quia porro. Ipsum eum ut corporis.\n\nQuia est eum accusantium. Saepe libero qui accusantium eum molestiae assumenda. Velit ipsa quasi saepe delectus non placeat molestiae. Debitis sit ut ut ipsam.\n\nEt impedit velit qui veritatis fugit architecto. Est voluptatibus recusandae dolores et culpa. Rerum earum et quae ut nulla facilis non. Et consectetur dicta sequi quas ratione error molestiae.', NULL, NULL, 'Earum laborum labore libero id. Adipisci officiis beatae ea aut. Et rerum nulla laboriosam eveniet omnis rem. Sit animi doloremque voluptatem cupiditate aut incidunt earum.', 'en_US'),
(19, 19, 'Sticker \"numquam\"', 'sticker-numquam', 'Rerum eum nobis sit error. Aut molestiae et ipsa corporis. Iste illo sint optio cumque rerum ut. Est nemo aperiam quia ipsam mollitia ex eos distinctio.\n\nCorrupti ea eos sapiente soluta. Sit et accusantium omnis ut. Unde veniam totam est aut deleniti. Dolorum voluptatem esse aut repellendus nihil cumque consequatur.\n\nRepellat quaerat totam dolorum illo sint dolore omnis. Vel itaque dolorem qui accusamus ut. Ut vero aliquid autem dicta.', NULL, NULL, 'Nostrum hic voluptatum expedita sint qui adipisci deserunt. Optio explicabo rerum ipsum aliquam ad.', 'en_US'),
(20, 20, 'Sticker \"expedita\"', 'sticker-expedita', 'Qui et tempore dolores. Occaecati impedit et sunt et voluptatem.\n\nRerum est et modi eveniet nulla magnam. Maiores aut maxime laboriosam vel sint possimus dolorem. Error inventore recusandae eligendi voluptate autem.\n\nRepellendus libero esse dolor molestiae quia reprehenderit. Eveniet deleniti ut voluptatem assumenda velit. Repellendus voluptatum beatae a quas fugiat qui. Ut illo esse corporis dignissimos saepe perspiciatis.', NULL, NULL, 'Odit et et minima odio necessitatibus. Tempore dolorum libero aliquam perspiciatis hic pariatur facere magnam. Occaecati ut excepturi quas ea earum qui voluptas. Consectetur mollitia est dicta ut dolorem enim. Commodi dolores et dolorem.', 'en_US'),
(21, 21, 'Sticker \"omnis\"', 'sticker-omnis', 'Ut aliquam neque quia et corporis. Inventore itaque laudantium quidem rerum reiciendis fugit. Aut id distinctio quo consequuntur dolorem. Et quibusdam nihil repudiandae.\n\nNemo id et error cumque repellendus. Rerum sequi sit mollitia reprehenderit eos eius numquam quibusdam. Eos dolore ut sit laudantium rem.\n\nDicta autem quasi quas odit alias. Quis sunt repellendus commodi corporis. In qui dolor est ducimus laborum magni consequatur.', NULL, NULL, 'Ex voluptas quae occaecati voluptate quidem est doloremque. Et tempore earum ab aliquid enim quam modi. Reiciendis maxime provident molestias cumque. Facilis incidunt suscipit laudantium facere ipsa.', 'en_US'),
(22, 22, 'Sticker \"laboriosam\"', 'sticker-laboriosam', 'Alias et et est magnam delectus error. Facilis odit dolores minima reiciendis possimus fugit. Enim enim sint et.\n\nUt porro ut officiis sint esse. Aut ut ipsa placeat cum distinctio sed. Sit accusamus ea dolorem numquam quae assumenda.\n\nConsectetur inventore id dolor. Ea alias voluptas veniam dolorum.', NULL, NULL, 'In ut sed iure suscipit voluptatem ea. Incidunt quos voluptatum repellat exercitationem non odio mollitia voluptas. Nobis ad blanditiis necessitatibus cupiditate nobis.', 'en_US'),
(23, 23, 'Sticker \"hic\"', 'sticker-hic', 'Voluptatem aut praesentium id eveniet. Error quia quasi voluptas. Provident nobis voluptates animi nihil eveniet vel sit. Placeat facere nobis atque non.\n\nEius illo officia sint aut vel cum repellendus. Aut quasi quo nihil quis omnis possimus. Recusandae placeat natus nam nisi nemo.\n\nAssumenda inventore iure non tempore est sit quaerat facere. Consequatur nihil aspernatur error dolor pariatur. Aut itaque doloribus et aspernatur non. Tenetur molestiae facere eveniet minus. Sit quam delectus cumque.', NULL, NULL, 'Nihil harum beatae qui nesciunt similique doloribus. Voluptas qui qui nobis vel et quod. Non voluptatibus tempora ipsam sunt voluptatibus dolorum rem.', 'en_US'),
(24, 24, 'Sticker \"accusamus\"', 'sticker-accusamus', 'Facere rerum voluptas pariatur id ut voluptatum reiciendis. Velit harum aut excepturi architecto quis occaecati omnis. Soluta molestiae doloremque quo ducimus harum. Adipisci sed ullam et consequatur.\n\nQuisquam nam nobis et enim reiciendis. Voluptas rerum pariatur cumque et distinctio. Nulla alias aliquam ipsa cumque doloribus nostrum. Reiciendis qui et accusamus sint magnam at.\n\nAssumenda velit praesentium quaerat consectetur. Aliquid a odit odit quia impedit. Quibusdam velit placeat aut dolores explicabo. Earum soluta mollitia beatae repellendus adipisci quod sit aut.', NULL, NULL, 'Animi distinctio quibusdam quasi libero sunt voluptas aut. Temporibus consequatur cupiditate perferendis eos suscipit quia. Ab cumque a earum inventore. Accusamus non enim cupiditate ipsa ab.', 'en_US'),
(25, 25, 'Sticker \"est\"', 'sticker-est', 'Iste neque tempora distinctio numquam pariatur voluptas et. Ut omnis voluptatibus hic quia. Et voluptatum ea odit eligendi delectus facilis quidem sapiente. Dolorum adipisci qui aliquam cumque voluptatum ex.\n\nCorporis ut dolores pariatur ut quis vel non ut. Reprehenderit cum vel incidunt earum quod enim esse. Error rerum voluptas quia quis.\n\nSed et et consectetur culpa commodi quo consequuntur. Explicabo culpa sed doloribus cumque voluptatum in illo. Consequatur error ex in voluptates repudiandae velit omnis. Culpa et eum dolores quia nobis et.', NULL, NULL, 'Quia exercitationem nihil eos et accusamus inventore eligendi. Eaque et consectetur provident tempora. Ab minima maiores est dolores.', 'en_US'),
(26, 26, 'Sticker \"totam\"', 'sticker-totam', 'Recusandae laudantium provident quia eum rerum. Eligendi quod dolorem qui et ea quia cumque molestiae. Suscipit odio voluptatem laboriosam ut at provident tempora.\n\nDolorum impedit accusantium ducimus cupiditate eum sed ipsum unde. Qui suscipit velit et officia dignissimos. Excepturi voluptas incidunt dolorem et illum.\n\nEt incidunt assumenda quia aut. Debitis quis et aut dignissimos aliquid quae. Enim omnis ut atque qui asperiores dolor eius. In voluptatibus autem nemo quis.', NULL, NULL, 'Iusto ut quaerat quas ut rerum aut iusto quis. Nam in velit aut dolores. Deleniti rerum autem architecto repudiandae magni natus nostrum. Architecto enim necessitatibus qui sint.', 'en_US'),
(27, 27, 'Sticker \"molestiae\"', 'sticker-molestiae', 'Beatae voluptates odit enim ipsa eaque. Repudiandae maiores ut ullam in eius. Aut eos recusandae consequatur et. Quo repellat delectus debitis aut. Qui architecto et inventore dolor aspernatur.\n\nAliquam et animi ut. Sit omnis ut perferendis dolorum quis voluptas labore repellendus. In quis ipsa ullam magnam debitis possimus ipsum. Delectus omnis incidunt quo ut asperiores.\n\nEt consequatur cupiditate ullam eos deserunt blanditiis quos. Numquam voluptas tempore sit quod et. Quis eum ab corporis autem quos eos.', NULL, NULL, 'Enim recusandae repellendus fugit sit. Est quia facilis magnam quam dicta. Et nihil voluptatem sunt voluptatibus. Veniam aut voluptas aperiam consequuntur.', 'en_US'),
(28, 28, 'Sticker \"nesciunt\"', 'sticker-nesciunt', 'Rerum aut provident ab fuga perspiciatis. Repellat at vitae quasi non. Dolor recusandae quia ratione.\n\nEaque reiciendis minima vel est optio. Commodi sed quis veritatis libero totam veniam voluptates. Sed minima et sequi nihil sapiente ea. Ab veniam consectetur sit corporis culpa.\n\nTemporibus nihil in nemo. Soluta nisi quae error dolores reprehenderit. Asperiores perferendis quo voluptates aperiam alias illum.', NULL, NULL, 'Quidem corrupti modi possimus nam eos eum. Qui excepturi molestias atque quidem consequatur sunt consequatur. Sint atque perspiciatis dolores qui officia ea sed. Dolores debitis voluptatibus quaerat perspiciatis consequuntur voluptas quidem alias.', 'en_US'),
(29, 29, 'Sticker \"nihil\"', 'sticker-nihil', 'Reiciendis unde omnis repellendus sint aut magni. Voluptatem atque recusandae vel nam eaque perspiciatis minima. Qui eveniet odio occaecati nisi sunt vitae voluptate. Nulla nobis natus nam aperiam excepturi.\n\nCulpa vel voluptatem voluptas qui ducimus. Illo eaque optio magni minima quasi sint et. Non dolor sit possimus officia ad commodi. Consequatur sint soluta adipisci eos.\n\nIste architecto hic facere velit. Perferendis harum atque alias. Odit vel voluptatem maxime mollitia necessitatibus officia.', NULL, NULL, 'Ullam nam ex provident voluptatem fugiat velit sed. Quia sapiente libero fugiat nam qui facilis. A distinctio eum fugit ducimus.', 'en_US'),
(30, 30, 'Sticker \"ab\"', 'sticker-ab', 'Ipsum repellendus quidem officiis voluptatum nulla. In vel provident consequatur non error quos. Dolor aperiam vel in nemo quis.\n\nSit libero dolores vero eaque eligendi. Perspiciatis minima qui voluptas minus. Nostrum vel consequatur mollitia eaque. Cum cum atque iusto autem reprehenderit itaque dolores.\n\nVelit nemo omnis rerum est sequi a in asperiores. Eum velit molestiae sed quo officia aut. Tempore sed rem autem ut in id quibusdam.', NULL, NULL, 'Beatae voluptas eos omnis. Est tempore atque culpa et. Porro id modi sunt non.', 'en_US'),
(31, 31, 'Book \"rem\" by Elva Fadel', 'book-rem-by-elva-fadel', 'Aut illum dignissimos quos culpa. Ut provident et qui beatae nihil ea. Sed magni cupiditate minus aut quas sit sit. Voluptatem dolorum quis unde vero ea eveniet delectus.\n\nLaborum dolor consequatur quo quo facere. Neque distinctio eveniet sit est. Molestiae esse quia totam ea cum deserunt tempore. Voluptas corporis natus aliquam sit rerum et esse et.\n\nQuia voluptates et autem earum sed. Perspiciatis laborum quo rerum dolor aut. Dolorem est vel sed et nobis perferendis voluptas. Quas provident sed sit maiores.', NULL, NULL, 'Laborum et et molestiae aliquid minus. Aut error molestiae qui qui. Aut sit qui modi adipisci vitae illo sint. Qui maiores et iste voluptatem nemo sed odit quo.', 'en_US'),
(32, 32, 'Book \"quisquam\" by Lela Mertz Sr.', 'book-quisquam-by-lela-mertz-sr', 'Ipsa accusamus magnam debitis et sit. Rerum ad pariatur molestiae sint ut totam deserunt. Vero impedit est et repellat maiores ad aut. Repellendus nihil animi quae adipisci aut laudantium consequatur necessitatibus. Explicabo inventore enim dolorem quia fugiat veniam harum.\n\nMagni autem quae et voluptate culpa nobis. Tempora sit corrupti temporibus delectus velit.\n\nSuscipit voluptatem omnis voluptatem odio quasi velit ducimus. Vel maiores eum perspiciatis et. Sint iusto exercitationem laboriosam ut corrupti consequatur. Dolor voluptatem officia accusantium eos sint dolores tenetur.', NULL, NULL, 'Velit et dolor inventore eveniet non amet. Aperiam inventore dicta velit est et. Laborum necessitatibus consequatur quaerat explicabo occaecati. Ut tempore fugiat est eos voluptate rem modi dolores. Aut impedit ut consequatur.', 'en_US'),
(33, 33, 'Book \"possimus\" by Demarcus Miller', 'book-possimus-by-demarcus-miller', 'Veniam numquam ullam est ex autem nobis delectus. Minima veniam et ducimus tempora vel rerum quas. Praesentium velit harum in tenetur vel non. Quam ut perferendis ducimus consequuntur saepe eaque eligendi.\n\nOfficia veniam eos nemo ipsum. Ut incidunt quia ab dignissimos voluptas et. Iure incidunt laborum sed nisi repudiandae velit optio. Ut culpa minus ea earum et earum. Quae et in enim voluptatibus.\n\nPerferendis repudiandae rerum eveniet illum illo voluptas. Incidunt et voluptatum qui tenetur hic sequi laboriosam in. Ducimus dolorem et facilis odit quibusdam reiciendis. Ex ipsum odit nisi.', NULL, NULL, 'Dolor voluptatum soluta dolore culpa quasi sit ea consectetur. Rem tempora et et excepturi tempore. Tenetur ipsum molestias autem sit.', 'en_US'),
(34, 34, 'Book \"incidunt\" by Dolores Herman DDS', 'book-incidunt-by-dolores-herman-dds', 'Accusantium et amet ut veniam adipisci nisi rerum. Ipsum consequatur unde qui ullam iusto animi voluptatem autem. Et perferendis consectetur harum architecto quae doloremque. Esse autem in sapiente. Cum sit laboriosam reprehenderit harum qui.\n\nDolore alias labore eligendi est alias commodi sunt mollitia. Labore iste ab occaecati reprehenderit. Ea officiis quibusdam occaecati officiis voluptatem omnis voluptates.\n\nPerspiciatis et nesciunt illum. Tempore voluptas qui veniam voluptas molestiae vel quod unde. Et dicta excepturi fuga praesentium fuga eveniet. Harum quia quae occaecati blanditiis nemo.', NULL, NULL, 'Adipisci blanditiis rerum optio deleniti. Molestias ut deleniti enim hic. Et veniam veniam voluptatem vero et autem quos.', 'en_US'),
(35, 35, 'Book \"veniam\" by Zoila Waelchi', 'book-veniam-by-zoila-waelchi', 'Hic tenetur distinctio quibusdam est est aliquid. In animi distinctio porro placeat. Est omnis quas praesentium commodi numquam explicabo dolorem. Autem aspernatur quia ut reprehenderit sed.\n\nFugit mollitia recusandae consequuntur aperiam rerum. Porro consequatur illo qui. Ab eaque recusandae rem quas. Consequatur ullam ex ad amet deleniti dolor ratione deleniti.\n\nRepellat incidunt distinctio qui. Sit ipsam dolorum dolorem ut aut dolorem consequatur. Nobis itaque porro voluptatibus molestiae. Magni debitis aut quia ratione quia. Vel mollitia iste voluptatem corrupti nulla sequi sunt.', NULL, NULL, 'Ea explicabo et aut. Sapiente dolorem facere ipsam provident dignissimos in facere aut. Sint modi unde molestiae veniam nostrum non et alias. Facilis non laboriosam dolores aperiam incidunt. Tempora velit quis est soluta.', 'en_US'),
(36, 36, 'Book \"officia\" by Celestine Upton', 'book-officia-by-celestine-upton', 'Dignissimos et vero natus. Eius non exercitationem quis veritatis animi molestiae. Quia qui totam sunt et. Distinctio iste autem ipsa molestiae sit omnis.\n\nVeniam architecto accusantium voluptatum reprehenderit voluptas cupiditate pariatur. Illo quo nisi eius quia minima quia. Qui expedita illum dicta.\n\nSoluta et et rerum. Temporibus est enim ex praesentium hic non.', NULL, NULL, 'Ducimus saepe incidunt doloribus ea vel magni est. Dolor ipsam voluptatum quisquam nobis velit veniam necessitatibus. Eos nostrum magnam cumque at voluptas totam excepturi. Aut eveniet qui animi.', 'en_US'),
(37, 37, 'Book \"mollitia\" by Dr. Destin Bergnaum Sr.', 'book-mollitia-by-dr-destin-bergnaum-sr', 'Quisquam autem voluptas nihil voluptatum quo sunt molestiae. Odit autem est iusto et iste qui sunt. Dolorem quis ad voluptatem. Quasi quas tempore enim dolore.\n\nConsequatur officiis quos sit corporis consequatur omnis. Iste est dicta consequatur quaerat. Delectus quasi et et corrupti et aliquam. Excepturi ut et aperiam praesentium.\n\nMagni possimus voluptatem sint vero enim vero ullam. Asperiores veniam et vitae vel ut voluptatem impedit placeat. Cumque commodi autem corporis ex. Quasi quia est distinctio maiores accusamus. Corporis nobis consequatur ipsa est.', NULL, NULL, 'Sed non quis perspiciatis rerum tempore. Quo quia cupiditate sit. At quia odio iure tenetur qui consequatur molestiae. Quibusdam qui amet est eligendi sapiente in modi. Quia at accusamus itaque non iure nam voluptatum.', 'en_US'),
(38, 38, 'Book \"nam\" by Mrs. Palma Parisian PhD', 'book-nam-by-mrs-palma-parisian-phd', 'Fugiat minima et et reiciendis consequatur doloribus. Quas dolor nobis earum libero. Ut nulla quia magnam atque ut sunt autem.\n\nBlanditiis quidem quis quod. Esse eum accusamus eum dolorem et dolores. Nihil non modi officia consequuntur dicta.\n\nLabore ratione qui maiores. Accusantium ipsa nesciunt nihil et. Atque quia mollitia dignissimos consequuntur officia et minima. Facilis vel aut sint ut iste.', NULL, NULL, 'Voluptatem illum quia voluptas eius quisquam ullam. Repellendus veniam voluptatem consequatur vero consequatur. Animi harum id eos.', 'en_US'),
(39, 39, 'Book \"dolores\" by Destinee Carroll', 'book-dolores-by-destinee-carroll', 'Qui aut debitis rerum et voluptatem. Dicta et voluptas optio et excepturi quibusdam. Nam quasi ipsam maiores eveniet.\n\nNam in ratione qui exercitationem dolore. Est inventore eaque eius similique. Alias explicabo perspiciatis reiciendis qui suscipit nobis qui.\n\nSit nihil eum qui. Magni quam ut voluptatibus sint. Repudiandae nihil id quia cupiditate reprehenderit commodi possimus modi.', NULL, NULL, 'Tempora temporibus deserunt aut reiciendis cumque eius. Fugiat quia esse voluptas sint voluptas reprehenderit modi magni. Repellat recusandae deleniti incidunt ab velit id aliquam. Repellendus ipsa repudiandae sunt cum eius. Cum cum ut nisi ut id doloremque repudiandae.', 'en_US'),
(40, 40, 'Book \"aperiam\" by Shanel Botsford', 'book-aperiam-by-shanel-botsford', 'Id et et natus ut dolorem ut architecto corporis. Tempora id et aut ut qui doloremque aut. Corrupti sequi libero ex ut illo. Aut sunt laudantium blanditiis quis quam est unde.\n\nAutem aspernatur vel nulla rerum nam exercitationem. Aut nihil velit rerum. Cupiditate ea nemo amet sunt id commodi distinctio. Voluptas ut quibusdam provident vel nihil.\n\nQuo aut repudiandae iusto. Quia est nesciunt dolores dolores temporibus possimus. Repudiandae sint aut asperiores aperiam ipsam distinctio.', NULL, NULL, 'Voluptas voluptas mollitia sed ullam autem. Molestias eos corporis quia veritatis voluptatum molestiae ut eum. Voluptates sed quod ab assumenda nihil ullam sapiente.', 'en_US'),
(41, 41, 'Book \"illo\" by Bill McGlynn', 'book-illo-by-bill-mcglynn', 'Sunt est ipsa placeat dolorum illum suscipit placeat rerum. Nemo incidunt fuga accusamus tenetur aut. Sed consequatur perferendis et esse. Quo illo omnis aliquam odio pariatur dolorem.\n\nQuas voluptas et dolore quam quidem. Voluptatem rerum cum non similique consectetur qui dolores voluptatem. Voluptatum qui velit minus sit.\n\nFacilis ullam non natus expedita qui cum. Quo et quaerat quo voluptate hic quod qui. Sint ducimus assumenda nostrum similique dolor magni cupiditate. Sed inventore vero vero animi.', NULL, NULL, 'Distinctio facilis ex quo sit illum. Iure rerum sed quia placeat dicta cum. Voluptatum odit enim velit nisi ut et harum. Illo est voluptatem numquam ipsa sequi consequatur impedit veniam.', 'en_US'),
(42, 42, 'Book \"dignissimos\" by Josefina Lebsack', 'book-dignissimos-by-josefina-lebsack', 'Id quaerat et delectus delectus distinctio est. Est omnis dolores dicta dolorum. Inventore et ut ut molestiae atque labore. Fugit nihil nemo provident est rerum dolor.\n\nNecessitatibus explicabo qui dolor iusto quaerat. Rerum vel et tempore ipsa. Veniam aliquam eaque eveniet fuga et aut. Et asperiores rerum dolorem neque et quo.\n\nQuaerat architecto ducimus quaerat rerum facilis. Eos quis sit neque minima temporibus. Aut voluptatum neque eos doloribus. At aut soluta rerum a voluptates.', NULL, NULL, 'Harum eligendi incidunt inventore exercitationem cumque aut aut. Facilis voluptatem dolorum reprehenderit repellat. Eos rerum facere molestiae soluta natus tenetur dolorum.', 'en_US'),
(43, 43, 'Book \"est\" by Bryce Dicki', 'book-est-by-bryce-dicki', 'In autem expedita non quia omnis. Alias et dolorem aperiam iure. Repellat harum nemo commodi doloribus.\n\nCommodi eaque sunt recusandae ad ullam. Soluta voluptates aut quibusdam aliquid deleniti vitae. Natus soluta et qui sit est illo laudantium qui.\n\nQuos sapiente consectetur cum sint in. Nihil consequatur ut repellendus sint labore voluptas. Similique nisi vel excepturi aut occaecati. Explicabo qui eaque fugiat et sapiente.', NULL, NULL, 'Nemo fugiat dolorum neque occaecati dolor. Officiis blanditiis inventore dolores neque. Sit aut et porro aperiam rerum voluptatem quia dolor. Voluptatum voluptatem asperiores nesciunt cum. Laudantium rem natus omnis.', 'en_US'),
(44, 44, 'Book \"qui\" by Miss Iliana Marvin V', 'book-qui-by-miss-iliana-marvin-v', 'Voluptas illum eveniet nam dolore a. Sunt assumenda quidem unde. Quis aut eveniet voluptate qui soluta saepe. Est et veritatis provident et iure earum iure.\n\nEos aliquid minima dicta. Accusantium veritatis nemo quibusdam saepe quia. Vel sunt ut quibusdam aperiam vero. Praesentium aut tempore dolorum et error velit ut.\n\nDolores quam et sapiente et est est enim atque. Illum voluptas tempora dolor deserunt dolor aspernatur ipsa. Minus culpa qui sunt vel voluptas tempora porro. Consequatur nihil placeat distinctio asperiores quisquam magni.', NULL, NULL, 'Illum aut magni alias quia qui reprehenderit. Cumque possimus eveniet accusamus natus necessitatibus quos qui. Est aut non non eos cupiditate sit.', 'en_US'),
(45, 45, 'Book \"ut\" by Marshall Kshlerin', 'book-ut-by-marshall-kshlerin', 'Rem corporis repellat quia earum. Quia nisi pariatur eum quisquam animi saepe. Ab nulla eum perspiciatis. Sed repellat sit excepturi tenetur corporis.\n\nQuis necessitatibus et corrupti totam. Laboriosam et omnis nisi voluptatem. Ad enim ea quasi dignissimos maiores. Corrupti sint aut placeat ut.\n\nQuo odio est voluptatem totam libero rerum. Sed nesciunt hic eius animi. Voluptas qui labore qui totam odit id modi.', NULL, NULL, 'Possimus fugit sit autem animi eligendi eos odio. Ut culpa optio consectetur harum. At dolore unde aut officiis eveniet. Ut facilis velit pariatur.', 'en_US'),
(46, 46, 'T-Shirt \"voluptas\"', 't-shirt-voluptas', 'Sed reiciendis omnis dolore perspiciatis. Ipsa eligendi consequatur doloremque et ullam mollitia ipsum distinctio. Beatae quasi totam hic ducimus autem explicabo. Repudiandae non consectetur rem dolore odit ducimus aliquam. Iure qui nisi itaque eaque quibusdam molestiae.\n\nInventore id et veritatis non temporibus velit quia. Quisquam est non est iste rerum qui. Quia quam et hic dolor.\n\nExercitationem quis dolor et eaque dolorem. In necessitatibus modi vitae autem non. Voluptate quia recusandae ut occaecati enim maxime qui.', NULL, NULL, 'Nisi voluptates aut velit natus. Aliquid voluptatum nihil nesciunt impedit aut reiciendis.', 'en_US'),
(47, 47, 'T-Shirt \"recusandae\"', 't-shirt-recusandae', 'Consequatur quaerat voluptate repudiandae totam labore quasi harum. Eveniet accusamus omnis neque expedita eum iste tempora. Cumque nihil est velit qui adipisci. Iure doloremque voluptatem tempora quas architecto perspiciatis.\n\nVeritatis doloremque dolores minus necessitatibus itaque. Dolores nihil velit animi ullam saepe magnam alias. Eveniet fuga deleniti qui.\n\nConsectetur repellat ipsa ipsa sint corporis repudiandae officiis sequi. Voluptatem et enim voluptate quam maiores est. Accusantium et similique eum eligendi laborum odit.', NULL, NULL, 'Consequuntur et consequuntur quo sunt unde. Veritatis adipisci debitis maxime voluptas neque. Molestiae vel reiciendis minus laudantium sed voluptatem. Laudantium et dolor perferendis et quaerat minima minus.', 'en_US'),
(48, 48, 'T-Shirt \"est\"', 't-shirt-est', 'Asperiores sit quam voluptatum iste cupiditate nisi et aspernatur. Modi quasi accusamus non. Officiis quas non qui. Ut velit quasi assumenda ea qui velit possimus.\n\nQui et eos qui tenetur exercitationem. Laudantium impedit iste quia repellat. Sapiente iusto qui culpa. Officia numquam nobis architecto delectus. Nesciunt voluptatem consequatur cumque odio odit asperiores harum rerum.\n\nQuas veniam in laudantium accusamus nihil aut. Illo a voluptatem et aut et a ut. Qui totam voluptate error et consequuntur temporibus qui accusamus. Iure fugit et consequatur.', NULL, NULL, 'Aut quae possimus iure perspiciatis dolorum consequatur. Qui perferendis soluta ullam consequatur voluptatem dolor eum. Ut numquam nesciunt quod accusamus expedita. Et quia voluptates facere impedit est et et quam. Adipisci voluptatem dolores esse.', 'en_US'),
(49, 49, 'T-Shirt \"dolor\"', 't-shirt-dolor', 'Nisi aliquid deserunt amet odit sequi. Modi sapiente porro impedit sed voluptate perferendis minima. Sit nulla in molestiae laborum. In et autem consequatur totam unde deleniti labore quae. Voluptatem neque ipsa adipisci nihil iste.\n\nDolore eveniet inventore dolorem praesentium. Occaecati tempore fugit at et sapiente fugiat. Tenetur quo sed aut occaecati qui dolorum architecto. Laudantium repellendus fugit expedita.\n\nDolor iusto atque nostrum id ut. Et odit praesentium ut atque quidem cumque. Quasi ut placeat repellat dolore.', NULL, NULL, 'Velit consequuntur qui sit inventore. Omnis perspiciatis et unde est. Earum voluptates sed dolor est cumque minus porro.', 'en_US'),
(50, 50, 'T-Shirt \"enim\"', 't-shirt-enim', 'Accusamus omnis aspernatur molestiae culpa assumenda. Ad voluptatum neque et ratione pariatur cumque neque rem. Earum aut numquam harum voluptates vitae. Rerum consequuntur et expedita officiis qui tempore tempora.\n\nConsequatur omnis nisi dignissimos velit et molestiae. Sit nam accusamus sed a beatae. Ea mollitia eum commodi similique natus excepturi quia doloremque. Quo ut sint est provident ab minus soluta ducimus.\n\nOfficiis doloremque qui ducimus recusandae eaque modi. A iure rerum ut modi tenetur quos. Necessitatibus esse aut voluptatem dicta. Et reprehenderit quam ex.', NULL, NULL, 'Magni et dignissimos hic et dolores fugiat. Amet veritatis quia blanditiis esse consequatur et. Eos aperiam ut esse eos dolorem incidunt doloremque quia. Qui provident minus est rerum temporibus deserunt.', 'en_US'),
(51, 51, 'T-Shirt \"animi\"', 't-shirt-animi', 'Voluptatem non non qui tempore. Et dolor delectus quia laudantium nemo qui. Laborum aut optio quia ad aut. Sed reiciendis maiores in nesciunt.\n\nMinus dolorum quos at inventore. Quo sequi rerum quia officia quia voluptate aut. Consectetur eveniet tempore eveniet eveniet impedit. Quae delectus quae voluptas sequi quaerat sint.\n\nEa natus dolores officia ipsa id quis. Est ipsa repudiandae ut ipsam explicabo. Velit et ex nulla veniam quia aperiam.', NULL, NULL, 'Nesciunt culpa a assumenda aliquid eum pariatur voluptate. Vel voluptas temporibus qui. Praesentium odio perspiciatis voluptate doloribus. Aliquam ipsa expedita aliquid quia consequatur necessitatibus.', 'en_US'),
(52, 52, 'T-Shirt \"quo\"', 't-shirt-quo', 'Sint blanditiis ab provident totam voluptatibus provident. Vel eligendi maiores maiores eius magnam minima illum laboriosam. Similique aperiam quia explicabo qui. Et molestiae ea fugit consectetur.\n\nOccaecati consequatur culpa dolores distinctio autem vel. Et et est libero perspiciatis officiis quasi. Laboriosam delectus non dolorem hic eligendi id. Rerum et corrupti esse.\n\nConsequatur iure voluptatem nihil dolores vel qui. Consequatur sed modi rem ut tenetur. Nihil beatae voluptatem necessitatibus alias.', NULL, NULL, 'Consequatur eum ut dolores deleniti itaque eum minus. Distinctio molestias optio est. Esse sed occaecati est repellendus repellat. Nemo quod magnam eum perspiciatis.', 'en_US'),
(53, 53, 'T-Shirt \"facilis\"', 't-shirt-facilis', 'Enim aliquam cupiditate alias non. Eligendi cupiditate magnam dicta cum. Animi ut hic et ipsum id.\n\nNostrum velit labore exercitationem. Odit ratione dolorum temporibus inventore. Consequuntur et rerum quo omnis voluptates et. Non blanditiis sint quibusdam.\n\nSuscipit quos enim delectus sapiente. Fugiat laboriosam molestias aliquid consequuntur quaerat libero similique. Vitae modi quia iure sed alias quam ut ratione.', NULL, NULL, 'Mollitia voluptatem est assumenda eligendi. Sequi nobis et libero est voluptas esse. Autem ut qui repellendus nobis. Est qui dolorem sunt sunt ea et possimus.', 'en_US'),
(54, 54, 'T-Shirt \"nihil\"', 't-shirt-nihil', 'Voluptatum et veritatis vel quod. Voluptas unde est et. Assumenda tempora tempora perspiciatis dolorem eaque rerum.\n\nFuga et suscipit dolores quia expedita et velit. Sapiente atque vel officiis fuga harum. Velit eveniet ut facere eos pariatur ut.\n\nIpsam quam est architecto. Aut molestiae eos amet est est culpa eveniet eum. Quis libero autem quisquam officiis vitae placeat sequi. Ut ducimus ut quos provident ratione qui.', NULL, NULL, 'Sint non neque nihil libero. Praesentium nostrum quidem fuga voluptas quaerat nemo. Minus excepturi expedita maxime ad ducimus laboriosam adipisci.', 'en_US'),
(55, 55, 'T-Shirt \"ea\"', 't-shirt-ea', 'Provident ea eveniet officiis eveniet. Ea dignissimos et rem nisi repellendus iure quos. Nisi dolorum omnis architecto et sunt iusto et voluptatem. Harum aliquid perferendis ea quia aut ut cumque.\n\nEst eum ut natus qui. Deleniti libero ratione ea deleniti incidunt eveniet voluptas. Eaque quam earum accusamus qui natus voluptatem.\n\nEst animi autem et esse est quo velit. Itaque pariatur odio illo fugit omnis odit. Nihil quaerat eius earum id deleniti.', NULL, NULL, 'Quo quia numquam sapiente facilis aut in aspernatur. Laboriosam labore dolores consectetur doloribus. Consequatur et ex officia aliquam dolor. Ea non atque ullam sit.', 'en_US'),
(56, 56, 'T-Shirt \"rerum\"', 't-shirt-rerum', 'Suscipit eius rem aut quidem est accusamus. Omnis totam harum ut ut qui minima. Et nobis dicta temporibus dolor fuga ut sequi. Ut sit dolorem aut.\n\nInventore dolore molestiae et aut non ut. Sed ad sapiente tempore fugit. Veniam ratione a exercitationem accusantium autem beatae iste.\n\nProvident assumenda quia non. Optio dolores id perspiciatis unde quod rem. Recusandae esse velit est in laudantium quo quasi. Qui totam deserunt est est enim saepe expedita.', NULL, NULL, 'Et deleniti magnam ea iste. Deleniti quo repellendus non et fugit necessitatibus consectetur. Qui et est quibusdam. Corporis ipsam cum aliquam.', 'en_US'),
(57, 57, 'T-Shirt \"laboriosam\"', 't-shirt-laboriosam', 'Laborum reiciendis qui ut eaque molestiae. Dolores sequi illum ipsa corporis est esse aut. Modi facilis consequuntur porro debitis quidem.\n\nAccusantium accusamus architecto rem tempora et nihil quia. Amet odio mollitia et. Velit aut ratione quia assumenda ipsum aperiam inventore.\n\nRepellat id est perferendis. Ea quas possimus quia maxime quae. Deleniti harum impedit delectus.', NULL, NULL, 'Dolore quasi incidunt incidunt. Officia earum modi laboriosam nihil rerum repellat. Perferendis natus sit architecto debitis.', 'en_US'),
(58, 58, 'T-Shirt \"veritatis\"', 't-shirt-veritatis', 'Iure officiis qui dolores. Consequuntur quia suscipit voluptatem quaerat iusto. Officiis beatae occaecati unde. Perspiciatis consequatur fugiat harum harum.\n\nUllam voluptatem delectus cumque ullam ut aut. Error nam ab nesciunt rem harum praesentium. Sunt quia fuga dolor molestiae. Aut voluptas molestiae doloremque ipsam.\n\nConsequuntur a suscipit voluptatem repellendus. Est officia assumenda dolores perspiciatis. Numquam eum iste recusandae explicabo et. Et et qui quia.', NULL, NULL, 'Quis sint accusamus quos earum autem. Eum dolores a eveniet accusantium illum corporis. Unde officiis ea assumenda iusto.', 'en_US'),
(59, 59, 'T-Shirt \"ullam\"', 't-shirt-ullam', 'Quisquam exercitationem voluptatem eligendi molestiae. Provident enim eos qui nesciunt. Harum esse omnis occaecati est vel laudantium non.\n\nOdit ea et consequatur nihil vel quidem voluptate. Consequatur libero qui totam explicabo quia cum. Eligendi rerum libero vel voluptatem qui. Officiis fuga voluptatem error porro omnis omnis.\n\nAdipisci illo et ratione voluptates dolore. Eos corrupti porro quo aut qui dolor.', NULL, NULL, 'Nihil saepe laborum assumenda illum magni. In illum consequatur modi. Velit cumque numquam ea assumenda delectus sint eveniet. Consequatur reprehenderit quo dolor temporibus et sint cumque accusantium.', 'en_US'),
(60, 60, 'T-Shirt \"maiores\"', 't-shirt-maiores', 'Ducimus dolorem quia deleniti officiis. Vero nisi iste quibusdam commodi corrupti. Ex aut necessitatibus nostrum aspernatur dolorem quae accusantium. Nihil aliquid aperiam dignissimos culpa distinctio dignissimos.\n\nSit magnam et voluptatum at harum pariatur explicabo. Suscipit ut quo beatae voluptatem enim. Officia doloribus alias dolor veritatis. Ratione maxime quo dolorem aperiam.\n\nDebitis facere est quia. Ut nemo earum architecto rerum nobis rem. Et odit et fugiat quam labore sunt. Quod est dolorem nam suscipit.', NULL, NULL, 'Voluptatem assumenda nesciunt omnis fugiat vitae quibusdam ipsa. Sit voluptates itaque eligendi. Dolores in porro illo accusantium dolorem labore quam.', 'en_US'),
(61, 61, 'Montre', 'montre', 'The same!', NULL, NULL, NULL, 'en_US'),
(62, 61, 'Montre', 'montre', 'C\'est une montre de haut qualité.', NULL, NULL, NULL, 'fr_FR');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant`
--

INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `position`, `version`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `shipping_required`) VALUES
(1, 1, NULL, NULL, '21931e1d-2ee5-331a-8867-9fca21e46788-variant-0', '2019-01-18 13:51:45', '2019-01-18 13:51:46', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(2, 1, NULL, NULL, '21931e1d-2ee5-331a-8867-9fca21e46788-variant-1', '2019-01-18 13:51:45', '2019-01-18 13:51:46', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(3, 1, NULL, NULL, '21931e1d-2ee5-331a-8867-9fca21e46788-variant-2', '2019-01-18 13:51:45', '2019-01-18 13:51:46', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(4, 2, NULL, NULL, '639e2829-076e-3544-bf9a-a75c40e6543d-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(5, 2, NULL, NULL, '639e2829-076e-3544-bf9a-a75c40e6543d-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(6, 2, NULL, NULL, '639e2829-076e-3544-bf9a-a75c40e6543d-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(7, 3, NULL, NULL, '8e76030c-d91d-36a3-ac5f-337cfc478872-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(8, 3, NULL, NULL, '8e76030c-d91d-36a3-ac5f-337cfc478872-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(9, 3, NULL, NULL, '8e76030c-d91d-36a3-ac5f-337cfc478872-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(10, 4, NULL, NULL, 'ec2f98cb-5b32-3d98-9070-d12e571cf958-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(11, 4, NULL, NULL, 'ec2f98cb-5b32-3d98-9070-d12e571cf958-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(12, 4, NULL, NULL, 'ec2f98cb-5b32-3d98-9070-d12e571cf958-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(13, 5, NULL, NULL, '162b5fde-c00f-3694-9bd2-6cd1e9bd0e2e-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(14, 5, NULL, NULL, '162b5fde-c00f-3694-9bd2-6cd1e9bd0e2e-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(15, 5, NULL, NULL, '162b5fde-c00f-3694-9bd2-6cd1e9bd0e2e-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(16, 6, NULL, NULL, 'c25dc681-b4d9-3db9-8235-db421d7cf008-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(17, 6, NULL, NULL, 'c25dc681-b4d9-3db9-8235-db421d7cf008-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(18, 6, NULL, NULL, 'c25dc681-b4d9-3db9-8235-db421d7cf008-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(19, 7, NULL, NULL, '62008151-64b4-37db-9232-09436b33f7d8-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(20, 7, NULL, NULL, '62008151-64b4-37db-9232-09436b33f7d8-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(21, 7, NULL, NULL, '62008151-64b4-37db-9232-09436b33f7d8-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(22, 8, NULL, NULL, 'aa4f67df-c9e4-3870-8c42-3461035ab6bd-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(23, 8, NULL, NULL, 'aa4f67df-c9e4-3870-8c42-3461035ab6bd-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(24, 8, NULL, NULL, 'aa4f67df-c9e4-3870-8c42-3461035ab6bd-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(25, 9, NULL, NULL, '15b0c9cd-7d6a-3749-b837-00019c8e7237-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(26, 9, NULL, NULL, '15b0c9cd-7d6a-3749-b837-00019c8e7237-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(27, 9, NULL, NULL, '15b0c9cd-7d6a-3749-b837-00019c8e7237-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(28, 10, NULL, NULL, '5f007cc1-cca0-3ae4-acb6-8f1925dcce0b-variant-0', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(29, 10, NULL, NULL, '5f007cc1-cca0-3ae4-acb6-8f1925dcce0b-variant-1', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(30, 10, NULL, NULL, '5f007cc1-cca0-3ae4-acb6-8f1925dcce0b-variant-2', '2019-01-18 13:51:46', '2019-01-18 13:51:46', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(31, 11, NULL, NULL, '5d5d5ed1-374d-3381-9d10-aabe32815a2d-variant-0', '2019-01-18 13:51:47', '2019-01-18 13:51:48', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(32, 11, NULL, NULL, '5d5d5ed1-374d-3381-9d10-aabe32815a2d-variant-1', '2019-01-18 13:51:47', '2019-01-18 13:51:48', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(33, 11, NULL, NULL, '5d5d5ed1-374d-3381-9d10-aabe32815a2d-variant-2', '2019-01-18 13:51:47', '2019-01-18 13:51:48', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(34, 12, NULL, NULL, '4b0908a7-a8eb-31ec-a885-1e51bc5b0066-variant-0', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(35, 12, NULL, NULL, '4b0908a7-a8eb-31ec-a885-1e51bc5b0066-variant-1', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(36, 12, NULL, NULL, '4b0908a7-a8eb-31ec-a885-1e51bc5b0066-variant-2', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(37, 13, NULL, NULL, '6ee19d48-6a6b-3635-a776-9e238ca001db-variant-0', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(38, 13, NULL, NULL, '6ee19d48-6a6b-3635-a776-9e238ca001db-variant-1', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(39, 13, NULL, NULL, '6ee19d48-6a6b-3635-a776-9e238ca001db-variant-2', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(40, 14, NULL, NULL, '03ca605c-1c5a-35d0-b284-464a89598ad8-variant-0', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(41, 14, NULL, NULL, '03ca605c-1c5a-35d0-b284-464a89598ad8-variant-1', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(42, 14, NULL, NULL, '03ca605c-1c5a-35d0-b284-464a89598ad8-variant-2', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(43, 15, NULL, NULL, '53f0f9c6-ef5a-3517-9175-731b3690d81e-variant-0', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(44, 15, NULL, NULL, '53f0f9c6-ef5a-3517-9175-731b3690d81e-variant-1', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(45, 15, NULL, NULL, '53f0f9c6-ef5a-3517-9175-731b3690d81e-variant-2', '2019-01-18 13:51:48', '2019-01-18 13:51:48', 2, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(46, 16, NULL, NULL, 'bdfb1304-0cca-3edb-b58f-64effca54eb3-variant-0', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(47, 16, NULL, NULL, 'bdfb1304-0cca-3edb-b58f-64effca54eb3-variant-1', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(48, 16, NULL, NULL, 'bdfb1304-0cca-3edb-b58f-64effca54eb3-variant-2', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(49, 17, NULL, NULL, '68ee6288-1403-3002-ab41-3727bf57f45b-variant-0', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(50, 17, NULL, NULL, '68ee6288-1403-3002-ab41-3727bf57f45b-variant-1', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(51, 17, NULL, NULL, '68ee6288-1403-3002-ab41-3727bf57f45b-variant-2', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(52, 18, NULL, NULL, 'a4e9930c-afa2-358a-8da0-2b761325342e-variant-0', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(53, 18, NULL, NULL, 'a4e9930c-afa2-358a-8da0-2b761325342e-variant-1', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(54, 18, NULL, NULL, 'a4e9930c-afa2-358a-8da0-2b761325342e-variant-2', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(55, 19, NULL, NULL, 'e8df7bdb-532a-3f6e-9569-8fa1e89b53b3-variant-0', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(56, 19, NULL, NULL, 'e8df7bdb-532a-3f6e-9569-8fa1e89b53b3-variant-1', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(57, 19, NULL, NULL, 'e8df7bdb-532a-3f6e-9569-8fa1e89b53b3-variant-2', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(58, 20, NULL, NULL, 'fa933176-dd5b-33d8-ba1f-1486768e130d-variant-0', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(59, 20, NULL, NULL, 'fa933176-dd5b-33d8-ba1f-1486768e130d-variant-1', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(60, 20, NULL, NULL, 'fa933176-dd5b-33d8-ba1f-1486768e130d-variant-2', '2019-01-18 13:51:49', '2019-01-18 13:51:49', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(61, 21, NULL, NULL, '5604a217-c86d-303c-a852-e891d450bd76-variant-0', '2019-01-18 13:51:49', '2019-01-18 13:51:50', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(62, 21, NULL, NULL, '5604a217-c86d-303c-a852-e891d450bd76-variant-1', '2019-01-18 13:51:49', '2019-01-18 13:51:50', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(63, 21, NULL, NULL, '5604a217-c86d-303c-a852-e891d450bd76-variant-2', '2019-01-18 13:51:49', '2019-01-18 13:51:50', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(64, 22, NULL, NULL, 'b7da8313-a634-3ebb-804a-1bd121bb4ad7-variant-0', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(65, 22, NULL, NULL, 'b7da8313-a634-3ebb-804a-1bd121bb4ad7-variant-1', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(66, 22, NULL, NULL, 'b7da8313-a634-3ebb-804a-1bd121bb4ad7-variant-2', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(67, 23, NULL, NULL, 'd740688c-3fec-3ab4-8036-a41d167b490a-variant-0', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(68, 23, NULL, NULL, 'd740688c-3fec-3ab4-8036-a41d167b490a-variant-1', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(69, 23, NULL, NULL, 'd740688c-3fec-3ab4-8036-a41d167b490a-variant-2', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(70, 24, NULL, NULL, 'afac61d2-2325-37d5-921d-dcfd17d358b8-variant-0', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(71, 24, NULL, NULL, 'afac61d2-2325-37d5-921d-dcfd17d358b8-variant-1', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(72, 24, NULL, NULL, 'afac61d2-2325-37d5-921d-dcfd17d358b8-variant-2', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(73, 25, NULL, NULL, '967cafae-823c-34eb-a855-9bfad8093dbd-variant-0', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(74, 25, NULL, NULL, '967cafae-823c-34eb-a855-9bfad8093dbd-variant-1', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(75, 25, NULL, NULL, '967cafae-823c-34eb-a855-9bfad8093dbd-variant-2', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(76, 26, NULL, NULL, 'a5acfc19-5aad-3b99-a087-5a58c6b95d90-variant-0', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(77, 26, NULL, NULL, 'a5acfc19-5aad-3b99-a087-5a58c6b95d90-variant-1', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(78, 26, NULL, NULL, 'a5acfc19-5aad-3b99-a087-5a58c6b95d90-variant-2', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(79, 27, NULL, NULL, '28c0ffbf-10b6-3904-a7f5-3a42765af68c-variant-0', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(80, 27, NULL, NULL, '28c0ffbf-10b6-3904-a7f5-3a42765af68c-variant-1', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(81, 27, NULL, NULL, '28c0ffbf-10b6-3904-a7f5-3a42765af68c-variant-2', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(82, 28, NULL, NULL, 'e1156aca-8c89-3db0-b598-6fc5c85040ad-variant-0', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(83, 28, NULL, NULL, 'e1156aca-8c89-3db0-b598-6fc5c85040ad-variant-1', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(84, 28, NULL, NULL, 'e1156aca-8c89-3db0-b598-6fc5c85040ad-variant-2', '2019-01-18 13:51:50', '2019-01-18 13:51:50', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(85, 29, NULL, NULL, '5dea3c36-5c72-3b03-b4da-2e3504f89a6a-variant-0', '2019-01-18 13:51:50', '2019-01-18 13:51:51', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(86, 29, NULL, NULL, '5dea3c36-5c72-3b03-b4da-2e3504f89a6a-variant-1', '2019-01-18 13:51:50', '2019-01-18 13:51:51', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(87, 29, NULL, NULL, '5dea3c36-5c72-3b03-b4da-2e3504f89a6a-variant-2', '2019-01-18 13:51:50', '2019-01-18 13:51:51', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(88, 30, NULL, NULL, 'fe1ad830-bae5-353e-9128-31a5e15eb61d-variant-0', '2019-01-18 13:51:51', '2019-01-18 13:51:51', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(89, 30, NULL, NULL, 'fe1ad830-bae5-353e-9128-31a5e15eb61d-variant-1', '2019-01-18 13:51:51', '2019-01-18 13:51:51', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(90, 30, NULL, NULL, 'fe1ad830-bae5-353e-9128-31a5e15eb61d-variant-2', '2019-01-18 13:51:51', '2019-01-18 13:51:51', 2, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(91, 31, NULL, NULL, '2e031e16-6c64-362b-8484-9786a3c92d43-variant-0', '2019-01-18 13:51:51', '2019-01-18 13:51:52', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(92, 32, NULL, NULL, '5299db2b-876a-39f3-a3e1-e8d5f8f49c81-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(93, 33, NULL, NULL, '2a686ec4-af5e-315a-b255-505053fb34d9-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(94, 34, NULL, NULL, '89530d7e-cb36-373e-b0bd-8c708a419744-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(95, 35, NULL, NULL, 'b5a5805c-6baf-3bb2-b001-f9c6dcbf498f-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(96, 36, NULL, NULL, '5dcd022e-e409-3c4d-9c20-3dccf03b310d-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(97, 37, NULL, NULL, '2b77efcb-de08-3ca3-97b7-09c4b20c5070-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(98, 38, NULL, NULL, '5876a7bf-28e2-32bf-8f00-85e136ec5652-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(99, 39, NULL, NULL, '2b5af28b-884c-34e6-85d5-ed7c53dff5f8-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(100, 40, NULL, NULL, '31bd97ef-50d7-37fc-afdf-d47ed5d002da-variant-0', '2019-01-18 13:51:52', '2019-01-18 13:51:52', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(101, 41, NULL, NULL, 'aec56969-24b0-3cb3-b582-9e8138be2941-variant-0', '2019-01-18 13:51:53', '2019-01-18 13:51:53', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(102, 42, NULL, NULL, 'c25d5d88-d73b-3ef4-8091-98b81f9ba144-variant-0', '2019-01-18 13:51:53', '2019-01-18 13:51:53', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(103, 43, NULL, NULL, 'fd0dec89-7f94-3368-ac94-e1bc37cc4b59-variant-0', '2019-01-18 13:51:53', '2019-01-18 13:51:53', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(104, 44, NULL, NULL, 'b48a2eca-9c50-366e-94e6-e5100c34f118-variant-0', '2019-01-18 13:51:53', '2019-01-18 13:51:53', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(105, 45, NULL, NULL, '1f530e05-d6d7-38de-9c40-72a991328634-variant-0', '2019-01-18 13:51:53', '2019-01-18 13:51:53', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(106, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-0', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(107, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-1', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(108, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-2', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(109, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-3', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 3, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(110, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-4', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 4, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(111, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-5', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(112, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-6', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 6, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(113, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-7', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 7, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(114, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-8', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 8, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(115, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-9', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 9, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(116, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-10', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 10, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(117, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-11', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 11, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(118, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-12', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 12, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(119, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-13', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 13, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(120, 46, NULL, NULL, 'fed5f83b-0c91-3784-ae72-38043a329a75-variant-14', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 14, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(121, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-0', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(122, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-1', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(123, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-2', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(124, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-3', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 3, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(125, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-4', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 4, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(126, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-5', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 5, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(127, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-6', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(128, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-7', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 7, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(129, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-8', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 8, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(130, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-9', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 9, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(131, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-10', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(132, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-11', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 11, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(133, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-12', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 12, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(134, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-13', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 13, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(135, 47, NULL, NULL, 'f63c496d-2711-376c-a53a-265ac74fb71e-variant-14', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 14, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(136, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-0', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(137, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-1', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(138, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-2', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(139, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-3', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 3, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(140, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-4', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 4, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(141, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-5', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 5, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(142, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-6', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(143, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-7', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 7, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(144, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-8', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 8, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(145, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-9', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 9, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(146, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-10', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 10, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(147, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-11', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 11, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(148, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-12', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 12, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(149, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-13', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 13, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(150, 48, NULL, NULL, '4b970b1c-6e14-3203-86f7-d1d22f02cb9a-variant-14', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 14, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(151, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-0', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(152, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-1', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(153, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-2', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(154, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-3', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 3, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(155, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-4', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 4, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(156, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-5', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 5, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(157, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-6', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 6, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(158, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-7', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 7, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(159, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-8', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 8, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(160, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-9', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 9, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(161, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-10', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(162, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-11', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 11, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(163, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-12', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 12, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(164, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-13', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 13, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(165, 49, NULL, NULL, 'c07925d6-267e-3ada-b6c1-d3b415c5efae-variant-14', '2019-01-18 13:51:54', '2019-01-18 13:51:54', 14, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(166, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-0', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(167, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-1', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(168, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-2', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(169, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-3', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(170, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-4', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(171, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-5', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 5, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(172, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-6', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 6, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(173, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-7', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 7, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(174, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-8', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(175, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-9', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 9, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(176, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-10', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 10, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(177, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-11', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(178, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-12', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 12, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(179, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-13', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 13, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(180, 50, NULL, NULL, 'a1961ce8-b4f8-3831-96ad-a3bbdd8a28ee-variant-14', '2019-01-18 13:51:54', '2019-01-18 13:51:55', 14, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(181, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-0', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(182, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-1', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(183, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-2', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(184, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-3', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 3, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(185, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-4', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 4, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(186, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-5', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(187, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-6', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 6, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(188, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-7', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 7, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(189, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-8', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 8, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(190, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-9', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 9, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(191, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-10', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 10, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(192, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-11', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 11, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(193, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-12', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 12, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(194, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-13', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 13, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(195, 51, NULL, NULL, '3ce71ef2-d0ea-30f8-9313-9cadaf93f9fd-variant-14', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 14, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(196, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-0', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(197, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-1', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(198, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-2', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(199, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-3', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(200, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-4', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 4, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(201, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-5', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 5, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(202, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-6', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 6, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(203, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-7', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 7, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(204, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-8', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 8, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(205, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-9', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 9, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(206, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-10', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 10, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(207, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-11', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 11, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(208, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-12', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 12, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(209, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-13', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 13, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(210, 52, NULL, NULL, '69eba40f-1d7c-333a-97da-a8d478c2e919-variant-14', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 14, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(211, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-0', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(212, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-1', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(213, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-2', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 2, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(214, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-3', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 3, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(215, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-4', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 4, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(216, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-5', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(217, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-6', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 6, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(218, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-7', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 7, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(219, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-8', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 8, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(220, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-9', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 9, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(221, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-10', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 10, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(222, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-11', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(223, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-12', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 12, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(224, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-13', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 13, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(225, 53, NULL, NULL, 'b0988076-ceda-3630-a849-13e841458e26-variant-14', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 14, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(226, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-0', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(227, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-1', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(228, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-2', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(229, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-3', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 3, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(230, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-4', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 4, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(231, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-5', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 5, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(232, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-6', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(233, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-7', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 7, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(234, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-8', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 8, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(235, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-9', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 9, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(236, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-10', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 10, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(237, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-11', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 11, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(238, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-12', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 12, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(239, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-13', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 13, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(240, 54, NULL, NULL, 'd3fd830d-996c-3ed4-b595-18a0dd2148d2-variant-14', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 14, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(241, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-0', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(242, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-1', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(243, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-2', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(244, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-3', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(245, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-4', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 4, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(246, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-5', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 5, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(247, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-6', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 6, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(248, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-7', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 7, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(249, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-8', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 8, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(250, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-9', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 9, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(251, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-10', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 10, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(252, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-11', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 11, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(253, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-12', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 12, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(254, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-13', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 13, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(255, 55, NULL, NULL, '79e23536-add0-3c3d-90e8-923143d63506-variant-14', '2019-01-18 13:51:55', '2019-01-18 13:51:55', 14, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(256, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-0', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(257, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-1', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(258, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-2', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(259, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-3', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(260, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-4', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 4, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(261, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-5', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 5, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(262, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-6', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 6, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(263, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-7', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 7, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(264, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-8', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 8, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(265, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-9', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 9, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(266, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-10', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(267, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-11', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 11, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(268, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-12', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 12, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(269, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-13', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 13, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(270, 56, NULL, NULL, 'fcb07ef4-0168-3687-bfa8-bacc556655d9-variant-14', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 14, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(271, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-0', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(272, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-1', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(273, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-2', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(274, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-3', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 3, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(275, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-4', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 4, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(276, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-5', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 5, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(277, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-6', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 6, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(278, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-7', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 7, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(279, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-8', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(280, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-9', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 9, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(281, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-10', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(282, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-11', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(283, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-12', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 12, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(284, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-13', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 13, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(285, 57, NULL, NULL, '545254b9-63c0-39cc-bfc1-c3be1c415379-variant-14', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 14, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(286, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-0', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(287, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-1', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(288, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-2', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(289, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-3', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 3, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(290, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-4', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 4, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(291, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-5', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 5, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(292, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-6', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 6, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(293, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-7', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 7, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(294, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-8', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 8, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(295, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-9', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 9, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(296, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-10', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 10, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(297, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-11', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 11, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(298, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-12', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 12, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(299, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-13', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 13, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(300, 58, NULL, NULL, '71ac36e9-1f8f-3e83-b1b8-9cb5ce7c0136-variant-14', '2019-01-18 13:51:57', '2019-01-18 13:51:57', 14, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(301, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-0', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(302, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-1', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(303, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-2', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(304, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-3', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 3, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(305, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-4', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 4, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(306, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-5', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 5, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(307, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-6', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 6, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(308, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-7', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 7, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(309, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-8', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 8, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(310, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-9', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 9, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(311, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-10', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 10, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(312, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-11', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 11, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `position`, `version`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `shipping_required`) VALUES
(313, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-12', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 12, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(314, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-13', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 13, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(315, 59, NULL, NULL, 'e2abf511-a182-3ae2-96cb-e73bc6636677-variant-14', '2019-01-18 13:51:57', '2019-01-18 13:51:58', 14, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(316, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-0', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(317, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-1', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(318, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-2', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 2, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(319, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-3', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 3, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(320, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-4', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 4, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(321, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-5', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 5, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(322, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-6', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 6, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(323, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-7', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 7, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(324, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-8', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 8, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(325, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-9', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 9, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(326, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-10', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 10, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(327, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-11', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 11, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(328, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-12', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 12, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(329, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-13', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 13, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(330, 60, NULL, NULL, '1c8dc67a-4cdc-3715-a66a-b32fa795c6d7-variant-14', '2019-01-18 13:51:58', '2019-01-18 13:51:58', 14, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(331, 61, 3, NULL, 'Montre', '2019-01-18 15:45:10', '2019-01-18 15:45:15', 0, 1, 0, 10, 0, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant_option_value`
--

INSERT INTO `sylius_product_variant_option_value` (`variant_id`, `option_value_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 3),
(10, 1),
(11, 2),
(12, 3),
(13, 1),
(14, 2),
(15, 3),
(16, 1),
(17, 2),
(18, 3),
(19, 1),
(20, 2),
(21, 3),
(22, 1),
(23, 2),
(24, 3),
(25, 1),
(26, 2),
(27, 3),
(28, 1),
(29, 2),
(30, 3),
(31, 1),
(32, 2),
(33, 3),
(34, 1),
(35, 2),
(36, 3),
(37, 1),
(38, 2),
(39, 3),
(40, 1),
(41, 2),
(42, 3),
(43, 1),
(44, 2),
(45, 3),
(46, 4),
(47, 5),
(48, 6),
(49, 4),
(50, 5),
(51, 6),
(52, 4),
(53, 5),
(54, 6),
(55, 4),
(56, 5),
(57, 6),
(58, 4),
(59, 5),
(60, 6),
(61, 4),
(62, 5),
(63, 6),
(64, 4),
(65, 5),
(66, 6),
(67, 4),
(68, 5),
(69, 6),
(70, 4),
(71, 5),
(72, 6),
(73, 4),
(74, 5),
(75, 6),
(76, 4),
(77, 5),
(78, 6),
(79, 4),
(80, 5),
(81, 6),
(82, 4),
(83, 5),
(84, 6),
(85, 4),
(86, 5),
(87, 6),
(88, 4),
(89, 5),
(90, 6),
(106, 7),
(106, 10),
(107, 7),
(107, 11),
(108, 7),
(108, 12),
(109, 7),
(109, 13),
(110, 7),
(110, 14),
(111, 8),
(111, 10),
(112, 8),
(112, 11),
(113, 8),
(113, 12),
(114, 8),
(114, 13),
(115, 8),
(115, 14),
(116, 9),
(116, 10),
(117, 9),
(117, 11),
(118, 9),
(118, 12),
(119, 9),
(119, 13),
(120, 9),
(120, 14),
(121, 7),
(121, 10),
(122, 7),
(122, 11),
(123, 7),
(123, 12),
(124, 7),
(124, 13),
(125, 7),
(125, 14),
(126, 8),
(126, 10),
(127, 8),
(127, 11),
(128, 8),
(128, 12),
(129, 8),
(129, 13),
(130, 8),
(130, 14),
(131, 9),
(131, 10),
(132, 9),
(132, 11),
(133, 9),
(133, 12),
(134, 9),
(134, 13),
(135, 9),
(135, 14),
(136, 7),
(136, 10),
(137, 7),
(137, 11),
(138, 7),
(138, 12),
(139, 7),
(139, 13),
(140, 7),
(140, 14),
(141, 8),
(141, 10),
(142, 8),
(142, 11),
(143, 8),
(143, 12),
(144, 8),
(144, 13),
(145, 8),
(145, 14),
(146, 9),
(146, 10),
(147, 9),
(147, 11),
(148, 9),
(148, 12),
(149, 9),
(149, 13),
(150, 9),
(150, 14),
(151, 7),
(151, 10),
(152, 7),
(152, 11),
(153, 7),
(153, 12),
(154, 7),
(154, 13),
(155, 7),
(155, 14),
(156, 8),
(156, 10),
(157, 8),
(157, 11),
(158, 8),
(158, 12),
(159, 8),
(159, 13),
(160, 8),
(160, 14),
(161, 9),
(161, 10),
(162, 9),
(162, 11),
(163, 9),
(163, 12),
(164, 9),
(164, 13),
(165, 9),
(165, 14),
(166, 7),
(166, 10),
(167, 7),
(167, 11),
(168, 7),
(168, 12),
(169, 7),
(169, 13),
(170, 7),
(170, 14),
(171, 8),
(171, 10),
(172, 8),
(172, 11),
(173, 8),
(173, 12),
(174, 8),
(174, 13),
(175, 8),
(175, 14),
(176, 9),
(176, 10),
(177, 9),
(177, 11),
(178, 9),
(178, 12),
(179, 9),
(179, 13),
(180, 9),
(180, 14),
(181, 7),
(181, 10),
(182, 7),
(182, 11),
(183, 7),
(183, 12),
(184, 7),
(184, 13),
(185, 7),
(185, 14),
(186, 8),
(186, 10),
(187, 8),
(187, 11),
(188, 8),
(188, 12),
(189, 8),
(189, 13),
(190, 8),
(190, 14),
(191, 9),
(191, 10),
(192, 9),
(192, 11),
(193, 9),
(193, 12),
(194, 9),
(194, 13),
(195, 9),
(195, 14),
(196, 7),
(196, 10),
(197, 7),
(197, 11),
(198, 7),
(198, 12),
(199, 7),
(199, 13),
(200, 7),
(200, 14),
(201, 8),
(201, 10),
(202, 8),
(202, 11),
(203, 8),
(203, 12),
(204, 8),
(204, 13),
(205, 8),
(205, 14),
(206, 9),
(206, 10),
(207, 9),
(207, 11),
(208, 9),
(208, 12),
(209, 9),
(209, 13),
(210, 9),
(210, 14),
(211, 7),
(211, 10),
(212, 7),
(212, 11),
(213, 7),
(213, 12),
(214, 7),
(214, 13),
(215, 7),
(215, 14),
(216, 8),
(216, 10),
(217, 8),
(217, 11),
(218, 8),
(218, 12),
(219, 8),
(219, 13),
(220, 8),
(220, 14),
(221, 9),
(221, 10),
(222, 9),
(222, 11),
(223, 9),
(223, 12),
(224, 9),
(224, 13),
(225, 9),
(225, 14),
(226, 7),
(226, 10),
(227, 7),
(227, 11),
(228, 7),
(228, 12),
(229, 7),
(229, 13),
(230, 7),
(230, 14),
(231, 8),
(231, 10),
(232, 8),
(232, 11),
(233, 8),
(233, 12),
(234, 8),
(234, 13),
(235, 8),
(235, 14),
(236, 9),
(236, 10),
(237, 9),
(237, 11),
(238, 9),
(238, 12),
(239, 9),
(239, 13),
(240, 9),
(240, 14),
(241, 7),
(241, 10),
(242, 7),
(242, 11),
(243, 7),
(243, 12),
(244, 7),
(244, 13),
(245, 7),
(245, 14),
(246, 8),
(246, 10),
(247, 8),
(247, 11),
(248, 8),
(248, 12),
(249, 8),
(249, 13),
(250, 8),
(250, 14),
(251, 9),
(251, 10),
(252, 9),
(252, 11),
(253, 9),
(253, 12),
(254, 9),
(254, 13),
(255, 9),
(255, 14),
(256, 7),
(256, 10),
(257, 7),
(257, 11),
(258, 7),
(258, 12),
(259, 7),
(259, 13),
(260, 7),
(260, 14),
(261, 8),
(261, 10),
(262, 8),
(262, 11),
(263, 8),
(263, 12),
(264, 8),
(264, 13),
(265, 8),
(265, 14),
(266, 9),
(266, 10),
(267, 9),
(267, 11),
(268, 9),
(268, 12),
(269, 9),
(269, 13),
(270, 9),
(270, 14),
(271, 7),
(271, 10),
(272, 7),
(272, 11),
(273, 7),
(273, 12),
(274, 7),
(274, 13),
(275, 7),
(275, 14),
(276, 8),
(276, 10),
(277, 8),
(277, 11),
(278, 8),
(278, 12),
(279, 8),
(279, 13),
(280, 8),
(280, 14),
(281, 9),
(281, 10),
(282, 9),
(282, 11),
(283, 9),
(283, 12),
(284, 9),
(284, 13),
(285, 9),
(285, 14),
(286, 7),
(286, 10),
(287, 7),
(287, 11),
(288, 7),
(288, 12),
(289, 7),
(289, 13),
(290, 7),
(290, 14),
(291, 8),
(291, 10),
(292, 8),
(292, 11),
(293, 8),
(293, 12),
(294, 8),
(294, 13),
(295, 8),
(295, 14),
(296, 9),
(296, 10),
(297, 9),
(297, 11),
(298, 9),
(298, 12),
(299, 9),
(299, 13),
(300, 9),
(300, 14),
(301, 7),
(301, 10),
(302, 7),
(302, 11),
(303, 7),
(303, 12),
(304, 7),
(304, 13),
(305, 7),
(305, 14),
(306, 8),
(306, 10),
(307, 8),
(307, 11),
(308, 8),
(308, 12),
(309, 8),
(309, 13),
(310, 8),
(310, 14),
(311, 9),
(311, 10),
(312, 9),
(312, 11),
(313, 9),
(313, 12),
(314, 9),
(314, 13),
(315, 9),
(315, 14),
(316, 7),
(316, 10),
(317, 7),
(317, 11),
(318, 7),
(318, 12),
(319, 7),
(319, 13),
(320, 7),
(320, 14),
(321, 8),
(321, 10),
(322, 8),
(322, 11),
(323, 8),
(323, 12),
(324, 8),
(324, 13),
(325, 8),
(325, 14),
(326, 9),
(326, 10),
(327, 9),
(327, 11),
(328, 9),
(328, 12),
(329, 9),
(329, 13),
(330, 9),
(330, 14);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant_translation`
--

DROP TABLE IF EXISTS `sylius_product_variant_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant_translation`
--

INSERT INTO `sylius_product_variant_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'et', 'en_US'),
(2, 2, 'eum', 'en_US'),
(3, 3, 'blanditiis', 'en_US'),
(4, 4, 'voluptatem', 'en_US'),
(5, 5, 'amet', 'en_US'),
(6, 6, 'soluta', 'en_US'),
(7, 7, 'illum', 'en_US'),
(8, 8, 'quo', 'en_US'),
(9, 9, 'quae', 'en_US'),
(10, 10, 'velit', 'en_US'),
(11, 11, 'doloribus', 'en_US'),
(12, 12, 'autem', 'en_US'),
(13, 13, 'corporis', 'en_US'),
(14, 14, 'eveniet', 'en_US'),
(15, 15, 'fugit', 'en_US'),
(16, 16, 'qui', 'en_US'),
(17, 17, 'ea', 'en_US'),
(18, 18, 'hic', 'en_US'),
(19, 19, 'qui', 'en_US'),
(20, 20, 'ea', 'en_US'),
(21, 21, 'nostrum', 'en_US'),
(22, 22, 'minima', 'en_US'),
(23, 23, 'at', 'en_US'),
(24, 24, 'labore', 'en_US'),
(25, 25, 'dolores', 'en_US'),
(26, 26, 'ut', 'en_US'),
(27, 27, 'enim', 'en_US'),
(28, 28, 'voluptatum', 'en_US'),
(29, 29, 'reiciendis', 'en_US'),
(30, 30, 'quia', 'en_US'),
(31, 31, 'aut', 'en_US'),
(32, 32, 'molestiae', 'en_US'),
(33, 33, 'eius', 'en_US'),
(34, 34, 'et', 'en_US'),
(35, 35, 'cupiditate', 'en_US'),
(36, 36, 'qui', 'en_US'),
(37, 37, 'assumenda', 'en_US'),
(38, 38, 'quo', 'en_US'),
(39, 39, 'enim', 'en_US'),
(40, 40, 'dolor', 'en_US'),
(41, 41, 'dolores', 'en_US'),
(42, 42, 'et', 'en_US'),
(43, 43, 'quos', 'en_US'),
(44, 44, 'maxime', 'en_US'),
(45, 45, 'soluta', 'en_US'),
(46, 46, 'sed', 'en_US'),
(47, 47, 'rem', 'en_US'),
(48, 48, 'tempore', 'en_US'),
(49, 49, 'quibusdam', 'en_US'),
(50, 50, 'beatae', 'en_US'),
(51, 51, 'cum', 'en_US'),
(52, 52, 'dolores', 'en_US'),
(53, 53, 'eum', 'en_US'),
(54, 54, 'deserunt', 'en_US'),
(55, 55, 'et', 'en_US'),
(56, 56, 'aut', 'en_US'),
(57, 57, 'odit', 'en_US'),
(58, 58, 'laudantium', 'en_US'),
(59, 59, 'reiciendis', 'en_US'),
(60, 60, 'et', 'en_US'),
(61, 61, 'dolorum', 'en_US'),
(62, 62, 'voluptas', 'en_US'),
(63, 63, 'quam', 'en_US'),
(64, 64, 'excepturi', 'en_US'),
(65, 65, 'deserunt', 'en_US'),
(66, 66, 'voluptas', 'en_US'),
(67, 67, 'laboriosam', 'en_US'),
(68, 68, 'et', 'en_US'),
(69, 69, 'enim', 'en_US'),
(70, 70, 'nihil', 'en_US'),
(71, 71, 'quia', 'en_US'),
(72, 72, 'soluta', 'en_US'),
(73, 73, 'ut', 'en_US'),
(74, 74, 'et', 'en_US'),
(75, 75, 'distinctio', 'en_US'),
(76, 76, 'illo', 'en_US'),
(77, 77, 'explicabo', 'en_US'),
(78, 78, 'laboriosam', 'en_US'),
(79, 79, 'in', 'en_US'),
(80, 80, 'labore', 'en_US'),
(81, 81, 'perspiciatis', 'en_US'),
(82, 82, 'qui', 'en_US'),
(83, 83, 'ipsum', 'en_US'),
(84, 84, 'sunt', 'en_US'),
(85, 85, 'quia', 'en_US'),
(86, 86, 'esse', 'en_US'),
(87, 87, 'voluptatem', 'en_US'),
(88, 88, 'quibusdam', 'en_US'),
(89, 89, 'at', 'en_US'),
(90, 90, 'dolore', 'en_US'),
(91, 91, 'perferendis', 'en_US'),
(92, 92, 'omnis', 'en_US'),
(93, 93, 'ea', 'en_US'),
(94, 94, 'facere', 'en_US'),
(95, 95, 'occaecati', 'en_US'),
(96, 96, 'ducimus', 'en_US'),
(97, 97, 'totam', 'en_US'),
(98, 98, 'nulla', 'en_US'),
(99, 99, 'reprehenderit', 'en_US'),
(100, 100, 'atque', 'en_US'),
(101, 101, 'nemo', 'en_US'),
(102, 102, 'asperiores', 'en_US'),
(103, 103, 'accusamus', 'en_US'),
(104, 104, 'et', 'en_US'),
(105, 105, 'qui', 'en_US'),
(106, 106, 'corporis', 'en_US'),
(107, 107, 'non', 'en_US'),
(108, 108, 'impedit', 'en_US'),
(109, 109, 'qui', 'en_US'),
(110, 110, 'odit', 'en_US'),
(111, 111, 'delectus', 'en_US'),
(112, 112, 'et', 'en_US'),
(113, 113, 'aut', 'en_US'),
(114, 114, 'ipsa', 'en_US'),
(115, 115, 'dolor', 'en_US'),
(116, 116, 'itaque', 'en_US'),
(117, 117, 'et', 'en_US'),
(118, 118, 'ad', 'en_US'),
(119, 119, 'voluptate', 'en_US'),
(120, 120, 'voluptatem', 'en_US'),
(121, 121, 'omnis', 'en_US'),
(122, 122, 'modi', 'en_US'),
(123, 123, 'id', 'en_US'),
(124, 124, 'asperiores', 'en_US'),
(125, 125, 'voluptatem', 'en_US'),
(126, 126, 'et', 'en_US'),
(127, 127, 'harum', 'en_US'),
(128, 128, 'repellendus', 'en_US'),
(129, 129, 'tenetur', 'en_US'),
(130, 130, 'harum', 'en_US'),
(131, 131, 'et', 'en_US'),
(132, 132, 'quam', 'en_US'),
(133, 133, 'consequatur', 'en_US'),
(134, 134, 'minima', 'en_US'),
(135, 135, 'voluptas', 'en_US'),
(136, 136, 'magnam', 'en_US'),
(137, 137, 'nesciunt', 'en_US'),
(138, 138, 'earum', 'en_US'),
(139, 139, 'sunt', 'en_US'),
(140, 140, 'mollitia', 'en_US'),
(141, 141, 'tempora', 'en_US'),
(142, 142, 'earum', 'en_US'),
(143, 143, 'quos', 'en_US'),
(144, 144, 'atque', 'en_US'),
(145, 145, 'porro', 'en_US'),
(146, 146, 'sint', 'en_US'),
(147, 147, 'nihil', 'en_US'),
(148, 148, 'nostrum', 'en_US'),
(149, 149, 'dolorem', 'en_US'),
(150, 150, 'sed', 'en_US'),
(151, 151, 'qui', 'en_US'),
(152, 152, 'numquam', 'en_US'),
(153, 153, 'odit', 'en_US'),
(154, 154, 'praesentium', 'en_US'),
(155, 155, 'eius', 'en_US'),
(156, 156, 'omnis', 'en_US'),
(157, 157, 'est', 'en_US'),
(158, 158, 'illo', 'en_US'),
(159, 159, 'occaecati', 'en_US'),
(160, 160, 'ad', 'en_US'),
(161, 161, 'laboriosam', 'en_US'),
(162, 162, 'quam', 'en_US'),
(163, 163, 'sit', 'en_US'),
(164, 164, 'officiis', 'en_US'),
(165, 165, 'amet', 'en_US'),
(166, 166, 'officia', 'en_US'),
(167, 167, 'aliquam', 'en_US'),
(168, 168, 'sunt', 'en_US'),
(169, 169, 'natus', 'en_US'),
(170, 170, 'nam', 'en_US'),
(171, 171, 'alias', 'en_US'),
(172, 172, 'pariatur', 'en_US'),
(173, 173, 'quasi', 'en_US'),
(174, 174, 'vitae', 'en_US'),
(175, 175, 'labore', 'en_US'),
(176, 176, 'natus', 'en_US'),
(177, 177, 'perferendis', 'en_US'),
(178, 178, 'dolores', 'en_US'),
(179, 179, 'cupiditate', 'en_US'),
(180, 180, 'id', 'en_US'),
(181, 181, 'voluptas', 'en_US'),
(182, 182, 'eveniet', 'en_US'),
(183, 183, 'placeat', 'en_US'),
(184, 184, 'odit', 'en_US'),
(185, 185, 'quia', 'en_US'),
(186, 186, 'autem', 'en_US'),
(187, 187, 'sit', 'en_US'),
(188, 188, 'vel', 'en_US'),
(189, 189, 'officiis', 'en_US'),
(190, 190, 'vel', 'en_US'),
(191, 191, 'dolore', 'en_US'),
(192, 192, 'quibusdam', 'en_US'),
(193, 193, 'ratione', 'en_US'),
(194, 194, 'omnis', 'en_US'),
(195, 195, 'eos', 'en_US'),
(196, 196, 'facilis', 'en_US'),
(197, 197, 'nihil', 'en_US'),
(198, 198, 'eum', 'en_US'),
(199, 199, 'accusantium', 'en_US'),
(200, 200, 'perspiciatis', 'en_US'),
(201, 201, 'qui', 'en_US'),
(202, 202, 'nesciunt', 'en_US'),
(203, 203, 'qui', 'en_US'),
(204, 204, 'laudantium', 'en_US'),
(205, 205, 'voluptatibus', 'en_US'),
(206, 206, 'et', 'en_US'),
(207, 207, 'animi', 'en_US'),
(208, 208, 'ullam', 'en_US'),
(209, 209, 'qui', 'en_US'),
(210, 210, 'quis', 'en_US'),
(211, 211, 'maiores', 'en_US'),
(212, 212, 'laboriosam', 'en_US'),
(213, 213, 'id', 'en_US'),
(214, 214, 'aut', 'en_US'),
(215, 215, 'est', 'en_US'),
(216, 216, 'enim', 'en_US'),
(217, 217, 'architecto', 'en_US'),
(218, 218, 'deserunt', 'en_US'),
(219, 219, 'reiciendis', 'en_US'),
(220, 220, 'quaerat', 'en_US'),
(221, 221, 'et', 'en_US'),
(222, 222, 'labore', 'en_US'),
(223, 223, 'sapiente', 'en_US'),
(224, 224, 'magni', 'en_US'),
(225, 225, 'fuga', 'en_US'),
(226, 226, 'doloremque', 'en_US'),
(227, 227, 'omnis', 'en_US'),
(228, 228, 'ducimus', 'en_US'),
(229, 229, 'illum', 'en_US'),
(230, 230, 'voluptas', 'en_US'),
(231, 231, 'eaque', 'en_US'),
(232, 232, 'laboriosam', 'en_US'),
(233, 233, 'dolorum', 'en_US'),
(234, 234, 'cum', 'en_US'),
(235, 235, 'error', 'en_US'),
(236, 236, 'quia', 'en_US'),
(237, 237, 'aut', 'en_US'),
(238, 238, 'in', 'en_US'),
(239, 239, 'repellat', 'en_US'),
(240, 240, 'iure', 'en_US'),
(241, 241, 'nobis', 'en_US'),
(242, 242, 'qui', 'en_US'),
(243, 243, 'similique', 'en_US'),
(244, 244, 'itaque', 'en_US'),
(245, 245, 'quos', 'en_US'),
(246, 246, 'nulla', 'en_US'),
(247, 247, 'expedita', 'en_US'),
(248, 248, 'qui', 'en_US'),
(249, 249, 'rem', 'en_US'),
(250, 250, 'repellendus', 'en_US'),
(251, 251, 'blanditiis', 'en_US'),
(252, 252, 'voluptatem', 'en_US'),
(253, 253, 'et', 'en_US'),
(254, 254, 'occaecati', 'en_US'),
(255, 255, 'commodi', 'en_US'),
(256, 256, 'alias', 'en_US'),
(257, 257, 'non', 'en_US'),
(258, 258, 'aut', 'en_US'),
(259, 259, 'sit', 'en_US'),
(260, 260, 'numquam', 'en_US'),
(261, 261, 'ea', 'en_US'),
(262, 262, 'dicta', 'en_US'),
(263, 263, 'distinctio', 'en_US'),
(264, 264, 'est', 'en_US'),
(265, 265, 'totam', 'en_US'),
(266, 266, 'earum', 'en_US'),
(267, 267, 'nesciunt', 'en_US'),
(268, 268, 'et', 'en_US'),
(269, 269, 'iusto', 'en_US'),
(270, 270, 'suscipit', 'en_US'),
(271, 271, 'dolores', 'en_US'),
(272, 272, 'quod', 'en_US'),
(273, 273, 'molestias', 'en_US'),
(274, 274, 'et', 'en_US'),
(275, 275, 'quia', 'en_US'),
(276, 276, 'vero', 'en_US'),
(277, 277, 'totam', 'en_US'),
(278, 278, 'odit', 'en_US'),
(279, 279, 'alias', 'en_US'),
(280, 280, 'id', 'en_US'),
(281, 281, 'quasi', 'en_US'),
(282, 282, 'dignissimos', 'en_US'),
(283, 283, 'eum', 'en_US'),
(284, 284, 'sed', 'en_US'),
(285, 285, 'incidunt', 'en_US'),
(286, 286, 'mollitia', 'en_US'),
(287, 287, 'impedit', 'en_US'),
(288, 288, 'voluptatum', 'en_US'),
(289, 289, 'tempore', 'en_US'),
(290, 290, 'qui', 'en_US'),
(291, 291, 'nisi', 'en_US'),
(292, 292, 'voluptas', 'en_US'),
(293, 293, 'laboriosam', 'en_US'),
(294, 294, 'numquam', 'en_US'),
(295, 295, 'aspernatur', 'en_US'),
(296, 296, 'at', 'en_US'),
(297, 297, 'voluptatem', 'en_US'),
(298, 298, 'consectetur', 'en_US'),
(299, 299, 'ullam', 'en_US'),
(300, 300, 'iusto', 'en_US'),
(301, 301, 'rerum', 'en_US'),
(302, 302, 'fugit', 'en_US'),
(303, 303, 'natus', 'en_US'),
(304, 304, 'dolore', 'en_US'),
(305, 305, 'ab', 'en_US'),
(306, 306, 'exercitationem', 'en_US'),
(307, 307, 'labore', 'en_US'),
(308, 308, 'et', 'en_US'),
(309, 309, 'itaque', 'en_US'),
(310, 310, 'vero', 'en_US'),
(311, 311, 'veritatis', 'en_US'),
(312, 312, 'eius', 'en_US'),
(313, 313, 'delectus', 'en_US'),
(314, 314, 'dicta', 'en_US'),
(315, 315, 'dolor', 'en_US'),
(316, 316, 'fugit', 'en_US'),
(317, 317, 'nulla', 'en_US'),
(318, 318, 'dolores', 'en_US'),
(319, 319, 'modi', 'en_US'),
(320, 320, 'sapiente', 'en_US'),
(321, 321, 'ea', 'en_US'),
(322, 322, 'sapiente', 'en_US'),
(323, 323, 'nihil', 'en_US'),
(324, 324, 'dolor', 'en_US'),
(325, 325, 'aut', 'en_US'),
(326, 326, 'velit', 'en_US'),
(327, 327, 'doloribus', 'en_US'),
(328, 328, 'ut', 'en_US'),
(329, 329, 'earum', 'en_US'),
(330, 330, 'adipisci', 'en_US'),
(331, 331, NULL, 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
CREATE TABLE IF NOT EXISTS `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion`
--

INSERT INTO `sylius_promotion` (`id`, `code`, `name`, `description`, `priority`, `exclusive`, `usage_limit`, `used`, `coupon_based`, `starts_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 'christmas', 'Christmas', 'Nihil commodi autem voluptatum neque.', 0, 0, NULL, 17, 0, NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:52:08'),
(2, 'new_year', 'New Year', 'Nihil commodi autem voluptatum neque.', 2, 0, 10, 0, 0, '2019-01-11 13:51:44', '2019-01-25 13:51:44', '2019-01-18 13:51:44', '2019-01-18 13:51:44');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_action`
--

INSERT INTO `sylius_promotion_action` (`id`, `promotion_id`, `type`, `configuration`) VALUES
(1, 1, 'order_percentage_discount', 'a:1:{s:10:\"percentage\";d:0.07;}'),
(2, 2, 'order_fixed_discount', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:1000;}}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_channels`
--

INSERT INTO `sylius_promotion_channels` (`promotion_id`, `channel_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_order`
--

INSERT INTO `sylius_promotion_order` (`order_id`, `promotion_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(18, 1),
(19, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_rule`
--

INSERT INTO `sylius_promotion_rule` (`id`, `promotion_id`, `type`, `configuration`) VALUES
(1, 1, 'cart_quantity', 'a:1:{s:5:\"count\";i:4;}'),
(2, 2, 'item_total', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:10000;}}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
CREATE TABLE IF NOT EXISTS `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
CREATE TABLE IF NOT EXISTS `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipment`
--

INSERT INTO `sylius_shipment` (`id`, `method_id`, `order_id`, `state`, `tracking`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'ready', NULL, '2019-01-18 13:52:04', '2019-01-18 13:52:04'),
(2, 2, 2, 'ready', NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(3, 1, 3, 'ready', NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(4, 1, 4, 'ready', NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(5, 3, 5, 'ready', NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(6, 1, 6, 'ready', NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(7, 3, 7, 'ready', NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:06'),
(8, 3, 8, 'ready', NULL, '2019-01-18 13:52:06', '2019-01-18 13:52:07'),
(9, 1, 9, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(10, 3, 10, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(11, 3, 11, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(12, 2, 12, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(13, 1, 13, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(14, 1, 14, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(15, 3, 15, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(16, 2, 16, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:07'),
(17, 3, 17, 'ready', NULL, '2019-01-18 13:52:07', '2019-01-18 13:52:08'),
(18, 2, 18, 'ready', NULL, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(19, 2, 19, 'ready', NULL, '2019-01-18 13:52:08', '2019-01-18 13:52:08'),
(20, 3, 20, 'ready', NULL, '2019-01-18 13:52:08', '2019-01-18 13:52:08');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `archived_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method`
--

INSERT INTO `sylius_shipping_method` (`id`, `category_id`, `zone_id`, `tax_category_id`, `code`, `configuration`, `category_requirement`, `calculator`, `is_enabled`, `position`, `archived_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, 'ups', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:2960;}}', 1, 'flat_rate', 1, 0, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43'),
(2, NULL, 1, NULL, 'dhl_express', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:2313;}}', 1, 'flat_rate', 1, 1, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43'),
(3, NULL, 1, NULL, 'fedex', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:8941;}}', 1, 'flat_rate', 1, 2, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method_channels`
--

DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method_channels`
--

INSERT INTO `sylius_shipping_method_channels` (`shipping_method_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method_translation`
--

INSERT INTO `sylius_shipping_method_translation` (`id`, `translatable_id`, `name`, `description`, `locale`) VALUES
(1, 1, 'UPS', 'Modi ut ipsa est quibusdam corporis eveniet.', 'en_US'),
(2, 2, 'DHL Express', 'Pariatur sed autem voluptas reiciendis.', 'en_US'),
(3, 3, 'FedEx', 'Reprehenderit eligendi odio omnis et eum dicta.', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shop_billing_data`
--

DROP TABLE IF EXISTS `sylius_shop_billing_data`;
CREATE TABLE IF NOT EXISTS `sylius_shop_billing_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
CREATE TABLE IF NOT EXISTS `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shop_user`
--

INSERT INTO `sylius_shop_user` (`id`, `customer_id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `encoder_name`) VALUES
(1, 1, 'shop@example.com', 'shop@example.com', 1, '8m7z69njg0gsckow8kw4gsk4w0g0w4g', '/PL7GnjYEddqO4/47WRfdZ5ct/rvXBez73sYEB/sCslzyig/ePnkmTjWZ7kuAQLk5lPf3YMhP170WEHTpIbN7A==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL),
(2, 2, 'augusta35@thompson.com', 'augusta35@thompson.com', 1, 'e0qydzl3kpsgw88ckk0c0ws8c04884o', 'BP/zvDnhFesG3KVUKqrmlvZ1UcEMLcKFxWoCT1ORDDyv7tt4OQlYk7c4ToDe8wv2SMalwxL3Ra2ZTuKwBHnSLQ==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL),
(3, 3, 'arielle57@yahoo.com', 'arielle57@yahoo.com', 1, '2adz9qp8l2xw0kcgws0wkw4cks4s00w', 'txkuq5rH/2qKM0DNixDKOlYbJvtCocSO5keGrYmn3RNjD2m+cucSPwZHnGyZKUNJg1dQrVZJiM2GqK5nDslHWA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL),
(4, 4, 'west.felicity@rosenbaum.org', 'west.felicity@rosenbaum.org', 1, 'b44kpb94uj48scwssss8ss4ks4csksw', 'uFWbZFqspTDu3QIV1IufzJliBAoJ7QxZbBgOwrupddFLyg/G2oVMtWBHkKz4z6aoxoYSH/scwIwDKMteY8/B6g==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL),
(5, 5, 'cronin.kirstin@yahoo.com', 'cronin.kirstin@yahoo.com', 1, 'bizfdorc0b480k40gk4cgsowk4cw0w4', 'QYX4kzuqIH/dZ6MinV7Y0jyXrbyH07qhjXs2cCGCiSnHaIOdq0dLDaYfjxYFKIq4Ds1E9sxNoTGXjkNQdlFHbw==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL),
(6, 6, 'ola44@yahoo.com', 'ola44@yahoo.com', 1, '5dp99tpvkn8kckkggosc8g04ss44kgs', 'serSCTI8NLjuXe0PuS/QrBXyl+9oWgdmGx/NKGGX58KfG/NdvrjZoMOExrtrzI4eZrLLKwho+flmXuWZ0DjZPA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL),
(7, 7, 'rice.jared@stroman.com', 'rice.jared@stroman.com', 1, '9nwyrp5xdgkk4o040w0g4884cw0sg4o', '6la40oMfW7LXsVV0Bh8j4Dqz9jWxInsoY2eXsou4Z96rByVgseA+zpubutVP/mCnWRCKJosIC04tF+zKuYXdxA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL),
(8, 8, 'jgutkowski@wiza.com', 'jgutkowski@wiza.com', 1, 'hzm8zu11c1kwksccgsswkw8ko84kk4g', 'v7+QAGaZ8KNqbqibv9x+bqxCseS2Uy2PHeJ+iQteMWi6U0m3XMhdkrGGRdQZbptY6q3KDQn8lhjeQSU8xNPfrg==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:43', '2019-01-18 13:51:43', NULL),
(9, 9, 'verla73@grimes.com', 'verla73@grimes.com', 1, '2v355dysnv40c4ksssw8s8cok8skw8w', '2RDP1mznewLOYwUUjVa6Ot0fHGnFGIm/HCgmjE9M2tShddK6Du0IYEhne5uVLIBlVAOz28RcxSPsHWz1J1WDCA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(10, 10, 'yost.arlo@braun.com', 'yost.arlo@braun.com', 1, 'dr0vveaoblwgwkosg8ccksgoo880wgg', 'n3PAV64F1uz5l6h+AKZ82casqSwmy3f4nrItHDC/Q6zPtds03XudBr7erUncC8IY0LnX1o4RYcc4qBLLq5JS7A==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(11, 11, 'nbernhard@ruecker.com', 'nbernhard@ruecker.com', 1, 'pl8qt9rdlf4og8ss8kkg8w4wc0kww84', 'RkNUVpFkHuCyprl1Uk9Z1XGywTZ7fEw88a/T6nFVIEZVXLV/4Jwe7ejYeYceyjUZN4htRgjQA+k9Al7dCnGgpA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(12, 12, 'kaylin19@yahoo.com', 'kaylin19@yahoo.com', 1, '8mundz08t7k08wsggk0cgsck40w4ww4', 'G95/z1J7yeIJdovNM2JD6mKQ+uNVvnjyCxhL9ue9KHuLkrHrhIQBCI7LScK1OEvyPW+w/B02i7BPNIYS4+xJMA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(13, 13, 'cwehner@hotmail.com', 'cwehner@hotmail.com', 1, '3er1jwrkr6ckoko4cskkwgos0ss80k0', 'POhy9yxfH5+EoMqRmAn2mw7jvqFB5yhtbnmutLMAr/FztJeu3utNL3/49znowB65VC9uc7gwDa/6GYHoHI8txA==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(14, 14, 'jayme.denesik@hotmail.com', 'jayme.denesik@hotmail.com', 1, '2bv1vn3dx0w04o0cgw40s04kocwk04c', '4MwO6cshRbSO0gNH6kRbWhUwlrtxPH01PH9T04ScwFgvD+FKbvZSyIOPU74S138yxFpnATZAeRpQ02l3HMyF0w==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(15, 15, 'selina.mcglynn@hotmail.com', 'selina.mcglynn@hotmail.com', 1, '65xfpth8qukok0k0k84og0kocogw084', 'cAECB3p7FDw2D/Bf1B1UIT3IHrGjLQZm575CWah38bUObAo/vbI4f7CuurjWO9sO920JTXr25emFTgVvzUqjoQ==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(16, 16, 'uwintheiser@yahoo.com', 'uwintheiser@yahoo.com', 1, '6mf4efqlglk4wk8owocsk4c4gwg0ckc', 'UGbEyCkzrqNoB/vmfrDurtT1wO0KalulO9ldUoeOkfzV/ifiGG72DlSM9ieM+Pvz7Pl0dq8+0W+x9e9XrnMrvw==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(17, 17, 'chauncey.bernhard@hotmail.com', 'chauncey.bernhard@hotmail.com', 1, 'q6ut3um2tk0g84gwwgg04w0s08os8wo', 'yzZ1CRKiDtj1wFlqXh7+wAFSMKXhnjN2YR0xBXSet6IsOV8pTIaxBLMv3bbzvAzFN2ApO8RY9AyH/OplopDaYg==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(18, 18, 'cleve.rogahn@rempel.com', 'cleve.rogahn@rempel.com', 1, 'soj9pwolpqo8kgscc0cossg4s4sw4c0', 'WhSBobK17Cjm+q2dshZqatN/KGvRq69OlQaeSFLN8Qk3AIBa38zARRpIkn935duVu6YHMH7jhl9Dpmz4lzAGKQ==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(19, 19, 'glenna44@yahoo.com', 'glenna44@yahoo.com', 1, 'dw4vpyl3yxw0444ccww0wwskwookk80', '17Ixa+ROyqe8Kt4t8UCZdAiHrY66IGb7ZrWvDQ3RaLYsE43jWRqXpUnKNI2XEQvLEF5jny34eBGjKJU8/qhVzg==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(20, 20, 'jaskolski.curtis@crooks.com', 'jaskolski.curtis@crooks.com', 1, 'fm2ky95iqsgkkgo844cgsc808800kkk', '+uQ4oXISX9ZQ9EEx7jD0njmnAyLM58ofVJSacKAvYMyzrBHdDmCWcsw4rcf4vche59bJnNn3hbsOvVgFTUhOZQ==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL),
(21, 21, 'raleigh.moore@gerlach.com', 'raleigh.moore@gerlach.com', 1, '4c75d3a0ggowsc48w08c08co8og0wck', '4cK995j2W22VQh9I5wC/4Dvx96GgXzEfK09locEt94ks4wmri8ZcBGaY3TSvG6y154GtQttJomTae1eX4U5NTQ==', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-01-18 13:51:44', '2019-01-18 13:51:44', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
CREATE TABLE IF NOT EXISTS `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_taxon`
--

INSERT INTO `sylius_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'category', 1, 14, 0, 0, '2019-01-18 13:51:45', '2019-01-18 13:51:45'),
(2, 1, 1, 'mugs', 2, 3, 1, 0, '2019-01-18 13:51:45', '2019-01-18 13:51:45'),
(3, 1, 1, 'stickers', 4, 5, 1, 1, '2019-01-18 13:51:49', '2019-01-18 13:51:49'),
(4, 1, 1, 'books', 6, 7, 1, 2, '2019-01-18 13:51:51', '2019-01-18 13:51:51'),
(5, 1, 1, 't_shirts', 8, 13, 1, 3, '2019-01-18 13:51:54', '2019-01-18 13:51:54'),
(6, 1, 5, 'mens_t_shirts', 9, 10, 2, 0, '2019-01-18 13:51:54', '2019-01-18 13:51:54'),
(7, 1, 5, 'womens_t_shirts', 11, 12, 2, 1, '2019-01-18 13:51:54', '2019-01-18 13:51:54');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
CREATE TABLE IF NOT EXISTS `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
CREATE TABLE IF NOT EXISTS `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_taxon_translation`
--

INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`) VALUES
(1, 1, 'Category', 'category', 'Possimus necessitatibus ut est repellendus ad aliquid voluptatem. Qui nobis eum aut assumenda ut tempora excepturi. Porro eius non nulla sed. Qui ab quibusdam et dolore veniam aut ratione.', 'en_US'),
(2, 2, 'Mugs', 'mugs', 'Ut libero magnam ratione dolores voluptate et voluptatem. Velit illum quisquam repellendus commodi.', 'en_US'),
(3, 3, 'Stickers', 'stickers', 'Autem placeat impedit minus sit voluptatem hic et. Occaecati sint qui unde perspiciatis ut neque possimus facere. Unde in rerum illo ducimus.', 'en_US'),
(4, 4, 'Books', 'books', 'Maiores exercitationem enim dolorum aut possimus. Amet dolores qui exercitationem repellat. Voluptatem repudiandae fugiat et blanditiis quasi et.', 'en_US'),
(5, 5, 'T-Shirts', 't-shirts', 'Consequatur et voluptatem nesciunt magni. Sed vel nesciunt ut voluptates tempore. Amet quia ut dolor molestiae incidunt dolore.', 'en_US'),
(6, 6, 'Men', 't-shirts/men', 'Veritatis reprehenderit quis voluptas minus est hic. At veniam quis doloremque atque doloremque odio eveniet doloribus. Adipisci omnis similique tempore ducimus cupiditate laboriosam in. Impedit qui et facere optio labore necessitatibus numquam.', 'en_US'),
(7, 7, 'Women', 't-shirts/women', 'Dolores quis illum dolorem dolorem voluptas perferendis. Laboriosam perspiciatis sed nihil unde sunt debitis natus. Quos voluptas numquam ut corporis minus id et animi. Nesciunt sit eos esse itaque dolores eos et.', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
CREATE TABLE IF NOT EXISTS `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_tax_category`
--

INSERT INTO `sylius_tax_category` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'clothing', 'Clothing', 'Voluptatibus facilis necessitatibus quia sit expedita quaerat maiores. Mollitia fuga voluptate doloribus iure.', '2019-01-18 13:51:44', '2019-01-18 13:51:44'),
(2, 'books', 'Books', 'Non qui qui accusantium voluptatem. Autem repellat sunt itaque sed. Natus beatae magnam odit porro qui. Soluta qui magni dolores est vero molestiae doloremque.', '2019-01-18 13:51:44', '2019-01-18 13:51:44'),
(3, 'other', 'Other', 'Ea dolorem neque et qui dolor placeat aut. Omnis non ut esse aut dolores. Sed excepturi culpa ea velit. Ea velit quo nemo deleniti voluptates mollitia.', '2019-01-18 13:51:44', '2019-01-18 13:51:44');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
CREATE TABLE IF NOT EXISTS `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_tax_rate`
--

INSERT INTO `sylius_tax_rate` (`id`, `category_id`, `zone_id`, `code`, `name`, `amount`, `included_in_price`, `calculator`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'clothing_sales_tax_7', 'Clothing Sales Tax 7%', '0.07000', 0, 'default', '2019-01-18 13:51:44', '2019-01-18 13:51:44'),
(2, 2, 1, 'books_sales_tax_2', 'Books Sales Tax 2%', '0.02000', 0, 'default', '2019-01-18 13:51:44', '2019-01-18 13:51:44'),
(3, 3, 1, 'sales_tax_20', 'Sales Tax 20%', '0.20000', 1, 'default', '2019-01-18 13:51:44', '2019-01-18 13:51:44');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
CREATE TABLE IF NOT EXISTS `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
CREATE TABLE IF NOT EXISTS `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_zone`
--

INSERT INTO `sylius_zone` (`id`, `code`, `name`, `type`, `scope`) VALUES
(1, 'US', 'United States of America', 'country', 'all'),
(2, 'FR', 'France', 'country', 'all');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
CREATE TABLE IF NOT EXISTS `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_zone_member`
--

INSERT INTO `sylius_zone_member` (`id`, `belongs_to`, `code`) VALUES
(1, 1, 'US'),
(2, 2, 'FR');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `sylius_address`
--
ALTER TABLE `sylius_address`
  ADD CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  ADD CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_admin_api_access_token`
--
ALTER TABLE `sylius_admin_api_access_token`
  ADD CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_admin_api_auth_code`
--
ALTER TABLE `sylius_admin_api_auth_code`
  ADD CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_admin_api_refresh_token`
--
ALTER TABLE `sylius_admin_api_refresh_token`
  ADD CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_channel`
--
ALTER TABLE `sylius_channel`
  ADD CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  ADD CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  ADD CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_currencies`
--
ALTER TABLE `sylius_channel_currencies`
  ADD CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_locales`
--
ALTER TABLE `sylius_channel_locales`
  ADD CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  ADD CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_customer`
--
ALTER TABLE `sylius_customer`
  ADD CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`);

--
-- Contraintes pour la table `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  ADD CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_order`
--
ALTER TABLE `sylius_order`
  ADD CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  ADD CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  ADD CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Contraintes pour la table `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  ADD CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  ADD CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  ADD CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment`
--
ALTER TABLE `sylius_payment`
  ADD CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  ADD CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  ADD CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `sylius_payment_method_channels`
--
ALTER TABLE `sylius_payment_method_channels`
  ADD CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  ADD CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product`
--
ALTER TABLE `sylius_product`
  ADD CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`);

--
-- Contraintes pour la table `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  ADD CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_association_product`
--
ALTER TABLE `sylius_product_association_product`
  ADD CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  ADD CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  ADD CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  ADD CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_channels`
--
ALTER TABLE `sylius_product_channels`
  ADD CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  ADD CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_image_product_variants`
--
ALTER TABLE `sylius_product_image_product_variants`
  ADD CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_options`
--
ALTER TABLE `sylius_product_options`
  ADD CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  ADD CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  ADD CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  ADD CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  ADD CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  ADD CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  ADD CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  ADD CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `sylius_product_variant_option_value`
--
ALTER TABLE `sylius_product_variant_option_value`
  ADD CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  ADD CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  ADD CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_promotion_channels`
--
ALTER TABLE `sylius_promotion_channels`
  ADD CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  ADD CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_promotion_order`
--
ALTER TABLE `sylius_promotion_order`
  ADD CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  ADD CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  ADD CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_province`
--
ALTER TABLE `sylius_province`
  ADD CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`);

--
-- Contraintes pour la table `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  ADD CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  ADD CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  ADD CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  ADD CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Contraintes pour la table `sylius_shipping_method_channels`
--
ALTER TABLE `sylius_shipping_method_channels`
  ADD CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  ADD CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  ADD CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Contraintes pour la table `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  ADD CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  ADD CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  ADD CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  ADD CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  ADD CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Contraintes pour la table `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  ADD CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`);

--
-- Contraintes pour la table `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  ADD CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
