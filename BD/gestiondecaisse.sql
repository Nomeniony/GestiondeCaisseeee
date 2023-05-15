-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 13 mai 2023 à 10:41
-- Version du serveur : 5.7.36
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestiondecaisse`
--
CREATE DATABASE IF NOT EXISTS `gestiondecaisse` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestiondecaisse`;

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234'),
(16, 'an', 'an'),
(14, 'nl', 'b'),
(15, 'andry', 'andry'),
(13, 'nomeniony', 'noms'),
(17, 'jones', '123'),
(18, 'jones', '123'),
(19, 'jones', '1234'),
(20, 'nasolo', 'nasolo'),
(21, 'zafy', 'zafy');

-- --------------------------------------------------------

--
-- Structure de la table `volamiditra`
--

DROP TABLE IF EXISTS `volamiditra`;
CREATE TABLE IF NOT EXISTS `volamiditra` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `anarana` varchar(100) NOT NULL,
  `fanampiny` varchar(100) NOT NULL,
  `daty` date NOT NULL,
  `maribola` double NOT NULL,
  `antony` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `volamiditra`
--

INSERT INTO `volamiditra` (`id`, `anarana`, `fanampiny`, `daty`, `maribola`, `antony`) VALUES
(3, 'ANDRIANANDRASANA', 'Samueel', '2023-01-22', 45000, 'Taotrano'),
(5, 'joseph ndre', 'rsolondribe', '2023-01-25', 20000, 'Rakitra'),
(6, 'Kla', 'smbny', '2023-01-25', 2000, 'vidinjiro'),
(7, 'RAMANANDRAIBE', 'Sitrakiniaina', '2023-01-26', 2000, 'Livraison'),
(8, 'RAFAMANTANANTSOA', 'RASOLONDRAIBE', '2023-01-26', 40000, 'FISAORANA'),
(10, 'RASOLO', 'ZOSE', '2000-05-12', 2098, 'CNAPS'),
(11, 'RASOAMAMPIONONA', 'Joseph Andre', '2024-02-01', 20000, 'CNAPS'),
(12, 'ANDRIANANDRASANA ', 'Nomeniony Samueel', '2022-02-01', 30000, 'CNAPS'),
(18, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2023-03-05', 2000, 'Taotrano'),
(15, 'JOEPH', 'Richard', '2023-03-02', 2500, 'Fifohazana'),
(16, 'RASOANANDRASANA', 'Roseline', '2023-03-16', 200, 'Samihafa'),
(17, 'ANDRINANDRASANA ', 'Nomeniony Samuel', '2023-03-04', 1200, 'Taotrano'),
(19, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2023-03-05', 9147, 'Taotrano'),
(20, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2023-03-04', 1200, 'Fifaliana'),
(21, 'ANDRY', 'Soa', '2023-03-23', 299, 'taotrano'),
(22, 'RAMORA', 'Favory', '2023-03-23', 100000, 'FISAORANA'),
(23, 'FIIFA', 'Ni', '2023-03-23', 100, 'Rakitra'),
(24, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2030-03-13', 20055, 'AltaraA'),
(25, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2023-03-23', 3000, 'Taotrano'),
(26, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2023-03-23', 3000, 'Rakitra'),
(27, 'RAZAFY', 'MAMPIANDRA', '2023-03-23', 2998, 'Rakitra');

-- --------------------------------------------------------

--
-- Structure de la table `volamivoaka`
--

DROP TABLE IF EXISTS `volamivoaka`;
CREATE TABLE IF NOT EXISTS `volamivoaka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anarana` varchar(200) NOT NULL,
  `fanampinanarana` varchar(200) NOT NULL,
  `daty` date NOT NULL,
  `antony` varchar(200) NOT NULL,
  `maribola` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `volamivoaka`
--

INSERT INTO `volamivoaka` (`id`, `anarana`, `fanampinanarana`, `daty`, `antony`, `maribola`) VALUES
(13, 'RANDRIAMAMPIONONA', 'Piere', '2023-03-24', 'Vidinjir', '200'),
(10, 'RASOLONDRAIBE', 'Joseph Andre', '2023-02-02', 'cnaps', '600'),
(11, 'RANDRIANASOLO', 'jean', '2023-02-05', 'birika', '500'),
(12, 'jkghjl', 'jkmj', '2023-02-26', 'DFGJK', '123456'),
(14, 'ANDRIANANDRASANA', 'Nomeniony Samuell', '2023-03-04', 'Pano', '3000'),
(15, 'RASOLO', 'Mampiandra', '2023-03-05', 'Karama Trano', '48389'),
(20, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2023-03-04', 'Taotrano', '200'),
(19, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2023-03-04', 'Taotrano', '1000'),
(21, 'ANDRINANDRASANA', 'Samueel', '2023-03-23', 'MANGA', '299'),
(22, 'JONES', 'Jacobson', '2023-03-23', 'Fanampiana Ara-bola', '19322'),
(23, 'RAKOTO', 'Faby', '2023-03-23', 'Vary', '778'),
(24, 'anders', 'Niry', '2024-03-24', 'Fanitso', '80000'),
(25, 'ANDRINANDRASANA', 'Nomeniony Samuel', '2023-03-09', 'Taotrano', '55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
