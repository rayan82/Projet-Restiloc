-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 mars 2023 à 10:47
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restiloc`
--
DROP DATABASE IF EXISTS `restiloc`;
CREATE DATABASE IF NOT EXISTS `restiloc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `restiloc`;

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE IF NOT EXISTS `rdv` (
  `Code_dossier` varchar(10) NOT NULL,
  `ID_societe` char(10) NOT NULL,
  `Date_heure_RDV` datetime NOT NULL,
  `Adresse_RDV` varchar(50) NOT NULL,
  `Immatriculation` char(10) NOT NULL,
  `Nom_garage` varchar(25) DEFAULT NULL,
  `Nom_client` varchar(20) DEFAULT NULL,
  `Telephone_client` int(10) DEFAULT NULL,
  `Mail_client` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Code_dossier`),
  KEY `FK_RDV_societe` (`ID_societe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

CREATE TABLE IF NOT EXISTS `societe` (
  `ID_societe` char(10) NOT NULL,
  `Nom` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_societe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `rdv`
--
ALTER TABLE `rdv`
  ADD CONSTRAINT `FK_RDV_societe` FOREIGN KEY (`ID_societe`) REFERENCES `societe` (`ID_societe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
