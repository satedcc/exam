-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2023 at 08:43 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `ex_batch`
--

CREATE TABLE `ex_batch` (
  `id_batch` int NOT NULL,
  `id_jadwal` int NOT NULL,
  `nama_batch` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ex_detail_batch`
--

CREATE TABLE `ex_detail_batch` (
  `id` int NOT NULL,
  `id_bacth` int NOT NULL,
  `id_regis` int NOT NULL,
  `created_by` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ex_detail_jadwal`
--

CREATE TABLE `ex_detail_jadwal` (
  `id_detail_jadwal` int NOT NULL,
  `id_regis` int NOT NULL,
  `id_jadwal` int NOT NULL,
  `status_partisipant` enum('Y','N') NOT NULL,
  `created_by` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_detail_jadwal`
--

INSERT INTO `ex_detail_jadwal` (`id_detail_jadwal`, `id_regis`, `id_jadwal`, `status_partisipant`, `created_by`, `created_date`, `id_user`) VALUES
(1, 100, 1, 'N', 9, '2022-11-30 00:05:44', 9),
(2, 106, 1, 'Y', 9, '2022-11-30 00:05:44', 9),
(3, 100, 2, 'Y', 9, '2022-11-30 00:06:26', 9),
(4, 106, 2, 'Y', 9, '2022-11-30 00:06:26', 9),
(5, 100, 3, 'Y', 9, '2022-11-30 01:00:45', 9),
(6, 106, 3, 'Y', 9, '2022-11-30 01:00:45', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ex_detail_soal`
--

CREATE TABLE `ex_detail_soal` (
  `id_detail` int NOT NULL,
  `id_ujian` int NOT NULL,
  `id_soal` int NOT NULL,
  `created_by` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_detail_soal`
--

INSERT INTO `ex_detail_soal` (`id_detail`, `id_ujian`, `id_soal`, `created_by`, `created_date`) VALUES
(1, 1, 15, 1, '2022-10-28 05:00:29'),
(2, 1, 14, 1, '2022-10-28 05:00:29'),
(3, 1, 9, 1, '2022-10-28 05:00:29'),
(4, 1, 8, 1, '2022-10-28 05:00:29'),
(5, 1, 4, 1, '2022-10-28 05:00:29'),
(6, 1, 3, 1, '2022-10-28 05:00:29'),
(7, 1, 55, 1, '2022-10-28 05:00:29'),
(8, 1, 58, 1, '2022-10-28 05:00:29'),
(9, 1, 60, 1, '2022-10-28 05:00:29'),
(10, 1, 54, 1, '2022-10-28 05:00:29'),
(11, 1, 48, 1, '2022-10-28 05:00:29'),
(12, 1, 41, 1, '2022-10-28 05:00:29'),
(13, 1, 35, 1, '2022-10-28 05:00:29'),
(14, 1, 29, 1, '2022-10-28 05:00:29'),
(15, 1, 23, 1, '2022-10-28 05:00:29'),
(16, 1, 11, 1, '2022-10-28 05:00:29'),
(17, 1, 6, 1, '2022-10-28 05:00:29'),
(18, 1, 53, 1, '2022-10-28 05:00:29'),
(19, 1, 47, 1, '2022-10-28 05:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `ex_history_login`
--

CREATE TABLE `ex_history_login` (
  `id_history` int NOT NULL,
  `id_regis` int NOT NULL,
  `time_login` timestamp NOT NULL,
  `status_login` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_history_login`
--

INSERT INTO `ex_history_login` (`id_history`, `id_regis`, `time_login`, `status_login`) VALUES
(1, 100, '2022-10-05 00:57:33', 'success'),
(2, 100, '2022-10-05 02:30:00', 'success'),
(3, 100, '2022-10-05 03:22:11', 'success'),
(4, 100, '2022-10-05 05:32:44', 'success'),
(5, 100, '2022-10-05 23:01:52', 'success'),
(6, 100, '2022-10-05 23:08:26', 'success'),
(7, 100, '2022-10-10 00:59:06', 'success'),
(8, 100, '2022-10-10 01:11:28', 'success'),
(9, 100, '2022-10-10 01:12:35', 'success'),
(10, 100, '2022-10-10 01:13:47', 'success'),
(11, 100, '2022-10-10 01:15:31', 'success'),
(12, 100, '2022-10-10 01:16:59', 'success'),
(13, 100, '2022-10-10 01:18:22', 'success'),
(14, 100, '2022-10-10 01:19:28', 'success'),
(15, 100, '2022-10-10 02:10:01', 'success'),
(16, 100, '2022-10-10 07:23:13', 'success'),
(17, 100, '2022-10-10 08:43:03', 'success'),
(18, 100, '2022-10-11 05:01:44', 'success'),
(19, 100, '2022-10-19 06:41:58', 'failid'),
(20, 100, '2022-10-19 06:42:04', 'success'),
(21, 100, '2022-10-19 07:18:44', 'success'),
(22, 100, '2022-10-19 09:28:09', 'success'),
(23, 100, '2022-10-20 08:37:04', 'success'),
(24, 100, '2022-10-21 08:38:44', 'success'),
(25, 100, '2022-10-21 08:49:48', 'success'),
(26, 100, '2022-10-24 01:10:12', 'success'),
(27, 100, '2022-10-24 01:44:49', 'success'),
(28, 100, '2022-10-24 02:00:05', 'success'),
(29, 100, '2022-10-24 02:11:45', 'success'),
(30, 100, '2022-10-24 02:20:47', 'success'),
(31, 100, '2022-10-24 02:21:19', 'success'),
(32, 100, '2022-10-24 02:36:51', 'success'),
(33, 100, '2022-10-24 02:38:18', 'success'),
(34, 100, '2022-10-24 02:46:02', 'success'),
(35, 100, '2022-10-24 02:49:31', 'success'),
(36, 100, '2022-10-25 02:22:12', 'success'),
(37, 100, '2022-10-25 21:34:16', 'success'),
(38, 100, '2022-10-26 00:05:13', 'success'),
(39, 100, '2022-10-26 00:05:38', 'success'),
(40, 100, '2022-10-26 00:16:52', 'success'),
(41, 100, '2022-10-26 00:37:40', 'success'),
(42, 100, '2022-10-26 08:04:54', 'success'),
(43, 100, '2022-10-26 08:08:08', 'success'),
(44, 100, '2022-10-26 09:20:07', 'success'),
(45, 100, '2022-10-27 00:10:36', 'success'),
(46, 100, '2022-10-27 00:11:45', 'success'),
(47, 100, '2022-10-27 00:13:07', 'success'),
(48, 100, '2022-10-27 06:34:51', 'success'),
(49, 100, '2022-10-27 07:23:51', 'success'),
(50, 100, '2022-10-27 07:34:28', 'success'),
(51, 100, '2022-10-27 07:45:58', 'success'),
(52, 100, '2022-10-28 04:07:17', 'failid'),
(53, 100, '2022-10-28 04:07:24', 'success'),
(54, 100, '2022-10-28 04:08:27', 'success'),
(55, 100, '2022-10-30 23:40:46', 'success'),
(56, 100, '2022-10-31 00:13:15', 'success'),
(57, 100, '2022-10-31 00:15:15', 'success'),
(58, 100, '2022-10-31 19:46:24', 'success'),
(59, 100, '2022-10-31 20:50:22', 'success'),
(60, 100, '2022-10-31 20:53:50', 'success'),
(61, 100, '2022-10-31 20:55:39', 'success'),
(62, 100, '2022-10-31 23:36:51', 'success'),
(63, 100, '2022-11-01 02:44:24', 'success'),
(64, 100, '2022-11-01 02:50:57', 'success'),
(65, 100, '2022-11-01 07:06:35', 'success'),
(66, 100, '2022-11-01 23:20:10', 'success'),
(67, 100, '2022-11-01 23:40:49', 'success'),
(68, 100, '2022-11-01 23:43:54', 'success'),
(69, 100, '2022-11-01 23:45:15', 'success'),
(70, 100, '2022-11-02 00:04:30', 'success'),
(71, 100, '2022-11-02 01:47:02', 'success'),
(72, 100, '2022-11-02 01:49:34', 'success'),
(73, 100, '2022-11-02 01:50:05', 'success'),
(74, 100, '2022-11-02 01:52:51', 'success'),
(75, 100, '2022-11-02 01:56:32', 'success'),
(76, 100, '2022-11-02 01:57:13', 'success'),
(77, 100, '2022-11-02 01:58:27', 'success'),
(78, 100, '2022-11-02 02:00:38', 'success'),
(79, 100, '2022-11-02 02:03:03', 'success'),
(80, 100, '2022-11-02 02:03:57', 'success'),
(81, 100, '2022-11-02 02:05:55', 'success'),
(82, 100, '2022-11-02 02:07:12', 'success'),
(83, 100, '2022-11-02 02:07:59', 'success'),
(84, 100, '2022-11-02 02:10:04', 'success'),
(85, 100, '2022-11-02 02:12:03', 'success'),
(86, 100, '2022-11-02 02:31:08', 'success'),
(87, 100, '2022-11-02 02:37:15', 'success'),
(88, 100, '2022-11-02 03:00:10', 'success'),
(89, 100, '2022-11-02 03:12:40', 'success'),
(90, 100, '2022-11-02 03:12:56', 'success'),
(91, 100, '2022-11-02 03:32:55', 'success'),
(92, 100, '2022-11-02 03:33:29', 'success'),
(93, 100, '2022-11-02 03:36:17', 'success'),
(94, 100, '2022-11-02 03:37:39', 'success'),
(95, 100, '2022-11-02 03:38:31', 'success'),
(96, 100, '2022-11-02 03:38:52', 'success'),
(97, 100, '2022-11-02 03:39:40', 'success'),
(98, 100, '2022-11-02 03:40:25', 'success'),
(99, 100, '2022-11-02 03:41:26', 'success'),
(100, 100, '2022-11-02 03:42:02', 'success'),
(101, 100, '2022-11-02 03:48:49', 'success'),
(102, 100, '2022-11-02 03:49:25', 'success'),
(103, 100, '2022-11-02 03:50:00', 'success'),
(104, 100, '2022-11-02 03:50:38', 'success'),
(105, 100, '2022-11-02 03:51:04', 'success'),
(106, 100, '2022-11-02 03:53:32', 'success'),
(107, 100, '2022-11-02 03:54:34', 'success'),
(108, 100, '2022-11-02 03:55:33', 'success'),
(109, 100, '2022-11-02 03:55:57', 'success'),
(110, 100, '2022-11-02 03:56:33', 'success'),
(111, 100, '2022-11-02 03:59:44', 'success'),
(112, 100, '2022-11-02 04:19:27', 'success'),
(113, 100, '2022-11-02 04:21:25', 'success'),
(114, 100, '2022-11-02 04:26:09', 'success'),
(115, 100, '2022-11-02 04:27:20', 'success'),
(116, 100, '2022-11-02 04:28:52', 'success'),
(117, 100, '2022-11-02 04:29:40', 'success'),
(118, 100, '2022-11-02 04:30:05', 'success'),
(119, 100, '2022-11-02 04:30:25', 'success'),
(120, 100, '2022-11-02 04:35:54', 'success'),
(121, 100, '2022-11-02 04:36:56', 'success'),
(122, 100, '2022-11-02 04:37:34', 'success'),
(123, 100, '2022-11-02 04:39:33', 'success'),
(124, 100, '2022-11-02 04:41:50', 'success'),
(125, 100, '2022-11-02 04:42:46', 'success'),
(126, 100, '2022-11-07 13:26:24', 'success'),
(127, 100, '2022-11-08 00:12:02', 'success'),
(128, 100, '2022-11-08 00:15:11', 'success'),
(129, 100, '2022-11-08 00:36:25', 'success'),
(130, 100, '2022-11-08 00:37:01', 'success'),
(131, 100, '2022-11-08 00:39:47', 'success'),
(132, 100, '2022-11-09 23:40:24', 'success'),
(133, 100, '2022-11-25 05:35:21', 'success'),
(134, 100, '2022-11-25 05:37:18', 'success'),
(135, 100, '2022-11-29 23:06:35', 'success'),
(136, 100, '2022-11-30 00:00:52', 'success'),
(137, 100, '2022-11-30 01:54:33', 'success'),
(138, 100, '2022-11-30 07:04:52', 'success'),
(139, 100, '2022-12-02 00:01:13', 'success'),
(140, 100, '2022-12-09 01:20:23', 'success'),
(141, 100, '2022-12-12 00:27:38', 'success'),
(142, 100, '2022-12-13 02:40:00', 'success'),
(143, 100, '2022-12-29 23:18:33', 'success'),
(144, 100, '2023-01-03 06:08:17', 'success'),
(145, 100, '2023-01-03 06:26:19', 'success'),
(146, 100, '2023-01-03 10:30:50', 'success'),
(147, 100, '2023-01-03 18:35:35', 'success'),
(148, 100, '2023-01-16 11:29:04', 'success'),
(149, 100, '2023-01-26 00:57:52', 'success'),
(150, 100, '2023-02-12 05:19:59', 'success'),
(151, 100, '2023-02-13 23:19:11', 'success'),
(152, 100, '2023-02-15 12:30:17', 'success'),
(153, 100, '2023-02-15 12:40:48', 'success'),
(154, 100, '2023-02-15 12:44:44', 'success'),
(155, 100, '2023-02-15 12:53:08', 'success'),
(156, 100, '2023-02-15 12:53:47', 'success'),
(157, 100, '2023-02-15 13:40:12', 'success'),
(158, 100, '2023-02-22 07:45:39', 'success'),
(159, 100, '2023-05-01 00:43:33', 'success'),
(160, 100, '2023-06-25 05:39:26', 'failid'),
(161, 100, '2023-06-25 05:39:31', 'success'),
(162, 100, '2023-06-27 00:47:08', 'disabled'),
(163, 100, '2023-06-27 00:47:13', 'disabled'),
(164, 100, '2023-06-27 00:54:07', 'disabled'),
(165, 100, '2023-06-27 00:55:38', 'disabled'),
(166, 100, '2023-06-27 00:55:45', 'disabled'),
(167, 100, '2023-06-27 00:56:06', 'disabled'),
(168, 100, '2023-06-27 00:56:10', 'disabled'),
(169, 100, '2023-06-27 00:56:38', 'disabled'),
(170, 100, '2023-06-27 00:56:42', 'disabled'),
(171, 100, '2023-06-27 00:57:02', 'disabled'),
(172, 100, '2023-06-27 00:57:52', 'failid'),
(173, 100, '2023-06-27 00:57:56', 'failid'),
(174, 100, '2023-06-27 00:58:19', 'failid'),
(175, 100, '2023-06-27 00:58:23', 'failid'),
(176, 100, '2023-06-27 00:58:29', 'failid'),
(177, 100, '2023-06-27 00:59:00', 'failid'),
(178, 100, '2023-06-27 00:59:06', 'failid'),
(179, 100, '2023-06-27 00:59:27', 'failid'),
(180, 100, '2023-06-27 00:59:32', 'success'),
(181, 100, '2023-06-27 01:18:04', 'success'),
(182, 100, '2023-07-04 23:43:35', 'disabled'),
(183, 100, '2023-07-04 23:43:41', 'disabled'),
(184, 100, '2023-07-04 23:44:13', 'disabled'),
(185, 100, '2023-07-04 23:44:28', 'disabled'),
(186, 100, '2023-07-04 23:45:13', 'disabled'),
(187, 100, '2023-07-04 23:45:21', 'disabled'),
(188, 100, '2023-07-04 23:47:40', 'failid'),
(189, 100, '2023-07-04 23:47:48', 'failid'),
(190, 100, '2023-07-04 23:48:36', 'success'),
(191, 333, '2023-07-06 01:56:11', 'success'),
(192, 100, '2023-07-06 02:56:18', 'success'),
(193, 100, '2023-07-06 03:07:08', 'success'),
(194, 100, '2023-07-06 03:08:44', 'success'),
(195, 100, '2023-07-06 03:09:38', 'success'),
(196, 100, '2023-07-06 06:44:02', 'success'),
(197, 100, '2023-07-06 06:45:20', 'success'),
(198, 100, '2023-07-06 09:36:15', 'success'),
(199, 100, '2023-07-07 09:48:35', 'success'),
(200, 100, '2023-07-07 09:51:55', 'success'),
(201, 100, '2023-07-07 09:52:00', 'success'),
(202, 100, '2023-07-07 09:58:32', 'success'),
(203, 100, '2023-07-07 09:59:16', 'success'),
(204, 100, '2023-07-07 10:08:37', 'success'),
(205, 100, '2023-07-07 10:09:13', 'success'),
(206, 100, '2023-07-07 10:11:04', 'success'),
(207, 100, '2023-07-07 10:11:44', 'success'),
(208, 100, '2023-07-07 10:13:33', 'success'),
(209, 100, '2023-07-07 10:14:38', 'success'),
(210, 100, '2023-07-07 10:15:14', 'success'),
(211, 100, '2023-07-07 10:21:47', 'success'),
(212, 100, '2023-07-07 13:17:19', 'success'),
(213, 100, '2023-07-07 13:21:00', 'success'),
(214, 100, '2023-07-07 13:33:15', 'success'),
(215, 100, '2023-07-07 13:33:58', 'success'),
(216, 100, '2023-07-07 13:34:54', 'success'),
(217, 100, '2023-07-07 13:47:52', 'success'),
(218, 100, '2023-07-07 13:48:36', 'success'),
(219, 100, '2023-07-07 13:53:00', 'success'),
(220, 100, '2023-07-08 04:50:39', 'success'),
(221, 100, '2023-07-08 04:53:29', 'success'),
(222, 100, '2023-07-08 04:53:47', 'success'),
(223, 100, '2023-07-08 04:54:31', 'success'),
(224, 100, '2023-07-08 04:55:11', 'failid'),
(225, 100, '2023-07-08 04:55:15', 'success'),
(226, 100, '2023-07-10 23:57:34', 'disabled'),
(227, 100, '2023-07-12 00:34:05', 'disabled'),
(228, 100, '2023-07-11 17:34:21', 'activate'),
(229, 100, '2023-07-18 01:58:22', 'failid'),
(230, 100, '2023-07-18 01:58:28', 'success'),
(231, 100, '2023-07-18 02:03:34', 'success'),
(232, 334, '2023-07-18 02:24:04', 'success'),
(233, 100, '2023-07-18 02:28:22', 'success'),
(234, 334, '2023-07-18 02:28:57', 'success'),
(235, 100, '2023-07-18 02:29:23', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `ex_informasi`
--

CREATE TABLE `ex_informasi` (
  `id_info` int NOT NULL,
  `title_info` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `status_info` varchar(10) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_informasi`
--

INSERT INTO `ex_informasi` (`id_info`, `title_info`, `deskripsi`, `status_info`, `created_date`, `id_user`) VALUES
(1, 'INFORMASI', '<p>Sebelum memulai mengerjakan exam yang telah di sediakan oleh panitia, mohon untuk memperhatikan beberapa point berikut:</p>\r\n\r\n<ol>\r\n	<li>Tidak di perkanankan melakukan kegiatan selain mengerjakan soal</li>\r\n	<li>Tidak di perkenankan membuka tab/window baru</li>\r\n	<li>Posisi camera webcam dalam posisi aktif</li>\r\n	<li>Tidak menekan tombol Escape (ESC) pada keyboard</li>\r\n	<li>Tidak di perkenanankan meninggalkan laptop di saat ujian telah di mulai</li>\r\n	<li>Tidak di perkanankan melakukan kegiatan selain mengerjakan soal</li>\r\n	<li>Tidak di perkenankan membuka tab/window baru</li>\r\n	<li>Posisi camera webcam dalam posisi aktif</li>\r\n	<li>Tidak menekan tombol Escape (ESC) pada keyboard</li>\r\n	<li>Tidak di perkenanankan meninggalkan laptop di saat ujian telah di mulai</li>\r\n</ol>\r\n\r\n<p>Bagi anda yang melanggar point yang di telah di tetapkan akan langsung di nyatakan&nbsp;<strong>GUGUR</strong>&nbsp;oleh panitia sehingga anda tidak bisa mengikuti rangkaian kegiatan berikutnya</p>\r\n', 'active', '2022-09-13 02:05:54', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ex_jadwal`
--

CREATE TABLE `ex_jadwal` (
  `id_jadwal` int NOT NULL,
  `kode_jadwal` varchar(30) NOT NULL,
  `id_kategori` int NOT NULL,
  `nama_jadwal` varchar(200) NOT NULL,
  `mulai` datetime NOT NULL,
  `selesai` datetime NOT NULL,
  `jumlah_peserta` int NOT NULL,
  `soal_mudah` int NOT NULL COMMENT 'total soal kategori mudah',
  `soal_medium` int NOT NULL COMMENT 'total soal kategori medium',
  `soal_susah` int NOT NULL COMMENT 'total soal kategori susah',
  `nilai_benar` int NOT NULL COMMENT 'nilai benar tiap soal',
  `nilai_salah` int NOT NULL COMMENT 'nilai salah tiap soal',
  `total_ganda` int NOT NULL COMMENT 'total soal untuk pilihan ganda',
  `total_pernyataan` int NOT NULL COMMENT 'total soal untuk pilihan true false',
  `total_essay` int NOT NULL COMMENT 'total soal untuk pilihan essay',
  `record` enum('aktif','disabled') DEFAULT 'disabled',
  `random` enum('Y','N') DEFAULT 'Y',
  `update_date` datetime NOT NULL,
  `jenis_waktu` enum('T','S') NOT NULL,
  `timer` varchar(10) DEFAULT NULL,
  `set_ganda` varchar(10) DEFAULT NULL COMMENT 'set timer second untuk soal mudah',
  `set_benar` varchar(10) DEFAULT NULL COMMENT 'set timer second untuk soal medium',
  `set_esay` varchar(10) DEFAULT NULL COMMENT 'set timer second untuk soal hard',
  `score` int NOT NULL,
  `status_jadwal` enum('actived','disabled') NOT NULL,
  `id_user` int NOT NULL,
  `interval_img` int NOT NULL DEFAULT '5' COMMENT 'set interval waktu untuk capture (dalam detik cth 10,20,30)',
  `durasi` varchar(3) NOT NULL COMMENT 'set interval waktu untuk record video (dalam detik cth 10,20,30)',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_jadwal`
--

INSERT INTO `ex_jadwal` (`id_jadwal`, `kode_jadwal`, `id_kategori`, `nama_jadwal`, `mulai`, `selesai`, `jumlah_peserta`, `soal_mudah`, `soal_medium`, `soal_susah`, `nilai_benar`, `nilai_salah`, `total_ganda`, `total_pernyataan`, `total_essay`, `record`, `random`, `update_date`, `jenis_waktu`, `timer`, `set_ganda`, `set_benar`, `set_esay`, `score`, `status_jadwal`, `id_user`, `interval_img`, `durasi`, `created_date`) VALUES
(1, 'QCT000001', 1, 'Sumulasi Penerimaan QC 1', '2023-01-30 00:00:00', '2024-05-31 00:00:00', 10, 3, 6, 10, 4, 1, 0, 0, 0, 'aktif', 'Y', '2022-12-09 02:20:17', 'T', '00:50', NULL, NULL, NULL, 100, 'actived', 9, 100, '8', '2022-11-30 00:05:39'),
(2, 'QCT000002', 1, 'Simulasi Penerimaan QC 2', '2023-01-30 00:00:00', '2024-05-31 00:00:00', 5, 3, 6, 10, 4, 1, 0, 0, 0, 'aktif', 'N', '2022-12-09 02:20:08', 'T', '03:45', NULL, NULL, NULL, 100, 'actived', 9, 100, '8', '2022-11-30 00:06:21'),
(3, 'QCT000003', 1, 'Simulasi Soal Timer', '2023-01-30 00:00:00', '2024-05-31 00:00:00', 5, 3, 6, 10, 4, 1, 0, 0, 0, 'aktif', 'N', '2022-12-09 02:19:59', 'S', '', '480', '480', '480', 100, 'actived', 9, 100, '8', '2022-11-30 01:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `ex_jawaban`
--

CREATE TABLE `ex_jawaban` (
  `id_jawab` int NOT NULL,
  `token_id` text NOT NULL,
  `id_regis` int NOT NULL,
  `id_jadwal` int NOT NULL,
  `id_soal` int NOT NULL,
  `jawaban` text,
  `status_jawaban` varchar(10) DEFAULT '',
  `time` varchar(10) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_jawaban`
--

INSERT INTO `ex_jawaban` (`id_jawab`, `token_id`, `id_regis`, `id_jadwal`, `id_soal`, `jawaban`, `status_jawaban`, `time`, `created_date`) VALUES
(1, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 55, 'B', 'N', '0:49:56', '2023-07-18 03:30:41'),
(2, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 60, 'asdsad', 'false', '0:49:53', '2023-07-18 03:30:41'),
(3, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 58, 'sad', 'true', '0:49:51', '2023-07-18 03:30:41'),
(4, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 9, 'B', 'N', '0:49:50', '2023-07-18 03:30:41'),
(5, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 15, 'A', 'N', '0:49:48', '2023-07-18 03:30:41'),
(6, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 3, 'B', 'N', '0:49:47', '2023-07-18 03:30:41'),
(7, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 14, 'B', 'N', '0:49:47', '2023-07-18 03:30:41'),
(8, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 8, 'B', 'N', '0:49:46', '2023-07-18 03:30:41'),
(9, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 4, 'B', 'N', '0:49:45', '2023-07-18 03:30:41'),
(10, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 53, 'asdasd', 'false', '0:49:43', '2023-07-18 03:30:41'),
(11, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 35, 'asdasd', 'false', '0:49:42', '2023-07-18 03:30:41'),
(12, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 54, 'asdasd', 'true', '0:49:41', '2023-07-18 03:30:41'),
(13, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 48, 'asdasd', 'true', '0:49:39', '2023-07-18 03:30:41'),
(14, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 47, 'asdasd', 'true', '0:49:37', '2023-07-18 03:30:41'),
(15, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 41, 'asdasd', 'false', '0:49:36', '2023-07-18 03:30:41'),
(16, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 11, 'asdasd', 'true', '0:49:35', '2023-07-18 03:30:41'),
(17, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 29, 'asdasd', 'false', '0:49:33', '2023-07-18 03:30:41'),
(18, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 23, 'asd', 'true', '0:49:32', '2023-07-18 03:30:41'),
(19, 'u9UoavJiwb5wZdSIifwuGUpeFktIiwXNGNRUlCvg', 100, 1, 6, 'asd', 'true', '0:49:31', '2023-07-18 03:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `ex_log_email`
--

CREATE TABLE `ex_log_email` (
  `id_log` int NOT NULL,
  `email_log` varchar(100) NOT NULL,
  `log_name` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email_send` enum('Yes','No','Fail') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_log_email`
--

INSERT INTO `ex_log_email` (`id_log`, `email_log`, `log_name`, `status`, `email_send`, `created_date`) VALUES
(4, 'satedcc@gmail.com', 'Registered Successfully', 'Success', 'Yes', '2022-10-04 17:56:21'),
(5, 'satedcc@gmail.com', 'Validation OTP fail', 'fail', 'No', '2022-10-04 17:56:43'),
(6, 'satedcc@gmail.com', 'Validation OTP fail', 'fail', 'No', '2022-10-04 17:56:47'),
(7, 'satedcc@gmail.com', 'Validation OTP Success', 'Success', 'Yes', '2022-10-04 17:57:22'),
(8, 'satedcc@gmail.com', 'Email has been registered', 'Fail', 'No', '2022-10-31 18:40:59'),
(9, 'satedcc@gmail.com', 'Email has been registered', 'Fail', 'No', '2022-10-31 18:42:27'),
(10, 'satedcc@gmail.comCC', '>Name can only be letter', 'Fail', 'No', '2022-10-31 18:42:39'),
(11, 'satedcc@gmail.com', 'Email has been registered', 'Fail', 'No', '2022-10-31 18:46:48'),
(12, 'satedcc@gmail.com', 'Validation Email for reset Success', 'Success', 'Yes', '2022-12-29 19:18:28'),
(13, 'satedcc@gmail.com', 'The code for reset entered is wrong', 'Fail', 'No', '2022-12-29 19:19:06'),
(14, 'satedcc@gmail.com', 'Verification OTP for reset successful', 'Success', 'Yes', '2022-12-29 19:19:29'),
(15, 'satedcc@gmail.com', 'Password must have uppercase, lowercase and numbers', 'Fail', 'No', '2022-12-29 19:20:21'),
(16, 'satedcc@gmail.comxx', 'Password must have uppercase, lowercase and numbers', 'Fail', 'No', '2022-12-29 19:20:59'),
(17, 'satedccccc@gmailcom', 'minimum 8 character password', 'Fail', 'No', '2023-01-23 22:37:10'),
(18, 'satedcc@gmail.com', 'Validation Email for reset Success', 'Success', 'Yes', '2023-01-25 17:56:23'),
(19, 'satedcc@gmail.com', 'The code for reset entered is wrong', 'Fail', 'No', '2023-01-25 17:56:47'),
(20, 'satedcc@gmail.com', 'Verification OTP for reset successful', 'Success', 'Yes', '2023-01-25 17:57:17'),
(21, 'satedcc@gmail.com', 'minimum 8 character password', 'Fail', 'No', '2023-01-25 17:57:27'),
(22, 'satedcc@gmail.com', 'Reset password successful', 'Success', 'Yes', '2023-01-25 17:57:44'),
(23, 'satedcc@gmail.com', 'Email has been registered', 'Fail', 'No', '2023-07-23 17:44:38'),
(24, 'satedccdcc@gmail.com', 'Password must have uppercase, lowercase and numbers', 'Fail', 'No', '2023-07-23 17:44:51'),
(25, 'satedccdcc@gmail.com', 'Registered Successfully', 'Success', 'Yes', '2023-07-23 17:45:26'),
(26, 'satedcc@gmail.com', 'Email has been registered', 'Fail', 'No', '2023-07-23 17:45:54'),
(27, 'satedccccd@gmail.com', 'Format NIK is wrong', 'Fail', 'No', '2023-07-23 17:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `ex_log_img`
--

CREATE TABLE `ex_log_img` (
  `id_img` int NOT NULL,
  `id_regis` int NOT NULL,
  `name_log` varchar(200) NOT NULL,
  `file_img` varchar(200) NOT NULL,
  `type_file` enum('img','video') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_log_img`
--

INSERT INTO `ex_log_img` (`id_img`, `id_regis`, `name_log`, `file_img`, `type_file`, `created_date`) VALUES
(11, 100, '100-QCT000001-RecordRTC-2023618-2q7hj9ci5wy.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-2q7hj9ci5wy.webm', 'video', '2023-07-18 03:05:18'),
(12, 100, '100-QCT000001-RecordRTC-2023618-iepy9bhxxo.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-iepy9bhxxo.webm', 'video', '2023-07-18 03:05:50'),
(13, 100, '100-QCT000001-20230718030619.png', 'http://localhost/exam/dir/exam-picture/100-QCT000001-20230718030619.png', 'img', '2023-07-18 03:06:19'),
(14, 100, '100-QCT000001-RecordRTC-2023618-ac687wpbgp.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-ac687wpbgp.webm', 'video', '2023-07-18 03:06:19'),
(15, 100, '100-QCT000001-RecordRTC-2023618-3ozppxy3weu.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-3ozppxy3weu.webm', 'video', '2023-07-18 03:06:48'),
(16, 100, '100-QCT000001-RecordRTC-2023618-a41edtfc3wh.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-a41edtfc3wh.webm', 'video', '2023-07-18 03:07:18'),
(17, 100, '100-QCT000001-RecordRTC-2023618-5nwcm3zupry.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-5nwcm3zupry.webm', 'video', '2023-07-18 03:07:48'),
(18, 100, '100-QCT000001-20230718030758.png', 'http://localhost/exam/dir/exam-picture/100-QCT000001-20230718030758.png', 'img', '2023-07-18 03:07:58'),
(19, 100, '100-QCT000001-RecordRTC-2023618-lsvfmhijw8t.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-lsvfmhijw8t.webm', 'video', '2023-07-18 03:08:18'),
(20, 100, '100-QCT000001-RecordRTC-2023618-2akf91c7h7t.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-2akf91c7h7t.webm', 'video', '2023-07-18 03:08:48'),
(21, 100, '100-QCT000001-RecordRTC-2023618-54grvwnlahs.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-54grvwnlahs.webm', 'video', '2023-07-18 03:30:08'),
(22, 100, '100-QCT000001-RecordRTC-2023618-ky9azti6tke.webm', 'http://localhost/exam/dir/record/100-QCT000001-RecordRTC-2023618-ky9azti6tke.webm', 'video', '2023-07-18 03:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `ex_patpel`
--

CREATE TABLE `ex_patpel` (
  `id_patpel` int NOT NULL,
  `id_ujian` int NOT NULL,
  `id_user` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_patpel`
--

INSERT INTO `ex_patpel` (`id_patpel`, `id_ujian`, `id_user`, `created_date`) VALUES
(8, 5, 7, '2022-09-21 03:43:20'),
(9, 6, 7, '2022-09-21 13:17:00'),
(11, 8, 7, '2022-09-22 02:10:16'),
(12, 9, 7, '2022-09-22 04:21:06'),
(14, 11, 7, '2022-09-22 07:19:20'),
(15, 12, 7, '2022-09-22 09:55:10'),
(16, 13, 7, '2022-09-22 10:35:21'),
(18, 15, 7, '2022-09-23 06:20:21'),
(19, 16, 7, '2022-09-23 09:23:55'),
(20, 17, 7, '2022-09-23 09:24:10'),
(21, 18, 7, '2022-09-23 09:24:23'),
(26, 22, 15, '2022-09-27 13:22:02'),
(33, 24, 19, '2022-09-28 01:55:43'),
(34, 25, 20, '2022-09-28 01:56:16'),
(35, 26, 21, '2022-09-28 01:56:48'),
(36, 27, 19, '2022-09-28 01:57:12'),
(37, 27, 20, '2022-09-28 01:57:12'),
(38, 28, 19, '2022-09-28 01:57:57'),
(39, 28, 20, '2022-09-28 01:57:57'),
(40, 28, 21, '2022-09-28 01:57:57'),
(41, 29, 20, '2022-09-28 03:00:12'),
(42, 30, 19, '2022-09-28 03:02:02'),
(43, 31, 21, '2022-09-28 03:04:08'),
(44, 32, 20, '2022-09-28 03:12:39'),
(45, 33, 20, '2022-09-28 03:14:09'),
(46, 34, 20, '2022-09-28 03:15:47'),
(47, 38, 8, '2022-09-28 04:24:37'),
(48, 1, 7, '2022-10-04 02:46:14'),
(49, 4, 7, '2022-10-06 07:17:09'),
(50, 4, 8, '2022-10-06 07:17:09'),
(51, 4, 9, '2022-10-06 07:17:09'),
(52, 4, 13, '2022-10-06 07:17:09'),
(53, 4, 24, '2022-10-06 07:17:09'),
(54, 4, 25, '2022-10-06 07:17:09'),
(55, 4, 27, '2022-10-06 07:17:09'),
(56, 4, 28, '2022-10-06 07:17:09'),
(57, 1, 8, '2022-10-28 04:59:36'),
(58, 1, 9, '2022-10-28 04:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `ex_qualified`
--

CREATE TABLE `ex_qualified` (
  `id_qua` int NOT NULL,
  `code_qualified` varchar(15) NOT NULL,
  `nama_qualified` varchar(50) NOT NULL,
  `kuota` int NOT NULL,
  `status_qualified` varchar(15) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL,
  `soft_delete` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_qualified`
--

INSERT INTO `ex_qualified` (`id_qua`, `code_qualified`, `nama_qualified`, `kuota`, `status_qualified`, `created_date`, `update_date`, `soft_delete`) VALUES
(2, 'QC', 'Quality Control', 200, 'Y', '2022-09-19 08:23:08', '0000-00-00 00:00:00', 0),
(3, 'DEV', 'Developer', 200, 'Y', '2022-09-20 23:40:48', '0000-00-00 00:00:00', 0),
(4, 'FO', 'Front Office', 200, 'Y', '2022-09-20 23:40:48', '2022-09-21 07:46:58', 0),
(5, 'cc', 'ccc', 33, 'Y', '2022-09-30 09:58:22', '0000-00-00 00:00:00', 0),
(6, 'eee', 'eee', 34, 'Y', '2022-09-30 09:59:34', '0000-00-00 00:00:00', 0),
(7, 'rr', 'rrr', 44, 'N', '2022-09-30 09:59:45', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ex_register`
--

CREATE TABLE `ex_register` (
  `id_regis` int NOT NULL,
  `id_qua` int NOT NULL,
  `no_regist` varchar(30) NOT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email_peserta` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nomor_peserta` varchar(30) NOT NULL,
  `alamat_peserta` varchar(200) NOT NULL,
  `tempat_lhr` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `status_peserta` int NOT NULL,
  `avaliable` enum('N','Y') NOT NULL,
  `file_photo` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL,
  `failid` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL,
  `otp` varchar(10) NOT NULL,
  `id_user` int NOT NULL,
  `token` varchar(50) NOT NULL,
  `login_session` varchar(100) NOT NULL,
  `soft_delete` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_register`
--

INSERT INTO `ex_register` (`id_regis`, `id_qua`, `no_regist`, `nik`, `nama_lengkap`, `email_peserta`, `password`, `nomor_peserta`, `alamat_peserta`, `tempat_lhr`, `tgl_lahir`, `jk`, `status_peserta`, `avaliable`, `file_photo`, `last_login`, `failid`, `created_date`, `update_date`, `otp`, `id_user`, `token`, `login_session`, `soft_delete`) VALUES
(100, 4, 'EXAM000041', '747100091888199', 'Satria Adi Pradana', 'satedcc@gmail.com', '4d327f2468e47fdc8befc1910b16e72d', '08784399326700', 'BTN 1 Blok M No. 21XX', 'MakassarRR', '2022-04-09', 'L', 1, 'Y', '20230721025808-Screenshot 2023-06-17 085947.png', '2023-07-18 10:29:23', 1, '2022-10-05 01:56:10', '0000-00-00 00:00:00', '785736', 7, '', '', 0),
(106, 2, 'EXAM000019', '7471082704870011', 'Jhon Doe', 'jhon_one@gmail.com', '734a263c4098c25c68a4531c23042173', '08118899983', 'Jalan Pemuda Harapan Baru No.56 Samping SPBU Banteng', 'Jakarta', '2008-09-12', 'L', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-10-06 07:04:41', '0000-00-00 00:00:00', '', 9, '', '', 0),
(317, 3, 'EXAM000020', '179202217', 'Import Partisipan TujuhBelas', '179202217_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202217', 'Alamat Rumah Import Partisipan TujuhBelas DEV Jakarta 2008-09-12', 'Jakarta', '2008-09-12', 'L', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(318, 3, 'EXAM000021', '179202218', 'Import Partisipan DelapamBelas', '179202218_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202218', 'Alamat Rumah Import Partisipan DelapamBelas DEV Bandung 2008-09-13', 'Bandung', '2008-09-13', 'P', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(319, 3, 'EXAM000022', '179202219', 'Import Partisipan SembilanBelas', '179202219_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202219', 'Alamat Rumah Import Partisipan SembilanBelas DEV Tangerang Selatan 2008-09-14', 'Tangerang Selatan', '2008-09-14', 'P', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(320, 3, 'EXAM000023', '179202220', 'Import Partisipan DuaNol', '179202220_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202220', 'Alamat Rumah Import Partisipan DuaNol DEV Tegal 2008-09-15', 'Tegal', '2008-09-15', 'P', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(321, 3, 'EXAM000024', '179202221', 'Import Partisipan DuaSatu', '179202221_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202221', 'Alamat Rumah Import Partisipan DuaSatu DEV Brebes 2008-09-16', 'Brebes', '2008-09-16', 'L', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(322, 3, 'EXAM000025', '179202222', 'Import Partisipan DuaDua', '179202222_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202222', 'Alamat Rumah Import Partisipan DuaDua DEV Bali 2008-09-17', 'Bali', '2008-09-17', 'L', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(323, 3, 'EXAM000035', '179202223', 'Import Partisipan DuaTigaaa', '179202223_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202223', 'Alamat Rumah Import Partisipan DuaTiga DEV Pemalang 2008-09-18', 'Pemalang', '2008-09-18', 'L', 1, 'Y', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 7, '', '', 0),
(324, 3, 'EXAM000027', '179202224', 'Import Partisipan DuaEmpat', '179202224_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202224', 'Alamat Rumah Import Partisipan DuaEmpat DEV Pamekasan 2008-09-19', 'Pamekasan', '2008-09-19', 'P', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(325, 3, 'EXAM000028', '179202225', 'Import Partisipan DuaLima', '179202225_DEV@gmail.com', 'a5291d75556b4923f7a53491374fb7c6', '08179202225', 'Alamat Rumah Import Partisipan DuaLima DEV Pontianak 2008-09-20', 'Pontianak', '2008-09-20', 'L', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(326, 3, 'EXAM000030', '179202226', 'Import Partisipan DuaEnam', '179202226_DEV@gmail.com', '31c6889e8541935ce35bb2be8b1271b2', '08179202226', 'Alamat Rumah Import Partisipan DuaEnam DEV Makasar 2008-09-21', 'Makasar', '2008-09-21', 'L', 0, 'N', '', '0000-00-00 00:00:00', 0, '2022-12-09 01:25:49', '0000-00-00 00:00:00', '', 9, '', '', 0),
(333, 2, 'EXAM000031', '74589823459800044', 'Satria Adipradana', 'sate.dp@gmail.com', 'cfa5672dd38f52ae86a5f2cd1ddbd9be', '082188293232', 'BTN 1 Blok M No. 21', 'Jakarta', '2023-07-23', 'L', 1, 'Y', '20230706025509-', '2023-07-06 09:56:11', 0, '2023-07-06 02:55:09', '0000-00-00 00:00:00', '', 7, '', '', 0),
(334, 2, 'EXAM000032', '', 'Satria Adipradana', 'satedccx@gmail.com', 'ebafa6de419f0e69d7cf592a05d54a1b', '082188293232', 'BTN 1 Blok M No. 21', 'Jakarta', '2023-07-16', 'L', 1, 'Y', '20230718032118-', '2023-07-18 10:28:57', 0, '2023-07-18 03:21:18', '0000-00-00 00:00:00', '', 7, '', '', 0),
(335, 0, 'EXAM000042', '1111111111111111', 'Satria Adipradana', 'satedccdcc@gmail.com', 'b07ea45a23d2d585e8476df214cf605a', '082188293232', '', '', '0000-00-00', 'L', 0, 'N', '', '0000-00-00 00:00:00', 0, '2023-07-24 01:45:11', '0000-00-00 00:00:00', '331656', 1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ex_setting`
--

CREATE TABLE `ex_setting` (
  `id_setting` int NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL COMMENT 'nama perusahaan',
  `telp_perusahaan` varchar(30) NOT NULL COMMENT 'telp perushaaan',
  `email_perusahaan` varchar(50) NOT NULL COMMENT 'email perusahaan',
  `url_perusahaan` varchar(100) NOT NULL COMMENT 'url perusahaan',
  `logo_perusahaan` varchar(100) NOT NULL COMMENT 'logo perusahaan',
  `slogan_perusahaan` text NOT NULL COMMENT 'slogan perusahaan',
  `set_smtp_username` varchar(100) NOT NULL COMMENT 'username untuk setting SMTP',
  `webmail` varchar(200) NOT NULL COMMENT 'webmail/email yang digunakan untuk mengirim email',
  `set_smtp_password` varchar(100) NOT NULL COMMENT 'password yang di gunakan untuk smtp',
  `set_smtp_port` varchar(6) NOT NULL COMMENT 'port yang di gunakan untuk SMTP',
  `set_smtp_host` varchar(100) NOT NULL COMMENT 'host yang di gunakan untuk SMTP',
  `bg_color` varchar(10) NOT NULL,
  `button_color` varchar(10) NOT NULL,
  `shadow_color` varchar(10) NOT NULL,
  `primary_color` varchar(10) NOT NULL,
  `border_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_setting`
--

INSERT INTO `ex_setting` (`id_setting`, `nama_perusahaan`, `telp_perusahaan`, `email_perusahaan`, `url_perusahaan`, `logo_perusahaan`, `slogan_perusahaan`, `set_smtp_username`, `webmail`, `set_smtp_password`, `set_smtp_port`, `set_smtp_host`, `bg_color`, `button_color`, `shadow_color`, `primary_color`, `border_color`) VALUES
(1, 'Asuransi Astra', '1 500 112', 'info@isop2023bali.org', 'https://www.isop2023bali.org/', 'logo.png', '', 'support@clickicm.co.id', 'support@clickicm.co.id', 'UKXK~PrL-!AJ', '587', 'mail.clickicm.co.id', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ex_soal`
--

CREATE TABLE `ex_soal` (
  `id_soal` int NOT NULL,
  `type_soal` int NOT NULL,
  `soal` text NOT NULL,
  `jenis_media` varchar(10) NOT NULL,
  `media_file` text NOT NULL,
  `size_media` varchar(10) NOT NULL,
  `jenis_soal` enum('E','M','H') DEFAULT 'E',
  `status_soal` varchar(20) NOT NULL,
  `created_by` int NOT NULL,
  `update_by` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL,
  `jawab_b` varchar(200) DEFAULT NULL,
  `jawab_a` varchar(200) DEFAULT NULL,
  `jawab_c` varchar(200) DEFAULT NULL,
  `jawab_d` varchar(200) DEFAULT NULL,
  `jawab_e` varchar(200) DEFAULT NULL,
  `soal_jawaban` text,
  `hastag` varchar(200) NOT NULL,
  `soft_delete` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_soal`
--

INSERT INTO `ex_soal` (`id_soal`, `type_soal`, `soal`, `jenis_media`, `media_file`, `size_media`, `jenis_soal`, `status_soal`, `created_by`, `update_by`, `created_date`, `update_date`, `jawab_b`, `jawab_a`, `jawab_c`, `jawab_d`, `jawab_e`, `soal_jawaban`, `hastag`, `soft_delete`, `id_user`) VALUES
(1, 1, '<p>Kota Bandung berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-09-29 13:30:09', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'B', 'QC, Front Office', 0, 9),
(2, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-09-29 13:30:09', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(3, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-09-29 13:30:09', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'B', 'Front Office', 0, 9),
(4, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-09-29 13:30:09', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'B', 'Front Office', 0, 9),
(5, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-09-29 13:30:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'B', 'QC', 0, 9),
(6, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-09-29 13:30:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(7, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-09-29 13:30:53', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(8, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-09-29 13:30:53', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(9, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-09-29 13:30:53', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(10, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-09-29 13:30:53', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'QC', 0, 9),
(11, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-09-29 13:30:53', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(12, 1, '<p>Kota Bandung berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:44:40', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'B', 'QC, Front Office', 0, 9),
(13, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:44:40', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(14, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:44:40', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(15, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:44:40', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(16, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:44:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'QC', 0, 9),
(17, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:44:40', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(18, 1, '<p>Kota Bandung berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:44:52', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'B', 'QC, Front Office', 0, 9),
(19, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:44:52', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(20, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:44:52', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(21, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:44:52', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(22, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:44:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'QC', 0, 9),
(23, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:44:52', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(24, 1, '<p>Kota Bandung berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:45:01', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'B', 'QC, Front Office', 0, 9),
(25, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:45:01', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(26, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:45:01', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(27, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:45:01', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(28, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:45:01', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'QC', 0, 9),
(29, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:45:01', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(30, 1, '<p>Kota Bandung berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:45:10', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'B', 'QC, Front Office', 0, 9),
(31, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:45:10', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(32, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:45:10', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(33, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:45:10', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(34, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:45:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'QC', 0, 9),
(35, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:45:10', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(36, 1, '<p>Kota Bandung berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-04 02:45:17', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'B', 'QC, Front Office', 0, 9),
(37, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>\r\n', '', '', '', 'E', 'aktif', 9, 9, '2022-10-04 02:45:17', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(38, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:45:17', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(39, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-04 02:45:17', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(40, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:45:17', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'QC', 0, 9),
(41, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-04 02:45:17', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(42, 1, '<p>sadsad</p>\r\n', '', '', '', 'E', 'aktif', 9, 9, '2022-10-04 17:08:31', '0000-00-00 00:00:00', 'dsf', 'sdf', 'sdf', 'sdf', 'sdfdsf', 'A', 'sdfsdsad,asdsad,asd,sd,asdsadsaas', 0, 0),
(43, 1, '<p>Kota Bandung berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-10 07:52:09', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'B', 'QC, Front Office', 0, 9),
(44, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-10 07:52:09', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(45, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-10 07:52:09', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(46, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-10 07:52:09', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(47, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-10 07:52:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'QC', 0, 9),
(48, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-10 07:52:09', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(49, 1, '<p>Kota Bandung berada di provinsi ?</p>\r\n', '', '', '100%,100%', 'E', 'aktif', 22, 22, '2022-10-10 07:56:14', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'A', 'QC, Front Office', 0, 9),
(50, 1, '<p>Kota Bukit Tinggi berada di provinsi ?</p>', '', '', '', 'E', 'aktif', 0, 0, '2022-10-10 07:56:14', '0000-00-00 00:00:00', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Sumatra Selatan', 'Sumatra Barat', 'E', 'QC, Front Office', 0, 9),
(51, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-10 07:56:14', '0000-00-00 00:00:00', 'Saya Ke Jakarta Dengan mengendarai Mobil', 'Saya Ke Jakarta Dengan Mobil', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(52, 2, '<p>Manakah Pernyataan yang benar berikut ini ?</p>', '', '', '', 'M', 'aktif', 0, 0, '2022-10-10 07:56:14', '0000-00-00 00:00:00', 'Saya dan ayah menggunakan kuda untuk jalan-jalan', 'Saya dan Ayah Mengendarai kuda jalan-jalan', NULL, NULL, NULL, 'A', 'Front Office', 0, 9),
(53, 3, '<p>Jelaskan dengan singkat proses turun hujan</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-10 07:56:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'QC', 0, 9),
(54, 3, '<p>Jelaskan dengan singkat proses fotosintesis</p>', '', '', '', 'H', 'aktif', 0, 0, '2022-10-10 07:56:14', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Jawaban', 'Developer', 0, 9),
(55, 2, '<p>asdsadasdsadsadddsfsdf</p>\r\n', '', '', '', 'E', 'aktif', 9, 9, '2022-10-19 22:44:44', '0000-00-00 00:00:00', 'dsfdsfdsfdsf', 'dsfdsfdsf', NULL, NULL, NULL, 'A', 'satet,sasaas,sasasas', 0, 0),
(58, 3, '<p>asdsadsad asdsadas asdasdsad asdas dasdasdasd asdsadasd sadasd asd ad</p>\r\n', 'mp4', 'Aplikasi_Management_Exam_Online_-_Google_Chrome_2022-09-22_16-47-55.mp4', '100%,100%', 'E', 'aktif', 9, 9, '2022-10-26 01:03:08', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'dasdasdsadadasd', 'asd,asdsad,asdsadsad', 0, 0),
(59, 3, '<p>video adsadsadsad asdasdsad asdsadsadsad sadsadsadsa sadasdasd asdsadasdsad asdasd sadsadsadasd&nbsp;</p>\r\n', 'mp4', 'Aplikasi_Management_Exam_Online_-_Google_Chrome_2022-09-22_16-47-55.mp4', '100%,100%', 'E', 'aktif', 9, 9, '2022-10-26 01:36:32', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'asdasdsadsad', 'as,asasas,asasasas,asas,f', 0, 0),
(60, 3, '<p>asdsadsad asdsadasdsa dsadsadsa dsaa sd sadsadasdsad asd asd as das dsadsadsadsadas as d sad sad sad sad sadsad asdsadsadsadsa</p>\r\n', 'png', 'dashboard-three.png', '100%,100%', 'E', 'aktif', 9, 9, '2022-10-27 01:08:58', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'zxcxzcxzcxzxcxzcxcxzc', 'sadsad,asdsad,asdsadsadsa,sadsadsad', 0, 0),
(61, 3, '<p>sadsadsad sadsadsad sadsadsad sadsadsad</p>\r\n', 'png', 'dashboard-two.png', '1000,1000', 'E', 'aktif', 9, 9, '2022-11-02 00:27:54', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, 'sadsadasd', 'sadasdsad,asdasd,sad', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ex_temp_ans`
--

CREATE TABLE `ex_temp_ans` (
  `id_temp` int NOT NULL,
  `id_soal` int NOT NULL,
  `jawab` text NOT NULL,
  `time` varchar(15) NOT NULL,
  `jadwal` varchar(50) NOT NULL,
  `session_id` varchar(200) NOT NULL,
  `create_temp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_temp_ans`
--

INSERT INTO `ex_temp_ans` (`id_temp`, `id_soal`, `jawab`, `time`, `jadwal`, `session_id`, `create_temp`) VALUES
(1, 58, 'dfsafdsdf', '0:49:40', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:04:58'),
(2, 60, 'sdfsdfsdf', '0:49:39', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:05:00'),
(3, 55, 'B', '0:49:36', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:05:02'),
(4, 48, 'sdfgvdsfsdfsdf', '0:48:48', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:05:51'),
(5, 11, 'asdfasf', '0:48:45', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:05:54'),
(6, 35, 'dfgdfgdfg', '0:48:27', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:06:11'),
(7, 23, 'fghgfhgfhgfh', '0:48:11', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:06:28'),
(8, 35, 'dfgdfgdfgfghgfh', '0:48:05', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:06:33'),
(9, 9, '0', '0:47:42', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:06:56'),
(10, 15, '0', '0:47:40', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:06:59'),
(11, 8, '0', '0:47:29', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:07:09'),
(12, 29, 'hfggfh', '0:46:21', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:08:18'),
(13, 54, 'sdfdsffghgfh', '0:46:20', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:08:19'),
(14, 53, 'sdfsdfs', '0:45:60', '1', 'ivj9seejd1n73itiliurjkgvat437542', '2023-07-18 03:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `ex_ujian`
--

CREATE TABLE `ex_ujian` (
  `id_ujian` int NOT NULL,
  `nama_ujian` varchar(50) NOT NULL,
  `jumlah_soal` int DEFAULT NULL,
  `durasi` varchar(10) NOT NULL,
  `status_ujian` varchar(20) NOT NULL,
  `update_by` datetime NOT NULL,
  `id_user` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_ujian`
--

INSERT INTO `ex_ujian` (`id_ujian`, `nama_ujian`, `jumlah_soal`, `durasi`, `status_ujian`, `update_by`, `id_user`, `created_date`) VALUES
(1, 'Simulasi Satu', NULL, '', 'Actived', '0000-00-00 00:00:00', 9, '2022-10-28 04:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `ex_users`
--

CREATE TABLE `ex_users` (
  `id_user` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `telp` varchar(30) NOT NULL,
  `status_user` varchar(10) NOT NULL,
  `level_user` varchar(15) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `otp_user` varchar(6) NOT NULL,
  `soft_delete` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ex_users`
--

INSERT INTO `ex_users` (`id_user`, `email`, `password`, `nama_lengkap`, `telp`, `status_user`, `level_user`, `created_date`, `update_date`, `last_login`, `otp_user`, `soft_delete`) VALUES
(7, 'satedcc@gmail.com', '027a07946818b00b7d302c9825479e1f', 'Satria Adipradana', '082188293232', 'aktif', 'superadmin', '2022-09-15 12:48:12', '0000-00-00 00:00:00', '2023-07-21 11:47:32', '534281', 0),
(8, 'user@gmail.com', '027a07946818b00b7d302c9825479e1f', 'Muhammad Irsan', '0811882982', 'aktif', 'user', '2022-09-16 07:36:21', '0000-00-00 00:00:00', '2022-09-28 11:26:42', '', 0),
(9, 'satedcc@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Bambang Kusuma', '0811892928', 'aktif', 'superadmin', '2022-09-16 08:06:50', '0000-00-00 00:00:00', '2023-07-21 11:47:32', '475166', 0),
(13, 'edituser@asuransiastra.com', '863fda7bbe28e38761934ad4d0b4c77e', 'edituser', '08180000000', 'aktif', 'superadmin', '2022-09-27 13:09:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(14, 'publish@asuransiastra.com', '5f909b713a7c0d5183592fccc53a47e3', 'publish', '08180000000', 'disabled', 'user', '2022-09-27 13:13:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(15, 'activeuser@asuransiastra.com', '00afcccc09012a93d8042a808251f6e8', 'activeuser', '08180000000', 'aktif', 'user', '2022-09-27 13:16:10', '0000-00-00 00:00:00', '2022-09-27 20:54:04', '', 0),
(16, 'activeuserdua@asuransiastra.com', 'db4314ee5867cea3db0f0fc30aa0823c', 'activeuserdua', '', 'aktif', 'user', '2022-09-27 13:20:47', '0000-00-00 00:00:00', '2022-09-27 20:20:57', '', 0),
(17, 'LevelSuperAdminSatu@asuransiastra.com', '2fbd9c8a27e855bd6ce81aa48d4fc52e', 'LevelSuperAdminSatu', '08180000000', 'aktif', 'superadmin', '2022-09-28 01:50:17', '0000-00-00 00:00:00', '2022-09-28 09:24:35', '', 0),
(18, 'LevelSuperAdminDua@asuransiastra.com', '09fa6aeb9d5fdca6a76983ab7622de45', 'LevelSuperAdminDua', '08180000000', 'aktif', 'superadmin', '2022-09-28 01:51:03', '0000-00-00 00:00:00', '2022-09-28 13:43:00', '', 0),
(19, 'LevelUserSatu@asuransiastra.com', '06aa15ac8b87574a457bba2a9eb4d194', 'LevelUserSatu', '08180000000', 'aktif', 'user', '2022-09-28 01:51:41', '0000-00-00 00:00:00', '2022-09-28 11:31:27', '', 0),
(20, 'LevelUserDua@asuransiastra.com', '6d6d77abf816d5eacc5226b0991fe333', 'LevelUserDua', '08180000000', 'aktif', 'user', '2022-09-28 01:52:13', '0000-00-00 00:00:00', '2022-09-28 14:01:08', '', 0),
(21, 'LevelUserTiga@asuransiastra.com', '17fb6d0381b77bf8a035ba539c1ddd0d', 'LevelUserTiga', '08180000000', 'aktif', 'user', '2022-09-28 01:52:45', '0000-00-00 00:00:00', '2022-09-28 13:42:17', '', 0),
(24, 'edit@gmail.com', '863fda7bbe28e38761934ad4d0b4c77e', 'edit', '08180000000', 'aktif', 'user', '2022-09-28 06:34:15', '0000-00-00 00:00:00', '2022-09-28 13:34:31', '', 0),
(25, 'confirmpassword@gmail.com', 'f6ea07888460c06eb9381e89298d27fa', 'confirmpassword', '08180000000', 'aktif', 'user', '2022-09-28 06:43:43', '0000-00-00 00:00:00', '2022-09-28 13:46:52', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ex_batch`
--
ALTER TABLE `ex_batch`
  ADD PRIMARY KEY (`id_batch`);

--
-- Indexes for table `ex_detail_batch`
--
ALTER TABLE `ex_detail_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ex_detail_jadwal`
--
ALTER TABLE `ex_detail_jadwal`
  ADD PRIMARY KEY (`id_detail_jadwal`);

--
-- Indexes for table `ex_detail_soal`
--
ALTER TABLE `ex_detail_soal`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `ex_history_login`
--
ALTER TABLE `ex_history_login`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `ex_informasi`
--
ALTER TABLE `ex_informasi`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `ex_jadwal`
--
ALTER TABLE `ex_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `ex_jawaban`
--
ALTER TABLE `ex_jawaban`
  ADD PRIMARY KEY (`id_jawab`);

--
-- Indexes for table `ex_log_email`
--
ALTER TABLE `ex_log_email`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `ex_log_img`
--
ALTER TABLE `ex_log_img`
  ADD PRIMARY KEY (`id_img`);

--
-- Indexes for table `ex_patpel`
--
ALTER TABLE `ex_patpel`
  ADD PRIMARY KEY (`id_patpel`);

--
-- Indexes for table `ex_qualified`
--
ALTER TABLE `ex_qualified`
  ADD PRIMARY KEY (`id_qua`);

--
-- Indexes for table `ex_register`
--
ALTER TABLE `ex_register`
  ADD PRIMARY KEY (`id_regis`);

--
-- Indexes for table `ex_setting`
--
ALTER TABLE `ex_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `ex_soal`
--
ALTER TABLE `ex_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `ex_temp_ans`
--
ALTER TABLE `ex_temp_ans`
  ADD PRIMARY KEY (`id_temp`);

--
-- Indexes for table `ex_ujian`
--
ALTER TABLE `ex_ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `ex_users`
--
ALTER TABLE `ex_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ex_batch`
--
ALTER TABLE `ex_batch`
  MODIFY `id_batch` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ex_detail_batch`
--
ALTER TABLE `ex_detail_batch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ex_detail_jadwal`
--
ALTER TABLE `ex_detail_jadwal`
  MODIFY `id_detail_jadwal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ex_detail_soal`
--
ALTER TABLE `ex_detail_soal`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ex_history_login`
--
ALTER TABLE `ex_history_login`
  MODIFY `id_history` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `ex_informasi`
--
ALTER TABLE `ex_informasi`
  MODIFY `id_info` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ex_jadwal`
--
ALTER TABLE `ex_jadwal`
  MODIFY `id_jadwal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ex_jawaban`
--
ALTER TABLE `ex_jawaban`
  MODIFY `id_jawab` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ex_log_email`
--
ALTER TABLE `ex_log_email`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ex_log_img`
--
ALTER TABLE `ex_log_img`
  MODIFY `id_img` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ex_patpel`
--
ALTER TABLE `ex_patpel`
  MODIFY `id_patpel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `ex_qualified`
--
ALTER TABLE `ex_qualified`
  MODIFY `id_qua` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ex_register`
--
ALTER TABLE `ex_register`
  MODIFY `id_regis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `ex_setting`
--
ALTER TABLE `ex_setting`
  MODIFY `id_setting` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ex_soal`
--
ALTER TABLE `ex_soal`
  MODIFY `id_soal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `ex_temp_ans`
--
ALTER TABLE `ex_temp_ans`
  MODIFY `id_temp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ex_ujian`
--
ALTER TABLE `ex_ujian`
  MODIFY `id_ujian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ex_users`
--
ALTER TABLE `ex_users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
