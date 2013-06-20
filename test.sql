-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 20 Juin 2013 à 08:52
-- Version du serveur: 5.1.44
-- Version de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `test`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `price`) VALUES
(0, 'Aucun', 0),
(1, 'Jambon', 0.95),
(2, 'Roquefort', 1.15),
(3, 'Pomme de terre', 0.85),
(5, 'Cornichon', 0.3),
(6, 'Bacon', 1.3),
(7, 'Chèvre', 0.55),
(8, 'Olive noire', 0.25),
(10, 'Oeuf', 0.9),
(11, 'Saumon', 1.7),
(12, 'Poulet', 1),
(13, 'Tomate', 0.6),
(14, 'Poivrons', 0.85);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Contenu de la table `pizza`
--

INSERT INTO `pizza` (`id`, `basePrice`, `ingredient3`, `ingredient2`, `ingredient1`, `pizza_ingredient1`, `name`) VALUES
(57, 3, 5, 3, 1, NULL, 'Pizza au fromage'),
(58, 3, 3, 2, 2, NULL, 'Pizza aux fruits de mer'),
(59, 3, 8, 12, 1, NULL, 'La Cannibale'),
(60, 5, 7, 1, 5, NULL, 'Orientale'),
(61, 3, 11, 14, 13, NULL, 'La Reine'),
(62, 4, 3, 8, 6, NULL, 'L''Australienne'),
(63, 4, 3, 8, 6, NULL, 'L''Australienne'),
(64, 4, 3, 10, 1, NULL, 'Margherita'),
(65, 4, 3, 8, 6, NULL, 'Peppina'),
(66, 4, 13, 10, 11, NULL, 'L''Hawaïenne'),
(67, 3, 5, 13, 12, NULL, 'Chickenita'),
(68, 4, 3, 5, 6, NULL, 'La Forestière'),
(69, 4, 7, 2, 4, NULL, 'L''Indienne'),
(70, 3, 5, 13, 12, NULL, 'Chickenita'),
(71, 4, 13, 10, 11, NULL, 'L''Hawaïenne');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `pizza`
--
ALTER TABLE `pizza`
  ADD CONSTRAINT `FK498EC68A4232063` FOREIGN KEY (`pizza_ingredient1`) REFERENCES `ingredients` (`id`);
