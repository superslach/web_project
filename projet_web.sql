-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 14 mai 2019 à 16:59
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_web`
--

-- --------------------------------------------------------

--
-- Structure de la table `listevetement`
--

DROP TABLE IF EXISTS `listevetement`;
CREATE TABLE IF NOT EXISTS `listevetement` (
  `numListe` int(5) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(30) NOT NULL,
  `statut` varchar(30) NOT NULL,
  `appartientA` varchar(30) NOT NULL,
  PRIMARY KEY (`numListe`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `listevetement`
--

INSERT INTO `listevetement` (`numListe`, `intitule`, `statut`, `appartientA`) VALUES
(1, 'T-Shirt', '2', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

DROP TABLE IF EXISTS `membre`;
CREATE TABLE IF NOT EXISTS `membre` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `adresse` varchar(60) NOT NULL,
  `trigramme` varchar(100) NOT NULL,
  `permission` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `prenom`, `nom`, `email`, `adresse`, `trigramme`, `permission`) VALUES
(1, 'dadza', 'sag', 'dzadaz', 'dzdaz', 'zadad@dazdz.fr', 'zada', 'DDZ', 1),
(2, 'test', 's', 'test', 'test', 'test@test.fr', 'test', 'TTE', 1),
(3, 'slash', 'sa', 'sa', 'sa', 'sa@sa.fr', 'sa', 'SSA', 1),
(4, 'slash', 'sa', 'sa', 'sa', 'sa@sa.fr', 'sa', 'SSA', 1),
(5, 'dzdz', 'dz', 'dz', 'dz', 'dzd@dzd.fr', 'dz', 'DDZ', 1),
(6, 'zdadd', 'sar', 'dzadzad', 'dzadzad', 'adzde@dzadazd.fr', 'dazddz', 'DDZ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `vetement`
--

DROP TABLE IF EXISTS `vetement`;
CREATE TABLE IF NOT EXISTS `vetement` (
  `code` int(10) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(30) NOT NULL,
  `taille` varchar(30) NOT NULL,
  `prix` int(5) NOT NULL,
  `statut` int(3) NOT NULL,
  `description` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user` varchar(30) NOT NULL,
  `numListe` int(5) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vetement`
--

INSERT INTO `vetement` (`code`, `intitule`, `taille`, `prix`, `statut`, `description`, `image`, `user`, `numListe`) VALUES
(1, 'T-Shirt gris', 'L', 30, 1, 'C\'est un T-Shirt gris !', 'img/article/5ccdc79b42dbf8.85048739.jpg', 'test', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
