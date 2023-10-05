-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2023 at 10:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edutech_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_question` int(11) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_question`, `jawaban`, `createdAt`, `updatedAt`) VALUES
(1, 5, 'Tidak ada perbedaan spesifik kedua tag tersebut mengartikan untuk menandakan sebuah section', '2023-09-25 13:29:10', '2023-09-25 13:29:10'),
(2, 1, 'Kira kira 10 an juta kak', '2023-09-25 16:28:49', '2023-09-25 16:28:49'),
(3, 1, 'Pengalaman saya sih 15 an juta sih kak', '2023-09-25 16:29:19', '2023-09-25 16:29:19'),
(4, 2, 'Pengalaman saya sih 8 an juta sih kak', '2023-09-25 17:16:00', '2023-09-25 17:16:00'),
(5, 2, 'Pengalaman saya di Jakarta sih sampe 16 an juta sih kak', '2023-09-25 17:16:46', '2023-09-25 17:16:46'),
(6, 7, 'Caranya ketik npm i express di terminal', '2023-09-26 17:54:07', '2023-09-26 17:54:07'),
(7, 6, 'Baku hantam aja kita', '2023-09-26 18:01:34', '2023-09-26 18:01:34'),
(11, 13, 'Karena kamu gojo', '2023-09-26 18:38:44', '2023-09-26 18:38:44'),
(13, 14, 'Kyubi', '2023-09-26 18:40:35', '2023-09-26 18:40:35'),
(15, NULL, 'Sarada bukan', '2023-09-26 18:45:10', '2023-09-26 18:45:10'),
(34, NULL, 'Dengar dengar 20 juta kak', '2023-09-27 13:04:42', '2023-09-27 13:04:42'),
(36, NULL, 'Saya mendapatkan 25 juta kak per bulan', '2023-09-27 13:14:27', '2023-09-27 13:14:27'),
(38, NULL, 'Ngetest website yang sudah jadi', '2023-09-27 13:16:13', '2023-09-27 13:16:13'),
(42, NULL, 'Gunakan tagline form saja kak', '2023-09-27 13:19:21', '2023-09-27 13:19:21'),
(46, NULL, 'Ngasal aja kak', '2023-09-27 13:26:37', '2023-09-27 13:26:37'),
(48, 8, 'Baku hantam aja kita disini', '2023-09-27 13:30:43', '2023-09-27 13:30:43'),
(49, NULL, 'G ush jd backend', '2023-09-27 13:35:19', '2023-09-27 13:35:19'),
(51, NULL, 'ES5 jadul, ES6 modern\nmaaf kalau salah', '2023-09-27 13:36:19', '2023-09-27 13:36:19'),
(53, NULL, 'oh', '2023-09-27 13:44:58', '2023-09-27 13:44:58'),
(55, NULL, 'YNTNKNS', '2023-09-27 14:01:01', '2023-09-27 14:01:01'),
(57, NULL, 'Sendiri aja bro', '2023-09-27 14:03:45', '2023-09-27 14:03:45'),
(59, NULL, 'y', '2023-09-27 14:13:42', '2023-09-27 14:13:42'),
(61, 10, 'Baku hantam aja ', '2023-09-27 14:14:11', '2023-09-27 14:14:11'),
(62, NULL, 'Ga kenal\n', '2023-09-30 10:43:32', '2023-09-30 10:43:32'),
(65, NULL, 'ga ada ga jadi', '2023-10-01 15:07:52', '2023-10-01 15:07:52'),
(67, NULL, NULL, '2023-10-01 15:10:54', '2023-10-01 15:10:54'),
(68, 1, 'Tidur ', '2023-10-01 15:12:38', '2023-10-01 15:12:38'),
(69, 1, 'Tidur ', '2023-10-01 15:15:16', '2023-10-01 15:15:16'),
(70, NULL, 'Mimpi', '2023-10-01 15:21:46', '2023-10-01 15:21:46'),
(72, NULL, 'Apa yaaa\n', '2023-10-01 16:43:33', '2023-10-01 16:43:33'),
(78, NULL, 'Ga digaji', '2023-10-01 17:58:27', '2023-10-01 17:58:27'),
(82, 1, 'Kecil', '2023-10-02 14:31:16', '2023-10-02 14:31:16'),
(83, NULL, 'Chatgpt', '2023-10-03 12:36:58', '2023-10-03 12:36:58'),
(88, NULL, 'Ga ada\n', '2023-10-03 12:49:53', '2023-10-03 12:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `tanya`
--

CREATE TABLE `tanya` (
  `id_question` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanya`
--

INSERT INTO `tanya` (`id_question`, `name`, `pertanyaan`, `createdAt`, `updatedAt`) VALUES
(1, 'Sam', 'Berapa sih gaji Full Stack Developer?', '2023-09-25 07:34:35', '2023-09-25 07:34:35'),
(2, 'Samuel', 'Berapa sih gaji FrontEnd Developer?', '2023-09-25 08:01:24', '2023-09-25 08:01:24'),
(3, 'Raka', 'Berapa sih gaji BackEnd Developer?', '2023-09-25 08:15:59', '2023-09-25 08:15:59'),
(4, 'Anto', 'Cara membuat form di html dan css?', '2023-09-25 08:16:42', '2023-09-25 08:16:42'),
(5, 'Keke', 'Apa perbedaan antara div dan section?', '2023-09-25 12:51:36', '2023-09-25 12:51:36'),
(6, 'Yanti', 'Apa ya kak?', '2023-09-25 16:21:16', '2023-09-25 16:21:16'),
(7, 'Jovis', 'Gimana cara menginstall express js kak?', '2023-09-26 14:14:15', '2023-09-26 14:14:15'),
(8, 'Shavina', 'Tugasnya FrontEnd itu apa saja sih kak?', '2023-09-26 14:15:17', '2023-09-26 14:15:17'),
(9, 'Aulia', 'Tugas Backend itu apa sih kak?', '2023-09-26 14:15:17', '2023-09-26 14:15:17'),
(10, 'Keke', 'Tugasnya Quality Assurance itu apa sih kak?', '2023-09-26 14:22:57', '2023-09-26 14:22:57'),
(11, 'Yudha', 'Berapa orang anggota untuk membentuk kelompok project it?', '2023-09-26 14:22:57', '2023-09-26 14:22:57'),
(12, 'Amanda', 'Apa sih bedanya ES5 dan ES6?', '2023-09-26 14:24:17', '2023-09-26 14:24:17'),
(13, 'Gojo', 'Kenapa Saya Mati?', '2023-09-26 14:52:24', '2023-09-26 14:52:24'),
(14, 'Naruto', 'Siapa Nama Bijju saya?', '2023-09-26 15:15:55', '2023-09-26 15:15:55'),
(15, 'Sasuke', 'Siapa nama anak saya?', '2023-09-26 15:17:55', '2023-09-26 15:17:55'),
(16, 'Aldi Taher', 'Kenapa semua orang bingun?', '2023-09-26 15:23:35', '2023-09-26 15:23:35'),
(17, NULL, NULL, '2023-09-27 14:22:43', '2023-09-27 14:22:43'),
(18, NULL, NULL, '2023-09-27 14:22:43', '2023-09-27 14:22:43'),
(19, 'Kim Joong Un', 'Nanya apa', '2023-09-30 10:55:00', '2023-09-30 10:55:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_question` (`id_question`);

--
-- Indexes for table `tanya`
--
ALTER TABLE `tanya`
  ADD PRIMARY KEY (`id_question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tanya`
--
ALTER TABLE `tanya`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `tanya` (`id_question`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
