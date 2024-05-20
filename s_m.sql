-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 20 mai 2024 à 15:36
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `s&m`
--

-- --------------------------------------------------------

--
-- Structure de la table `deckcards`
--

DROP TABLE IF EXISTS `deckcards`;
CREATE TABLE IF NOT EXISTS `deckcards` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `NbCard` int NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `deckcards`
--

INSERT INTO `deckcards` (`Id`, `NbCard`, `Name`) VALUES
(1, 43, 'boop'),
(3, 52, 'jeux de 52 cartes'),
(4, 32, 'jeux de 32 cartes');

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `DeckcardId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `DeckcardId` (`DeckcardId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`Id`, `Name`, `DeckcardId`) VALUES
(6, 'Kamikaze', 3),
(11, 'Le 100', 3),
(12, 'LUBINOU ♥', 1),
(21, 'stéphanie', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`Id`, `UserName`, `Password`) VALUES
(4, 'eric', '$2a$11$E6Ec/bgfWTQHG1Gf5ime0Ofd71wRW8HenWbmjd.g9AbCMHnK2HM3W'),
(7, 'Le s avec', '$2a$11$S4ooxLVVoEVnvWv9lic7EOH1XOmp0q097QF32bEKIlx8gGk.CHRJ6'),
(20, 'mélanie', '$2a$11$GnKWNxfzi6pi6MfZuqN7T.Y.v0oUMtAxp2M1rCZKtAsPAOvPRhKAm'),
(21, 'lubinou', '$2a$11$jvatRRZqyYVJwWyBNLebm.Io1UC55RiekOdAevDWBxESZxUuXsZbW'),
(26, 'sinane', '$2a$11$hG40lT2OwcPxUysKOiXRfe6Uh3wkfQUw1yPAkxA7dXz13t.KwCnTK'),
(27, 'Pierre', '$2a$11$sINAyuMuhkt.51PQe5y1N.icVd44xdAWu44Ggf4l7TC0QvaTRhAua'),
(29, 'thomas', '$2a$11$Co/yh7eR1QKnJueocFkDbOm2OrThdctCkZ3z7n.08I/FS80Udo.1.'),
(30, 'La click', 'c430e40c5167bad174772024967c648480be64e2c038c4910df52052d23805f4'),
(31, 'soleil', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(32, 'Test', '7757eb5ecbe9ecb439ff6c7070c31766e222d8302cd6d26e6b022bc5a29cd250'),
(33, 'théo', '91850405a90e58248f4284fe66bb8afc96ed07cd7c9b2434b8fec086e8807ed9'),
(34, 'testtest', '84f168c7763ad29be1d08da4ce8eaa48de2726b04b6fe04a88b780f9aef51a7e'),
(35, 'erick', '7757eb5ecbe9ecb439ff6c7070c31766e222d8302cd6d26e6b022bc5a29cd250'),
(36, 'TT', '8d092b184800ef166671c38fff900a786f2ed2833f360a14c8b3fc28747ab8a3'),
(37, 'Mirakarotte', 'b24666ef81d385f4ee9dfeb21e1a8f3c8373f3657f34116fb99e57bbdce4b915'),
(38, 'TESTE', '7757eb5ecbe9ecb439ff6c7070c31766e222d8302cd6d26e6b022bc5a29cd250'),
(39, 'Flavien', 'efb1af2e5e75178bc0580dc1af272ae518f2d17ee2d1476944cae47f0fff73de'),
(40, 'Ticket_de_caisse', 'cb90d3bc750676ec5d041bdf559e60b69e23d9351cf84dbec6b55958967b9c35'),
(41, 'wolfox', '367d4b186d9d828353ec13374cbe4ebf7c139fa0491316d3ad95260c09e9acbd'),
(42, 'toto', 'cee26f0026256341be06586d436a6282e5ad5aa6fd42a45fab3510f1ad43bb4b');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`DeckcardId`) REFERENCES `deckcards` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
