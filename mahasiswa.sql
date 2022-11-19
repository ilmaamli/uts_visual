-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2022 pada 10.50
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mhs`
--

CREATE TABLE `data_mhs` (
  `id_mhs` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `prodi` varchar(35) NOT NULL,
  `fakultas` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_mhs`
--

INSERT INTO `data_mhs` (`id_mhs`, `nim`, `nama`, `prodi`, `fakultas`) VALUES
(2, 'C2083207016', 'Ilma Amalia', 'Pendidikan Teknologi Informasi', 'FKIP'),
(3, 'C2083207001', 'Safira Salsabilla', 'Pendidikan Teknologi Informasi', 'FKIP'),
(4, 'C2083207011', 'Mohammad Fadillah', 'Pendidikan Teknologi Informasi', 'FKIP'),
(5, 'ccc', 'ccc', 'cc', 'ccc'),
(6, 'ddd', 'ddd', 'ddd', 'ddd'),
(7, 'C2083207018', 'Shofia Amani', 'Pendidikan Teknologi Informasi', 'FKIP');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_mhs`
--
ALTER TABLE `data_mhs`
  ADD PRIMARY KEY (`id_mhs`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_mhs`
--
ALTER TABLE `data_mhs`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
