-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 08:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bansach`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `date_order` date NOT NULL,
  `complete_order` date DEFAULT NULL,
  `total` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_user`, `email`, `address`, `phone`, `date_order`, `complete_order`, `total`, `quantity`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(24, 7, 'lamabc@gmail.com', 'Tiên sơn', '0932483572', '2021-02-01', NULL, 480000, 4, 'COD', '0', '2021-02-01 09:51:40', '2021-02-01 09:51:40'),
(25, 1, 'vuhuyentuan1@gmail.com', 'Tiên sơn', '0934483572', '2021-02-01', NULL, 480000, 4, 'COD', '0', '2021-02-01 10:04:18', '2021-02-01 10:26:53'),
(26, 1, 'vuhuyentuan1@gmail.com', 'Tiên sơn', '0934483572', '2021-02-01', NULL, 285000, 3, 'COD', '2', '2021-02-01 10:05:30', '2021-02-01 10:52:59'),
(27, 5, 'hung@gmail.com', 'cau vuot', '0990909091', '2021-02-01', NULL, 100000, 1, 'COD\r\n', '2', '2021-02-01 10:27:42', '2021-02-01 10:52:53'),
(28, 5, 'hung@gmail.com', 'cau vuot', '0990909091', '2021-02-01', NULL, 198000, 2, 'COD', '1', '2021-02-01 10:29:56', '2021-02-01 10:30:22'),
(29, 11, 'vuhuyentuan1@gmail.com', 'Đà Nẵng', '0932483572', '2021-02-02', NULL, 9780000, 98, NULL, NULL, '2021-02-02 04:15:43', '2021-02-02 04:15:43'),
(30, 7, 'lamabc@gmail.com', 'Tiên sơn', '0932483572', '2024-05-03', NULL, 175000, 2, NULL, NULL, '2024-05-02 19:02:53', '2024-05-02 19:02:53'),
(31, 7, 'lamabc@gmail.com', 'Tiên sơn', '0932483572', '2024-05-03', NULL, 178000, 2, NULL, NULL, '2024-05-03 07:52:29', '2024-05-03 07:52:29'),
(32, 7, 'lamabc@gmail.com', 'Tiên sơn', '0932483572', '2024-05-04', NULL, 290000, 3, NULL, NULL, '2024-05-04 07:40:07', '2024-05-04 07:40:07'),
(33, 7, 'lamabc@gmail.com', 'Tiên sơn', '0932483572', '2024-05-04', NULL, 275000, 3, NULL, NULL, '2024-05-04 07:41:37', '2024-05-04 07:41:37'),
(34, 7, 'phuhynhpen@gmail.com', 'hẻm 30/38 lâm văn bền, phường tân kiểng quận 7, thành phố hồ chí minh', '0375948026', '2024-05-04', NULL, 198000, 2, NULL, NULL, '2024-05-04 07:45:40', '2024-05-04 07:45:40'),
(35, 7, 'lamabc@gmail.com', 'Tiên sơn', '0932483572', '2024-05-05', NULL, 100000, 1, NULL, NULL, '2024-05-05 15:17:16', '2024-05-05 15:17:16'),
(36, 7, 'lamabc@gmail.com', 'Tiên sơn', '0932483572', '2024-05-05', NULL, 100000, 1, NULL, NULL, '2024-05-05 15:18:27', '2024-05-05 15:18:27'),
(38, 18, 'phuhynhpen@gmail.com', 'hẻm 30/38 lâm văn bền, phường tân kiểng quận 7, thành phố hồ chí minh', '0375948026', '2024-05-09', NULL, 323000, 3, NULL, NULL, '2024-05-09 04:55:03', '2024-05-09 04:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `status`, `created_at`, `updated_at`) VALUES
(45, 24, 66, 3, 120000, '3', '2021-02-01 09:51:40', '2021-02-01 16:36:43'),
(46, 24, 65, 1, 120000, '0', '2021-02-01 09:51:40', '2021-02-01 09:51:40'),
(47, 25, 66, 2, 120000, '0', '2021-02-01 10:04:18', '2021-02-01 16:15:47'),
(48, 25, 65, 2, 120000, '2', '2021-02-01 10:04:18', '2021-02-01 16:08:24'),
(49, 26, 59, 2, 100000, '2', '2021-02-01 10:05:30', '2021-02-01 16:04:54'),
(50, 26, 60, 1, 85000, '1', '2021-02-01 10:05:30', '2021-02-01 16:08:20'),
(51, 27, 59, 1, 100000, '2', '2021-02-01 10:27:42', '2021-02-01 16:08:27'),
(52, 28, 59, 1, 100000, '0', '2021-02-01 10:29:56', '2021-02-01 10:29:56'),
(53, 28, 42, 1, 98000, '2', '2021-02-01 10:29:56', '2021-02-01 16:06:27'),
(60, 32, 62, 1, 85000, '0', '2024-05-04 07:40:07', '2024-05-04 07:40:07'),
(61, 32, 61, 1, 120000, '0', '2024-05-04 07:40:07', '2024-05-04 07:40:07'),
(62, 32, 60, 1, 85000, '0', '2024-05-04 07:40:07', '2024-05-04 07:40:07'),
(68, 35, 67, 1, 100000, '3', '2024-05-05 15:17:16', '2024-05-09 05:02:59'),
(69, 36, 67, 1, 100000, '2', '2024-05-05 15:18:27', '2024-05-09 05:02:54'),
(71, 38, 59, 1, 100000, '0', '2024-05-09 04:55:03', '2024-05-09 04:55:03'),
(72, 38, 40, 1, 125000, '0', '2024-05-09 04:55:03', '2024-05-09 04:55:03'),
(73, 38, 38, 1, 98000, '0', '2024-05-09 04:55:03', '2024-05-09 04:55:03');

--
-- Triggers `bill_detail`
--
DELIMITER $$
CREATE TRIGGER `trg_add_sold_stored` AFTER INSERT ON `bill_detail` FOR EACH ROW UPDATE store SET stored_product = 	stored_product - new.quantity, sold_product = sold_product + new.quantity WHERE store.id_product = new.id_product
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `body` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `director` varchar(191) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `address`, `phone_number`, `director`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Nhà Xuất Bản Kim Đồng', 'blackbullerk123@gmail.com', 'Hàng Bảnh', '0375948026', 'Vũ Kim Giám Đốc', 'kimdong.jpg', '2021-01-05 02:31:51', '2024-05-05 14:58:12'),
(2, 'Nhà Xuất Bản Kim Sắt', 'kimsat@gmail.com', 'Hàng Quẩy', '0326521524', 'Nguyễn Văn Vip', 'kimsat.jpg', NULL, '2021-01-29 04:42:11'),
(3, 'Nhà Xuất Bản Kim Chỉ', 'lvtri@gmail.com', '77 Lê Đình Lý', '0932483632', NULL, 'kimchi.jpg', '2021-01-11 09:16:55', '2021-01-29 15:19:19'),
(4, 'Nhà Xuất Bản Kim Cương', 'vhung@gmail.com', 'Da Nang Gang', '0905555444', NULL, 'kimcuong.jpg', '2021-01-11 09:42:57', '2021-01-29 04:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_stored_in_day`
--

CREATE TABLE `history_stored_in_day` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_stored` int(10) UNSIGNED NOT NULL,
  `stored_product_in_day` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_stored_in_day`
--

INSERT INTO `history_stored_in_day` (`id`, `id_stored`, `stored_product_in_day`, `created_at`, `updated_at`) VALUES
(53, 45, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(54, 46, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(55, 47, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(56, 48, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(57, 49, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(58, 50, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(59, 51, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(60, 52, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(61, 53, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(76, 68, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(77, 69, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(78, 70, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(79, 71, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(80, 72, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(81, 73, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(82, 74, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(83, 75, '100', '2021-01-20 03:38:22', '2021-01-21 04:30:02'),
(84, 79, '100', '2021-01-20 09:00:00', '2021-01-21 04:30:02'),
(85, 80, '100', '2021-01-20 09:00:00', '2021-01-21 04:30:02'),
(86, 81, '100', '2021-01-20 09:00:00', '2021-01-21 04:30:02'),
(87, 82, '100', '2021-01-20 09:00:00', '2021-01-21 04:30:02'),
(88, 83, '100', '2021-01-20 09:00:00', '2021-01-21 04:30:02'),
(89, 84, '100', '2021-01-20 09:00:00', '2021-01-21 04:30:02'),
(99, 45, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(100, 46, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(101, 47, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(102, 48, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(103, 49, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(104, 50, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(105, 51, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(106, 52, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(107, 53, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(122, 68, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(123, 69, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(124, 70, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(125, 71, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(126, 72, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(127, 73, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(128, 74, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(129, 75, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(130, 79, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(131, 80, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(132, 81, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(133, 82, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(134, 83, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(135, 84, '100', '2021-01-21 04:30:02', '2021-01-22 04:30:01'),
(145, 45, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(146, 46, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(147, 47, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(148, 48, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(149, 49, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(150, 50, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(151, 51, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(152, 52, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(153, 53, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(168, 68, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(169, 69, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(170, 70, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(171, 71, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(172, 72, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(173, 73, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(174, 74, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(175, 75, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(176, 79, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(177, 80, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(178, 81, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(179, 82, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(180, 83, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(181, 84, '100', '2021-01-22 04:30:01', '2021-01-25 04:30:02'),
(191, 45, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(192, 46, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(193, 47, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(194, 48, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(195, 49, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(196, 50, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(197, 51, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(198, 52, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(199, 53, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(214, 68, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(215, 69, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(216, 70, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(217, 71, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(218, 72, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(219, 73, '98', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(220, 74, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(221, 75, '92', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(222, 79, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(223, 80, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(224, 81, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(225, 82, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(226, 83, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(227, 84, '100', '2021-01-25 04:30:02', '2021-01-27 04:30:03'),
(237, 45, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(238, 46, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(239, 47, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(240, 48, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(241, 49, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(242, 50, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(243, 51, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(244, 52, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(245, 53, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(260, 68, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(261, 69, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(262, 70, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(263, 71, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(264, 72, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(265, 73, '98', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(266, 74, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(267, 75, '92', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(268, 79, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(269, 80, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(270, 81, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(271, 82, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(272, 83, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(273, 84, '100', '2021-01-27 04:30:03', '2021-01-28 04:30:02'),
(283, 45, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(284, 46, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(285, 47, '95', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(286, 48, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(287, 49, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(288, 50, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(289, 51, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(290, 52, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(291, 53, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(306, 68, '98', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(307, 69, '98', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(308, 70, '98', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(309, 71, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(310, 72, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(311, 73, '98', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(312, 74, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(313, 75, '88', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(314, 79, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(315, 80, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(316, 81, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(317, 82, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(318, 83, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02'),
(319, 84, '100', '2021-01-28 04:30:02', '2021-01-30 04:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_14_231301_create_bills_table', 1),
(5, '2020_12_15_000524_create_bill_detail_table', 1),
(6, '2020_12_15_000544_create_bill_in_table', 1),
(7, '2020_12_15_000703_create_bill_in_detail_table', 1),
(8, '2020_12_15_000720_create_comment_table', 1),
(9, '2020_12_15_000735_create_menu_table', 1),
(10, '2020_12_15_000754_create_permission_table', 1),
(11, '2020_12_15_000836_create_product_table', 1),
(12, '2020_12_15_000854_create_rating_table', 1),
(13, '2020_12_15_000912_create_roles_table', 1),
(14, '2020_12_15_001027_create_slide_table', 1),
(15, '2020_12_15_001129_create_supplier_table', 1),
(16, '2020_12_15_001429_create_type_product_table', 1),
(17, '2020_12_15_091809_create_foreign_keys', 1),
(18, '2020_12_31_091511_create_companies_table', 2),
(21, '2021_01_04_153929_add_company_id_to_users', 3),
(22, '2021_01_05_114356_add_new_to_products', 4),
(23, '2021_01_08_091026_create_store_table', 5),
(24, '2021_01_20_105556_create_history_stored_in_day_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_company` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `imagedetail` longtext DEFAULT NULL,
  `total_ra` int(11) DEFAULT NULL,
  `total_number` int(11) DEFAULT NULL,
  `publisher` varchar(191) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `pagenumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `product_view` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_type`, `id_user`, `id_company`, `name`, `unit_price`, `promotion_price`, `description`, `image`, `imagedetail`, `total_ra`, `total_number`, `publisher`, `format`, `new`, `status`, `link`, `releasedate`, `language`, `pagenumber`, `size`, `product_view`, `created_at`, `updated_at`) VALUES
(2, 34, 1, 1, 'Án Mạng Trên Chuyến Tàu Tốc Hành Phương Đông', 110000, 75000, 'Một tên giết người trên chuyến tàu tốc hành Phương Đông được phát hiện đã bị giết chết bởi 12 nhát dao khác nhau. Phải chăng hung thủ là người ngoài hay chính 12 hành khách - vốn có mối thù với hắn - thông đồng với nhau để trả thù? Thám tử Poirot đã ra tay và vụ án dần dần được làm sáng tỏ. Kết quả thu được không chỉ đơn thuần là câu trả lời cho vấn đề hung thủ là ai, mà chính là lương tâm của con người trước ánh sáng của công lí.', '1608774811_Murder_on_the_Orient_Express_teaser_poster.jpg', '[]', NULL, NULL, 'Agatha Christie', NULL, 1, '1', 'An-mang-tren-chuyen-tau-toc-hanh-phuong-dong.pdf', NULL, NULL, NULL, NULL, 11, '2020-12-24 01:53:32', '2021-02-02 03:48:02'),
(3, 34, 1, 2, 'Án Mạng Trên Sân Golf', 100000, 85000, 'Án Mạng Trên Sân Golf  Một bức thư kêu cứu kéo thám tử Hercule Poirot tới Pháp. Nhưng anh đến quá trễ. Khách hàng của anh đã chết. Cái xác bị đâm dã man giờ nằm sấp mặt trong một cái hố nông trong sân golf đang xây.', '1608774998_2020_06_25_15_41_20_1.jpg', '[\"1608774998_2020_06_25_15_41_20_1.jpg\",\"1608774998_2020_06_25_15_41_20_2.jpg\",\"1608774998_2020_06_25_15_41_20_10.jpg\"]', 5, 17, 'Agatha Christie', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, 9, '2020-12-24 01:56:38', '2021-01-28 09:48:39'),
(4, 1, 1, 1, 'Ông Trăm Tuổi Trèo Qua Cửa Sổ Và Biến Mất', 140000, 100000, 'Vào ngày sinh nhật lần thứ 100 của mình, cụ ông Allan Karlsson đột nhiên trèo qua của sổ ngôi nhà dưỡng lão – Nhà Già – và biến mất. Ở cái tuổi 100 hiếm ai đạt tới thì cụ có thể đi đâu được? Một cuộc truy tìm trên khắp nước Thụy Điển diễn ra từ phía những người có trách nhiệm chăm nom cụ cũng như chính quyền sở tại.', '1608775290_ong-tram-tuoi-treo-qua-cua-so-va-bien-mat.jpg', '[]', NULL, NULL, 'Jonas Jonasson', NULL, NULL, '1', 'ong-tram-tuoi.pdf', NULL, NULL, NULL, NULL, 7, '2020-12-24 02:01:30', '2021-02-01 13:40:20'),
(5, 1, 1, 2, 'Cô Gái Mù Chữ Phá Bom Nguyên Tử', 120000, 70000, 'Vẫn là cách viết hài hước, vui vẻ, xen lẫn châm biếm, mỉa mai sâu cay, cùng với lượng kiến thức dày đặc về chính trị, lịch sử, xã hội, với những đề tài như bom nguyên tử, phân biệt chủng tộc,… được đan xen trong nội dung câu chuyện. Câu chuyện là cuộc hành trình của cô bé Nombeko từ khu ổ chuột ở Nam Phi với kế hoạch thay đổi cuộc đời mình.', '1608775383_sach-co-gai-mu-chu-pha-bom-nguyen-tu.jpg', '[]', NULL, NULL, 'Jonas Jonasson', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-24 02:03:03', '2021-02-01 13:40:53'),
(7, 41, 1, 2, 'Life 3.0 - Con người trong kỷ nguyên trí tuệ nhân tạo', 85000, NULL, 'Trí tuệ nhân tạo ảnh hưởng như thế nào đến công ăn việc làm, tội phạm, chiến tranh và mọi mặt của đời sống con người?<p>Loài người có thể làm gì để phát triển thịnh vượng nhờ tự động hóa mà không rơi vào nghèo khó và sống thiếu mục đích?</p>', '1609119156_khcn1.jpg', '[]', NULL, NULL, 'Max Tegmark', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-28 01:32:36', '2021-01-06 09:12:56'),
(8, 41, 1, 1, 'Cuộc cách mạng AI', 65000, NULL, 'Ngày nay, sự thay đổi về công nghệ đang diễn ra với tốc độ chóng mặt và theo dự đoán, chỉ trong vòng hai đến ba thập niên nữa, nhân loại sẽ trải qua nhiều thay đổi hơn một nghìn năm trước đây cộng lại. Những thay đổi ở cường độ này thường mang lại nhiều cơ hội đáng kinh ngạc, nó cũng tác động đến nhiều khía cạnh của xã hội và thậm chí trong nhiều trường hợp còn mang tới bạo lực.', '1609119216_khcn2.jpg', '[]', NULL, NULL, 'Brett King', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-28 01:33:36', '2021-01-22 06:28:13'),
(36, 1, 3, 2, 'Đạp xe vì tình từ Ấn sang Âu', 125000, 100000, 'Vào ngày 22 tháng 1 năm 1977, chàng trai trẻ Mahanandia, khi đó 24 tuổi, đã bắt đầu hành trình bằng xe đạp kéo dài 4 tháng từ thành phố Delhi, Ấn Độ đến thị trấn Boras, Thụy Điển, để tìm đến với người bạn đời của mình.', '1610354928_28930.jpg', '[]', NULL, NULL, 'Per J. Andersson', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '520', '20 x 25', NULL, '2021-01-11 08:48:48', '2021-01-11 08:51:40'),
(37, 1, 3, 2, 'Căn phòng khoá', 120000, NULL, 'Chìa khóa của giấc mơ ấy, là một kế hoạch liều lĩnh. Bằng lối kể chuyện thông qua lăng kính của một đứa trẻ khác thường, do chỉ được giáo dục trong môi trường đóng kín là căn phòng, tác giả&nbsp;Emma Donoghue&nbsp;đã đưa người đọc vào một hành trình hấp dẫn, li kì và hồi hộp đến nghẹt thở. Bạn đọc được đưa vào căn phòng của hai mẹ con để thấy thế giới trong đó không chỉ giới hạn trong những thông số mét vuông mà mở ra bất tận bằng ngôn từ của người mẹ, bằng khả năng tưởng tượng của người con.', '1610355095_28869.jpg', '[]', NULL, NULL, 'Emma Donoghue', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '500', '20 x 25', NULL, '2021-01-11 08:51:35', '2021-01-11 08:51:40'),
(38, 1, 3, 2, 'Mắt bão', 150000, 98000, 'Trải qua bao khổ đau mất mát và ám ảnh tâm lý, họ vẫn bên nhau bền chặt, quyết không buông rời. Không chỉ là khúc ca cảm động về tình cảm gia đình, Mắt bão còn khiến người đọc trăn trở về ranh giới giữa Thiện và Ác,', '1610355182_28711.jpg', '[]', NULL, NULL, 'Sunness', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '500', '20 x 25', NULL, '2021-01-11 08:53:02', '2021-01-11 08:53:13'),
(39, 1, 3, 2, 'Quỷ giấu người - Tập 1', 125000, NULL, 'Con Cá sẽ hé mở cho chúng ta một bí mật ẩn giấu trong rừng sâu.', '1610355268_25599.jpg', '[]', NULL, NULL, 'Truyền Thuyết Một Con Cá', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '450', '20 x 25', NULL, '2021-01-11 08:54:28', '2021-01-11 08:54:33'),
(40, 1, 3, 2, 'Trong tầm ngắm', 140000, 125000, 'Khi Zoe Walker nhìn thấy ảnh của mình trên quảng cáo của tờ London Gazette, cô cố gắng tìm ra lý do tại sao nó lại ở đó. Không có một lời giải thích: một bức ảnh lờ mờ, một địa chỉ trang web và một số điện thoại.', '1610356077_23914 (1).jpg', '[]', NULL, NULL, 'Clare Mackintosh', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '400', '20 x 25', NULL, '2021-01-11 09:07:57', '2021-01-11 09:08:04'),
(41, 42, 3, 2, 'Quốc gia thăng trầm', 130000, NULL, 'Bản chất phù du và chật vật của sự tăng trưởng mạnh mẽ giờ đây đã được nhìn thấy rõ, và nó đặt ra một câu hỏi đơn giản', '1610356191_21505.jpg', '[]', NULL, NULL, 'Ruchir Sharma', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '200', '20 x 25', 1, '2021-01-11 09:09:51', '2021-01-29 07:23:45'),
(42, 42, 3, 2, 'Tương lai của quyền lực', 120000, 98000, 'Trong cuốn&nbsp;Tương lai của quyền lực, với lối phân tích gọn gàng chặt chẽ, tác giả đã đưa ra những gợi ý cho việc thảo luận về chủ đề nòng cốt:', '1610356247_19831.jpg', '[]', NULL, NULL, 'Joseph S. Nye Jr.', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '300', '20 x 25', NULL, '2021-01-11 09:10:47', '2021-01-11 09:11:01'),
(43, 42, 3, 2, 'Trật tự thế giới', 100000, 98000, '<div><br></div><div>Trong tác phẩm&nbsp;Trật Tự Thế Giới, Kissinger xuất phát từ Hòa ước Westphalia để phân tích về tương quan giữa các nước, chủ yếu là các cường quốc và các khu vực giữ một vai trò đặc biệt đối với bức tranh địa chính trị thế giới,<br></div>', '1610356311_16322.jpg', '[]', NULL, NULL, 'Henry Kissinger', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '200', '20 x 25', NULL, '2021-01-11 09:11:51', '2021-01-11 09:11:56'),
(44, 43, 3, 2, 'Jack - Cây đậu thần', 85000, 65000, 'Được đặt tên theo cụ tổ bảy đời – người đã đánh bại chín tên khổng lồ chỉ bằng trí thông minh và lòng can đảm của mình, Jack tin rằng mình được sinh ra để tiếp nối sự vĩ đại của ông. Jack lớn lên cùng những câu chuyện li kì về người khổng lồ qua lời kể của bố. Vì thế, cậu hằng ao ước sẽ có ngày được đối mặt với tên khổng lồ thực sự', '1610356494_17442.jpg', '[]', NULL, NULL, 'Liesl Shurtliff', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '370', '30 x 30', NULL, '2021-01-11 09:14:54', '2021-01-11 09:15:01'),
(59, 46, 5, 4, 'Thể thao văn hóa số 20', 120000, 100000, 'Chưa có một thống kê chính thức nhưng đa số người nước ngoài nhập quốc tịch Việt Nam là những cầu thủ đá bóng dù cho người nổi tiếng nhất có lẽ là một người Pháp có tên là André Menras nhưng khi mang thêm quốc tịch Việt Nam thì ông lấy tên Việt là Hồ Cương Quyết', '1610358373_45.jpg', '[]', NULL, NULL, 'Nhiều tác giả', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '300', '25 x 25', 8, '2021-01-11 09:46:13', '2024-05-09 04:41:04'),
(60, 46, 5, 4, 'Thể thao văn hóa số 21', 85000, NULL, 'Thể thao văn hóa số 21', '1610358450_50.jpg', '[]', NULL, NULL, 'Nhiều tác giả', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '300', '25 x 25', 7, '2021-01-11 09:47:30', '2021-02-01 14:39:13'),
(61, 1, 5, 4, 'Luận kiếm toàn cầu', 120000, NULL, 'Theo đuổi “Nhất Đế” “Nhị Hậu” “Tam Vương” “Thất Hầu” “Thập Tam Hào” ba năm dài, trước đêm “Luận kiếm toàn cầu ở Hoa Sơn”, Trần Khải Tâm bất ngờ bị tên tiểu nhân âm hiểm chuốc say không thể tham gia luận kiếm, hôm sau lại bị mai phục dưới chân núi Thiếu Thất, cảnh giới rớt không ngừng.', '1610358708_26719.jpg', '[]', NULL, NULL, 'Võng Lạc Hắc Hiệp', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '300', '25 x 25', 2, '2021-01-11 09:51:48', '2021-01-30 15:10:20'),
(62, 1, 5, 4, 'Vua mua sắm tam giới - Tập 1', 85000, NULL, 'Sinh viên học viện Hoa Hạ Lý Hạo bỗng dưng bị bạn gái đá. Vì sao? Vì cậu chỉ là chàng trai nghèo, bán hàng online, bán những món mỹ phẩm bình thường, không được như người ta đi siêu xe, mua đồ hiệu. Thế rồi bỗng dưng, Hạo Tử phát hiện ra điện thoại mình kết nối được với... Hằng Nga ở cung trăng. Hằng Nga mua hàng cho cậu xong còn quay lại, giới thiệu cho cậu thêm mối khác.', '1610358775_23799.jpg', '[]', NULL, NULL, 'Mộc Tử Hạc', 'Chữ', 1, '1', NULL, NULL, 'Tiếng việt', '300', '25 x 25', 4, '2021-01-11 09:52:55', '2024-05-09 04:53:58'),
(63, 1, 5, 4, 'Cửu nguyệt phi ưng - Tập 2', 120000, NULL, 'Những ánh nắng đầu tiên len lỏi trong màn tuyết nhưng không thể ngăn được cái lạnh khốc liệt làm đóng băng tất cả những tuyết tích tụ lại ở trên đường, những trụ băng trên mái hiên nhà giống như là những cái răng sói đan vào nhau, giống như đang đợi lựa chọn người để nuốt chửng đi. Trên đường không có đến một bóng người, cửa sổ của mọi nhà đều đóng kín, áp lực giống như là bị mây vây kín, không gian sặc mùi sát khí mà có thể làm lạnh cóng bất cứ sự sống nào.', '1610358840_22032.jpg', '[]', 1, 5, 'Cổ Long', 'Chữ', 0, '1', NULL, NULL, 'Tiếng việt', '300', '25 x 25', 1, '2021-01-11 09:54:00', '2021-06-13 04:44:36'),
(64, 1, 5, 4, 'Đa tình kiếm khách vô tình kiếm - Tập 4', 120000, NULL, 'Đa tình kiếm khách vô tình kiếm&nbsp;là một truyện kiếm hiệp nằm trong bộ Tiểu Lý phi đao của nhà văn&nbsp;Cổ Long. Nhân vật chính trong truyện là Thám hoa&nbsp;Lý Tầm Hoan, với tuyệt chiêu phóng phi đao, được võ lâm ca tụng là: Tiểu Lý phi đao, lệ bất hư phát', '1610358908_22005.jpg', '[]', NULL, NULL, 'Cổ Long', 'Chữ', 0, '1', NULL, NULL, 'Tiếng việt', '300', '25 x 25', NULL, '2021-01-11 09:55:08', '2021-01-22 06:34:15'),
(65, 42, 5, 4, 'Donald J.Trump: Đã đến lúc phải cứng rắn', 120000, NULL, 'Ứng cử viên tổng thống của Đảng Cộng hòa trong mùa tranh cử 2016 Donald J. Trump lên kế hoạch làm cho nước Mỹ vĩ đại trở lại như xưa. Bởi theo Trump, Tổng thống Obama là một thảm họa đối với đất nước này. Ông ta đã phá tung nền kinh tế, mở cửa biên giới cho những tên tội phạm bạo lực bước vào, thòng lên vai con cháu chúng ta gánh nặng nợ nần và đi khắp thế giới xin lỗi cho nước Mỹ như thể đất nước vĩ đại nhất thế giới này cần xin lỗi vì là mảnh đất của cơ hội và tự do như trước khi Obama trở thành Tổng thống.', '1610359013_14306.jpg', '[]', NULL, NULL, 'Donald J. Trump', 'Chữ', 0, '1', NULL, NULL, 'Tiếng việt', '200', '25 x 25', NULL, '2021-01-11 09:56:53', '2021-01-22 06:34:14'),
(66, 42, 5, 4, 'Hillary Clinton: Bí mật quốc gia và sự hồi sinh', 120000, NULL, 'Cuốn sách Hillary Clinton – Bí mật quốc gia và sự hồi sinh&nbsp;xoay quanh các hoạt động chính trị quan trọng nhất của bà Hillary Clinton từ cuộc bầu cử Tổng thống năm 2008 cho đến trước cuộc bầu cử 2016, qua đó cho thấy một chân dung, tiểu sử chính trị sắc nét về Hillary Clinton, người có thể trở thành nữ Tổng thống đầu tiên của Hoa Kỳ.', '1610359062_14304.jpg', '[]', NULL, NULL, 'Jonathan Allen - Amie Parnes', 'Chữ', 0, '1', NULL, NULL, 'Tiếng việt', '200', '25 x 25', 5, '2021-01-11 09:57:42', '2024-05-07 07:47:15'),
(67, 45, 6, 1, 'Huỳnh Thạnh Phú', 100000, NULL, 'không có gì hết á', '1714921401_90141262_3192753807617404_2602991481228623872_n.jpg', '[\"1714921401_8613_tp_link_ac1350_archer_c60.jpg\"]', NULL, NULL, 'Thạnh Phú', 'chữ', 1, '1', '8613_tp_link_ac1350_archer_c60.jpg', NULL, 'việt nam', '12', '55 x 55', 1, '2024-05-05 15:03:21', '2024-05-05 15:04:20');

--
-- Triggers `product`
--
DELIMITER $$
CREATE TRIGGER `trg_add_value_to_store` AFTER INSERT ON `product` FOR EACH ROW INSERT INTO store(id_product, all_product_in_store, stored_product, 	sold_product, created_at, updated_at) VALUES (new.id, 0, 0, 0, now(), now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `body` varchar(191) NOT NULL,
  `ra_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `id_user`, `id_product`, `body`, `ra_number`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Rất hay', 5, '2021-01-12 14:02:07', '2021-01-12 14:02:07'),
(7, 1, 3, 'tuấn râu', 1, '2021-01-13 07:58:38', '2021-01-13 07:58:38'),
(8, 1, 3, 'ok', 5, '2021-01-15 04:23:22', '2021-01-15 04:23:22'),
(14, 1, 3, '1', 1, '2021-01-22 07:17:57', '2021-01-22 07:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Quản trị', NULL, NULL),
(2, 'Mod', 'Nhà cung cấp', NULL, NULL),
(3, 'Guest', 'Khách hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'sách hot', 'sách hot', '1609145556_slide1.jpg', 1, '2020-12-23 02:30:25', '2020-12-28 08:52:48'),
(3, 'bìa quảng cáo', 'bìa quảng cáo sách mới', '1715230691_uniqlo1.png', 1, '2024-05-09 04:58:11', '2024-05-09 04:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED DEFAULT NULL,
  `id_bill_detail` int(10) UNSIGNED DEFAULT NULL,
  `all_product_in_store` varchar(191) DEFAULT '0',
  `stored_product` varchar(191) DEFAULT '0',
  `sold_product` varchar(191) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `id_product`, `id_bill_detail`, `all_product_in_store`, `stored_product`, `sold_product`, `created_at`, `updated_at`) VALUES
(45, 36, NULL, '20', '100', '0', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(46, 37, NULL, '20', '100', '0', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(47, 38, NULL, '20', '94', '6', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(48, 39, NULL, '20', '100', '0', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(49, 40, NULL, '20', '98', '2', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(50, 41, NULL, '20', '99', '1', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(51, 42, NULL, '20', '96', '4', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(52, 43, NULL, '20', '100', '0', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(53, 44, NULL, '20', '98', '2', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(68, 59, NULL, '20', '86', '14', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(69, 60, NULL, '20', '96', '4', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(70, 61, NULL, '20', '97', '3', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(71, 62, NULL, '20', '98', '2', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(72, 63, NULL, '20', '97', '3', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(73, 64, NULL, '20', '91', '9', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(74, 65, NULL, '20', '91', '9', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(75, 66, NULL, '20', '74', '14', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(79, 2, NULL, '20', '96', '4', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(80, 3, NULL, '20', '100', '0', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(81, 4, NULL, '20', '99', '1', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(82, 5, NULL, '20', '100', '0', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(83, 7, NULL, '20', '100', '0', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(84, 8, NULL, '20', '100', '0', '2021-01-30 04:30:02', '2021-01-30 04:30:02'),
(85, 67, NULL, '20', '19', '1', '2024-05-05 15:03:21', '2024-05-09 05:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `email`, `address`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(1, 'tuan', '01649397157@gmail.com', 'Tiên sơn', '234832673', '1608360627_hinh-dong-cute-va-de-thuong_112054774.gif', '2020-12-19 06:49:42', '2020-12-21 02:52:11'),
(2, 'lâm', 'lamnguyen@gmail.com', 'Hàm Nghi', '234958763', '1608534549_zgNAc2W (1).gif', '2020-12-21 02:52:37', '2020-12-21 07:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `tnews`
--

CREATE TABLE `tnews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `imagedetail` longtext DEFAULT NULL,
  `news_view` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tnews`
--

INSERT INTO `tnews` (`id`, `name`, `content`, `image`, `status`, `imagedetail`, `news_view`, `created_at`, `updated_at`) VALUES
(2, 'Món ngon ngày Tết qua những trang sách', '<div><br>Mỗi đơn vị làm sách đều chăm chút cho ấn phẩm của mình, gửi tới bạn đọc món ăn tinh thần phong phú dịp Tết Tân Sửu 2021.<br>Từ năm 2019, Công ty Đông A phát hành&nbsp;<em>Sách Tết Kỷ Hợi</em>, nối lại truyền thống làm sách Tết đã đứt gãy khoảng 60 năm. Ba năm nay, một số đơn vị xuất bản đã tham gia làm sách Tết, tạo thành trào lưu đẹp mỗi dịp Tết đến xuân về.<br>Trước thềm Tết Tân Sửu, một số cuốn sách đã kịp ra mắt, gửi món ăn tinh thần đến bạn đọc.<br><em>Sách Tết Tân Sửu 2021</em>. Ảnh:&nbsp;<em>Đ.A.</em><br>Tết xưa, Tết nay trong trang sách<br>Với kinh nghiệm và sự chuẩn bị kỹ càng, Đông A là đơn vị đầu tiên tung ra<em>&nbsp;Sách Tết Tân Sửu 2021</em>. Đây là hợp tuyển văn thơ nhạc họa chủ đề mùa xuân và ngày Tết. Cuốn sách tập hợp tác phẩm của hơn 60 tác giả trong nhiều lĩnh vực nghệ thuật đương thời, bao gồm các nhà văn, nhà thơ, họa sĩ.<br>Các tác phẩm trong sách cho thấy nét đẹp văn hóa truyền thống Việt Nam, những suy tư, tình cảm của con người dịp cuối năm, những trăn trở của người nghệ sĩ trước thời cuộc. Ở đó còn có những vần thơ xuân dịu dàng, mãnh liệt sức sống, những câu chuyện ngày Tết ấm tình người; những bản nhạc xuân, họa phẩm đặc sắc.<br><em>Sách Tết Tân Sửu 2021</em>&nbsp;có bài viết của các nhà văn nổi tiếng như Nguyễn Huy Thiệp, Mạc Can, Hồ Anh Thái; các cây bút mới mẻ nhưng không kém phần hấp dẫn như Uông Triều, Trương Anh Quốc, Nguyễn Ngọc Thuần… Sách có tranh minh họa đặc sắc của các họa sĩ như Thành Chương, Lê Trí Dũng, Đỗ Phấn, Lương Xuân Đoàn, Tạ Huy Long, Kim Duẩn, Ngô Xuân Khôi…<br>Hợp tuyển thơ văn nhạc họa&nbsp;<em>Sách Tết Tân Sửu 2021</em>&nbsp;được in 2021 bản, dày 292 trang. Trong đó, đơn vị làm sách thực hiện 365 cuốn bìa cứng, có bìa áo, kèm hộp đựng sơn mài và tranh sơn mài phục vụ giới sưu tầm.<br><img alt=\"Sach Tet Tan Suu anh 2\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/oplukaa/2021_01_11/sach_Tet_2.jpg\"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sách&nbsp;<em>Tết Việt Nam xưa</em>. Ảnh:&nbsp;<em>Mai Hà Books</em>.<br>Nếu như sách Tết của Đông A là những sáng tác của người đương thời, thì sách Tết của Mai Hà Books lại tìm về nét xuân xưa cũ. Ấn phẩm có tên&nbsp;<em>Tết Việt Nam xưa&nbsp;</em>với các bài viết được chọn lựa từ tạp chí&nbsp;<em>Đông Dương</em>.<br>Cuốn sách mở đầu bằng bài nghiên cứu sâu sắc, tổng quan về Tết cổ truyền của giáo sư Nguyễn Văn Huyên - một học giả uyên bác.<br>Các bài viết sau đó mở ra một hành trình, đưa bạn đọc đến với những nghi lễ, phong tục, thú chơi ngày Tết. Tác giả của các bài viết là những học giả như Nguyễn Văn Vĩnh, Phạm Quỳnh, Trần Văn Giáp…<br>Bài viết trong sách được minh họa bằng hơn 50 bức tranh Tết ngộ nghĩnh, sống động, nhiều tranh vẽ phong cách mỹ thuật dân gian đặc sắc.<br><img alt=\"Sach Tet Tan Suu anh 3\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/oplukaa/2021_01_11/137548988_10158948602177491_1301637699202979798_o.jpg\"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sách&nbsp;<em>Nhâm nhi Tết Tân Sửu.</em>&nbsp;Ảnh:&nbsp;<em>Sách văn học Kim Đồng.</em><br>Sách Tết phục vụ đa dạng đối tượng bạn đọc<br>Nếu như&nbsp;<em>Sách Tết Tân Sửu 2021</em>&nbsp;và&nbsp;<em>Tết Việt Nam xưa&nbsp;</em>là những giai phẩm dành cho đại đa số bạn đọc, một số đơn vị tham gia thị trường sách Tết lại chọn những đối tượng độc giả riêng để phục vụ.<br>Những năm trước, nhà xuất bản (NXB Kim Đồng) thường in những ấn phẩm về Tết như tác phẩm văn chương mang chủ đề mùa xuân, sách về phong tục tập quán ngày Tết… dành cho thiếu nhi. Từ năm 2020, NXB Kim Đồng ra mắt ấn phẩm&nbsp;<em>Nhâm nhi Tết</em>, đến năm nay, “Nhâm nhi Tết” chính thức được chọn làm tên thương hiệu sách Tết riêng của Kim Đồng.&nbsp;<em>Nhâm nhi Tết Tân Sửu</em>&nbsp;có thiết kế tươi vui, thân thiện dành cho bạn đọc nhỏ tuổi.<br>Với ý nghĩa như món ăn tinh thần ngày xuân,&nbsp;<em>Nhâm nhi Tết</em>&nbsp;Tân Sửu đưa bạn đọc đi thăm mùa xuân mọi miền: Đến vùng cao, ghé vào bếp nhà nào ấm lửa, rong chơi trên cao nguyên, ngắm cây nêu ở làng quê Bắc, chậu mai phương Nam, nếm canh miến măng, gà luộc, thịt đông, nem rán, bún thang, lại thêm thịt kho hột vịt, canh khổ qua, dưa món củ kiệu tôm khô…<br>Mỗi ấn phẩm&nbsp;<em>Nhâm nhi Tết Tân Sửu</em>&nbsp;được tặng thêm tấm thiệp xuân làm pop-up 3D, khi mở ra, thiệp sẽ dựng lên mô hình gợi không khi xuân.<br><img alt=\"Sach Tet Tan Suu anh 4\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/oplukaa/2021_01_11/sach_Tet_4.jpg\"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sách&nbsp;<em>Hoài niệm mứt Tết</em>&nbsp;và&nbsp;<em>Tết là nhất</em><em>, Nhất là Tết!</em>&nbsp;Ảnh:&nbsp;<em>NXB Phụ Nữ và Nhã Nam</em>.<br>NXB Phụ Nữ hướng tới độc giả là những người mê ẩm thực, khéo tay hay làm khi phát hành cuốn&nbsp;<em>Hoài niệm mứt Tết</em>. Đây là cuốn sách nấu ăn của hai tác giả Nguyễn Thị Phiên, Đỗ Thị Phương Nhi. Cuốn sách giới thiệu cách thức thực hiện những món mứt truyền thống cho ngày Tết của gia đình Việt.<br>Mứt gừng, mứt bí, mứt hạt sen, mứt kim quất, mứt mãng cầu… những thứ mứt ngày Tết được hướng dẫn cách làm cụ thể từ khâu chọn nguyên liệu, sơ chế, thực hiện, cách bày biện đẹp mắt…<br>Không chỉ là sách dạy nấu ăn,&nbsp;<em>Hoài niệm mứt Tết</em>&nbsp;đưa bạn đọc trở về với hương vị ngọt ngào của những cái Tết xưa.<br>Nhã Nam đưa tới bạn đọc một ấn phẩm vui về ngày Tết:&nbsp;<em>Tết là Nhất, nhất là Tết!</em>&nbsp;của họa sĩ truyện tranh Mèo Mốc (Đặng Quang Dũng).<br>Sách là những câu chuyện vui vẻ, hài hước ngày Tết: Chuyện của ông bà Thường “khăn gói quả mướp” lên thăm con cháu, đi ngó nghiêng phố phường đón Tết; chuyện về quê ăn Tết của hai chị em Ly và Chũn cùng những bài học cho hai đứa trẻ…</div><h3><div><img alt=\"Sach Tet Tan Suu anh 1\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/oplukaa/2021_01_11/thumb_Sach_Tet.jpg\"></div></h3>', '1610426398_sach_Tet_2.jpg', 1, '[\"1610426398_26719.jpg\",\"1610426398_sach_Tet_2.jpg\",\"1610426398_thumb_Sach_Tet.jpg\"]', 433, '2021-01-12 02:33:30', '2024-05-08 13:38:49'),
(3, 'Doraemon có thể tạo ra cả thành phố bằng một chiếc máy ảnh', '<div><br>Máy ảnh thần kỳ của Doraemon có muôn vàn chức năng, từ thiết kế quần áo đến tạo ra hình nộm hay mô hình của cả một thành phố.<br>1.&nbsp;<em>Máy ảnh tạo mốt</em>: Đây được xem là một trong những bảo bối thần kỳ mà Doraemon và nhóm bạn hay sử dụng nhất. Chiếc máy ảnh có thể thiết kế những bộ trang phục khác nhau để phù hợp từng hoàn cảnh. Thậm chí, nó còn \"tự động\" mặc luôn quần áo giúp người sử dụng. Sự hữu ích này khiến cho máy ảnh tạo mốt thường được sử dụng trong các chuyến đi chơi, thám hiểm. Ảnh:<em>&nbsp;Qtmang.</em><br><img alt=\"doraemon anh 2\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/piqbzcvo/2021_01_07/2_dailymotion.jpeg\"><br>2.&nbsp;<em>Máy ảnh ma thuật:</em>&nbsp;Trong tất cả máy ảnh của Doraemon, đây chính là loại đáng sợ nhất. Bảo bối này tạo ra một hình nộm nhỏ giống hệt người được chụp. Mọi tác động vật lý lên hình nộm đều sẽ khiến người đó cảm nhận được y hệt như vậy. Trong truyện, Nobita và nhóm bạn đã gặp rất nhiều rắc rối chỉ vì vô tình sử dụng món bảo bối đáng sợ này. Ảnh:&nbsp;<em>Dailymotion.</em><br><img alt=\"doraemon anh 3\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/piqbzcvo/2021_01_07/Screen_Shot_2021_01_09_at_08.28.48.png\"><br>3.&nbsp;<em>Máy ảnh hai chiều giữ đồ</em>: Giống như tên gọi, chiếc máy ảnh thần kỳ này có khả năng biến vật thể bình thường thành các tấm ảnh, từ đó giúp tiết kiệm diện tích lưu trữ, di chuyển đồ vật. Thậm chí, người dùng có thể chuyển nhà chỉ với duy nhất một thùng ảnh nhẹ nhàng. Ngoài ra, chỉ cần đổ nước nóng lên ảnh là có thể đảo ngược quá trình này. Ảnh:<em>&nbsp;PopsKids</em>.<br><img alt=\"doraemon anh 4\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/piqbzcvo/2021_01_07/Screen_Shot_2021_01_09_at_08.31.43.png\"><br>4.&nbsp;<em>Máy ảnh khuôn mặt:</em>&nbsp;Bảo bổi này của Doraemon có khá nhiều nét đặc biệt. Đầu tiên, nếu chụp ai đó xinh đẹp, dễ thương, nó sẽ cho ra một bức ảnh bình thường. Ngược lại, đối với những người có ngoại hình bình thường, tấm ảnh sẽ chỉ có khuôn mặt mà không đủ ngũ quan. Thứ hai, chiếc máy ảnh này dường như có cảm xúc riêng chứ không đơn thuần là vật vô tri, vô giác. Ảnh:&nbsp;<em>Dailymotion.</em><br><img alt=\"doraemon anh 5\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/piqbzcvo/2021_01_07/Screen_Shot_2021_01_09_at_08.35.45.png\"><br>5.&nbsp;<em>Máy ảnh thời gian</em>: Đây có thể là món bảo bối đi ngược lại với các nguyên tắc thông thường về không, thời gian. Với nó, người dùng có thể chụp lại được các khoảnh khắc trong quá khứ. Điều này phù hợp việc điều tra, tìm kiếm và có thể tạo ra những bằng chứng khó chối cãi. Ảnh:<em>&nbsp;Ten Anime.</em><br><img alt=\"doraemon anh 6\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/piqbzcvo/2021_01_07/Screen_Shot_2021_01_09_at_08.37.52.png\"><br>6.&nbsp;<em>Máy ảnh tạo hình nộm</em>: Chiếc máy ảnh này có thể tạo ra hình nộm của bất kỳ ai. Nói đúng hơn, nó là một lớp ngoại hình giống hệt người được chụp và có thể mặc lên người như các bộ quần áo bình thường. Nếu bảo bối này thực sự được phát minh, chúng ta sẽ phải rất đau đầu khi không thể biết được thực sự ai là ai. Ảnh:&nbsp;<em>Ten Anime.</em><br><img alt=\"doraemon anh 7\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/piqbzcvo/2021_01_07/Screen_Shot_2021_01_09_at_08.43.53.png\"><br>7.<em>&nbsp;Máy ảnh 6 chiều</em>: Máy ảnh 6 chiều có hình dáng giống khối rubik cổ điển. Nó có công dụng chụp ra được những bức ảnh về 6 hướng nhìn khác nhau xung quanh vật thể. Trong truyện, vì lạm dụng món bảo bối, Nobita đã bị một tên cướp bắt và ưu hiếp. May mắn là cậu dùng chính chiếc máy ảnh này để thoát thân. Ảnh:&nbsp;<em>Ten Anime.</em><br><img alt=\"doraemon anh 8\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/piqbzcvo/2021_01_07/5_D_wiki.png\"><br>8.&nbsp;<em>Máy ảnh tạo mô hình</em>: Với món bảo bối này, người dùng có thể tạo ra cả một thành phố cho riêng mình. Đầu tiên, nó có thể tạo ra các mô hình nhỏ giống y hệt vật thể, công trình được chụp. Nếu kết hợp với bảo bối \"Đường hầm thu nhỏ\", người sử dụng có thể làm chủ cả một thành phố. Ảnh:<em>&nbsp;Wiki.<br></em></div><div><img alt=\"doraemon anh 1\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/piqbzcvo/2021_01_07/1_qtmang.jpg\"></div>', '1610425642_img2.jpg', 0, '[\"1610419202_img2.jpg\",\"1610419202_logo1.JPG\",\"1610419202_r1.jpg\"]', 246, '2021-01-12 02:40:02', '2024-05-09 04:58:30'),
(4, 'Trần Đặng Đăng Khoa - người lái xe đi tìm kho báu cuộc đời', '<div><br>Trên chuyến hành trình đi vòng quanh thế giới, Trần Đặng Đăng Khoa tự nhận mình theo bước chân của chàng Santiago trong cuốn sách \"Nhà giả kim\" để đi tìm kho báu đời mình.<br>Đầu năm 2021, phượt thủ, travel blogger Trần Đặng Đăng Khoa trở thành người thứ hai trong lịch sử chương trình&nbsp;<em>Ai là triệu phú</em>&nbsp;phiên bản Việt chạm tới câu hỏi số 15. Đây có thể coi là quả ngọt mà Trần Đặng Đăng Khoa thu được trong suốt những năm tháng đi khám phá thế giới.<br>Được sự cho phép của NXB Trẻ,&nbsp;<em>Zing&nbsp;</em>trích đọc một phần câu chuyện của Trần Đặng Đăng Khoa, in trong tập sách&nbsp;<em>1987+: 30 chưa phải là Tết&nbsp;</em>xuất bản năm 2018<em>,</em>&nbsp;về quyết định kỷ niệm cột mốc tuổi 30 bằng việc lái xe máy đi du lịch vòng quanh thế giới.<br>Hôm nay đã là ngày thứ 207 từ lúc tôi khởi hành chuyến đi vòng quanh thế giới, bắt đầu ở Sài Gòn, đi băng ngang lục địa Á - Âu, qua 24 quốc gia - vùng lãnh thổ và tạm dừng chân tại Chile để chờ xe tới và tiếp tục hành trình.<br>Chuyến đi này nói riêng và cả cuộc đời trước nay ngẫm nghĩ lại dường như là một sự sắp đặt có chủ đích của số phận và duyên kiếp này.<br>Trần Đặng Đăng Khoa và chiếc xe máy đồng hành trên những chuyến đi vòng quanh thế giới. Ảnh:&nbsp;<em>FBNV.</em><br>Thành phố nơi tôi đang ở tên là Santiago, đồng thời là tên nhân vật chính trong cuốn sách nổi tiếng -&nbsp;<em>Nhà giả kim</em>&nbsp;- của Paulo Coelho. Đó là cuốn sách đã truyền cảm hứng rất nhiều cho chuyến hành trình này, và có vẻ như tôi cũng đang đi theo bước chân của chàng Santiago để đi tìm kho báu đời mình.<br>Không biết Santiago \"phiên bản lỗi Gò Công\" này có tìm được kho báu trong chuyến phiêu lưu này hay không, nhưng mọi dấu hiệu tốt lành của cuộc đời và vận mệnh của tôi đã đưa đến ngày hôm nay, trong cuộc phiêu lưu này.<br>\"Tôi yêu tấm bản đồ vô cùng\"<br>Tôi sinh ra là anh cả trong một gia đình nhỏ miền Tây sông nước lúc chuyển giao giữa năm 1986 và 1987 - thời kỳ khó khăn chồng chất của những đứa trẻ chào đời trong giai đoạn ấy.<br>Nhớ lại ngày xưa từ lúc sinh ra đến lúc gia đình có một mái nhà đúng nghĩa của nó là tận 16 năm thì tôi và gia đình đã chuyển nhà đi không biết bao nhiêu lần, lúc thì ở nhờ Thánh thất Cao Đài, lúc ở nhờ nhà chùa, rồi nhà nội, nhà ngoại, khu cư xá của cơ quan này, cơ quan nọ. Đó như là điềm báo đầu tiên cho một cuộc đời sẽ phải dịch chuyển không nguôi.<br><img alt=\"Cau chuyen cua Tran Dang Dang Khoa anh 2\" src=\"https://znews-photo.zadn.vn/w360/Uploaded/bpcpwiq2/2021_01_08/Tran_Dang_Dang_Khoa.jpg\"><br>Phượt thủ Trần Đặng Đăng Khoa. Tranh:&nbsp;<em>Đặng Hồng Quân.</em><br>Dù gia đình khó khăn, trong tám năm đầu đời khi còn là con trai một trong gia đình, tôi được bố mẹ yêu thương và tạo mọi điều kiện để có thể đến trường như những đứa trẻ khác.<br>Tôi còn được bố mua cho hoặc đi mượn rất nhiều sách, làm mấy trò đi tìm kho báu để cùng mấy đứa em họ chơi mỗi khi sinh nhật. Tôi được kể nghe nhiều câu chuyện, được dạy đàn, dạy vẽ vì cơ bản bố cũng là nhạc công và thỉnh thoảng cũng đi vẽ thuê hay cắt tỉa trang trí đám cưới.<br>Nhờ thế, tâm hồn lãng đãng và mơ mộng trong tôi càng lúc càng được vun đắp thêm, rồi cứ hay nghĩ ngợi về những cuộc phiêu lưu đầy mạo hiểm, quyến rũ và mê hoặc.<br>Khi lên cấp hai, mẹ vào làm thủ thư trong thư viện mới khai trương của huyện với một mức lương rất ít ỏi, nhưng đó lại là cơ duyên để tôi có nhiều cơ hội đọc sách hơn so với các bạn cùng trang lứa.<br>Khi em trai tôi ra đời được ba hay bốn năm gì đó, bố mang từ đâu một tấm bản đồ thế giới về rồi dán lên để trang trí cho cái tường trống trơ trống hoác. Chỗ đó cũng là giường ngủ và là chỗ tôi bị phạt quỳ gối, úp mặt vào tường mỗi khi hư hỏng.<br>Tôi hay bị đánh đòn lúc nhỏ vì khi ấy tôi là một thằng nhóc rất nghịch ngợm và ít chịu nghe lời người khác. Rồi ngày qua ngày, sau bao phen phải quỳ gối nhìn tấm bản đồ riết thì tự dưng tôi lại thấy yêu nó vô cùng. Đấy cũng là lần đầu tiên tôi được \"đi vòng quanh thế giới\", nhưng là đi bằng tưởng tượng.<br><img alt=\"Cau chuyen cua Tran Dang Dang Khoa anh 3\" src=\"https://znews-photo.zadn.vn/w360/Uploaded/bpcpwiq2/2021_01_08/50628640_2272914559386558_7057472376543379456_n.jpg\"><br>Tuổi 30 của Trần Đặng Đăng Khoa được kể lại trong cuốn sách&nbsp;<em>1987+: 30 chưa phải là Tết.&nbsp;</em>Ảnh:<em>&nbsp;NXB Trẻ.</em><br>Lúc cấp một, cấp hai thi thoảng tôi cũng được gia đình cho đi tham quan với trường hoặc với hai bên nội - ngoại, lần nào đi qua khỏi cổng khu du lịch cũng xin đi riêng, chạy lòng vòng đầu này, đầu kia, đủ các ngóc ngách rồi tới giờ hẹn lại ra cổng về chứ không chịu đi chung với ai.<br>Có lần mê chơi, tôi trễ giờ hẹn hai tiếng đồng hồ. Không thấy cậu con trai ra ngoài, nhà nhờ gọi loa thông báo cũng không thấy, cuối cùng bao lâu tôi mới mò ra, làm mọi người hoảng hồn và giận dữ. Lần đó về, tôi bị đánh đòn rất đau.<br>Tuy nhiên, nhờ lần bị phạt quỳ gối rất lâu ấy mà tôi đã học thuộc được thêm tên và vị trí gần như tất cả các nước ở châu Phi trên bản đồ. Ước mơ được đi khắp nơi trên thế giới bằng chính đôi chân đã dần hình thành trong tôi từ dạo ấy.<br>Đi vòng quanh thế giới bằng xe máy<br>Thời gian qua đi, như nhiều cậu học trò khác đồng trang lứa, tôi rời quê nhà lên Sài Gòn đi học, rồi ra trường đi làm hết năm này đến năm khác. Cuộc sống của tôi trôi qua lặng lẽ, có chăng là những ngày cuối tuần hay xách xe lang thang với bạn bè ở gần gần Sài Gòn.<br>Lâu lâu được nghỉ dài ngày hơn thì tôi đi xa hơn qua các tỉnh khác, rồi đến Tết hay giữa những lần chuyển việc thì đi xuyên Việt, đi qua các nước Đông Nam Á khác.<br>Lúc ấy, tôi mới nghĩ là sao mình đã đi được xa đến vậy, thì tại sao không lên kế hoạch đi xa hơn nữa, ra khỏi châu Á, qua các châu lục khác hoặc đi một vòng Trái Đất luôn, nhưng sẽ đi với chính chiếc xe máy duy nhất và gắn bó với mình từ trước đến nay?!<br>Vậy là giấc mơ ngày xưa được tái khởi động và chuẩn bị từng bước một. Kinh nghiệm thì sau nhiều năm tôi đã có, giờ chỉ cần lo vấn đề thủ tục giấy tờ, visa, tìm công việc sẽ làm trên đường để có kinh phí đi lại.<br>Hơn hai năm trước ngày khởi hành, tôi ngồi tính toán lộ trình, lên kế hoạch sẽ đi nước nào, ngồi nghiền ngẫm các bài viết trên mạng về những người đã đi trước rồi ghi ghi, chép chép, rồi lại mang một đống bản đồ về dán đầy phòng để vẽ vời và ghi chú vào đó.<br>Hai năm trôi qua, nhiều lúc cứ tưởng phải bỏ cuộc vì có quá nhiều vấn đề phát sinh và không thể đưa ra lời giải đáp cho chính những câu hỏi của bản thân về chuyến đi này.<br>Vậy mà cuối cùng những vấn đề vướng mắc còn lại cũng được giải quyết, tôi chỉ còn vỏn vẹn hơn ba tháng để chạy nước rút hoàn tất mọi thứ trong các khâu còn lại, từ viết đơn xin nghỉ phép, mua thêm ít đồ dùng hoặc đi mượn cho đỡ tốn, rồi đi sửa xe, thay phụ tùng mới, làm nốt các giấy tờ còn lại, đi xin visa vài nước.<br><img alt=\"Cau chuyen cua Tran Dang Dang Khoa anh 4\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/bpcpwiq2/2021_01_08/hh.jpg\"><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Trần Đặng Đăng Khoa ở Chile. Ảnh:&nbsp;<em>FBNV.</em><br>Những ngày cuối trước khi lên đường thì tôi tạm biệt bạn bè, người thân, gia đình vì không biết bao giờ mới được gặp lại. Càng gần tới ngày đi, cứ nghĩ là sẽ rất phấn khởi và hồ khởi vì cuối cùng ngày ấy cũng đã đến.<br>Nhưng sự thật thì không vậy, cứ nghĩ đến cảnh những ngày sắp tới đi đâu, làm gì cũng chỉ có một mình ở một nơi xa lạ, không người thân thích, không quen biết ai, rồi không biết chuyện gì sẽ xảy ra thì tôi lại lo lắng vô cùng.<br>Đêm nào tôi cũng nằm mơ, nhiều lần cũng thoáng nghĩ hay là thôi không đi nữa, ở nhà đi làm tiếp, lập gia đình cho xong... Nhưng do khát khao được khám phá thế giới quá lớn, đã tốn quá nhiều công sức và thời gian chuẩn bị cho nó thì không thể bỏ cuộc được.<br>Vậy là rạng sáng ngày 1/6/2017, tôi rời Sài Gòn về cửa khẩu Mộc Bài ngủ một đêm, để sáng hôm sau nói lời tạm biệt Việt Nam và xin chào thế giới.</div><div><img alt=\"Cau chuyen cua Tran Dang Dang Khoa anh 1\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/bpcpwiq2/2021_01_08/36.jpg\"></div>', '1610421635_product2.jpg', 1, '[\"1610421635_img2.jpg\",\"1610421635_logo1.JPG\",\"1610421635_r1.jpg\"]', 1235, '2021-01-12 03:20:35', '2021-01-29 07:35:26'),
(5, 'Trưng bày tranh minh họa sách Tết', 'Thời gian qua, giới yêu sách đón nhận hai ấn phẩm văn chương có tranh minh họa và thiết kế mỹ thuật ấn tượng:&nbsp;<em>Truyện ngắn Nguyễn Huy Thiệp</em>&nbsp;và&nbsp;<em>Sách Tết Tân Sửu 2021</em>.<br>Minh họa bài viết&nbsp;<em>Văn chương và ẩm thực</em>&nbsp;(tác giả Hồ Anh Thái), tranh của họa sĩ Ngô Xuân Khôi. Nguồn:&nbsp;<em>Đ.A</em>.<br>Các họa sĩ nổi tiếng đương thời được mời minh họa cho sách như: Thành Chương, Đỗ Hoàng Tường, Đào Hải Phong, Hoàng Phượng Vỹ, Trần Trọng Vũ…, cùng những tên tuổi trong làng minh họa như Tạ Huy Long, Kim Duẩn, Đặng Hồng Quân, hay họa sĩ nổi tiếng trong giới trẻ như Thăng Fly.<br>Mỗi họa sĩ một phong cách, lại có cách cảm tác phẩm văn chương khác nhau, đã tạo nên sự phong phú về mỹ thuật cho hai ấn phẩm.&nbsp;<em>Truyện ngắn Nguyễn Huy Thiệp</em>&nbsp;và&nbsp;<em>Sách Tết Tân Sửu 2021</em>&nbsp;đều được bạn đọc đón nhận vì chất lượng văn chương và vẻ đẹp hình thức.<br><div>Một số tác phẩm minh họa từ hai cuốn sách trên được trưng bày tại Hà Nội từ ngày 28/1 đến 3/2. Phòng tranh giới thiệu tới bạn đọc và công chúng yêu nghệ thuật 13 bức minh họa cuốn&nbsp;<em>Truyện ngắn Nguyễn Huy Thiệp</em>&nbsp;và 7 bức minh họa đại diện trong cuốn&nbsp;<em>Sách Tết Tân Sửu 2021</em>.</div><div><img alt=\"Trung bay tranh anh 2\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/oplukaa/2021_01_27/141994185_3829540880399656_758756326879679746_o.jpg\"><br>Họa sĩ Thành Chương (phải) và ông Nguyễn Việt Thắng - Giám tuyển Đông A Gallery - bên bức minh họa truyện&nbsp;<em>Tướng về hưu</em>&nbsp;của Nguyễn Huy Thiệp. Ảnh:&nbsp;<em>Đông A Gallery</em>.<br><em>Truyện ngắn Nguyễn Huy Thiệp</em>&nbsp;ấn bản kỷ niệm 70 năm ngày sinh tác giả, ngay sau khi phát hành, đã nhận được sự đón nhận nồng nhiệt của đông đảo bạn đọc. Đến nay, sách đã được tái bản.<br>Ngay từ bản in năm 2007, nhà văn Nguyễn Huy Thiệp đã mời nhiều họa sĩ đương đại vẽ minh họa cho tập sách. Đến ấn bản năm 2020, Công ty sách Đông A tiếp tục mời nhiều họa sĩ tên tuổi minh họa bổ sung cho cuốn sách. Trong đó, 13 minh họa sẽ được in trong ấn bản S100 (sách giới hạn chỉ làm 100 bản đặc biệt)&nbsp;<em>Truyện ngắn Nguyễn Huy Thiệp</em>.<br><br></div><div><img alt=\"Trung bay tranh anh 1\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/oplukaa/2021_01_27/15.jpg\"><br>Còn&nbsp;<em>Sách Tết Tân Sửu 2021</em>&nbsp;là hợp tuyển văn thơ nhạc họa có chủ đề mùa xuân và ngày Tết. Cùng những con chữ tâm huyết là những trang minh họa mang hương sắc mùa xuân từ các họa sĩ đương đại.<br></div>', '1611909657_141994185_3829540880399656_758756326879679746_o.jpg', 1, '[]', 68, '2021-01-29 08:39:10', '2024-05-07 09:45:11'),
(6, 'Sách Tết 2021 - giao hòa xưa và nay', '<p>Bước sang năm thứ ba kể từ khi thú chơi sách Tết được khôi phục, đã có đơn vị âm thầm rút lui, đồng thời, lại xuất hiện thêm những đơn vị mới gia nhập thị trường.</p><span><div><img alt=\"Xu huong sach Tet anh 1\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/oplukaa/2021_01_14/l6c_iwvr.jpg\"></div><p>Sách&nbsp;<em>Phong vị xuân xưa</em>&nbsp;(Tri Thức Trẻ Books liên kết với NXB Hội Nhà văn).</p></span><h3>Tìm về Tết xưa</h3><p>Không hẹn mà gặp, 2 “tân binh” tham gia thị trường sách Tết năm nay lại có chung ý tưởng khi cùng tìm về phong vị Tết xưa. Cuốn sách&nbsp;<em>Tết Việt Nam xưa&nbsp;</em>là món quà Tết mà MaiHaBooks liên kết với NXB Thế giới gửi tới độc giả.</p><p>Cuốn sách được tuyển dịch kỹ lưỡng, mở đầu với bài nghiên cứu sâu sắc, như một tổng quan về Tết cổ truyền Việt Nam của học giả Nguyễn Văn Huyên. Tiếp đó, độc giả sẽ bước vào hành trình Tết của người Việt qua những nghi lễ, phong tục, thú chơi thấm đẫm “tâm hồn Việt Nam” trong sự khắc họa uyên bác, tinh tế, gần gũi mà sống động của các học giả Nguyễn Văn Vĩnh, Phạm Quỳnh, Trần Văn Giáp, Paul Boudet, Jean Marquet, Georges Pisier, Nguyễn Tiến Lãng, Mạnh Quỳnh…</p><p>Trong khi đó, cuốn&nbsp;<em>Phong vị xuân xưa</em>&nbsp;do Tri Thức Trẻ Books liên kết với NXB Hội Nhà văn thực hiện, được sưu tầm, tuyển chọn từ nhiều sách, báo, tạp chí trong giai đoạn từ 1920 đến khoảng năm 1945.</p><p>Với tiêu chí hay, độc, lạ, các tác giả đã lựa chọn kỹ càng từ nhiều nguồn tài liệu dường như đã phủ một lớp bụi thời gian, dường như đã ngủ yên trong một thời gian tương đối dài, nay chợt bừng tỉnh.</p><p>Hàng loạt cây bút quen thuộc, nổi tiếng trong giai đoạn Pháp thuộc sẽ có mặt trong cuốn sách như: Lê Tràng Kiều, Lã Xuân Choát, Ứng Hòe Nguyễn Văn Tố, Hoài Thanh, Lưu Trọng Lư, Tản Đà Nguyễn Khắc Hiếu, Á Nam Trần Tuấn Khải...</p><p>Theo bạn đọc Thúy Diễm (quận Bình Thạnh, TP.HCM), thời gian trôi qua mài mòn tất cả, cả những phong tục lâu đời cũng phần nào biến đổi. Chẳng hạn, Tết Việt bây giờ khác nhiều lắm thời xa xưa. Chính vì vậy, việc những cuốn sách viết về Tết xưa sẽ là một nhân tố quan trọng, giúp khơi gợi những vẻ đẹp đang dần bị mai một.</p><p>“Yêu Tết xưa, yêu những truyền thống đẹp qua những trang sách giúp người đọc, đặc biệt là giới trẻ sẽ càng trân trọng tết hơn. Đặc biệt, những kiến thức trong sách viết về Tết xưa sẽ lý giải những phong tục đã trở thành xưa cũ, những việc làm ta có thể đã thấy bố mẹ hay ai đó thực hiện trong ngày tết mà không biết rõ nguyên nhân hay ý nghĩa của nó”, bạn đọc Thúy Diễm chia sẻ.</p><span><img alt=\"Xu huong sach Tet anh 2\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/oplukaa/2021_01_14/Nham_nhi_Tet_2021_2_.jpg\"><p>Sách&nbsp;<em>Nhâm nhi Tết Tân Sửu</em>. Ảnh:&nbsp;<em>NXB Kim Đồng</em>.</p></span><h3>Trân quý tết nay</h3><p>Bước chân vào thị trường sách Tết từ năm ngoái bằng ấn phẩm&nbsp;<em>Tết đoàn viên</em>, nhưng năm nay, thương hiệu sách Sống đã âm thầm rút lui khỏi thị trường. Hai đơn vị còn lại là Công ty sách Đông A và NXB Kim Đồng sau thời gian chuẩn bị đã giới thiệu đến độc giả những ấn phẩm đặc sắc, mang phong cách riêng của từng đơn vị.</p><p>Giống như các năm trước, ấn phẩm&nbsp;<em>Sách Tết Tân Sửu 2021</em>&nbsp;do Đông A liên kết với NXB Văn học cũng được nhà văn Hồ Anh Thái tuyển chọn. Đây tiếp tục là món quà xuân thú vị, người già đọc để hoài nhớ Tết xưa còn người trẻ đọc để trân quý tết nay. Ngoài phiên bản thường (292 trang) với giá bìa 328.000 đồng,&nbsp;<em>Sách Tết Tân Sửu 2021</em>&nbsp;còn có phiên bản bìa cứng có bìa áo, hộp sơn mài, tranh sơn mài với giá lên tới 999.000 đồng dành cho dân chơi sách.</p><p>Góp mặt trong ấn phẩm này là hơn 60 tác giả trong nhiều lĩnh vực, bao gồm nhà văn, nhà thơ, họa sĩ… Ngoài những tên tuổi đã để lại dấu ấn đậm nét trên văn đàn Việt như Ma Văn Kháng, Nguyễn Huy Thiệp, Hồ Anh Thái…; còn có những cái tên mới mẻ hơn và không kém phần hấp dẫn như Uông Triều, Trương Anh Quốc, Nguyễn Ngọc Thuần, Văn Thành Lê...</p><p>Đặc biệt, bên cạnh việc tuyển lựa những tác phẩm đặc sắc về mùa xuân và ngày tết, những người làm sách đã mời các họa sĩ tên tuổi như Thành Chương, Lê Trí Dũng, Đỗ Phấn, Lương Xuân Đoàn, Đỗ Hoàng Tường, Hoàng Phượng Vỹ, Tạ Huy Long… tham gia minh họa sách.</p><p>Tiếp mạch&nbsp;<em>Nhâm nhi Tết 2020</em>, năm nay NXB Kim Đồng ra mắt<em>&nbsp;Nhâm nhi Tết Tân Sửu</em>. Ấn phẩm gồm các sáng tác thơ, truyện, nhạc, cả về ẩm thực xoay quanh chủ đề Tết xưa và Tết nay, về con trâu.</p><p>Sách tuyển lại một số sáng tác của các tác giả lớn như Tô Hoài, Võ Quảng, Huy Cận và các sáng tác mới của các nhà văn hiện nay như Trần Đức Tiến, Mã A Lềnh, Dương Thuấn...</p><p>Đáng chú ý trong ấn phẩm năm nay là phần “Nhạc” với bài viết<em>&nbsp;Trăm năm hai nhạc sĩ tài hoa</em>, viết về nhạc sĩ Lưu Hữu Phước và GS Trần Văn Khê. Ấn phẩm được in màu toàn bộ, được đặt trong một chiếc hộp đẹp đẽ, như một món quà xuân mà mỗi người có thể mang tặng bạn bè, người thân.</p><p>Sau 3 năm sách Tết trở lại, kể từ sau thời gian gián đoạn hơn 60 năm, không thể phủ nhận các ấn phẩm sách Tết đã góp thêm vào đời sống tinh thần của người Việt.</p><p>Tuy nhiên, theo dõi các ấn phẩm sách Tết trong 3 năm trở lại đây, chúng ta dễ thấy có một nguy cơ về tình trạng “giậm chân tại chỗ” mà những người thực hiện cần lưu ý để những ấn phẩm sau duy trì được phong độ, xứng đáng là ấn phẩm mỗi năm chỉ có một lần.</p>', '1611910218_Nham_nhi_Tet_2021_2_.jpg', 1, '[]', 232, '2021-01-29 08:50:18', '2021-02-01 13:52:54'),
(7, 'Người Hà Nội chen chân du xuân ở Phố sách', '<p>Khác hẳn sự vắng lặng của ngày thường, Phố sách Hà Nội trở nên nhộn nhịp những ngày đầu năm. Từ mùng 3 Tết âm lịch (ngày 27/1), Sở Thông tin và Truyền thông Hà Nội phối hợp với Hội Xuất bản Việt Nam tổ chức Phố sách Xuân Canh Tý 2020. Từ hôm khai mạc, chương trình luôn thu hút đông đảo người tham dự.</p><p>Dù thời tiết Hà Nội đang rét đậm, nhưng không khí ở Phố sách trở nên ấm hơn với sắc hoa đào, hoa cúc và tấp nập người qua lại. Nhiều nhất là những gia đình đưa con đi mua sách, lì xì sách cho con.</p><span><div><img alt=\"Pho sach nhon nhip dau nam anh 1\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/oplukaa/2020_01_30/83642619_3487072291365756_8696704176148709376_n.jpg\"></div><p>Người Hà Nội đi mua sách và tham gia các sự kiện văn hóa đọc. Ảnh:&nbsp;<em>Phố sách Hà Nội</em></p></span><p>Anh Trần Vũ Dũng (Tôn Đức Thắng) ngồi trên băng ghế nghỉ với hai túi sách nặng. Trong đó là những cuốn sách thiếu nhi, truyện tranh và bộ&nbsp;<em>Tam quốc diễn nghĩa</em>. Anh nói đây là lần đầu tiên đưa vợ con tới Phố sách và cảm nhận không khí đông vui như lễ hội.</p><p>“Con thứ hai của tôi thích đọc truyện, bình thường vợ tôi sẽ mua qua mạng, nhưng dịp đầu năm này tôi muốn đưa con tới lựa chọn sách”, anh Dũng nói. Bản thân anh cũng mua cho mình bộ truyện mà anh rất thích khi xem phim chuyển thể.</p><p>“Tôi sẽ đưa con trở lại Phố sách. Sau này sẽ đưa con đi vào thứ 7, chủ nhật cho đỡ đông”, anh Dũng nói.</p><p>Tương tự, anh Trần Đức Quyền - giáo viên tại Văn Giang, Hưng Yên - cũng đưa hai con gái đi mua sách. Anh cho biết ở nhà hai con đều ham đọc, con gái lớn thích đọc truyện của Nguyễn Nhật Ánh, con gái nhỏ thích các câu chuyện về công chúa. Vì thế anh đưa con tới lựa sách.</p><p>Bản thân anh Quyền cũng mua cho mình cuốn&nbsp;<em>Con hủi</em>&nbsp;(Helena Mniszek) - tiểu thuyết mà anh đã đọc năm 18 tuổi - nay có ấn bản mới, đẹp thì mua về đọc lại. “Tôi mua được tầm 10 cuốn, ngày xuân hay bất cứ ngày nào đầu tư sách đều không lỗ, vì sách là tài sản quý”, anh Quyền nói. Anh cho biết thêm, ngoài Phố sách, vào dịp cuối tuần anh cũng hay đưa con tới cà phê sách.</p><span><img alt=\"Pho sach nhon nhip dau nam anh 2\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/oplukaa/2020_01_30/5.jpg\"><p>Nhiều gian hàng chuẩn bị bao lì xì tặng bạn đọc mua sách. Ảnh:&nbsp;<em>Việt Linh</em></p></span><p>Bên cạnh bán sách với giá ưu đãi, Phố sách Xuân còn có nhiều hoạt động phong phú như viết thư pháp, thực hành làm tranh từ vải vụn, hoạt động cùng tô màu bức tranh thành phố, thưởng trà… Các gian sách cũng thực hiện nhiều chương trình tri ân bạn đọc như tặng bao lì xì, tặng chữ thư pháp theo yêu cầu...</p><p>Chương trình Phố sách Xuân Canh Tý kéo dài tới ngày 10 Tết (ngày 3/2) với nhiều hoạt động như: Cuộc thi vẽ tranh chủ đề “Những truyện cổ tích và Lịch sử Việt Nam” (mùng 6 Tết), Giới thiệu tác phẩm&nbsp;<em>Tìm hiểu về lịch sử Thăng Long, Đông Đô - Hà Nội 1000 năm văn hiến</em>, Chương trình văn nghệ dân gian truyền thống “Hà Nội 36 phố phường” (mùng 7 Tết); Hội thi “Đệ nhất cờ tướng Thăng Long”, thi “Thư họa ngày xuân” (mùng 8 Tết); Workshop “Đọc sách tương tác - Kết nối yêu thương”, chương trình “Mẹ là docter chef” (mùng 9 Tết); Chương trình ca nhạc chào mừng kỷ niệm 90 năm thành lập Đảng Cộng sản Việt Nam, 90 năm thành lập Đảng bộ Thành phố Hà Nội “Đảng - Mùa xuân - Dân tộc”, tọa đàm chuyên đề “Tư tưởng Hồ Chí Minh về xây dựng và chỉnh đốn Đảng” (mùng 10 Tết)…</p>', '1611910314_5.jpg', 1, '[]', 316, '2021-01-29 08:51:54', '2024-05-09 04:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Văn học nghệ thuật', '2020-12-21 03:24:01', '2020-12-30 08:02:45'),
(34, 'Truyện - Tiểu thuyết', '2020-12-24 01:51:07', '2020-12-24 01:51:07'),
(41, 'Khoa học công nghệ – Kinh tế', '2020-12-26 03:24:45', '2020-12-26 03:24:45'),
(42, 'Chính trị – pháp luật', '2020-12-28 01:28:14', '2020-12-28 01:28:14'),
(43, 'Sách thiếu nhi', '2020-12-28 01:30:23', '2021-01-29 14:42:32'),
(45, 'Sách kỹ năng', '2020-12-29 01:46:27', '2021-01-11 07:42:37'),
(46, 'Tạp chí - chuyên đề', '2020-12-29 01:46:37', '2021-01-11 07:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_role` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `is_verified` int(10) UNSIGNED DEFAULT 0,
  `email_verified_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `verification_code` varchar(255) DEFAULT NULL,
  `id_company` int(10) UNSIGNED DEFAULT NULL,
  `full_name` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_role`, `is_verified`, `email_verified_at`, `verification_code`, `id_company`, `full_name`, `username`, `password`, `email`, `address`, `phone`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-05-09 05:01:48.797270', '', NULL, 'Thạnh Phú', 'admin@gmail.com', '$2y$10$rOc0g6.yYYhHbBXfcfceGe163M.9U35ybJVm2wLhCosqQyFdz8LKG', 'phuthanhuynh268@gmail.com', 'Đồng Tháp', '0375948026', NULL, 'fiuCVxp0IQdxBB1DwFy3VlUqNJ0azk46OLJ5z3GL4dPnE5dSif7MlwtcYC39', '2020-12-19 03:17:02', '2024-05-04 07:37:01'),
(3, 2, 1, '2024-05-05 15:10:54.053963', '', 2, 'Kim Sắt', 'tuan@gmail.com', '$2y$10$7vLNe8eW9zlgKIH.pKZ1Y.0IQBlpP7ZIEoprEPkzfZvrBpe.37eh.', '123@gmail.com', 'Đà Nẵng', '0925662142', NULL, 'vgZ6r5EVsJlktasm8BQHQxwBSAFkulDhPsxtpfzd6zH9PSacfnHGjMk0eWEF', '2021-01-05 06:36:47', '2024-05-05 15:10:54'),
(5, 2, 1, '2021-02-02 02:42:20.144735', '', 4, 'ngo van hung', 'hung@gmail.com', '$2y$10$ZVtCE7rIRYa/LtoTuxOscOK5GH1aCmUqxXpBEiPxQaRoEDa6u0SUu', 'hung@gmail.com', 'cau vuot', '0990909091', NULL, 'SUHHzE5ZJ8knzJKUO8OTuaBM8uRtumy72edTP25sHX37f942iLCKXITNx44O', '2021-01-11 09:43:35', '2021-01-11 09:43:35'),
(6, 2, 1, '2024-05-09 05:03:55.964980', '', 1, 'Kim Đồng', 'lam123@gmail.com', '$2y$10$ome60l2esvye8CcEcX48Fe2Yw3YtS3ejjdjpocxTq.VHGNSmcoO22', 'kimdong@gmail.com', 'Đồng Tháp', '0375948021', NULL, 'dgQY38ItJTgTeEUPeO71uH1DRTxvbQqPJxbEL2Bn877AEiQLiUS3ZsUBAa0h', '2021-01-19 04:27:14', '2024-05-05 15:08:51'),
(7, 3, 1, '2024-05-06 06:50:32.755677', '', NULL, 'Phú nè', 'lamabc@gmail.com', '$2y$10$uAFXRrnj.h6hqY7HFJOhgumG7Ht/sfajRNrGrWmlidFU9jtywk3hy', 'thanhphu@gmail.com', 'Tiên sơn', '0932483572', NULL, '270gGXQZRbJdjEeEyVmMM8QPY7ZsqBT1pH7iwCIlFYaWLKfu2X0DqvLc7XBL', '2021-01-27 03:05:26', '2024-05-05 15:20:01'),
(11, 3, 1, '2021-06-20 15:52:39.509463', NULL, NULL, 'Vũ Tuân', 'vuhuyentuan1@gmail.com', '$2y$10$1JD.oM46S8Z55fxlAf6RY.DVIRkUQagsK5.KzF2u5dcIlWSKxB66u', 'vuhuyentuan1@gmail.com', 'Đà Nẵng', '0932483572', NULL, 'NEOAXEuI6tD8uKMR3vL971ATDAwtMqrUaNYTASkr0KeLNiButf9o2LNWswg7', '2021-02-02 04:13:49', '2021-02-02 04:14:05'),
(12, 3, 0, '2024-05-02 19:05:51.973745', NULL, NULL, 'Huỳnh Thạnh Phú', 'thanhphune@gmai.com', '$2y$10$pvr7/2mujJxhGa0q1tD6xu.2ktbpzRQOamoQjRF8cYK5QiC9wTqPy', 'thanhphune@gmai.com', 'hẻm 30/38 lâm văn bền, phường tân kiểng quận 7, thành phố hồ chí minh', '0375948026', NULL, NULL, '2024-05-02 19:05:51', '2024-05-02 19:05:51'),
(13, 3, 0, '2024-05-02 19:08:01.661977', NULL, NULL, 'Huỳnh Thạnh Phú', 'phuclone8q@gmail.com', '$2y$10$OYY7DZCvwJCVPcZPMLdeGOx/c7ql8S5oi0qTM0RWSQGuIriVYAHIi', 'phuclone8q@gmail.com', 'hẻm 30/38 lâm văn bền, phường tân kiểng quận 7, thành phố hồ chí minh', '0375948026', NULL, 'isMslZsNPOGHWqPz8VIalY8owr8FAagDZEVzqTf4SLnbHcKkQnyE5kzWM0R0', '2024-05-02 19:06:53', '2024-05-02 19:06:53'),
(18, 3, 1, '2024-05-09 04:57:03.593542', NULL, NULL, 'Huỳnh Thạnh Phú', 'phuhynhpen@gmail.com', '$2y$10$HWE4VBbTr0I7XIm3IztdhuDowJ00EvMpXLhByXCvkkJ.ewfTgq8ia', 'phuhynhpen@gmail.com', 'hẻm 30/38 lâm văn bền, phường tân kiểng quận 7, thành phố hồ chí minh', '0375948026', NULL, 'GUEYMqsbiwekAZjf7oJTPVzVGShWNiKng9Bizklo3V5zVfk8L6khJ4TIearr', '2024-05-09 04:47:39', '2024-05-09 04:48:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_id_user_foreign` (`id_user`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_id_bill_foreign` (`id_bill`),
  ADD KEY `bill_detail_id_product_foreign` (`id_product`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id_user_foreign` (`id_user`),
  ADD KEY `comment_id_product_foreign` (`id_product`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `history_stored_in_day`
--
ALTER TABLE `history_stored_in_day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_stored_in_day_id_store_in_foreign` (`id_stored`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id_type_foreign` (`id_type`),
  ADD KEY `product_id_user_foreign` (`id_user`),
  ADD KEY `product_id_company_foreign` (`id_company`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_id_user_foreign` (`id_user`),
  ADD KEY `rating_id_product_foreign` (`id_product`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id_bill_detail_foreign` (`id_bill_detail`),
  ADD KEY `store_id_product_foreign` (`id_product`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tnews`
--
ALTER TABLE `tnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_role_foreign` (`id_role`),
  ADD KEY `users_id_company_foreign` (`id_company`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_stored_in_day`
--
ALTER TABLE `history_stored_in_day`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tnews`
--
ALTER TABLE `tnews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_id_bill_foreign` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_detail_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history_stored_in_day`
--
ALTER TABLE `history_stored_in_day`
  ADD CONSTRAINT `history_stored_in_day_id_store_in_foreign` FOREIGN KEY (`id_stored`) REFERENCES `store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_id_company_foreign` FOREIGN KEY (`id_company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_id_bill_detail_foreign` FOREIGN KEY (`id_bill_detail`) REFERENCES `bill_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
