-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 19 avr. 2019 à 11:18
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
-- Base de données :  `ecomcar`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20170912085504', '2019-04-16 08:42:22'),
('20170913125128', '2019-04-16 08:42:22'),
('20171003103916', '2019-04-16 08:42:23'),
('20180102140039', '2019-04-16 08:42:23'),
('20190109095211', '2019-04-16 08:42:25'),
('20190109160409', '2019-04-16 08:42:26');

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
(1, 11, 'Brooks', 'Casper', NULL, '5279 Tromp Oval Apt. 999', NULL, 'Rosenbaumton', '83626', '2019-04-16 08:45:43', '2019-04-16 08:45:44', 'US', NULL, NULL),
(2, NULL, 'Brooks', 'Casper', NULL, '5279 Tromp Oval Apt. 999', NULL, 'Rosenbaumton', '83626', '2019-04-16 08:45:43', '2019-04-16 08:45:44', 'US', NULL, NULL),
(3, NULL, 'Brooks', 'Casper', NULL, '5279 Tromp Oval Apt. 999', NULL, 'Rosenbaumton', '83626', '2019-04-16 08:45:43', '2019-04-16 08:45:44', 'US', NULL, NULL),
(4, 12, 'Alize', 'Kemmer', NULL, '871 Mueller Camp', NULL, 'Louieport', '30028', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(5, NULL, 'Alize', 'Kemmer', NULL, '871 Mueller Camp', NULL, 'Louieport', '30028', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(6, NULL, 'Alize', 'Kemmer', NULL, '871 Mueller Camp', NULL, 'Louieport', '30028', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(7, 8, 'Joaquin', 'Cormier', NULL, '1609 Ward Plaza', NULL, 'North Alena', '91867', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(8, NULL, 'Joaquin', 'Cormier', NULL, '1609 Ward Plaza', NULL, 'North Alena', '91867', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(9, NULL, 'Joaquin', 'Cormier', NULL, '1609 Ward Plaza', NULL, 'North Alena', '91867', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(10, 4, 'Devon', 'King', NULL, '89830 Nova Lake', NULL, 'Kuhlmanfurt', '06517', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(11, NULL, 'Devon', 'King', NULL, '89830 Nova Lake', NULL, 'Kuhlmanfurt', '06517', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(12, NULL, 'Devon', 'King', NULL, '89830 Nova Lake', NULL, 'Kuhlmanfurt', '06517', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(13, 18, 'Eric', 'Beahan', NULL, '8420 Gutmann Court', NULL, 'New Jaredhaven', '60530', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(14, NULL, 'Eric', 'Beahan', NULL, '8420 Gutmann Court', NULL, 'New Jaredhaven', '60530', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(15, NULL, 'Eric', 'Beahan', NULL, '8420 Gutmann Court', NULL, 'New Jaredhaven', '60530', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(16, 1, 'Mike', 'Stanton', NULL, '61393 Elroy Passage Apt. 336', NULL, 'Port Carmen', '67755', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(17, NULL, 'Mike', 'Stanton', NULL, '61393 Elroy Passage Apt. 336', NULL, 'Port Carmen', '67755', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(18, NULL, 'Mike', 'Stanton', NULL, '61393 Elroy Passage Apt. 336', NULL, 'Port Carmen', '67755', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(19, 1, 'Adriana', 'Russel', NULL, '6700 Hermann Green', NULL, 'East Filibertoport', '56678', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(20, NULL, 'Adriana', 'Russel', NULL, '6700 Hermann Green', NULL, 'East Filibertoport', '56678', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(21, NULL, 'Adriana', 'Russel', NULL, '6700 Hermann Green', NULL, 'East Filibertoport', '56678', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(22, 15, 'Deontae', 'Bernhard', NULL, '98438 Steuber Drive', NULL, 'East Pattiemouth', '33830', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(23, NULL, 'Deontae', 'Bernhard', NULL, '98438 Steuber Drive', NULL, 'East Pattiemouth', '33830', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(24, NULL, 'Deontae', 'Bernhard', NULL, '98438 Steuber Drive', NULL, 'East Pattiemouth', '33830', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(25, 21, 'Norris', 'West', NULL, '557 Elmer Turnpike', NULL, 'Tayaview', '90497', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(26, NULL, 'Norris', 'West', NULL, '557 Elmer Turnpike', NULL, 'Tayaview', '90497', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(27, NULL, 'Norris', 'West', NULL, '557 Elmer Turnpike', NULL, 'Tayaview', '90497', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(28, 17, 'Jed', 'Breitenberg', NULL, '74813 Norberto Prairie', NULL, 'South Dan', '88212', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(29, NULL, 'Jed', 'Breitenberg', NULL, '74813 Norberto Prairie', NULL, 'South Dan', '88212', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(30, NULL, 'Jed', 'Breitenberg', NULL, '74813 Norberto Prairie', NULL, 'South Dan', '88212', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(31, 7, 'Marianne', 'Rogahn', NULL, '69894 Kamille Square Apt. 983', NULL, 'West Quincychester', '56016-3140', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(32, NULL, 'Marianne', 'Rogahn', NULL, '69894 Kamille Square Apt. 983', NULL, 'West Quincychester', '56016-3140', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(33, NULL, 'Marianne', 'Rogahn', NULL, '69894 Kamille Square Apt. 983', NULL, 'West Quincychester', '56016-3140', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(34, 19, 'Marge', 'Tillman', NULL, '7832 Kihn Mountains', NULL, 'New Kiarraburgh', '43040-9610', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(35, NULL, 'Marge', 'Tillman', NULL, '7832 Kihn Mountains', NULL, 'New Kiarraburgh', '43040-9610', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(36, NULL, 'Marge', 'Tillman', NULL, '7832 Kihn Mountains', NULL, 'New Kiarraburgh', '43040-9610', '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'US', NULL, NULL),
(37, 21, 'Marcelo', 'Kihn', NULL, '1035 Wolff Curve', NULL, 'Rosamondside', '15736', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(38, NULL, 'Marcelo', 'Kihn', NULL, '1035 Wolff Curve', NULL, 'Rosamondside', '15736', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(39, NULL, 'Marcelo', 'Kihn', NULL, '1035 Wolff Curve', NULL, 'Rosamondside', '15736', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(40, 3, 'Amely', 'Rodriguez', NULL, '1614 Osinski Island', NULL, 'Wolfshire', '97740-8111', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(41, NULL, 'Amely', 'Rodriguez', NULL, '1614 Osinski Island', NULL, 'Wolfshire', '97740-8111', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(42, NULL, 'Amely', 'Rodriguez', NULL, '1614 Osinski Island', NULL, 'Wolfshire', '97740-8111', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(43, 17, 'Juliet', 'Bode', NULL, '160 Marques Parkway Apt. 012', NULL, 'East Seamusshire', '24321-3073', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(44, NULL, 'Juliet', 'Bode', NULL, '160 Marques Parkway Apt. 012', NULL, 'East Seamusshire', '24321-3073', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(45, NULL, 'Juliet', 'Bode', NULL, '160 Marques Parkway Apt. 012', NULL, 'East Seamusshire', '24321-3073', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(46, 10, 'Sharon', 'Kunde', NULL, '9867 Clovis Islands Suite 285', NULL, 'Lilyland', '09934-1563', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(47, NULL, 'Sharon', 'Kunde', NULL, '9867 Clovis Islands Suite 285', NULL, 'Lilyland', '09934-1563', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(48, NULL, 'Sharon', 'Kunde', NULL, '9867 Clovis Islands Suite 285', NULL, 'Lilyland', '09934-1563', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(49, 5, 'Marshall', 'Willms', NULL, '539 Luettgen Circles', NULL, 'South Lon', '74509-2066', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(50, NULL, 'Marshall', 'Willms', NULL, '539 Luettgen Circles', NULL, 'South Lon', '74509-2066', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(51, NULL, 'Marshall', 'Willms', NULL, '539 Luettgen Circles', NULL, 'South Lon', '74509-2066', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(52, 1, 'Nathaniel', 'Stamm', NULL, '39334 Rempel Key Suite 923', NULL, 'East Lerastad', '52889-2248', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(53, NULL, 'Nathaniel', 'Stamm', NULL, '39334 Rempel Key Suite 923', NULL, 'East Lerastad', '52889-2248', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(54, NULL, 'Nathaniel', 'Stamm', NULL, '39334 Rempel Key Suite 923', NULL, 'East Lerastad', '52889-2248', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(55, 10, 'Orval', 'O\'Conner', NULL, '7219 Veum Passage Suite 828', NULL, 'Lake Reganside', '03274-1159', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(56, NULL, 'Orval', 'O\'Conner', NULL, '7219 Veum Passage Suite 828', NULL, 'Lake Reganside', '03274-1159', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(57, NULL, 'Orval', 'O\'Conner', NULL, '7219 Veum Passage Suite 828', NULL, 'Lake Reganside', '03274-1159', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(58, 10, 'Giovanny', 'Bode', NULL, '1643 Eulah Vista', NULL, 'South Fleta', '04562-4468', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(59, NULL, 'Giovanny', 'Bode', NULL, '1643 Eulah Vista', NULL, 'South Fleta', '04562-4468', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(60, NULL, 'Giovanny', 'Bode', NULL, '1643 Eulah Vista', NULL, 'South Fleta', '04562-4468', '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'US', NULL, NULL),
(61, 15, 'Johnpaul', 'Dibbert', NULL, '973 Tatyana Run', 'Wiegand-Conn', 'Littlefort', '62149-6856', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(62, 20, 'Alan', 'Kuhn', NULL, '113 Feeney Bridge', NULL, 'East Amaliamouth', '82837-7567', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(63, 13, 'Malvina', 'Robel', NULL, '7249 Beatrice Forks Suite 069', 'Stamm-O\'Kon', 'Port Asa', '96783', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(64, 13, 'Barrett', 'Bosco', NULL, '55155 Zboncak Trace', NULL, 'North Rusty', '62852-9256', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(65, 3, 'Cole', 'Schuppe', '1-643-762-9130 x911', '18415 Okuneva Stravenue Suite 839', 'Harber, Boyer and Flatley', 'Mitchellton', '92710-3253', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(66, 4, 'Luigi', 'Wolf', '1-853-436-8490 x83111', '37776 Cronin Extension', 'Klein, Schuppe and McLaughlin', 'North Jeramie', '72098', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(67, 3, 'Elyse', 'Lemke', NULL, '67008 Keebler Landing', NULL, 'West Christaside', '81724-6206', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(68, 1, 'Izaiah', 'Schmitt', '1-813-393-1218 x77096', '5947 Alex Crossroad', NULL, 'North Selmerland', '38761-0947', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(69, 21, 'Krista', 'Waters', NULL, '8383 Mohr Trace Apt. 872', NULL, 'East Shemar', '43514', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL),
(70, 20, 'Darrel', 'Frami', '423-994-4547 x54716', '34835 Buckridge Mountain', NULL, 'North Alexandrotown', '70644', '2019-04-16 08:45:48', '2019-04-16 08:45:48', 'US', NULL, NULL);

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
(1, 'create', '2019-04-16 08:45:44', '1', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Brooks\";s:8:\"lastName\";s:6:\"Casper\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"5279 Tromp Oval Apt. 999\";s:7:\"company\";N;s:4:\"city\";s:12:\"Rosenbaumton\";s:8:\"postcode\";s:5:\"83626\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(2, 'create', '2019-04-16 08:45:44', '2', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Brooks\";s:8:\"lastName\";s:6:\"Casper\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"5279 Tromp Oval Apt. 999\";s:7:\"company\";N;s:4:\"city\";s:12:\"Rosenbaumton\";s:8:\"postcode\";s:5:\"83626\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(3, 'create', '2019-04-16 08:45:44', '3', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Brooks\";s:8:\"lastName\";s:6:\"Casper\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"5279 Tromp Oval Apt. 999\";s:7:\"company\";N;s:4:\"city\";s:12:\"Rosenbaumton\";s:8:\"postcode\";s:5:\"83626\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(4, 'create', '2019-04-16 08:45:47', '4', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Alize\";s:8:\"lastName\";s:6:\"Kemmer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"871 Mueller Camp\";s:7:\"company\";N;s:4:\"city\";s:9:\"Louieport\";s:8:\"postcode\";s:5:\"30028\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(5, 'create', '2019-04-16 08:45:47', '5', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Alize\";s:8:\"lastName\";s:6:\"Kemmer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"871 Mueller Camp\";s:7:\"company\";N;s:4:\"city\";s:9:\"Louieport\";s:8:\"postcode\";s:5:\"30028\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(6, 'create', '2019-04-16 08:45:47', '6', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Alize\";s:8:\"lastName\";s:6:\"Kemmer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"871 Mueller Camp\";s:7:\"company\";N;s:4:\"city\";s:9:\"Louieport\";s:8:\"postcode\";s:5:\"30028\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(7, 'create', '2019-04-16 08:45:47', '7', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Joaquin\";s:8:\"lastName\";s:7:\"Cormier\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"1609 Ward Plaza\";s:7:\"company\";N;s:4:\"city\";s:11:\"North Alena\";s:8:\"postcode\";s:5:\"91867\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(8, 'create', '2019-04-16 08:45:47', '8', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Joaquin\";s:8:\"lastName\";s:7:\"Cormier\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"1609 Ward Plaza\";s:7:\"company\";N;s:4:\"city\";s:11:\"North Alena\";s:8:\"postcode\";s:5:\"91867\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(9, 'create', '2019-04-16 08:45:47', '9', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Joaquin\";s:8:\"lastName\";s:7:\"Cormier\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"1609 Ward Plaza\";s:7:\"company\";N;s:4:\"city\";s:11:\"North Alena\";s:8:\"postcode\";s:5:\"91867\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(10, 'create', '2019-04-16 08:45:47', '10', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Devon\";s:8:\"lastName\";s:4:\"King\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"89830 Nova Lake\";s:7:\"company\";N;s:4:\"city\";s:11:\"Kuhlmanfurt\";s:8:\"postcode\";s:5:\"06517\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(11, 'create', '2019-04-16 08:45:47', '11', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Devon\";s:8:\"lastName\";s:4:\"King\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"89830 Nova Lake\";s:7:\"company\";N;s:4:\"city\";s:11:\"Kuhlmanfurt\";s:8:\"postcode\";s:5:\"06517\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(12, 'create', '2019-04-16 08:45:47', '12', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Devon\";s:8:\"lastName\";s:4:\"King\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"89830 Nova Lake\";s:7:\"company\";N;s:4:\"city\";s:11:\"Kuhlmanfurt\";s:8:\"postcode\";s:5:\"06517\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(13, 'create', '2019-04-16 08:45:47', '13', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Eric\";s:8:\"lastName\";s:6:\"Beahan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"8420 Gutmann Court\";s:7:\"company\";N;s:4:\"city\";s:14:\"New Jaredhaven\";s:8:\"postcode\";s:5:\"60530\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(14, 'create', '2019-04-16 08:45:47', '14', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Eric\";s:8:\"lastName\";s:6:\"Beahan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"8420 Gutmann Court\";s:7:\"company\";N;s:4:\"city\";s:14:\"New Jaredhaven\";s:8:\"postcode\";s:5:\"60530\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(15, 'create', '2019-04-16 08:45:47', '15', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Eric\";s:8:\"lastName\";s:6:\"Beahan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"8420 Gutmann Court\";s:7:\"company\";N;s:4:\"city\";s:14:\"New Jaredhaven\";s:8:\"postcode\";s:5:\"60530\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(16, 'create', '2019-04-16 08:45:47', '16', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Mike\";s:8:\"lastName\";s:7:\"Stanton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"61393 Elroy Passage Apt. 336\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Carmen\";s:8:\"postcode\";s:5:\"67755\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(17, 'create', '2019-04-16 08:45:47', '17', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Mike\";s:8:\"lastName\";s:7:\"Stanton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"61393 Elroy Passage Apt. 336\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Carmen\";s:8:\"postcode\";s:5:\"67755\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(18, 'create', '2019-04-16 08:45:47', '18', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Mike\";s:8:\"lastName\";s:7:\"Stanton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"61393 Elroy Passage Apt. 336\";s:7:\"company\";N;s:4:\"city\";s:11:\"Port Carmen\";s:8:\"postcode\";s:5:\"67755\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(19, 'create', '2019-04-16 08:45:47', '19', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Adriana\";s:8:\"lastName\";s:6:\"Russel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"6700 Hermann Green\";s:7:\"company\";N;s:4:\"city\";s:18:\"East Filibertoport\";s:8:\"postcode\";s:5:\"56678\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(20, 'create', '2019-04-16 08:45:47', '20', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Adriana\";s:8:\"lastName\";s:6:\"Russel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"6700 Hermann Green\";s:7:\"company\";N;s:4:\"city\";s:18:\"East Filibertoport\";s:8:\"postcode\";s:5:\"56678\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(21, 'create', '2019-04-16 08:45:47', '21', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Adriana\";s:8:\"lastName\";s:6:\"Russel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"6700 Hermann Green\";s:7:\"company\";N;s:4:\"city\";s:18:\"East Filibertoport\";s:8:\"postcode\";s:5:\"56678\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(22, 'create', '2019-04-16 08:45:47', '22', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Deontae\";s:8:\"lastName\";s:8:\"Bernhard\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"98438 Steuber Drive\";s:7:\"company\";N;s:4:\"city\";s:16:\"East Pattiemouth\";s:8:\"postcode\";s:5:\"33830\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(23, 'create', '2019-04-16 08:45:47', '23', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Deontae\";s:8:\"lastName\";s:8:\"Bernhard\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"98438 Steuber Drive\";s:7:\"company\";N;s:4:\"city\";s:16:\"East Pattiemouth\";s:8:\"postcode\";s:5:\"33830\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(24, 'create', '2019-04-16 08:45:47', '24', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Deontae\";s:8:\"lastName\";s:8:\"Bernhard\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"98438 Steuber Drive\";s:7:\"company\";N;s:4:\"city\";s:16:\"East Pattiemouth\";s:8:\"postcode\";s:5:\"33830\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(25, 'create', '2019-04-16 08:45:47', '25', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Norris\";s:8:\"lastName\";s:4:\"West\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"557 Elmer Turnpike\";s:7:\"company\";N;s:4:\"city\";s:8:\"Tayaview\";s:8:\"postcode\";s:5:\"90497\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(26, 'create', '2019-04-16 08:45:47', '26', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Norris\";s:8:\"lastName\";s:4:\"West\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"557 Elmer Turnpike\";s:7:\"company\";N;s:4:\"city\";s:8:\"Tayaview\";s:8:\"postcode\";s:5:\"90497\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(27, 'create', '2019-04-16 08:45:47', '27', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Norris\";s:8:\"lastName\";s:4:\"West\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"557 Elmer Turnpike\";s:7:\"company\";N;s:4:\"city\";s:8:\"Tayaview\";s:8:\"postcode\";s:5:\"90497\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(28, 'create', '2019-04-16 08:45:47', '28', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jed\";s:8:\"lastName\";s:11:\"Breitenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"74813 Norberto Prairie\";s:7:\"company\";N;s:4:\"city\";s:9:\"South Dan\";s:8:\"postcode\";s:5:\"88212\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(29, 'create', '2019-04-16 08:45:47', '29', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jed\";s:8:\"lastName\";s:11:\"Breitenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"74813 Norberto Prairie\";s:7:\"company\";N;s:4:\"city\";s:9:\"South Dan\";s:8:\"postcode\";s:5:\"88212\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(30, 'create', '2019-04-16 08:45:47', '30', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jed\";s:8:\"lastName\";s:11:\"Breitenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"74813 Norberto Prairie\";s:7:\"company\";N;s:4:\"city\";s:9:\"South Dan\";s:8:\"postcode\";s:5:\"88212\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(31, 'create', '2019-04-16 08:45:47', '31', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Marianne\";s:8:\"lastName\";s:6:\"Rogahn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"69894 Kamille Square Apt. 983\";s:7:\"company\";N;s:4:\"city\";s:18:\"West Quincychester\";s:8:\"postcode\";s:10:\"56016-3140\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(32, 'create', '2019-04-16 08:45:47', '32', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Marianne\";s:8:\"lastName\";s:6:\"Rogahn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"69894 Kamille Square Apt. 983\";s:7:\"company\";N;s:4:\"city\";s:18:\"West Quincychester\";s:8:\"postcode\";s:10:\"56016-3140\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(33, 'create', '2019-04-16 08:45:47', '33', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Marianne\";s:8:\"lastName\";s:6:\"Rogahn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"69894 Kamille Square Apt. 983\";s:7:\"company\";N;s:4:\"city\";s:18:\"West Quincychester\";s:8:\"postcode\";s:10:\"56016-3140\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(34, 'create', '2019-04-16 08:45:47', '34', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Marge\";s:8:\"lastName\";s:7:\"Tillman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7832 Kihn Mountains\";s:7:\"company\";N;s:4:\"city\";s:15:\"New Kiarraburgh\";s:8:\"postcode\";s:10:\"43040-9610\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(35, 'create', '2019-04-16 08:45:47', '35', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Marge\";s:8:\"lastName\";s:7:\"Tillman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7832 Kihn Mountains\";s:7:\"company\";N;s:4:\"city\";s:15:\"New Kiarraburgh\";s:8:\"postcode\";s:10:\"43040-9610\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(36, 'create', '2019-04-16 08:45:47', '36', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Marge\";s:8:\"lastName\";s:7:\"Tillman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7832 Kihn Mountains\";s:7:\"company\";N;s:4:\"city\";s:15:\"New Kiarraburgh\";s:8:\"postcode\";s:10:\"43040-9610\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(37, 'create', '2019-04-16 08:45:47', '37', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Marcelo\";s:8:\"lastName\";s:4:\"Kihn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1035 Wolff Curve\";s:7:\"company\";N;s:4:\"city\";s:12:\"Rosamondside\";s:8:\"postcode\";s:5:\"15736\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(38, 'create', '2019-04-16 08:45:47', '38', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Marcelo\";s:8:\"lastName\";s:4:\"Kihn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1035 Wolff Curve\";s:7:\"company\";N;s:4:\"city\";s:12:\"Rosamondside\";s:8:\"postcode\";s:5:\"15736\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(39, 'create', '2019-04-16 08:45:47', '39', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Marcelo\";s:8:\"lastName\";s:4:\"Kihn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1035 Wolff Curve\";s:7:\"company\";N;s:4:\"city\";s:12:\"Rosamondside\";s:8:\"postcode\";s:5:\"15736\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(40, 'create', '2019-04-16 08:45:47', '40', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Amely\";s:8:\"lastName\";s:9:\"Rodriguez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"1614 Osinski Island\";s:7:\"company\";N;s:4:\"city\";s:9:\"Wolfshire\";s:8:\"postcode\";s:10:\"97740-8111\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(41, 'create', '2019-04-16 08:45:47', '41', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Amely\";s:8:\"lastName\";s:9:\"Rodriguez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"1614 Osinski Island\";s:7:\"company\";N;s:4:\"city\";s:9:\"Wolfshire\";s:8:\"postcode\";s:10:\"97740-8111\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(42, 'create', '2019-04-16 08:45:47', '42', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Amely\";s:8:\"lastName\";s:9:\"Rodriguez\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"1614 Osinski Island\";s:7:\"company\";N;s:4:\"city\";s:9:\"Wolfshire\";s:8:\"postcode\";s:10:\"97740-8111\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(43, 'create', '2019-04-16 08:45:47', '43', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Juliet\";s:8:\"lastName\";s:4:\"Bode\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"160 Marques Parkway Apt. 012\";s:7:\"company\";N;s:4:\"city\";s:16:\"East Seamusshire\";s:8:\"postcode\";s:10:\"24321-3073\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(44, 'create', '2019-04-16 08:45:47', '44', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Juliet\";s:8:\"lastName\";s:4:\"Bode\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"160 Marques Parkway Apt. 012\";s:7:\"company\";N;s:4:\"city\";s:16:\"East Seamusshire\";s:8:\"postcode\";s:10:\"24321-3073\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(45, 'create', '2019-04-16 08:45:47', '45', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Juliet\";s:8:\"lastName\";s:4:\"Bode\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"160 Marques Parkway Apt. 012\";s:7:\"company\";N;s:4:\"city\";s:16:\"East Seamusshire\";s:8:\"postcode\";s:10:\"24321-3073\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(46, 'create', '2019-04-16 08:45:47', '46', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sharon\";s:8:\"lastName\";s:5:\"Kunde\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"9867 Clovis Islands Suite 285\";s:7:\"company\";N;s:4:\"city\";s:8:\"Lilyland\";s:8:\"postcode\";s:10:\"09934-1563\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(47, 'create', '2019-04-16 08:45:47', '47', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sharon\";s:8:\"lastName\";s:5:\"Kunde\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"9867 Clovis Islands Suite 285\";s:7:\"company\";N;s:4:\"city\";s:8:\"Lilyland\";s:8:\"postcode\";s:10:\"09934-1563\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(48, 'create', '2019-04-16 08:45:47', '48', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sharon\";s:8:\"lastName\";s:5:\"Kunde\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"9867 Clovis Islands Suite 285\";s:7:\"company\";N;s:4:\"city\";s:8:\"Lilyland\";s:8:\"postcode\";s:10:\"09934-1563\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(49, 'create', '2019-04-16 08:45:47', '49', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Marshall\";s:8:\"lastName\";s:6:\"Willms\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"539 Luettgen Circles\";s:7:\"company\";N;s:4:\"city\";s:9:\"South Lon\";s:8:\"postcode\";s:10:\"74509-2066\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(50, 'create', '2019-04-16 08:45:47', '50', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Marshall\";s:8:\"lastName\";s:6:\"Willms\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"539 Luettgen Circles\";s:7:\"company\";N;s:4:\"city\";s:9:\"South Lon\";s:8:\"postcode\";s:10:\"74509-2066\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(51, 'create', '2019-04-16 08:45:47', '51', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Marshall\";s:8:\"lastName\";s:6:\"Willms\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"539 Luettgen Circles\";s:7:\"company\";N;s:4:\"city\";s:9:\"South Lon\";s:8:\"postcode\";s:10:\"74509-2066\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(52, 'create', '2019-04-16 08:45:47', '52', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Nathaniel\";s:8:\"lastName\";s:5:\"Stamm\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"39334 Rempel Key Suite 923\";s:7:\"company\";N;s:4:\"city\";s:13:\"East Lerastad\";s:8:\"postcode\";s:10:\"52889-2248\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(53, 'create', '2019-04-16 08:45:47', '53', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Nathaniel\";s:8:\"lastName\";s:5:\"Stamm\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"39334 Rempel Key Suite 923\";s:7:\"company\";N;s:4:\"city\";s:13:\"East Lerastad\";s:8:\"postcode\";s:10:\"52889-2248\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(54, 'create', '2019-04-16 08:45:47', '54', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Nathaniel\";s:8:\"lastName\";s:5:\"Stamm\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"39334 Rempel Key Suite 923\";s:7:\"company\";N;s:4:\"city\";s:13:\"East Lerastad\";s:8:\"postcode\";s:10:\"52889-2248\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(55, 'create', '2019-04-16 08:45:47', '55', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Orval\";s:8:\"lastName\";s:8:\"O\'Conner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"7219 Veum Passage Suite 828\";s:7:\"company\";N;s:4:\"city\";s:14:\"Lake Reganside\";s:8:\"postcode\";s:10:\"03274-1159\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(56, 'create', '2019-04-16 08:45:47', '56', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Orval\";s:8:\"lastName\";s:8:\"O\'Conner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"7219 Veum Passage Suite 828\";s:7:\"company\";N;s:4:\"city\";s:14:\"Lake Reganside\";s:8:\"postcode\";s:10:\"03274-1159\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(57, 'create', '2019-04-16 08:45:47', '57', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Orval\";s:8:\"lastName\";s:8:\"O\'Conner\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"7219 Veum Passage Suite 828\";s:7:\"company\";N;s:4:\"city\";s:14:\"Lake Reganside\";s:8:\"postcode\";s:10:\"03274-1159\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(58, 'create', '2019-04-16 08:45:47', '58', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Giovanny\";s:8:\"lastName\";s:4:\"Bode\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1643 Eulah Vista\";s:7:\"company\";N;s:4:\"city\";s:11:\"South Fleta\";s:8:\"postcode\";s:10:\"04562-4468\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(59, 'create', '2019-04-16 08:45:47', '59', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Giovanny\";s:8:\"lastName\";s:4:\"Bode\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1643 Eulah Vista\";s:7:\"company\";N;s:4:\"city\";s:11:\"South Fleta\";s:8:\"postcode\";s:10:\"04562-4468\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(60, 'create', '2019-04-16 08:45:47', '60', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Giovanny\";s:8:\"lastName\";s:4:\"Bode\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1643 Eulah Vista\";s:7:\"company\";N;s:4:\"city\";s:11:\"South Fleta\";s:8:\"postcode\";s:10:\"04562-4468\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(61, 'create', '2019-04-16 08:45:48', '61', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Johnpaul\";s:8:\"lastName\";s:7:\"Dibbert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"973 Tatyana Run\";s:7:\"company\";s:12:\"Wiegand-Conn\";s:4:\"city\";s:10:\"Littlefort\";s:8:\"postcode\";s:10:\"62149-6856\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(62, 'create', '2019-04-16 08:45:48', '62', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Alan\";s:8:\"lastName\";s:4:\"Kuhn\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"113 Feeney Bridge\";s:7:\"company\";N;s:4:\"city\";s:16:\"East Amaliamouth\";s:8:\"postcode\";s:10:\"82837-7567\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(63, 'create', '2019-04-16 08:45:48', '63', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Malvina\";s:8:\"lastName\";s:5:\"Robel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"7249 Beatrice Forks Suite 069\";s:7:\"company\";s:11:\"Stamm-O\'Kon\";s:4:\"city\";s:8:\"Port Asa\";s:8:\"postcode\";s:5:\"96783\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(64, 'create', '2019-04-16 08:45:48', '64', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Barrett\";s:8:\"lastName\";s:5:\"Bosco\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"55155 Zboncak Trace\";s:7:\"company\";N;s:4:\"city\";s:11:\"North Rusty\";s:8:\"postcode\";s:10:\"62852-9256\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(65, 'create', '2019-04-16 08:45:48', '65', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Cole\";s:8:\"lastName\";s:7:\"Schuppe\";s:11:\"phoneNumber\";s:19:\"1-643-762-9130 x911\";s:6:\"street\";s:33:\"18415 Okuneva Stravenue Suite 839\";s:7:\"company\";s:25:\"Harber, Boyer and Flatley\";s:4:\"city\";s:11:\"Mitchellton\";s:8:\"postcode\";s:10:\"92710-3253\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(66, 'create', '2019-04-16 08:45:48', '66', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Luigi\";s:8:\"lastName\";s:4:\"Wolf\";s:11:\"phoneNumber\";s:21:\"1-853-436-8490 x83111\";s:6:\"street\";s:22:\"37776 Cronin Extension\";s:7:\"company\";s:29:\"Klein, Schuppe and McLaughlin\";s:4:\"city\";s:13:\"North Jeramie\";s:8:\"postcode\";s:5:\"72098\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(67, 'create', '2019-04-16 08:45:48', '67', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Elyse\";s:8:\"lastName\";s:5:\"Lemke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"67008 Keebler Landing\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Christaside\";s:8:\"postcode\";s:10:\"81724-6206\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(68, 'create', '2019-04-16 08:45:48', '68', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Izaiah\";s:8:\"lastName\";s:7:\"Schmitt\";s:11:\"phoneNumber\";s:21:\"1-813-393-1218 x77096\";s:6:\"street\";s:19:\"5947 Alex Crossroad\";s:7:\"company\";N;s:4:\"city\";s:16:\"North Selmerland\";s:8:\"postcode\";s:10:\"38761-0947\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(69, 'create', '2019-04-16 08:45:48', '69', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Krista\";s:8:\"lastName\";s:6:\"Waters\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"8383 Mohr Trace Apt. 872\";s:7:\"company\";N;s:4:\"city\";s:11:\"East Shemar\";s:8:\"postcode\";s:5:\"43514\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(70, 'create', '2019-04-16 08:45:48', '70', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Darrel\";s:8:\"lastName\";s:5:\"Frami\";s:11:\"phoneNumber\";s:19:\"423-994-4547 x54716\";s:6:\"street\";s:24:\"34835 Buckridge Mountain\";s:7:\"company\";N;s:4:\"city\";s:19:\"North Alexandrotown\";s:8:\"postcode\";s:5:\"70644\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_adjustment`
--

INSERT INTO `sylius_adjustment` (`id`, `order_id`, `order_item_id`, `order_item_unit_id`, `type`, `label`, `amount`, `is_neutral`, `is_locked`, `origin_code`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'shipping', 'UPS', 3962, 0, 0, NULL, '2019-04-16 08:45:44', '2019-04-16 08:45:44'),
(2, NULL, NULL, 7, 'order_promotion', 'Christmas', -162, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(3, NULL, NULL, 8, 'order_promotion', 'Christmas', -162, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(4, NULL, NULL, 9, 'order_promotion', 'Christmas', -162, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(5, NULL, NULL, 10, 'order_promotion', 'Christmas', -404, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(6, NULL, NULL, 11, 'order_promotion', 'Christmas', -403, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(7, NULL, NULL, 12, 'order_promotion', 'Christmas', -403, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(8, NULL, NULL, 13, 'order_promotion', 'Christmas', -65, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(9, NULL, NULL, 14, 'order_promotion', 'Christmas', -64, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(10, NULL, NULL, 15, 'order_promotion', 'Christmas', -64, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(11, 2, NULL, NULL, 'shipping', 'FedEx', 7625, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(12, 3, NULL, NULL, 'shipping', 'DHL Express', 8666, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(13, NULL, NULL, 20, 'order_promotion', 'New Year', -64, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(14, NULL, NULL, 21, 'order_promotion', 'New Year', -63, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(15, NULL, NULL, 22, 'order_promotion', 'New Year', -76, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(16, NULL, NULL, 23, 'order_promotion', 'New Year', -75, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(17, NULL, NULL, 24, 'order_promotion', 'New Year', -75, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(18, NULL, NULL, 25, 'order_promotion', 'New Year', -75, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(19, NULL, NULL, 26, 'order_promotion', 'New Year', -42, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(20, NULL, NULL, 27, 'order_promotion', 'New Year', -41, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(21, NULL, NULL, 28, 'order_promotion', 'New Year', -41, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(22, NULL, NULL, 29, 'order_promotion', 'New Year', -41, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(23, NULL, NULL, 30, 'order_promotion', 'New Year', -52, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(24, NULL, NULL, 31, 'order_promotion', 'New Year', -71, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(25, NULL, NULL, 32, 'order_promotion', 'New Year', -71, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(26, NULL, NULL, 33, 'order_promotion', 'New Year', -71, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(27, NULL, NULL, 34, 'order_promotion', 'New Year', -71, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(28, NULL, NULL, 35, 'order_promotion', 'New Year', -71, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(29, 4, NULL, NULL, 'shipping', 'FedEx', 7625, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(30, NULL, NULL, 36, 'order_promotion', 'Christmas', -22, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(31, NULL, NULL, 37, 'order_promotion', 'Christmas', -22, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(32, NULL, NULL, 38, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(33, NULL, NULL, 39, 'order_promotion', 'Christmas', -21, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(34, NULL, NULL, 40, 'order_promotion', 'Christmas', -141, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(35, NULL, NULL, 41, 'order_promotion', 'Christmas', -141, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(36, NULL, NULL, 42, 'order_promotion', 'Christmas', -140, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(37, NULL, NULL, 43, 'order_promotion', 'Christmas', -384, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(38, NULL, NULL, 44, 'order_promotion', 'Christmas', -303, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(39, NULL, NULL, 45, 'order_promotion', 'Christmas', -303, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(40, NULL, NULL, 46, 'order_promotion', 'Christmas', -302, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(41, NULL, NULL, 47, 'order_promotion', 'Christmas', -302, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(42, NULL, NULL, 48, 'order_promotion', 'Christmas', -302, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(43, NULL, NULL, 49, 'order_promotion', 'Christmas', -267, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(44, 5, NULL, NULL, 'shipping', 'UPS', 3962, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(45, 6, NULL, NULL, 'shipping', 'DHL Express', 8666, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(46, NULL, NULL, 54, 'order_promotion', 'Christmas', -258, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(47, NULL, NULL, 55, 'order_promotion', 'Christmas', -257, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(48, NULL, NULL, 56, 'order_promotion', 'Christmas', -411, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(49, NULL, NULL, 57, 'order_promotion', 'Christmas', -411, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(50, NULL, NULL, 58, 'order_promotion', 'Christmas', -410, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(51, NULL, NULL, 59, 'order_promotion', 'Christmas', -410, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(52, NULL, NULL, 60, 'order_promotion', 'Christmas', -476, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(53, NULL, NULL, 61, 'order_promotion', 'Christmas', -108, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(54, NULL, NULL, 62, 'order_promotion', 'Christmas', -107, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(55, NULL, NULL, 63, 'order_promotion', 'Christmas', -107, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(56, 7, NULL, NULL, 'shipping', 'FedEx', 7625, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(57, 8, NULL, NULL, 'shipping', 'FedEx', 7625, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(58, NULL, NULL, 70, 'order_promotion', 'New Year', -15, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(59, NULL, NULL, 71, 'order_promotion', 'New Year', -15, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(60, NULL, NULL, 72, 'order_promotion', 'New Year', -14, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(61, NULL, NULL, 73, 'order_promotion', 'New Year', -14, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(62, NULL, NULL, 74, 'order_promotion', 'New Year', -55, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(63, NULL, NULL, 75, 'order_promotion', 'New Year', -55, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(64, NULL, NULL, 76, 'order_promotion', 'New Year', -8, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(65, NULL, NULL, 77, 'order_promotion', 'New Year', -8, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(66, NULL, NULL, 78, 'order_promotion', 'New Year', -8, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(67, NULL, NULL, 79, 'order_promotion', 'New Year', -88, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(68, NULL, NULL, 80, 'order_promotion', 'New Year', -88, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(69, NULL, NULL, 81, 'order_promotion', 'New Year', -87, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(70, NULL, NULL, 82, 'order_promotion', 'New Year', -87, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(71, NULL, NULL, 83, 'order_promotion', 'New Year', -87, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(72, NULL, NULL, 84, 'order_promotion', 'New Year', -75, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(73, NULL, NULL, 85, 'order_promotion', 'New Year', -74, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(74, NULL, NULL, 86, 'order_promotion', 'New Year', -74, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(75, NULL, NULL, 87, 'order_promotion', 'New Year', -74, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(76, NULL, NULL, 88, 'order_promotion', 'New Year', -74, 0, 0, 'new_year', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(77, 9, NULL, NULL, 'shipping', 'DHL Express', 8666, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(78, 10, NULL, NULL, 'shipping', 'DHL Express', 8666, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(79, 11, NULL, NULL, 'shipping', 'DHL Express', 8666, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(80, NULL, NULL, 98, 'order_promotion', 'Christmas', -387, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(81, NULL, NULL, 99, 'order_promotion', 'Christmas', -386, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(82, NULL, NULL, 100, 'order_promotion', 'Christmas', -386, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(83, NULL, NULL, 101, 'order_promotion', 'Christmas', -386, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(84, NULL, NULL, 102, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(85, NULL, NULL, 103, 'order_promotion', 'Christmas', -39, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(86, NULL, NULL, 104, 'order_promotion', 'Christmas', -411, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(87, NULL, NULL, 105, 'order_promotion', 'Christmas', -411, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(88, NULL, NULL, 106, 'order_promotion', 'Christmas', -411, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(89, NULL, NULL, 107, 'order_promotion', 'Christmas', -410, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:47'),
(90, NULL, NULL, 108, 'order_promotion', 'Christmas', -410, 0, 0, 'christmas', '2019-04-16 08:45:46', '2019-04-16 08:45:47'),
(91, 12, NULL, NULL, 'shipping', 'FedEx', 7625, 0, 0, NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:47'),
(92, 13, NULL, NULL, 'shipping', 'FedEx', 7625, 0, 0, NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(93, NULL, NULL, 111, 'order_promotion', 'Christmas', -124, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(94, NULL, NULL, 112, 'order_promotion', 'Christmas', -125, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(95, NULL, NULL, 113, 'order_promotion', 'Christmas', -125, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(96, NULL, NULL, 114, 'order_promotion', 'Christmas', -124, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(97, NULL, NULL, 115, 'order_promotion', 'Christmas', -124, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(98, NULL, NULL, 116, 'order_promotion', 'Christmas', -124, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(99, NULL, NULL, 117, 'order_promotion', 'Christmas', -403, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(100, NULL, NULL, 118, 'order_promotion', 'Christmas', -56, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(101, NULL, NULL, 119, 'order_promotion', 'Christmas', -56, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(102, 14, NULL, NULL, 'shipping', 'UPS', 3962, 0, 0, NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(103, 15, NULL, NULL, 'shipping', 'UPS', 3962, 0, 0, NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(104, 16, NULL, NULL, 'shipping', 'UPS', 3962, 0, 0, NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(105, 17, NULL, NULL, 'shipping', 'UPS', 3962, 0, 0, NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(106, 18, NULL, NULL, 'shipping', 'DHL Express', 8666, 0, 0, NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(107, NULL, NULL, 142, 'order_promotion', 'Christmas', -394, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(108, NULL, NULL, 143, 'order_promotion', 'Christmas', -394, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(109, NULL, NULL, 144, 'order_promotion', 'Christmas', -343, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(110, NULL, NULL, 145, 'order_promotion', 'Christmas', -343, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(111, NULL, NULL, 146, 'order_promotion', 'Christmas', -343, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(112, NULL, NULL, 147, 'order_promotion', 'Christmas', -343, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(113, NULL, NULL, 148, 'order_promotion', 'Christmas', -343, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(114, NULL, NULL, 149, 'order_promotion', 'Christmas', -461, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(115, NULL, NULL, 150, 'order_promotion', 'Christmas', -461, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(116, NULL, NULL, 151, 'order_promotion', 'Christmas', -155, 0, 0, 'christmas', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(117, 19, NULL, NULL, 'shipping', 'FedEx', 7625, 0, 0, NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(118, 20, NULL, NULL, 'shipping', 'FedEx', 7625, 0, 0, NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47');

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
(1, 'sylius', 'sylius', 1, 'kuxi5o4dtm8o44kss0w8gs88848o4og', '$argon2i$v=19$m=1024,t=2,p=2$Uy8wMEtMRTJLVTZ3ZWt4VQ$ENG1PgKb0tobGQKS/wAdsy32ZlOh75+e0GUW/xYQRSA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'sylius@example.com', 'sylius@example.com', '2019-04-16 08:45:24', '2019-04-16 08:45:24', 'John', 'Doe', 'en_US', 'argon2i'),
(2, 'api', 'api', 1, '4hzein68fcw0g8s4s8w4sccg48sws0o', '$argon2i$v=19$m=1024,t=2,p=2$d3RDUVUzMnUzR1VwTEVvdg$S9dclEU5Vl/7csoKWC0T2BDU4VTnQ2XJJml9XpIn7pI', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}', 'api@example.com', 'api@example.com', '2019-04-16 08:45:24', '2019-04-16 08:45:24', 'Luke', 'Brushwood', 'en_US', 'argon2i'),
(3, 'p.ibrahima.seck@gmail.com', 'p.ibrahima.seck@gmail.com', 1, '573m6ik3dy0wswc8s0cc0kkc88w0c8c', '$argon2i$v=19$m=1024,t=2,p=2$enBGSkxnOXFuMnowR2Y0Wg$XhDd4QJswJpyZ1U/qm27jUzu2hC115T8DVkK3tRFpE4', '2019-04-16 09:05:34', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'p.ibrahima.seck@gmail.com', 'p.ibrahima.seck@gmail.com', '2019-04-16 08:46:19', '2019-04-16 09:05:34', NULL, NULL, 'en_US', 'argon2i');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel`
--

INSERT INTO `sylius_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `skipping_payment_step_allowed`, `account_verification_required`, `shop_billing_data_id`) VALUES
(1, 1, 2, 1, 'US_WEB', 'US Web Store', 'Wheat', NULL, 1, 'localhost', '2019-04-16 08:45:21', '2019-04-16 08:46:19', NULL, 'order_items_based', NULL, 0, 0, 1, NULL);

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
(1, 2);

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
(1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_pricing`
--

INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `original_price`, `channel_code`) VALUES
(1, 1, 573, NULL, 'US_WEB'),
(2, 2, 504, NULL, 'US_WEB'),
(3, 3, 383, NULL, 'US_WEB'),
(4, 4, 322, NULL, 'US_WEB'),
(5, 5, 674, NULL, 'US_WEB'),
(6, 6, 845, NULL, 'US_WEB'),
(7, 7, 650, NULL, 'US_WEB'),
(8, 8, 693, NULL, 'US_WEB'),
(9, 9, 545, NULL, 'US_WEB'),
(10, 10, 56, NULL, 'US_WEB'),
(11, 11, 959, NULL, 'US_WEB'),
(12, 12, 730, NULL, 'US_WEB'),
(13, 13, 527, NULL, 'US_WEB'),
(14, 14, 938, NULL, 'US_WEB'),
(15, 15, 345, NULL, 'US_WEB'),
(16, 16, 558, NULL, 'US_WEB'),
(17, 17, 114, NULL, 'US_WEB'),
(18, 18, 83, NULL, 'US_WEB'),
(19, 19, 253, NULL, 'US_WEB'),
(20, 20, 199, NULL, 'US_WEB'),
(21, 21, 784, NULL, 'US_WEB'),
(22, 22, 179, NULL, 'US_WEB'),
(23, 23, 903, NULL, 'US_WEB'),
(24, 24, 386, NULL, 'US_WEB'),
(25, 25, 983, NULL, 'US_WEB'),
(26, 26, 808, NULL, 'US_WEB'),
(27, 27, 696, NULL, 'US_WEB'),
(28, 28, 199, NULL, 'US_WEB'),
(29, 29, 757, NULL, 'US_WEB'),
(30, 30, 35, NULL, 'US_WEB'),
(31, 31, 737, NULL, 'US_WEB'),
(32, 32, 154, NULL, 'US_WEB'),
(33, 33, 20, NULL, 'US_WEB'),
(34, 34, 62, NULL, 'US_WEB'),
(35, 35, 300, NULL, 'US_WEB'),
(36, 36, 35, NULL, 'US_WEB'),
(37, 37, 826, NULL, 'US_WEB'),
(38, 38, 938, NULL, 'US_WEB'),
(39, 39, 5, NULL, 'US_WEB'),
(40, 40, 599, NULL, 'US_WEB'),
(41, 41, 878, NULL, 'US_WEB'),
(42, 42, 153, NULL, 'US_WEB'),
(43, 43, 588, NULL, 'US_WEB'),
(44, 44, 468, NULL, 'US_WEB'),
(45, 45, 82, NULL, 'US_WEB'),
(46, 46, 287, NULL, 'US_WEB'),
(47, 47, 331, NULL, 'US_WEB'),
(48, 48, 270, NULL, 'US_WEB'),
(49, 49, 131, NULL, 'US_WEB'),
(50, 50, 972, NULL, 'US_WEB'),
(51, 51, 254, NULL, 'US_WEB'),
(52, 52, 161, NULL, 'US_WEB'),
(53, 53, 424, NULL, 'US_WEB'),
(54, 54, 320, NULL, 'US_WEB'),
(55, 55, 525, NULL, 'US_WEB'),
(56, 56, 316, NULL, 'US_WEB'),
(57, 57, 785, NULL, 'US_WEB'),
(58, 58, 665, NULL, 'US_WEB'),
(59, 59, 194, NULL, 'US_WEB'),
(60, 60, 827, NULL, 'US_WEB'),
(61, 61, 788, NULL, 'US_WEB'),
(62, 62, 404, NULL, 'US_WEB'),
(63, 63, 804, NULL, 'US_WEB'),
(64, 64, 816, NULL, 'US_WEB'),
(65, 65, 579, NULL, 'US_WEB'),
(66, 66, 88, NULL, 'US_WEB'),
(67, 67, 546, NULL, 'US_WEB'),
(68, 68, 294, NULL, 'US_WEB'),
(69, 69, 80, NULL, 'US_WEB'),
(70, 70, 614, NULL, 'US_WEB'),
(71, 71, 332, NULL, 'US_WEB'),
(72, 72, 649, NULL, 'US_WEB'),
(73, 73, 601, NULL, 'US_WEB'),
(74, 74, 219, NULL, 'US_WEB'),
(75, 75, 759, NULL, 'US_WEB'),
(76, 76, 332, NULL, 'US_WEB'),
(77, 77, 820, NULL, 'US_WEB'),
(78, 78, 604, NULL, 'US_WEB'),
(79, 79, 653, NULL, 'US_WEB'),
(80, 80, 458, NULL, 'US_WEB'),
(81, 81, 762, NULL, 'US_WEB'),
(82, 82, 275, NULL, 'US_WEB'),
(83, 83, 751, NULL, 'US_WEB'),
(84, 84, 628, NULL, 'US_WEB'),
(85, 85, 734, NULL, 'US_WEB'),
(86, 86, 486, NULL, 'US_WEB'),
(87, 87, 738, NULL, 'US_WEB'),
(88, 88, 468, NULL, 'US_WEB'),
(89, 89, 796, NULL, 'US_WEB'),
(90, 90, 678, NULL, 'US_WEB'),
(91, 91, 711, NULL, 'US_WEB'),
(92, 92, 587, NULL, 'US_WEB'),
(93, 93, 756, NULL, 'US_WEB'),
(94, 94, 341, NULL, 'US_WEB'),
(95, 95, 609, NULL, 'US_WEB'),
(96, 96, 843, NULL, 'US_WEB'),
(97, 97, 823, NULL, 'US_WEB'),
(98, 98, 644, NULL, 'US_WEB'),
(99, 99, 838, NULL, 'US_WEB'),
(100, 100, 700, NULL, 'US_WEB'),
(101, 101, 222, NULL, 'US_WEB'),
(102, 102, 59, NULL, 'US_WEB'),
(103, 103, 798, NULL, 'US_WEB'),
(104, 104, 853, NULL, 'US_WEB'),
(105, 105, 44, NULL, 'US_WEB'),
(106, 106, 233, NULL, 'US_WEB'),
(107, 107, 671, NULL, 'US_WEB'),
(108, 108, 603, NULL, 'US_WEB'),
(109, 109, 194, NULL, 'US_WEB'),
(110, 110, 457, NULL, 'US_WEB'),
(111, 111, 944, NULL, 'US_WEB'),
(112, 112, 1, NULL, 'US_WEB'),
(113, 113, 181, NULL, 'US_WEB'),
(114, 114, 14, NULL, 'US_WEB'),
(115, 115, 979, NULL, 'US_WEB'),
(116, 116, 56, NULL, 'US_WEB'),
(117, 117, 329, NULL, 'US_WEB'),
(118, 118, 615, NULL, 'US_WEB'),
(119, 119, 787, NULL, 'US_WEB'),
(120, 120, 55, NULL, 'US_WEB'),
(121, 121, 290, NULL, 'US_WEB'),
(122, 122, 549, NULL, 'US_WEB'),
(123, 123, 732, NULL, 'US_WEB'),
(124, 124, 429, NULL, 'US_WEB'),
(125, 125, 884, NULL, 'US_WEB'),
(126, 126, 443, NULL, 'US_WEB'),
(127, 127, 874, NULL, 'US_WEB'),
(128, 128, 229, NULL, 'US_WEB'),
(129, 129, 932, NULL, 'US_WEB'),
(130, 130, 966, NULL, 'US_WEB'),
(131, 131, 388, NULL, 'US_WEB'),
(132, 132, 145, NULL, 'US_WEB'),
(133, 133, 577, NULL, 'US_WEB'),
(134, 134, 655, NULL, 'US_WEB'),
(135, 135, 579, NULL, 'US_WEB'),
(136, 136, 191, NULL, 'US_WEB'),
(137, 137, 36, NULL, 'US_WEB'),
(138, 138, 41, NULL, 'US_WEB'),
(139, 139, 457, NULL, 'US_WEB'),
(140, 140, 292, NULL, 'US_WEB'),
(141, 141, 793, NULL, 'US_WEB'),
(142, 142, 993, NULL, 'US_WEB'),
(143, 143, 88, NULL, 'US_WEB'),
(144, 144, 623, NULL, 'US_WEB'),
(145, 145, 235, NULL, 'US_WEB'),
(146, 146, 543, NULL, 'US_WEB'),
(147, 147, 8, NULL, 'US_WEB'),
(148, 148, 268, NULL, 'US_WEB'),
(149, 149, 96, NULL, 'US_WEB'),
(150, 150, 354, NULL, 'US_WEB'),
(151, 151, 673, NULL, 'US_WEB'),
(152, 152, 934, NULL, 'US_WEB'),
(153, 153, 223, NULL, 'US_WEB'),
(154, 154, 817, NULL, 'US_WEB'),
(155, 155, 568, NULL, 'US_WEB'),
(156, 156, 458, NULL, 'US_WEB'),
(157, 157, 424, NULL, 'US_WEB'),
(158, 158, 595, NULL, 'US_WEB'),
(159, 159, 843, NULL, 'US_WEB'),
(160, 160, 353, NULL, 'US_WEB'),
(161, 161, 476, NULL, 'US_WEB'),
(162, 162, 260, NULL, 'US_WEB'),
(163, 163, 453, NULL, 'US_WEB'),
(164, 164, 955, NULL, 'US_WEB'),
(165, 165, 128, NULL, 'US_WEB'),
(166, 166, 503, NULL, 'US_WEB'),
(167, 167, 878, NULL, 'US_WEB'),
(168, 168, 98, NULL, 'US_WEB'),
(169, 169, 628, NULL, 'US_WEB'),
(170, 170, 537, NULL, 'US_WEB'),
(171, 171, 759, NULL, 'US_WEB'),
(172, 172, 946, NULL, 'US_WEB'),
(173, 173, 968, NULL, 'US_WEB'),
(174, 174, 372, NULL, 'US_WEB'),
(175, 175, 622, NULL, 'US_WEB'),
(176, 176, 288, NULL, 'US_WEB'),
(177, 177, 468, NULL, 'US_WEB'),
(178, 178, 761, NULL, 'US_WEB'),
(179, 179, 299, NULL, 'US_WEB'),
(180, 180, 236, NULL, 'US_WEB'),
(181, 181, 733, NULL, 'US_WEB'),
(182, 182, 621, NULL, 'US_WEB'),
(183, 183, 722, NULL, 'US_WEB'),
(184, 184, 952, NULL, 'US_WEB'),
(185, 185, 452, NULL, 'US_WEB'),
(186, 186, 710, NULL, 'US_WEB'),
(187, 187, 775, NULL, 'US_WEB'),
(188, 188, 552, NULL, 'US_WEB'),
(189, 189, 739, NULL, 'US_WEB'),
(190, 190, 216, NULL, 'US_WEB'),
(191, 191, 592, NULL, 'US_WEB'),
(192, 192, 328, NULL, 'US_WEB'),
(193, 193, 645, NULL, 'US_WEB'),
(194, 194, 436, NULL, 'US_WEB'),
(195, 195, 80, NULL, 'US_WEB'),
(196, 196, 833, NULL, 'US_WEB'),
(197, 197, 466, NULL, 'US_WEB'),
(198, 198, 796, NULL, 'US_WEB'),
(199, 199, 9, NULL, 'US_WEB'),
(200, 200, 443, NULL, 'US_WEB'),
(201, 201, 43, NULL, 'US_WEB'),
(202, 202, 593, NULL, 'US_WEB'),
(203, 203, 70, NULL, 'US_WEB'),
(204, 204, 456, NULL, 'US_WEB'),
(205, 205, 827, NULL, 'US_WEB'),
(206, 206, 720, NULL, 'US_WEB'),
(207, 207, 219, NULL, 'US_WEB'),
(208, 208, 765, NULL, 'US_WEB'),
(209, 209, 99, NULL, 'US_WEB'),
(210, 210, 571, NULL, 'US_WEB'),
(211, 211, 66, NULL, 'US_WEB'),
(212, 212, 657, NULL, 'US_WEB'),
(213, 213, 591, NULL, 'US_WEB'),
(214, 214, 732, NULL, 'US_WEB'),
(215, 215, 823, NULL, 'US_WEB'),
(216, 216, 700, NULL, 'US_WEB'),
(217, 217, 696, NULL, 'US_WEB'),
(218, 218, 822, NULL, 'US_WEB'),
(219, 219, 486, NULL, 'US_WEB'),
(220, 220, 185, NULL, 'US_WEB'),
(221, 221, 357, NULL, 'US_WEB'),
(222, 222, 175, NULL, 'US_WEB'),
(223, 223, 35, NULL, 'US_WEB'),
(224, 224, 120, NULL, 'US_WEB'),
(225, 225, 254, NULL, 'US_WEB'),
(226, 226, 583, NULL, 'US_WEB'),
(227, 227, 671, NULL, 'US_WEB'),
(228, 228, 120, NULL, 'US_WEB'),
(229, 229, 585, NULL, 'US_WEB'),
(230, 230, 945, NULL, 'US_WEB'),
(231, 231, 170, NULL, 'US_WEB'),
(232, 232, 129, NULL, 'US_WEB'),
(233, 233, 819, NULL, 'US_WEB'),
(234, 234, 362, NULL, 'US_WEB'),
(235, 235, 702, NULL, 'US_WEB'),
(236, 236, 456, NULL, 'US_WEB'),
(237, 237, 235, NULL, 'US_WEB'),
(238, 238, 314, NULL, 'US_WEB'),
(239, 239, 730, NULL, 'US_WEB'),
(240, 240, 746, NULL, 'US_WEB'),
(241, 241, 566, NULL, 'US_WEB'),
(242, 242, 216, NULL, 'US_WEB'),
(243, 243, 888, NULL, 'US_WEB'),
(244, 244, 606, NULL, 'US_WEB'),
(245, 245, 38, NULL, 'US_WEB'),
(246, 246, 327, NULL, 'US_WEB'),
(247, 247, 987, NULL, 'US_WEB'),
(248, 248, 625, NULL, 'US_WEB'),
(249, 249, 685, NULL, 'US_WEB'),
(250, 250, 712, NULL, 'US_WEB'),
(251, 251, 493, NULL, 'US_WEB'),
(252, 252, 758, NULL, 'US_WEB'),
(253, 253, 922, NULL, 'US_WEB'),
(254, 254, 770, NULL, 'US_WEB'),
(255, 255, 410, NULL, 'US_WEB'),
(256, 256, 91, NULL, 'US_WEB'),
(257, 257, 961, NULL, 'US_WEB'),
(258, 258, 918, NULL, 'US_WEB'),
(259, 259, 827, NULL, 'US_WEB'),
(260, 260, 906, NULL, 'US_WEB'),
(261, 261, 227, NULL, 'US_WEB'),
(262, 262, 326, NULL, 'US_WEB'),
(263, 263, 169, NULL, 'US_WEB'),
(264, 264, 817, NULL, 'US_WEB'),
(265, 265, 153, NULL, 'US_WEB'),
(266, 266, 223, NULL, 'US_WEB'),
(267, 267, 617, NULL, 'US_WEB'),
(268, 268, 677, NULL, 'US_WEB'),
(269, 269, 828, NULL, 'US_WEB'),
(270, 270, 116, NULL, 'US_WEB'),
(271, 271, 131, NULL, 'US_WEB'),
(272, 272, 535, NULL, 'US_WEB'),
(273, 273, 909, NULL, 'US_WEB'),
(274, 274, 433, NULL, 'US_WEB'),
(275, 275, 68, NULL, 'US_WEB'),
(276, 276, 24, NULL, 'US_WEB'),
(277, 277, 198, NULL, 'US_WEB'),
(278, 278, 972, NULL, 'US_WEB'),
(279, 279, 4, NULL, 'US_WEB'),
(280, 280, 30, NULL, 'US_WEB'),
(281, 281, 604, NULL, 'US_WEB'),
(282, 282, 699, NULL, 'US_WEB'),
(283, 283, 388, NULL, 'US_WEB'),
(284, 284, 964, NULL, 'US_WEB'),
(285, 285, 968, NULL, 'US_WEB'),
(286, 286, 438, NULL, 'US_WEB'),
(287, 287, 675, NULL, 'US_WEB'),
(288, 288, 5, NULL, 'US_WEB'),
(289, 289, 63, NULL, 'US_WEB'),
(290, 290, 929, NULL, 'US_WEB'),
(291, 291, 456, NULL, 'US_WEB'),
(292, 292, 474, NULL, 'US_WEB'),
(293, 293, 84, NULL, 'US_WEB'),
(294, 294, 397, NULL, 'US_WEB'),
(295, 295, 799, NULL, 'US_WEB'),
(296, 296, 832, NULL, 'US_WEB'),
(297, 297, 406, NULL, 'US_WEB'),
(298, 298, 748, NULL, 'US_WEB'),
(299, 299, 896, NULL, 'US_WEB'),
(300, 300, 746, NULL, 'US_WEB'),
(301, 301, 440, NULL, 'US_WEB'),
(302, 302, 472, NULL, 'US_WEB'),
(303, 303, 49, NULL, 'US_WEB'),
(304, 304, 562, NULL, 'US_WEB'),
(305, 305, 337, NULL, 'US_WEB'),
(306, 306, 286, NULL, 'US_WEB'),
(307, 307, 782, NULL, 'US_WEB'),
(308, 308, 386, NULL, 'US_WEB'),
(309, 309, 560, NULL, 'US_WEB'),
(310, 310, 934, NULL, 'US_WEB'),
(311, 311, 563, NULL, 'US_WEB'),
(312, 312, 956, NULL, 'US_WEB'),
(313, 313, 941, NULL, 'US_WEB'),
(314, 314, 29, NULL, 'US_WEB'),
(315, 315, 897, NULL, 'US_WEB'),
(316, 316, 650, NULL, 'US_WEB'),
(317, 317, 314, NULL, 'US_WEB'),
(318, 318, 194, NULL, 'US_WEB'),
(319, 319, 820, NULL, 'US_WEB'),
(320, 320, 774, NULL, 'US_WEB'),
(321, 321, 268, NULL, 'US_WEB'),
(322, 322, 929, NULL, 'US_WEB'),
(323, 323, 367, NULL, 'US_WEB'),
(324, 324, 31, NULL, 'US_WEB'),
(325, 325, 650, NULL, 'US_WEB'),
(326, 326, 302, NULL, 'US_WEB'),
(327, 327, 612, NULL, 'US_WEB'),
(328, 328, 355, NULL, 'US_WEB'),
(329, 329, 472, NULL, 'US_WEB'),
(330, 330, 509, NULL, 'US_WEB'),
(331, 331, 3000, NULL, 'US_WEB');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_country`
--

INSERT INTO `sylius_country` (`id`, `code`, `enabled`) VALUES
(1, 'US', 1);

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
(1, 'USD', '2019-04-16 08:45:21', '2019-04-16 08:45:21'),
(2, 'EUR', '2019-04-16 08:46:19', '2019-04-16 08:46:19');

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
(1, 2, NULL, 'shop@example.com', 'shop@example.com', 'John', 'Doe', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(2, 1, NULL, 'johnston.clint@yahoo.com', 'johnston.clint@yahoo.com', 'Rafael', 'Abshire', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(3, 1, NULL, 'kemmer.leland@dicki.info', 'kemmer.leland@dicki.info', 'Anabel', 'Howell', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(4, 1, NULL, 'leanne65@kuphal.com', 'leanne65@kuphal.com', 'Frederik', 'Crooks', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(5, 2, NULL, 'nrutherford@cummings.com', 'nrutherford@cummings.com', 'Carley', 'Tremblay', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(6, 1, NULL, 'virgie.toy@hotmail.com', 'virgie.toy@hotmail.com', 'Hollie', 'Murphy', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(7, 2, NULL, 'kiehn.maudie@hotmail.com', 'kiehn.maudie@hotmail.com', 'Darryl', 'O\'Connell', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(8, 2, NULL, 'sflatley@yahoo.com', 'sflatley@yahoo.com', 'Mauricio', 'Klocko', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(9, 2, NULL, 'green.myriam@hotmail.com', 'green.myriam@hotmail.com', 'Jasper', 'Moore', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(10, 2, NULL, 'khowe@yahoo.com', 'khowe@yahoo.com', 'Reggie', 'Reichel', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(11, 1, NULL, 'paucek.carlo@gmail.com', 'paucek.carlo@gmail.com', 'Buck', 'Parker', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(12, 1, NULL, 'araceli65@morar.biz', 'araceli65@morar.biz', 'Kyra', 'Johns', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(13, 1, NULL, 'qtoy@hotmail.com', 'qtoy@hotmail.com', 'Jaleel', 'Kautzer', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(14, 1, NULL, 'gaylord39@hotmail.com', 'gaylord39@hotmail.com', 'Jaqueline', 'Kulas', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(15, 1, NULL, 'vkertzmann@grant.com', 'vkertzmann@grant.com', 'Branson', 'Schroeder', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(16, 2, NULL, 'xeichmann@langosh.org', 'xeichmann@langosh.org', 'Jaycee', 'Kirlin', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(17, 2, NULL, 'isabell.hessel@gmail.com', 'isabell.hessel@gmail.com', 'Estevan', 'Collier', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(18, 2, NULL, 'andreanne.willms@nolan.com', 'andreanne.willms@nolan.com', 'Arlo', 'O\'Hara', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(19, 2, NULL, 'brekke.casimer@swift.com', 'brekke.casimer@swift.com', 'Melvina', 'Koelpin', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(20, 2, NULL, 'enikolaus@hotmail.com', 'enikolaus@hotmail.com', 'Joesph', 'Denesik', NULL, 'u', '2019-04-16 08:45:23', '2019-04-16 08:45:23', NULL, 0),
(21, 1, NULL, 'emmet.farrell@abernathy.net', 'emmet.farrell@abernathy.net', 'Quentin', 'Ankunding', NULL, 'u', '2019-04-16 08:45:24', '2019-04-16 08:45:24', NULL, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_locale`
--

INSERT INTO `sylius_locale` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en_US', '2019-04-16 08:45:21', '2019-04-16 08:45:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order`
--

INSERT INTO `sylius_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`) VALUES
(1, 2, 3, 1, NULL, 11, '000000001', 'Natus cum quia et eos quos nihil ratione.', 'new', '2019-04-16 08:45:44', 3724, 3962, 7686, '2019-04-16 08:45:42', '2019-04-16 08:45:44', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'abT-zTEBsL', NULL),
(2, 5, 6, 1, NULL, 12, '000000002', NULL, 'new', '2019-04-16 08:45:46', 1966, 7625, 9591, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'btPAqq8qTi', NULL),
(3, 8, 9, 1, NULL, 8, '000000003', 'Earum at possimus quis.', 'new', '2019-04-16 08:45:46', 796, 8666, 9462, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'EX29-Nt~5M', NULL),
(4, 11, 12, 1, NULL, 4, '000000004', NULL, 'new', '2019-04-16 08:45:46', 10807, 7625, 18432, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'DcE0adgt8M', NULL),
(5, 14, 15, 1, NULL, 18, '000000005', NULL, 'new', '2019-04-16 08:45:46', 2780, 3962, 6742, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '-CN-eavCNq', NULL),
(6, 17, 18, 1, NULL, 1, '000000006', NULL, 'new', '2019-04-16 08:45:46', 3628, 8666, 12294, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'q1LQetEKGS', NULL),
(7, 20, 21, 1, NULL, 1, '000000007', NULL, 'new', '2019-04-16 08:45:46', 3076, 7625, 10701, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'twRFCQ-8ej', NULL),
(8, 23, 24, 1, NULL, 15, '000000008', NULL, 'new', '2019-04-16 08:45:46', 4092, 7625, 11717, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'YgrFCg9Lbj', NULL),
(9, 26, 27, 1, NULL, 21, '000000009', NULL, 'new', '2019-04-16 08:45:46', 10001, 8666, 18667, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'XsXrFuFS5-', NULL),
(10, 29, 30, 1, NULL, 17, '000000010', NULL, 'new', '2019-04-16 08:45:46', 4370, 8666, 13036, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'QRMibkbe4h', NULL),
(11, 32, 33, 1, NULL, 7, '000000011', NULL, 'new', '2019-04-16 08:45:46', 105, 8666, 8771, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'Wa85ShQ-hN', NULL),
(12, 35, 36, 1, NULL, 19, '000000012', NULL, 'new', '2019-04-16 08:45:46', 3826, 7625, 11451, '2019-04-16 08:45:46', '2019-04-16 08:45:46', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'LWYs5O5hnO', NULL),
(13, 38, 39, 1, NULL, 21, '000000013', NULL, 'new', '2019-04-16 08:45:47', 1182, 7625, 8807, '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'AkEwBBWbP6', NULL),
(14, 41, 42, 1, NULL, 3, '000000014', 'Sapiente dolor minima ipsam et inventore dolores corporis.', 'new', '2019-04-16 08:45:47', 1313, 3962, 5275, '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'AIe8zOQ9nh', NULL),
(15, 44, 45, 1, NULL, 17, '000000015', 'Ut rem vero ducimus incidunt aspernatur.', 'new', '2019-04-16 08:45:47', 4946, 3962, 8908, '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '-_r0XYzUMT', NULL),
(16, 47, 48, 1, NULL, 10, '000000016', NULL, 'new', '2019-04-16 08:45:47', 2412, 3962, 6374, '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'zx1Hp6zmyh', NULL),
(17, 50, 51, 1, NULL, 5, '000000017', NULL, 'new', '2019-04-16 08:45:47', 2485, 3962, 6447, '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'v98nJPdYFz', NULL),
(18, 53, 54, 1, NULL, 1, '000000018', NULL, 'new', '2019-04-16 08:45:47', 2355, 8666, 11021, '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'KJFmJ~gW0R', NULL),
(19, 56, 57, 1, NULL, 10, '000000019', NULL, 'new', '2019-04-16 08:45:47', 3726, 7625, 11351, '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'bImeLSx3PI', NULL),
(20, 59, 60, 1, NULL, 10, '000000020', NULL, 'new', '2019-04-16 08:45:47', 4287, 7625, 11912, '2019-04-16 08:45:47', '2019-04-16 08:45:47', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'jNo5~R3Tie', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_item`
--

INSERT INTO `sylius_order_item` (`id`, `order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`) VALUES
(1, 1, 16, 5, 558, 2790, 0, 2790, 0, 'Mug \"in\"', 'nihil'),
(2, 1, 310, 1, 934, 934, 0, 934, 0, 'T-Shirt \"fuga\"', 'cum'),
(3, 2, 47, 3, 331, 507, 0, 507, 0, 'Sticker \"quia\"', 'est'),
(4, 2, 97, 3, 823, 1259, 0, 1259, 0, 'Book \"quis\" by Name Kirlin V', 'accusantium'),
(5, 2, 49, 3, 131, 200, 0, 200, 0, 'Sticker \"et\"', 'eveniet'),
(6, 3, 20, 4, 199, 796, 0, 796, 0, 'Mug \"minima\"', 'eum'),
(7, 4, 93, 2, 756, 1385, 0, 1385, 0, 'Book \"aspernatur\" by Ines Smitham', 'amet'),
(8, 4, 243, 4, 888, 3251, 0, 3251, 0, 'T-Shirt \"qui\"', 'qui'),
(9, 4, 86, 4, 486, 1779, 0, 1779, 0, 'Sticker \"pariatur\"', 'omnis'),
(10, 4, 95, 1, 609, 557, 0, 557, 0, 'Book \"vero\" by Sydnee Stanton IV', 'reiciendis'),
(11, 4, 99, 5, 838, 3835, 0, 3835, 0, 'Book \"minus\" by Wallace Jacobson V', 'nisi'),
(12, 5, 105, 4, 44, 90, 0, 90, 0, 'Book \"sit\" by Reggie Huel', 'sed'),
(13, 5, 46, 3, 287, 439, 0, 439, 0, 'Sticker \"quia\"', 'omnis'),
(14, 5, 21, 1, 784, 400, 0, 400, 0, 'Mug \"minima\"', 'soluta'),
(15, 5, 267, 5, 617, 1573, 0, 1573, 0, 'T-Shirt \"rerum\"', 'quis'),
(16, 5, 9, 1, 545, 278, 0, 278, 0, 'Mug \"amet\"', 'veniam'),
(17, 6, 96, 1, 843, 843, 0, 843, 0, 'Book \"mollitia\" by Hannah Huel MD', 'et'),
(18, 6, 23, 2, 903, 1806, 0, 1806, 0, 'Mug \"animi\"', 'dolor'),
(19, 6, 115, 1, 979, 979, 0, 979, 0, 'T-Shirt \"nihil\"', 'labore'),
(20, 7, 55, 2, 525, 535, 0, 535, 0, 'Sticker \"iusto\"', 'repudiandae'),
(21, 7, 99, 4, 838, 1710, 0, 1710, 0, 'Book \"minus\" by Wallace Jacobson V', 'nisi'),
(22, 7, 50, 1, 972, 496, 0, 496, 0, 'Sticker \"et\"', 'error'),
(23, 7, 74, 3, 219, 335, 0, 335, 0, 'Sticker \"ab\"', 'sit'),
(24, 8, 41, 3, 878, 2634, 0, 2634, 0, 'Mug \"libero\"', 'tempore'),
(25, 8, 86, 3, 486, 1458, 0, 1458, 0, 'Sticker \"pariatur\"', 'omnis'),
(26, 9, 52, 4, 161, 586, 0, 586, 0, 'Sticker \"sunt\"', 'eos'),
(27, 9, 78, 2, 604, 1098, 0, 1098, 0, 'Sticker \"modi\"', 'sint'),
(28, 9, 143, 3, 88, 240, 0, 240, 0, 'T-Shirt \"dolorum\"', 'est'),
(29, 9, 257, 5, 961, 4368, 0, 4368, 0, 'T-Shirt \"rerum\"', 'laborum'),
(30, 9, 64, 5, 816, 3709, 0, 3709, 0, 'Sticker \"expedita\"', 'nemo'),
(31, 10, 20, 1, 199, 199, 0, 199, 0, 'Mug \"minima\"', 'eum'),
(32, 10, 60, 3, 827, 2481, 0, 2481, 0, 'Sticker \"ea\"', 'id'),
(33, 10, 6, 2, 845, 1690, 0, 1690, 0, 'Mug \"hic\"', 'totam'),
(34, 11, 36, 3, 35, 105, 0, 105, 0, 'Mug \"non\"', 'facere'),
(35, 12, 61, 4, 788, 1607, 0, 1607, 0, 'Sticker \"a\"', 'fugit'),
(36, 12, 69, 2, 80, 82, 0, 82, 0, 'Sticker \"omnis\"', 'eaque'),
(37, 12, 99, 5, 838, 2137, 0, 2137, 0, 'Book \"minus\" by Wallace Jacobson V', 'nisi'),
(38, 13, 213, 2, 591, 1182, 0, 1182, 0, 'T-Shirt \"quaerat\"', 'quo'),
(39, 14, 19, 1, 253, 129, 0, 129, 0, 'Mug \"minima\"', 'odio'),
(40, 14, 51, 5, 254, 648, 0, 648, 0, 'Sticker \"et\"', 'quam'),
(41, 14, 97, 1, 823, 420, 0, 420, 0, 'Book \"quis\" by Name Kirlin V', 'accusantium'),
(42, 14, 17, 2, 114, 116, 0, 116, 0, 'Mug \"in\"', 'unde'),
(43, 15, 99, 5, 838, 4190, 0, 4190, 0, 'Book \"minus\" by Wallace Jacobson V', 'nisi'),
(44, 15, 93, 1, 756, 756, 0, 756, 0, 'Book \"aspernatur\" by Ines Smitham', 'amet'),
(45, 16, 35, 4, 300, 1200, 0, 1200, 0, 'Mug \"non\"', 'dolorem'),
(46, 16, 244, 2, 606, 1212, 0, 1212, 0, 'T-Shirt \"qui\"', 'dolore'),
(47, 17, 91, 3, 711, 2133, 0, 2133, 0, 'Book \"beatae\" by Howell Langosh', 'et'),
(48, 17, 66, 4, 88, 352, 0, 352, 0, 'Sticker \"expedita\"', 'illum'),
(49, 18, 57, 3, 785, 2355, 0, 2355, 0, 'Sticker \"iusto\"', 'voluptatem'),
(50, 19, 63, 2, 804, 820, 0, 820, 0, 'Sticker \"a\"', 'rerum'),
(51, 19, 100, 5, 700, 1785, 0, 1785, 0, 'Book \"quaerat\" by Walton Dare', 'expedita'),
(52, 19, 313, 2, 941, 960, 0, 960, 0, 'T-Shirt \"fuga\"', 'non'),
(53, 19, 56, 1, 316, 161, 0, 161, 0, 'Sticker \"iusto\"', 'cupiditate'),
(54, 20, 93, 3, 756, 2268, 0, 2268, 0, 'Book \"aspernatur\" by Ines Smitham', 'amet'),
(55, 20, 49, 1, 131, 131, 0, 131, 0, 'Sticker \"et\"', 'eveniet'),
(56, 20, 329, 4, 472, 1888, 0, 1888, 0, 'T-Shirt \"enim\"', 'est');

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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_item_unit`
--

INSERT INTO `sylius_order_item_unit` (`id`, `order_item_id`, `shipment_id`, `adjustments_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2019-04-16 08:45:43', '2019-04-16 08:45:44'),
(2, 1, 1, 0, '2019-04-16 08:45:43', '2019-04-16 08:45:44'),
(3, 1, 1, 0, '2019-04-16 08:45:43', '2019-04-16 08:45:44'),
(4, 1, 1, 0, '2019-04-16 08:45:43', '2019-04-16 08:45:44'),
(5, 1, 1, 0, '2019-04-16 08:45:43', '2019-04-16 08:45:44'),
(6, 2, 1, 0, '2019-04-16 08:45:43', '2019-04-16 08:45:44'),
(7, 3, 2, -162, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(8, 3, 2, -162, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(9, 3, 2, -162, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(10, 4, 2, -404, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(11, 4, 2, -403, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(12, 4, 2, -403, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(13, 5, 2, -65, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(14, 5, 2, -64, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(15, 5, 2, -64, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(16, 6, 3, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(17, 6, 3, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(18, 6, 3, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(19, 6, 3, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(20, 7, 4, -64, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(21, 7, 4, -63, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(22, 8, 4, -76, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(23, 8, 4, -75, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(24, 8, 4, -75, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(25, 8, 4, -75, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(26, 9, 4, -42, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(27, 9, 4, -41, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(28, 9, 4, -41, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(29, 9, 4, -41, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(30, 10, 4, -52, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(31, 11, 4, -71, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(32, 11, 4, -71, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(33, 11, 4, -71, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(34, 11, 4, -71, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(35, 11, 4, -71, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(36, 12, 5, -22, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(37, 12, 5, -22, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(38, 12, 5, -21, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(39, 12, 5, -21, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(40, 13, 5, -141, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(41, 13, 5, -141, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(42, 13, 5, -140, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(43, 14, 5, -384, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(44, 15, 5, -303, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(45, 15, 5, -303, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(46, 15, 5, -302, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(47, 15, 5, -302, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(48, 15, 5, -302, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(49, 16, 5, -267, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(50, 17, 6, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(51, 18, 6, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(52, 18, 6, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(53, 19, 6, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(54, 20, 7, -258, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(55, 20, 7, -257, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(56, 21, 7, -411, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(57, 21, 7, -411, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(58, 21, 7, -410, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(59, 21, 7, -410, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(60, 22, 7, -476, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(61, 23, 7, -108, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(62, 23, 7, -107, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(63, 23, 7, -107, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(64, 24, 8, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(65, 24, 8, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(66, 24, 8, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(67, 25, 8, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(68, 25, 8, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(69, 25, 8, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(70, 26, 9, -15, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(71, 26, 9, -15, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(72, 26, 9, -14, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(73, 26, 9, -14, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(74, 27, 9, -55, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(75, 27, 9, -55, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(76, 28, 9, -8, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(77, 28, 9, -8, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(78, 28, 9, -8, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(79, 29, 9, -88, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(80, 29, 9, -88, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(81, 29, 9, -87, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(82, 29, 9, -87, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(83, 29, 9, -87, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(84, 30, 9, -75, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(85, 30, 9, -74, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(86, 30, 9, -74, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(87, 30, 9, -74, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(88, 30, 9, -74, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(89, 31, 10, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(90, 32, 10, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(91, 32, 10, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(92, 32, 10, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(93, 33, 10, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(94, 33, 10, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(95, 34, 11, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(96, 34, 11, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(97, 34, 11, 0, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(98, 35, 12, -387, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(99, 35, 12, -386, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(100, 35, 12, -386, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(101, 35, 12, -386, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(102, 36, 12, -39, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(103, 36, 12, -39, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(104, 37, 12, -411, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(105, 37, 12, -411, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(106, 37, 12, -411, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(107, 37, 12, -410, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(108, 37, 12, -410, '2019-04-16 08:45:46', '2019-04-16 08:45:47'),
(109, 38, 13, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(110, 38, 13, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(111, 39, 14, -124, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(112, 40, 14, -125, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(113, 40, 14, -125, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(114, 40, 14, -124, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(115, 40, 14, -124, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(116, 40, 14, -124, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(117, 41, 14, -403, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(118, 42, 14, -56, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(119, 42, 14, -56, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(120, 43, 15, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(121, 43, 15, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(122, 43, 15, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(123, 43, 15, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(124, 43, 15, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(125, 44, 15, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(126, 45, 16, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(127, 45, 16, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(128, 45, 16, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(129, 45, 16, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(130, 46, 16, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(131, 46, 16, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(132, 47, 17, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(133, 47, 17, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(134, 47, 17, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(135, 48, 17, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(136, 48, 17, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(137, 48, 17, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(138, 48, 17, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(139, 49, 18, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(140, 49, 18, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(141, 49, 18, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(142, 50, 19, -394, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(143, 50, 19, -394, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(144, 51, 19, -343, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(145, 51, 19, -343, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(146, 51, 19, -343, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(147, 51, 19, -343, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(148, 51, 19, -343, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(149, 52, 19, -461, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(150, 52, 19, -461, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(151, 53, 19, -155, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(152, 54, 20, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(153, 54, 20, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(154, 54, 20, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(155, 55, 20, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(156, 56, 20, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(157, 56, 20, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(158, 56, 20, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(159, 56, 20, 0, '2019-04-16 08:45:47', '2019-04-16 08:45:47');

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
(1, 2, 1, 'USD', 7686, 'new', '[]', '2019-04-16 08:45:44', '2019-04-16 08:45:44'),
(2, 2, 2, 'USD', 9591, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(3, 2, 3, 'USD', 9462, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(4, 2, 4, 'USD', 18432, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(5, 1, 5, 'USD', 6742, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(6, 1, 6, 'USD', 12294, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(7, 2, 7, 'USD', 10701, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(8, 2, 8, 'USD', 11717, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(9, 2, 9, 'USD', 18667, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(10, 2, 10, 'USD', 13036, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(11, 2, 11, 'USD', 8771, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(12, 1, 12, 'USD', 11451, 'new', '[]', '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(13, 2, 13, 'USD', 8807, 'new', '[]', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(14, 2, 14, 'USD', 5275, 'new', '[]', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(15, 2, 15, 'USD', 8908, 'new', '[]', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(16, 1, 16, 'USD', 6374, 'new', '[]', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(17, 1, 17, 'USD', 6447, 'new', '[]', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(18, 2, 18, 'USD', 11021, 'new', '[]', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(19, 2, 19, 'USD', 11351, 'new', '[]', '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(20, 1, 20, 'USD', 11912, 'new', '[]', '2019-04-16 08:45:47', '2019-04-16 08:45:47');

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
(1, 1, 'cash_on_delivery', NULL, 1, 0, '2019-04-16 08:45:22', '2019-04-16 08:45:22'),
(2, 2, 'bank_transfer', NULL, 1, 1, '2019-04-16 08:45:23', '2019-04-16 08:45:23');

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
(1, 1, 'Cash on delivery', 'Quasi aut dolorem iure suscipit et a.', NULL, 'en_US'),
(2, 2, 'Bank transfer', 'Quia rerum blanditiis consequatur blanditiis ut sed neque iste.', NULL, 'en_US');

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
(1, 2, '0eaddb2b-8f16-365d-bfdd-626d6f002f25', '2019-04-11 08:02:53', '2019-04-16 08:45:40', 1, 'match', 5),
(2, 2, 'd6f4a86b-73f3-34db-88f8-f92af7b0a432', '2019-04-11 14:31:34', '2019-04-16 08:45:26', 1, 'match', 0),
(3, 2, '94d9c54c-f29e-3a40-8222-b02e36b45ae8', '2019-04-15 06:29:49', '2019-04-16 08:45:26', 1, 'match', 0),
(4, 2, 'c58db187-9723-3a6d-a216-5337f765374c', '2019-04-09 09:33:59', '2019-04-16 08:45:26', 0, 'match', 0),
(5, 2, '8f718d70-74c9-38ff-a26b-dd0905a6b01a', '2019-04-14 16:35:46', '2019-04-16 08:45:27', 0, 'match', 0),
(6, 2, '0aef05ab-a37f-3eca-af5f-9e0125cede17', '2019-04-16 06:04:49', '2019-04-16 08:45:27', 1, 'match', 0),
(7, 2, '65944ec8-ac24-341d-92a8-029f0cc1a619', '2019-04-15 12:44:10', '2019-04-16 08:45:27', 1, 'match', 0),
(8, 2, '0f1ecc98-3f99-31df-9335-c0dc7420f330', '2019-04-12 21:39:17', '2019-04-16 08:45:27', 1, 'match', 0),
(9, 2, '28c54dcb-bb9f-347e-8972-bb328fdc46db', '2019-04-13 15:13:13', '2019-04-16 08:45:27', 1, 'match', 0),
(10, 2, 'e5de9503-667d-3447-bead-2e75a52e9e25', '2019-04-14 19:14:00', '2019-04-16 08:45:27', 1, 'match', 0),
(11, 2, 'b281e881-67e0-3bc2-ba82-2fe7818bfe64', '2019-04-09 16:32:43', '2019-04-16 08:45:29', 1, 'match', 0),
(12, 2, 'a101c1cf-3030-3c36-8cd9-1132f438dedb', '2019-04-12 08:33:21', '2019-04-16 08:45:29', 1, 'match', 0),
(13, 2, '60e1839d-5dc7-38cd-b36e-6fd6d2fba3b8', '2019-04-14 01:49:38', '2019-04-16 08:45:29', 1, 'match', 0),
(14, 2, 'e6f22f6f-8148-35d5-beab-5e9c083d44dc', '2019-04-13 10:44:30', '2019-04-16 08:45:39', 1, 'match', 4),
(15, 2, 'eb2484d8-6719-36d9-9805-4d04cf61e7eb', '2019-04-12 09:11:19', '2019-04-16 08:45:30', 1, 'match', 0),
(16, 3, 'be34ae67-f567-3de7-80cb-7c3c178df071', '2019-04-13 22:47:04', '2019-04-16 08:45:31', 1, 'choice', 0),
(17, 3, '51c58de4-e9ff-3032-b1dd-38919c69e15c', '2019-04-15 15:09:14', '2019-04-16 08:45:40', 1, 'choice', 4),
(18, 3, 'ff3e249e-068c-32ec-9069-3af03cdc1522', '2019-04-12 15:24:15', '2019-04-16 08:45:31', 1, 'choice', 0),
(19, 3, '4a5b04c1-3129-3532-adb9-bc507a9ed331', '2019-04-15 02:48:24', '2019-04-16 08:45:31', 1, 'choice', 0),
(20, 3, 'a708c9f5-43a6-317f-ab4c-43a41b5f10cf', '2019-04-09 14:26:54', '2019-04-16 08:45:31', 1, 'choice', 0),
(21, 3, 'd23e9121-d1cd-3e7f-9184-7e2f6dee8a12', '2019-04-14 08:04:04', '2019-04-16 08:45:31', 1, 'choice', 0),
(22, 3, '5c9b77d7-474a-3225-b0da-d4e10098b63d', '2019-04-10 06:31:45', '2019-04-16 08:45:31', 1, 'choice', 0),
(23, 3, '11f3745f-31fe-3c13-8c58-82835f35c879', '2019-04-15 15:35:08', '2019-04-16 08:45:31', 0, 'choice', 0),
(24, 3, 'a25b3fcb-3a6c-3c27-8800-c879073362f5', '2019-04-15 21:23:03', '2019-04-16 08:45:31', 1, 'choice', 0),
(25, 3, '390fe847-e0e2-3503-a04b-2af2d2dbc084', '2019-04-11 03:18:32', '2019-04-16 08:45:40', 1, 'choice', 2),
(26, 3, '777fe67a-b89a-360b-b506-9589f55d6004', '2019-04-10 17:28:05', '2019-04-16 08:45:39', 1, 'choice', 4),
(27, 3, '462be262-8713-3bed-91e5-be58858fd04b', '2019-04-12 02:04:58', '2019-04-16 08:45:31', 1, 'choice', 0),
(28, 3, '15521b70-21f9-33b7-9a4c-19c54c4f879f', '2019-04-10 16:53:27', '2019-04-16 08:45:31', 1, 'choice', 0),
(29, 3, '81c8db23-4fbb-3643-81c7-7ebb8e7feacc', '2019-04-10 01:26:29', '2019-04-16 08:45:31', 1, 'choice', 0),
(30, 3, '398fa274-d183-35bf-b840-155892e5596b', '2019-04-12 13:10:52', '2019-04-16 08:45:31', 1, 'choice', 0),
(31, 4, '68b899cf-6b02-3ba2-a86b-bd0a0b21b92b', '2019-04-14 20:20:09', '2019-04-16 08:45:32', 0, 'match', 0),
(32, 4, '342107c1-1cd1-3c10-bcb1-edec821ea097', '2019-04-09 17:38:42', '2019-04-16 08:45:40', 1, 'match', 4),
(33, 4, '8b522983-fb87-3b41-b5ea-0174e85b2cfc', '2019-04-13 16:47:47', '2019-04-16 08:45:32', 1, 'match', 0),
(34, 4, '2983f72e-9b06-3fe2-9be6-d851a2e28263', '2019-04-13 17:08:31', '2019-04-16 08:45:41', 1, 'match', 4),
(35, 4, 'cbf4aeb9-ded0-3fd9-803a-e615244566d9', '2019-04-15 10:24:59', '2019-04-16 08:45:32', 1, 'match', 0),
(36, 4, 'cecda901-0ac2-3af2-8bf4-467a6474c5fb', '2019-04-11 23:13:13', '2019-04-16 09:40:31', 0, 'match', 0),
(37, 4, '55fac4fb-c47f-3ff0-9a26-bbe62db39eb1', '2019-04-09 22:22:13', '2019-04-16 08:45:32', 1, 'match', 0),
(38, 4, '29ca0620-4be5-37cf-99a0-92173c00aa10', '2019-04-09 20:37:02', '2019-04-16 08:45:32', 1, 'match', 0),
(39, 4, '70452341-9859-3fe5-8b7e-787d9d71f656', '2019-04-12 06:45:12', '2019-04-16 08:45:32', 0, 'match', 0),
(40, 4, '68050b0f-e4a7-316e-a526-b80cbead0e29', '2019-04-10 04:00:05', '2019-04-16 08:45:32', 0, 'match', 0),
(41, 4, '98387692-7802-3552-9bbc-a7cebe11c85d', '2019-04-13 04:18:51', '2019-04-16 08:45:33', 0, 'match', 0),
(42, 4, '6a618af3-b822-30f7-8ca1-1dbbc0f49193', '2019-04-10 13:57:58', '2019-04-16 08:45:33', 1, 'match', 0),
(43, 4, '1c17a9cf-bd4a-3d53-8260-f31b8e85dd26', '2019-04-14 03:16:02', '2019-04-16 08:45:33', 1, 'match', 0),
(44, 4, '597c3e3b-49d7-3192-b558-363940f08a93', '2019-04-11 06:44:35', '2019-04-16 08:45:33', 0, 'match', 0),
(45, 4, 'fd00e600-1805-3465-986b-04299fb1848d', '2019-04-12 03:06:04', '2019-04-16 08:45:40', 1, 'match', 5),
(46, 6, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123', '2019-04-15 16:10:53', '2019-04-16 08:45:34', 0, 'match', 0),
(47, 7, 'd63a2b8c-f310-345b-b167-4741699269f5', '2019-04-09 16:40:54', '2019-04-16 08:45:34', 1, 'match', 0),
(48, 7, 'aed41a28-3065-33b6-ae4e-8d63e43dda60', '2019-04-15 23:44:19', '2019-04-16 08:45:34', 1, 'match', 0),
(49, 7, '3f408e3d-09d4-398e-9339-f4d093a2b066', '2019-04-10 09:01:09', '2019-04-16 08:45:34', 1, 'match', 0),
(50, 6, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613', '2019-04-10 11:06:06', '2019-04-16 08:45:34', 1, 'match', 0),
(51, 6, '3e4b19aa-1103-3cc4-961b-290cd06989c9', '2019-04-14 21:06:20', '2019-04-16 08:45:34', 1, 'match', 0),
(52, 7, '5b4f6601-ca13-3003-9a5a-efedffd3e172', '2019-04-10 04:00:30', '2019-04-16 08:45:35', 1, 'match', 0),
(53, 6, '626a8f13-26ab-3848-82a6-aaf9e2f584dc', '2019-04-13 18:46:56', '2019-04-16 08:45:35', 1, 'match', 0),
(54, 6, '7d46284d-69cc-34e7-8406-f31ec1283703', '2019-04-13 02:38:16', '2019-04-16 08:45:35', 1, 'match', 0),
(55, 7, 'd4d918df-aefb-3577-871c-625453e89f0e', '2019-04-11 09:57:39', '2019-04-16 08:45:35', 1, 'match', 0),
(56, 7, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65', '2019-04-11 07:48:15', '2019-04-16 08:45:37', 1, 'match', 0),
(57, 6, '048fc994-0ecd-3091-8b6d-d1f3448dded4', '2019-04-10 15:38:34', '2019-04-16 08:45:41', 1, 'match', 1.6666666666667),
(58, 7, '105de7d3-a013-38e5-b0be-cc1a09d243b9', '2019-04-11 05:47:21', '2019-04-16 08:45:40', 1, 'match', 3),
(59, 7, '037a5711-22a0-3ee9-928f-ddde9208857a', '2019-04-12 03:06:20', '2019-04-16 08:45:38', 1, 'match', 0),
(60, 6, '3a457321-1d59-3de2-ab5f-e9077aa55930', '2019-04-14 17:15:05', '2019-04-16 08:45:38', 1, 'match', 0),
(61, NULL, 'V001', '2019-04-16 09:31:03', '2019-04-16 09:31:19', 1, 'choice', 0);

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
(1, 1, 10, '2019-04-16 08:45:42', '2019-04-16 08:45:42'),
(2, 1, 46, '2019-04-16 08:45:42', '2019-04-16 08:45:42'),
(3, 1, 3, '2019-04-16 08:45:42', '2019-04-16 08:45:42'),
(4, 1, 42, '2019-04-16 08:45:42', '2019-04-16 08:45:42'),
(5, 1, 21, '2019-04-16 08:45:42', '2019-04-16 08:45:42'),
(6, 1, 31, '2019-04-16 08:45:42', '2019-04-16 08:45:42'),
(7, 1, 4, '2019-04-16 08:45:42', '2019-04-16 08:45:42'),
(8, 1, 36, '2019-04-16 08:45:42', '2019-04-16 09:40:31'),
(9, 1, 56, '2019-04-16 08:45:42', '2019-04-16 08:45:42'),
(10, 1, 19, '2019-04-16 08:45:42', '2019-04-16 08:45:42');

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
(1, 8),
(1, 9),
(1, 14),
(2, 50),
(2, 51),
(2, 60),
(3, 3),
(3, 4),
(3, 11),
(4, 41),
(4, 44),
(4, 45),
(5, 16),
(5, 18),
(5, 28),
(6, 32),
(6, 39),
(6, 44),
(7, 2),
(7, 6),
(7, 14),
(8, 31),
(8, 34),
(8, 40),
(9, 52),
(9, 55),
(9, 56),
(10, 16),
(10, 25),
(10, 27);

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
(1, 'similar_products', '2019-04-16 08:45:41', '2019-04-16 08:45:41');

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
(1, 'mug_material', 'select', 'json', 'a:2:{s:8:\"multiple\";b:0;s:7:\"choices\";a:4:{s:36:\"745b220d-bb7d-3ee7-bda2-6cc85773edbe\";a:1:{s:5:\"en_US\";s:19:\"Invisible porcelain\";}s:36:\"94022c1b-7e40-3268-8a54-06b15c0d6189\";a:1:{s:5:\"en_US\";s:11:\"Banana skin\";}s:36:\"52526079-5c84-3e09-9ec1-59a7dc5497a9\";a:1:{s:5:\"en_US\";s:9:\"Porcelain\";}s:36:\"eaf3d536-700a-375d-8c7f-75104a3058a6\";a:1:{s:5:\"en_US\";s:9:\"Centipede\";}}}', '2019-04-16 08:45:25', '2019-04-16 08:45:25', 0),
(2, 'sticker_paper', 'text', 'text', 'a:0:{}', '2019-04-16 08:45:30', '2019-04-16 08:45:30', 1),
(3, 'sticker_resolution', 'text', 'text', 'a:0:{}', '2019-04-16 08:45:30', '2019-04-16 08:45:30', 2),
(4, 'book_author', 'text', 'text', 'a:0:{}', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 3),
(5, 'book_isbn', 'text', 'text', 'a:0:{}', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 4),
(6, 'book_pages', 'integer', 'integer', 'a:0:{}', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 5),
(7, 'book_genre', 'select', 'json', 'a:2:{s:8:\"multiple\";b:1;s:7:\"choices\";a:4:{s:36:\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\";a:1:{s:5:\"en_US\";s:15:\"Science Fiction\";}s:36:\"2e829538-7adc-3d90-8a2c-9f23862df0ff\";a:1:{s:5:\"en_US\";s:7:\"Romance\";}s:36:\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\";a:1:{s:5:\"en_US\";s:8:\"Thriller\";}s:36:\"e70f7989-8ea3-38de-bc95-abb3280da2dd\";a:1:{s:5:\"en_US\";s:6:\"Sports\";}}}', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 6),
(8, 't_shirt_brand', 'text', 'text', 'a:0:{}', '2019-04-16 08:45:33', '2019-04-16 08:45:33', 7),
(9, 't_shirt_collection', 'text', 'text', 'a:0:{}', '2019-04-16 08:45:33', '2019-04-16 08:45:33', 8),
(10, 't_shirt_material', 'text', 'text', 'a:0:{}', '2019-04-16 08:45:33', '2019-04-16 08:45:33', 9);

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
(1, 1, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"94022c1b-7e40-3268-8a54-06b15c0d6189\"]'),
(2, 2, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"eaf3d536-700a-375d-8c7f-75104a3058a6\"]'),
(3, 3, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"eaf3d536-700a-375d-8c7f-75104a3058a6\"]'),
(4, 4, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"52526079-5c84-3e09-9ec1-59a7dc5497a9\"]'),
(5, 5, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"52526079-5c84-3e09-9ec1-59a7dc5497a9\"]'),
(6, 6, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"94022c1b-7e40-3268-8a54-06b15c0d6189\"]'),
(7, 7, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"52526079-5c84-3e09-9ec1-59a7dc5497a9\"]'),
(8, 8, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"94022c1b-7e40-3268-8a54-06b15c0d6189\"]'),
(9, 9, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"94022c1b-7e40-3268-8a54-06b15c0d6189\"]'),
(10, 10, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"94022c1b-7e40-3268-8a54-06b15c0d6189\"]'),
(11, 11, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"eaf3d536-700a-375d-8c7f-75104a3058a6\"]'),
(12, 12, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"eaf3d536-700a-375d-8c7f-75104a3058a6\"]'),
(13, 13, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"52526079-5c84-3e09-9ec1-59a7dc5497a9\"]'),
(14, 14, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"52526079-5c84-3e09-9ec1-59a7dc5497a9\"]'),
(15, 15, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"745b220d-bb7d-3ee7-bda2-6cc85773edbe\"]'),
(16, 16, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 16, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 17, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 17, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 18, 2, 'en_US', 'Paper from tree Lemon-San', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 18, 3, 'en_US', 'FULL HD', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 19, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 19, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 20, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 20, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 21, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 21, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 22, 2, 'en_US', 'Paper from tree Lemon-San', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 22, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 23, 2, 'en_US', 'Paper from tree Lemon-San', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 23, 3, 'en_US', 'FULL HD', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 24, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 24, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 25, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 25, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 26, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 26, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 27, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 27, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 28, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 28, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 29, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 29, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 30, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 30, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 31, 4, 'en_US', 'Howell Langosh', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 31, 5, 'en_US', '9792962072973', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 31, 6, 'en_US', NULL, NULL, 927, NULL, NULL, NULL, NULL),
(49, 31, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"2e829538-7adc-3d90-8a2c-9f23862df0ff\",\"e70f7989-8ea3-38de-bc95-abb3280da2dd\",\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\",\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\"]'),
(50, 32, 4, 'en_US', 'Tessie Nader', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 32, 5, 'en_US', '9788042173418', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 32, 6, 'en_US', NULL, NULL, 255, NULL, NULL, NULL, NULL),
(53, 32, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\",\"2e829538-7adc-3d90-8a2c-9f23862df0ff\"]'),
(54, 33, 4, 'en_US', 'Ines Smitham', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 33, 5, 'en_US', '9781753627430', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 33, 6, 'en_US', NULL, NULL, 895, NULL, NULL, NULL, NULL),
(57, 33, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\"]'),
(58, 34, 4, 'en_US', 'Krystina Heaney', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 34, 5, 'en_US', '9795976731775', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 34, 6, 'en_US', NULL, NULL, 543, NULL, NULL, NULL, NULL),
(61, 34, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\",\"e70f7989-8ea3-38de-bc95-abb3280da2dd\",\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\",\"2e829538-7adc-3d90-8a2c-9f23862df0ff\"]'),
(62, 35, 4, 'en_US', 'Sydnee Stanton IV', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 35, 5, 'en_US', '9796570019818', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 35, 6, 'en_US', NULL, NULL, 243, NULL, NULL, NULL, NULL),
(65, 35, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"e70f7989-8ea3-38de-bc95-abb3280da2dd\"]'),
(66, 36, 4, 'en_US', 'Hannah Huel MD', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 36, 5, 'en_US', '9784354990088', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 36, 6, 'en_US', NULL, NULL, 573, NULL, NULL, NULL, NULL),
(69, 36, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"2e829538-7adc-3d90-8a2c-9f23862df0ff\",\"e70f7989-8ea3-38de-bc95-abb3280da2dd\",\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\",\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\"]'),
(70, 37, 4, 'en_US', 'Name Kirlin V', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 37, 5, 'en_US', '9793339157576', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 37, 6, 'en_US', NULL, NULL, 67, NULL, NULL, NULL, NULL),
(73, 37, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"2e829538-7adc-3d90-8a2c-9f23862df0ff\",\"e70f7989-8ea3-38de-bc95-abb3280da2dd\"]'),
(74, 38, 4, 'en_US', 'Orville Osinski', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 38, 5, 'en_US', '9793102745283', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 38, 6, 'en_US', NULL, NULL, 404, NULL, NULL, NULL, NULL),
(77, 38, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"e70f7989-8ea3-38de-bc95-abb3280da2dd\",\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\"]'),
(78, 39, 4, 'en_US', 'Wallace Jacobson V', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 39, 5, 'en_US', '9792412096443', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 39, 6, 'en_US', NULL, NULL, 325, NULL, NULL, NULL, NULL),
(81, 39, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\",\"e70f7989-8ea3-38de-bc95-abb3280da2dd\",\"2e829538-7adc-3d90-8a2c-9f23862df0ff\",\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\"]'),
(82, 40, 4, 'en_US', 'Walton Dare', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 40, 5, 'en_US', '9784437349963', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 40, 6, 'en_US', NULL, NULL, 343, NULL, NULL, NULL, NULL),
(85, 40, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\",\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\",\"2e829538-7adc-3d90-8a2c-9f23862df0ff\",\"e70f7989-8ea3-38de-bc95-abb3280da2dd\"]'),
(86, 41, 4, 'en_US', 'Hortense Osinski', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 41, 5, 'en_US', '9797612256611', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 41, 6, 'en_US', NULL, NULL, 538, NULL, NULL, NULL, NULL),
(89, 41, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\"]'),
(90, 42, 4, 'en_US', 'Prof. Raheem Orn', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 42, 5, 'en_US', '9798500689214', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 42, 6, 'en_US', NULL, NULL, 245, NULL, NULL, NULL, NULL),
(93, 42, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"2e829538-7adc-3d90-8a2c-9f23862df0ff\",\"e70f7989-8ea3-38de-bc95-abb3280da2dd\",\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\"]'),
(94, 43, 4, 'en_US', 'Ms. Oma Pouros II', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 43, 5, 'en_US', '9780257816890', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 43, 6, 'en_US', NULL, NULL, 509, NULL, NULL, NULL, NULL),
(97, 43, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\",\"2e829538-7adc-3d90-8a2c-9f23862df0ff\"]'),
(98, 44, 4, 'en_US', 'Talon Haag', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 44, 5, 'en_US', '9793677080291', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 44, 6, 'en_US', NULL, NULL, 940, NULL, NULL, NULL, NULL),
(101, 44, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\",\"2e829538-7adc-3d90-8a2c-9f23862df0ff\",\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\",\"e70f7989-8ea3-38de-bc95-abb3280da2dd\"]'),
(102, 45, 4, 'en_US', 'Reggie Huel', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 45, 5, 'en_US', '9791407893678', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 45, 6, 'en_US', NULL, NULL, 765, NULL, NULL, NULL, NULL),
(105, 45, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"6c144acc-4fa0-3d2d-9b75-7b55c5d7e69f\",\"6ddfa39c-659d-3b96-899f-b2fe8ecf80bb\",\"2e829538-7adc-3d90-8a2c-9f23862df0ff\"]'),
(106, 46, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 46, 9, 'en_US', 'Sylius Summer 2000', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 46, 10, 'en_US', 'Potato 100%', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 47, 8, 'en_US', 'Nike', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 47, 9, 'en_US', 'Sylius Autumn 2009', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 47, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 48, 8, 'en_US', 'Adidas', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 48, 9, 'en_US', 'Sylius Autumn 2011', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 48, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 49, 8, 'en_US', 'Adidas', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 49, 9, 'en_US', 'Sylius Summer 2001', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 49, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 50, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 50, 9, 'en_US', 'Sylius Spring 2007', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 50, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 51, 8, 'en_US', 'Adidas', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 51, 9, 'en_US', 'Sylius Winter 2009', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 51, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 52, 8, 'en_US', 'Adidas', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 52, 9, 'en_US', 'Sylius Summer 2005', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 52, 10, 'en_US', 'Potato 100%', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 53, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 53, 9, 'en_US', 'Sylius Spring 1995', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 53, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 54, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 54, 9, 'en_US', 'Sylius Summer 2006', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 54, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 55, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 55, 9, 'en_US', 'Sylius Spring 2000', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 55, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 56, 8, 'en_US', 'Adidas', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 56, 9, 'en_US', 'Sylius Summer 2009', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 56, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 57, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 57, 9, 'en_US', 'Sylius Autumn 1995', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 57, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 58, 8, 'en_US', 'Adidas', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 58, 9, 'en_US', 'Sylius Winter 2010', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 58, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 59, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 59, 9, 'en_US', 'Sylius Autumn 2004', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 59, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 60, 8, 'en_US', 'Nike', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 60, 9, 'en_US', 'Sylius Autumn 2007', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 60, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL);

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
(61, 1);

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
(1, 1, 'main', '97/eb/e5625f34517d27461121bc0cc228.jpeg'),
(2, 1, 'thumbnail', '07/23/87907e793f2872040b86ee1bc83e.jpeg'),
(3, 2, 'main', '7c/06/b1d46dce9dd5a4d80dfb949902e6.jpeg'),
(4, 2, 'thumbnail', '89/35/fce8bf125f8476d67539dd12bbcf.jpeg'),
(5, 3, 'main', '6d/52/3634419e4a79501cfb14fc195d85.jpeg'),
(6, 3, 'thumbnail', 'a0/ed/31e5e5df359a508c475b30ed9058.jpeg'),
(7, 4, 'main', 'a2/a7/6bf6fda3500420d357fc9d8b8b92.jpeg'),
(8, 4, 'thumbnail', '3d/7a/bbacc4e8c1958b95b395bc095b45.jpeg'),
(9, 5, 'main', 'ab/ff/9d832cbc0d353f64a1938789c518.jpeg'),
(10, 5, 'thumbnail', '66/7c/2988da1f8baf8616a6ed0f1a9c35.jpeg'),
(11, 6, 'main', '7a/d3/0327a37c6ab522bc82b2c06bc78b.jpeg'),
(12, 6, 'thumbnail', '3a/d3/b92b937c7fca7d0faa51c9a14835.jpeg'),
(13, 7, 'main', '35/4d/bf85dd71a8c1cf2fca17f0d88d5a.jpeg'),
(14, 7, 'thumbnail', '74/a1/f98eaa71d4b291d8a220a4a56f14.jpeg'),
(15, 8, 'main', '65/97/be570ac14344e9b3c198bb6a03de.jpeg'),
(16, 8, 'thumbnail', '2f/4b/8e3f3b86ec539649d20d0dd6cd3f.jpeg'),
(17, 9, 'main', 'c2/02/a7d4382e4fbbcffd077f0d0f1795.jpeg'),
(18, 9, 'thumbnail', 'a1/75/3c36aa48344cc44fb61232653ed9.jpeg'),
(19, 10, 'main', '51/06/04abc8008f5d64a849d4316fa816.jpeg'),
(20, 10, 'thumbnail', '0f/c0/b83f38d6cd126ef21cafe0681207.jpeg'),
(21, 11, 'main', '15/3a/a1122e410bc0f14df3ecfb9066ce.jpeg'),
(22, 11, 'thumbnail', 'ed/79/5c1349ab20fc7744e26060eb7856.jpeg'),
(23, 12, 'main', '89/ae/0a8fbca96e497c1eeb7cabc5fd0a.jpeg'),
(24, 12, 'thumbnail', 'a6/47/d768f0fece4bec532e234364c26c.jpeg'),
(25, 13, 'main', '04/e4/62bc70122dfa6afa13d8d6d95340.jpeg'),
(26, 13, 'thumbnail', '40/8a/76ac42417735c502ea73b729481f.jpeg'),
(27, 14, 'main', 'aa/26/d1f02dd3bba18c513325c5d9a455.jpeg'),
(28, 14, 'thumbnail', 'ea/5b/f4751d26d74ca4352d9848540df7.jpeg'),
(29, 15, 'main', '9f/f8/c06bf9f151b3002a14f60b204a25.jpeg'),
(30, 15, 'thumbnail', '58/9f/959e50aba2361700e5aba99c7041.jpeg'),
(31, 16, 'main', 'e3/3d/c0a0864d33c32c544308b3593b3d.jpeg'),
(32, 16, 'thumbnail', '87/bc/78f62cf1da69882167ac5090aa6e.jpeg'),
(33, 17, 'main', '34/3f/377b6ca38920ee295d9a69e4acc9.jpeg'),
(34, 17, 'thumbnail', '5e/75/e7155b772b281d3670b7f1e3af6e.jpeg'),
(35, 18, 'main', '45/a3/8d6bf85c563b74b7357f2df3be16.jpeg'),
(36, 18, 'thumbnail', 'f6/34/ecf727e62f8d979647700f3947ea.jpeg'),
(37, 19, 'main', 'db/a8/4485a7a6d62b117bdedec74f4be6.jpeg'),
(38, 19, 'thumbnail', '64/af/28610b412b122d83e1a8d4b9a612.jpeg'),
(39, 20, 'main', 'dd/b8/c27eb57da57139bc9751f0719099.jpeg'),
(40, 20, 'thumbnail', '52/42/ab56d0926866d10b3d09a6b8e47b.jpeg'),
(41, 21, 'main', 'f1/7a/a41fcaf584a186e82df1bd810216.jpeg'),
(42, 21, 'thumbnail', '89/db/fd86019b26a32d9b9f6c2359898a.jpeg'),
(43, 22, 'main', 'fd/f0/06e60ece7167ea557c9a983a9920.jpeg'),
(44, 22, 'thumbnail', '3d/95/22d3df082661f49bcc6b9562747c.jpeg'),
(45, 23, 'main', '49/e4/2ecb959eacba63aea92173909ce2.jpeg'),
(46, 23, 'thumbnail', '32/0a/84161b44017469749a2a8b2ffa27.jpeg'),
(47, 24, 'main', '83/21/84bee1bfd86daa95dc9477ec61d9.jpeg'),
(48, 24, 'thumbnail', '2f/a2/dc503166d23ab9a18a58d2037d98.jpeg'),
(49, 25, 'main', '63/3a/6a6743dbbff42c52c1358293fb30.jpeg'),
(50, 25, 'thumbnail', 'c6/b5/ba40f6dde5f124a9bb507ff270b3.jpeg'),
(51, 26, 'main', '62/07/fc0b1458404e246b82e22a625f2b.jpeg'),
(52, 26, 'thumbnail', 'a1/fe/b08d8b995f3fce009d3207997709.jpeg'),
(53, 27, 'main', 'be/9a/655d661b98b8c19248e05b50f89e.jpeg'),
(54, 27, 'thumbnail', 'ac/b0/00ee9a83443df2ff3c57acd82526.jpeg'),
(55, 28, 'main', '3c/ca/671423823d2d06cb10a458791d72.jpeg'),
(56, 28, 'thumbnail', '38/b3/bf2a9c5e9ac095c7a96be51cf34f.jpeg'),
(57, 29, 'main', '60/6f/0d6df8cc2dc16c5338f69acdb180.jpeg'),
(58, 29, 'thumbnail', 'b3/43/75268cc5a7e4a6f23790433b1d10.jpeg'),
(59, 30, 'main', 'cf/d8/bc24634469e35a2d4577b6ecab6f.jpeg'),
(60, 30, 'thumbnail', 'a0/f1/7328bec8f8b75c1182bc484b72fd.jpeg'),
(61, 31, 'main', 'ce/cf/32feac9d09604c21f3bdced84498.jpeg'),
(62, 31, 'thumbnail', 'fd/2e/9b18dfaf72ee174db0c134c3edda.jpeg'),
(63, 32, 'main', '78/fa/bb3332b23b1027871f0e5886c19d.jpeg'),
(64, 32, 'thumbnail', '02/74/5f1e4087cfc8dd8846a76de22444.jpeg'),
(65, 33, 'main', '4a/4b/5d99a1f809b970ef2883ae288251.jpeg'),
(66, 33, 'thumbnail', 'ab/1b/2f1c297ccbe6689be28e269eebeb.jpeg'),
(67, 34, 'main', '95/8a/75d1e2fb51d519eac69fcabe136f.jpeg'),
(68, 34, 'thumbnail', '5b/b5/d49bc40bd264423f61205ae0eab8.jpeg'),
(69, 35, 'main', '69/61/f4cc3e3ca25397be1fcda62a6579.jpeg'),
(70, 35, 'thumbnail', '95/cf/8ede8504985f08e97e1b7d114694.jpeg'),
(71, 36, 'main', 'ce/d0/495aa018b6848376799762dbb89d.jpeg'),
(72, 36, 'thumbnail', '02/ba/af8e190b468053ed85f80255f513.jpeg'),
(73, 37, 'main', 'c9/3f/0a4eea5a7d5fe53f475f18e36bfe.jpeg'),
(74, 37, 'thumbnail', '78/b6/03b62950dd29a2f241ede8a710ed.jpeg'),
(75, 38, 'main', '8e/19/edd7a8965d30676cbe8ea9994911.jpeg'),
(76, 38, 'thumbnail', '25/5d/5fa043bd26c2d4b42dfdd86695bc.jpeg'),
(77, 39, 'main', '9d/b7/e8c08003fca62dfe080f571af25c.jpeg'),
(78, 39, 'thumbnail', 'a3/24/ea10e09f049b6cb9a5d08420eae0.jpeg'),
(79, 40, 'main', '0b/0a/f5a0d7c4e66422c94e75d68a946a.jpeg'),
(80, 40, 'thumbnail', '2f/01/32d45ec955839ff95a8e68c832d2.jpeg'),
(81, 41, 'main', '7b/5b/20989c2bb733bbab4a108ea703c2.jpeg'),
(82, 41, 'thumbnail', '63/9e/8baab4a9c68a5e3e5792fce14727.jpeg'),
(83, 42, 'main', '63/a4/e2ec66869b9a1a3549e41f5bf669.jpeg'),
(84, 42, 'thumbnail', '9d/8e/50370e2f3701a9698eb48d9075a0.jpeg'),
(85, 43, 'main', '02/93/0429b9dc208e7eca30ce3e2d93f9.jpeg'),
(86, 43, 'thumbnail', '62/97/0b8ba0dc64d50cfd022fdf4da42f.jpeg'),
(87, 44, 'main', '86/f0/25c3741fac1ea78e07b4fa686c1d.jpeg'),
(88, 44, 'thumbnail', 'db/8c/519196a5f16e1559c2c07fe69c4d.jpeg'),
(89, 45, 'main', 'f0/54/2d367ca3a09e0fdff7160ff84db1.jpeg'),
(90, 45, 'thumbnail', '29/3f/d7799d81e9cd5c7fa106c151fa9d.jpeg'),
(91, 46, 'main', '15/8b/80ea567f862eb7a11d49f60a2f5d.jpeg'),
(92, 46, 'thumbnail', '54/7e/b6b4a3f0a1336715053338c069fb.jpeg'),
(93, 47, 'main', '33/83/886c7a0f8074a135f54e1ed2988d.jpeg'),
(94, 47, 'thumbnail', '01/e8/5158678864e50612a35e0e7e62b2.jpeg'),
(95, 48, 'main', 'f5/08/bf6b50bc3e1c9953492c38730ea8.jpeg'),
(96, 48, 'thumbnail', '08/70/1d6d5fb05b58e8603edbf3636498.jpeg'),
(97, 49, 'main', '3d/20/fa3fc5ac8a9cb41e8217f3de2cae.jpeg'),
(98, 49, 'thumbnail', '93/93/c6e430b28892c1e7b52e9553c047.jpeg'),
(99, 50, 'main', 'f2/10/e1a086065c7310aaaebfb183feff.jpeg'),
(100, 50, 'thumbnail', 'd2/f9/9cfbcef8e65d0b50d61a879c5647.jpeg'),
(101, 51, 'main', 'cc/31/65b069bf450cd2b632157edfd164.jpeg'),
(102, 51, 'thumbnail', '6e/11/8cd35ebf6718107d2ccd8de77dd8.jpeg'),
(103, 52, 'main', '3f/1d/00cdf1caf1fec08c9b5a806153de.jpeg'),
(104, 52, 'thumbnail', '7b/8d/77363ea3ce711e1ff3a2a1253aaf.jpeg'),
(105, 53, 'main', '71/2c/cdf483169a888632f4fe55c59203.jpeg'),
(106, 53, 'thumbnail', '82/cb/714f592aae19a53d9fa2990c085d.jpeg'),
(107, 54, 'main', 'cd/bb/eebd10fb51eaf5c08e0957f8d486.jpeg'),
(108, 54, 'thumbnail', '9c/8f/89a79f7af1dc19c15a0dc70fab84.jpeg'),
(109, 55, 'main', '5a/96/c4b76af06169baf68c53f8a3f7f5.jpeg'),
(110, 55, 'thumbnail', '36/02/23a4dbd4abcabc7c2b8a817676d3.jpeg'),
(111, 56, 'main', '83/cc/fc7b660acf4f98d1c9824e38146f.jpeg'),
(112, 56, 'thumbnail', '7d/cb/c1f447712de033f0429597fc6205.jpeg'),
(113, 57, 'main', '2b/02/edfbb5b6cf2051cb84b5a5ef6c0f.jpeg'),
(114, 57, 'thumbnail', '62/20/08cfcc7434851276ec6de4c6f09e.jpeg'),
(115, 58, 'main', '74/73/4efe89cb60d5e1c0d6840c7d412a.jpeg'),
(116, 58, 'thumbnail', '10/08/9ce6a0c03075dd2e30d5d9816e49.jpeg'),
(117, 59, 'main', '90/29/d4c21251e4b28991fc2e1f6a9846.jpeg'),
(118, 59, 'thumbnail', 'c5/33/8d149e963c16e17d8f82ba3865c1.jpeg'),
(119, 60, 'main', 'e2/f6/95b923542e061eb8ce2aff0f09bf.jpeg'),
(120, 60, 'thumbnail', '77/4d/3827776e7bd51b6dc57f643b24be.jpeg'),
(121, 61, NULL, '9d/53/8cbb1a4fe8892eb40516629eb79f.jpeg');

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
(1, 'mug_type', 0, '2019-04-16 08:45:25', '2019-04-16 08:45:25'),
(2, 'sticker_size', 1, '2019-04-16 08:45:30', '2019-04-16 08:45:30'),
(3, 't_shirt_color', 2, '2019-04-16 08:45:33', '2019-04-16 08:45:33'),
(4, 't_shirt_size', 3, '2019-04-16 08:45:33', '2019-04-16 08:45:33');

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
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
(1, 14, 13, 'voluptates velit rerum', 4, 'Assumenda excepturi animi inventore quae eos minus deserunt. Cumque excepturi sit suscipit distinctio molestiae dolorem. Voluptatem enim est veritatis.', 'accepted', '2019-04-16 08:45:39', '2019-04-16 08:45:39'),
(2, 33, 13, 'similique dolor provident', 2, 'Quidem ut ex minus corrupti iure. Rem quidem facere dolor voluptas iste similique. Id sapiente minus id culpa.', 'rejected', '2019-04-16 08:45:39', '2019-04-16 08:45:39'),
(3, 26, 11, 'rerum corporis ipsam', 4, 'Doloribus vel mollitia commodi voluptatem. Architecto eos ut harum eius eius. Id nisi suscipit error aliquam voluptas cupiditate nulla.', 'accepted', '2019-04-16 08:45:39', '2019-04-16 08:45:39'),
(4, 10, 10, 'eaque omnis esse', 5, 'Corporis aut eius quo amet tempore repellendus. Non dolorum dolorum officia est. Error quod repellat excepturi ipsum quaerat placeat.', 'new', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(5, 9, 21, 'iure est alias', 5, 'Numquam consequatur culpa quo eius. Labore beatae hic dolores eum ut. Deserunt earum consequatur distinctio fugit eveniet et fuga.', 'new', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(6, 48, 20, 'alias eligendi amet', 2, 'A incidunt facere sapiente vitae saepe. Et et odit eos est officiis. Quae amet dolor voluptatem illo est temporibus.', 'new', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(7, 45, 3, 'quia magni aperiam', 5, 'Eligendi aliquam consequuntur dolorem et libero animi blanditiis. Debitis corrupti doloremque molestias non. Dignissimos perferendis iste velit rerum consequatur.', 'accepted', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(8, 58, 10, 'et voluptate beatae', 3, 'Est saepe itaque minus rerum nobis optio ut qui. Ut quibusdam possimus at labore. Odio asperiores beatae blanditiis tenetur error quae.', 'accepted', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(9, 1, 11, 'voluptate et quia', 5, 'Ad et est est voluptas. Nihil sit odio saepe consequatur dignissimos provident. Molestiae quam ut odio aliquid dolorem odio et.', 'accepted', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(10, 19, 4, 'omnis autem aut', 5, 'Dolor molestiae a laboriosam et praesentium nihil eius et. Quaerat officiis perspiciatis nam repudiandae quasi. Aliquam quis ipsum perspiciatis nihil earum mollitia sint.', 'rejected', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(11, 41, 12, 'voluptatem voluptatem delectus', 2, 'Hic tempora numquam sequi ipsa voluptatem. Dolorem et architecto voluptates cum. Culpa et et voluptates modi quia nostrum aut.', 'new', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(12, 32, 1, 'accusamus quae minima', 4, 'Voluptates facere expedita sunt sunt libero reprehenderit atque. Qui maiores est quidem consequatur tempore qui. Eos eveniet adipisci voluptas ullam.', 'accepted', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(13, 17, 20, 'laboriosam reiciendis sit', 4, 'Aliquam dolores laudantium omnis consequatur velit libero delectus. Itaque aliquam temporibus ipsum doloribus ut est mollitia. Facilis error quis quia odit deleniti asperiores.', 'accepted', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(14, 57, 14, 'autem consequatur ratione', 1, 'Accusamus vel odio id cumque debitis nulla. Animi eum qui doloremque rerum accusamus eius. Consequatur est velit suscipit in.', 'accepted', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(15, 49, 4, 'modi eius sit', 2, 'Tempore id provident rerum eum. Labore et perspiciatis ab quis. Qui sit qui commodi ut optio asperiores in.', 'new', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(16, 26, 17, 'accusantium adipisci nemo', 2, 'Dolor aut modi blanditiis voluptatem sequi quod sunt. Fugit autem tenetur aut nostrum doloribus reprehenderit ea. Est dolorem sint rerum molestias sunt labore illo magni.', 'rejected', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(17, 25, 14, 'incidunt dolorem minima', 2, 'Necessitatibus nihil id ut iure atque tempore accusamus possimus. Magnam a facilis voluptatem consequatur. Ea laborum perspiciatis ea qui odio aut.', 'accepted', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(18, 60, 21, 'quam maiores sequi', 3, 'Natus quaerat sint distinctio corrupti eum. Sunt eos veniam possimus consectetur amet non asperiores. Nam quia cupiditate rerum mollitia mollitia odit.', 'new', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(19, 34, 16, 'sed aut nulla', 2, 'Beatae consequatur voluptatem aut minus necessitatibus et. Non animi itaque quis debitis molestiae. Omnis voluptas ullam molestiae labore nemo qui quod.', 'rejected', '2019-04-16 08:45:40', '2019-04-16 08:45:40'),
(20, 46, 20, 'nihil harum asperiores', 5, 'Incidunt et perferendis et. Ut id sit ut id nobis laboriosam debitis. Non ut ipsum eius eos illum aliquid in ut.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(21, 27, 21, 'et quod neque', 2, 'Excepturi a voluptates et eaque ad qui quam earum. Incidunt non sit cupiditate suscipit qui. Maiores fugit aut at et quia minima.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(22, 10, 12, 'doloremque rem quia', 4, 'Aliquid itaque qui ut maiores. Rerum saepe non reprehenderit maiores quis quo placeat. Unde eos maxime et accusamus omnis.', 'rejected', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(23, 58, 16, 'sit vitae fugiat', 2, 'Aut quibusdam iste ullam ut laudantium nihil. Aliquid laudantium temporibus vel perspiciatis praesentium autem commodi. Ea qui qui vero deserunt et soluta.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(24, 53, 21, 'voluptatem et consequatur', 5, 'Facilis inventore corporis quidem dolore error sed. Id a saepe tenetur ut. Eum et ut dolor ipsam voluptas.', 'rejected', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(25, 34, 13, 'quasi quam accusantium', 2, 'Ex rem quo perferendis qui fugit. Dignissimos quos excepturi rerum aut. Reiciendis amet ut nobis odio mollitia.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(26, 33, 6, 'ex quia distinctio', 4, 'Rerum eligendi excepturi magni necessitatibus quia molestiae. Vel aut rerum iure debitis iste deserunt. Atque non eum iure vel.', 'rejected', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(27, 53, 10, 'vitae id sunt', 4, 'Sed sit expedita voluptas dolor et. Laudantium praesentium quaerat ut molestiae corporis voluptatem sequi. Et nulla minus recusandae ea quaerat.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(28, 57, 7, 'sunt et qui', 1, 'Nostrum aut praesentium quia sunt. Dolor quam esse repellendus exercitationem expedita id praesentium. Ut inventore nobis voluptas magnam ducimus tenetur.', 'accepted', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(29, 45, 6, 'facilis similique eaque', 3, 'Modi commodi quia assumenda ipsum. Ducimus impedit magnam quisquam similique voluptas. Quas incidunt ipsum cupiditate labore iure.', 'rejected', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(30, 28, 13, 'est est animi', 4, 'Sint neque labore nobis eius et non quia. Reprehenderit facilis impedit ut. Unde repudiandae in ipsum perferendis dolorem totam quia tempore.', 'rejected', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(31, 2, 1, 'aut minima rerum', 5, 'Vel ut cupiditate magni error ab rerum. Fuga eaque cum aut sed cum numquam quis. Odio deleniti ducimus qui accusamus et.', 'rejected', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(32, 12, 5, 'aut cum officia', 5, 'Est fuga similique debitis adipisci minus. Cumque fuga enim placeat sit. Ipsum laudantium distinctio iusto eius.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(33, 34, 7, 'quam veritatis a', 5, 'Consequuntur et libero sed harum. Fugit totam neque facere quam eligendi fuga minima numquam. Quae quisquam ea et ratione.', 'rejected', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(34, 57, 14, 'suscipit deserunt dolores', 3, 'Fugit ipsa et sint. Ratione est suscipit occaecati quas. Corporis est non est mollitia cupiditate qui.', 'accepted', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(35, 48, 7, 'aut molestiae et', 2, 'Nesciunt distinctio omnis ut et consectetur laudantium aut. Accusamus laborum vero ut et provident error. Tempora aut molestias commodi veniam temporibus.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(36, 20, 20, 'voluptas quis voluptatem', 1, 'Enim soluta eos officiis est et architecto odit. Et sint dolores rerum sed et atque. Doloribus tempore aut mollitia omnis nam.', 'rejected', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(37, 44, 16, 'eum consequatur qui', 2, 'Molestiae voluptatem iusto sit ut explicabo alias. Explicabo quia ipsa adipisci dignissimos omnis possimus. Eos est asperiores repudiandae impedit.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(38, 9, 17, 'explicabo voluptas cumque', 4, 'Quo placeat rerum consequatur ab omnis. Libero inventore eaque voluptas non voluptas. Reiciendis ea expedita voluptas voluptate maxime et quisquam.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(39, 55, 10, 'praesentium distinctio nobis', 1, 'Sed fugiat quibusdam aperiam nisi assumenda minima. Et ad quas omnis libero. Corporis quidem velit id.', 'new', '2019-04-16 08:45:41', '2019-04-16 08:45:41'),
(40, 34, 8, 'molestiae eum esse', 4, 'Dignissimos quia veniam quam sunt assumenda omnis repudiandae. In molestiae dolore sint nostrum consequatur aut ratione. Ab excepturi dolorum autem ratione saepe neque.', 'accepted', '2019-04-16 08:45:41', '2019-04-16 08:45:41');

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
(47, 46, 6, 0),
(48, 47, 5, 1),
(49, 47, 7, 0),
(50, 48, 5, 2),
(51, 48, 7, 1),
(52, 49, 5, 3),
(53, 49, 7, 2),
(54, 50, 5, 4),
(55, 50, 6, 1),
(56, 51, 5, 5),
(57, 51, 6, 2),
(58, 52, 5, 6),
(59, 52, 7, 3),
(60, 53, 5, 7),
(61, 53, 6, 3),
(62, 54, 5, 8),
(63, 54, 6, 4),
(64, 55, 5, 9),
(65, 55, 7, 4),
(66, 56, 5, 10),
(67, 56, 7, 5),
(68, 57, 5, 11),
(69, 57, 6, 5),
(70, 58, 5, 12),
(71, 58, 7, 6),
(72, 59, 5, 13),
(73, 59, 7, 7),
(74, 60, 5, 14),
(75, 60, 6, 6);

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_translation`
--

INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
(1, 1, 'Mug \"ullam\"', 'mug-ullam', 'Ex sed est voluptate quia veniam perspiciatis ea. At eos dolores possimus dignissimos maiores aliquid consequatur sint. Nemo beatae temporibus ut reiciendis reiciendis. Facilis placeat officia quos recusandae consequatur.\n\nQuis officia voluptatem soluta accusamus. Illo adipisci autem aut assumenda totam. Debitis sunt dolorem et.\n\nDolorem voluptatem qui quis praesentium incidunt beatae. Alias dolor consectetur ut ea rerum. Consequatur ut inventore dignissimos quia accusantium doloribus. Omnis perspiciatis dicta ratione.', NULL, NULL, 'Odit asperiores eveniet aut. Est laborum ut doloremque corporis odit alias blanditiis.', 'en_US'),
(2, 2, 'Mug \"hic\"', 'mug-hic', 'Excepturi perferendis sunt nihil corrupti molestiae. Expedita eius voluptatem fugit omnis ullam rerum. Ut nesciunt quaerat laudantium quos voluptatem quo dignissimos dignissimos. Itaque magnam autem cumque id quaerat quaerat.\n\nNam nihil nulla provident rerum dolore. Nihil aut facilis architecto. Sequi laudantium officiis corrupti voluptas rerum. Inventore velit placeat natus a consequuntur et. Et beatae quo cum soluta.\n\nVoluptatum dicta unde ipsum magnam et. Ut et error tempore quisquam asperiores consequatur. Aliquam nemo harum placeat porro.', NULL, NULL, 'Culpa sed non dolorem velit. Laborum rem assumenda totam quam quasi fugiat. A deleniti distinctio autem et quis ipsum qui et. Laudantium quia cumque ea esse.', 'en_US'),
(3, 3, 'Mug \"amet\"', 'mug-amet', 'Aliquam officiis dignissimos et sed recusandae aut officia quisquam. Vel quia dolorem sed dolor quia. Eos voluptas cum odio. Aliquid laborum qui pariatur facere unde nulla mollitia. Tempora ducimus aut assumenda eligendi cumque id.\n\nNihil quasi esse sapiente iure ut alias sunt. Veniam qui nihil non nam sit. Dolores sint impedit neque voluptas cumque culpa ut.\n\nUt vel voluptatibus labore sunt et iusto voluptas. Earum dolores corrupti ea mollitia.', NULL, NULL, 'Fugiat quis inventore doloribus maxime nam deleniti qui incidunt. Sit est ut ipsa id qui. Ad qui debitis officia dolore dolorem veritatis.', 'en_US'),
(4, 4, 'Mug \"nam\"', 'mug-nam', 'Optio voluptatum dolorem mollitia omnis dolores. Laudantium nobis qui maiores modi sint. Ipsum voluptatem eum vel et.\n\nIpsum et sit consequatur molestias non consequatur. Architecto consectetur vero laudantium assumenda aut. Accusantium et quasi dolor itaque culpa sint. Ducimus natus autem veniam voluptatum hic ut.\n\nArchitecto est quo vitae eligendi quia. Qui voluptatibus ab nesciunt ut dolorem consequatur quasi numquam. Ratione voluptatem aut qui qui qui. Qui voluptatem perspiciatis fugit ducimus aut.', NULL, NULL, 'Dolor vel iure soluta fuga corporis. Non repellat enim id laborum. Rerum temporibus natus possimus quasi perferendis ad. Modi recusandae fugiat sed autem cum error quidem. Culpa minima corrupti impedit aut odit.', 'en_US'),
(5, 5, 'Mug \"sequi\"', 'mug-sequi', 'Fugiat incidunt et optio consequatur. Autem ut vero ipsum quo vel ad. Rerum esse voluptas qui aut earum nihil vel vero. Incidunt est sit sed quasi.\n\nIpsam suscipit non est amet fugit omnis. Ea rem impedit ducimus ut. Ratione et fugiat iste velit quo neque sunt. Architecto porro dolor veritatis quod rerum consequatur.\n\nAdipisci tenetur accusantium ut cum aut quo dignissimos. Numquam veritatis quam eos iusto ut iure corporis. Veritatis soluta sint rem quia voluptas odio atque. Quam sed in aut explicabo.', NULL, NULL, 'Sapiente repellat autem dolorem cum quia itaque. Consectetur labore ut dolores voluptas corporis. Possimus porro esse est quasi beatae dolorem.', 'en_US'),
(6, 6, 'Mug \"in\"', 'mug-in', 'Aut dolores velit fuga fugit. Animi cum ipsam quis. Voluptatum odit totam quidem dolores repudiandae.\n\nQui facilis nulla voluptatem velit aspernatur. Et aut quis voluptates corporis placeat voluptatibus ut. Reprehenderit adipisci similique similique autem dolorem neque.\n\nEt et quam neque consectetur magni. Ut fugiat error facilis similique voluptas nisi ea. Occaecati ullam architecto nostrum ducimus.', NULL, NULL, 'Sed quo nulla enim quos consectetur culpa dolore. Qui molestiae a doloribus magnam voluptate ipsum voluptatem. Sint et ut sit incidunt quibusdam.', 'en_US'),
(7, 7, 'Mug \"minima\"', 'mug-minima', 'Unde in et qui veniam veniam odit. Error deleniti beatae ducimus esse unde et. Assumenda modi ipsa cum recusandae et velit sed. Debitis perferendis sint fugiat atque facere consequuntur placeat. Quas sit repudiandae eveniet consequatur reiciendis ullam sit quos.\n\nAut deleniti distinctio dolorem facilis voluptatem. Ut eos iure laudantium quod consequatur et omnis iure. Eum consequuntur veritatis sit commodi ut et perspiciatis.\n\nCorrupti aspernatur corrupti vero autem suscipit atque animi rerum. Architecto voluptatem aperiam sunt voluptatem autem laudantium. Unde pariatur similique veritatis neque maxime porro qui. Quos quos dolorem aut et non. Nulla ipsa ut vero voluptatem voluptates voluptatem voluptatem illo.', NULL, NULL, 'Reiciendis odit fugiat labore dicta aspernatur itaque. Aspernatur ut eligendi et.', 'en_US'),
(8, 8, 'Mug \"animi\"', 'mug-animi', 'Sapiente corrupti necessitatibus praesentium incidunt architecto aut earum. Voluptatem sapiente velit blanditiis iusto molestiae. Fugiat quia delectus ad officiis. Asperiores eaque voluptatibus eius dolor.\n\nOptio sit modi sequi cupiditate vero aut cum omnis. In et eos id dolorum voluptatem culpa ipsum.\n\nOccaecati quae blanditiis et adipisci aspernatur corrupti molestias. Dignissimos accusamus recusandae amet quis sint voluptatem. Sit at consequatur ducimus. Neque cupiditate quas ullam velit.', NULL, NULL, 'Eum quibusdam quidem consectetur et. Voluptatem optio perspiciatis eius vel ab quam mollitia.', 'en_US'),
(9, 9, 'Mug \"occaecati\"', 'mug-occaecati', 'Harum et hic magnam accusamus ut inventore. Quisquam qui deleniti voluptas. Blanditiis fugiat numquam laboriosam tempora mollitia sit a. Omnis voluptatem itaque provident voluptate iure in ipsum. Quod et quia aut explicabo ut consequatur provident.\n\nQuam qui excepturi quasi voluptate quae sit qui. Quibusdam sit voluptatem harum architecto magni asperiores. Necessitatibus iusto voluptatem dolores repellat. Odit totam enim temporibus illo dolores accusantium neque.\n\nTempora recusandae et atque incidunt. Dolorum sed culpa porro nihil et ut temporibus excepturi.', NULL, NULL, 'Expedita non vitae est non. Earum debitis eveniet id placeat et.', 'en_US'),
(10, 10, 'Mug \"tenetur\"', 'mug-tenetur', 'Ut ut libero sint vero optio saepe consectetur. Inventore rerum et et inventore delectus molestias maxime. Eos autem et iusto consequatur minus. Quos quia qui rem ab nisi nisi.\n\nIusto ad qui deserunt cupiditate aut natus. Eius tempore optio quibusdam sequi perspiciatis facilis. Sit sequi exercitationem beatae odio exercitationem. Architecto distinctio molestiae commodi minus ipsa.\n\nLabore fugiat sed optio fuga provident. Enim eum saepe dicta praesentium. Earum eveniet perspiciatis vero consequatur et aperiam nulla. Beatae qui voluptas odit minus.', NULL, NULL, 'Nihil qui sint consequatur dolor dolorem. Id voluptas velit excepturi culpa libero aut ut. Reiciendis laboriosam neque veritatis sunt cumque tempora.', 'en_US'),
(11, 11, 'Mug \"id\"', 'mug-id', 'Quisquam tempora omnis animi dicta nisi inventore laborum. Mollitia deleniti ducimus excepturi optio error voluptatem voluptatibus. Sed atque numquam saepe et et in rerum.\n\nBeatae ipsum officia aut. Esse eos illum hic repudiandae natus amet dolore. Alias tempora qui similique iure officiis.\n\nUt facere similique dolor libero sit sint consequatur. Veniam at quaerat est voluptas. Dolores reiciendis repellat illum dolor enim repudiandae. Et quidem non minus eligendi.', NULL, NULL, 'Iure et aspernatur facilis repellendus veniam aut. Dicta quia quia sunt impedit voluptate officiis quos. Ad iste quia quo non. Omnis aut reprehenderit qui quia veniam repellat asperiores delectus.', 'en_US'),
(12, 12, 'Mug \"non\"', 'mug-non', 'Est aut ut in molestias. Exercitationem voluptatum quod earum.\n\nMinima ut temporibus ad rem quae voluptate perferendis dolore. Voluptatem nulla veritatis vel commodi et facere vel. Quam non sapiente veritatis a aut sunt et voluptate. Qui quam sed quibusdam error aperiam.\n\nExercitationem sunt facere omnis ut. Accusamus odit tenetur quam maxime architecto temporibus impedit rem.', NULL, NULL, 'Tempore perspiciatis dolorem at. Adipisci est consectetur ab veniam molestiae ea facere. Eius non et inventore dolorem. Asperiores sed ullam sed fugit.', 'en_US'),
(13, 13, 'Mug \"tempora\"', 'mug-tempora', 'Quos maiores dolores officia dignissimos alias sint. Doloremque optio corporis ut a voluptatum velit. Quo rerum magnam quia quis et officia deleniti. Accusantium cupiditate qui quam quae maiores et magni.\n\nEx et voluptatem hic quo. Sunt reiciendis consequuntur molestias aut blanditiis. Officia rerum ad laudantium praesentium dolores. Eveniet provident nam aut quod molestiae rerum non. Quis rerum ea veniam aperiam architecto consequuntur.\n\nOmnis autem aspernatur ut repellat nemo et. Qui cupiditate reprehenderit enim facere dolores et velit. Quis ut vel excepturi. Eum molestiae est harum similique quod ullam dolorem.', NULL, NULL, 'Sed repellendus et ipsum et incidunt. Ea accusantium sunt rerum nobis. Voluptatum error esse repellat. Accusamus quam reprehenderit et provident voluptatem quia.', 'en_US'),
(14, 14, 'Mug \"libero\"', 'mug-libero', 'Ratione odio sed tenetur dignissimos dolores. Sed molestiae rem et at. Quis hic beatae explicabo sunt reprehenderit. Sit ut et quae ut.\n\nEst eaque est voluptas. Suscipit animi similique enim ea velit qui impedit aut. Quod aliquam qui adipisci ducimus. Aut et sequi dolor qui illum.\n\nTemporibus eveniet nemo at eum sed rerum temporibus deleniti. Perspiciatis omnis illo rerum qui adipisci omnis et. Voluptatem perferendis laborum impedit. Delectus necessitatibus atque natus molestiae veniam qui.', NULL, NULL, 'Et magni nobis facere aut quia doloremque. Laborum laudantium est sapiente dolores omnis voluptatem. Veritatis quo unde expedita dolorum nostrum laboriosam. Ut eum esse provident molestiae aspernatur aperiam reiciendis.', 'en_US'),
(15, 15, 'Mug \"eveniet\"', 'mug-eveniet', 'Quia labore dicta accusamus nisi enim accusamus. Adipisci cumque eos minus non distinctio consequatur. Doloremque dolorem quia quia ducimus exercitationem consequatur et. Nemo facere est ut fuga sed corporis et.\n\nIpsum modi neque sed. Vel esse accusamus harum et assumenda libero. Fugit ut quia velit voluptas consequatur.\n\nEst et minima nesciunt. Aut tenetur beatae in. Est voluptatem et ipsa et repudiandae et explicabo. Quaerat quidem voluptatem accusantium.', NULL, NULL, 'Et sequi accusantium ut enim modi architecto neque. Autem rerum quos non beatae cupiditate nesciunt sed. Molestiae sit et quae quia.', 'en_US'),
(16, 16, 'Sticker \"quia\"', 'sticker-quia', 'Est fuga aut qui non eaque omnis libero. Et voluptas ratione dolores facere est quo. Nemo consequuntur culpa necessitatibus.\n\nRem provident illum est quis. Eos illo eos non consequatur voluptate. Aut labore fugiat sapiente ut.\n\nEsse at aut velit velit porro et laudantium natus. Est voluptas voluptatum et autem. Quo blanditiis molestiae aut est corporis est illum. Recusandae voluptas non et veritatis perferendis magni.', NULL, NULL, 'Et dolores pariatur et aut et corporis. Omnis et fugit deleniti impedit voluptatem.', 'en_US'),
(17, 17, 'Sticker \"et\"', 'sticker-et', 'Dolorum inventore voluptatem et dignissimos saepe repudiandae. Nisi iste sit unde est nulla ut eveniet. Ducimus iusto accusamus dolor maxime excepturi nisi consequuntur. Voluptas veniam dicta placeat ullam. Ad est rerum dolores aut placeat repudiandae et.\n\nEum amet sunt ea enim vitae dolores autem est. Rem voluptatibus nobis officia fuga quibusdam cupiditate aut. Temporibus quidem voluptas nam autem natus magnam ut. Architecto commodi eveniet officia mollitia illo qui delectus.\n\nEst similique molestias qui aut et unde et. Aut occaecati sit quia inventore recusandae sint. Cum dolore molestiae sapiente qui eum consequatur quia.', NULL, NULL, 'Et totam consequuntur qui. Doloremque eveniet voluptates repudiandae neque repellat cumque. Sapiente recusandae quas nisi eveniet necessitatibus quaerat corrupti. Iste magnam laborum sed in sit blanditiis repellat.', 'en_US'),
(18, 18, 'Sticker \"sunt\"', 'sticker-sunt', 'Explicabo eos eum consequuntur accusamus vel velit. Et soluta nemo repellendus illum. Recusandae culpa inventore qui provident esse. Sapiente vel ut qui et repellendus hic ut.\n\nDolorum quis asperiores et commodi cum. Ut odit nostrum quas pariatur qui eum. Facilis quam suscipit et velit.\n\nAperiam eos ipsa maxime dolor odit. Nesciunt voluptas optio atque adipisci libero. Maxime quibusdam ex aliquam sit adipisci sit.', NULL, NULL, 'Expedita qui dicta eius mollitia est. Molestiae doloribus eos commodi id. Provident explicabo autem est accusamus. Neque esse tempora libero illum laborum in.', 'en_US'),
(19, 19, 'Sticker \"iusto\"', 'sticker-iusto', 'In dolorem est sunt placeat quo. Autem et hic expedita ut quia fuga. Quia est repellendus temporibus architecto non. Consequatur minima laboriosam explicabo laborum ut et.\n\nEligendi sit et nesciunt quia voluptatem ullam fugiat. Architecto quasi dolor libero voluptas et error. Doloribus incidunt ut exercitationem.\n\nPerspiciatis accusamus commodi recusandae tenetur possimus qui. Fugit minima quo distinctio atque natus qui.', NULL, NULL, 'Amet voluptatem nihil ipsum vel. Quos et esse beatae minus veritatis itaque unde. Animi aliquam qui est sit assumenda. Est vitae illo cum temporibus accusantium et corrupti.', 'en_US'),
(20, 20, 'Sticker \"ea\"', 'sticker-ea', 'Eveniet alias hic voluptatum vero. Vel sed nihil voluptas et. Consequatur ipsum maiores impedit quaerat nisi similique.\n\nRepellat quibusdam est non ut. Recusandae quo molestias repudiandae dolores. Enim ut ducimus atque.\n\nAccusantium laborum inventore amet. Eius aut sed iure culpa. Esse recusandae ipsa sunt quod maiores ullam.', NULL, NULL, 'Commodi ut quasi impedit explicabo et. Voluptatem beatae laboriosam maiores eius incidunt et. Dolores in molestiae dolorem. Cupiditate sunt eum sed sed qui. Velit minima quis ut id nostrum cumque labore.', 'en_US'),
(21, 21, 'Sticker \"a\"', 'sticker-a', 'Magni consequatur accusantium voluptatem in deleniti. Perspiciatis praesentium voluptatem molestiae aliquid qui. Ut accusantium illum quas omnis.\n\nDoloribus qui et nulla cupiditate. Qui et vitae et iure aut tempore explicabo.\n\nSit deleniti laboriosam iusto consectetur consequatur architecto provident. Illum atque doloremque et sunt. Aut enim occaecati impedit est necessitatibus. Voluptatem autem aliquam voluptatibus ipsam officiis praesentium incidunt expedita. Eos eaque architecto deleniti dicta.', NULL, NULL, 'Numquam debitis reiciendis sit est. Omnis qui iste hic totam qui. Esse voluptates dicta in autem tempore ut in.', 'en_US'),
(22, 22, 'Sticker \"expedita\"', 'sticker-expedita', 'Ab quia delectus eaque pariatur. Ab non debitis est quidem ipsam voluptatibus. Consequuntur perferendis excepturi earum delectus nostrum et. Est omnis incidunt deserunt expedita eligendi atque quibusdam.\n\nAperiam natus autem a et rerum et nesciunt. Quidem vero harum tempora sequi consequatur commodi consequatur est. Occaecati excepturi modi placeat. Distinctio harum distinctio dolore quos.\n\nLibero dolorum molestias voluptatem rerum cupiditate repellat earum. Odio enim sit repellendus eveniet a. Impedit nam pariatur laboriosam rerum et.', NULL, NULL, 'Qui vel vel beatae cupiditate eius ut. Ut libero nisi non maiores aut.', 'en_US'),
(23, 23, 'Sticker \"omnis\"', 'sticker-omnis', 'Omnis voluptas sed et est non est. Maxime laborum assumenda totam consectetur corporis rem. Est et saepe modi in ad non maxime reprehenderit.\n\nVoluptatem harum vel necessitatibus dolorem laboriosam. Quis quos laborum aut occaecati. Illum eum at tenetur et culpa quas nihil vitae. Iusto saepe ad voluptate hic.\n\nVoluptatem consectetur sunt quis ipsa nisi exercitationem sit ea. Et ipsam porro occaecati quaerat nesciunt. Eaque quia ut facilis voluptatem cumque. Consequuntur doloremque reiciendis ut quam praesentium dolorem necessitatibus iste.', NULL, NULL, 'Omnis necessitatibus esse et consequatur itaque. Cumque qui voluptatum delectus sunt pariatur sit. Consequatur eum illum culpa molestias omnis. Expedita maiores nesciunt amet quo labore eligendi dolorem.', 'en_US'),
(24, 24, 'Sticker \"eos\"', 'sticker-eos', 'Quam quod rerum sit nobis omnis harum reiciendis. Laboriosam distinctio aut qui voluptas recusandae. Consequatur est rem suscipit aut. Sequi ut possimus repellat error sunt.\n\nFacere incidunt iusto non aut. Harum eos voluptates ut nulla rerum quasi omnis. Labore quas voluptatem sint maiores nostrum aperiam beatae. Quia aut dolore sunt eum libero aut saepe.\n\nEst reiciendis earum aut nam neque amet ad. Labore voluptatum quo tempora iusto ipsa magni. Illum minus quo sed sed occaecati cumque quasi.', NULL, NULL, 'Eius aliquam quia odit fuga voluptatem hic est. Voluptatum odit aut temporibus ea ut enim quaerat. Quia est nihil consequatur qui officiis qui. Sed officiis dolore veritatis veritatis.', 'en_US'),
(25, 25, 'Sticker \"ab\"', 'sticker-ab', 'Ipsum rerum velit cupiditate sint recusandae. Recusandae eius sit ea sed corrupti.\n\nSed doloribus perferendis ab dolorem porro. Iure ipsa voluptatem ut doloribus id. Suscipit accusamus pariatur modi officia.\n\nDolore maxime cupiditate non pariatur aspernatur et nisi. Hic nam quia sit. Corporis officiis voluptatem maxime et repellendus officia quibusdam. Optio et nulla nobis placeat aliquid dolorem impedit.', NULL, NULL, 'Ipsum rerum quos cumque explicabo eos. Debitis assumenda quisquam quae totam. Magni ut repudiandae impedit eos vero. Ipsum et eos rem non similique molestiae ut.', 'en_US'),
(26, 26, 'Sticker \"modi\"', 'sticker-modi', 'Fuga repellendus labore quis perspiciatis. Quasi et qui odio non et. Esse illo deserunt commodi omnis voluptatem facilis.\n\nRerum harum est aperiam aspernatur optio. Assumenda itaque dignissimos quia asperiores ex expedita error. Veritatis omnis odit necessitatibus nihil praesentium enim. Aut doloribus nam alias quas quis consectetur porro. Voluptas velit sunt suscipit mollitia omnis quidem.\n\nDolor aut quibusdam sed nesciunt dolore quia voluptatem. Magni provident neque similique quod. Debitis est voluptatibus ut architecto. Incidunt quibusdam aut iure pariatur. Expedita et molestiae sunt tenetur ullam.', NULL, NULL, 'Nemo ullam cupiditate in sed autem autem. Voluptas reprehenderit fuga omnis voluptatem. Asperiores aut molestias commodi dolor aut perspiciatis.', 'en_US'),
(27, 27, 'Sticker \"quidem\"', 'sticker-quidem', 'Quia hic nostrum sunt a ipsam quasi. Esse odio cum et magnam doloremque voluptatum voluptas. Ipsum quos dolorem aliquam ab. Itaque porro aut est magnam consequatur eum.\n\nCupiditate nulla consequuntur delectus consequatur minima aliquam. Et commodi modi ea saepe. Aut aut consequatur vel optio placeat.\n\nVero non iusto occaecati cumque. Incidunt quidem eveniet sed unde. Aut placeat illum est eaque sit rerum qui. Totam sed exercitationem quidem iste accusamus. Animi et soluta ducimus sed officiis ut voluptas.', NULL, NULL, 'Fugiat aut nemo et quae. Sint corrupti culpa et est optio et quos consequatur. Sint dolorem nihil sit temporibus non odio praesentium harum. Dolor animi error vero aut aut.', 'en_US'),
(28, 28, 'Sticker \"totam\"', 'sticker-totam', 'Ea et dignissimos quo dolorem atque perferendis. Minus inventore veniam consequuntur quos. Repudiandae blanditiis et nihil hic.\n\nPerspiciatis explicabo fugit qui veniam nobis et consectetur. Quod deleniti nostrum vel autem blanditiis. Id consequuntur quis blanditiis quasi ipsum cum. Voluptatibus deserunt suscipit dolores saepe impedit aliquid explicabo atque.\n\nAut et nam ab enim et enim velit. Atque ipsa dolorem tenetur dolor dolor omnis. Sit expedita modi amet hic deleniti ut occaecati.', NULL, NULL, 'Quos est vero reprehenderit id. Praesentium esse qui ipsa hic ullam nihil architecto rem. Non amet est consectetur et exercitationem sit est.', 'en_US'),
(29, 29, 'Sticker \"pariatur\"', 'sticker-pariatur', 'Sunt explicabo itaque beatae vel id. Vitae aliquam est magni blanditiis enim. Quia ea ducimus sit facere sapiente omnis ut. Facere consequatur est saepe distinctio quod in.\n\nDistinctio doloribus quibusdam aliquid ullam ex ad. Architecto rerum et quidem iusto ut quia. Consectetur sed totam dolore repellendus incidunt maiores. Aut optio dolore unde. Magni eos eligendi aut.\n\nQuis culpa quos deserunt necessitatibus debitis inventore amet. Laboriosam voluptatem et enim consectetur dicta delectus. Doloribus deserunt ut illo nemo.', NULL, NULL, 'Excepturi est beatae porro ipsum repellendus praesentium natus. Perferendis dolorum non ut quo. Esse possimus fugit tempore aliquam debitis quia tempore. Cum mollitia placeat est iste dicta ipsum.', 'en_US'),
(30, 30, 'Sticker \"officia\"', 'sticker-officia', 'Voluptas quae quod excepturi sit quasi voluptas. Nemo iste suscipit porro cupiditate totam asperiores blanditiis. Inventore aut quis non earum expedita. Quidem sapiente sed eveniet. Dolor aperiam blanditiis odit vel esse commodi.\n\nOmnis non est est doloribus. Sit consequatur officia quibusdam eveniet repudiandae molestias qui consectetur. Illum amet temporibus eum est enim.\n\nImpedit id dolorum dicta fuga voluptatem. Inventore similique aliquam nihil non repellat. Velit autem voluptatem quia quos rem eum itaque.', NULL, NULL, 'Non sed quos odit. Nisi repellat ipsam soluta error dolores dolores. Et esse nam quae dolorem dolor. Ex quo amet quaerat veritatis.', 'en_US'),
(31, 31, 'Book \"beatae\" by Howell Langosh', 'book-beatae-by-howell-langosh', 'Esse quis esse laborum nulla dolores. Est necessitatibus sed suscipit ea ipsam ab ducimus. Aut est dignissimos ab architecto autem.\n\nAnimi perferendis animi enim nobis animi aut ut. Maiores esse ab adipisci omnis vel id quibusdam. Commodi qui perferendis et rerum ut quidem quis. Fuga nulla eum rerum aut facere omnis at.\n\nQuis dignissimos veritatis nisi at quia aperiam quo. Sed odit dolore aliquam omnis et. Ut qui eum nostrum id. Esse eum quo mollitia sequi rerum sed quia.', NULL, NULL, 'Facere perspiciatis et magnam et quia. Repellat et suscipit hic. Nihil accusamus vitae molestias voluptatem corporis harum exercitationem.', 'en_US'),
(32, 32, 'Book \"laborum\" by Tessie Nader', 'book-laborum-by-tessie-nader', 'Animi voluptatem provident non ipsa nam hic et. Ipsam aliquid non perferendis totam maiores. Commodi qui iusto sunt eos quas. Soluta magnam et quibusdam ipsam amet. Praesentium aut cum laborum quo unde harum accusantium.\n\nEligendi non illum et accusantium assumenda at suscipit. Consequatur molestiae omnis aut voluptate nesciunt. Sunt dicta et libero velit. Voluptatum sit temporibus sapiente.\n\nVoluptate veniam ex perferendis sapiente enim. Rerum veniam porro accusamus dolor ea numquam atque sed. Odio impedit dolorem nesciunt adipisci dolorem.', NULL, NULL, 'Non aut iure alias. Ullam ex exercitationem molestiae sed molestias provident tenetur. Repellendus ea deserunt tempore. Enim aut quibusdam tenetur officiis.', 'en_US'),
(33, 33, 'Book \"aspernatur\" by Ines Smitham', 'book-aspernatur-by-ines-smitham', 'Voluptas doloribus quam odit non molestias. Ut dolorum ea ipsam voluptas dolor temporibus. Ad laboriosam numquam eum labore laborum deleniti. Nam consectetur labore reprehenderit reprehenderit aut repudiandae a.\n\nAdipisci omnis laboriosam quis. Sequi blanditiis omnis dolorem quis aut sed doloribus beatae. Et vel itaque magnam magni quo delectus sed rerum.\n\nUnde numquam in quam ea impedit natus. Sint ipsa non suscipit doloremque debitis enim doloremque. Magnam ipsum rem adipisci nostrum molestiae quibusdam.', NULL, NULL, 'Pariatur dolore doloribus nesciunt magnam architecto reprehenderit. Mollitia ab aperiam reprehenderit vitae unde. Id quasi officia distinctio quas voluptatem eos sed.', 'en_US'),
(34, 34, 'Book \"ducimus\" by Krystina Heaney', 'book-ducimus-by-krystina-heaney', 'Officia in ipsa accusantium dolor quod eos maiores. Beatae beatae et sed laboriosam inventore praesentium. Omnis in quo laborum et accusantium distinctio architecto consequatur.\n\nCumque porro labore vel recusandae aut officia. Adipisci rerum dolor rem. Asperiores qui voluptatum perspiciatis ut magnam laborum. Ipsum et non quod nobis.\n\nPorro aliquam ab et praesentium facere. Aut rerum debitis mollitia et vero aperiam suscipit. Nostrum itaque sit laudantium odit perspiciatis.', NULL, NULL, 'Doloribus quia quo blanditiis ratione qui quas cumque. Harum officia illum animi aut impedit dicta quo. Rerum et ut cumque est rem atque. Voluptatem non dolor adipisci esse quos rerum.', 'en_US'),
(35, 35, 'Book \"vero\" by Sydnee Stanton IV', 'book-vero-by-sydnee-stanton-iv', 'Voluptate vel non ipsum nostrum adipisci ipsa. Sunt assumenda adipisci qui eum. Molestiae tempora repellat voluptate id.\n\nIn mollitia harum et. Repellendus aut et quia sint atque atque. Rerum ut saepe impedit tempore.\n\nModi quibusdam molestiae delectus rerum eaque autem. Et eum deserunt nobis sapiente facere. Enim totam quis qui et dolorem et enim. Labore voluptatem ea repellat qui rem quia molestias. Eligendi distinctio eveniet harum qui dolor placeat laborum.', NULL, NULL, 'Odit veritatis incidunt aut eveniet sapiente. Consectetur error non ullam quia omnis. Tempora et distinctio quo voluptatem.', 'en_US'),
(36, 36, 'Book \"mollitia\" by Hannah Huel MD', 'book-mollitia-by-hannah-huel-md', 'Quo nemo incidunt officiis at illo ut aperiam temporibus. Ut voluptas qui veritatis harum harum. Dolorum et quasi in nemo inventore aliquam recusandae.\r\n\r\nCupiditate at aut explicabo optio. Quos qui ex incidunt ex nihil.\r\n\r\nHic quaerat debitis et occaecati non delectus. Eos sint quas ratione fugiat veritatis quasi. Ea commodi eos rerum nihil voluptates praesentium.', NULL, NULL, 'Delectus laudantium dignissimos unde cupiditate doloribus repellat asperiores. Ratione et iure explicabo recusandae. Consequatur qui quos cupiditate distinctio et dolorum quae. In occaecati enim maiores et itaque.', 'en_US'),
(37, 37, 'Book \"quis\" by Name Kirlin V', 'book-quis-by-name-kirlin-v', 'Id porro nostrum voluptate. Amet aut aliquam molestiae voluptas minima sint voluptatum neque. Totam ea doloremque ducimus odio architecto aliquid.\n\nSimilique omnis corrupti enim perferendis repellat. Rerum illum provident aut eos soluta ipsam culpa. Amet nam sint iste atque pariatur et.\n\nVeritatis distinctio non quo assumenda voluptates ipsa. Omnis alias repellendus quia incidunt rerum similique reprehenderit. Illum harum cupiditate qui culpa nam rerum.', NULL, NULL, 'Tempore debitis corporis vel molestias amet. Ipsum saepe accusantium dignissimos totam enim facere incidunt. Nihil ratione ut et officiis quae repellat. Quibusdam mollitia nesciunt vel ut quibusdam. In maxime quis doloribus quo eaque corporis.', 'en_US'),
(38, 38, 'Book \"possimus\" by Orville Osinski', 'book-possimus-by-orville-osinski', 'Iure eius aut atque alias. Quasi eligendi maxime nihil iure sed sed maxime. Veniam ea sed alias nostrum dolores est.\n\nDeleniti aut laudantium fuga reprehenderit corrupti qui. Praesentium recusandae velit in sit expedita sed deserunt. Amet dignissimos iure eaque ea voluptates est praesentium et. Dolor qui ad ratione ducimus sunt cupiditate.\n\nAspernatur qui amet qui magnam. Consequuntur quibusdam quaerat repellendus et cupiditate. Qui nemo nisi velit dignissimos. Porro et deleniti velit nam explicabo voluptatibus.', NULL, NULL, 'Sit rerum modi et quae omnis. Ut et nisi iusto officia. Nihil optio architecto ipsam enim vel et illum. Nihil rem nulla reprehenderit.', 'en_US'),
(39, 39, 'Book \"minus\" by Wallace Jacobson V', 'book-minus-by-wallace-jacobson-v', 'A atque quis beatae doloremque accusamus. Similique in molestiae tempora sit consequatur inventore. Dolorem quis excepturi aut dolor sit laudantium.\n\nNesciunt magnam molestias debitis non consequatur eaque. Omnis expedita aut ullam vero odit ratione. Autem inventore hic inventore et.\n\nSequi ut consectetur velit optio minima dolorum nam sed. Quidem perspiciatis voluptas ducimus necessitatibus vel. Nam minus voluptatem repudiandae cum. Eum tempora distinctio eaque perferendis nisi tenetur.', NULL, NULL, 'Atque perferendis sapiente rerum temporibus consequuntur qui. Magni ducimus soluta sed aut possimus assumenda. Voluptatibus ut incidunt sint et excepturi a. Ut iure non quis nam quia amet sint laboriosam.', 'en_US'),
(40, 40, 'Book \"quaerat\" by Walton Dare', 'book-quaerat-by-walton-dare', 'Vitae totam placeat esse et adipisci alias sequi consequatur. Expedita sunt quia iste ratione fugit.\n\nEsse odio cumque ratione ipsa. Nostrum voluptatum porro natus voluptatem distinctio repudiandae omnis.\n\nSaepe suscipit laboriosam beatae voluptatem velit consequuntur. Aliquid vel eos perferendis sed dolore vel sit. Consequuntur distinctio velit sed expedita quibusdam quaerat ut.', NULL, NULL, 'Qui aut et labore. Sed et doloremque aliquam voluptatem labore quo est. Iure accusantium cum quam voluptatem et et eius aut.', 'en_US'),
(41, 41, 'Book \"ullam\" by Hortense Osinski', 'book-ullam-by-hortense-osinski', 'Earum dicta veniam harum aliquam quo illum et. Ratione consequuntur officia sint at fugit et. Velit quibusdam magnam excepturi quo. Autem nostrum quos quia autem.\n\nAtque debitis qui qui odio enim earum. Necessitatibus voluptatum pariatur ipsa id autem doloremque blanditiis. Quibusdam vitae ipsum iste velit. Dignissimos voluptatem quisquam animi.\n\nEnim quisquam voluptas fugit. Nulla incidunt ut nulla in. Corrupti enim illo cum sint accusantium qui.', NULL, NULL, 'Distinctio non perspiciatis saepe asperiores mollitia. Ea aperiam enim cumque. Sit eligendi repellat rerum et debitis.', 'en_US'),
(42, 42, 'Book \"tempora\" by Prof. Raheem Orn', 'book-tempora-by-prof-raheem-orn', 'Cupiditate voluptatem eligendi voluptates ipsa velit. Dolorem et ut ducimus tenetur quia ut quia molestiae. Dolore nesciunt quis libero molestias quia.\n\nCorrupti doloribus rem modi doloremque. Ea magnam est quos iure magnam. At quos rerum consequuntur ut cumque. Sunt vero ut impedit itaque quae et officia aspernatur.\n\nAutem dignissimos vitae ab dolor ipsam rerum quis id. Aut veniam iusto ad. Sit esse cum quis.', NULL, NULL, 'Est aut consequatur non ea. Reiciendis illo vitae veritatis dolores quibusdam aut. Tempora ducimus rem ut. Maxime voluptas in iusto fugiat quaerat veniam. Harum sequi amet enim vero.', 'en_US'),
(43, 43, 'Book \"repudiandae\" by Ms. Oma Pouros II', 'book-repudiandae-by-ms-oma-pouros-ii', 'Adipisci consequuntur possimus quod possimus aliquam. Dolores nam iusto omnis accusamus nisi eligendi. Nobis et quo magnam eum.\n\nPerferendis iste sequi qui similique. Deserunt doloribus eius est nobis. Eos tempora est impedit animi aut quia impedit et. Odio ea ut nisi quidem adipisci.\n\nQuis adipisci fuga aut. Quia mollitia necessitatibus consectetur qui. Sed repudiandae doloremque est doloribus.', NULL, NULL, 'Labore iure ducimus debitis quaerat. Commodi et quibusdam qui quaerat dolores nobis. Aut alias ullam praesentium saepe. Labore doloribus neque ipsa aliquam dolorem non.', 'en_US'),
(44, 44, 'Book \"sed\" by Talon Haag', 'book-sed-by-talon-haag', 'Unde non nihil tenetur sed. Cum illum commodi excepturi et sapiente. Nesciunt in iusto adipisci.\n\nHarum veniam occaecati blanditiis. Voluptatem ullam quia mollitia expedita et. Facilis amet molestiae laudantium vero velit aspernatur.\n\nDolore incidunt enim reprehenderit eveniet et. Delectus error dignissimos vitae in nihil.', NULL, NULL, 'Consequatur nemo aut autem sunt. Quo repellat animi amet dolorem voluptatum. Qui ut aliquid itaque nihil atque ut harum. Cumque quia distinctio in est qui.', 'en_US'),
(45, 45, 'Book \"sit\" by Reggie Huel', 'book-sit-by-reggie-huel', 'Et repellat voluptas fugit animi. Est quo deleniti aut consequuntur ullam sit. Maiores quae dolore earum et. Doloribus ut accusantium nemo rerum ullam.\n\nExpedita et voluptatibus nam. Aperiam omnis corporis ea odit sit. Alias voluptatem quam at veniam. Quo odit ex id est sequi.\n\nNecessitatibus error odio voluptatem officia qui est. Optio est ut vero at dolorem sit. Dolor qui ut sunt quibusdam. Sint vero minus et maxime nobis. Occaecati maxime aperiam qui dolorem.', NULL, NULL, 'Totam non ut iure neque. Corporis aut sit et voluptas. Ut quis explicabo et sit fugiat sint.', 'en_US'),
(46, 46, 'T-Shirt \"nihil\"', 't-shirt-nihil', 'Et similique perspiciatis voluptatem quia. Non eos libero sed officia in et odio.\n\nEt distinctio odit enim quaerat aut atque enim quo. Voluptatem culpa nihil repellendus et dolor adipisci dolorem. Sunt itaque laudantium consequuntur tempore id explicabo aut. Assumenda facere reiciendis quasi est.\n\nAliquid omnis officiis sit inventore et vitae velit. Velit et quam corporis mollitia. Culpa deleniti nobis numquam corporis dicta non quo sed. Similique consequatur optio earum quos.', NULL, NULL, 'Quis tempore aut provident. Maiores explicabo sed consectetur ut aut. Ut et laudantium qui aut sed cumque ipsum. Iusto hic maxime fugit error et fugiat aspernatur.', 'en_US'),
(47, 47, 'T-Shirt \"harum\"', 't-shirt-harum', 'Sit aut doloremque quod reiciendis accusamus ipsum. Molestias et harum aliquam enim est. Eos itaque laudantium voluptatum qui neque ducimus rerum.\n\nRerum et numquam totam nesciunt ipsum similique beatae expedita. Officia sed distinctio sit maiores provident a. Maiores dicta est aliquid itaque qui.\n\nExplicabo dignissimos reprehenderit quos. Tenetur praesentium saepe veritatis qui et voluptatem dicta. Ea sed placeat dolores itaque dicta aut dicta.', NULL, NULL, 'Expedita ipsum quidem eos voluptas consequatur dolore. Consequatur et doloribus dolorem similique veniam maiores adipisci enim. Quasi quos quo est aperiam non. Nam nisi et aut.', 'en_US'),
(48, 48, 'T-Shirt \"dolorum\"', 't-shirt-dolorum', 'Quas et esse nobis natus. Rerum qui consequuntur asperiores architecto nihil debitis voluptas voluptatem. Quasi est omnis possimus est at tempore. Quos rerum omnis minus numquam. Commodi similique earum rerum voluptate dolores architecto minima et.\n\nEt quibusdam repellat dolore aut fugit officia est dicta. Fuga dolores saepe eum nisi molestiae autem culpa. Alias cumque maxime doloribus consequatur consectetur cupiditate. Accusamus eius quibusdam optio blanditiis eos.\n\nDucimus et est voluptate ipsam. Dolores aut esse quos incidunt illo qui. Consequatur provident deleniti voluptas ipsa facere.', NULL, NULL, 'Tempora voluptatem nemo dignissimos eveniet. Pariatur quisquam odit illo velit aliquid accusamus omnis qui. Ullam sapiente magnam rem nobis nihil.', 'en_US'),
(49, 49, 'T-Shirt \"iure\"', 't-shirt-iure', 'Qui consequatur tempore itaque consequuntur delectus nemo incidunt. Accusantium et et deserunt dolorem. Necessitatibus in ut magni nihil voluptas.\n\nOdio atque qui dolores et molestiae in. Velit nostrum ad nesciunt necessitatibus maxime repellendus. Asperiores ea temporibus sint maxime esse quis. Ea consequatur quae laudantium sed nam.\n\nConsectetur odit eos inventore est placeat et dolorem. Optio maiores ducimus voluptatem. Alias modi omnis adipisci distinctio nihil reiciendis in.', NULL, NULL, 'In sapiente dolorem tempore et. Voluptas velit error quam quae eveniet velit. Quo eius consectetur quos ullam placeat aspernatur. Minima corporis similique amet velit temporibus quibusdam.', 'en_US'),
(50, 50, 'T-Shirt \"omnis\"', 't-shirt-omnis', 'Quia labore voluptas recusandae consequuntur voluptatem quia. Perferendis ut enim assumenda voluptatem omnis quae aliquam. Repellendus porro esse odit quis id aliquid ut. Quisquam impedit sunt dolore laboriosam ut voluptatibus officia deleniti.\n\nTemporibus assumenda vitae unde nihil. Eligendi illum quis omnis saepe explicabo perferendis. Est provident maxime sequi qui. Esse sit possimus ipsum ut.\n\nOmnis quos nulla autem qui. Earum repellat quia necessitatibus asperiores officiis magni repudiandae. Voluptates placeat rerum dicta enim officia at dolor.', NULL, NULL, 'Nam ullam magni quod sit quasi delectus. Beatae ex sit dolorem officia labore temporibus et sunt. Nostrum ducimus eligendi omnis quam numquam. Autem aut sunt facere.', 'en_US'),
(51, 51, 'T-Shirt \"laboriosam\"', 't-shirt-laboriosam', 'Qui est nisi nihil. Corrupti incidunt sed dolores asperiores earum ut inventore. Totam occaecati id distinctio et cumque velit ut doloribus. Illum doloremque quia officia quis est.\n\nMaxime eaque pariatur id. Voluptatibus mollitia quam reprehenderit a. Voluptatem dolores sit eaque corrupti assumenda recusandae et. Impedit eaque quaerat aliquid.\n\nSapiente qui consectetur aperiam qui autem. Doloremque qui error ut sed. Dolore ab minus qui. Consequatur vel eum adipisci soluta totam.', NULL, NULL, 'Repellat maxime vel in repellendus omnis minima vel. Et hic praesentium quia rerum maxime. Tempora eveniet vero esse modi et.', 'en_US'),
(52, 52, 'T-Shirt \"nesciunt\"', 't-shirt-nesciunt', 'Sit eligendi expedita alias amet ab rerum. Nulla eos nesciunt est et alias. Quia sapiente earum labore aut nam voluptatem debitis et.\n\nVoluptatum ipsa quia illo ut perspiciatis doloremque porro. In accusamus est asperiores unde iure doloribus porro sunt. Qui eveniet eos amet voluptate nemo excepturi quo. Sequi quod ipsum tempora beatae.\n\nDolores alias nostrum laudantium atque excepturi. Ex ipsum dolore rem aut perferendis blanditiis dolor. Perferendis fugit ut veniam sequi doloremque. Dolores est assumenda sed nulla.', NULL, NULL, 'Est et nulla omnis molestiae. Perspiciatis pariatur incidunt iste vel quis. Veritatis aut aspernatur cum ea quia.', 'en_US'),
(53, 53, 'T-Shirt \"quaerat\"', 't-shirt-quaerat', 'Consequatur natus illo quo quia molestiae ea quia. Sed aut quis culpa et voluptate rem. Est similique est eum voluptatem.\n\nUt illo ut distinctio neque eos libero omnis ut. Ut explicabo cupiditate ut aspernatur quos. Consequuntur vel necessitatibus ullam modi beatae dolore. Dolor sed impedit exercitationem voluptas odio quo quisquam.\n\nVoluptatem rerum fugit temporibus aut est sint tempora consequatur. Ut voluptatem ut rerum nam rem hic deleniti. Perferendis vel vitae voluptatum odit autem aperiam aperiam eum. Saepe doloremque minima sunt nesciunt dolorum.', NULL, NULL, 'Qui sint et impedit voluptatum perspiciatis fugiat quasi quidem. Quia ut quia quis autem qui dolorem. Eos corrupti fugiat neque quia voluptate. Nam dolorem consectetur voluptatibus et et provident id.', 'en_US'),
(54, 54, 'T-Shirt \"voluptate\"', 't-shirt-voluptate', 'Aspernatur eaque id maiores officiis atque. Repellendus distinctio quisquam sit excepturi assumenda facilis ullam. Minima et facere impedit officiis quis deserunt tempora tempora. Necessitatibus repudiandae porro cupiditate aliquam fuga deleniti cupiditate sed.\n\nAssumenda quod similique ab aut aut porro nulla. Voluptas consequatur quis architecto illo dolor ut sit. Error exercitationem impedit aut eum voluptatem accusamus. Et voluptatem ratione beatae dicta deserunt.\n\nMagni earum et autem aut consequatur qui. Quasi modi quis consequatur repudiandae eligendi. Et inventore in eos est sit voluptate.', NULL, NULL, 'Architecto dolorem numquam eligendi in omnis ut. Quis et porro nihil et qui nisi. Eos voluptatem perspiciatis voluptas sit fuga omnis et error.', 'en_US'),
(55, 55, 'T-Shirt \"qui\"', 't-shirt-qui', 'Sed et non ipsum impedit consequuntur perspiciatis. Commodi aut odit odio qui debitis quos.\n\nVoluptatem quaerat qui dolorum est. Facilis qui alias hic facilis recusandae.\n\nVoluptatem aliquid porro provident sed corrupti. Dolor deleniti quos ullam. Velit est doloremque vel fugit aliquid molestiae nemo.', NULL, NULL, 'Consequatur atque vel consequatur adipisci quam. Sint et et autem et ratione. Est voluptates at est quo voluptas quae rerum.', 'en_US'),
(56, 56, 'T-Shirt \"rerum\"', 't-shirt-rerum', 'Veritatis laborum explicabo cupiditate et totam omnis consequuntur. Ex fugit autem rerum dolorum. Et id eaque architecto laboriosam. Sint deserunt voluptas animi dolorum eos ipsa ipsa.\n\nAutem eos ut atque qui. Porro ut est et cupiditate. Fugit qui quia reprehenderit placeat.\n\nQuisquam debitis nostrum est et quaerat totam omnis. In quo sint veniam minima. Aut incidunt exercitationem ut quaerat placeat vel id.', NULL, NULL, 'Assumenda repudiandae consequatur asperiores et non molestiae consequatur rerum. Eos qui minus beatae sed. Laboriosam labore ipsum aut natus nihil et ut.', 'en_US'),
(57, 57, 'T-Shirt \"modi\"', 't-shirt-modi', 'Inventore nam labore voluptatibus dolorem ipsum. Reprehenderit quo pariatur eveniet harum et ut. Natus tempora enim non natus animi adipisci. Est magnam et beatae a ex nisi laudantium dolores. Enim fugit aut quo quia ea voluptatibus.\n\nIusto ut temporibus ut. Sunt cumque eveniet voluptatem velit libero quia. Quas occaecati fuga possimus enim dicta eveniet. Optio id aut sapiente quia.\n\nExercitationem fugiat pariatur enim magni dolor. Eos suscipit ipsum quos esse repudiandae. Ratione reiciendis accusamus animi laudantium cum ipsa in.', NULL, NULL, 'Et quia illo porro dicta. Veniam consequatur in qui quo. Blanditiis officia deserunt incidunt neque quis exercitationem quasi aut. Aliquid quia at quos harum voluptatem delectus.', 'en_US'),
(58, 58, 'T-Shirt \"provident\"', 't-shirt-provident', 'Possimus error nostrum architecto eum et iusto enim. Culpa illo sit hic accusamus. Fuga aspernatur necessitatibus nemo alias enim voluptate recusandae rerum.\n\nVoluptatum consequatur ut omnis natus vel deserunt ut. Nulla voluptas sit velit cupiditate repellat iure. Molestiae culpa enim veritatis qui totam eaque.\n\nQuisquam porro dolores unde sed. Ut accusantium debitis eum in ex dolorem autem. Culpa molestiae molestias quidem neque at quia libero.', NULL, NULL, 'Non magnam et voluptatem autem id ut. Est sed ut non in.', 'en_US'),
(59, 59, 'T-Shirt \"fuga\"', 't-shirt-fuga', 'Sed soluta doloremque qui quas velit sed ea sunt. Quas eius ut rerum alias. Repellat saepe voluptas sunt molestiae voluptas sapiente.\n\nEnim consequuntur minus error neque magni. Quis expedita tempore porro.\n\nNostrum suscipit sed suscipit aut vitae non voluptas quia. Tempora culpa voluptatem voluptas non possimus. Repudiandae illum commodi voluptatem at provident officia nulla.', NULL, NULL, 'Accusantium delectus modi aut doloremque eum perspiciatis tempora. Blanditiis saepe repudiandae et officiis dolores. Laboriosam eveniet ipsum quia.', 'en_US'),
(60, 60, 'T-Shirt \"enim\"', 't-shirt-enim', 'Sed qui natus et provident. Ex earum dolore nam velit. Et ipsa natus neque.\n\nSit quia officiis sit tempore fugit quis harum odit. Facere est error laboriosam praesentium. Et error eveniet qui est ut nobis. Commodi repellat officia quos et non et fuga optio.\n\nVelit in nobis sed officiis perspiciatis minus. Sint voluptas ipsum ducimus ut non dolorem. Aperiam facere rerum eveniet doloremque occaecati non facere est. Tempore ut unde ut necessitatibus.', NULL, NULL, 'Error mollitia eaque non vero. Quam beatae blanditiis dolore tempora necessitatibus totam facilis. Excepturi nulla animi voluptatem earum. Quo nobis consequatur autem. Expedita magnam aut asperiores.', 'en_US'),
(61, 61, 'Goodride RP28 205/55 R16 91V', 'goodride-rp28-205-55-r16-91v', 'Largeur: 205\r\nHauteur: 55\r\nType: R\r\nDiamètre: 16\r\nIndice de charge: 91\r\nIndice de vitesse: V\r\nType: Auto\r\nSaison: Pneus été\r\nProtection jante:Non\r\nPneus Run Flat: Non', NULL, NULL, 'Largeur: 205\r\nHauteur: 55\r\nType: R\r\nDiamètre: 16\r\nIndice de charge: 91\r\nIndice de vitesse: V\r\nType: Auto\r\nSaison: Pneus été\r\nProtection jante:Non\r\nPneus Run Flat: Non', 'en_US');

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
(1, 1, NULL, NULL, '0eaddb2b-8f16-365d-bfdd-626d6f002f25-variant-0', '2019-04-16 08:45:25', '2019-04-16 08:45:26', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(2, 1, NULL, NULL, '0eaddb2b-8f16-365d-bfdd-626d6f002f25-variant-1', '2019-04-16 08:45:25', '2019-04-16 08:45:26', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(3, 1, NULL, NULL, '0eaddb2b-8f16-365d-bfdd-626d6f002f25-variant-2', '2019-04-16 08:45:25', '2019-04-16 08:45:26', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(4, 2, NULL, NULL, 'd6f4a86b-73f3-34db-88f8-f92af7b0a432-variant-0', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(5, 2, NULL, NULL, 'd6f4a86b-73f3-34db-88f8-f92af7b0a432-variant-1', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(6, 2, NULL, NULL, 'd6f4a86b-73f3-34db-88f8-f92af7b0a432-variant-2', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(7, 3, NULL, NULL, '94d9c54c-f29e-3a40-8222-b02e36b45ae8-variant-0', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(8, 3, NULL, NULL, '94d9c54c-f29e-3a40-8222-b02e36b45ae8-variant-1', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(9, 3, NULL, NULL, '94d9c54c-f29e-3a40-8222-b02e36b45ae8-variant-2', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(10, 4, NULL, NULL, 'c58db187-9723-3a6d-a216-5337f765374c-variant-0', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(11, 4, NULL, NULL, 'c58db187-9723-3a6d-a216-5337f765374c-variant-1', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(12, 4, NULL, NULL, 'c58db187-9723-3a6d-a216-5337f765374c-variant-2', '2019-04-16 08:45:26', '2019-04-16 08:45:26', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(13, 5, NULL, NULL, '8f718d70-74c9-38ff-a26b-dd0905a6b01a-variant-0', '2019-04-16 08:45:26', '2019-04-16 08:45:27', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(14, 5, NULL, NULL, '8f718d70-74c9-38ff-a26b-dd0905a6b01a-variant-1', '2019-04-16 08:45:26', '2019-04-16 08:45:27', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(15, 5, NULL, NULL, '8f718d70-74c9-38ff-a26b-dd0905a6b01a-variant-2', '2019-04-16 08:45:26', '2019-04-16 08:45:27', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(16, 6, NULL, NULL, '0aef05ab-a37f-3eca-af5f-9e0125cede17-variant-0', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(17, 6, NULL, NULL, '0aef05ab-a37f-3eca-af5f-9e0125cede17-variant-1', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(18, 6, NULL, NULL, '0aef05ab-a37f-3eca-af5f-9e0125cede17-variant-2', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(19, 7, NULL, NULL, '65944ec8-ac24-341d-92a8-029f0cc1a619-variant-0', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(20, 7, NULL, NULL, '65944ec8-ac24-341d-92a8-029f0cc1a619-variant-1', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(21, 7, NULL, NULL, '65944ec8-ac24-341d-92a8-029f0cc1a619-variant-2', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(22, 8, NULL, NULL, '0f1ecc98-3f99-31df-9335-c0dc7420f330-variant-0', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(23, 8, NULL, NULL, '0f1ecc98-3f99-31df-9335-c0dc7420f330-variant-1', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(24, 8, NULL, NULL, '0f1ecc98-3f99-31df-9335-c0dc7420f330-variant-2', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(25, 9, NULL, NULL, '28c54dcb-bb9f-347e-8972-bb328fdc46db-variant-0', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(26, 9, NULL, NULL, '28c54dcb-bb9f-347e-8972-bb328fdc46db-variant-1', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(27, 9, NULL, NULL, '28c54dcb-bb9f-347e-8972-bb328fdc46db-variant-2', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(28, 10, NULL, NULL, 'e5de9503-667d-3447-bead-2e75a52e9e25-variant-0', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(29, 10, NULL, NULL, 'e5de9503-667d-3447-bead-2e75a52e9e25-variant-1', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(30, 10, NULL, NULL, 'e5de9503-667d-3447-bead-2e75a52e9e25-variant-2', '2019-04-16 08:45:27', '2019-04-16 08:45:27', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(31, 11, NULL, NULL, 'b281e881-67e0-3bc2-ba82-2fe7818bfe64-variant-0', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(32, 11, NULL, NULL, 'b281e881-67e0-3bc2-ba82-2fe7818bfe64-variant-1', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(33, 11, NULL, NULL, 'b281e881-67e0-3bc2-ba82-2fe7818bfe64-variant-2', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(34, 12, NULL, NULL, 'a101c1cf-3030-3c36-8cd9-1132f438dedb-variant-0', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(35, 12, NULL, NULL, 'a101c1cf-3030-3c36-8cd9-1132f438dedb-variant-1', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(36, 12, NULL, NULL, 'a101c1cf-3030-3c36-8cd9-1132f438dedb-variant-2', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(37, 13, NULL, NULL, '60e1839d-5dc7-38cd-b36e-6fd6d2fba3b8-variant-0', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(38, 13, NULL, NULL, '60e1839d-5dc7-38cd-b36e-6fd6d2fba3b8-variant-1', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(39, 13, NULL, NULL, '60e1839d-5dc7-38cd-b36e-6fd6d2fba3b8-variant-2', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(40, 14, NULL, NULL, 'e6f22f6f-8148-35d5-beab-5e9c083d44dc-variant-0', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(41, 14, NULL, NULL, 'e6f22f6f-8148-35d5-beab-5e9c083d44dc-variant-1', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(42, 14, NULL, NULL, 'e6f22f6f-8148-35d5-beab-5e9c083d44dc-variant-2', '2019-04-16 08:45:29', '2019-04-16 08:45:29', 2, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(43, 15, NULL, NULL, 'eb2484d8-6719-36d9-9805-4d04cf61e7eb-variant-0', '2019-04-16 08:45:29', '2019-04-16 08:45:30', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(44, 15, NULL, NULL, 'eb2484d8-6719-36d9-9805-4d04cf61e7eb-variant-1', '2019-04-16 08:45:29', '2019-04-16 08:45:30', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(45, 15, NULL, NULL, 'eb2484d8-6719-36d9-9805-4d04cf61e7eb-variant-2', '2019-04-16 08:45:29', '2019-04-16 08:45:30', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(46, 16, NULL, NULL, 'be34ae67-f567-3de7-80cb-7c3c178df071-variant-0', '2019-04-16 08:45:30', '2019-04-16 08:45:31', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(47, 16, NULL, NULL, 'be34ae67-f567-3de7-80cb-7c3c178df071-variant-1', '2019-04-16 08:45:30', '2019-04-16 08:45:31', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(48, 16, NULL, NULL, 'be34ae67-f567-3de7-80cb-7c3c178df071-variant-2', '2019-04-16 08:45:30', '2019-04-16 08:45:31', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(49, 17, NULL, NULL, '51c58de4-e9ff-3032-b1dd-38919c69e15c-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(50, 17, NULL, NULL, '51c58de4-e9ff-3032-b1dd-38919c69e15c-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(51, 17, NULL, NULL, '51c58de4-e9ff-3032-b1dd-38919c69e15c-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(52, 18, NULL, NULL, 'ff3e249e-068c-32ec-9069-3af03cdc1522-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(53, 18, NULL, NULL, 'ff3e249e-068c-32ec-9069-3af03cdc1522-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(54, 18, NULL, NULL, 'ff3e249e-068c-32ec-9069-3af03cdc1522-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(55, 19, NULL, NULL, '4a5b04c1-3129-3532-adb9-bc507a9ed331-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(56, 19, NULL, NULL, '4a5b04c1-3129-3532-adb9-bc507a9ed331-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(57, 19, NULL, NULL, '4a5b04c1-3129-3532-adb9-bc507a9ed331-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(58, 20, NULL, NULL, 'a708c9f5-43a6-317f-ab4c-43a41b5f10cf-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(59, 20, NULL, NULL, 'a708c9f5-43a6-317f-ab4c-43a41b5f10cf-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(60, 20, NULL, NULL, 'a708c9f5-43a6-317f-ab4c-43a41b5f10cf-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(61, 21, NULL, NULL, 'd23e9121-d1cd-3e7f-9184-7e2f6dee8a12-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(62, 21, NULL, NULL, 'd23e9121-d1cd-3e7f-9184-7e2f6dee8a12-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(63, 21, NULL, NULL, 'd23e9121-d1cd-3e7f-9184-7e2f6dee8a12-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(64, 22, NULL, NULL, '5c9b77d7-474a-3225-b0da-d4e10098b63d-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(65, 22, NULL, NULL, '5c9b77d7-474a-3225-b0da-d4e10098b63d-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(66, 22, NULL, NULL, '5c9b77d7-474a-3225-b0da-d4e10098b63d-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(67, 23, NULL, NULL, '11f3745f-31fe-3c13-8c58-82835f35c879-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(68, 23, NULL, NULL, '11f3745f-31fe-3c13-8c58-82835f35c879-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(69, 23, NULL, NULL, '11f3745f-31fe-3c13-8c58-82835f35c879-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(70, 24, NULL, NULL, 'a25b3fcb-3a6c-3c27-8800-c879073362f5-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(71, 24, NULL, NULL, 'a25b3fcb-3a6c-3c27-8800-c879073362f5-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(72, 24, NULL, NULL, 'a25b3fcb-3a6c-3c27-8800-c879073362f5-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(73, 25, NULL, NULL, '390fe847-e0e2-3503-a04b-2af2d2dbc084-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(74, 25, NULL, NULL, '390fe847-e0e2-3503-a04b-2af2d2dbc084-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(75, 25, NULL, NULL, '390fe847-e0e2-3503-a04b-2af2d2dbc084-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(76, 26, NULL, NULL, '777fe67a-b89a-360b-b506-9589f55d6004-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(77, 26, NULL, NULL, '777fe67a-b89a-360b-b506-9589f55d6004-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(78, 26, NULL, NULL, '777fe67a-b89a-360b-b506-9589f55d6004-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(79, 27, NULL, NULL, '462be262-8713-3bed-91e5-be58858fd04b-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(80, 27, NULL, NULL, '462be262-8713-3bed-91e5-be58858fd04b-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(81, 27, NULL, NULL, '462be262-8713-3bed-91e5-be58858fd04b-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(82, 28, NULL, NULL, '15521b70-21f9-33b7-9a4c-19c54c4f879f-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(83, 28, NULL, NULL, '15521b70-21f9-33b7-9a4c-19c54c4f879f-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(84, 28, NULL, NULL, '15521b70-21f9-33b7-9a4c-19c54c4f879f-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(85, 29, NULL, NULL, '81c8db23-4fbb-3643-81c7-7ebb8e7feacc-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(86, 29, NULL, NULL, '81c8db23-4fbb-3643-81c7-7ebb8e7feacc-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(87, 29, NULL, NULL, '81c8db23-4fbb-3643-81c7-7ebb8e7feacc-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(88, 30, NULL, NULL, '398fa274-d183-35bf-b840-155892e5596b-variant-0', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(89, 30, NULL, NULL, '398fa274-d183-35bf-b840-155892e5596b-variant-1', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(90, 30, NULL, NULL, '398fa274-d183-35bf-b840-155892e5596b-variant-2', '2019-04-16 08:45:31', '2019-04-16 08:45:31', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(91, 31, NULL, NULL, '68b899cf-6b02-3ba2-a86b-bd0a0b21b92b-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(92, 32, NULL, NULL, '342107c1-1cd1-3c10-bcb1-edec821ea097-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(93, 33, NULL, NULL, '8b522983-fb87-3b41-b5ea-0174e85b2cfc-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(94, 34, NULL, NULL, '2983f72e-9b06-3fe2-9be6-d851a2e28263-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(95, 35, NULL, NULL, 'cbf4aeb9-ded0-3fd9-803a-e615244566d9-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(96, 36, NULL, NULL, 'cecda901-0ac2-3af2-8bf4-467a6474c5fb-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(97, 37, NULL, NULL, '55fac4fb-c47f-3ff0-9a26-bbe62db39eb1-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(98, 38, NULL, NULL, '29ca0620-4be5-37cf-99a0-92173c00aa10-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(99, 39, NULL, NULL, '70452341-9859-3fe5-8b7e-787d9d71f656-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(100, 40, NULL, NULL, '68050b0f-e4a7-316e-a526-b80cbead0e29-variant-0', '2019-04-16 08:45:32', '2019-04-16 08:45:32', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(101, 41, NULL, NULL, '98387692-7802-3552-9bbc-a7cebe11c85d-variant-0', '2019-04-16 08:45:33', '2019-04-16 08:45:33', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(102, 42, NULL, NULL, '6a618af3-b822-30f7-8ca1-1dbbc0f49193-variant-0', '2019-04-16 08:45:33', '2019-04-16 08:45:33', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(103, 43, NULL, NULL, '1c17a9cf-bd4a-3d53-8260-f31b8e85dd26-variant-0', '2019-04-16 08:45:33', '2019-04-16 08:45:33', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(104, 44, NULL, NULL, '597c3e3b-49d7-3192-b558-363940f08a93-variant-0', '2019-04-16 08:45:33', '2019-04-16 08:45:33', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(105, 45, NULL, NULL, 'fd00e600-1805-3465-986b-04299fb1848d-variant-0', '2019-04-16 08:45:33', '2019-04-16 08:45:33', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(106, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-0', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(107, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-1', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(108, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-2', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(109, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-3', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(110, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-4', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(111, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-5', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 5, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(112, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-6', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 6, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(113, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-7', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 7, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(114, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-8', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 8, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(115, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-9', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 9, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(116, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-10', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 10, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(117, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-11', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(118, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-12', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 12, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(119, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-13', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 13, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(120, 46, NULL, NULL, '2ce8f3b4-8896-3afc-8b25-68d4b2cdf123-variant-14', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 14, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(121, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-0', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(122, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-1', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(123, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-2', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(124, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-3', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 3, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(125, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-4', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 4, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(126, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-5', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 5, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(127, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-6', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 6, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(128, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-7', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 7, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(129, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-8', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 8, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(130, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-9', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 9, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(131, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-10', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 10, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(132, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-11', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 11, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(133, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-12', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 12, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(134, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-13', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 13, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(135, 47, NULL, NULL, 'd63a2b8c-f310-345b-b167-4741699269f5-variant-14', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 14, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(136, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-0', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(137, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-1', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(138, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-2', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(139, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-3', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 3, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(140, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-4', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 4, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(141, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-5', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(142, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-6', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 6, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(143, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-7', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 7, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(144, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-8', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(145, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-9', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 9, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(146, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-10', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(147, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-11', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(148, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-12', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 12, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(149, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-13', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 13, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(150, 48, NULL, NULL, 'aed41a28-3065-33b6-ae4e-8d63e43dda60-variant-14', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 14, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(151, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-0', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(152, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-1', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(153, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-2', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(154, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-3', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 3, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(155, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-4', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 4, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(156, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-5', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(157, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-6', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 6, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(158, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-7', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 7, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(159, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-8', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 8, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(160, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-9', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 9, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(161, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-10', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 10, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(162, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-11', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 11, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(163, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-12', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 12, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(164, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-13', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 13, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(165, 49, NULL, NULL, '3f408e3d-09d4-398e-9339-f4d093a2b066-variant-14', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 14, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(166, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-0', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(167, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-1', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(168, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-2', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(169, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-3', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 3, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(170, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-4', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 4, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(171, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-5', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 5, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(172, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-6', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(173, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-7', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 7, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(174, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-8', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(175, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-9', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 9, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(176, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-10', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 10, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(177, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-11', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(178, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-12', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 12, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(179, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-13', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 13, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(180, 50, NULL, NULL, '56d464e1-27c3-3d5d-b0c8-dcc022d2d613-variant-14', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 14, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(181, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-0', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(182, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-1', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(183, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-2', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(184, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-3', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 3, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(185, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-4', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 4, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(186, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-5', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 5, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(187, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-6', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(188, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-7', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 7, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(189, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-8', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 8, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(190, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-9', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 9, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(191, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-10', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 10, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(192, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-11', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 11, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(193, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-12', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 12, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(194, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-13', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 13, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(195, 51, NULL, NULL, '3e4b19aa-1103-3cc4-961b-290cd06989c9-variant-14', '2019-04-16 08:45:34', '2019-04-16 08:45:34', 14, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(196, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-0', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(197, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-1', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(198, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-2', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(199, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-3', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 3, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(200, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-4', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 4, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(201, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-5', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 5, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(202, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-6', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 6, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(203, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-7', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 7, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(204, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-8', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 8, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(205, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-9', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 9, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(206, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-10', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 10, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(207, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-11', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 11, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(208, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-12', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 12, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(209, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-13', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 13, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(210, 52, NULL, NULL, '5b4f6601-ca13-3003-9a5a-efedffd3e172-variant-14', '2019-04-16 08:45:34', '2019-04-16 08:45:35', 14, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(211, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-0', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(212, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-1', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(213, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-2', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(214, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-3', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 3, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(215, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-4', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 4, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(216, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-5', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(217, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-6', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 6, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(218, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-7', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 7, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(219, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-8', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 8, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(220, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-9', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 9, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(221, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-10', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(222, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-11', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 11, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(223, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-12', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 12, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(224, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-13', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 13, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(225, 53, NULL, NULL, '626a8f13-26ab-3848-82a6-aaf9e2f584dc-variant-14', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 14, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(226, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-0', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(227, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-1', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(228, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-2', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(229, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-3', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 3, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(230, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-4', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 4, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(231, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-5', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(232, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-6', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(233, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-7', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 7, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(234, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-8', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 8, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(235, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-9', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 9, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(236, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-10', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 10, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(237, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-11', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 11, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(238, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-12', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 12, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(239, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-13', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 13, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(240, 54, NULL, NULL, '7d46284d-69cc-34e7-8406-f31ec1283703-variant-14', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 14, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(241, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-0', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(242, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-1', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(243, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-2', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(244, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-3', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 3, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(245, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-4', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 4, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(246, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-5', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 5, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(247, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-6', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 6, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(248, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-7', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 7, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(249, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-8', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(250, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-9', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 9, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(251, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-10', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 10, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(252, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-11', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 11, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(253, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-12', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 12, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(254, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-13', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 13, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(255, 55, NULL, NULL, 'd4d918df-aefb-3577-871c-625453e89f0e-variant-14', '2019-04-16 08:45:35', '2019-04-16 08:45:35', 14, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(256, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-0', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(257, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-1', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(258, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-2', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(259, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-3', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(260, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-4', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 4, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(261, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-5', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 5, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(262, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-6', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 6, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(263, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-7', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 7, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(264, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-8', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 8, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(265, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-9', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 9, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(266, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-10', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 10, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(267, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-11', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 11, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(268, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-12', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 12, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(269, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-13', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 13, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(270, 56, NULL, NULL, '5743477a-5ac6-3eba-b3d3-cdd77a7fdf65-variant-14', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 14, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(271, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-0', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(272, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-1', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(273, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-2', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(274, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-3', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 3, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(275, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-4', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 4, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(276, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-5', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(277, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-6', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 6, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(278, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-7', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 7, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(279, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-8', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(280, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-9', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 9, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(281, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-10', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 10, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(282, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-11', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 11, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(283, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-12', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 12, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(284, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-13', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 13, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(285, 57, NULL, NULL, '048fc994-0ecd-3091-8b6d-d1f3448dded4-variant-14', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 14, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(286, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-0', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(287, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-1', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(288, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-2', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(289, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-3', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 3, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(290, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-4', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 4, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(291, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-5', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 5, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(292, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-6', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 6, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(293, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-7', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 7, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(294, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-8', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 8, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(295, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-9', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 9, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(296, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-10', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(297, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-11', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 11, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(298, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-12', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 12, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(299, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-13', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 13, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(300, 58, NULL, NULL, '105de7d3-a013-38e5-b0be-cc1a09d243b9-variant-14', '2019-04-16 08:45:37', '2019-04-16 08:45:37', 14, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(301, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-0', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(302, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-1', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(303, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-2', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(304, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-3', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 3, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(305, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-4', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 4, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(306, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-5', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(307, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-6', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(308, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-7', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 7, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(309, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-8', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 8, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(310, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-9', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 9, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(311, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-10', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 10, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(312, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-11', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 11, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `position`, `version`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `shipping_required`) VALUES
(313, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-12', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 12, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(314, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-13', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 13, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(315, 59, NULL, NULL, '037a5711-22a0-3ee9-928f-ddde9208857a-variant-14', '2019-04-16 08:45:37', '2019-04-16 08:45:38', 14, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(316, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-0', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(317, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-1', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(318, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-2', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(319, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-3', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(320, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-4', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 4, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(321, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-5', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 5, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(322, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-6', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 6, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(323, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-7', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 7, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(324, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-8', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 8, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(325, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-9', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 9, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(326, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-10', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 10, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(327, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-11', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 11, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(328, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-12', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 12, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(329, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-13', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 13, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(330, 60, NULL, NULL, '3a457321-1d59-3de2-ab5f-e9077aa55930-variant-14', '2019-04-16 08:45:38', '2019-04-16 08:45:38', 14, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(331, 61, NULL, NULL, 'V001', '2019-04-16 09:31:03', '2019-04-16 09:31:19', 0, 1, 0, 100, 0, NULL, NULL, NULL, NULL, 1);

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
(1, 1, 'voluptas', 'en_US'),
(2, 2, 'cumque', 'en_US'),
(3, 3, 'voluptatem', 'en_US'),
(4, 4, 'modi', 'en_US'),
(5, 5, 'et', 'en_US'),
(6, 6, 'totam', 'en_US'),
(7, 7, 'accusamus', 'en_US'),
(8, 8, 'vel', 'en_US'),
(9, 9, 'veniam', 'en_US'),
(10, 10, 'vitae', 'en_US'),
(11, 11, 'dolorem', 'en_US'),
(12, 12, 'cupiditate', 'en_US'),
(13, 13, 'aperiam', 'en_US'),
(14, 14, 'aut', 'en_US'),
(15, 15, 'rerum', 'en_US'),
(16, 16, 'nihil', 'en_US'),
(17, 17, 'unde', 'en_US'),
(18, 18, 'commodi', 'en_US'),
(19, 19, 'odio', 'en_US'),
(20, 20, 'eum', 'en_US'),
(21, 21, 'soluta', 'en_US'),
(22, 22, 'reprehenderit', 'en_US'),
(23, 23, 'dolor', 'en_US'),
(24, 24, 'aut', 'en_US'),
(25, 25, 'et', 'en_US'),
(26, 26, 'facilis', 'en_US'),
(27, 27, 'explicabo', 'en_US'),
(28, 28, 'est', 'en_US'),
(29, 29, 'ducimus', 'en_US'),
(30, 30, 'aliquid', 'en_US'),
(31, 31, 'voluptas', 'en_US'),
(32, 32, 'et', 'en_US'),
(33, 33, 'cumque', 'en_US'),
(34, 34, 'molestias', 'en_US'),
(35, 35, 'dolorem', 'en_US'),
(36, 36, 'facere', 'en_US'),
(37, 37, 'molestiae', 'en_US'),
(38, 38, 'alias', 'en_US'),
(39, 39, 'aut', 'en_US'),
(40, 40, 'maxime', 'en_US'),
(41, 41, 'tempore', 'en_US'),
(42, 42, 'rerum', 'en_US'),
(43, 43, 'est', 'en_US'),
(44, 44, 'et', 'en_US'),
(45, 45, 'similique', 'en_US'),
(46, 46, 'omnis', 'en_US'),
(47, 47, 'est', 'en_US'),
(48, 48, 'adipisci', 'en_US'),
(49, 49, 'eveniet', 'en_US'),
(50, 50, 'error', 'en_US'),
(51, 51, 'quam', 'en_US'),
(52, 52, 'eos', 'en_US'),
(53, 53, 'voluptates', 'en_US'),
(54, 54, 'suscipit', 'en_US'),
(55, 55, 'repudiandae', 'en_US'),
(56, 56, 'cupiditate', 'en_US'),
(57, 57, 'voluptatem', 'en_US'),
(58, 58, 'culpa', 'en_US'),
(59, 59, 'quo', 'en_US'),
(60, 60, 'id', 'en_US'),
(61, 61, 'fugit', 'en_US'),
(62, 62, 'dolor', 'en_US'),
(63, 63, 'rerum', 'en_US'),
(64, 64, 'nemo', 'en_US'),
(65, 65, 'occaecati', 'en_US'),
(66, 66, 'illum', 'en_US'),
(67, 67, 'sit', 'en_US'),
(68, 68, 'beatae', 'en_US'),
(69, 69, 'eaque', 'en_US'),
(70, 70, 'ad', 'en_US'),
(71, 71, 'unde', 'en_US'),
(72, 72, 'debitis', 'en_US'),
(73, 73, 'accusantium', 'en_US'),
(74, 74, 'sit', 'en_US'),
(75, 75, 'ut', 'en_US'),
(76, 76, 'dolores', 'en_US'),
(77, 77, 'nesciunt', 'en_US'),
(78, 78, 'sint', 'en_US'),
(79, 79, 'enim', 'en_US'),
(80, 80, 'ad', 'en_US'),
(81, 81, 'assumenda', 'en_US'),
(82, 82, 'debitis', 'en_US'),
(83, 83, 'odit', 'en_US'),
(84, 84, 'neque', 'en_US'),
(85, 85, 'non', 'en_US'),
(86, 86, 'omnis', 'en_US'),
(87, 87, 'qui', 'en_US'),
(88, 88, 'tempore', 'en_US'),
(89, 89, 'reiciendis', 'en_US'),
(90, 90, 'numquam', 'en_US'),
(91, 91, 'et', 'en_US'),
(92, 92, 'et', 'en_US'),
(93, 93, 'amet', 'en_US'),
(94, 94, 'laborum', 'en_US'),
(95, 95, 'reiciendis', 'en_US'),
(96, 96, 'et', 'en_US'),
(97, 97, 'accusantium', 'en_US'),
(98, 98, 'maxime', 'en_US'),
(99, 99, 'nisi', 'en_US'),
(100, 100, 'expedita', 'en_US'),
(101, 101, 'quia', 'en_US'),
(102, 102, 'qui', 'en_US'),
(103, 103, 'impedit', 'en_US'),
(104, 104, 'exercitationem', 'en_US'),
(105, 105, 'sed', 'en_US'),
(106, 106, 'quia', 'en_US'),
(107, 107, 'ut', 'en_US'),
(108, 108, 'fugiat', 'en_US'),
(109, 109, 'laborum', 'en_US'),
(110, 110, 'magnam', 'en_US'),
(111, 111, 'est', 'en_US'),
(112, 112, 'consequatur', 'en_US'),
(113, 113, 'occaecati', 'en_US'),
(114, 114, 'cupiditate', 'en_US'),
(115, 115, 'labore', 'en_US'),
(116, 116, 'velit', 'en_US'),
(117, 117, 'rem', 'en_US'),
(118, 118, 'fugit', 'en_US'),
(119, 119, 'optio', 'en_US'),
(120, 120, 'ex', 'en_US'),
(121, 121, 'quia', 'en_US'),
(122, 122, 'voluptatem', 'en_US'),
(123, 123, 'provident', 'en_US'),
(124, 124, 'dignissimos', 'en_US'),
(125, 125, 'aut', 'en_US'),
(126, 126, 'non', 'en_US'),
(127, 127, 'suscipit', 'en_US'),
(128, 128, 'omnis', 'en_US'),
(129, 129, 'libero', 'en_US'),
(130, 130, 'doloremque', 'en_US'),
(131, 131, 'eum', 'en_US'),
(132, 132, 'praesentium', 'en_US'),
(133, 133, 'consequatur', 'en_US'),
(134, 134, 'maxime', 'en_US'),
(135, 135, 'sint', 'en_US'),
(136, 136, 'ut', 'en_US'),
(137, 137, 'cumque', 'en_US'),
(138, 138, 'consequuntur', 'en_US'),
(139, 139, 'nobis', 'en_US'),
(140, 140, 'doloremque', 'en_US'),
(141, 141, 'voluptatum', 'en_US'),
(142, 142, 'expedita', 'en_US'),
(143, 143, 'est', 'en_US'),
(144, 144, 'nam', 'en_US'),
(145, 145, 'vel', 'en_US'),
(146, 146, 'et', 'en_US'),
(147, 147, 'molestias', 'en_US'),
(148, 148, 'voluptatem', 'en_US'),
(149, 149, 'in', 'en_US'),
(150, 150, 'deserunt', 'en_US'),
(151, 151, 'delectus', 'en_US'),
(152, 152, 'sed', 'en_US'),
(153, 153, 'cumque', 'en_US'),
(154, 154, 'et', 'en_US'),
(155, 155, 'aliquid', 'en_US'),
(156, 156, 'dolore', 'en_US'),
(157, 157, 'vitae', 'en_US'),
(158, 158, 'asperiores', 'en_US'),
(159, 159, 'sit', 'en_US'),
(160, 160, 'rem', 'en_US'),
(161, 161, 'inventore', 'en_US'),
(162, 162, 'deserunt', 'en_US'),
(163, 163, 'ipsum', 'en_US'),
(164, 164, 'nesciunt', 'en_US'),
(165, 165, 'labore', 'en_US'),
(166, 166, 'ea', 'en_US'),
(167, 167, 'alias', 'en_US'),
(168, 168, 'autem', 'en_US'),
(169, 169, 'repudiandae', 'en_US'),
(170, 170, 'ea', 'en_US'),
(171, 171, 'eum', 'en_US'),
(172, 172, 'voluptatem', 'en_US'),
(173, 173, 'quas', 'en_US'),
(174, 174, 'at', 'en_US'),
(175, 175, 'quo', 'en_US'),
(176, 176, 'aut', 'en_US'),
(177, 177, 'nesciunt', 'en_US'),
(178, 178, 'omnis', 'en_US'),
(179, 179, 'in', 'en_US'),
(180, 180, 'eligendi', 'en_US'),
(181, 181, 'et', 'en_US'),
(182, 182, 'dolorem', 'en_US'),
(183, 183, 'non', 'en_US'),
(184, 184, 'consequatur', 'en_US'),
(185, 185, 'dolorum', 'en_US'),
(186, 186, 'deserunt', 'en_US'),
(187, 187, 'ea', 'en_US'),
(188, 188, 'repellendus', 'en_US'),
(189, 189, 'perferendis', 'en_US'),
(190, 190, 'qui', 'en_US'),
(191, 191, 'cumque', 'en_US'),
(192, 192, 'eaque', 'en_US'),
(193, 193, 'sunt', 'en_US'),
(194, 194, 'sequi', 'en_US'),
(195, 195, 'vero', 'en_US'),
(196, 196, 'suscipit', 'en_US'),
(197, 197, 'sed', 'en_US'),
(198, 198, 'vero', 'en_US'),
(199, 199, 'officia', 'en_US'),
(200, 200, 'dicta', 'en_US'),
(201, 201, 'et', 'en_US'),
(202, 202, 'occaecati', 'en_US'),
(203, 203, 'eos', 'en_US'),
(204, 204, 'labore', 'en_US'),
(205, 205, 'voluptate', 'en_US'),
(206, 206, 'non', 'en_US'),
(207, 207, 'veritatis', 'en_US'),
(208, 208, 'alias', 'en_US'),
(209, 209, 'molestiae', 'en_US'),
(210, 210, 'natus', 'en_US'),
(211, 211, 'consequatur', 'en_US'),
(212, 212, 'quisquam', 'en_US'),
(213, 213, 'quo', 'en_US'),
(214, 214, 'facere', 'en_US'),
(215, 215, 'sapiente', 'en_US'),
(216, 216, 'non', 'en_US'),
(217, 217, 'dicta', 'en_US'),
(218, 218, 'qui', 'en_US'),
(219, 219, 'nam', 'en_US'),
(220, 220, 'voluptatem', 'en_US'),
(221, 221, 'ut', 'en_US'),
(222, 222, 'nesciunt', 'en_US'),
(223, 223, 'perferendis', 'en_US'),
(224, 224, 'labore', 'en_US'),
(225, 225, 'quo', 'en_US'),
(226, 226, 'tempore', 'en_US'),
(227, 227, 'perferendis', 'en_US'),
(228, 228, 'at', 'en_US'),
(229, 229, 'aut', 'en_US'),
(230, 230, 'sit', 'en_US'),
(231, 231, 'odit', 'en_US'),
(232, 232, 'eveniet', 'en_US'),
(233, 233, 'alias', 'en_US'),
(234, 234, 'quos', 'en_US'),
(235, 235, 'molestiae', 'en_US'),
(236, 236, 'delectus', 'en_US'),
(237, 237, 'totam', 'en_US'),
(238, 238, 'dignissimos', 'en_US'),
(239, 239, 'debitis', 'en_US'),
(240, 240, 'ut', 'en_US'),
(241, 241, 'est', 'en_US'),
(242, 242, 'debitis', 'en_US'),
(243, 243, 'qui', 'en_US'),
(244, 244, 'dolore', 'en_US'),
(245, 245, 'dignissimos', 'en_US'),
(246, 246, 'inventore', 'en_US'),
(247, 247, 'in', 'en_US'),
(248, 248, 'et', 'en_US'),
(249, 249, 'reprehenderit', 'en_US'),
(250, 250, 'eaque', 'en_US'),
(251, 251, 'eos', 'en_US'),
(252, 252, 'eaque', 'en_US'),
(253, 253, 'reiciendis', 'en_US'),
(254, 254, 'nihil', 'en_US'),
(255, 255, 'ea', 'en_US'),
(256, 256, 'ad', 'en_US'),
(257, 257, 'laborum', 'en_US'),
(258, 258, 'consequatur', 'en_US'),
(259, 259, 'quasi', 'en_US'),
(260, 260, 'voluptatum', 'en_US'),
(261, 261, 'veniam', 'en_US'),
(262, 262, 'repellendus', 'en_US'),
(263, 263, 'sint', 'en_US'),
(264, 264, 'adipisci', 'en_US'),
(265, 265, 'ullam', 'en_US'),
(266, 266, 'quas', 'en_US'),
(267, 267, 'quis', 'en_US'),
(268, 268, 'quia', 'en_US'),
(269, 269, 'tempore', 'en_US'),
(270, 270, 'soluta', 'en_US'),
(271, 271, 'minima', 'en_US'),
(272, 272, 'maiores', 'en_US'),
(273, 273, 'iure', 'en_US'),
(274, 274, 'itaque', 'en_US'),
(275, 275, 'aliquid', 'en_US'),
(276, 276, 'non', 'en_US'),
(277, 277, 'natus', 'en_US'),
(278, 278, 'cupiditate', 'en_US'),
(279, 279, 'voluptates', 'en_US'),
(280, 280, 'possimus', 'en_US'),
(281, 281, 'nulla', 'en_US'),
(282, 282, 'eligendi', 'en_US'),
(283, 283, 'est', 'en_US'),
(284, 284, 'illum', 'en_US'),
(285, 285, 'quod', 'en_US'),
(286, 286, 'dolore', 'en_US'),
(287, 287, 'eligendi', 'en_US'),
(288, 288, 'soluta', 'en_US'),
(289, 289, 'exercitationem', 'en_US'),
(290, 290, 'molestiae', 'en_US'),
(291, 291, 'repudiandae', 'en_US'),
(292, 292, 'labore', 'en_US'),
(293, 293, 'ea', 'en_US'),
(294, 294, 'officia', 'en_US'),
(295, 295, 'et', 'en_US'),
(296, 296, 'atque', 'en_US'),
(297, 297, 'delectus', 'en_US'),
(298, 298, 'fugiat', 'en_US'),
(299, 299, 'culpa', 'en_US'),
(300, 300, 'iste', 'en_US'),
(301, 301, 'qui', 'en_US'),
(302, 302, 'inventore', 'en_US'),
(303, 303, 'similique', 'en_US'),
(304, 304, 'modi', 'en_US'),
(305, 305, 'voluptatum', 'en_US'),
(306, 306, 'aliquam', 'en_US'),
(307, 307, 'labore', 'en_US'),
(308, 308, 'et', 'en_US'),
(309, 309, 'neque', 'en_US'),
(310, 310, 'cum', 'en_US'),
(311, 311, 'deserunt', 'en_US'),
(312, 312, 'velit', 'en_US'),
(313, 313, 'non', 'en_US'),
(314, 314, 'ut', 'en_US'),
(315, 315, 'molestiae', 'en_US'),
(316, 316, 'natus', 'en_US'),
(317, 317, 'quo', 'en_US'),
(318, 318, 'qui', 'en_US'),
(319, 319, 'voluptas', 'en_US'),
(320, 320, 'cupiditate', 'en_US'),
(321, 321, 'corrupti', 'en_US'),
(322, 322, 'libero', 'en_US'),
(323, 323, 'optio', 'en_US'),
(324, 324, 'sequi', 'en_US'),
(325, 325, 'alias', 'en_US'),
(326, 326, 'aliquam', 'en_US'),
(327, 327, 'quisquam', 'en_US'),
(328, 328, 'est', 'en_US'),
(329, 329, 'est', 'en_US'),
(330, 330, 'tempora', 'en_US'),
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
(1, 'christmas', 'Christmas', 'Qui doloribus ut et ipsa qui voluptatum.', 0, 1, NULL, 6, 0, NULL, NULL, '2019-04-16 08:45:24', '2019-04-16 08:45:47'),
(2, 'new_year', 'New Year', 'Qui doloribus ut et ipsa qui voluptatum.', 2, 1, 10, 2, 0, '2019-04-09 08:45:24', '2019-04-23 08:45:24', '2019-04-16 08:45:24', '2019-04-16 08:45:47');

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
(1, 1, 'order_percentage_discount', 'a:1:{s:10:\"percentage\";d:0.49;}'),
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
(2, 1),
(4, 2),
(5, 1),
(7, 1),
(9, 2),
(12, 1),
(14, 1),
(19, 1);

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
(1, 1, 'cart_quantity', 'a:1:{s:5:\"count\";i:9;}'),
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
(1, 1, 1, 'ready', NULL, '2019-04-16 08:45:43', '2019-04-16 08:45:44'),
(2, 3, 2, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(3, 2, 3, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(4, 3, 4, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(5, 1, 5, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(6, 2, 6, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(7, 3, 7, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(8, 3, 8, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(9, 2, 9, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(10, 2, 10, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(11, 2, 11, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(12, 3, 12, 'ready', NULL, '2019-04-16 08:45:46', '2019-04-16 08:45:46'),
(13, 3, 13, 'ready', NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(14, 1, 14, 'ready', NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(15, 1, 15, 'ready', NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(16, 1, 16, 'ready', NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(17, 1, 17, 'ready', NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(18, 2, 18, 'ready', NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(19, 3, 19, 'ready', NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47'),
(20, 3, 20, 'ready', NULL, '2019-04-16 08:45:47', '2019-04-16 08:45:47');

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
(1, NULL, 1, NULL, 'ups', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:3962;}}', 1, 'flat_rate', 1, 0, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23'),
(2, NULL, 1, NULL, 'dhl_express', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:8666;}}', 1, 'flat_rate', 1, 1, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23'),
(3, NULL, 1, NULL, 'fedex', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:7625;}}', 1, 'flat_rate', 1, 2, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23');

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
(1, 1, 'UPS', 'Libero neque et repellat ipsum.', 'en_US'),
(2, 2, 'DHL Express', 'Nostrum commodi dolores dolorem doloremque eius modi.', 'en_US'),
(3, 3, 'FedEx', 'Non voluptatem dolorem ab voluptas est occaecati adipisci.', 'en_US');

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
(1, 1, 'shop@example.com', 'shop@example.com', 1, '33xz8c8krpmosgoo44cscg4k00sooo4', '$argon2i$v=19$m=1024,t=2,p=2$TGlRYm9iSG9FVGoyTzVsag$5XZV3kALMnpLKeT3tp8adHTpPAI//lPZYKwfwi7wVss', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(2, 2, 'johnston.clint@yahoo.com', 'johnston.clint@yahoo.com', 1, 'i1eafcjm0wg8ccgg8cc48gg04wg0ww0', '$argon2i$v=19$m=1024,t=2,p=2$VlBIYU5ydWNxU0RGL0lORw$pyCQT9pJ+M/3imJQpcLecErhAjTOQO5tnNGEU90qkWE', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(3, 3, 'kemmer.leland@dicki.info', 'kemmer.leland@dicki.info', 1, 'k4j4z77cp3k8c8osooocccg08wk08kc', '$argon2i$v=19$m=1024,t=2,p=2$MTRRd2dWNy5JSE5HMzRpRw$0d4mK5O4vEBpb6BxlrLEQCcjrw2dEeVeMYB1nBjIyeg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(4, 4, 'leanne65@kuphal.com', 'leanne65@kuphal.com', 1, 'r27k0g2sq9cscscgoo4co4s04gcgs44', '$argon2i$v=19$m=1024,t=2,p=2$YUU2LmFDMWthUlFTVFJURQ$91Gez3jO8FCAUxq13AG8DG+8jNLfxLuyaGbNotoGyRw', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(5, 5, 'nrutherford@cummings.com', 'nrutherford@cummings.com', 1, 'e24vce3llm8sckw8kk080kg88wwcwks', '$argon2i$v=19$m=1024,t=2,p=2$WlJxRG5Mem9qMWNQblhBTA$3oP/OIpSsNblOGaeuLCRJ1YlqGRA8wHnAjxp/CkedaA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(6, 6, 'virgie.toy@hotmail.com', 'virgie.toy@hotmail.com', 1, 'hq99ib8t5dcs0wc4skssocosk4koo00', '$argon2i$v=19$m=1024,t=2,p=2$Vmw4NHBFbjZkRTBWakdHNw$A9wF6Huz358zGXGUtLnElr++KAFwoAUT+uSbJYzKyq8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(7, 7, 'kiehn.maudie@hotmail.com', 'kiehn.maudie@hotmail.com', 1, '7rlm36xi02gwo8sgscw4wk4040ccgsc', '$argon2i$v=19$m=1024,t=2,p=2$QnZWRDlvdHlWMzVhcURVaw$H8bBPztutwGHbkCdwb/PlvSbgSMlmfF2SqZjYMlvJcg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(8, 8, 'sflatley@yahoo.com', 'sflatley@yahoo.com', 1, 'nrk4ef2gmesck0oo8wgok888sscw0ko', '$argon2i$v=19$m=1024,t=2,p=2$ZmpjQWo5dVM1OVFIVFh0Uw$2PCD2ZXEQemwdmHjRZf5+V6stYVmpBLJgOVxmADCpts', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(9, 9, 'green.myriam@hotmail.com', 'green.myriam@hotmail.com', 1, 'tfaamx8d9ios8skks4ggkg4wsowogw8', '$argon2i$v=19$m=1024,t=2,p=2$T2NaSnBEL25ITWZhcUlZWQ$va2VXV/zXqmZ/Hufn7RMsP6N40Yb0KEfvrqsgMDWSNk', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(10, 10, 'khowe@yahoo.com', 'khowe@yahoo.com', 1, 'ggldk3mxg88ogcw0s0kkwos0o4w888g', '$argon2i$v=19$m=1024,t=2,p=2$RUNXdDk5SDJwS2FjZHExMg$/UjHk8tvboHf+NVnZyN8/GfRvpp6NoZBHyjfosuLjhc', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(11, 11, 'paucek.carlo@gmail.com', 'paucek.carlo@gmail.com', 1, 'd9wwm50lzg0sksskkgk4scokwc0occg', '$argon2i$v=19$m=1024,t=2,p=2$VVhaVVpaOW9MWVJ1alZ4ZQ$yjsXkSJ2jXs36JCEup6zCHva06GOc+CkyC7C5RQwlIA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(12, 12, 'araceli65@morar.biz', 'araceli65@morar.biz', 1, '9vpi495g2q0484oo0wg4wk8840s8gkc', '$argon2i$v=19$m=1024,t=2,p=2$dHh2eHUxa0lnYWtsdkV1bQ$YfdY/Mh4qDVW7zNN0l8VKIjgh8llQ2V5FpcmduIwdQs', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(13, 13, 'qtoy@hotmail.com', 'qtoy@hotmail.com', 1, 'dvkwk5p5zr40cc4c80scc8w4k84skgg', '$argon2i$v=19$m=1024,t=2,p=2$L2wyeklFZ0VvLmo1UERpdg$ljHCkyQn11r5m5DBUjS4SLUfsp6ldfTxQOm+WL1JPmg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(14, 14, 'gaylord39@hotmail.com', 'gaylord39@hotmail.com', 1, 'cjar9czyi3ccgo8wc8c4ggookogscgc', '$argon2i$v=19$m=1024,t=2,p=2$bTFsM3BkQlN2Z2xvb2VOUg$R/WjCUz817jO7YUp96YefMuD9Rc3bDhyFL3Yw9YqxF4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(15, 15, 'vkertzmann@grant.com', 'vkertzmann@grant.com', 1, '3j0oj2osks6c8w0co4804ss0cgc8www', '$argon2i$v=19$m=1024,t=2,p=2$SklZUzlhcWJRaG56c29KQg$TNOuE+6hSCwxanvuBi7fZ41qQcPTmWkm9zBe985pGTM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(16, 16, 'xeichmann@langosh.org', 'xeichmann@langosh.org', 1, '21kcyt5jtcskkwkokgkso0sc4sgwsw4', '$argon2i$v=19$m=1024,t=2,p=2$Q29nNktaMEFuM3U0ZUZFbA$ZWO/AVxL3q5ZNNghMx8OfHRxkgaHoQN0goEKn9OCtmc', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(17, 17, 'isabell.hessel@gmail.com', 'isabell.hessel@gmail.com', 1, '1ytzavgjr0w0wgso0gs04c80o0w8kw4', '$argon2i$v=19$m=1024,t=2,p=2$MC9hZjEwTlF1c2VrVkJjSg$Cf0htZALemYPGOZRcBzyfBQPei6yzJb583N4jrcIStk', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(18, 18, 'andreanne.willms@nolan.com', 'andreanne.willms@nolan.com', 1, 'l75z6vdzeqokcggwg44kkg480kw08o4', '$argon2i$v=19$m=1024,t=2,p=2$R0lwR1NkZVZieTdsbXROTg$ZCDfDZqZ4Pcv5BRGU18OOq8W6BqzGf4fT+h3eP7QZ5U', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(19, 19, 'brekke.casimer@swift.com', 'brekke.casimer@swift.com', 1, 'l0um82tidsgcgkkc00so80g0wcs4c4g', '$argon2i$v=19$m=1024,t=2,p=2$emhrYTBiTFduZlNYTE15Sg$1MRDBu6DaAwscIiDbexJqRltscHQ/YpTmncyguJ88ps', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(20, 20, 'enikolaus@hotmail.com', 'enikolaus@hotmail.com', 1, 'gkl44jhhdvcwccck04w4c84k4owsw4o', '$argon2i$v=19$m=1024,t=2,p=2$UHVxVmxMVGVrV2xrOFN3bA$Xae8bgCrhJ23VPfBm3GZq2IN0YuwGGT2jqIq5QqpyIE', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:23', '2019-04-16 08:45:23', 'argon2i'),
(21, 21, 'emmet.farrell@abernathy.net', 'emmet.farrell@abernathy.net', 1, 'azja53tgs4ggkwgkck08404k0448k0k', '$argon2i$v=19$m=1024,t=2,p=2$Zk5rNjNBNDN5UnRIYlBHeQ$UbQ/NUH2hwq1E7HWsfDxmgSFgPstHNLf2uDIVhOl8II', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-04-16 08:45:24', '2019-04-16 08:45:24', 'argon2i');

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
(1, 1, NULL, 'category', 1, 14, 0, 0, '2019-04-16 08:45:24', '2019-04-16 08:45:24'),
(2, 1, 1, 'mugs', 2, 3, 1, 0, '2019-04-16 08:45:24', '2019-04-16 08:45:24'),
(3, 1, 1, 'stickers', 4, 5, 1, 1, '2019-04-16 08:45:30', '2019-04-16 08:45:30'),
(4, 1, 1, 'books', 6, 7, 1, 2, '2019-04-16 08:45:32', '2019-04-16 08:45:32'),
(5, 1, 1, 't_shirts', 8, 13, 1, 3, '2019-04-16 08:45:33', '2019-04-16 08:45:33'),
(6, 1, 5, 'mens_t_shirts', 9, 10, 2, 0, '2019-04-16 08:45:33', '2019-04-16 08:45:33'),
(7, 1, 5, 'womens_t_shirts', 11, 12, 2, 1, '2019-04-16 08:45:33', '2019-04-16 08:45:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_taxon_translation`
--

INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`) VALUES
(1, 1, 'Category', 'category', 'Iste dolorum repellat et earum eos. Quasi recusandae aut sit rem facere. Natus ut et tempora nostrum non aut non. Laudantium modi facilis omnis voluptatem.', 'en_US'),
(2, 2, 'Mugs', 'mugs', 'Eligendi et sed sunt rem culpa necessitatibus. Facilis velit aut laboriosam nemo id incidunt est. Sit mollitia itaque fugit deserunt nobis et. Dolore expedita possimus nemo odit.', 'en_US'),
(3, 2, 'Tasses', 'tasses', 'Quasi qui consequatur qui non ut aut enim. Optio impedit error inventore nihil. Deserunt et consequatur assumenda pariatur voluptatum fuga laudantium.', 'fr_FR'),
(4, 3, 'Stickers', 'stickers', 'Et est magnam illum magnam itaque ut aliquid. Dolores explicabo fugit dolor ut quaerat dolore quia. Dolores pariatur molestiae ad quis dolorum est nobis.', 'en_US'),
(5, 3, 'Étiquettes', 'etiquettes', 'Recusandae consectetur reprehenderit omnis itaque. Vitae eveniet accusantium nulla deleniti reprehenderit distinctio. Ut quaerat qui quae ea pariatur fugit fugit. Consequatur in et vitae suscipit ea id odit.', 'fr_FR'),
(6, 4, 'Books', 'books', 'Iste ad laborum maxime facilis autem eius deleniti. Eveniet maxime quia consectetur fugiat vel. Dignissimos ut animi blanditiis placeat quia quidem quo sequi. Quidem asperiores quasi quae impedit dolor aliquam.', 'en_US'),
(7, 4, 'Livres', 'livres', 'Rerum enim id quisquam aut aperiam velit sed. Quam tempora laboriosam earum quas. Consectetur explicabo et magnam totam et aut et. Ex enim rerum amet praesentium architecto repellat ducimus.', 'fr_FR'),
(8, 5, 'T-Shirts', 't-shirts', 'Nisi at optio earum facere molestiae ducimus dolorum. Non ipsa harum sit commodi voluptatem alias ex qui. Minus cumque doloremque magnam labore placeat ex reiciendis.', 'en_US'),
(9, 6, 'Men', 't-shirts/men', 'Quia rerum eveniet quisquam earum. Officia assumenda aspernatur aut. Et aut maxime aperiam aut. Explicabo repudiandae laudantium temporibus.', 'en_US'),
(10, 6, 'Hommes', 't-shirts/hommes', 'Perferendis voluptas delectus sit sit. Voluptatem minus rerum quidem aut quos sit ducimus. Enim distinctio qui et.', 'fr_FR'),
(11, 7, 'Women', 't-shirts/women', 'Doloremque dignissimos voluptas eius aut laboriosam sit. Quas quae eaque inventore sint autem. Voluptatem nobis in tempore quasi. Amet omnis nulla dolore.', 'en_US'),
(12, 7, 'Hommes', 't-shirts/femmes', 'Modi aperiam doloribus delectus possimus delectus ut voluptas. Aut et sint reiciendis molestias esse. Dolor ut maiores distinctio quia. Totam doloribus velit est laboriosam perferendis veritatis.', 'fr_FR');

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
(1, 'clothing', 'Clothing', 'Ea velit laborum dolorum atque suscipit. Omnis suscipit sit reprehenderit vitae nemo qui at. In minus quisquam et dolorem. Quo aut tempora ipsum magni nihil fuga voluptatem.', '2019-04-16 08:45:24', '2019-04-16 08:45:24'),
(2, 'books', 'Books', 'Ullam unde perspiciatis placeat vitae. Ut ut ipsam sapiente dolor. Ipsum dolorem laborum cum non atque aliquid.', '2019-04-16 08:45:24', '2019-04-16 08:45:24'),
(3, 'other', 'Other', 'Reiciendis ab tempore non officia cumque debitis. Culpa nulla modi rerum laboriosam. Error aspernatur repudiandae maxime quia.', '2019-04-16 08:45:24', '2019-04-16 08:45:24');

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
(1, 1, 1, 'clothing_sales_tax_7', 'Clothing Sales Tax 7%', '0.07000', 1, 'default', '2019-04-16 08:45:24', '2019-04-16 08:45:24'),
(2, 2, 1, 'books_sales_tax_2', 'Books Sales Tax 2%', '0.02000', 1, 'default', '2019-04-16 08:45:24', '2019-04-16 08:45:24'),
(3, 3, 1, 'sales_tax_20', 'Sales Tax 20%', '0.20000', 0, 'default', '2019-04-16 08:45:24', '2019-04-16 08:45:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_zone`
--

INSERT INTO `sylius_zone` (`id`, `code`, `name`, `type`, `scope`) VALUES
(1, 'US', 'United States of America', 'country', 'all');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_zone_member`
--

INSERT INTO `sylius_zone_member` (`id`, `belongs_to`, `code`) VALUES
(1, 1, 'US');

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
