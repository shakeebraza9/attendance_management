-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 27, 2024 at 02:13 PM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u227020428_karaokesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_size` int(11) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `input_type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','deleted') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `file_path`, `file_type`, `file_size`, `uploaded_at`, `input_type`, `description`, `status`) VALUES
(8, 5, 'TEst.pdf', 'uploads/66f59ea7421ff.pdf', 'application/pdf', 69173, '2024-08-06 22:47:38', 'Test', NULL, 'active'),
(9, 5, 'Front-1.jpg', 'uploads/66f59e2fe6bd5.jpg', 'image/jpeg', 239212, '2024-08-06 22:49:40', 'Id card', NULL, 'active'),
(10, 2, 'Green Work From Home Your Story.pdf', 'uploads/66b40bbecd6fa.pdf', 'application/pdf', 1445816, '2024-08-08 00:05:18', 'Test', NULL, 'active'),
(11, 2, 'Blue Modern Business ID Card.pdf', 'uploads/66b40bbecda3b.pdf', 'application/pdf', 674798, '2024-08-08 00:05:18', 'Id card', NULL, 'active'),
(19, 60, 'bank transfer1.pdf', 'uploads/66f5e5e6c6af5.pdf', 'application/pdf', 794638, '2024-09-19 19:13:04', 'Id card', NULL, 'active'),
(20, 60, 'WhatsApp Image 2024-09-12 at 00.03.15.jpeg', 'uploads/66f5e5e6c69ac.jpeg', 'image/jpeg', 71462, '2024-09-19 19:13:04', 'Test', NULL, 'active'),
(22, 63, 'ID pamela .pdf', 'uploads/66ec7f0019b02.pdf', 'application/pdf', 493371, '2024-09-19 19:44:00', 'Id card', NULL, 'active'),
(23, 63, 'RSV790871825.pdf', 'uploads/66ec7f0019fcd.pdf', 'application/pdf', 710944, '2024-09-19 19:44:00', 'Test', NULL, 'active'),
(28, 66, 'IMG_5758 3.pdf', 'uploads/66ec84087d47f.pdf', 'application/pdf', 3035260, '2024-09-19 20:00:04', 'Id card', NULL, 'active'),
(29, 66, 'Foto.pdf', 'uploads/66ec84087ce56.pdf', 'application/pdf', 991733, '2024-09-19 20:00:04', 'Test', NULL, 'active'),
(30, 68, 'Lun, 12 de feb de 2024, 11:39 p.m..pdf', 'uploads/66ec84a6b075a.pdf', 'application/pdf', 2401220, '2024-09-19 20:03:27', 'Id card', NULL, 'active'),
(31, 68, 'Jue, 19 de sep de 2024, 7:55 p.m..pdf', 'uploads/66ec84a6b05be.pdf', 'application/pdf', 63103, '2024-09-19 20:03:27', 'Test', NULL, 'active'),
(34, 64, 'CamScanner 19-09-2024 14.13.pdf', 'uploads/66ec869e9bab7.pdf', 'application/pdf', 259177, '2024-09-19 20:16:30', 'Id card', NULL, 'active'),
(35, 64, 'CamScanner 19-09-2024 14.13.pdf', 'uploads/66ec869e9bcda.pdf', 'application/pdf', 259177, '2024-09-19 20:16:30', 'Test', NULL, 'active'),
(38, 69, 'CamScanner 20-09-2024 14.21.pdf', 'uploads/66edda4545af7.pdf', 'application/pdf', 473748, '2024-09-20 20:24:44', 'Id card', NULL, 'active'),
(39, 69, 'RSV845243145.pdf', 'uploads/66edda4f52675.pdf', 'application/pdf', 386049, '2024-09-20 20:24:44', 'Test', NULL, 'active'),
(40, 70, 'Ingrid id .pdf', 'uploads/66ee224a54fae.pdf', 'application/pdf', 148672, '2024-09-21 01:32:58', 'Id card', NULL, 'active'),
(41, 70, 'Ingrid examen .pdf', 'uploads/66ee224a55107.pdf', 'application/pdf', 296640, '2024-09-21 01:32:58', 'Test', NULL, 'active'),
(52, 82, 'CamScanner 09-25-2024 16.21.pdf', 'uploads/66f4b3a96c9f7.pdf', 'application/pdf', 472271, '2024-09-25 22:25:14', 'Id card', NULL, 'active'),
(53, 82, 'RSV855155465.pdf', 'uploads/66f4b3a96c713.pdf', 'application/pdf', 340368, '2024-09-25 22:25:14', 'Test', NULL, 'active'),
(54, 88, 'INSTITUTO NACIONAL ELECTORAL.pdf', 'uploads/66f491005458f.pdf', 'application/pdf', 4016850, '2024-09-25 22:38:56', 'Id card', NULL, 'active'),
(55, 88, 'JN36356-57434720-053836 (1).pdf', 'uploads/66f491005597f.pdf', 'application/pdf', 153098, '2024-09-25 22:38:56', 'Test', NULL, 'active'),
(56, 83, 'IMG_6702.pdf', 'uploads/66f492c86e581.pdf', 'application/pdf', 100198, '2024-09-25 22:46:32', 'Id card', NULL, 'active'),
(57, 83, 'IMG_8108.pdf', 'uploads/66f492c86e771.pdf', 'application/pdf', 156844, '2024-09-25 22:46:32', 'Test', NULL, 'active'),
(58, 85, '32d577ef-8517-40cf-862b-b50ce240a1e4.jpeg', 'uploads/66f5e94942354.jpeg', 'image/jpeg', 92812, '2024-09-25 23:10:30', 'Id card', NULL, 'active'),
(59, 85, '32d577ef-8517-40cf-862b-b50ce240a1e4.jpeg', 'uploads/66f5ea39ec9d0.jpeg', 'image/jpeg', 92812, '2024-09-25 23:10:30', 'Test', NULL, 'active'),
(60, 84, 'CamScanner 25-09-2024 17.04.pdf', 'uploads/66f49b5f0719c.pdf', 'application/pdf', 1025654, '2024-09-25 23:17:05', 'Id card', NULL, 'active'),
(61, 84, 'GeneradorReportes.pdf', 'uploads/66f499f11c406.pdf', 'application/pdf', 73679, '2024-09-25 23:17:05', 'Test', NULL, 'active'),
(62, 86, 'CamScanner 25-09-2024 18.00.pdf', 'uploads/66f4a571a0a89.pdf', 'application/pdf', 396509, '2024-09-26 00:06:09', 'Id card', NULL, 'active'),
(63, 86, 'saludignaJenn.pdf', 'uploads/66f4a571a0d52.pdf', 'application/pdf', 680736, '2024-09-26 00:06:09', 'Test', NULL, 'active'),
(64, 90, 'DOC-20240925-WA0134..pdf', 'uploads/66f4a6625faa6.pdf', 'application/pdf', 332491, '2024-09-26 00:10:10', 'Id card', NULL, 'active'),
(65, 90, 'test _dym.pdf', 'uploads/66f4a6625fd22.pdf', 'application/pdf', 259037, '2024-09-26 00:10:10', 'Test', NULL, 'active'),
(66, 92, 'G ELIZABETH NERI Z 07_DE_JUNIO_DEL_2024_ZSR47996.pdf', 'uploads/66f4c45f84341.pdf', 'application/pdf', 108359, '2024-09-26 00:40:59', 'Test', NULL, 'active'),
(67, 93, '2024-09-25 18_44_25.pdf', 'uploads/66f4b44f41cd7.pdf', 'application/pdf', 5350285, '2024-09-26 00:54:50', 'Id card', NULL, 'active'),
(68, 93, 'RU18677-59313315-081231.pdf', 'uploads/66f4b44f41ad1.pdf', 'application/pdf', 146745, '2024-09-26 00:54:50', 'Test', NULL, 'active'),
(69, 95, 'CamScanner 06-20-2023 19.16.pdf', 'uploads/66f4c4886caca.pdf', 'application/pdf', 387233, '2024-09-26 02:18:48', 'Id card', NULL, 'active'),
(70, 95, 'Estudio.pdf', 'uploads/66f4c4886cdc2.pdf', 'application/pdf', 336128, '2024-09-26 02:18:48', 'Test', NULL, 'active'),
(71, 97, 'PDFReader_20240925_2058.pdf', 'uploads/66f617bb2ddd9.pdf', 'application/pdf', 359642, '2024-09-26 03:02:05', 'Test', NULL, 'active'),
(72, 97, '66f4ceadcf8cc (3).pdf', 'uploads/66f617bb2e0af.pdf', 'application/pdf', 396995, '2024-09-26 03:02:05', 'Id card', NULL, 'active'),
(73, 91, 'IMG_7985.pdf', 'uploads/66f4d196d030f.pdf', 'application/pdf', 106957, '2024-09-26 03:14:30', 'Id card', NULL, 'active'),
(74, 91, 'GeneradorReportes.pdf', 'uploads/66f4d196d0493.pdf', 'application/pdf', 102551, '2024-09-26 03:14:30', 'Test', NULL, 'active'),
(75, 96, 'ID .pdf', 'uploads/66f5c49745236.pdf', 'application/pdf', 135375, '2024-09-26 20:31:19', 'Id card', NULL, 'active'),
(76, 101, 'homehome.png', 'uploads/66f5e861b720c.png', 'image/png', 404611, '2024-09-26 22:15:28', 'Test', NULL, 'active'),
(77, 101, 'Front-1.jpg', 'uploads/66f5e861b757e.jpg', 'image/jpeg', 239212, '2024-09-26 22:15:28', 'Id card', NULL, 'active'),
(78, 102, 'mexican id sample.png', 'uploads/66f5e84a98817.png', 'image/png', 355274, '2024-09-26 23:03:38', 'Test', NULL, 'active'),
(79, 102, 'Cuenta.jpeg', 'uploads/66f5e84a98c0d.jpeg', 'image/jpeg', 135358, '2024-09-26 23:03:38', 'Id card', NULL, 'active'),
(80, 106, 'INSTITUTO NACIONAL ELECTORAL.pdf', 'uploads/66f607659dc00.pdf', 'application/pdf', 376861, '2024-09-27 01:16:21', 'Id card', NULL, 'active'),
(81, 107, 'INE CAMERINA MERIYEN.pdf', 'uploads/66f608a3400bd.pdf', 'application/pdf', 165643, '2024-09-27 01:21:39', 'Id card', NULL, 'active'),
(82, 100, 'Sep 26, 2024 Doc (1).pdf', 'uploads/66f60de7cc0c1.pdf', 'application/pdf', 350418, '2024-09-27 01:44:07', 'Test', NULL, 'active'),
(83, 100, 'Sep 26, 2024 Doc.pdf', 'uploads/66f60de7cc3ce.pdf', 'application/pdf', 812192, '2024-09-27 01:44:07', 'Id card', NULL, 'active'),
(84, 108, 'CamScanner 26-09-2024 19.51.pdf', 'uploads/66f6134b64123.pdf', 'application/pdf', 790774, '2024-09-27 02:05:14', 'Test', NULL, 'active'),
(85, 108, 'CamScanner 26-09-2024 20.04.pdf', 'uploads/66f6134b6466b.pdf', 'application/pdf', 428528, '2024-09-27 02:07:07', 'Id card', NULL, 'active'),
(86, 92, 'malemalemale.pdf', 'uploads/66f6187f22533.pdf', 'application/pdf', 4308164, '2024-09-27 02:29:19', 'Id card', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `imid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`imid`, `userid`, `filepath`, `filename`, `date`, `time`) VALUES
(72, 5, 'uploads/1727296803_66f47523a3544.png', '1727296803_66f47523a3544.png', NULL, NULL),
(73, 5, 'uploads/1727296803_66f47523a3993.png', '1727296803_66f47523a3993.png', NULL, NULL),
(74, 78, 'uploads/1727296964_66f475c484e76.png', '1727296964_66f475c484e76.png', NULL, NULL),
(75, 78, 'uploads/1727296964_66f475c485283.png', '1727296964_66f475c485283.png', NULL, NULL),
(76, 79, 'uploads/1727299485_66f47f9d91c3e.png', '1727299485_66f47f9d91c3e.png', NULL, NULL),
(77, 79, 'uploads/1727299485_66f47f9d91e53.jpg', '1727299485_66f47f9d91e53.jpg', NULL, NULL),
(78, 77, 'uploads/1727299501_66f47fad39618.png', '1727299501_66f47fad39618.png', NULL, NULL),
(79, 77, 'uploads/1727299501_66f47fad3987e.jpg', '1727299501_66f47fad3987e.jpg', NULL, NULL),
(80, 79, 'uploads/1727299538_66f47fd23d409.jpg', '1727299538_66f47fd23d409.jpg', NULL, NULL),
(81, 79, 'uploads/1727299542_66f47fd64986a.png', '1727299542_66f47fd64986a.png', NULL, NULL),
(82, 79, 'uploads/1727299545_66f47fd94d52e.png', '1727299545_66f47fd94d52e.png', NULL, NULL),
(83, 80, 'uploads/1727299695_66f4806f590d0.png', '1727299695_66f4806f590d0.png', NULL, NULL),
(84, 80, 'uploads/1727299695_66f4806f5929f.png', '1727299695_66f4806f5929f.png', NULL, NULL),
(85, 80, 'uploads/1727299784_66f480c822496.jpg', '1727299784_66f480c822496.jpg', NULL, NULL),
(86, 77, 'uploads/1727299860_66f48114e86ae.png', '1727299860_66f48114e86ae.png', NULL, NULL),
(87, 77, 'uploads/1727299868_66f4811cc5d86.jpeg', '1727299868_66f4811cc5d86.jpeg', NULL, NULL),
(88, 77, 'uploads/1727299880_66f481284a641.png', '1727299880_66f481284a641.png', NULL, NULL),
(89, 81, 'uploads/1727300612_66f48404d588a.png', '1727300612_66f48404d588a.png', NULL, NULL),
(90, 81, 'uploads/1727300612_66f48404d6274.jpg', '1727300612_66f48404d6274.jpg', NULL, NULL),
(91, 81, 'uploads/1727300641_66f48421bb30a.jpg', '1727300641_66f48421bb30a.jpg', NULL, NULL),
(92, 81, 'uploads/1727300641_66f48421bbd07.jpg', '1727300641_66f48421bbd07.jpg', NULL, NULL),
(95, 83, 'uploads/1727304454_66f4930672548.jpeg', '1727304454_66f4930672548.jpeg', NULL, NULL),
(96, 83, 'uploads/1727304454_66f4930672867.jpeg', '1727304454_66f4930672867.jpeg', NULL, NULL),
(99, 90, 'uploads/1727309481_66f4a6a914e58.jpg', '1727309481_66f4a6a914e58.jpg', NULL, NULL),
(101, 84, 'uploads/1727311467_66f4ae6bbaee8.jpeg', '1727311467_66f4ae6bbaee8.jpeg', NULL, NULL),
(104, 94, 'uploads/1727312992_66f4b460d8f3a.png', '1727312992_66f4b460d8f3a.png', NULL, NULL),
(105, 94, 'uploads/1727312992_66f4b460d91a5.jpeg', '1727312992_66f4b460d91a5.jpeg', NULL, NULL),
(108, 82, 'uploads/1727313057_66f4b4a1b3421.jpeg', '1727313057_66f4b4a1b3421.jpeg', NULL, NULL),
(109, 82, 'uploads/1727313057_66f4b4a1f1b5d.jpeg', '1727313057_66f4b4a1f1b5d.jpeg', NULL, NULL),
(110, 94, 'uploads/1727313155_66f4b5031ff11.jpg', '1727313155_66f4b5031ff11.jpg', NULL, NULL),
(111, 94, 'uploads/1727313175_66f4b517f3d2f.jpeg', '1727313175_66f4b517f3d2f.jpeg', NULL, NULL),
(112, 94, 'uploads/1727313513_66f4b66911211.jpeg', '1727313513_66f4b66911211.jpeg', NULL, NULL),
(113, 64, 'uploads/1727314139_66f4b8dbe719f.jpeg', '1727314139_66f4b8dbe719f.jpeg', NULL, NULL),
(114, 93, 'uploads/1727314325_66f4b995987b2.jpg', '1727314325_66f4b995987b2.jpg', NULL, NULL),
(115, 93, 'uploads/1727314368_66f4b9c03a835.jpg', '1727314368_66f4b9c03a835.jpg', NULL, NULL),
(116, 82, 'uploads/1727314378_66f4b9ca206ba.jpeg', '1727314378_66f4b9ca206ba.jpeg', NULL, NULL),
(117, 93, 'uploads/1727314438_66f4ba06cb26b.jpg', '1727314438_66f4ba06cb26b.jpg', NULL, NULL),
(118, 93, 'uploads/1727314438_66f4ba06cc108.jpg', '1727314438_66f4ba06cc108.jpg', NULL, NULL),
(119, 86, 'uploads/1727317145_66f4c49920b6b.jpeg', '1727317145_66f4c49920b6b.jpeg', NULL, NULL),
(120, 86, 'uploads/1727317145_66f4c499219e8.jpeg', '1727317145_66f4c499219e8.jpeg', NULL, NULL),
(121, 86, 'uploads/1727317145_66f4c4992250a.jpeg', '1727317145_66f4c4992250a.jpeg', NULL, NULL),
(124, 92, 'uploads/1727317887_66f4c77fe726b.jpg', '1727317887_66f4c77fe726b.jpg', NULL, NULL),
(125, 92, 'uploads/1727317888_66f4c7805b96b.jpg', '1727317888_66f4c7805b96b.jpg', NULL, NULL),
(126, 92, 'uploads/1727317888_66f4c78075594.jpg', '1727317888_66f4c78075594.jpg', NULL, NULL),
(129, 95, 'uploads/1727318395_66f4c97b99440.jpeg', '1727318395_66f4c97b99440.jpeg', NULL, NULL),
(130, 95, 'uploads/1727318516_66f4c9f499d22.jpeg', '1727318516_66f4c9f499d22.jpeg', NULL, NULL),
(131, 90, 'uploads/1727318620_66f4ca5c32b46.jpg', '1727318620_66f4ca5c32b46.jpg', NULL, NULL),
(133, 97, 'uploads/1727318678_66f4ca9660609.jpg', '1727318678_66f4ca9660609.jpg', NULL, NULL),
(135, 90, 'uploads/1727318703_66f4caaf5bdb8.jpg', '1727318703_66f4caaf5bdb8.jpg', NULL, NULL),
(136, 97, 'uploads/1727318726_66f4cac635f8e.jpg', '1727318726_66f4cac635f8e.jpg', NULL, NULL),
(137, 97, 'uploads/1727318738_66f4cad27163b.jpg', '1727318738_66f4cad27163b.jpg', NULL, NULL),
(139, 91, 'uploads/1727321186_66f4d46268dfc.jpeg', '1727321186_66f4d46268dfc.jpeg', NULL, NULL),
(140, 63, 'uploads/1727374430_66f5a45e548b3.jpeg', '1727374430_66f5a45e548b3.jpeg', NULL, NULL),
(141, 63, 'uploads/1727374430_66f5a45e6f227.jpeg', '1727374430_66f5a45e6f227.jpeg', NULL, NULL),
(142, 101, 'uploads/1727377799_66f5b1879f90d.jpg', '1727377799_66f5b1879f90d.jpg', NULL, NULL),
(143, 101, 'uploads/1727377799_66f5b1879fc61.jpg', '1727377799_66f5b1879fc61.jpg', NULL, NULL),
(144, 102, 'uploads/1727379383_66f5b7b7396d2.jpeg', '1727379383_66f5b7b7396d2.jpeg', NULL, NULL),
(145, 102, 'uploads/1727379383_66f5b7b739a07.jpeg', '1727379383_66f5b7b739a07.jpeg', NULL, NULL),
(146, 96, 'uploads/1727382749_66f5c4ddd20dd.png', '1727382749_66f5c4ddd20dd.png', NULL, NULL),
(147, 96, 'uploads/1727382749_66f5c4ddd2895.jpeg', '1727382749_66f5c4ddd2895.jpeg', NULL, NULL),
(148, 85, 'uploads/1727390332_66f5e27c699ca.jpeg', '1727390332_66f5e27c699ca.jpeg', NULL, NULL),
(150, 85, 'uploads/1727390609_66f5e391c4f5a.jpeg', '1727390609_66f5e391c4f5a.jpeg', NULL, NULL),
(151, 85, 'uploads/1727390610_66f5e3922777c.jpeg', '1727390610_66f5e3922777c.jpeg', NULL, NULL),
(152, 85, 'uploads/1727390635_66f5e3ab4c2d9.jpeg', '1727390635_66f5e3ab4c2d9.jpeg', NULL, NULL),
(153, 85, 'uploads/1727390635_66f5e3ab556e1.jpeg', '1727390635_66f5e3ab556e1.jpeg', NULL, NULL),
(154, 104, 'uploads/1727390981_66f5e5059ce7e.jpg', '1727390981_66f5e5059ce7e.jpg', NULL, NULL),
(156, 108, 'uploads/1727403149_66f6148d50371.jpeg', '1727403149_66f6148d50371.jpeg', NULL, NULL),
(159, 108, 'uploads/1727403570_66f616321f7db.jpeg', '1727403570_66f616321f7db.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `expiration_date`, `date`) VALUES
(1, '[value-1]', '2025-02-22', '2024-08-20 23:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'sala 1', 1, '2024-08-12 21:53:14', '2024-09-27 02:53:48'),
(2, 'sala 2', 1, '2024-08-12 21:53:19', '2024-09-21 03:11:49'),
(3, 'sala 3', 1, '2024-08-12 22:47:40', '2024-08-12 22:47:40'),
(4, 'Sala 4', 1, '2024-08-17 22:13:10', '2024-08-17 22:13:10'),
(5, 'Sala 5', 1, '2024-08-17 22:13:24', '2024-09-21 02:20:12'),
(6, 'Sala 6', 1, '2024-08-17 22:13:31', '2024-08-17 22:13:31'),
(7, 'Sala 7', 1, '2024-08-17 22:13:36', '2024-08-17 22:13:36'),
(11, 'Se Fue', 1, '2024-09-03 21:16:09', '2024-09-03 21:16:09'),
(12, 'test fission', 1, '2024-09-18 18:41:05', '2024-09-18 18:41:05'),
(13, '1', 1, '2024-09-27 02:54:19', '2024-09-27 02:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `tbl_attendance_id` int(11) NOT NULL,
  `tbl_user_id` int(11) NOT NULL,
  `tbl_student_id` int(11) NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `time_in` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`tbl_attendance_id`, `tbl_user_id`, `tbl_student_id`, `qr_code`, `room`, `time_in`) VALUES
(90, 5, 154, 'KzbhaJ1n2W', NULL, '2024-09-18 17:19:45'),
(97, 68, 167, '0CPekal5iy', NULL, '2024-09-19 20:21:14'),
(98, 64, 166, 'oIpOG5Hh1b', NULL, '2024-09-19 20:21:47'),
(99, 68, 172, 'stGBtdqF3A', NULL, '2024-09-20 19:17:52'),
(100, 66, 171, 'fBtzi3upU3', NULL, '2024-09-20 19:18:08'),
(101, 63, 169, 'XXZKEpt74R', 'Sala 5', '2024-09-20 19:18:32'),
(102, 69, 173, 'kSQXxe5uq7', 'sala 2', '2024-09-20 19:32:42'),
(103, 70, 174, 'zCIZZBg4gy', NULL, '2024-09-20 19:34:56'),
(104, 64, 170, 'IhFhajSEqh', NULL, '2024-09-20 19:57:03'),
(105, 64, 177, 'zCBio6UPM1', 'sala 3,Sala 4', '2024-09-21 19:03:58'),
(106, 68, 175, '3sXAqBHSs4', 'Sala 6,sala 3,Sala 4', '2024-09-21 19:04:06'),
(107, 70, 178, 'snkYzhaEzF', 'sala 1', '2024-09-21 19:08:27'),
(108, 69, 176, '1muFX1wgUH', 'sala 2', '2024-09-21 19:19:16'),
(109, 66, 180, '33q0SOxgRn', 'sala 3', '2024-09-21 19:19:52'),
(110, 63, 179, 'HUZIkhNfyW', 'sala 3,sala 1,Sala 4', '2024-09-21 19:33:44'),
(111, 69, 182, 'X0QNXb9Uaj', 'Sala 5', '2024-09-22 18:47:01'),
(112, 68, 181, '72gdueVRvU', 'Sala 5', '2024-09-22 18:54:01'),
(113, 64, 186, 'CfaiAMWbun', NULL, '2024-09-22 18:54:33'),
(114, 70, 188, '19x1AHJJUS', NULL, '2024-09-23 18:58:06'),
(115, 66, 189, 'ySUHSyvZnG', NULL, '2024-09-23 18:58:57'),
(116, 69, 191, 'ocqNshNYzu', 'Sala 5,sala 2', '2024-09-24 19:14:04'),
(117, 70, 190, 'Zk4UaHYFUm', 'Sala 4', '2024-09-24 19:14:22'),
(118, 63, 192, 'GuLbQZWig8', 'Sala 5,sala 2', '2024-09-24 19:17:26'),
(119, 68, 193, 'ZnbJpfmKhh', 'sala 3', '2024-09-24 20:39:27'),
(120, 66, 196, 'jhdd6HCX4g', NULL, '2024-09-25 19:04:22'),
(121, 70, 195, 'cNRnHwP9c2', 'Sala 6', '2024-09-25 19:04:46'),
(122, 69, 199, 'clSnkx10J1', 'Sala 6', '2024-09-25 19:26:16'),
(123, 64, 198, 'Ld9BX2oUjv', NULL, '2024-09-25 19:26:27'),
(124, 63, 194, '9ucMqNAlNA', 'sala 1', '2024-09-25 19:29:58'),
(125, 82, 202, 'y8lr5thTRk', 'Sala 7', '2024-09-25 20:10:08'),
(126, 86, 203, 'MhuWDeiqgd', 'Sala 6', '2024-09-25 20:22:55'),
(127, 92, 204, 'qRPlPOx4qH', 'sala 2', '2024-09-25 20:36:34'),
(128, 90, 205, 'Jgxxs0wwHE', 'sala 1', '2024-09-25 20:47:11'),
(129, 95, 206, '7xeffiCpGq', NULL, '2024-09-25 21:02:54'),
(130, 82, 209, '7JbnYUZHLY', NULL, '2024-09-26 19:02:10'),
(131, 68, 213, 'tRVvXVOK3P', 'sala 1', '2024-09-26 19:03:00'),
(132, 70, 208, 'WfFn6ZxfMH', NULL, '2024-09-26 19:03:14'),
(133, 69, 215, 'PdUq8KNuzs', 'sala 1', '2024-09-26 19:07:47'),
(134, 88, 217, '87LcW37Dwe', 'sala 1', '2024-09-26 19:11:37'),
(135, 96, 216, 'eCPdFh6N9f', 'sala 1', '2024-09-26 19:11:41'),
(136, 87, 218, 'q2lAf45PBY', NULL, '2024-09-26 19:13:34'),
(137, 106, 220, 'bRON32yJbb', NULL, '2024-09-26 19:22:48'),
(138, 97, 221, 'UePJMUsVUQ', NULL, '2024-09-26 19:30:21'),
(139, 84, 219, 'DYKru6rt6j', NULL, '2024-09-26 19:33:20'),
(140, 107, 222, 'hYRdcAvxaQ', NULL, '2024-09-26 19:36:04'),
(141, 90, 223, 'viTvIqZRez', NULL, '2024-09-26 20:12:31'),
(142, 89, 225, 'e9EmyyK034', NULL, '2024-09-26 20:34:11'),
(143, 108, 226, 'nFgcU6vUeq', NULL, '2024-09-26 20:45:56'),
(144, 92, 224, 'sHfo77ObXs', NULL, '2024-09-26 20:51:53'),
(145, 86, 227, '1kUtgpx7Xm', NULL, '2024-09-26 21:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `tbl_student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `arrival_time` varchar(255) NOT NULL,
  `worktype` varchar(255) NOT NULL,
  `worktypeeng` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `generated_code` varchar(255) NOT NULL,
  `generated_code_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`tbl_student_id`, `user_id`, `student_name`, `arrival_time`, `worktype`, `worktypeeng`, `date`, `generated_code`, `generated_code_url`) VALUES
(154, 5, 'Administrator', 'a las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-18 17:17:33', 'KzbhaJ1n2W', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=KzbhaJ1n2W'),
(164, 63, 'Pamela', 'NULL', 'Sin Trabajo', 'noWork', '2024-09-19 20:09:00', 'aus98kxepB', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=aus98kxepB'),
(166, 64, 'Kelly', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-19 14:20:04', 'oIpOG5Hh1b', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=oIpOG5Hh1b'),
(167, 68, 'Fany', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-19 14:33:48', '0CPekal5iy', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=0CPekal5iy'),
(168, 66, 'Danna', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-19 15:51:26', 'oLwQM5lDql', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=oLwQM5lDql'),
(169, 63, 'Pamela', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-20 14:07:55', 'XXZKEpt74R', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=XXZKEpt74R'),
(170, 64, 'Kelly', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-20 14:14:42', 'IhFhajSEqh', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=IhFhajSEqh'),
(171, 66, 'Danna', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-20 14:17:17', 'fBtzi3upU3', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=fBtzi3upU3'),
(172, 68, 'Fany', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-20 14:31:00', 'stGBtdqF3A', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=stGBtdqF3A'),
(173, 69, 'Jare', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-20 15:12:16', 'kSQXxe5uq7', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=kSQXxe5uq7'),
(174, 70, 'Ingrid', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-20 19:34:49', 'zCIZZBg4gy', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=zCIZZBg4gy'),
(175, 68, 'Fany', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-21 15:51:20', '3sXAqBHSs4', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=3sXAqBHSs4'),
(176, 69, 'Jare', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-21 19:03:38', '1muFX1wgUH', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=1muFX1wgUH'),
(177, 64, 'Kelly', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-21 19:03:48', 'zCBio6UPM1', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=zCBio6UPM1'),
(178, 70, 'Ingrid', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-21 19:05:30', 'snkYzhaEzF', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=snkYzhaEzF'),
(179, 63, 'Pamela', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-21 19:07:37', 'HUZIkhNfyW', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=HUZIkhNfyW'),
(180, 66, 'Danna', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-21 19:19:39', '33q0SOxgRn', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=33q0SOxgRn'),
(181, 68, 'Fany', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-22 14:16:38', '72gdueVRvU', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=72gdueVRvU'),
(182, 69, 'Jare', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-22 14:18:58', 'X0QNXb9Uaj', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=X0QNXb9Uaj'),
(183, 63, 'Pamela', 'NULL', 'Sin Trabajo', 'noWork', '2024-09-22 16:03:31', 'AEXpZ2SKLM', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=AEXpZ2SKLM'),
(184, 70, 'Ingrid', 'NULL', 'Sin Trabajo', 'noWork', '2024-09-22 16:09:16', '73bHBjP871', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=73bHBjP871'),
(185, 66, 'Danna', 'NULL', 'Sin Trabajo', 'noWork', '2024-09-22 16:11:45', 'nxlzpwxDLC', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=nxlzpwxDLC'),
(186, 64, 'Kelly', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-22 16:18:23', 'CfaiAMWbun', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=CfaiAMWbun'),
(187, 63, 'Pamela', 'NULL', 'Sin Trabajo', 'noWork', '2024-09-23 16:52:49', 'AtfPw1E0qC', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=AtfPw1E0qC'),
(188, 70, 'Ingrid', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-23 18:57:50', '19x1AHJJUS', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=19x1AHJJUS'),
(189, 66, 'Danna', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-23 18:57:59', 'ySUHSyvZnG', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=ySUHSyvZnG'),
(190, 70, 'Ingrid', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-24 18:45:30', 'Zk4UaHYFUm', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=Zk4UaHYFUm'),
(191, 69, 'Jare', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-24 19:13:46', 'ocqNshNYzu', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=ocqNshNYzu'),
(192, 63, 'Pamela', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-24 19:17:14', 'GuLbQZWig8', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=GuLbQZWig8'),
(193, 68, 'Fany', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-24 20:39:14', 'ZnbJpfmKhh', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=ZnbJpfmKhh'),
(194, 63, 'Pamela', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-25 15:33:46', '9ucMqNAlNA', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=9ucMqNAlNA'),
(195, 70, 'Ingrid', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-25 15:34:59', 'cNRnHwP9c2', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=cNRnHwP9c2'),
(196, 66, 'Danna', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-25 15:36:34', 'jhdd6HCX4g', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=jhdd6HCX4g'),
(198, 64, 'Kelly', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-25 15:51:48', 'Ld9BX2oUjv', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=Ld9BX2oUjv'),
(199, 69, 'Jare', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-25 16:19:00', 'clSnkx10J1', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=clSnkx10J1'),
(200, 88, 'Mia', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-25 16:48:18', 'PdJaI9JUdp', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=PdJaI9JUdp'),
(201, 93, 'Yulia', 'Antes de las 8pm', 'Quedarse cerca', 'stayNear', '2024-09-25 19:46:24', 'CXePYe00Oo', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=CXePYe00Oo'),
(202, 82, 'Lisa', 'a las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-25 20:09:58', 'y8lr5thTRk', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=y8lr5thTRk'),
(203, 86, 'Jenni', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-25 20:22:40', 'MhuWDeiqgd', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=MhuWDeiqgd'),
(204, 92, 'Maleny', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-25 20:35:40', 'qRPlPOx4qH', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=qRPlPOx4qH'),
(205, 90, 'Daniela', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-25 20:46:58', 'Jgxxs0wwHE', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=Jgxxs0wwHE'),
(206, 95, 'Camila yanet', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-25 21:02:33', '7xeffiCpGq', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=7xeffiCpGq'),
(207, 94, 'daniel casa', 'NULL', 'Sin Trabajo', 'noWork', '2024-09-26 13:44:30', 'CXhTLL6Z5H', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=CXhTLL6Z5H'),
(208, 70, 'Ingrid', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 14:05:19', 'WfFn6ZxfMH', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=WfFn6ZxfMH'),
(209, 82, 'Lisa', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 14:24:56', '7JbnYUZHLY', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=7JbnYUZHLY'),
(210, 95, 'Camila yanet', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 14:29:12', '5WQFqTvlOV', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=5WQFqTvlOV'),
(211, 66, 'Danna', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-26 16:05:11', '08cqiUYsE6', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=08cqiUYsE6'),
(212, 63, 'Pamela', 'NULL', 'Sin Trabajo', 'noWork', '2024-09-26 16:07:13', '2pI35LbFpp', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=2pI35LbFpp'),
(213, 68, 'Fany', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-26 17:07:22', 'tRVvXVOK3P', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=tRVvXVOK3P'),
(214, 64, 'Kelly', 'NULL', 'Sin Trabajo', 'noWork', '2024-09-26 18:54:12', 'nSoLuohliA', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=nSoLuohliA'),
(215, 69, 'Jare', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-26 19:06:57', 'PdUq8KNuzs', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=PdUq8KNuzs'),
(216, 96, 'Karen', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 19:11:12', 'eCPdFh6N9f', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=eCPdFh6N9f'),
(217, 88, 'Mia', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 19:11:19', '87LcW37Dwe', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=87LcW37Dwe'),
(218, 87, 'Elena', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 19:13:22', 'q2lAf45PBY', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=q2lAf45PBY'),
(219, 84, 'Monica', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 19:18:04', 'DYKru6rt6j', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=DYKru6rt6j'),
(220, 106, 'Sheidy', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-26 19:22:35', 'bRON32yJbb', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=bRON32yJbb'),
(221, 97, 'Isabela', 'a las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 19:29:58', 'UePJMUsVUQ', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=UePJMUsVUQ'),
(222, 107, 'Meriyen', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 19:35:53', 'hYRdcAvxaQ', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=hYRdcAvxaQ'),
(223, 90, 'Daniela', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-26 20:11:51', 'viTvIqZRez', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=viTvIqZRez'),
(224, 92, 'Maleny', 'a las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 20:15:48', 'sHfo77ObXs', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=sHfo77ObXs'),
(225, 89, 'Mar', 'Antes de las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-26 20:31:55', 'e9EmyyK034', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=e9EmyyK034'),
(226, 108, 'Norajo', 'Antes de las 8pm', 'Trabajo (con salida)', 'workWithOuting', '2024-09-26 20:42:39', 'nFgcU6vUeq', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=nFgcU6vUeq'),
(227, 86, 'Jenni', 'a las 8pm', 'Trabajo (sin salida)', 'workNoOuting', '2024-09-26 20:59:59', '1kUtgpx7Xm', 'https://cita.norajokaraoke.com/endpoint/add-attendance.php?qr_code=1kUtgpx7Xm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `actual_name` varchar(255) NOT NULL,
  `work_name` varchar(255) NOT NULL,
  `profile` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `verified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `actual_name`, `work_name`, `profile`, `email`, `password`, `type`, `verified`, `token`, `date`) VALUES
(2, 'admin1', 'admin1', 'admin1', 'uploads/Ultra-Instinct-Dragon_Ball-goku.jpg', '1234567890', '$2y$10$7GI4YgpLcs9ybfMTOxFKFeqJyafw7HNp1YHkguw6omooJQyeC1QxO', 1, 1, '', '2024-08-06'),
(5, 'Administrator', 'Muhammad Shakeeb Raza Muhammad Shakeeb Raza', 'Administrator', 'uploads/Ultra-Instinct-Dragon_Ball-goku.jpg', '1234657890', '$2y$10$kEkFz9ielSxoiSLaZ5Qboes8.iApBr5O7lEyiSWPbIaLsmVxWHe6O', 2, 1, '', '2024-08-06'),
(60, 'Daniel', 'Daniel Gonzales', 'Daniel', 'uploads/Cuenta.jpeg', '8186869701', '$2y$10$XFq0H3.P0qw.4v/S1sa.Hu8Bagqq5fwDxO/EXk/VcEXDp5uDbn7YG', 2, 1, '', '2024-09-19'),
(63, 'Pamela', 'Pamela', 'Pamela', 'uploads/IMG_3076.jpeg', '8129160080', '$2y$10$c2/ec00gu4WSbs..11WzhugWhozBiONrjX9jHtMplkmPsaPiVmJbi', 1, 1, '', '2024-09-19'),
(64, 'Kelly', '', 'Kelly', '', '8117537161', '$2y$10$EKk.mIssdWVC3QKMQ2Vi8OuWrQcTN.iP6vBfn2NZZkq37gNfDWx1i', 1, 1, '', '2024-09-19'),
(66, 'Danna', 'Debany Abigail a lópez Gaytan', 'Danna', 'uploads/514EA128-C51D-412B-B3BD-1B591FD27083.jpeg', '8129072544', '$2y$10$x7m9I92maQaLJostE79Rg.nWMDIKC1EzSlXfULSrxJMArrv.rioom', 1, 1, '', '2024-09-19'),
(68, 'Fany', 'Nidia estefany Jaramillo cortez', 'Fany', '', '8131111118', '$2y$10$UDpKBXTik7DBU0L5FteeP.XL28xCH3Mn3/o5jRs4TFkA5TyQjE8he', 1, 1, '', '2024-09-19'),
(69, 'Jare', 'Jaretzi Valeria', 'Jare', 'uploads/E740D6C6-9881-430F-86E1-A7F3929FAF3E.jpeg', '8142825788', '$2y$10$bVqaq4BBzzhg.BHeLARi9OSCvkvZBv33CTkCK/spxYtZndZLUMOke', 1, 1, '', '2024-09-20'),
(70, 'Ingrid', '', 'Ingrid', 'uploads/24390903-11f3-4641-a814-c89a257b013f.jpeg', '8126880427', '$2y$10$k2Jn2Io0mRNMzAnJznerzurEPMKrfEgGuYcEODp5FibEP8yC4TKFC', 1, 1, '', '2024-09-20'),
(82, 'Lisa', 'Raquel Ortiz Zaleta', 'Lisa', 'uploads/IMG_7173.jpeg', '8125963976', '$2y$10$rE9Q72QZJmj/DCZvZi5xFORNPk4a2ufwp27On6zRWpapmkohCr5xC', 0, 1, '', '2024-09-25'),
(83, 'Io', '', 'Io', 'uploads/60DF8AF9-2D23-45B8-9DCD-AEAF0DA01871.jpeg', '8184725213', '$2y$10$vfYSzWOXqQm6Gl5PKSzarOOe7zyAVC8lANOdqdQEy2d1mEv6EcqEO', 0, 1, '', '2024-09-25'),
(84, 'Monica', 'Andrea Sarahi', 'Monica', 'uploads/1AFF3F75-03C4-4D8E-B9E3-8C2F86BAE607.jpeg', '8123225481', '$2y$10$HpAXJvuqHMzLZlF4FaSV6uk4bnfQNn9sfgsU54TZ7wtSF.6ejtEtS', 0, 1, '', '2024-09-25'),
(85, 'Natalia', 'Natalia Cortes', 'Natalia', 'uploads/CAD1DF62-1388-4FD2-AA16-FFA6C18B6B63.jpeg', '8132470549', '$2y$10$683jIgVs7jCmp8XuYkEU.OFCvp01KAT3z0vYGhE.cngkewoLXXq.q', 0, 1, '', '2024-09-25'),
(86, 'Jenni', 'Jenni', 'Jenni', 'uploads/Screenshot_20240601-173815.png', '8132538725', '$2y$10$XWL.H84ttbXVtGiGFLBER.IainULO5wU1udRgM3fOPC/35TPxE7qO', 0, 1, '', '2024-09-25'),
(87, 'Elena', '', 'Elena', '', '8125840868', '$2y$10$EUFuTmvmfgwTKki6.3u4d.dnQyqgsk1U59yWnF5CFhPf2jdnLMZQG', 0, 0, '', '2024-09-25'),
(88, 'Mia', '', 'Mia', 'uploads/232BB72C-E519-49A9-9145-B3747EAC880D.jpeg', '8119618179', '$2y$10$lKu1ZxJPB8Ch3HEnuEvakegPHHE9b24upRiJoNcO7r8vhHK7diOn.', 0, 1, '', '2024-09-25'),
(89, 'Mar', '', 'Mar', '', '8140735603', '$2y$10$GqKy4x.UgcV9LmcrX1Fv0uX0TBfX67QT6gV9TMVqScTxAJHRM52du', 0, 0, '', '2024-09-25'),
(90, 'Daniela', '', 'Daniela', 'uploads/IMG_20240922_210237_565.jpg', '8123581836', '$2y$10$xYJBjTFd7tquHGTrAoWSIu2Yvh2EEUMXWbkUa8f4L1XOuw7AvsdlC', 0, 1, '', '2024-09-25'),
(91, 'Jessica', 'Jessica', 'Jessica', 'uploads/5F688ABF-76A1-4658-A072-924C14BE5159.jpeg', '8124656493', '$2y$10$MV.3YhsIryqU9y9228fIbuEOFSsCYGs8R4vewNiqxDhkT5bKSpN6O', 0, 1, '', '2024-09-26'),
(92, 'Maleny', 'Guadalupe Elizabeth Neri Méndez', 'Maleny', 'uploads/Screenshot_2024-09-25-04-01-03-966_com.miui.gallery.jpg', '8182058897', '$2y$10$O3PxgCxp3Fa.z9GRMJX8ZeXFKvuyKU.8rpwpbdMRaL5CWkzWHZJc2', 0, 1, '', '2024-09-26'),
(93, 'Yulia', 'Lia González', 'Yulia', '', '8123059961', '$2y$10$J0uKatsLY3DngyACYqOl9.NYJhu9fmv0B4XFK9RTT7k0PT7wcmWiy', 0, 1, '', '2024-09-26'),
(94, 'daniel casa', 'Daniel Norajo', 'daniel casa', 'uploads/mexican id sample.png', '8135519965', '$2y$10$pcAQjWnh65wmPa.FPiX1jeRjzRAdV3JDX9bo2OaxuRnMkGw3hFMle', 1, 1, '', '2024-09-26'),
(95, 'Camila yanet', '', 'Camila yanet', 'uploads/IMG_1699.jpeg', '8125992535', '$2y$10$vIJO7/C9Is/qfGEnGTM1Meml9Jf.bDU9E2UMj1.zOw/HnRjMPBuTy', 0, 1, '', '2024-09-26'),
(96, 'Karen', '', 'Karen', 'uploads/IMG_5228.jpeg', '8125768931', '$2y$10$fvenAEZLeb1v5B8.hMhL.OqHp5/jyemqArx9DbUsozTuMc2AMYl3C', 0, 1, '', '2024-09-26'),
(97, 'Isabela', 'Isabela García', 'Isabela', 'uploads/IMG_20240926_203206.jpg', '8131330166', '$2y$10$V6ptGiVF1a3lsPsIN773Vudoe0WdPOmk.g6KmmLwceN8GIYZ8zYOm', 0, 1, '', '2024-09-26'),
(98, 'Devany', '', 'Devany', '', '8128957965', '$2y$10$gLe325Z3EkpmREKHofjtVeVtaht5Fkp9fnU9LQM6fwf3gfuOmxytq', 0, 0, '', '2024-09-26'),
(99, 'Aleshi', '', 'Aleshi', '', '8126158467', '$2y$10$HFwXH.UZPdNDr0hHYK70.uZzvZkUSZG1DKQP5OYW4yf9GdDXKMbLW', 0, 0, '', '2024-09-26'),
(100, 'Analia', 'Analia', 'Analia', 'uploads/IMG_0612.jpeg', '8123889571', '$2y$10$Cam0F5KRisM76iRQmYDiRuAcTW/R9GnhsKj5cFh0iZ/ZxRZlqwfei', 0, 0, '', '2024-09-26'),
(101, 'Laraib', 'Laraib Rabbani', 'Laraib', 'uploads/Front-1.jpg', '03452122139', '$2y$10$5Po2zROsR3NFhTnxlQPQsuOpx9aukY1mQ6INEC14U1UTDIwhBJQMu', 0, 1, '', '2024-09-26'),
(102, 'Ana casa', 'Ana Legal', 'Ana casa', 'uploads/Front-1.jpg', '8186869724', '$2y$10$x1mJa/.yb3.qVUS4NH2vm.Q3ibAWjG3LMHlu8r6OvDvCEzn7j6w.m', 0, 0, '', '2024-09-26'),
(103, 'Emily', '', 'Emily', '', '8128947019', '$2y$10$EpKa.MfQjj4n2OhWK9uwUu.zZ088xME4d6R51.QTZ5uq09c.C6RqC', 0, 0, '', '2024-09-26'),
(104, 'Karina', '', 'Karina', '', '8123795110', '$2y$10$hXt82.dFdZnSD6U2yOLPfem4jLLPcwEXNzArGYvgbS3BvX98Rbh1K', 0, 0, '', '2024-09-26'),
(105, 'Ale', '', 'Ale', '', '8115635838', '$2y$10$w0Ampj4xwy2UDwQsWmlIzey/HyaD86smaQiR4CftmqRhx0dmXRE8O', 0, 0, '', '2024-09-27'),
(106, 'Sheidy', '', 'Sheidy', 'uploads/IMG_7031.jpeg', '8129416990', '$2y$10$psbUXDCztQ41JZKYNifa1.9174tK/XtPGiDUlrXdizStl9GV00GIW', 0, 1, '', '2024-09-27'),
(107, 'Meriyen', '', 'Meriyen', 'uploads/image.jpg', '7822626081', '$2y$10$LI4mbr9Iz2LwXB5r6phNneFz8zamDffXBfCSs246bbTym/o8ivn5m', 0, 1, '', '2024-09-27'),
(108, 'Dariel ', 'Dariell', 'Dariel', 'uploads/64a1d58f-1146-49aa-b424-8915d12be4d3.jpeg', '7651196468', '$2y$10$ZJufSfdbk7sgE/rvtPHFZeSDfi94HwmRhg0/S4rMFzUM/CBsmF8J6', 0, 1, '', '2024-09-27');

-- --------------------------------------------------------

--
-- Table structure for table `user_notes`
--

CREATE TABLE `user_notes` (
  `note_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notes`
--

INSERT INTO `user_notes` (`note_id`, `user_id`, `note_text`, `created_at`, `created_by`) VALUES
(10, 102, 'no drink', '2024-09-26 22:03:28', 'Administrator'),
(11, 101, 'laraib is testing this. checking edit', '2024-09-26 22:04:32', 'Administrator'),
(12, 102, 'no frequent work', '2024-09-26 23:07:03', 'Daniel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`imid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`tbl_attendance_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`tbl_student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notes`
--
ALTER TABLE `user_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `imid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `tbl_attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `tbl_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
