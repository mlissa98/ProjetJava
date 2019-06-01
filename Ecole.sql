-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 01, 2019 at 10:15 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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

-- --------------------------------------------------------

--
-- Table structure for table `DISCIPLINE`
--

CREATE TABLE `DISCIPLINE` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ECOLE`
--

CREATE TABLE `ECOLE` (
  `ID_ECOLE` int(11) NOT NULL,
  `NOM_ECOLE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `INSCRIPTION`
--

CREATE TABLE `INSCRIPTION` (
  `ID` int(11) NOT NULL,
  `ID_CLASSE` int(11) NOT NULL,
  `ID_PERSONNE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `NIVEAU`
--

CREATE TABLE `NIVEAU` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PERSONNE`
--

CREATE TABLE `PERSONNE` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(255) NOT NULL,
  `PRENOM` varchar(255) NOT NULL,
  `TYPE` tinyint(1) NOT NULL
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
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CLASSE`
--
ALTER TABLE `CLASSE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `DETAILBULLETIN`
--
ALTER TABLE `DETAILBULLETIN`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `ENSEIGNEMENT`
--
ALTER TABLE `ENSEIGNEMENT`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `EVALUATION`
--
ALTER TABLE `EVALUATION`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `INSCRIPTION`
--
ALTER TABLE `INSCRIPTION`
  ADD PRIMARY KEY (`ID`);

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
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ANNEESCOLAIRE`
--
ALTER TABLE `ANNEESCOLAIRE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BULLETIN`
--
ALTER TABLE `BULLETIN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CLASSE`
--
ALTER TABLE `CLASSE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DETAILBULLETIN`
--
ALTER TABLE `DETAILBULLETIN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DISCIPLINE`
--
ALTER TABLE `DISCIPLINE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ECOLE`
--
ALTER TABLE `ECOLE`
  MODIFY `ID_ECOLE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ENSEIGNEMENT`
--
ALTER TABLE `ENSEIGNEMENT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EVALUATION`
--
ALTER TABLE `EVALUATION`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INSCRIPTION`
--
ALTER TABLE `INSCRIPTION`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `NIVEAU`
--
ALTER TABLE `NIVEAU`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PERSONNE`
--
ALTER TABLE `PERSONNE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `TRIMESTRE`
--
ALTER TABLE `TRIMESTRE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
