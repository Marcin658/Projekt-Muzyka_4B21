-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 11:17 PM
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
  `Tytul` text NOT NULL,
  `Data_wydania` date NOT NULL,
  `Id_Wykonawcy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`Id_Albumu`, `Tytul`, `Data_wydania`, `Id_Wykonawcy`) VALUES
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
  `Id_Uzytkownika` int(11) NOT NULL,
  `Id_Utworu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `ulubione_utwory`
--

INSERT INTO `ulubione_utwory` (`Id_ulub`, `Id_Uzytkownika`, `Id_Utworu`) VALUES
(16, 21, 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `utwory`
--

CREATE TABLE `utwory` (
  `Id_Utworu` int(11) NOT NULL,
  `Tytul` text NOT NULL,
  `Dlugosc` int(11) NOT NULL,
  `Id_Albumu` int(11) NOT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `utwory`
--

INSERT INTO `utwory` (`Id_Utworu`, `Tytul`, `Dlugosc`, `Id_Albumu`, `Link`) VALUES
(1, 'Tomorrow Comes Today', 192, 1, 'https://www.youtube.com/watch?v=PiNdcBg3xC8'),
(2, 'Rock the House', 249, 1, 'https://www.youtube.com/watch?v=lRlmM88zzbY'),
(3, 'Latin Simone', 216, 1, 'https://www.youtube.com/watch?v=5xQzNkkedKI'),
(4, '12D3', 192, 1, 'https://www.youtube.com/watch?v=nWIWAOhpcpQ'),
(5, 'Humility', 198, 2, 'https://www.youtube.com/watch?v=E5yFcdPAGv0'),
(6, 'Kansas', 248, 2, 'https://www.youtube.com/watch?v=skKP6QwOXYA'),
(7, 'Lake Zurich', 254, 2, 'https://www.youtube.com/watch?v=68JpPpSc7bs'),
(8, 'One Percent', 141, 2, 'https://www.youtube.com/watch?v=x42vW0y_uFo'),
(9, 'Tranz', 163, 2, 'https://www.youtube.com/watch?v=E2Q52cVx7Bo'),
(10, 'Sorcererz', 180, 2, 'https://www.youtube.com/watch?v=40xG4bMr9F4'),
(11, 'Magic City', 240, 2, 'https://www.youtube.com/watch?v=ixnDm02uEeE'),
(12, 'Souk Eye', 275, 2, 'https://www.youtube.com/watch?v=-B57lnGcMpY'),
(13, 'Hollywood', 293, 2, 'https://www.youtube.com/watch?v=GgwE94KZJ7E'),
(14, 'Idaho', 222, 2, 'https://www.youtube.com/watch?v=GUHkwJiaBe0'),
(15, 'Fire Flies', 233, 2, 'https://www.youtube.com/watch?v=LCet4yrfp4o'),
(16, 'Marmur', 310, 3, 'https://www.youtube.com/watch?v=LopWRJj0i4k'),
(17, 'Żyrandol', 231, 3, 'https://www.youtube.com/watch?v=O-GW3eUrn5w'),
(18, 'Krwawa Jesień', 263, 3, 'https://www.youtube.com/watch?v=sO7B8eNhGbY'),
(19, 'Grubo-Chude psy', 170, 3, 'https://www.youtube.com/watch?v=QWG8e-4kzXs'),
(20, 'Mgła I (Siwe włosy)', 234, 3, 'https://www.youtube.com/watch?v=mzYaOK1rgH4'),
(21, 'Mgła II (Mówisz, masz)', 223, 3, 'https://www.youtube.com/watch?v=RKIktBJUkYY'),
(22, 'Świat jest Wfem', 208, 3, 'https://www.youtube.com/watch?v=747spa6E1FI'),
(23, 'Świecące prostokąty', 257, 3, 'https://www.youtube.com/watch?v=jbpcdkVasJw'),
(24, 'Tsunami Blond', 176, 3, 'https://www.youtube.com/watch?v=7GterpCdcE0'),
(25, 'Ślepe Sumy', 216, 3, 'https://www.youtube.com/watch?v=q_MhP-3wQH0'),
(26, 'Deszcz na betonie', 233, 3, 'https://www.youtube.com/watch?v=PCQs3vSJ6xA'),
(27, 'Intromental /R.I.P./', 224, 4, 'https://www.youtube.com/watch?v=H-tpAAP4aDY'),
(28, 'Bafangoo', 240, 4, 'https://www.youtube.com/watch?v=QTqTKD0e0K0'),
(29, '... i co dalej ?!', 255, 4, 'https://www.youtube.com/watch?v=yASOTCxi4Ow'),
(30, 'To co teraz... – Bobby De', 259, 4, 'https://www.youtube.com/watch?v=c17nazm8Kuc'),
(31, 'Twoya Coorka!?', 192, 4, 'https://www.youtube.com/watch?v=uiRNGJZ_uwY'),
(32, 'Mikamental /wild thing/ – smooth version', 179, 4, 'https://www.youtube.com/watch?v=q0A-J04AjcA'),
(33, 'Grabarz? Cz. 1', 152, 4, 'https://www.youtube.com/watch?v=4P-WmzuqyOE'),
(34, 'Liroy był, Liroy jest, Liroy będzie /amen/', 222, 4, 'https://www.youtube.com/watch?v=DccyoFVOmow'),
(35, 'Bafangoo-? MIX', 417, 4, 'https://www.youtube.com/watch?v=tVNgK6BwjTE'),
(36, 'Insert', 181, 5, 'https://www.youtube.com/watch?v=V31q5YGtn48'),
(37, 'Bumbox', 224, 5, 'https://www.youtube.com/watch?v=ayr0qXppofo'),
(38, 'Świat jest pełen filozofów', 335, 5, 'https://www.youtube.com/watch?v=Fuzn_9E0e9U'),
(39, 'Co to będzie', 243, 5, 'https://www.youtube.com/watch?v=clJZnNuCxW0'),
(40, 'Nic tu po nas', 229, 5, 'https://www.youtube.com/watch?v=6aKFjZ7yfLI'),
(41, 'Nie zostało nic', 172, 5, 'https://www.youtube.com/watch?v=jwJT_fbmnPo'),
(42, 'Like a Surgeon', 212, 6, 'https://www.youtube.com/watch?v=notKtAgfwDA'),
(43, 'Dare to Be Stupid', 205, 6, 'https://www.youtube.com/watch?v=SMhwddNQSWQ'),
(44, 'I Want a New Duck', 184, 6, 'https://www.youtube.com/watch?v=3KvgQIBcdRk'),
(45, 'One More Minute', 244, 6, 'https://www.youtube.com/watch?v=yWhpk-8QLFQ'),
(46, 'Yoda', 238, 6, 'https://www.youtube.com/watch?v=-IUMCyAR6U0'),
(47, 'George of the Jungle', 65, 6, 'https://www.youtube.com/watch?v=XgZCC4f_b_g'),
(48, 'Slime Creatures from Outer Space', 263, 6, 'https://www.youtube.com/watch?v=dvCw873c-vg'),
(49, 'Girls Just Want to Have Lunch', 168, 6, 'https://www.youtube.com/watch?v=RFnAvnXduwM'),
(50, 'This Is the Life', 186, 6, 'https://www.youtube.com/watch?v=N1n5XqwUkYw'),
(51, 'Cable TV', 218, 6, 'https://www.youtube.com/watch?v=8WxbSK3yWaA'),
(52, 'Hooked on Polkas', 233, 6, 'https://www.youtube.com/watch?v=HvpasQqA1xg'),
(53, 'P.I.L.', 152, 7, 'https://www.youtube.com/watch?v=JVKFMA3ecwY'),
(54, 'People in the Shadow', 271, 7, 'https://www.youtube.com/watch?v=kpfllfDqz8I'),
(55, 'Darkness Paradise', 152, 7, 'https://www.youtube.com/watch?v=6EpM3JoFKIY'),
(56, 'Animal', 173, 7, 'https://www.youtube.com/watch?v=i9BBPw-eMq4'),
(57, 'Song 2', 153, 7, 'https://www.youtube.com/watch?v=aN-hV8-9S4o'),
(58, 'Czadu (i jeszcze coś)', 205, 8, 'https://www.youtube.com/watch?v=Wax6d1QnZow'),
(59, 'Brat nie ma już miłości dla mnie', 208, 8, 'https://www.youtube.com/watch?v=cIiFDh4P9Dc'),
(60, 'Więcej szmalu', 186, 8, 'https://www.youtube.com/watch?v=DroDP8qBdQU'),
(61, 'Nie odejdę sam', 217, 8, 'https://www.youtube.com/watch?v=tiVTMcStY-g'),
(62, 'Hardcore', 270, 8, 'https://www.youtube.com/watch?v=oR3oZfHYeuk'),
(63, 'Dzikie dzieciaki', 241, 8, 'https://www.youtube.com/watch?v=PLm3vm2KCdg'),
(64, 'Bo fo Sho', 168, 9, 'https://www.youtube.com/watch?v=2LzgYWCgkZk'),
(65, 'H-O-a-R', 166, 9, 'https://www.youtube.com/watch?v=C-96mMYSSjs'),
(66, 'High School Party (Girl)', 160, 9, 'https://www.youtube.com/watch?v=a4Ybo_ENnuM'),
(67, '3.14 Apple Pi', 210, 9, 'https://www.youtube.com/watch?v=EtkDpYlySRM'),
(68, 'Sunday School', 160, 9, 'https://www.youtube.com/watch?v=O5jlo87jw90'),
(69, 'My Whole Family…', 234, 9, 'https://www.youtube.com/watch?v=LZoO8LyizLA'),
(70, 'Simply JAZZ', 696, 10, 'https://www.youtube.com/watch?v=Bh_zG9v75pM'),
(71, 'Paranoid', 170, 11, 'https://www.youtube.com/watch?v=0qanF-91aJo'),
(72, 'Black Sabbath', 394, 11, 'https://www.youtube.com/watch?v=0lVdMbUx1_k'),
(73, 'Iron Man', 359, 11, 'https://www.youtube.com/watch?v=b3-QqGVt-tM'),
(74, 'Blue Suede Shoes', 126, 11, 'https://www.youtube.com/watch?v=lYpw92Qy2Gw');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `Id_Uzytkownika` int(11) NOT NULL,
  `Nazwa_Uzytkownika` text NOT NULL,
  `Haslo` text NOT NULL,
  `Data_Rejestracji` date NOT NULL,
  `Admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`Id_Uzytkownika`, `Nazwa_Uzytkownika`, `Haslo`, `Data_Rejestracji`, `Admin`) VALUES
(1, 'admin', '$2y$10$ic.y2LSy8/gdvTO/t4bem.fKVo011r5/xPruZ6.Cmp/dMVLSkfFS.', '0000-00-00', 1),
(2, 'muzykofan', '$2y$10$ZQL3a9tLaYrReRe6qa4a5OoueSw82eF0e374OL20/vfOQLdtuAlRS', '2024-04-10', 0),
(21, 'user', '$2y$10$SDkR5tTPSQ204YjupCdh5eQ.oRX3CUfY2LZe.Am7Szy.AveEYmfFi', '2024-04-14', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wykonawcy`
--

CREATE TABLE `wykonawcy` (
  `Id_Wykonawcy` int(11) NOT NULL,
  `Nazwa_Zespołu_Imię` text NOT NULL,
  `Nazwisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
  ADD UNIQUE KEY `Id_ulub` (`Id_ulub`) USING BTREE,
  ADD KEY `Id_Użytkownika` (`Id_Uzytkownika`,`Id_Utworu`),
  ADD KEY `Id_Utworu` (`Id_Utworu`);

--
-- Indeksy dla tabeli `utwory`
--
ALTER TABLE `utwory`
  ADD PRIMARY KEY (`Id_Utworu`),
  ADD KEY `Id_Albumu` (`Id_Albumu`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`Id_Uzytkownika`),
  ADD UNIQUE KEY `Admin` (`Data_Rejestracji`);

--
-- Indeksy dla tabeli `wykonawcy`
--
ALTER TABLE `wykonawcy`
  ADD PRIMARY KEY (`Id_Wykonawcy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ulubione_utwory`
--
ALTER TABLE `ulubione_utwory`
  MODIFY `Id_ulub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `Id_Uzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`Id_Wykonawcy`) REFERENCES `wykonawcy` (`Id_Wykonawcy`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gatunek`
--
ALTER TABLE `gatunek`
  ADD CONSTRAINT `gatunek_ibfk_1` FOREIGN KEY (`Id_Gatunku`) REFERENCES `gatunek_utwór` (`Id_Gatunek_Utwór`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gatunek_utwór`
--
ALTER TABLE `gatunek_utwór`
  ADD CONSTRAINT `gatunek_utwór_ibfk_1` FOREIGN KEY (`Id_Utworu`) REFERENCES `utwory` (`Id_Utworu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ulubione_utwory`
--
ALTER TABLE `ulubione_utwory`
  ADD CONSTRAINT `ulubione_utwory_ibfk_1` FOREIGN KEY (`Id_Utworu`) REFERENCES `utwory` (`Id_Utworu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ulubione_utwory_ibfk_2` FOREIGN KEY (`Id_Uzytkownika`) REFERENCES `uzytkownicy` (`Id_Uzytkownika`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `utwory`
--
ALTER TABLE `utwory`
  ADD CONSTRAINT `utwory_ibfk_1` FOREIGN KEY (`Id_Albumu`) REFERENCES `album` (`Id_Albumu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
