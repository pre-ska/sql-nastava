-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 03:50 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `preska_videoteka`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `a2`
-- (See below for the actual view)
--
CREATE TABLE `a2` (
`ime` varchar(30)
,`prezime` varchar(30)
,`NIJE VRAĆENO` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `a3`
-- (See below for the actual view)
--
CREATE TABLE `a3` (
`ime` varchar(30)
,`prezime` varchar(30)
,`Datum_vracanja` datetime
,`Ime_filma` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `a4`
-- (See below for the actual view)
--
CREATE TABLE `a4` (
`ime` varchar(30)
,`prezime` varchar(30)
,`Datum_vracanja` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `a5`
-- (See below for the actual view)
--
CREATE TABLE `a5` (
`ime` varchar(30)
,`prezime` varchar(30)
,`Datum_vracanja` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `clanovi`
--

CREATE TABLE `clanovi` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ime` varchar(30) NOT NULL,
  `Prezime` varchar(30) NOT NULL,
  `Adresa` varchar(60) NOT NULL,
  `Telefon` varchar(20) NOT NULL,
  `Datum_clanstva` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clanovi`
--

INSERT INTO `clanovi` (`id`, `Ime`, `Prezime`, `Adresa`, `Telefon`, `Datum_clanstva`) VALUES
(1, 'Mate', 'Matic', 'Gaćelezi 13', '0800 1001', '2019-11-06 16:58:08'),
(2, 'Pero', 'Peric', 'Donja Batina 35a', '0800 1002', '2019-11-06 16:58:08'),
(3, 'Lara', 'Laric', 'Špičkovina 11', '0800 1003', '2019-11-06 16:58:08'),
(4, 'Ana', 'Anic', 'Svinjarevci bb', '0800 1004', '2019-11-06 16:58:08'),
(5, 'Mujo', 'Mujic', 'Prduša vela 18', '0800 1005', '2019-11-06 16:58:08'),
(6, 'Fata', 'Fatic', 'Špičkovina 19', '0800 1006', '2019-11-06 16:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ime_filma` varchar(30) NOT NULL,
  `Reziser` varchar(60) NOT NULL,
  `Glavni_glumci` varchar(255) NOT NULL,
  `Godina_izdavanja` char(4) NOT NULL,
  `Sifra_zanra` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `Ime_filma`, `Reziser`, `Glavni_glumci`, `Godina_izdavanja`, `Sifra_zanra`) VALUES
(1, 'The Dark Knight', 'Christopher Nolan', ' Christian Bale, Heath Ledger, Aaron Eckhart', '2008', 2),
(2, 'Fight Club', 'David Fincher', 'Brad Pitt, Edward Norton, Meat Loaf ', '1999', 4),
(3, 'Pulp Fiction', 'Quentin Tarantino', 'John Travolta, Uma Thurman, Samuel L. Jackson', '1994', 3),
(4, 'The Matrix', ' The Wachowski Brothers', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', '1999', 1),
(5, 'Forrest Gump', ' Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise', '1994', 3),
(6, 'Aliens', 'James Cameron', 'Sigourney Weaver, Michael Biehn, Carrie Henn', '1986', 1),
(7, 'Fifth Element', 'The Fifth Element', 'Bruce Willis, Milla Jovovich, Gary Oldman', '1997', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `film_zanr`
-- (See below for the actual view)
--
CREATE TABLE `film_zanr` (
`Ime_filma` varchar(30)
,`Ime_zanra` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `posudba`
--

CREATE TABLE `posudba` (
  `Clan_id` int(10) UNSIGNED NOT NULL,
  `Film_id` int(10) UNSIGNED NOT NULL,
  `Datum_posudbe` datetime NOT NULL,
  `Datum_vracanja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posudba`
--

INSERT INTO `posudba` (`Clan_id`, `Film_id`, `Datum_posudbe`, `Datum_vracanja`) VALUES
(1, 1, '2019-11-06 16:58:08', NULL),
(2, 2, '2019-11-06 16:58:08', '2019-11-08 16:58:08'),
(3, 7, '2019-11-06 16:58:08', NULL),
(4, 4, '2019-11-06 16:58:08', NULL),
(5, 3, '2019-11-06 16:58:08', NULL),
(6, 6, '2019-11-06 16:58:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zanr`
--

CREATE TABLE `zanr` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ime_zanra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zanr`
--

INSERT INTO `zanr` (`id`, `Ime_zanra`) VALUES
(1, 'SCI FI'),
(2, 'Action'),
(3, 'Drama'),
(4, 'Triler');

-- --------------------------------------------------------

--
-- Structure for view `a2`
--
DROP TABLE IF EXISTS `a2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `a2`  AS  select `clanovi`.`Ime` AS `ime`,`clanovi`.`Prezime` AS `prezime`,`posudba`.`Datum_vracanja` AS `NIJE VRAĆENO` from (`clanovi` join `posudba` on(`posudba`.`Clan_id` = `clanovi`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `a3`
--
DROP TABLE IF EXISTS `a3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `a3`  AS  select `clanovi`.`Ime` AS `ime`,`clanovi`.`Prezime` AS `prezime`,`posudba`.`Datum_vracanja` AS `Datum_vracanja`,`film`.`Ime_filma` AS `Ime_filma` from ((`clanovi` join `posudba` on(`posudba`.`Clan_id` = `clanovi`.`id`)) join `film` on(`film`.`id` = `posudba`.`Film_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `a4`
--
DROP TABLE IF EXISTS `a4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `a4`  AS  select `clanovi`.`Ime` AS `ime`,`clanovi`.`Prezime` AS `prezime`,`posudba`.`Datum_vracanja` AS `Datum_vracanja` from (`clanovi` join `posudba` on(`posudba`.`Clan_id` = `clanovi`.`id`)) where `posudba`.`Datum_vracanja` = NULL ;

-- --------------------------------------------------------

--
-- Structure for view `a5`
--
DROP TABLE IF EXISTS `a5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `a5`  AS  select `clanovi`.`Ime` AS `ime`,`clanovi`.`Prezime` AS `prezime`,`posudba`.`Datum_vracanja` AS `Datum_vracanja` from (`posudba` join `clanovi` on(`clanovi`.`id` = `posudba`.`Clan_id`)) where `posudba`.`Datum_vracanja` = NULL ;

-- --------------------------------------------------------

--
-- Structure for view `film_zanr`
--
DROP TABLE IF EXISTS `film_zanr`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `film_zanr`  AS  select `film`.`Ime_filma` AS `Ime_filma`,`zanr`.`Ime_zanra` AS `Ime_zanra` from (`film` join `zanr` on(`zanr`.`id` = `film`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanovi`
--
ALTER TABLE `clanovi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sifra_zanra` (`Sifra_zanra`);

--
-- Indexes for table `posudba`
--
ALTER TABLE `posudba`
  ADD PRIMARY KEY (`Clan_id`,`Film_id`),
  ADD KEY `Film_id` (`Film_id`);

--
-- Indexes for table `zanr`
--
ALTER TABLE `zanr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanovi`
--
ALTER TABLE `clanovi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `zanr`
--
ALTER TABLE `zanr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`Sifra_zanra`) REFERENCES `zanr` (`id`);

--
-- Constraints for table `posudba`
--
ALTER TABLE `posudba`
  ADD CONSTRAINT `posudba_ibfk_1` FOREIGN KEY (`Clan_id`) REFERENCES `clanovi` (`id`),
  ADD CONSTRAINT `posudba_ibfk_2` FOREIGN KEY (`Film_id`) REFERENCES `film` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
