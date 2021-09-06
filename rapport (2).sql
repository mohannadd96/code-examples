-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 03, 2021 at 11:24 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapport`
--

-- --------------------------------------------------------

--
-- Table structure for table `rapport`
--

DROP TABLE IF EXISTS `rapport`;
CREATE TABLE IF NOT EXISTS `rapport` (
  `idrapport` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(20) NOT NULL,
  `annee` date NOT NULL,
  `etudiant` int(11) NOT NULL,
  `valide` int(11) NOT NULL,
  `rapport` varchar(200) NOT NULL,
  `note` int(5) DEFAULT NULL,
  `note2` int(5) DEFAULT NULL,
  PRIMARY KEY (`idrapport`),
  KEY `id_etudiant` (`etudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rapport`
--

INSERT INTO `rapport` (`idrapport`, `titre`, `annee`, `etudiant`, `valide`, `rapport`, `note`, `note2`) VALUES
(12, 'Rapport pfe', '2021-08-18', 1, 1, 'nt_param_ponderation.xlsx', 3, 1),
(13, 'Sujet a ', '2021-08-16', 1, 1, 'Novus_candidate_brochure.pdf', 4, 2),
(14, 'PHP', '2021-08-31', 1, 1, 'test.txt', 3, 1),
(15, 'aler', '2021-08-25', 1, 1, 'Rapport_iheb_FInal__Copy_.pdf', 3, 5),
(16, 'test', '2021-08-29', 1, 1, 'contact.component.ts', 3, 3),
(17, 'IBM', '2021-09-05', 1, 1, 'Rapport PFE Nour Hidoussi.pdf', 2, 1),
(18, 'rapport pfe 2 ', '2021-08-24', 1, 0, 'Rapport_iheb_FInal__Copy_.pdf', 4, 2),
(19, 'microsoft', '2021-08-24', 1, 0, 'Rap_PFE_ING-GInfo-2020-11.pdf', 3, NULL),
(20, 'inetum', '2021-08-26', 1, 1, 'RapportPFE_Nidhal_Hemandi__Final.pdf', 0, NULL),
(21, 'angular', '2021-08-28', 1, 0, 'reseau_sea.pdf', 3, 3),
(22, 'oracle', '2021-08-31', 1, 0, 'Cours-Administration-des-BD-1.pdf', 0, NULL),
(23, 'IBM ', '2021-08-26', 1, 0, 'Partie-1-gestion-De-Projet.pdf', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `rmdp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `nom`, `prenom`, `mdp`, `rmdp`, `email`, `role`) VALUES
(1, 'mohan', 'khadhraoui', '123456', '123456', 'mohnad@live.fr', 1),
(2, 'john', 'smith', '123456', '123456', 'test@test.com', 2),
(3, 'ovouvwe', 'kefi', '147', '147', 'kife@live.fr', 1),
(5, 'testt', 'testtest', '123', '123', 'testt@live.fr', 3),
(6, 'abri', 'abro', '123', '123', 'abra@live.fr', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rapport`
--
ALTER TABLE `rapport`
  ADD CONSTRAINT `id_etudiant` FOREIGN KEY (`etudiant`) REFERENCES `user` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
