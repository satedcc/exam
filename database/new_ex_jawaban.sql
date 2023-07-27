-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2023 at 12:39 AM
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
(77, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 58, 'XXXXX', 'N', '0:49:54', '2023-07-06 07:45:17'),
(78, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 55, 'A', 'N', '0:49:52', '2023-07-06 07:45:17'),
(79, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 60, 'XXXX', 'N', '0:49:49', '2023-07-06 07:45:17'),
(80, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 4, 'A', 'N', '0:49:48', '2023-07-06 07:45:17'),
(81, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 3, 'B', 'N', '0:49:46', '2023-07-06 07:45:17'),
(82, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 15, 'B', 'N', '0:49:46', '2023-07-06 07:45:17'),
(83, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 14, 'B', 'N', '0:49:44', '2023-07-06 07:45:17'),
(84, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 9, 'B', 'N', '0:49:43', '2023-07-06 07:45:17'),
(85, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 8, 'B', 'N', '0:49:41', '2023-07-06 07:45:17'),
(86, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 47, 'XXXXXX', 'false', '0:49:39', '2023-07-06 07:45:17'),
(87, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 6, 'XX', 'N', '0:49:38', '2023-07-06 07:45:17'),
(88, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 29, 'XXXX', 'N', '0:49:37', '2023-07-06 07:45:17'),
(89, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 53, 'SSSS', 'true', '0:49:35', '2023-07-06 07:45:17'),
(90, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 41, 'AAA', 'N', '0:49:34', '2023-07-06 07:45:17'),
(91, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 48, 'WWW', 'N', '0:49:32', '2023-07-06 07:45:17'),
(92, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 23, 'WEEEE', 'N', '0:49:31', '2023-07-06 07:45:17'),
(93, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 35, 'GGGG', 'N', '0:49:29', '2023-07-06 07:45:17'),
(94, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 54, 'SSS', 'N', '0:49:27', '2023-07-06 07:45:17'),
(95, '9exmHXjAYa9qoZykTuGDtvOiOUzICEjk3wFyaDEl', 100, 1, 11, 'DDD', 'N', '0:49:26', '2023-07-06 07:45:17'),
(96, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 58, 'SXSDSSS', 'N', '0:49:56', '2023-07-06 07:46:16'),
(97, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 55, 'B', 'N', '0:49:54', '2023-07-06 07:46:16'),
(98, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 60, 'EEE', 'N', '0:49:51', '2023-07-06 07:46:16'),
(99, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 8, 'B', 'N', '0:49:49', '2023-07-06 07:46:16'),
(100, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 4, '0', 'N', '0:49:49', '2023-07-06 07:46:16'),
(101, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 3, 'B', 'N', '0:49:47', '2023-07-06 07:46:16'),
(102, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 15, 'B', 'N', '0:49:46', '2023-07-06 07:46:16'),
(103, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 9, 'B', 'N', '0:49:44', '2023-07-06 07:46:16'),
(104, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 14, 'B', 'N', '0:49:43', '2023-07-06 07:46:16'),
(105, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 54, 'EEEE', 'N', '0:49:41', '2023-07-06 07:46:16'),
(106, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 29, 'RRRR', 'N', '0:49:39', '2023-07-06 07:46:16'),
(107, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 11, 'GGG', 'N', '0:49:38', '2023-07-06 07:46:16'),
(108, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 41, 'GGGG', 'N', '0:49:37', '2023-07-06 07:46:16'),
(109, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 35, 'HH', 'N', '0:49:35', '2023-07-06 07:46:16'),
(110, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 23, 'DDD', 'N', '0:49:34', '2023-07-06 07:46:16'),
(111, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 53, 'AA', 'N', '0:49:33', '2023-07-06 07:46:16'),
(112, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 6, 'FFF', 'N', '0:49:31', '2023-07-06 07:46:16'),
(113, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 48, 'TTT', 'N', '0:49:29', '2023-07-06 07:46:16'),
(114, 't41ddycIgrezXm1f2FgI7Yo9mMxeY3SkvWZPRLkx', 100, 1, 47, 'YY', 'N', '0:49:28', '2023-07-06 07:46:16'),
(115, 'XmoajDV8yfbMKqbpOERUrTP8OqKltF3nI5A2B7Sz', 100, 2, 55, '0', 'N', '3:44:59', '2023-07-07 10:49:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ex_jawaban`
--
ALTER TABLE `ex_jawaban`
  ADD PRIMARY KEY (`id_jawab`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ex_jawaban`
--
ALTER TABLE `ex_jawaban`
  MODIFY `id_jawab` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
