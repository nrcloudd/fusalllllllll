-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2023 pada 21.38
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

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
  `pass` varchar(255) NOT NULL,
  `level` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `pass`, `level`) VALUES
(3, 'Ferdy1', 'E31211910@student.polije.ac.id', '1234', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `priceMalam` int(50) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `field`
--

INSERT INTO `field` (`id`, `nama`, `tipe`, `priceMalam`, `gambar`) VALUES
(1, 'Lapangan 3', 'reguler', 100000, 'G1.jpeg'),
(2, 'Lapangan 2', 'Reguler', 100000, 'G2.jpg'),
(3, 'Lapangan 4', 'reguler', 100000, 'G3.jpg'),
(4, 'Lapangan 5', 'reguler', 100000, 'G4.jpg'),
(5, 'Lapangan 6', 'reguler', 100000, 'G5.jpg'),
(6, 'Lapangan 7', 'reguler', 100000, 'G6.jpg'),
(1003, 'Lapangan 16', 'rumput', 145000, 'G2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_tlp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `password`, `no_tlp`) VALUES
(2, 'davin', 'davin@gmail.com', '1234', 8999999);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `member` int(11) NOT NULL,
  `jam` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `harga` int(11) NOT NULL,
  `bukti_bayar` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `field_name`, `member`, `jam`, `tanggal`, `harga`, `bukti_bayar`) VALUES
(18, 'Lapangan 2', 2, 7, '2023-01-04', 100000, 0x3331353530303834335f3533373339303337313131373630325f373930393433333031343636313931393436315f6e2e6a7067),
(19, 'Lapangan 2', 2, 11, '2023-01-04', 100000, 0x3331353530303834335f3533373339303337313131373630325f373930393433333031343636313931393436315f6e2e6a7067);

--
-- Trigger `transaksi`
--
DELIMITER $$
CREATE TRIGGER `Delete_Data_Transaksi` AFTER DELETE ON `transaksi` FOR EACH ROW INSERT INTO `transaksi_detail`
   ( id,
     field_name,
     member,
   tanggal,
   harga)
   VALUES
   ( OLD.id,
     OLD.field_name,
     OLD.member,
   OLD.tanggal,
   OLD.	harga)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` int(11) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `member` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id`, `field_name`, `member`, `tanggal`, `harga`) VALUES
(4, '0', 2, '2023-01-04', 100000),
(5, 'Lapangan 3', 2, '2023-01-04', 100000),
(9, 'Lapangan 2', 2, '2023-01-04', 100000),
(6, 'Lapangan 3', 2, '2023-01-28', 100000),
(13, 'Lapangan 2', 2, '2023-01-04', 100000);

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
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member` (`member`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
