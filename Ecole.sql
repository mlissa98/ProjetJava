-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 04, 2019 at 02:38 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Ecole`
--

-- --------------------------------------------------------

--
-- Table structure for table `ANNEESCOLAIRE`
--

CREATE TABLE `ANNEESCOLAIRE` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ANNEESCOLAIRE`
--

INSERT INTO `ANNEESCOLAIRE` (`ID`) VALUES
(20192020);

-- --------------------------------------------------------

--
-- Table structure for table `BULLETIN`
--

CREATE TABLE `BULLETIN` (
  `ID` int(11) NOT NULL,
  `APPRECIATION` text NOT NULL,
  `ID_TRIMESTRE` int(11) NOT NULL,
  `ID_INSCRIPTION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BULLETIN`
--

INSERT INTO `BULLETIN` (`ID`, `APPRECIATION`, `ID_TRIMESTRE`, `ID_INSCRIPTION`) VALUES
(2, 'Bon deuxieme trimestre ING1', 2, 2),
(3, 'Bon troisieme trimestre ING1', 3, 3),
(4, 'Bon premier trimestre ING2', 1, 15),
(5, 'Bon second trimestre ING2', 2, 5),
(6, 'Bon troisieme trimestre ING2', 3, 6),
(7, 'Bon premier trimestre ING3', 1, 7),
(8, 'Bon second trimestre ING3', 2, 8),
(9, 'Bon troisieme trimestre ING3', 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `CLASSE`
--

CREATE TABLE `CLASSE` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(255) NOT NULL,
  `ID_ECOLE` int(11) NOT NULL,
  `ID_NIVEAU` int(11) NOT NULL,
  `ID_ANNEESCOLAIRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLASSE`
--

INSERT INTO `CLASSE` (`ID`, `NOM`, `ID_ECOLE`, `ID_NIVEAU`, `ID_ANNEESCOLAIRE`) VALUES
(2, 'SP1', 37, 1, 20192020),
(3, 'SI1', 37, 1, 20192020),
(4, 'SM2', 37, 2, 20192020),
(5, 'SP2', 37, 2, 20192020),
(6, 'SI2', 37, 2, 20192020),
(7, 'SM3', 37, 3, 20192020),
(8, 'SP3', 37, 3, 20192020),
(9, 'SI3', 37, 3, 20192020);

-- --------------------------------------------------------

--
-- Table structure for table `DETAILBULLETIN`
--

CREATE TABLE `DETAILBULLETIN` (
  `ID` int(11) NOT NULL,
  `APPRECIATION` text NOT NULL,
  `ID_BULLETIN` int(11) NOT NULL,
  `ID_ENSEIGNEMENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DETAILBULLETIN`
--

INSERT INTO `DETAILBULLETIN` (`ID`, `APPRECIATION`, `ID_BULLETIN`, `ID_ENSEIGNEMENT`) VALUES
(5, 'Bon deuxieme trimestre de Mecanique', 2, 2),
(6, 'Bon deuxieme trimestre de C', 2, 3),
(8, 'Bon troisieme trimestre Mecanique', 3, 2),
(9, 'Bon troisieme trimestre C', 3, 3),
(10, 'Bon premier trimestre Matrices', 4, 4),
(11, 'Bon premier trimestre Electromagnetisme', 4, 5),
(12, 'Bon premier trimestre C++', 4, 6),
(13, 'Bon deuxieme trimestre Matrices', 5, 4),
(14, 'Bon deuxieme trimestre Electromagnetisme', 5, 5),
(15, 'Bon deuxieme trimestre C++', 5, 6),
(16, 'Bon troisieme trimestre Matrices', 6, 4),
(17, 'Bon troisieme trimestre Electromagnetisme', 6, 5),
(18, 'Bon troisieme trimestre C++', 6, 6),
(19, 'Bon premier trimestre Probabilites', 7, 7),
(20, 'Bon premier trimestre Thermodynamique', 7, 8),
(21, 'Bon premier trimestre Java', 7, 9),
(22, 'Bon deuxieme trimestre Probabilites', 8, 7),
(23, 'Bon deuxieme trimestre Thermodynamique', 8, 8),
(24, 'Bon deuxieme trimestre Java', 8, 9),
(25, 'Bon troisieme trimestre Probabilites', 9, 7),
(26, 'Bon troisieme tromestre Thermodynamique', 9, 8),
(27, 'Bon troisieme trimestre Java', 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `DISCIPLINE`
--

CREATE TABLE `DISCIPLINE` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DISCIPLINE`
--

INSERT INTO `DISCIPLINE` (`ID`, `NOM`) VALUES
(1, 'DL'),
(2, 'MECANIQUE'),
(3, 'C'),
(4, 'MATRICES'),
(5, 'ELECTROMAGNETIQUE'),
(6, 'C++'),
(7, 'PROBABILITES'),
(8, 'THERMODYNAMIQUE'),
(9, 'JAVA');

-- --------------------------------------------------------

--
-- Table structure for table `ECOLE`
--

CREATE TABLE `ECOLE` (
  `ID_ECOLE` int(11) NOT NULL,
  `NOM_ECOLE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ECOLE`
--

INSERT INTO `ECOLE` (`ID_ECOLE`, `NOM_ECOLE`) VALUES
(37, 'ECE');

-- --------------------------------------------------------

--
-- Table structure for table `ELEVE`
--

CREATE TABLE `ELEVE` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ELEVE`
--

INSERT INTO `ELEVE` (`ID`, `Nom`, `Prenom`) VALUES
(20, 'HADJEB', 'LYDIA'),
(21, 'DAMON', 'MELISSA'),
(22, 'NJITCHE', 'LORENZO'),
(100, 'lorenzo', 'HADJEB');

-- --------------------------------------------------------

--
-- Table structure for table `ENSEIGNEMENT`
--

CREATE TABLE `ENSEIGNEMENT` (
  `ID` int(11) NOT NULL,
  `ID_CLASSE` int(11) NOT NULL,
  `ID_DISCIPLINE` int(11) NOT NULL,
  `ID_PERSONNE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ENSEIGNEMENT`
--

INSERT INTO `ENSEIGNEMENT` (`ID`, `ID_CLASSE`, `ID_DISCIPLINE`, `ID_PERSONNE`) VALUES
(2, 2, 2, 11),
(3, 3, 3, 12),
(4, 4, 4, 13),
(5, 5, 5, 14),
(6, 6, 6, 15),
(7, 7, 7, 16),
(8, 8, 8, 17),
(9, 9, 9, 18);

-- --------------------------------------------------------

--
-- Table structure for table `EVALUATION`
--

CREATE TABLE `EVALUATION` (
  `ID` int(11) NOT NULL,
  `NOTE` double NOT NULL,
  `APPRECIATION` text NOT NULL,
  `ID_DETAILBULLETIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EVALUATION`
--

INSERT INTO `EVALUATION` (`ID`, `NOTE`, `APPRECIATION`, `ID_DETAILBULLETIN`) VALUES
(9, 12, 'AB', 5),
(10, 8, 'E', 5),
(11, 14, 'B', 6),
(12, 17, 'TP', 6),
(15, 11, 'P', 8),
(16, 10, 'P', 8),
(17, 16, 'TB', 9),
(18, 13, 'AB', 9),
(19, 12, 'AB', 10),
(20, 13.75, 'AB', 10),
(21, 11.75, 'AB', 11),
(22, 14.5, 'B', 11),
(23, 16, 'TB', 12),
(24, 11, 'P', 12),
(25, 13, 'AB', 13),
(26, 12.25, 'AB', 13),
(27, 12, 'AB', 14),
(28, 10, 'P', 14),
(29, 18, 'TB', 15),
(30, 15.5, 'B', 15),
(31, 18, 'TB', 16),
(32, 11, 'P', 16),
(33, 11.75, 'AB', 17),
(34, 14.25, 'B', 17),
(35, 13.5, 'AB', 18),
(36, 19, 'TB', 18),
(37, 12, 'AB', 19),
(38, 16.5, 'TB', 19),
(39, 11.75, 'AB', 20),
(40, 15.75, 'TB', 20),
(41, 14, 'B', 21),
(42, 15, 'TB', 21),
(43, 18, 'TB', 22),
(44, 11, 'P', 22),
(45, 12, 'AB', 23),
(46, 13, 'AB', 23),
(47, 15, 'B', 24),
(48, 17, 'TB', 24),
(49, 11, 'P', 25),
(50, 10, 'P', 25),
(51, 18.25, 'TB', 26),
(52, 14, 'B', 26),
(53, 16.5, 'TB', 27),
(54, 11, 'P', 27),
(55, 16, 'TB', 27),
(56, 10, 'AB', 27);

-- --------------------------------------------------------

--
-- Table structure for table `INSCRIPTION`
--

CREATE TABLE `INSCRIPTION` (
  `ID` int(11) NOT NULL,
  `ID_CLASSE` int(11) NOT NULL,
  `ID_ELEVE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `INSCRIPTION`
--

INSERT INTO `INSCRIPTION` (`ID`, `ID_CLASSE`, `ID_ELEVE`) VALUES
(2, 2, 20),
(3, 3, 20),
(5, 5, 21),
(6, 6, 21),
(7, 7, 22),
(8, 8, 22),
(9, 9, 22),
(15, 4, 21),
(19, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `NIVEAU`
--

CREATE TABLE `NIVEAU` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NIVEAU`
--

INSERT INTO `NIVEAU` (`ID`, `NOM`) VALUES
(1, 'ING1'),
(2, 'ING2'),
(3, 'ING3');

-- --------------------------------------------------------

--
-- Table structure for table `PERSONNE`
--

CREATE TABLE `PERSONNE` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(255) NOT NULL,
  `PRENOM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PERSONNE`
--

INSERT INTO `PERSONNE` (`ID`, `NOM`, `PRENOM`) VALUES
(10, 'JAFFAL', 'BASMA'),
(11, 'MULLER', 'FRANCOIS'),
(12, 'SEGADO', 'JP'),
(13, 'HOUARI', 'MECHKOUR'),
(14, 'MOUHALI', 'WALEED'),
(15, 'DIEDLER', 'FLORENT'),
(16, 'LECOR', 'LUC'),
(17, 'PULLICINO', 'MICHEL'),
(18, 'BUSCA', 'JEANMICHEL');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `ID_CLASSE` int(11) NOT NULL,
  `ID_PERSONNE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TRIMESTRE`
--

CREATE TABLE `TRIMESTRE` (
  `ID` int(11) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `DEBUT` int(11) NOT NULL,
  `FIN` int(11) NOT NULL,
  `ID_ANNEESCOLAIRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TRIMESTRE`
--

INSERT INTO `TRIMESTRE` (`ID`, `NUMERO`, `DEBUT`, `FIN`, `ID_ANNEESCOLAIRE`) VALUES
(1, 1, 9, 12, 20192020),
(2, 2, 1, 4, 20192020),
(3, 3, 5, 8, 20192020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ANNEESCOLAIRE`
--
ALTER TABLE `ANNEESCOLAIRE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BULLETIN`
--
ALTER TABLE `BULLETIN`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `bulletin_ibfk_1` (`ID_INSCRIPTION`),
  ADD KEY `ID_TRIMESTRE` (`ID_TRIMESTRE`);

--
-- Indexes for table `CLASSE`
--
ALTER TABLE `CLASSE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `year` (`ID_ANNEESCOLAIRE`),
  ADD KEY `level` (`ID_NIVEAU`),
  ADD KEY `school` (`ID_ECOLE`);

--
-- Indexes for table `DETAILBULLETIN`
--
ALTER TABLE `DETAILBULLETIN`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_BULLETIN` (`ID_BULLETIN`),
  ADD KEY `ID_ENSEIGNEMENT` (`ID_ENSEIGNEMENT`);

--
-- Indexes for table `DISCIPLINE`
--
ALTER TABLE `DISCIPLINE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ECOLE`
--
ALTER TABLE `ECOLE`
  ADD PRIMARY KEY (`ID_ECOLE`);

--
-- Indexes for table `ELEVE`
--
ALTER TABLE `ELEVE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ENSEIGNEMENT`
--
ALTER TABLE `ENSEIGNEMENT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `room` (`ID_CLASSE`),
  ADD KEY `area` (`ID_DISCIPLINE`),
  ADD KEY `ID_PERSONNE` (`ID_PERSONNE`);

--
-- Indexes for table `EVALUATION`
--
ALTER TABLE `EVALUATION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_DETAILBULLETIN` (`ID_DETAILBULLETIN`);

--
-- Indexes for table `INSCRIPTION`
--
ALTER TABLE `INSCRIPTION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `inscription_ibfk_1` (`ID_CLASSE`),
  ADD KEY `eleve` (`ID_ELEVE`);

--
-- Indexes for table `NIVEAU`
--
ALTER TABLE `NIVEAU`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PERSONNE`
--
ALTER TABLE `PERSONNE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TRIMESTRE`
--
ALTER TABLE `TRIMESTRE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_ANNEESCOLAIRE` (`ID_ANNEESCOLAIRE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ANNEESCOLAIRE`
--
ALTER TABLE `ANNEESCOLAIRE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20192021;

--
-- AUTO_INCREMENT for table `BULLETIN`
--
ALTER TABLE `BULLETIN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `CLASSE`
--
ALTER TABLE `CLASSE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `DETAILBULLETIN`
--
ALTER TABLE `DETAILBULLETIN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `DISCIPLINE`
--
ALTER TABLE `DISCIPLINE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ECOLE`
--
ALTER TABLE `ECOLE`
  MODIFY `ID_ECOLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ENSEIGNEMENT`
--
ALTER TABLE `ENSEIGNEMENT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `EVALUATION`
--
ALTER TABLE `EVALUATION`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `INSCRIPTION`
--
ALTER TABLE `INSCRIPTION`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `NIVEAU`
--
ALTER TABLE `NIVEAU`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PERSONNE`
--
ALTER TABLE `PERSONNE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `TRIMESTRE`
--
ALTER TABLE `TRIMESTRE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BULLETIN`
--
ALTER TABLE `BULLETIN`
  ADD CONSTRAINT `bulletin_ibfk_1` FOREIGN KEY (`ID_INSCRIPTION`) REFERENCES `INSCRIPTION` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bulletin_ibfk_2` FOREIGN KEY (`ID_TRIMESTRE`) REFERENCES `TRIMESTRE` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CLASSE`
--
ALTER TABLE `CLASSE`
  ADD CONSTRAINT `level` FOREIGN KEY (`ID_NIVEAU`) REFERENCES `NIVEAU` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `school` FOREIGN KEY (`ID_ECOLE`) REFERENCES `ECOLE` (`ID_ECOLE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `year` FOREIGN KEY (`ID_ANNEESCOLAIRE`) REFERENCES `ANNEESCOLAIRE` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `DETAILBULLETIN`
--
ALTER TABLE `DETAILBULLETIN`
  ADD CONSTRAINT `detailbulletin_ibfk_1` FOREIGN KEY (`ID_BULLETIN`) REFERENCES `BULLETIN` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailbulletin_ibfk_2` FOREIGN KEY (`ID_ENSEIGNEMENT`) REFERENCES `ENSEIGNEMENT` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ENSEIGNEMENT`
--
ALTER TABLE `ENSEIGNEMENT`
  ADD CONSTRAINT `area` FOREIGN KEY (`ID_DISCIPLINE`) REFERENCES `DISCIPLINE` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enseignement_ibfk_1` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `PERSONNE` (`ID`),
  ADD CONSTRAINT `room` FOREIGN KEY (`ID_CLASSE`) REFERENCES `CLASSE` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EVALUATION`
--
ALTER TABLE `EVALUATION`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`ID_DETAILBULLETIN`) REFERENCES `DETAILBULLETIN` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `INSCRIPTION`
--
ALTER TABLE `INSCRIPTION`
  ADD CONSTRAINT `eleve` FOREIGN KEY (`ID_ELEVE`) REFERENCES `ELEVE` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`ID_CLASSE`) REFERENCES `CLASSE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `TRIMESTRE`
--
ALTER TABLE `TRIMESTRE`
  ADD CONSTRAINT `trimestre_ibfk_1` FOREIGN KEY (`ID_ANNEESCOLAIRE`) REFERENCES `ANNEESCOLAIRE` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
