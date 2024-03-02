-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 02:15 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muzyka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `album`
--

CREATE TABLE `album` (
  `Id_Albumu` int(11) NOT NULL,
  `Tytuł` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Data_wydania` date NOT NULL,
  `Id_Wykonawcy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`Id_Albumu`, `Tytuł`, `Data_wydania`, `Id_Wykonawcy`) VALUES
(1, 'Tomorrow Comes Today', '2000-11-27', 1),
(2, 'The Now Now', '2018-06-29', 1),
(3, 'Marmur', '2016-11-03', 2),
(4, 'Bafangoo! część 1', '1996-11-23', 3),
(5, 'Insert EP', '2008-06-20', 4),
(6, 'Dare to Be Stupid', '1985-06-18', 5),
(7, 'Sound From The Shadow', '2011-09-19', 6),
(8, 'Usłysz nasze demo', '1994-05-18', 7),
(9, 'Bo fo Sho', '2008-06-17', 8),
(10, 'Jazz', '2012-11-23', 9),
(11, 'black mass', '2007-12-07', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunek`
--

CREATE TABLE `gatunek` (
  `Id_Gatunku` int(11) NOT NULL,
  `Nazwa_Gatunku` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gatunek`
--

INSERT INTO `gatunek` (`Id_Gatunku`, `Nazwa_Gatunku`) VALUES
(1, 'Rock'),
(2, 'JAZZ'),
(3, 'Comedy'),
(4, 'Hip-Hop'),
(5, 'Funk'),
(6, 'POP'),
(7, 'Trip-hop'),
(8, 'Alternatywna'),
(9, 'Rap');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunek_utwór`
--

CREATE TABLE `gatunek_utwór` (
  `Id_Gatunek_Utwór` int(11) NOT NULL,
  `Id_Gatunku` int(11) NOT NULL,
  `Id_Utworu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gatunek_utwór`
--

INSERT INTO `gatunek_utwór` (`Id_Gatunek_Utwór`, `Id_Gatunku`, `Id_Utworu`) VALUES
(2, 1, 2),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(70, 2, 70),
(42, 3, 42),
(43, 3, 43),
(44, 3, 44),
(45, 3, 45),
(46, 3, 46),
(47, 3, 47),
(48, 3, 48),
(49, 3, 49),
(50, 3, 50),
(51, 3, 51),
(52, 3, 52),
(64, 3, 64),
(65, 3, 65),
(66, 3, 66),
(67, 3, 67),
(68, 3, 68),
(69, 3, 69),
(3, 4, 3),
(4, 4, 4),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 4, 21),
(22, 4, 22),
(23, 4, 23),
(24, 4, 24),
(25, 4, 25),
(26, 4, 26),
(36, 4, 36),
(37, 4, 37),
(38, 4, 38),
(39, 4, 39),
(40, 4, 40),
(41, 4, 41),
(58, 4, 58),
(59, 4, 59),
(60, 4, 60),
(61, 4, 61),
(62, 4, 62),
(63, 4, 63),
(1, 7, 1),
(5, 8, 5),
(6, 8, 6),
(7, 8, 7),
(8, 8, 8),
(9, 8, 9),
(10, 8, 10),
(11, 8, 11),
(12, 8, 12),
(13, 8, 13),
(14, 8, 14),
(15, 8, 15),
(27, 9, 27),
(28, 9, 28),
(29, 9, 29),
(30, 9, 30),
(31, 9, 31),
(32, 9, 32),
(33, 9, 33),
(34, 9, 34),
(35, 9, 35);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ulubione_utwory`
--

CREATE TABLE `ulubione_utwory` (
  `Id_ulub` int(11) NOT NULL,
  `Id_Użytkownika` int(11) NOT NULL,
  `Id_Utworu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ulubione_utwory`
--

INSERT INTO `ulubione_utwory` (`Id_ulub`, `Id_Użytkownika`, `Id_Utworu`) VALUES
(2, 1, 1),
(1, 1, 3),
(3, 1, 6),
(5, 1, 23),
(6, 1, 25),
(4, 1, 34),
(12, 2, 51),
(10, 2, 59),
(11, 2, 61),
(8, 2, 62),
(7, 2, 63),
(9, 2, 67),
(17, 3, 21),
(18, 3, 31),
(15, 3, 53),
(14, 3, 54),
(13, 3, 64),
(16, 3, 64),
(22, 4, 12),
(21, 4, 24),
(19, 4, 52),
(20, 4, 54),
(24, 4, 55),
(23, 4, 74),
(27, 5, 15),
(28, 5, 16),
(29, 5, 31),
(30, 5, 41),
(26, 5, 48),
(25, 5, 63);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `utwory`
--

CREATE TABLE `utwory` (
  `Id_Utworu` int(11) NOT NULL,
  `Tytuł` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Długość` time NOT NULL,
  `Id_Albumu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `utwory`
--

INSERT INTO `utwory` (`Id_Utworu`, `Tytuł`, `Długość`, `Id_Albumu`) VALUES
(1, 'Tomorrow Comes Today', '03:12:00', 1),
(2, 'Rock the House', '04:09:00', 1),
(3, 'Latin Simone', '03:36:00', 1),
(4, '12D3', '03:12:00', 1),
(5, 'Humility', '03:18:00', 2),
(6, 'Kansas', '04:08:00', 2),
(7, 'Lake Zurich', '04:14:00', 2),
(8, 'One Percent', '02:21:00', 2),
(9, 'Tranz', '02:43:00', 2),
(10, 'Sorcererz', '03:00:00', 2),
(11, 'Magic City', '04:00:00', 2),
(12, 'Souk Eye', '04:35:00', 2),
(13, 'Hollywood', '04:53:00', 2),
(14, 'Idaho', '03:42:00', 2),
(15, 'Fire Flies', '03:53:00', 2),
(16, 'Marmur', '05:10:00', 3),
(17, 'Żyrandol', '03:51:00', 3),
(18, 'Krwawa Jesień', '04:23:00', 3),
(19, 'Grubo-Chude psy', '02:50:00', 3),
(20, 'Mgła 1', '03:54:00', 3),
(21, 'Mgła 2', '03:43:00', 3),
(22, 'Świat jest Wfem', '03:28:00', 3),
(23, 'Świecące prostokąty', '04:17:00', 3),
(24, 'Tsunami Blond', '02:56:00', 3),
(25, 'Ślepe Sumy', '03:36:00', 3),
(26, 'Deszcz na betonie', '03:53:00', 3),
(27, 'Intromental /R.I.P./', '03:44:00', 4),
(28, 'Bafangoo', '04:00:00', 4),
(29, '... i co dalej ?!', '04:15:00', 4),
(30, 'To co teraz... – Bobby De', '04:19:00', 4),
(31, 'Twoya Coorka!?', '03:12:00', 4),
(32, 'Mikamental /wild thing/ – smooth version', '02:59:00', 4),
(33, 'Grabarz? Cz. 1', '02:32:00', 4),
(34, 'Liroy był, Liroy jest, Liroy będzie /amen/', '03:42:00', 4),
(35, 'Bafangoo-? MIX', '06:57:00', 4),
(36, 'Insert', '03:01:00', 5),
(37, 'Bumbox', '03:44:00', 5),
(38, 'łona świat jest pełen filozofów', '05:35:00', 5),
(39, 'Co to będzie', '04:03:00', 5),
(40, 'Nic tu po nas', '03:49:00', 5),
(41, 'Nie zostało nic', '02:52:00', 5),
(42, 'Like a Surgeon', '03:32:00', 6),
(43, 'Dare to Be Stupid', '03:25:00', 6),
(44, 'I Want a New Duck', '03:04:00', 6),
(45, 'One More Minute', '04:04:00', 6),
(46, 'Yoda', '03:58:00', 6),
(47, 'George of the Jungle', '01:05:00', 6),
(48, 'Slime Creatures from Outer Space', '04:23:00', 6),
(49, 'Girls Just Want to Have Lunch', '02:48:00', 6),
(50, 'This Is the Life', '03:06:00', 6),
(51, 'Cable TV', '03:38:00', 6),
(52, 'Hooked on Polkas', '03:53:00', 6),
(53, 'P.I.L.', '02:32:00', 7),
(54, 'People in the Shadow', '04:31:00', 7),
(55, 'Darkness Paradise', '02:32:00', 7),
(56, 'Animal', '02:53:00', 7),
(57, 'Song 2', '02:33:00', 7),
(58, 'Czadu (i jeszcze coś)', '03:25:00', 8),
(59, 'Brat nie ma już miłości dla mnie', '03:28:00', 8),
(60, 'Więcej szmalu', '03:06:00', 8),
(61, 'Nie odejdę sam', '03:37:00', 8),
(62, 'Hardcore', '04:30:00', 8),
(63, 'Dzikie dzieciaki', '04:01:00', 8),
(64, 'Bo fo Sho', '02:48:00', 9),
(65, 'H-O-A-R', '02:46:00', 9),
(66, 'High School Party (Girl)', '02:40:00', 9),
(67, '3.14 Apple Pi', '03:30:00', 9),
(68, 'Sunday School', '02:40:00', 9),
(69, 'My Whole Family…', '03:54:00', 9),
(70, 'Simply JAZZ', '11:36:00', 10),
(71, 'Paranoid', '02:50:00', 11),
(72, 'Black Sabbath', '06:34:00', 11),
(73, 'Iron Man', '05:59:00', 11),
(74, 'Blue Suede Shoes', '02:06:00', 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `użytkownicy`
--

CREATE TABLE `użytkownicy` (
  `Id_Użytkownika` int(11) NOT NULL,
  `Nazwa_Użytkownika` text NOT NULL,
  `Hasło` text NOT NULL,
  `Data_Rejestracji` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `użytkownicy`
--

INSERT INTO `użytkownicy` (`Id_Użytkownika`, `Nazwa_Użytkownika`, `Hasło`, `Data_Rejestracji`) VALUES
(1, 'MelodyExplorer', '12345', '2024-02-21'),
(2, 'RhythmMaster', '12345', '2023-05-18'),
(3, 'SonicVoyager', '12345', '2022-02-25'),
(4, 'HarmonySeeker', '12345', '2021-09-23'),
(5, 'BeatNavigator', '12345', '2020-03-19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wykonawcy`
--

CREATE TABLE `wykonawcy` (
  `Id_Wykonawcy` int(11) NOT NULL,
  `Nazwa_Zespołu_Imię` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wykonawcy`
--

INSERT INTO `wykonawcy` (`Id_Wykonawcy`, `Nazwa_Zespołu_Imię`, `Nazwisko`) VALUES
(1, 'Gorillaz', ''),
(2, 'Taco Hemingway', ''),
(3, 'Liroy', ''),
(4, 'Łona i Webber', ''),
(5, 'Weird Al.', 'Yankovic'),
(6, 'Skip the Use', ''),
(7, 'Kaliber 44', ''),
(8, 'Bo', 'Burnham'),
(9, 'Tenacious D', ''),
(10, 'Black Sabbath', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`Id_Albumu`),
  ADD KEY `Id_Wykonawcy` (`Id_Wykonawcy`);

--
-- Indeksy dla tabeli `gatunek`
--
ALTER TABLE `gatunek`
  ADD PRIMARY KEY (`Id_Gatunku`);

--
-- Indeksy dla tabeli `gatunek_utwór`
--
ALTER TABLE `gatunek_utwór`
  ADD PRIMARY KEY (`Id_Gatunek_Utwór`),
  ADD KEY `Id_Gatunku` (`Id_Gatunku`,`Id_Utworu`),
  ADD KEY `Id_Utworu` (`Id_Utworu`);

--
-- Indeksy dla tabeli `ulubione_utwory`
--
ALTER TABLE `ulubione_utwory`
  ADD PRIMARY KEY (`Id_ulub`),
  ADD KEY `Id_Użytkownika` (`Id_Użytkownika`,`Id_Utworu`),
  ADD KEY `Id_Utworu` (`Id_Utworu`);

--
-- Indeksy dla tabeli `utwory`
--
ALTER TABLE `utwory`
  ADD PRIMARY KEY (`Id_Utworu`),
  ADD KEY `Id_Albumu` (`Id_Albumu`);

--
-- Indeksy dla tabeli `użytkownicy`
--
ALTER TABLE `użytkownicy`
  ADD PRIMARY KEY (`Id_Użytkownika`);

--
-- Indeksy dla tabeli `wykonawcy`
--
ALTER TABLE `wykonawcy`
  ADD PRIMARY KEY (`Id_Wykonawcy`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`Id_Wykonawcy`) REFERENCES `wykonawcy` (`Id_Wykonawcy`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gatunek_utwór`
--
ALTER TABLE `gatunek_utwór`
  ADD CONSTRAINT `gatunek_utwór_ibfk_1` FOREIGN KEY (`Id_Utworu`) REFERENCES `utwory` (`Id_Utworu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gatunek_utwór_ibfk_2` FOREIGN KEY (`Id_Gatunku`) REFERENCES `gatunek` (`Id_Gatunku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ulubione_utwory`
--
ALTER TABLE `ulubione_utwory`
  ADD CONSTRAINT `ulubione_utwory_ibfk_1` FOREIGN KEY (`Id_Użytkownika`) REFERENCES `użytkownicy` (`Id_Użytkownika`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ulubione_utwory_ibfk_2` FOREIGN KEY (`Id_Utworu`) REFERENCES `utwory` (`Id_Utworu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `utwory`
--
ALTER TABLE `utwory`
  ADD CONSTRAINT `utwory_ibfk_1` FOREIGN KEY (`Id_Albumu`) REFERENCES `album` (`Id_Albumu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
