-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 02:43 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'galeri1630509922.jpg', 'Kegiatan Belajar Mengajar', '2021-09-01 15:25:22', NULL),
(2, 'galeri1630510007.jpg', 'Lomba Mekanik Nasional', '2021-09-01 15:26:47', NULL),
(3, 'galeri1630510415.jpg', 'Acara Wisuda Angkatan 2012', '2021-09-01 15:33:35', NULL),
(4, 'galeri1630510443.jpg', 'Foto Bersama TOSM1', '2021-09-01 15:34:03', NULL),
(5, 'galeri1630510466.jpg', 'Berani Kotor Itu Baik', '2021-09-01 15:34:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Pengumuman Tanggal 1 September Dibagi Raport', '<p>untuk para siswa/i harap hadir dalam cara pembagian raport, jangan lupa membawa orang tua atau wali masing-masing</p>', 'informasi1630510538.jpg', '2021-09-01 15:35:38', '2021-09-01 22:40:26', 2),
(2, 'PPDB Akan Dibuka Pada Tanggal 2 September 2021', '<p>Penerimaan Peserta Didik Baru akan dibuka pada tanggal 2 September 2021, bagi calon siswa yang akan mendaftar, silahkan datang ke sekolah pada tanggal yang telah ditentukan.</p>', 'informasi1630510959.jpg', '2021-09-01 15:42:39', NULL, 2),
(3, 'Persyaratan PPDB', '<p>Silahkan membawa persyaratan PPDB pada saat mendaftar<br />1. Alat tulis<br />2. Uang saku</p>', 'informasi1630511107.jpg', '2021-09-01 15:45:07', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Audio Video', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509461.jpg', '2021-09-01 15:17:41', '2021-09-01 22:20:13'),
(2, 'Teknik Instalasi Listrik', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509492.jpg', '2021-09-01 15:18:12', '2021-09-01 22:20:07'),
(3, 'Teknik Otomotif Kendaraan Ringan', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509515.jpeg', '2021-09-01 15:18:35', '2021-09-01 22:20:01'),
(4, 'Teknik Otomotif Sepeda Motor', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509536.jpg', '2021-09-01 15:18:56', '2021-09-01 22:19:53'),
(5, 'Teknik Pengelasan', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'jurusan1630509549.jpg', '2021-09-01 15:19:09', '2021-09-01 22:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_sekolah`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'SMKN Indonesia Raya', 'smknindonesiaraya@gmail.com', '012345678911', 'Jl. Raya Merdeka No. 17, Indonesia Raya Merdeka 45.', 'logo1630507846.png', 'favicon1630507846.png', '<p style=\"text-align: center;\"><strong>TENTANG</strong></p>\r\n<p style=\"text-align: center;\">Web sekolah ini didirikan pada tahun 2021 dengan penuh kegembiraan dan semangat yang membara. Web sekolah ini berlokasi di jalur internet dengan posisi yang sangat strategis.</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong>Visi Misi</strong></p>\r\n<p style=\"text-align: center;\">Menjadikan media informasi seperti youtube sebagai sarana untuk berbagi ilmu dan pengalaman tanpa batasan tempat dan waktu, sehingga dapat dimanfaatkan dengan baik oleh para pencari ilmu.</p>', 'sekolah1631119997.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d507096.96985692694!2d107.94752152881276!3d-6.806897416794635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6f28b23fb20643%3A0x301e8f1fc28b910!2sKabupaten%20Majalengka%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1633012062374!5m2!1sid!2sid', 'Dzulfikar Nurfikri S.Ss', 'kepsek1630508274.png', '<p>Selamat datang para pencari inspirasi, semoga kalian sehat semua ya. Semangat terus dalam menuntut ilmu, jangan pernah bosan ya, kelak ilmu yang kamu pelajari hari ini, akan bermanfaat di masa yang akan datang, semoga hari-harimu selalu bahagia.</p>', '2021-08-14 15:24:49', '2021-09-30 21:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Dzulfikar F', 'sa', 'e807f1fcf82d132f9bb018ca6738a19f', 'Super Admin', '2021-07-17 06:25:30', '2021-09-01 21:49:21'),
(2, 'Putri P', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2021-07-17 06:25:30', '2021-09-01 21:49:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
