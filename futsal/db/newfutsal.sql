-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2022 pada 03.28
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ais_db`
--
CREATE DATABASE IF NOT EXISTS `ais_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ais_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawabankuisioner`
--

CREATE TABLE `jawabankuisioner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jawaban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosen_id` bigint(20) UNSIGNED NOT NULL,
  `matakuliah_id` bigint(20) UNSIGNED NOT NULL,
  `prodi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuisionerdosen`
--

CREATE TABLE `kuisionerdosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` int(11) NOT NULL,
  `choice` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuisionerkelas`
--

CREATE TABLE `kuisionerkelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `pertanyaan_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_text` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namaMatkul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2022_08_01_111155_create_kuisionerdosen_table', 1),
(8, '2022_08_01_112023_create_jawabankuisioner_table', 2),
(9, '2022_08_01_112132_create_dosen_table', 3),
(10, '2022_08_01_112304_create_matakuliah_table', 4),
(11, '2022_08_01_112436_create_prodi_table', 5),
(12, '2022_08_01_112909_create_kelas_table', 6),
(13, '2022_08_01_113527_create_kuisionerkelas_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namaProdi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Davin Fadhlillah Yudanto', 'daveseijuro07@gmail.com', NULL, 'davin123', NULL, NULL, NULL),
(2, 'Dava', 'davinsuperkeren46@gmail.com', NULL, '$2y$10$r3pJz2auT4tgZJD/YBBfMO0j.rSVBWgBEcNAVgh08ERIzrvCxBWrC', NULL, '2022-08-01 07:33:34', '2022-08-01 07:33:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawabankuisioner`
--
ALTER TABLE `jawabankuisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_dosen_id_foreign` (`dosen_id`),
  ADD KEY `kelas_matakuliah_id_foreign` (`matakuliah_id`),
  ADD KEY `kelas_prodi_id_foreign` (`prodi_id`);

--
-- Indeks untuk tabel `kuisionerdosen`
--
ALTER TABLE `kuisionerdosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuisionerkelas`
--
ALTER TABLE `kuisionerkelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kuisionerkelas_kelas_id_foreign` (`kelas_id`),
  ADD KEY `kuisionerkelas_pertanyaan_id_foreign` (`pertanyaan_id`),
  ADD KEY `kuisionerkelas_jawaban_id_foreign` (`jawaban_id`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jawabankuisioner`
--
ALTER TABLE `jawabankuisioner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kuisionerdosen`
--
ALTER TABLE `kuisionerdosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kuisionerkelas`
--
ALTER TABLE `kuisionerkelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_matakuliah_id_foreign` FOREIGN KEY (`matakuliah_id`) REFERENCES `matakuliah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_prodi_id_foreign` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kuisionerkelas`
--
ALTER TABLE `kuisionerkelas`
  ADD CONSTRAINT `kuisionerkelas_jawaban_id_foreign` FOREIGN KEY (`jawaban_id`) REFERENCES `jawabankuisioner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kuisionerkelas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kuisionerkelas_pertanyaan_id_foreign` FOREIGN KEY (`pertanyaan_id`) REFERENCES `kuisionerdosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `dbreviewfilm`
--
CREATE DATABASE IF NOT EXISTS `dbreviewfilm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbreviewfilm`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cast`
--

CREATE TABLE `cast` (
  `id_cast` bigint(20) UNSIGNED NOT NULL,
  `nama_cast` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `bio` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cast`
--

INSERT INTO `cast` (`id_cast`, `nama_cast`, `umur`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Davino', 28, 'Aktor Komedi', NULL, NULL),
(2, 'Chris Evans', 31, 'Aktor Captain America', NULL, NULL),
(3, 'Chris Hemsworth', 31, 'Aktor Thor', NULL, NULL),
(4, 'Scarlett Johanson', 29, 'Aktris Black Widow', NULL, NULL),
(5, 'Brad Pitt', 45, 'Aktor Laga', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `id_film` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` date NOT NULL,
  `poster` blob NOT NULL,
  `id_genre` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `id_genre` bigint(20) UNSIGNED NOT NULL,
  `nama_genre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2022_07_21_113122_create_profile_table', 1),
(9, '2022_07_21_122246_create_cast_table', 2),
(10, '2022_07_21_122557_create_genre_table', 3),
(11, '2022_07_21_122854_create_film_table', 4),
(13, '2022_07_21_123630_create_role_table', 5),
(14, '2022_07_21_124342_create_review_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id_profile` bigint(20) UNSIGNED NOT NULL,
  `umur` int(11) NOT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id_film` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `score` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kritik` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_film` bigint(20) UNSIGNED NOT NULL,
  `id_cast` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`id_cast`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `film_id_genre_foreign` (`id_genre`);

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profile`),
  ADD KEY `profile_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD KEY `review_id_film_foreign` (`id_film`),
  ADD KEY `review_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD KEY `role_id_film_foreign` (`id_film`),
  ADD KEY `role_id_cast_foreign` (`id_cast`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cast`
--
ALTER TABLE `cast`
  MODIFY `id_cast` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `film`
--
ALTER TABLE `film`
  MODIFY `id_film` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id_profile` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_id_genre_foreign` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`);

--
-- Ketidakleluasaan untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_id_film_foreign` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  ADD CONSTRAINT `review_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_id_cast_foreign` FOREIGN KEY (`id_cast`) REFERENCES `cast` (`id_cast`),
  ADD CONSTRAINT `role_id_film_foreign` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);
--
-- Database: `jasa sewa mobil`
--
CREATE DATABASE IF NOT EXISTS `jasa sewa mobil` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `jasa sewa mobil`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `id_daftar` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jaminan` varchar(50) NOT NULL,
  `id_penyewa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`id_daftar`, `nama`, `jaminan`, `id_penyewa`) VALUES
(1001, 'Davin', 'KTP', 111),
(1002, 'Laura', 'KTP', 112),
(1003, 'Thoriq', 'KTP', 113);

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(11) NOT NULL,
  `keterlambatan` varchar(50) DEFAULT NULL,
  `kerusakan` varchar(100) DEFAULT NULL,
  `total_denda` int(11) DEFAULT NULL,
  `Kd_mobil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `Kd_mobil` int(11) NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `warna` varchar(30) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `kelas` char(1) NOT NULL,
  `kapasitas` varchar(30) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `transmisi` varchar(15) NOT NULL,
  `bahan_bakar` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`Kd_mobil`, `nopol`, `warna`, `merk`, `kelas`, `kapasitas`, `jenis`, `transmisi`, `bahan_bakar`, `status`, `kondisi`, `stok`, `harga`) VALUES
(551, 'P 1089 AX', 'merah', 'Toyota', 'B', '7', 'Avanza', 'Otomatis', 'Penuh', 'ada', 'baik', 1, 350000),
(552, 'B 3412 JN', 'hitam', 'honda', 'S', '5', 'Civic', 'Manual', 'Penuh', 'ada', 'baik', 1, 200000),
(553, 'P 1234 KL', 'abuabu', 'nissan', 'B', '5', 'Juke', 'Otomatis', 'Penuh', 'ada', 'baik', 1, 300000),
(554, 'P 4672 FG', 'merah', 'Toyota', 'B', '7', 'Avanza', 'Otomatis', 'Penuh', 'ada', 'baik', 1, 350000),
(555, 'P 7590 KH', 'putih', 'honda', 'B', '5', 'CRV', 'Manual', 'penuh', 'ada', 'baik', 1, 300000);

--
-- Trigger `mobil`
--
DELIMITER $$
CREATE TRIGGER `before_update_mobil` BEFORE UPDATE ON `mobil` FOR EACH ROW BEGIN
DECLARE errorMessage varchar(200);
SET errorMessage = concat('Stok hanya boleh berjumlah 1');

IF new.stok <> 1 THEN 
	SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = errorMessage;
    end IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `Dp` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_daftar` int(11) NOT NULL,
  `id_penyewa` int(11) NOT NULL,
  `id_supir` int(11) DEFAULT NULL,
  `Kd_mobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `tgl_pinjam`, `tgl_kembali`, `Dp`, `total`, `id_daftar`, `id_penyewa`, `id_supir`, `Kd_mobil`) VALUES
(1, '2020-06-13', '2020-06-17', 100000, 30000, 1002, 112, NULL, 551),
(2, '2020-06-13', '2020-06-25', 500000, 2000000, 1001, 111, 201, 552),
(3, '2020-08-01', '2020-08-05', 500000, 1200000, 1003, 113, NULL, 553),
(4, '2020-08-01', '2020-08-05', 500000, 1200000, 1003, 113, NULL, 555),
(103, '2022-06-16', '2022-06-18', 100000, 700000, 1001, 111, NULL, 552);

--
-- Trigger `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `dikembalikan` AFTER DELETE ON `peminjaman` FOR EACH ROW BEGIN
	INSERT INTO supir SET
    id_supir = old.id_supir
  ON DUPLICATE KEY UPDATE status = 'ada';
     END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pinjam` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
	INSERT INTO supir SET
    id_supir = new.id_supir
    ON duplicate KEY UPDATE status = 'disewa';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_log`
--

CREATE TABLE `peminjaman_log` (
  `id_peminjaman` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `Dp` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_daftar` int(11) NOT NULL,
  `id_penyewa` int(11) NOT NULL,
  `id_supir` int(11) DEFAULT NULL,
  `Kd_mobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_kembali` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `total` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_daftar` int(11) NOT NULL,
  `Penyewa_id_penyewa` int(11) NOT NULL,
  `id_denda` int(11) DEFAULT NULL,
  `id_supir` int(11) DEFAULT NULL,
  `Kd_mobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_kembali`, `tgl_pinjam`, `tgl_kembali`, `total`, `id_peminjaman`, `id_daftar`, `Penyewa_id_penyewa`, `id_denda`, `id_supir`, `Kd_mobil`) VALUES
(771, '2020-06-13', '2020-06-17', 30000, 1, 1002, 112, NULL, NULL, 551),
(772, '2020-06-13', '2020-06-17', 30000, 2, 1001, 111, NULL, 201, 552),
(773, '2020-06-13', '2020-06-17', 30000, 3, 1003, 113, NULL, NULL, 553),
(774, '2020-06-13', '2020-06-17', 30000, 4, 1003, 113, NULL, NULL, 555);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` int(11) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `no_ktp`, `nama`, `gender`, `no_telp`, `alamat`, `pekerjaan`) VALUES
(111, '1122334455', 'Davin', 'L', '0895619425183', 'Tegal Besar Permai 1', 'Mahasiswa'),
(112, '2345678910', 'Laura', 'P', '081213456178', 'Taman Gading', 'Polisi'),
(113, '9876543211', 'Thoriq', 'L', '0854678923011', 'Taman Anggrek', 'Dokter');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supir`
--

CREATE TABLE `supir` (
  `id_supir` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `rute` varchar(30) NOT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `supir`
--

INSERT INTO `supir` (`id_supir`, `nama`, `gender`, `no_telp`, `status`, `rute`, `biaya`) VALUES
(201, 'Hartono', 'L', '0853412789546', 'disewa', 'Jauh', 350000),
(202, 'Asep', 'L', '081214567819', 'ada', 'Jauh', 350000),
(203, 'Andong', 'L', '0856728928358', 'ada', 'Sedang', 250000),
(204, 'Jono', 'L', '08914567231889', 'ada', 'Dekat', 150000),
(205, '', '', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id_daftar`),
  ADD KEY `fk_Daftar_Penyewa_idx` (`id_penyewa`);

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`),
  ADD KEY `fk_Denda_Mobil1_idx` (`Kd_mobil`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`Kd_mobil`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `fk_Peminjaman_Daftar1_idx` (`id_daftar`),
  ADD KEY `fk_Peminjaman_Penyewa1_idx` (`id_penyewa`),
  ADD KEY `fk_Peminjaman_Supir1_idx` (`id_supir`),
  ADD KEY `fk_Peminjaman_Mobil1_idx` (`Kd_mobil`);

--
-- Indeks untuk tabel `peminjaman_log`
--
ALTER TABLE `peminjaman_log`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `fk_Peminjaman_Daftar1_idx` (`id_daftar`),
  ADD KEY `fk_Peminjaman_Penyewa1_idx` (`id_penyewa`),
  ADD KEY `fk_Peminjaman_Supir1_idx` (`id_supir`),
  ADD KEY `fk_Peminjaman_Mobil1_idx` (`Kd_mobil`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_kembali`),
  ADD KEY `fk_Pengembalian_Peminjaman1_idx` (`id_peminjaman`),
  ADD KEY `fk_Pengembalian_Daftar1_idx` (`id_daftar`),
  ADD KEY `fk_Pengembalian_Penyewa1_idx` (`Penyewa_id_penyewa`),
  ADD KEY `fk_Pengembalian_Denda1_idx` (`id_denda`),
  ADD KEY `fk_Pengembalian_Supir1_idx` (`id_supir`),
  ADD KEY `fk_Pengembalian_Mobil1_idx` (`Kd_mobil`);

--
-- Indeks untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indeks untuk tabel `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`id_supir`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT untuk tabel `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `Kd_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `peminjaman_log`
--
ALTER TABLE `peminjaman_log`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=799;

--
-- AUTO_INCREMENT untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `id_penyewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT untuk tabel `supir`
--
ALTER TABLE `supir`
  MODIFY `id_supir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD CONSTRAINT `fk_Daftar_Penyewa` FOREIGN KEY (`id_penyewa`) REFERENCES `penyewa` (`id_penyewa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD CONSTRAINT `fk_Denda_Mobil1` FOREIGN KEY (`Kd_mobil`) REFERENCES `mobil` (`Kd_mobil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_Peminjaman_Daftar1` FOREIGN KEY (`id_daftar`) REFERENCES `daftar` (`id_daftar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Peminjaman_Mobil1` FOREIGN KEY (`Kd_mobil`) REFERENCES `mobil` (`Kd_mobil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Peminjaman_Penyewa1` FOREIGN KEY (`id_penyewa`) REFERENCES `penyewa` (`id_penyewa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Peminjaman_Supir1` FOREIGN KEY (`id_supir`) REFERENCES `supir` (`id_supir`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `fk_Pengembalian_Daftar1` FOREIGN KEY (`id_daftar`) REFERENCES `daftar` (`id_daftar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Pengembalian_Denda1` FOREIGN KEY (`id_denda`) REFERENCES `denda` (`id_denda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Pengembalian_Mobil1` FOREIGN KEY (`Kd_mobil`) REFERENCES `mobil` (`Kd_mobil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Pengembalian_Peminjaman1` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Pengembalian_Penyewa1` FOREIGN KEY (`Penyewa_id_penyewa`) REFERENCES `penyewa` (`id_penyewa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Pengembalian_Supir1` FOREIGN KEY (`id_supir`) REFERENCES `supir` (`id_supir`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `myshop`
--
CREATE DATABASE IF NOT EXISTS `myshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myshop`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'gadget'),
(2, 'cloth'),
(3, 'men'),
(4, 'women'),
(5, 'branded');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `stock`, `category_id`) VALUES
(1, 'Sumsang b50', 'hape keren dari merek sumsang	', 2500000, 100, 1),
(2, 'Uniklooh', 'baju keren dari brand ternama	', 500000, 50, 2),
(3, 'IMHO Watch	', 'jam tangan anak yang jujur banget	', 2000000, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'John Doe', 'john@doe.com	', 'john123\r\n'),
(2, 'Jane Doe	', 'jane@doe.com	', 'jenita123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `newfutsal`
--
CREATE DATABASE IF NOT EXISTS `newfutsal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `newfutsal`;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD UNIQUE KEY `name` (`name`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `field`
--
ALTER TABLE `field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`field_name`) REFERENCES `field` (`name`);
--
-- Database: `perpustakaanwpa`
--
CREATE DATABASE IF NOT EXISTS `perpustakaanwpa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perpustakaanwpa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `idBuku` varchar(11) NOT NULL,
  `judul` varchar(15) NOT NULL,
  `tanggal_terbit` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`idBuku`, `judul`, `tanggal_terbit`, `pengarang`) VALUES
('142fgtrs', 'Mengapa Aku ?', '2019', 'Alexandro Kolegtas'),
('34EFHIJ43', 'Terbuanggg', '2022', 'Sujono Jojo Raharjuno');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jtable_mahasiswa`
--

CREATE TABLE `jtable_mahasiswa` (
  `NIM` varchar(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `tanggal_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jtable_mahasiswa`
--

INSERT INTO `jtable_mahasiswa` (`NIM`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jurusan`, `tanggal_masuk`) VALUES
('E31211911', 'Davin Fadhlillah', 'Surabaya', '18 Mei 2001', 'Manajemen Informatika', '2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `NIM` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `idBuku` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal_terbit` varchar(255) NOT NULL,
  `tgl_pinjam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`NIM`, `nama`, `jurusan`, `idBuku`, `judul`, `tanggal_terbit`, `tgl_pinjam`) VALUES
('e31211910', 'davin', 'mif', '123', 'gtre', '2025', '2022-06-24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`idBuku`);

--
-- Indeks untuk tabel `jtable_mahasiswa`
--
ALTER TABLE `jtable_mahasiswa`
  ADD PRIMARY KEY (`NIM`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"perpustakaan\",\"table\":\"anggota\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-11-24 02:49:43', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\",\"NavigationWidth\":342}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rental_mobil`
--
CREATE DATABASE IF NOT EXISTS `rental_mobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rental_mobil`;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `daftar_nama`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `daftar_nama` (
`Nama_Penyewa` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `ID_Denda` int(11) NOT NULL,
  `tenggat` date NOT NULL,
  `tanggalKembali` date NOT NULL,
  `Nopol` varchar(20) NOT NULL,
  `Keterlambatan` int(11) NOT NULL,
  `Kd_Kerusakan` char(1) DEFAULT NULL,
  `Total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `denda`
--

INSERT INTO `denda` (`ID_Denda`, `tenggat`, `tanggalKembali`, `Nopol`, `Keterlambatan`, `Kd_Kerusakan`, `Total_denda`) VALUES
(0, '1111-11-11', '1111-11-11', '-', 0, NULL, 0),
(660, '2022-06-28', '2022-06-30', 'P 1010 AS', 2, 'R', 1200000),
(661, '2017-06-03', '2017-06-06', 'P1616AS', 3, 'S', 5300000),
(662, '2022-06-30', '2022-07-01', 'P1515AS', 1, 'R', 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `ID_Karyawan` int(11) NOT NULL,
  `Nama_Karyawan` varchar(50) NOT NULL,
  `Tipe` enum('admin','staf') NOT NULL,
  `userID` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `No_Tlp` varchar(20) NOT NULL,
  `Alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`ID_Karyawan`, `Nama_Karyawan`, `Tipe`, `userID`, `password`, `No_Tlp`, `Alamat`) VALUES
(15, 'Dilla', 'admin', 'dila1', 'admin1', '089123567', 'Jalan Sunan Ampel, Bandung'),
(16, 'Ovi', 'admin', 'ovi1', 'admin1', '082334567998', 'Jalan Mentari Sinar, Situbondo'),
(17, 'Kadita', 'staf', 'kadita', 'kar11', '089234556763', 'Jalan Mawar Merah, Pasuruan'),
(18, 'Adit', 'staf', 'adit', 'kar11', '082334876555', 'Jalan Kenangan Indah, Bondowoso'),
(19, 'Wahyu', 'staf', 'wahyu', 'kar11', '089997654321', 'Jalan Kalijaga Mekar, Surabaya'),
(20, 'Abi', 'staf', 'abi', 'kar11', '089234567889', 'Jalan Indah Sari, Probolinggo'),
(21, 'Taufik', 'staf', 'taufik', 'kar11', '081223456765', 'Jalan Bangka Belitung, Jember'),
(22, 'Rio', 'staf', 'rio', 'kar11', '081223212334', 'Jalan Medan Megah, Gresik'),
(23, 'Syafa', 'staf', 'syafa', 'kar11', '087665432234', 'Jalan Karimata Tengah, Bandung'),
(24, 'Andini', 'staf', 'andini', 'kar11', '089234556789', 'Jalan Karanganyar Baru, Malang'),
(25, 'Davin', 'admin', 'davinfad', 'davin18', '0895619425183', 'Tegal Besar Permai'),
(26, 'Daffa', 'admin', 'ghzxx', 'daffa', '087854443648', 'Jalan Jalan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerusakan`
--

CREATE TABLE `kerusakan` (
  `Kd_Kerusakan` char(1) NOT NULL,
  `Kondisi` enum('parah','sedang','ringan','') NOT NULL,
  `Biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kerusakan`
--

INSERT INTO `kerusakan` (`Kd_Kerusakan`, `Kondisi`, `Biaya`) VALUES
('-', '', 0),
('P', 'parah', 15000000),
('R', 'ringan', 1000000),
('S', 'sedang', 5000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `IDmobil` int(11) NOT NULL,
  `kd_Mobil` varchar(20) NOT NULL,
  `Nopol` varchar(20) NOT NULL,
  `Warna` varchar(30) NOT NULL,
  `Merk` varchar(50) NOT NULL,
  `Kapasitas` varchar(30) NOT NULL,
  `Jenis` enum('sedan','SUV','mini','') NOT NULL,
  `Transmisi` varchar(15) NOT NULL,
  `BahanBakar` enum('Solar','Pertamax','Pertalite') NOT NULL,
  `Status` enum('Tersedia','Disewa','','') NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`IDmobil`, `kd_Mobil`, `Nopol`, `Warna`, `Merk`, `Kapasitas`, `Jenis`, `Transmisi`, `BahanBakar`, `Status`, `Harga`) VALUES
(0, '-', '-', '-', '-', '-', '', '-', '', '', 0),
(1, 'HH1', 'B009MM', 'Hitam', 'HR-V', '5', 'mini', 'Matic', 'Pertamax', 'Disewa', 850000),
(2, 'PK1', 'BE123SS', 'Putih', 'Kijang LGX', '8', 'SUV', 'Manual', 'Pertalite', 'Disewa', 750000),
(5, 'MH1', 'L987IO', 'Merah', 'HR-V', '5', 'mini', 'Matic', 'Pertamax', 'Tersedia', 850000),
(3, 'HF1', 'P 1010 AS', 'Hitam', 'FORTUNER', '8', 'SUV', 'Manual', 'Solar', 'Tersedia', 450000),
(12, 'HA1', 'P 123 MM', 'Hitam', 'Avanza', '6', 'sedan', 'Manual', 'Pertamax', 'Tersedia', 850000),
(6, 'PJ1', 'P1100AS', 'Putih', 'JAZZ', '4', 'mini', 'Otomatis', 'Pertalite', 'Tersedia', 350000),
(8, 'XH1', 'P1111AS', 'Hitam', 'XENIA', '8', 'SUV', 'Manual', 'Pertamax', 'Tersedia', 250000),
(4, 'EH1', 'P1212AS', 'Hitam', 'ERTIGA', '8', 'SUV', 'Manual', 'Solar', 'Disewa', 250000),
(7, 'MJ1', 'P13001AS', 'Merah', 'JAZZ', '4', 'mini', 'Manual', 'Pertamax', 'Tersedia', 300000),
(9, 'CP1', 'P1515AS', 'Putih', 'CIVIC RR', '4', 'sedan', 'Manual', 'Pertamax', 'Disewa', 450000),
(10, 'YH1', 'P1616AS', 'Hitam', 'Yaris', '4', 'mini', 'Otomatis', 'Pertamax', 'Tersedia', 350000),
(11, 'YH2', 'P1717AS', 'Hitam', 'Yaris', '4', 'mini', 'manual', 'Pertamax', 'Tersedia', 350000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_Peminjaman` int(11) NOT NULL,
  `Tgl_Pinjam` date NOT NULL,
  `Tenggat` date NOT NULL,
  `Nopol` varchar(20) NOT NULL,
  `ID_Penyewa` int(11) NOT NULL,
  `ID_Supir` int(11) DEFAULT NULL,
  `ID_Karyawan` int(11) NOT NULL,
  `Kd_Rute` enum('J','M','D','t') NOT NULL,
  `Dp` int(11) NOT NULL,
  `Sisa_Bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`ID_Peminjaman`, `Tgl_Pinjam`, `Tenggat`, `Nopol`, `ID_Penyewa`, `ID_Supir`, `ID_Karyawan`, `Kd_Rute`, `Dp`, `Sisa_Bayar`) VALUES
(1125, '2017-05-25', '2017-05-30', 'B009MM', 13, 8, 20, 'D', 200000, 750000),
(1126, '2017-05-29', '2017-06-03', 'P1616AS', 12, 0, 15, 't', 300000, 550000),
(1134, '2022-06-23', '2022-06-25', 'P1616AS', 13, 7, 22, 'M', 100000, 200000),
(1135, '2022-06-24', '2022-06-29', 'B009MM', 5, 0, 15, 'M', 500000, 950000),
(1136, '2022-06-27', '2022-06-30', 'P1111AS', 12, 3, 15, 'D', 100000, 700000),
(1137, '2022-06-28', '2022-06-30', 'B009MM', 2, 0, 20, 't', 500000, 550000),
(1138, '2022-06-28', '2022-07-05', 'BE123SS', 10, 5, 17, 'J', 750000, 1000000),
(1139, '2022-06-28', '2022-06-29', 'B009MM', 8, 0, 20, 't', 500000, 450000);

--
-- Trigger `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `dihapus` AFTER DELETE ON `peminjaman` FOR EACH ROW BEGIN
	INSERT INTO supir SET
    id_supir = old.id_supir
  ON DUPLICATE KEY UPDATE status = 'Tersedia';
     END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `dipinjam` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
	INSERT INTO supir SET
    id_supir = new.id_supir
    ON duplicate KEY UPDATE status = 'disewa';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pinjam_mobil` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
	INSERT INTO mobil SET
    Nopol = new.Nopol
    ON duplicate KEY UPDATE Status = 'Disewa';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `ID_Kembali` int(11) NOT NULL,
  `ID_Peminjaman` int(11) NOT NULL,
  `Tgl_Pinjam` date NOT NULL,
  `Tenggat` date NOT NULL,
  `Tgl_Kembali` date NOT NULL,
  `Nopol` varchar(20) NOT NULL,
  `ID_Penyewa` int(11) NOT NULL,
  `ID_Supir` int(11) DEFAULT NULL,
  `ID_Karyawan` int(11) NOT NULL,
  `ID_Denda` int(11) DEFAULT NULL,
  `Dp` int(11) NOT NULL,
  `Total_Bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`ID_Kembali`, `ID_Peminjaman`, `Tgl_Pinjam`, `Tenggat`, `Tgl_Kembali`, `Nopol`, `ID_Penyewa`, `ID_Supir`, `ID_Karyawan`, `ID_Denda`, `Dp`, `Total_Bayar`) VALUES
(1001, 1135, '2022-06-24', '2022-06-29', '2022-06-29', 'B009MM', 5, 0, 15, 0, 100000, 9500000),
(1002, 1134, '2022-06-23', '2022-06-25', '2022-06-27', 'P1616AS', 13, 7, 22, 660, 100000, 1400000),
(1003, 1136, '2022-06-27', '2022-06-30', '2022-06-30', 'P1111AS', 12, 3, 15, 0, 100000, 700000),
(1004, 1126, '2017-05-29', '2017-06-03', '2017-06-05', 'P1616AS', 12, 0, 15, 661, 300000, 6300000),
(1005, 1137, '2022-06-28', '2022-06-30', '2022-06-02', 'B009MM', 2, 0, 20, 661, 500000, 5850000),
(1006, 1125, '2017-05-25', '2017-05-30', '2017-06-30', 'B009MM', 13, 8, 20, 0, 200000, 750000);

--
-- Trigger `pengembalian`
--
DELIMITER $$
CREATE TRIGGER `kembali_mobil` AFTER INSERT ON `pengembalian` FOR EACH ROW BEGIN
	INSERT INTO mobil SET
    Nopol = new.Nopol
    ON duplicate KEY UPDATE Status = 'Tersedia';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `kembali_supir` AFTER INSERT ON `pengembalian` FOR EACH ROW BEGIN
	INSERT INTO supir SET
    ID_Supir = new.id_supir
    ON duplicate KEY UPDATE Status = 'Tersedia';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `ID_Penyewa` int(11) NOT NULL,
  `No_Ktp` varchar(16) NOT NULL,
  `Nama_Penyewa` varchar(50) NOT NULL,
  `Gender` varchar(2) NOT NULL,
  `No_Tlp` varchar(20) NOT NULL,
  `Alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`ID_Penyewa`, `No_Ktp`, `Nama_Penyewa`, `Gender`, `No_Tlp`, `Alamat`) VALUES
(1, '3510231246578412', 'Rudi Salim', 'L', '082132451641', 'Jl. Nusa Indah No. 28, Tangerang'),
(2, '3351243214532145', 'Nisya Putri', 'P', '08251234578', 'Jl. Gitar No. 7, Bali'),
(3, '3521465213547896', 'Manika Satya', 'L', '082478963215', 'Jl. Pahlawan No. 19, Tegal'),
(4, '3521232545021302', 'Herman Susilo', 'L', '082789654013', 'Jl. Bahtera No. 6, Palembang'),
(5, '3521232402136541', 'Mukilo SUsanto', 'L', '082253210241', 'Jl. Bikang No. 17, Jakarta'),
(6, '3545632012457896', 'Susanti Mikali', 'P', '082451230214', 'Jl. Tenggara Barat No. 1, Papua'),
(7, '3563210231278412', 'Hindi Radya', 'P', '082213021544', 'Jl. Rendang No. 3, Padang'),
(8, '3512012478451203', 'Supri Yanto', 'L', '082123456789', 'Jl. Merdeka No. 5, Tangerang'),
(9, '3512451236457842', 'David Undad', 'L', '082213245814', 'Jl. Nusa Penida No. 9, Bali'),
(10, '3521478963214567', 'Diki Mutakid', 'L', '08212456983', 'Jl. Bintara No. 1, Palembang'),
(11, '3545786963124756', 'Wayam Sumaki', 'L', '08212478963', 'Jl. Indah No. 23, Jakarta'),
(12, '3545632145698742', 'Indah Surati', 'P', '08232569685', 'Jl. Semangat No. 2, Tegal'),
(13, '3562136954147236', 'Manana Ladya', 'P', '08123654781', 'Jl. Konoha No. 7, Tangerang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE `rute` (
  `Kd_Rute` enum('D','J','M','t') NOT NULL,
  `Jarak` enum('jauh','sedang','dekat','tidak') NOT NULL,
  `Biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rute`
--

INSERT INTO `rute` (`Kd_Rute`, `Jarak`, `Biaya`) VALUES
('D', 'dekat', 100000),
('J', 'jauh', 300000),
('M', 'sedang', 200000),
('t', 'tidak', 0);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `struk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `struk` (
`ID_Peminjaman` int(11)
,`Tgl_Pinjam` date
,`Nama_Penyewa` varchar(50)
,`Gender` varchar(2)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supir`
--

CREATE TABLE `supir` (
  `ID_Supir` int(11) NOT NULL,
  `Nama_Supir` varchar(50) NOT NULL,
  `No_Tlp` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supir`
--

INSERT INTO `supir` (`ID_Supir`, `Nama_Supir`, `No_Tlp`, `Status`) VALUES
(0, '-', '0', 'disewa'),
(1, 'Salim', '0891234567', 'Tersedia'),
(2, 'Reza', '0823124566', 'Tersedia'),
(3, 'Herman', '0898765432', 'Tersedia'),
(4, 'Noval', '08911234567', 'Tersedia'),
(5, 'Naval', '08921234567', 'disewa'),
(6, 'Rico', '0851234567', 'disewa'),
(7, 'Dian', '0810987653', 'Tersedia'),
(8, 'Qubro', '0861234567', 'Tersedia'),
(9, 'Achmad', '0851237654', 'Tersedia'),
(10, 'Nur', '0813214567', 'Tersedia'),
(11, 'Agos mahakam', '08142565341', 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur untuk view `daftar_nama`
--
DROP TABLE IF EXISTS `daftar_nama`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `daftar_nama`  AS SELECT `penyewa`.`Nama_Penyewa` AS `Nama_Penyewa` FROM `penyewa` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `struk`
--
DROP TABLE IF EXISTS `struk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `struk`  AS SELECT `peminjaman`.`ID_Peminjaman` AS `ID_Peminjaman`, `peminjaman`.`Tgl_Pinjam` AS `Tgl_Pinjam`, `penyewa`.`Nama_Penyewa` AS `Nama_Penyewa`, `penyewa`.`Gender` AS `Gender` FROM (`peminjaman` join `penyewa` on(`peminjaman`.`ID_Penyewa` = `penyewa`.`ID_Penyewa`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`ID_Denda`),
  ADD KEY `Kd_Kerusakan` (`Kd_Kerusakan`),
  ADD KEY `Nopol` (`Nopol`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`ID_Karyawan`);

--
-- Indeks untuk tabel `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`Kd_Kerusakan`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`Nopol`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_Peminjaman`),
  ADD KEY `Nopol` (`Nopol`,`ID_Penyewa`,`ID_Supir`,`ID_Karyawan`,`Kd_Rute`),
  ADD KEY `ID_Penyewa` (`ID_Penyewa`),
  ADD KEY `ID_Supir` (`ID_Supir`),
  ADD KEY `Kd_Rute` (`Kd_Rute`),
  ADD KEY `ID_Karyawan` (`ID_Karyawan`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`ID_Kembali`),
  ADD KEY `Nopol` (`Nopol`,`ID_Penyewa`,`ID_Supir`,`ID_Karyawan`,`ID_Peminjaman`),
  ADD KEY `ID_Denda` (`ID_Denda`),
  ADD KEY `pengembalian_ibfk_2` (`ID_Penyewa`),
  ADD KEY `pengembalian_ibfk_5` (`ID_Karyawan`),
  ADD KEY `pengembalian_ibfk_6` (`ID_Peminjaman`),
  ADD KEY `pengembalian_ibfk_8` (`ID_Supir`);

--
-- Indeks untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`ID_Penyewa`);

--
-- Indeks untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`Kd_Rute`);

--
-- Indeks untuk tabel `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`ID_Supir`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `denda`
--
ALTER TABLE `denda`
  MODIFY `ID_Denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `ID_Karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `ID_Peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1141;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `ID_Kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `ID_Penyewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD CONSTRAINT `denda_ibfk_1` FOREIGN KEY (`Kd_Kerusakan`) REFERENCES `kerusakan` (`Kd_Kerusakan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `denda_ibfk_2` FOREIGN KEY (`Nopol`) REFERENCES `mobil` (`Nopol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`ID_Penyewa`) REFERENCES `penyewa` (`ID_Penyewa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`Nopol`) REFERENCES `mobil` (`Nopol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_5` FOREIGN KEY (`ID_Karyawan`) REFERENCES `karyawan` (`ID_Karyawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_7` FOREIGN KEY (`ID_Supir`) REFERENCES `supir` (`ID_Supir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_8` FOREIGN KEY (`Kd_Rute`) REFERENCES `rute` (`Kd_Rute`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`Nopol`) REFERENCES `mobil` (`Nopol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`ID_Penyewa`) REFERENCES `penyewa` (`ID_Penyewa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengembalian_ibfk_5` FOREIGN KEY (`ID_Karyawan`) REFERENCES `karyawan` (`ID_Karyawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengembalian_ibfk_6` FOREIGN KEY (`ID_Peminjaman`) REFERENCES `peminjaman` (`ID_Peminjaman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengembalian_ibfk_7` FOREIGN KEY (`ID_Denda`) REFERENCES `denda` (`ID_Denda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengembalian_ibfk_8` FOREIGN KEY (`ID_Supir`) REFERENCES `supir` (`ID_Supir`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `reviewbuku`
--
CREATE DATABASE IF NOT EXISTS `reviewbuku` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `reviewbuku`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_genre` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `deskripsi`, `pengarang`, `tahun`, `id_genre`, `created_at`, `updated_at`) VALUES
(1, 'Huhhu', 'sangat lucu', 'Davinnnnnnn', '2020', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `id_genre` bigint(20) UNSIGNED NOT NULL,
  `nama_genre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`id_genre`, `nama_genre`, `created_at`, `updated_at`) VALUES
(1, 'romance', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2022_07_25_023421_create_profil_table', 1),
(23, '2022_07_25_023731_create_genre_table', 1),
(24, '2022_07_25_030452_create_buku_table', 1),
(25, '2022_07_25_031045_create_review_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` bigint(20) UNSIGNED NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `buku_id_genre_foreign` (`id_genre`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD KEY `review_id_user_foreign` (`id_user`),
  ADD KEY `review_id_buku_foreign` (`id_buku`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_id_genre_foreign` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`);

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_id_buku_foreign` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `review_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
--
-- Database: `smartmarketbaru`
--
CREATE DATABASE IF NOT EXISTS `smartmarketbaru` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `smartmarketbaru`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
(1, 'Beverages ', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments ', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood ', 'Seaweed and fish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PotalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `Address`, `City`, `PotalCode`, `Country`) VALUES
(1, 'Thoriq Ayub Bahtiar', 'Genteng', 'Banyuwangi', '12209', 'Indonesia'),
(2, 'Lailatul ima', 'Pesanggaran', 'Banyuwangi', '5021', 'Indonesia'),
(3, 'Rizal', 'Pasembon', 'Banyuwangi', '5023', 'Indonesia'),
(4, 'Firman', 'Pasilir', 'Banyuwangi', 'WA1 1DP ', 'Indonesia'),
(5, 'Ike', 'Jajag', 'Banyuwangi', 'S-958 22 ', 'Indonesia'),
(6, 'Blauer See Delikatessen ', 'Forsterstr. 57 ', 'Mannheim ', '68306', 'Germany'),
(7, 'Blondel père et fils ', '24, place Kléber ', 'Strasbourg', '67000 ', 'France'),
(8, 'Bólido Comidas preparadas ', 'C/ Araquil, 67 ', 'Madrid ', '28023 ', 'Spain'),
(9, 'Bon app\'', '12, rue des Bouchers ', 'Marseille', '13008', 'France'),
(10, 'Bottom-Dollar Marketse', '23 Tsawassen Blvd.', 'Tsawassen ', 'T2F 8M4 ', 'Canada'),
(12, 'Cactus Comidas para llevar ', 'Cerrito 333', 'Buenos Aires', '1010 ', 'Argentina'),
(13, 'Centro comercial Moctezuma ', 'Sierras de Granada 9993 ', 'México D.F.', '5022', 'Mexico'),
(14, 'Chop-suey Chinese ', 'Hauptstr. 29 ', 'Bern', '3012 ', 'Switzerland'),
(15, 'Comércio Mineiro ', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(17, 'Drachenblut Delikatessend ', 'Walserweg 21', 'Aachen ', '52066', 'Germany'),
(18, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(20, 'Ernst Handel', 'Kirchgasse 6 ', 'Graz', '8010', 'Austria'),
(21, 'Familia Arquibaldo', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
(23, 'Folies gourmandes', '184,chaussée de Tournai', 'Lille', '59000', 'France'),
(24, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(25, 'Frankenversand', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(26, 'France restauration', '54, rue Royale', 'Nantes', '4400', 'France'),
(27, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(28, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(29, 'Galería del gastrónomo', 'Rambla de Cataluña, 23', 'Barcelona', '8022', 'Spain'),
(30, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
(31, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
(32, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
(33, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
(34, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
(35, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
(36, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
(37, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', ' ', 'Ireland'),
(39, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
(40, 'La corne d abondance', '67, avenue de l Europe', 'Versailles', '78000', 'France'),
(41, 'La maison d Asie', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
(42, 'Laughing Bacchus Wine Cellars', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
(43, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
(44, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany'),
(45, 'Let s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
(46, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
(47, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
(48, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
(49, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
(50, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
(51, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
(52, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', '4179', 'Germany'),
(54, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
(55, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
(56, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
(57, 'Paris spécialités', '265, boulevard Charonne', 'Paris', '75012', 'France'),
(58, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', '5033', 'Mexico'),
(59, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
(60, 'Princesa Isabel Vinhoss', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal'),
(61, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil'),
(62, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil'),
(63, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '1307', 'Germany'),
(64, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina'),
(65, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA'),
(66, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy'),
(67, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil'),
(68, 'Richter Supermarkt', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland'),
(69, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', '28001', 'Spain'),
(70, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway'),
(71, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
(73, 'Simons bistro', 'Vinbæltet 34', 'København', '1734', 'Denmark'),
(74, 'Spécialités du monde', '25, rue Lauriston', 'Paris', '75016', 'France'),
(75, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', '82520', 'USA'),
(76, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium'),
(77, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA'),
(78, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA'),
(79, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', '44087', 'Germany'),
(80, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '5033', 'Mexico'),
(81, 'Tradição Hipermercados', 'Av. Inês de Castro, 414', 'São Paulo', '05634-030', 'Brazil'),
(82, 'Trails Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
(83, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '8200', 'Denmark'),
(84, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '69004', 'France'),
(85, 'Vins et alcools Chevalier', '59 rue de l Abbaye', 'Reims', '51100', 'France'),
(86, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany'),
(87, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
(88, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
(89, 'White Clover Markets', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
(90, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
(91, 'Wolski', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland'),
(92, 'Erikson', 'St.Jalanjalan ', 'New York', '341819', 'USA'),
(93, 'Michael', 'St. For the world', 'Chicago', '325168', 'USA'),
(94, 'Pargoyta Melaka', 'St. Klaurawes', 'Hajagta', '567829', 'Uruguay'),
(95, 'Harry Maguire', 'St. Walesion', 'Manchester', '4267', 'UK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deleteorders`
--

CREATE TABLE `deleteorders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `OrdeDate` date NOT NULL,
  `ShipperID` int(11) NOT NULL,
  `update_delete` datetime DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `deleteorders`
--

INSERT INTO `deleteorders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrdeDate`, `ShipperID`, `update_delete`, `username`) VALUES
(10248, 90, 5, '1996-07-04', 3, '2022-05-25 09:32:38', 'root@localhost'),
(10249, 81, 6, '1996-07-05', 1, '2022-05-25 09:32:38', 'root@localhost'),
(10250, 34, 4, '1996-07-08', 2, '2022-05-25 09:32:38', 'root@localhost');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deletesuppliers`
--

CREATE TABLE `deletesuppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `update_delete` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `deletesuppliers`
--

INSERT INTO `deletesuppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`, `update_delete`) VALUES
(2, 'New Orleans Cajun\r\nDelights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA', '(100) 555-4822', '2022-05-25'),
(3, 'Grandma Kelly\'s\r\nHomestead', 'Regina Murphy ', '707 Oxford Rd.', 'Ann Arbor ', '48104', 'USA', '(313) 555-5735\r\n', '2022-05-25'),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th\r\nAvenue Suite\r\n210\r\n', 'Bend ', '97101 ', 'USA', '(503) 555-9931', '2022-05-25'),
(19, 'New England Seafood\r\nCannery\r\n', 'Robb Merchant', 'Order Processing\r\nDept. 2100 Paul\r\nRevere Blvd.', 'Boston ', '2134', 'USA ', '(617) 555-3267', '2022-05-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `BirthDate` date NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `Notes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `BirthDate`, `Foto`, `Notes`) VALUES
(1, 'Davolio', 'Nancy', '1968-08-12', '', 'Education includes a BA in psychology from Colorado State University. She also completed\r\n(The Art of the Cold Call). Nancy is a member of \'Toastmasters International\''),
(2, 'Fuller', 'Andrew ', '1952-02-19', '', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the\r\nUniversity of Dallas. He is fluent in French and Italian and reads German. He joined the\r\ncompany as a sales representative, was promoted to sales manager and was then named\r\nvice president of sales. Andrew is a member of the Sales Management Roundtable, the\r\nSeattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
(3, 'Leverling', 'Janet', '1963-08-30', '', 'Janet has a BS degree in chemistry from Boston College). She has also completed a\r\ncertificate program in food retailing management. Janet was hired as a sales associate and\r\nwas promoted to sales representative.'),
(4, 'Peacock', 'Margaret', '1958-09-19', '', 'Margaret holds a BA in English literature from Concordia College and an MA from the\r\nAmerican Institute of Culinary Arts. She was temporarily assigned to the London office\r\nbefore returning to her permanent post in Seattle.'),
(5, 'Buchanan', 'Steven ', '1955-04-03', '', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree.\r\nUpon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where\r\nhe was promoted to sales manager. Mr. Buchanan has completed the courses \'Successful\r\nTelemarketing\' and \'International Sales Management\'. He is fluent in French.'),
(6, 'Suyama', 'Michael', '1963-02-07', '', 'Michael is a graduate of Sussex University (MA, economics) and the University of California\r\nat Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and\r\n\'Time Management for the Sales Professional\'. He is fluent in Japanese and can read and\r\nwrite French, Portuguese, and Spanish.'),
(7, 'King ', 'Robert', '1960-05-29', '', 'Robert King served in the Peace Corps and traveled extensively before completing his\r\ndegree in English at the University of Michigan and then joining the company. After\r\ncompleting a course entitled \'Selling in Europe\', he was transferred to the London office.'),
(8, 'Callahan', 'Laura', '1958-09-01', '', 'Laura received a BA in psychology from the University of Washington. She has also\r\ncompleted a course in business French. She reads and writes French.'),
(9, 'Dodsworth', 'Anne', '1969-02-07', '', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and\r\nGerman.'),
(10, 'West', 'Adam ', '1928-09-19', '', 'An old chum.');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `mexicocustomers`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `mexicocustomers` (
`CustomerName` varchar(255)
,`Address` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orderdetails`
--

INSERT INTO `orderdetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`) VALUES
(1, 10248, 11, 12),
(2, 10248, 42, 10),
(3, 10248, 72, 5),
(4, 10249, 14, 9),
(5, 10249, 51, 40),
(6, 10250, 41, 10),
(7, 10250, 51, 35),
(8, 10250, 65, 15),
(9, 10251, 22, 6),
(10, 10251, 57, 15),
(11, 10251, 65, 20),
(12, 10252, 20, 40),
(13, 10252, 33, 25),
(14, 10252, 60, 40),
(15, 10253, 31, 20),
(16, 10253, 39, 42),
(17, 10253, 49, 40),
(18, 10254, 24, 15),
(19, 10254, 55, 21),
(20, 10254, 74, 21),
(21, 10255, 2, 20),
(22, 10255, 16, 35),
(23, 10255, 36, 25),
(24, 10255, 59, 30),
(25, 10256, 53, 15),
(26, 10256, 77, 12),
(27, 10257, 27, 25),
(28, 10257, 39, 6),
(29, 10257, 77, 1),
(30, 10258, 2, 5),
(31, 10258, 5, 6),
(32, 10258, 32, 0),
(33, 10259, 21, 1),
(34, 10259, 37, 0),
(35, 10260, 41, 1),
(36, 10260, 57, 5),
(37, 10260, 62, 1),
(38, 10260, 70, 2),
(39, 10261, 21, 2),
(40, 10261, 35, 2),
(41, 10262, 5, 1),
(42, 10262, 7, 1),
(43, 10262, 56, 2),
(44, 10263, 16, 6),
(45, 10263, 24, 2),
(46, 10263, 30, 6),
(47, 10263, 74, 3),
(48, 10264, 2, 3),
(49, 10264, 41, 2),
(50, 10265, 17, 3),
(51, 10265, 70, 2),
(52, 10266, 12, 1),
(53, 10267, 40, 5),
(54, 10267, 59, 7),
(55, 10267, 76, 1),
(56, 10268, 29, 1),
(57, 10268, 72, 4),
(58, 10269, 33, 6),
(59, 10269, 72, 2),
(60, 10270, 36, 3),
(61, 10270, 43, 2),
(62, 10271, 33, 2),
(63, 10272, 20, 6),
(64, 10272, 31, 4),
(65, 10272, 72, 2),
(66, 10273, 10, 2),
(67, 10273, 31, 1),
(68, 10273, 33, 2),
(69, 10273, 40, 6),
(70, 10273, 76, 3),
(71, 10274, 71, 2),
(72, 10274, 72, 7),
(73, 10275, 24, 1),
(74, 10275, 59, 6),
(75, 10276, 10, 1),
(76, 10276, 13, 1),
(77, 10277, 28, 2),
(78, 10277, 62, 1),
(79, 10278, 44, 1),
(80, 10278, 59, 1),
(81, 10278, 63, 8),
(82, 10278, 73, 2),
(83, 10279, 17, 1),
(84, 10280, 24, 1),
(85, 10280, 55, 2),
(86, 10280, 75, 3),
(87, 10281, 19, 1),
(88, 10281, 24, 6),
(89, 10281, 35, 4),
(90, 10282, 30, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `OrdeDate` date NOT NULL,
  `ShipperID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrdeDate`, `ShipperID`) VALUES
(10251, 84, 3, '1996-07-08', 1),
(10252, 76, 4, '1996-07-09', 2),
(10253, 34, 3, '1996-07-10', 2),
(10254, 14, 5, '1996-07-11', 2),
(10255, 68, 9, '1996-07-12', 3),
(10256, 88, 3, '1996-07-15', 2),
(10257, 35, 4, '1996-07-16', 3),
(10258, 20, 1, '1996-07-17', 1),
(10259, 13, 4, '1996-07-18', 3),
(10260, 55, 4, '1996-07-19', 1),
(10261, 61, 4, '1996-07-19', 2),
(10262, 65, 8, '1996-07-22', 3),
(10263, 20, 9, '1996-07-23', 3),
(10264, 24, 6, '1996-07-24', 3),
(10265, 7, 2, '1996-07-25', 1),
(10266, 87, 3, '1996-07-26', 3),
(10267, 25, 4, '1996-07-29', 1),
(10268, 33, 8, '1996-07-30', 3),
(10269, 89, 5, '1996-07-31', 1),
(10270, 87, 1, '1996-08-01', 1),
(10271, 75, 6, '1996-08-01', 2),
(10272, 65, 6, '1996-08-02', 2),
(10273, 63, 3, '1996-08-05', 3),
(10274, 85, 6, '1996-08-06', 1),
(10275, 49, 1, '1996-08-07', 1),
(10276, 80, 8, '1996-08-08', 3),
(10277, 52, 2, '1996-08-09', 3),
(10278, 5, 8, '1996-08-12', 2),
(10279, 44, 8, '1996-08-13', 2),
(10280, 5, 2, '1996-08-14', 1),
(10281, 69, 4, '1996-08-14', 1),
(10282, 69, 4, '1996-08-15', 1),
(10283, 46, 3, '1996-08-16', 3),
(10284, 44, 4, '1996-08-19', 1),
(10285, 63, 1, '1996-08-20', 2),
(10286, 63, 8, '1996-08-21', 3),
(10287, 67, 8, '1996-08-22', 3),
(10288, 66, 4, '1996-08-23', 1),
(10289, 11, 7, '1996-08-26', 3),
(10290, 15, 8, '1996-08-27', 1),
(10291, 61, 6, '1996-08-27', 2),
(10292, 81, 1, '1996-08-28', 2),
(10293, 80, 1, '1996-08-29', 3),
(10294, 65, 4, '1996-08-30', 2),
(10295, 85, 2, '1996-09-02', 2),
(10296, 46, 6, '1996-09-03', 1),
(10297, 7, 5, '1996-09-04', 2),
(10298, 37, 6, '1996-09-05', 2),
(10299, 67, 4, '1996-09-06', 2),
(10300, 49, 2, '1996-09-09', 2),
(10301, 86, 8, '1996-09-09', 2),
(10302, 76, 4, '1996-09-10', 2),
(10303, 30, 7, '1996-09-11', 2),
(10304, 80, 1, '1996-09-12', 2),
(10305, 55, 8, '1996-09-13', 3),
(10306, 69, 1, '1996-09-16', 3),
(10307, 48, 2, '1996-09-17', 2),
(10308, 2, 7, '1996-09-18', 3),
(10309, 37, 3, '1996-09-19', 1),
(10310, 77, 8, '1996-09-20', 2),
(10311, 18, 1, '1996-09-20', 3),
(10312, 86, 2, '1996-09-23', 2),
(10313, 63, 2, '1996-09-24', 2),
(10314, 65, 1, '1996-09-25', 2),
(10315, 38, 4, '1996-09-26', 2),
(10316, 65, 1, '1996-09-27', 3),
(10317, 48, 6, '1996-09-30', 1),
(10318, 38, 8, '1996-10-01', 2),
(10319, 80, 7, '1996-10-02', 3),
(10320, 87, 5, '1996-10-03', 3),
(10321, 38, 3, '1996-10-03', 2),
(10322, 58, 7, '1996-10-04', 3),
(10323, 39, 4, '1996-10-07', 1),
(10324, 71, 9, '1996-10-08', 1),
(10325, 39, 1, '1996-10-09', 3),
(10326, 8, 4, '1996-10-10', 2),
(10327, 24, 2, '1996-10-11', 1),
(10328, 28, 4, '1996-10-14', 3),
(10329, 75, 4, '1996-10-15', 2),
(10330, 46, 3, '1996-10-16', 1),
(10331, 9, 9, '1996-10-16', 1),
(10332, 51, 3, '1996-10-17', 2),
(10333, 87, 5, '1996-10-18', 3),
(10334, 84, 8, '1996-10-21', 2),
(10335, 37, 7, '1996-10-22', 2),
(10336, 60, 7, '1996-10-23', 2),
(10337, 25, 4, '1996-10-24', 3),
(10338, 55, 4, '1996-10-25', 3),
(10339, 51, 2, '1996-10-28', 2),
(10340, 9, 1, '1996-10-29', 3),
(10341, 73, 7, '1996-10-29', 3),
(10342, 25, 4, '1996-10-30', 2),
(10343, 44, 4, '1996-10-31', 1),
(10344, 89, 4, '1996-11-01', 2),
(10345, 63, 2, '1996-11-04', 2),
(10346, 65, 3, '1996-11-05', 3),
(10347, 21, 4, '1996-11-06', 3),
(10348, 86, 4, '1996-11-07', 2),
(10349, 75, 7, '1996-11-08', 1),
(10350, 41, 6, '1996-11-11', 2),
(10351, 20, 1, '1996-11-11', 1),
(10352, 28, 3, '1996-11-12', 3),
(10353, 59, 7, '1996-11-13', 3),
(10354, 58, 8, '1996-11-14', 3),
(10355, 4, 6, '1996-11-15', 1),
(10356, 86, 6, '1996-11-18', 2),
(10357, 46, 1, '1996-11-19', 3),
(10358, 41, 5, '1996-11-20', 1),
(10359, 72, 5, '1996-11-21', 3),
(10360, 7, 4, '1996-11-22', 3),
(10361, 63, 1, '1996-11-22', 2),
(10362, 9, 3, '1996-11-25', 1),
(10363, 17, 4, '1996-11-26', 3),
(10364, 19, 1, '1996-11-26', 1),
(10365, 3, 3, '1996-11-27', 2),
(10366, 29, 8, '1996-11-28', 2),
(10367, 83, 7, '1996-11-28', 3),
(10368, 20, 2, '1996-11-29', 2),
(10369, 75, 8, '1996-12-02', 2),
(10370, 14, 6, '1996-12-03', 2),
(10371, 41, 1, '1996-12-03', 1),
(10372, 62, 5, '1996-12-04', 2),
(10373, 37, 4, '1996-12-05', 3),
(10374, 91, 1, '1996-12-05', 3),
(10375, 36, 3, '1996-12-06', 2),
(10376, 51, 1, '1996-12-09', 2),
(10377, 72, 1, '1996-12-09', 3),
(10378, 24, 5, '1996-12-10', 3),
(10379, 61, 2, '1996-12-11', 1),
(10380, 37, 8, '1996-12-12', 3),
(10381, 46, 3, '1996-12-12', 3),
(10382, 20, 4, '1996-12-13', 1),
(10383, 4, 8, '1996-12-16', 3),
(10384, 5, 3, '1996-12-16', 3),
(10385, 75, 1, '1996-12-17', 2),
(10386, 21, 9, '1996-12-18', 3),
(10387, 70, 1, '1996-12-18', 2),
(10388, 72, 2, '1996-12-19', 1),
(10389, 10, 4, '1996-12-20', 2),
(10390, 20, 6, '1996-12-23', 1),
(10391, 17, 3, '1996-12-23', 3),
(10392, 59, 2, '1996-12-24', 3),
(10393, 71, 1, '1996-12-25', 3),
(10394, 36, 1, '1996-12-25', 3),
(10395, 35, 6, '1996-12-26', 1),
(10396, 25, 1, '1996-12-27', 3),
(10397, 60, 5, '1996-12-27', 1),
(10398, 71, 2, '1996-12-30', 3),
(10399, 83, 8, '1996-12-31', 3),
(10400, 19, 1, '1997-01-01', 3),
(10401, 65, 1, '1997-01-01', 1),
(10402, 20, 8, '1997-01-02', 2),
(10403, 20, 4, '1997-01-03', 3),
(10404, 49, 2, '1997-01-03', 1),
(10405, 47, 1, '1997-01-06', 1),
(10406, 62, 7, '1997-01-07', 1),
(10407, 56, 2, '1997-01-07', 2),
(10408, 23, 8, '1997-01-08', 1),
(10409, 54, 3, '1997-01-09', 1),
(10410, 10, 3, '1997-01-10', 3),
(10411, 10, 9, '1997-01-10', 3),
(10412, 87, 8, '1997-01-13', 2),
(10413, 41, 3, '1997-01-14', 2),
(10414, 21, 2, '1997-01-14', 3),
(10415, 36, 3, '1997-01-15', 1),
(10416, 87, 8, '1997-01-16', 3),
(10417, 73, 4, '1997-01-16', 3),
(10418, 63, 4, '1997-01-17', 1),
(10419, 68, 4, '1997-01-20', 2),
(10420, 88, 3, '1997-01-21', 1),
(10421, 61, 8, '1997-01-21', 1),
(10422, 27, 2, '1997-01-22', 1),
(10423, 31, 6, '1997-01-23', 3),
(10424, 51, 7, '1997-01-23', 2),
(10425, 41, 6, '1997-01-24', 2),
(10426, 29, 4, '1997-01-27', 1),
(10427, 59, 4, '1997-01-27', 2),
(10428, 66, 7, '1997-01-28', 1),
(10429, 37, 3, '1997-01-29', 2),
(10430, 20, 4, '1997-01-30', 1),
(10431, 10, 4, '1997-01-30', 2),
(10432, 75, 3, '1997-01-31', 2),
(10433, 60, 3, '1997-02-03', 3),
(10434, 24, 3, '1997-02-03', 2),
(10435, 16, 8, '1997-02-04', 2),
(10436, 7, 3, '1997-02-05', 2),
(10437, 87, 8, '1997-02-05', 1),
(10438, 79, 3, '1997-02-06', 2),
(10439, 51, 6, '1997-02-07', 3),
(10440, 71, 4, '1997-02-10', 2),
(10441, 55, 3, '1997-02-10', 2),
(10442, 20, 3, '1997-02-11', 2),
(10443, 66, 8, '1997-02-12', 1);

--
-- Trigger `orders`
--
DELIMITER $$
CREATE TRIGGER `deleteorders` AFTER DELETE ON `orders` FOR EACH ROW BEGIN
	INSERT INTO deleteorders(
        OrderID,
        CustomerID,
        EmployeeID,
        OrdeDate,
        ShipperID,
        update_delete,
        username)
    VALUES (
        OLD.OrderID,
        OLD.CustomerID,
        OLD.EmployeeID,
        OLD.OrdeDate,
        OLD.ShipperID,
        sysdate(),
        CURRENT_USER);
        
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `Unit` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', '18.00'),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', '19.00'),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', '10.00'),
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', '22.00'),
(5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', '21.00'),
(6, 'Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', '25.00'),
(7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', '30.00'),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', '40.00'),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', '97.00'),
(10, 'Ikura', 4, 8, '12 - 200 ml jars', '31.00'),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', '21.00'),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', '38.00'),
(13, 'Konbu', 6, 8, '2 kg box', '6.00'),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', '23.00'),
(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', '15.00'),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', '17.00'),
(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', '39.00'),
(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', '62.00'),
(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', '9.00'),
(20, 'Sir Rodney\'s Marmalade', 8, 3, '30 gift boxes', '81.00'),
(21, 'Sir Rodney\'s Scones', 8, 3, '24 pkgs. x 4 pieces', '10.00'),
(22, 'Gustaf\'s Kn?ckebr?d', 9, 5, '24 - 500 g pkgs.', '21.00'),
(23, 'Tunnbr?d', 9, 5, '12 - 250 g pkgs.', '9.00'),
(24, 'Guaran? Fant?stica', 10, 1, '12 - 355 ml cans', '4.00'),
(25, 'NuNuCa Nu?-Nougat-Creme', 11, 3, '20 - 450 g glasses', '14.00'),
(26, 'Gumb?r Gummib?rchen', 11, 3, '100 - 250 g bags', '31.00'),
(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', '43.00'),
(28, 'R?ssle Sauerkraut', 12, 7, '25 - 825 g cans', '45.00'),
(29, 'Th?ringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', '124.00'),
(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', '26.00'),
(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', '12.00'),
(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', '32.00'),
(33, 'Geitost', 15, 4, '500 g', '2.00'),
(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', '14.00'),
(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', '18.00'),
(36, 'Inlagd Sill', 17, 8, '24 - 250 g jars', '19.00'),
(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', '26.00'),
(38, 'C?te de Blaye', 18, 1, '12 - 75 cl bottles', '263.00'),
(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', '18.00'),
(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', '18.00'),
(41, 'Jack\'s New England Clam Chowder', 19, 8, '12 - 12 oz cans', '0.00'),
(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', '14.00'),
(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', '46.00'),
(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', '19.00'),
(45, 'R?gede sild', 21, 8, '1 kg pkg.', '9.00'),
(46, 'Spegesild', 21, 8, '4 - 450 g glasses', '12.00'),
(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', '9.00'),
(48, 'Chocolade', 22, 3, '10 pkgs.', '0.00'),
(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', '20.00'),
(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', '16.00'),
(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', '53.00'),
(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', '7.00'),
(53, 'Perth Pasties', 24, 6, '48 pieces', '32.00'),
(54, 'Tourti?re', 25, 6, '16 pies', '7.00'),
(55, 'P?t? chinois', 25, 6, '24 boxes x 2 pies', '24.00'),
(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', '38.00'),
(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', '19.00'),
(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', '13.00'),
(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', '55.00'),
(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', '34.00'),
(61, 'Sirop d\'?rable', 29, 2, '24 - 500 ml bottles', '28.00'),
(62, 'Tarte au sucre', 29, 3, '48 pies', '49.00'),
(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', '43.00'),
(64, 'Wimmers gute Semmelkn?del', 12, 5, '20 bags x 4 pieces', '33.00'),
(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', '21.00'),
(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', '17.00'),
(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', '14.00'),
(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', '12.00'),
(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', '36.00'),
(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', '15.00'),
(71, 'Fl?temysost', 15, 4, '10 - 500 g pkgs.', '21.00'),
(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', '34.00'),
(73, 'R?d Kaviar', 17, 8, '24 - 150 g jars', '15.00'),
(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', '10.00'),
(75, 'Rh?nbr?u Klosterbier', 12, 1, '24 - 0.5 l bottles', '0.00'),
(76, 'Lakkalik??ri', 23, 1, '500 ml', '18.00'),
(77, 'Original Frankfurter gr?ne So?e', 12, 2, '12 boxes', '13.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL,
  `ShipperName` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Phone`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', ''),
(3, 'Federal Shipping', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'London', 'EC1 4SD', 'UK', '(171) 555-2222'),
(5, 'Cooperativa de Quesos\r\n\'Las Cabras\'', 'Antonio del Valle\r\nSaavedra\r\n', 'Calle del Rosal 4', 'Oviedo ', '33007', 'Spain ', '(98) 598 76 54\r\n'),
(6, 'Mayumi\'s ', 'Mayumi Ohno\r\n', '92 Setsuko\r\nChuo-ku\r\n', 'Osaka ', '545 ', 'Japan ', '(06) 431-7877'),
(7, 'Pavlova, Ltd.', 'Ian Devling\r\n', '74 Rose St.\r\nMoonie Ponds\r\n', 'Melbourne ', '3058', 'Australia ', '(03) 444-2343'),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson ', '29 King\'s Way ', 'Manchester ', 'M14 GSD ', 'UK', '(161) 555-4448'),
(9, 'PB Knäckebröd AB', 'Lars Peterson ', 'Kaloadagatan 13 ', 'Göteborg ', 'S-345 67', 'Sweden', '031-987 65 43'),
(10, 'Refrescos Americanas\r\nLTDA', 'Carlos Diaz\r\n', 'Av. das\r\nAmericanas\r\n12.890\r\n', 'São Paulo', '5442', 'Brazil ', '(11) 555 4640'),
(11, 'Heli Süßwaren GmbH &\r\nCo. KG\r\n', 'Petra Winkler\r\n', 'Tiergartenstraße\r\n5', 'Berlin', '10785 ', 'Germany ', '(010) 9984510'),
(12, 'Plutzer\r\nLebensmittelgroßmärkte\r\nAG\r\n', 'Martin Bein ', 'Bogenallee 51', 'Frankfurt', '60439', 'Germany', '(069) 992755'),
(13, 'Nord-Ost-Fisch\r\nHandelsgesellschaft\r\nmbH', 'Sven Petersen\r\n', 'Frahmredder\r\n112a\r\n', 'Cuxhaven ', '27478 ', 'Germany', '(04721) 8713\r\n'),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi ', 'Viale Dante, 75', 'Ravenna', '48100 ', 'Italy', '(0544) 60323'),
(15, 'Norske Meierier ', 'Beate Vileid', 'Hatlevegen 5', 'Sandvika', '1320 ', 'Norway', '(0)2-953010'),
(17, 'Svensk Sjöföda AB', 'Michael Björn\r\n', 'Brovallavägen\r\n231', 'Stockholm ', 'S-123 45', 'Sweden', '08-123 45 67'),
(18, 'Aux joyeux\r\necclésiastiques\r\n', 'Guylène Nodier', '203, Rue des\r\nFrancsBourgeois', 'Paris ', '75004 ', 'France', '(1) 03.83.00.68\r\n'),
(20, 'Leka Trading', 'Chandra Leka', '471 Serangoon\r\nLoop, Suite #402\r\n', 'Singapore', '512 ', 'Singapore ', '555-8787'),
(21, 'Lyngbysild ', 'Niels Petersen', 'Lyngbysild\r\nFiskebakken 10\r\n', 'Lyngby ', '2800', 'Denmark', '43844108'),
(22, 'Zaanse Snoepfabriek ', 'Dirk Luchte\r\n', 'Verkoop Rijnweg\r\n22\r\n', 'Zaandam', '9999 ZZ', 'Netherlands', '(12345) 1212\r\n'),
(23, 'Karkki Oy ', 'Anne Heikkonen ', 'Valtakatu 12 ', 'Lappeenranta', '53120', 'Finland ', '(953) 10956\r\n'),
(24, 'G\'day, Mate', 'Wendy Mackenzie', '170 Prince\r\nEdward Parade\r\nHunter\'s Hill', 'Sydney ', '2042 ', 'Australia', '(02) 555-5914\r\n'),
(25, 'Ma Maison', 'Jean-Guy Lauzon\r\n', '2960 Rue St.\r\nLaurent\r\n', 'Montréal', 'H1J 1C3', 'Canada', '(514) 555-9022'),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei\r\nGelsomini, 153', 'Salerno ', '84100', 'Italy', '(089) 6547665\r\n'),
(27, 'Escargots Nouveaux', 'Marie Delamare ', '22, rue H. Voiron', 'Montceau', '71300', 'France', '85.57.00.07\r\n'),
(28, 'Gai pâturage', 'Eliane Noz', 'Bat. B 3, rue des\r\nAlpes\r\n', 'Annecy ', '74000', 'France', '38.76.98.06'),
(29, 'Forêts d\'érables ', 'Chantal Goulet\r\n', '148 rue\r\nChasseur\r\n', 'SteHyacinthe\r\n', 'J2S 7S8 ', 'Canada ', '(514) 555-2955\r\n');

--
-- Trigger `suppliers`
--
DELIMITER $$
CREATE TRIGGER `delete_supp` AFTER DELETE ON `suppliers` FOR EACH ROW BEGIN
	INSERT INTO deletesuppliers(
        SupplierID,
        SupplierName,
        ContactName,
        Address,
        City,
        PostalCode,
        Country,
        Phone,
        update_delete)
    VALUES (
        OLD.SupplierID,
        OLD.SupplierName,
        OLD.ContactName,
        OLD.Address,
        OLD.City,
        OLD.PostalCode,
        OLD.Country,
        OLD.Phone,
        sysdate()
    );
        
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier_amerika`
--

CREATE TABLE `supplier_amerika` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tugas`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tugas` (
`OrderDetailID` int(11)
,`ProductName` varchar(255)
,`Quantity` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `mexicocustomers`
--
DROP TABLE IF EXISTS `mexicocustomers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mexicocustomers`  AS SELECT `customers`.`CustomerName` AS `CustomerName`, `customers`.`Address` AS `Address` FROM `customers` WHERE `customers`.`Country` = 'Mexico' ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tugas`
--
DROP TABLE IF EXISTS `tugas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tugas`  AS SELECT `orderdetails`.`OrderDetailID` AS `OrderDetailID`, `products`.`ProductName` AS `ProductName`, `orderdetails`.`Quantity` AS `Quantity` FROM (`orderdetails` join `products` on(`orderdetails`.`ProductID` = `products`.`ProductID`)) WHERE `products`.`ProductName` = 'Chang' ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indeks untuk tabel `deleteorders`
--
ALTER TABLE `deleteorders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indeks untuk tabel `deletesuppliers`
--
ALTER TABLE `deletesuppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indeks untuk tabel `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `OrderIDIndexView` (`OrderID`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indeks untuk tabel `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indeks untuk tabel `supplier_amerika`
--
ALTER TABLE `supplier_amerika`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `deleteorders`
--
ALTER TABLE `deleteorders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10251;

--
-- AUTO_INCREMENT untuk tabel `deletesuppliers`
--
ALTER TABLE `deletesuppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10444;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `shippers`
--
ALTER TABLE `shippers`
  MODIFY `ShipperID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `supplier_amerika`
--
ALTER TABLE `supplier_amerika`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `tokokopi`
--
CREATE DATABASE IF NOT EXISTS `tokokopi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tokokopi`;
--
-- Database: `trigger`
--
CREATE DATABASE IF NOT EXISTS `trigger` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `trigger`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beli`
--

CREATE TABLE `beli` (
  `id_beli` int(11) NOT NULL,
  `kd_barang` varchar(5) DEFAULT NULL,
  `nama_barang` varchar(20) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `beli`
--

INSERT INTO `beli` (`id_beli`, `kd_barang`, `nama_barang`, `jumlah`) VALUES
(1, 'B001', 'gucci', 10),
(2, 'B002', 'nike', 10),
(3, 'B003', 'adidas', 15),
(4, 'B004', 'puma', 10),
(5, 'B005', 'under armor', 9);

--
-- Trigger `beli`
--
DELIMITER $$
CREATE TRIGGER `beli_barang` AFTER INSERT ON `beli` FOR EACH ROW BEGIN
	INSERT INTO stok SET
    kd_barang = NEW.kd_barang,
    jumlah= NEW.jumlah
    ON duplicate KEY UPDATE jumlah=jumlah+NEW.jumlah;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual`
--

CREATE TABLE `jual` (
  `id_jual` int(11) NOT NULL,
  `kd_pelanggan` varchar(10) DEFAULT NULL,
  `kd_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(20) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jual`
--

INSERT INTO `jual` (`id_jual`, `kd_pelanggan`, `kd_barang`, `nama_barang`, `jumlah`) VALUES
(4, 'dvn11', 'B001', 'gucci', 2);

--
-- Trigger `jual`
--
DELIMITER $$
CREATE TRIGGER `jual_barang` AFTER INSERT ON `jual` FOR EACH ROW BEGIN
INSERT INTO stok SET 
kd_barang=new.kd_barang, jumlah=new.jumlah
ON DUPLICATE KEY UPDATE jumlah=jumlah-new.jumlah;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `kd_barang` varchar(5) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`kd_barang`, `jumlah`) VALUES
('B001', 8),
('B002', 10),
('B003', 15),
('B004', 10),
('B005', 9);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beli`
--
ALTER TABLE `beli`
  ADD PRIMARY KEY (`id_beli`);

--
-- Indeks untuk tabel `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`id_jual`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`kd_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beli`
--
ALTER TABLE `beli`
  MODIFY `id_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jual`
--
ALTER TABLE `jual`
  MODIFY `id_jual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `user`
--
CREATE DATABASE IF NOT EXISTS `user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_detail`
--

CREATE TABLE `level_detail` (
  `id_level` tinyint(4) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `level_detail`
--

INSERT INTO `level_detail` (`id_level`, `level`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sample_jual`
--

CREATE TABLE `sample_jual` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jml_jual` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sample_jual`
--

INSERT INTO `sample_jual` (`id`, `id_user`, `jml_jual`) VALUES
(1, 13, '30.00'),
(2, 16, '21.00'),
(3, 1, '55.00'),
(4, 19, '17.00'),
(5, 17, '32.00'),
(6, 18, '40.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `level` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `user_email`, `user_password`, `user_fullname`, `level`) VALUES
(1, 'admin@mail.com', '123', 'Halobarak Kususu', 1),
(13, 'api@mail.com', '1234', 'Apalo', 2),
(16, 'dafanana@mail.com', '123', 'nana', 2),
(17, 'user@mail.com', '12345', 'user', 2),
(18, 'daveseijuro07@gmail.com', '123456789', 'davin', 2),
(19, 'alana@gmail.com', '123456789', 'Alana', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `level_detail`
--
ALTER TABLE `level_detail`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `sample_jual`
--
ALTER TABLE `sample_jual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sample_jual`
--
ALTER TABLE `sample_jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `sample_jual`
--
ALTER TABLE `sample_jual`
  ADD CONSTRAINT `sample_jual_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user_detail` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD CONSTRAINT `user_detail_ibfk_1` FOREIGN KEY (`level`) REFERENCES `level_detail` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
