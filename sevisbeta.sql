-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Maj 2019, 19:44
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sevisbeta`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(3) NOT NULL,
  `imie` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(12) COLLATE utf8_polish_ci NOT NULL,
  `nr_tel` varchar(9) COLLATE utf8_polish_ci NOT NULL,
  `mail` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nr_domu` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odbior_sprzetu`
--

CREATE TABLE `odbior_sprzetu` (
  `id_odbioru` int(3) NOT NULL,
  `id_zgloszenia` int(3) NOT NULL,
  `id_pracownika` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownika` int(3) NOT NULL,
  `stanowisko` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `mail` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nr_domu` int(5) NOT NULL,
  `nr_tel` int(9) NOT NULL,
  `pensja` int(6) NOT NULL,
  `login` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprzet`
--

CREATE TABLE `sprzet` (
  `id_sprzetu` int(3) NOT NULL,
  `id_klienta` int(3) NOT NULL,
  `typ` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `model` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `marka` varchar(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `usterka`
--

CREATE TABLE `usterka` (
  `id_usterki` int(3) NOT NULL,
  `nazwa` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `opis` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgloszenie_usterki`
--

CREATE TABLE `zgloszenie_usterki` (
  `id_zgloszenia` int(3) NOT NULL,
  `id_usterki` int(3) NOT NULL,
  `id_sprzetu` int(3) NOT NULL,
  `data` date NOT NULL,
  `opis` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `id_pracownika` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indexes for table `odbior_sprzetu`
--
ALTER TABLE `odbior_sprzetu`
  ADD PRIMARY KEY (`id_odbioru`),
  ADD KEY `id_zgloszenia` (`id_zgloszenia`),
  ADD KEY `id_pracownika` (`id_pracownika`);

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indexes for table `sprzet`
--
ALTER TABLE `sprzet`
  ADD PRIMARY KEY (`id_sprzetu`),
  ADD KEY `id_klienta` (`id_klienta`);

--
-- Indexes for table `usterka`
--
ALTER TABLE `usterka`
  ADD PRIMARY KEY (`id_usterki`);

--
-- Indexes for table `zgloszenie_usterki`
--
ALTER TABLE `zgloszenie_usterki`
  ADD PRIMARY KEY (`id_zgloszenia`),
  ADD KEY `id_usterki` (`id_usterki`),
  ADD KEY `id_sprzetu` (`id_sprzetu`),
  ADD KEY `id_pracownika` (`id_pracownika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `odbior_sprzetu`
--
ALTER TABLE `odbior_sprzetu`
  MODIFY `id_odbioru` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id_pracownika` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
  MODIFY `id_sprzetu` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `usterka`
--
ALTER TABLE `usterka`
  MODIFY `id_usterki` int(3) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `odbior_sprzetu`
--
ALTER TABLE `odbior_sprzetu`
  ADD CONSTRAINT `odbior_sprzetu_ibfk_1` FOREIGN KEY (`id_zgloszenia`) REFERENCES `zgloszenie_usterki` (`id_zgloszenia`);

--
-- Ograniczenia dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
  ADD CONSTRAINT `sprzet_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`);

--
-- Ograniczenia dla tabeli `zgloszenie_usterki`
--
ALTER TABLE `zgloszenie_usterki`
  ADD CONSTRAINT `zgloszenie_usterki_ibfk_1` FOREIGN KEY (`id_sprzetu`) REFERENCES `sprzet` (`id_sprzetu`),
  ADD CONSTRAINT `zgloszenie_usterki_ibfk_2` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownicy` (`id_pracownika`),
  ADD CONSTRAINT `zgloszenie_usterki_ibfk_3` FOREIGN KEY (`id_usterki`) REFERENCES `usterka` (`id_usterki`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
