-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 19 Juin 2013 à 23:50
-- Version du serveur: 5.6.12
-- Version de PHP: 5.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` date DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `cell_no` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `created`, `firstname`, `lastname`, `password`, `email_id`, `cell_no`, `birthdate`, `website`) VALUES
(3, NULL, 'nicolas', NULL, 'nicolas', 'nicolas.bernadine@ingesup.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `price`) VALUES
(0, 'Aucun', 0),
(1, 'Jambon', 0.95),
(2, 'Roquefort', 1.15),
(3, 'Pomme de terre', 0.85);

-- --------------------------------------------------------

--
-- Structure de la table `pizza`
--

CREATE TABLE IF NOT EXISTS `pizza` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `basePrice` int(11) DEFAULT NULL,
  `ingredient3` int(11) DEFAULT NULL,
  `ingredient2` int(11) DEFAULT NULL,
  `ingredient1` int(11) DEFAULT NULL,
  `pizza_ingredient1` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK498EC68A4232063` (`pizza_ingredient1`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `pizza`
--

INSERT INTO `pizza` (`id`, `basePrice`, `ingredient3`, `ingredient2`, `ingredient1`, `pizza_ingredient1`, `name`) VALUES
(10, 0, 1, 0, 3, NULL, NULL),
(14, 0, 1, 2, 3, NULL, NULL),
(15, 0, 1, 2, 2, NULL, NULL),
(17, 0, 3, 2, 2, NULL, NULL),
(20, 3, 2, 2, 2, NULL, NULL),
(21, 3, 2, 2, 0, NULL, NULL),
(22, 3, 2, 2, -1, NULL, NULL),
(23, 3, 3, 2, 1, NULL, NULL),
(24, 3, 3, 2, 1, NULL, NULL),
(25, 3, 3, 2, 2, NULL, NULL),
(28, 3, 3, 2, 1, NULL, 'pizza au fromage');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `pizza`
--
ALTER TABLE `pizza`
  ADD CONSTRAINT `FK498EC68A4232063` FOREIGN KEY (`pizza_ingredient1`) REFERENCES `ingredients` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
