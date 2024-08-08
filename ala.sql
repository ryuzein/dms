-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2024 at 02:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ala`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AQUA', '2024-08-06 20:52:22', '2024-08-06 20:52:22'),
(2, 'ABC', '2024-08-06 20:52:30', '2024-08-06 20:52:30'),
(3, 'LIVELY', '2024-08-06 20:52:47', '2024-08-06 20:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Madiun', '2024-08-06 20:27:51', '2024-08-06 20:27:51'),
(2, 'Surabaya', '2024-08-06 21:38:01', '2024-08-06 21:38:01'),
(3, 'Mojokerto', '2024-08-06 21:38:10', '2024-08-06 21:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:3;', 1723006405),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1723006405;', 1723006405),
('laravel_cache_a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1723001056),
('laravel_cache_a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1723001056;', 1723001056),
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:90:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"view_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:14:\"view_any_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:12:\"create_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:12:\"update_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:13:\"restore_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:17:\"restore_any_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:15:\"replicate_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:13:\"reorder_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:12:\"delete_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:16:\"delete_any_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:18:\"force_delete_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:22:\"force_delete_any_brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:11:\"view_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:15:\"view_any_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:13:\"create_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:13:\"update_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:14:\"restore_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:18:\"restore_any_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:16:\"replicate_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:14:\"reorder_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:13:\"delete_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:17:\"delete_any_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:19:\"force_delete_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:23:\"force_delete_any_cabang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:13:\"view_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:17:\"view_any_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"create_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"update_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:16:\"restore_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:20:\"restore_any_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:18:\"replicate_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:16:\"reorder_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"delete_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:19:\"delete_any_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:21:\"force_delete_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:25:\"force_delete_any_employee\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:14:\"view_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:18:\"view_any_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:16:\"create_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:16:\"update_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:17:\"restore_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:21:\"restore_any_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:19:\"replicate_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:17:\"reorder_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:16:\"delete_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:20:\"delete_any_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:22:\"force_delete_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:26:\"force_delete_any_kendaraan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:11:\"view_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:15:\"view_any_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:13:\"create_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:13:\"update_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:14:\"restore_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:18:\"restore_any_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:16:\"replicate_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:14:\"reorder_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:13:\"delete_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:17:\"delete_any_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:19:\"force_delete_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:23:\"force_delete_any_muatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:15:\"view_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:19:\"view_any_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:17:\"create_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:17:\"update_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:18:\"restore_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:22:\"restore_any_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:20:\"replicate_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:18:\"reorder_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:17:\"delete_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:21:\"delete_any_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:23:\"force_delete_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:27:\"force_delete_any_pengiriman\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"satpam\";s:1:\"c\";s:3:\"web\";}}}', 1723100343);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `sim`, `cabang_id`, `created_at`, `updated_at`) VALUES
(1, 'Romadhon Aji Satrya', '1234567890123456', 1, '2024-08-06 20:37:59', '2024-08-06 20:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraans`
--

CREATE TABLE `kendaraans` (
  `id` bigint UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kendaraans`
--

INSERT INTO `kendaraans` (`id`, `jenis`, `plat`, `cabang_id`, `created_at`, `updated_at`) VALUES
(1, 'L300', 'AE 1992 SH', 1, '2024-08-06 20:45:25', '2024-08-06 20:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_07_021904_create_cabangs_table', 2),
(5, '2024_08_07_031806_create_employees_table', 2),
(6, '2024_08_07_033908_create_kendaraans_table', 3),
(7, '2024_08_07_033909_create_kendaraans_table', 4),
(8, '2024_08_07_034606_create_muatans_table', 5),
(9, '2024_08_07_034828_create_brands_table', 5),
(10, '2024_08_07_035631_create_pengirimen_table', 6),
(11, '2024_08_07_065602_create_permission_tables', 7),
(12, '2024_08_07_070742_create_suppliers_table', 8),
(13, '2024_08_07_070743_create_suppliers_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `muatans`
--

CREATE TABLE `muatans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `muatans`
--

INSERT INTO `muatans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BOX', '2024-08-06 20:55:08', '2024-08-06 20:55:08'),
(2, 'GALON', '2024-08-06 20:55:25', '2024-08-06 20:55:25'),
(3, 'PCS', '2024-08-06 20:55:34', '2024-08-06 20:55:34'),
(4, 'RENCENG', '2024-08-06 20:55:43', '2024-08-06 20:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengirimen`
--

CREATE TABLE `pengirimen` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ritase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_suratjalan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `kendaraan_id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `muatan_id` bigint UNSIGNED NOT NULL,
  `jumlahmuatan_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotomuatan_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotokm_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_berangkat` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengirimen`
--

INSERT INTO `pengirimen` (`id`, `kode`, `ritase`, `foto_suratjalan`, `cabang_id`, `employee_id`, `kendaraan_id`, `brand_id`, `muatan_id`, `jumlahmuatan_b`, `fotomuatan_b`, `fotokm_b`, `waktu_berangkat`, `status`, `created_at`, `updated_at`) VALUES
(1, 'okoko', '1', '01J4NJYX28EE2D2JXMAB3HW4Q5.jpeg', 1, 1, 1, 2, 2, '1', '01J4NJYX2Q7V9SKY08VPF8J6RX.jpg', '01J4NJYX31WTY6CR28DMYW6987.jpeg', '2024-08-07', 'Keluar', '2024-08-06 21:53:35', '2024-08-06 21:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(2, 'view_any_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(3, 'create_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(4, 'update_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(5, 'restore_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(6, 'restore_any_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(7, 'replicate_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(8, 'reorder_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(9, 'delete_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(10, 'delete_any_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(11, 'force_delete_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(12, 'force_delete_any_brand', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(13, 'view_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(14, 'view_any_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(15, 'create_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(16, 'update_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(17, 'restore_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(18, 'restore_any_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(19, 'replicate_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(20, 'reorder_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(21, 'delete_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(22, 'delete_any_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(23, 'force_delete_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(24, 'force_delete_any_cabang', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(25, 'view_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(26, 'view_any_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(27, 'create_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(28, 'update_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(29, 'restore_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(30, 'restore_any_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(31, 'replicate_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(32, 'reorder_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(33, 'delete_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(34, 'delete_any_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(35, 'force_delete_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(36, 'force_delete_any_employee', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(37, 'view_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(38, 'view_any_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(39, 'create_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(40, 'update_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(41, 'restore_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(42, 'restore_any_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(43, 'replicate_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(44, 'reorder_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(45, 'delete_kendaraan', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(46, 'delete_any_kendaraan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(47, 'force_delete_kendaraan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(48, 'force_delete_any_kendaraan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(49, 'view_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(50, 'view_any_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(51, 'create_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(52, 'update_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(53, 'restore_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(54, 'restore_any_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(55, 'replicate_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(56, 'reorder_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(57, 'delete_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(58, 'delete_any_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(59, 'force_delete_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(60, 'force_delete_any_muatan', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(61, 'view_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(62, 'view_any_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(63, 'create_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(64, 'update_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(65, 'restore_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(66, 'restore_any_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(67, 'replicate_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(68, 'reorder_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(69, 'delete_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(70, 'delete_any_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(71, 'force_delete_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(72, 'force_delete_any_pengiriman', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(73, 'view_role', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(74, 'view_any_role', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(75, 'create_role', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(76, 'update_role', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(77, 'delete_role', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(78, 'delete_any_role', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(79, 'view_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(80, 'view_any_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(81, 'create_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(82, 'update_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(83, 'restore_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(84, 'restore_any_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(85, 'replicate_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(86, 'reorder_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(87, 'delete_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(88, 'delete_any_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(89, 'force_delete_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08'),
(90, 'force_delete_any_user', 'web', '2024-08-06 23:56:08', '2024-08-06 23:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-08-06 23:56:07', '2024-08-06 23:56:07'),
(2, 'satpam', 'web', '2024-08-06 23:59:04', '2024-08-06 23:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `ekspedisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang_id` bigint UNSIGNED NOT NULL,
  `kendaraan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_suratjaland` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_muatand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kmd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `muatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlahd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktudatang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$A4a8u1VYyOmAaD9EWUTzM.GjDz1SzmW7s8Dn5c55FbC7Jubd2ExTe', NULL, '2024-08-06 20:13:58', '2024-08-06 20:17:17'),
(2, 'Madiun', 'admin1@gmail.com', NULL, '$2y$12$L9TGQCIqFkeuoHCFmeuvLOs5aDOohT9eQVPY7HVn8GaEh086phLma', NULL, '2024-08-06 23:58:17', '2024-08-06 23:58:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_cabang_id_foreign` (`cabang_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kendaraans`
--
ALTER TABLE `kendaraans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kendaraans_cabang_id_foreign` (`cabang_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `muatans`
--
ALTER TABLE `muatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengirimen`
--
ALTER TABLE `pengirimen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengirimen_cabang_id_foreign` (`cabang_id`),
  ADD KEY `pengirimen_employee_id_foreign` (`employee_id`),
  ADD KEY `pengirimen_kendaraan_id_foreign` (`kendaraan_id`),
  ADD KEY `pengirimen_brand_id_foreign` (`brand_id`),
  ADD KEY `pengirimen_muatan_id_foreign` (`muatan_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_cabang_id_foreign` (`cabang_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kendaraans`
--
ALTER TABLE `kendaraans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `muatans`
--
ALTER TABLE `muatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengirimen`
--
ALTER TABLE `pengirimen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `cabangs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kendaraans`
--
ALTER TABLE `kendaraans`
  ADD CONSTRAINT `kendaraans_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `cabangs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengirimen`
--
ALTER TABLE `pengirimen`
  ADD CONSTRAINT `pengirimen_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengirimen_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `cabangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengirimen_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengirimen_kendaraan_id_foreign` FOREIGN KEY (`kendaraan_id`) REFERENCES `kendaraans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengirimen_muatan_id_foreign` FOREIGN KEY (`muatan_id`) REFERENCES `muatans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `cabangs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
