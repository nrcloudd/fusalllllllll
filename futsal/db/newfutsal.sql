-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2023 pada 09.37
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newfutsal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `level`) VALUES
(1, 'Davin', 'daveseijuro07@gmail.com', 1),
(3, 'Ferdy', 'E31211910@student.polije.ac.id', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `priceSiang` int(50) NOT NULL,
  `priceMalam` int(50) NOT NULL,
  `sts` enum('Tersedia','Disewa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `field`
--

INSERT INTO `field` (`id`, `nama`, `tipe`, `priceSiang`, `priceMalam`, `sts`) VALUES
(1, 'Lapangan 3', 'reguler', 80000, 100000, 'Tersedia'),
(2, 'Lapangan 2', 'Reguler', 80000, 100000, 'Tersedia'),
(3, 'Lapangan 4', 'reguler', 80000, 100000, 'Tersedia'),
(4, 'Lapangan 5', 'reguler', 80000, 100000, 'Tersedia'),
(5, 'Lapangan 6', 'reguler', 80000, 100000, 'Tersedia'),
(6, 'Lapangan 7', 'reguler', 80000, 100000, 'Tersedia'),
(7, 'Lapangan 8', 'reguler', 80000, 100000, 'Tersedia'),
(11, 'Lapangan 12', 'reguler', 80000, 100000, 'Tersedia'),
(12, 'Lapangan 13', 'reguler', 80000, 100000, 'Disewa'),
(1002, 'Lapangan 22', 'Reguler', 80000, 100000, 'Disewa'),
(1003, 'Lapangan 16', 'rumput', 125000, 145000, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_detail`
--

CREATE TABLE `level_detail` (
  `id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `level_detail`
--

INSERT INTO `level_detail` (`id`, `level`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_tlp` int(15) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi detail`
--

CREATE TABLE `transaksi detail` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `field_id` int(11) NOT NULL,
  `price` varchar(11) NOT NULL,
  `time` time(6) NOT NULL,
  `unique_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`nama`);

--
-- Indeks untuk tabel `level_detail`
--
ALTER TABLE `level_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field_name` (`field_name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `level_detail`
--
ALTER TABLE `level_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`field_name`) REFERENCES `field` (`nama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
