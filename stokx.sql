-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2024 at 09:20 AM
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
-- Database: `stokx`
--

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
(1, 'Madiun', '2024-08-07 19:12:02', '2024-08-07 19:12:02');

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
(1, 'Romadhon Aji Satrya', '1234567890123456', 1, '2024-08-07 19:25:24', '2024-08-07 19:25:24');

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
(1, 'L300', 'AE 1992 SH', 1, '2024-08-07 19:56:31', '2024-08-07 19:56:31');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_15_061250_create_product_categories_table', 1),
(6, '2024_02_15_061443_create_product_suppliers_table', 1),
(7, '2024_02_15_061450_create_products_table', 1),
(9, '2024_02_19_085020_create_orders_table', 1),
(10, '2024_02_19_090153_create_order_product_table', 1),
(11, '2024_02_16_075659_create_permission_tables', 2),
(12, '2024_08_08_020725_create_cabangs_table', 3),
(13, '2024_08_08_021422_create_employees_table', 4),
(14, '2024_08_08_025129_create_kendaraans_table', 5),
(15, '2024_08_08_034206_create_produks_table', 6),
(16, '2024_08_08_034205_create_produks_table', 7),
(17, '2024_08_08_040753_create_pengirimen_table', 8),
(18, '2024_08_08_040752_create_pengirimen_table', 9),
(19, '2024_08_08_040750_create_pengirimen_table', 10),
(20, '2024_08_08_050554_create_pengirimen_produks_table', 11),
(21, '2024_08_08_050555_create_pengirimen_produks_table', 12),
(22, '2024_08_08_040756_create_pengirimen_table', 13),
(23, '2024_08_08_050557_create_pengirimen_produks_table', 13),
(24, '2024_08_08_040758_create_pengirimen_table', 14),
(25, '2024_08_08_050558_create_pengirimen_produks_table', 14);

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
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(100,2) NOT NULL,
  `delivered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `pengiriman_produk`
--

CREATE TABLE `pengiriman_produk` (
  `id` bigint UNSIGNED NOT NULL,
  `pengiriman_id` bigint UNSIGNED NOT NULL,
  `produk_id` bigint UNSIGNED NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kuantiti` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengiriman_produk`
--

INSERT INTO `pengiriman_produk` (`id`, `pengiriman_id`, `produk_id`, `brand`, `satuan`, `kuantiti`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'AQUA', 'BOX', 20, '2024-08-08 01:12:31', '2024-08-08 01:12:31'),
(2, 1, 2, 'AQUA', 'BOX', 200, '2024-08-08 01:14:34', '2024-08-08 01:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `pengirimen`
--

CREATE TABLE `pengirimen` (
  `id` bigint UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ritase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang_id` bigint UNSIGNED NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `kendaraan_id` bigint UNSIGNED NOT NULL,
  `foto_suratjalan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotomuatan_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotokm_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_berangkat` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengirimen`
--

INSERT INTO `pengirimen` (`id`, `kode`, `ritase`, `cabang_id`, `employee_id`, `kendaraan_id`, `foto_suratjalan`, `fotomuatan_b`, `fotokm_b`, `waktu_berangkat`, `status`, `keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '089', '1', 1, 1, 1, '01J4RGQW1WHHHSPDNS6MZ0XCHD.jpg', '01J4RGQW2FRQY37BNVA0541QGP.png', '01J4RGQW3323KD5GV4SJ46D6ET.png', '2024-08-08', 'KELUAR', 'konon', '2024-08-08 01:12:31', '2024-08-08 01:12:31', NULL);

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
(1, 'view_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(2, 'view_any_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(3, 'create_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(4, 'update_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(5, 'restore_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(6, 'restore_any_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(7, 'replicate_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(8, 'reorder_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(9, 'delete_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(10, 'delete_any_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(11, 'force_delete_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(12, 'force_delete_any_order', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(13, 'view_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(14, 'view_any_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(15, 'create_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(16, 'update_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(17, 'restore_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(18, 'restore_any_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(19, 'replicate_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(20, 'reorder_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(21, 'delete_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(22, 'delete_any_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(23, 'force_delete_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(24, 'force_delete_any_product', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(25, 'view_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(26, 'view_any_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(27, 'create_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(28, 'update_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(29, 'restore_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(30, 'restore_any_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(31, 'replicate_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(32, 'reorder_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(33, 'delete_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(34, 'delete_any_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(35, 'force_delete_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(36, 'force_delete_any_product::category', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(37, 'view_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(38, 'view_any_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(39, 'create_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(40, 'update_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(41, 'restore_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(42, 'restore_any_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(43, 'replicate_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(44, 'reorder_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(45, 'delete_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(46, 'delete_any_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(47, 'force_delete_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(48, 'force_delete_any_product::supplier', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(49, 'view_shield::role', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(50, 'view_any_shield::role', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(51, 'create_shield::role', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(52, 'update_shield::role', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(53, 'delete_shield::role', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(54, 'delete_any_shield::role', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(55, 'view_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(56, 'view_any_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(57, 'create_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(58, 'update_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(59, 'restore_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(60, 'restore_any_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(61, 'replicate_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(62, 'reorder_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(63, 'delete_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(64, 'delete_any_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(65, 'force_delete_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(66, 'force_delete_any_user', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(67, 'widget_UserOverview', 'web', '2024-08-07 18:56:46', '2024-08-07 18:56:46'),
(68, 'widget_OrdersChart', 'web', '2024-08-07 18:56:46', '2024-08-07 18:56:46'),
(69, 'view_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(70, 'view_any_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(71, 'create_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(72, 'update_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(73, 'restore_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(74, 'restore_any_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(75, 'replicate_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(76, 'reorder_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(77, 'delete_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(78, 'delete_any_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(79, 'force_delete_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(80, 'force_delete_any_cabang', 'web', '2024-08-07 19:27:19', '2024-08-07 19:27:19'),
(81, 'view_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(82, 'view_any_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(83, 'create_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(84, 'update_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(85, 'restore_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(86, 'restore_any_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(87, 'replicate_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(88, 'reorder_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(89, 'delete_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(90, 'delete_any_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(91, 'force_delete_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00'),
(92, 'force_delete_any_employee', 'web', '2024-08-07 19:47:00', '2024-08-07 19:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `product_categories_id` bigint UNSIGNED NOT NULL,
  `product_suppliers_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `price`, `quantity`, `product_categories_id`, `product_suppliers_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'VMOS', 'vmos', '01J4R0GPS00N4FK2RQ7ZENQSGC.jpg', '100.00', 1, 1, 1, '2024-08-07 20:28:59', '2024-08-07 20:28:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AQUA', 'aqua', '2024-08-07 20:09:50', '2024-08-07 20:09:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_suppliers`
--

CREATE TABLE `product_suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_suppliers`
--

INSERT INTO `product_suppliers` (`id`, `name`, `email`, `phone`, `category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PANDAAN', 'pandaan12@gmail.com', '082245502988', '1', '2024-08-07 20:27:26', '2024-08-07 20:27:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AQUA 1500', '2024-08-07 21:05:12', '2024-08-07 21:05:12'),
(2, 'AQUA 600', '2024-08-08 01:13:38', '2024-08-08 01:13:38');

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
(1, 'super_admin', 'web', '2024-08-07 18:56:45', '2024-08-07 18:56:45'),
(2, 'panel_user', 'web', '2024-08-07 18:56:46', '2024-08-07 18:56:46');

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
(91, 1),
(92, 1),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gpp.com', '2024-08-08 01:58:33', '$2y$12$ZaZQlIxcWmCsiYqtLnBE4eO4W3KEg2wZ4.aXBRWjSTYfqGV.ncIh2', NULL, '2024-08-07 18:56:07', '2024-08-07 18:56:07', NULL),
(2, 'satpam', 'satpam@gpp.com', '2024-08-08 02:30:12', '$2y$12$wWBkoGMmnQ4qE5c3ivPFyenO9GR.LpMlUnpLAVwCcdHutzYcKSMme', NULL, '2024-08-07 19:28:43', '2024-08-07 19:28:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengiriman_produk`
--
ALTER TABLE `pengiriman_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengiriman_produk_pengiriman_id_foreign` (`pengiriman_id`),
  ADD KEY `pengiriman_produk_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `pengirimen`
--
ALTER TABLE `pengirimen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengirimen_cabang_id_foreign` (`cabang_id`),
  ADD KEY `pengirimen_employee_id_foreign` (`employee_id`),
  ADD KEY `pengirimen_kendaraan_id_foreign` (`kendaraan_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `App\Models\Product` (`slug`),
  ADD KEY `products_product_categories_id_foreign` (`product_categories_id`),
  ADD KEY `products_product_suppliers_id_foreign` (`product_suppliers_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `App\Models\ProductCategory` (`slug`);

--
-- Indexes for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `kendaraans`
--
ALTER TABLE `kendaraans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengiriman_produk`
--
ALTER TABLE `pengiriman_produk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengirimen`
--
ALTER TABLE `pengirimen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengiriman_produk`
--
ALTER TABLE `pengiriman_produk`
  ADD CONSTRAINT `pengiriman_produk_pengiriman_id_foreign` FOREIGN KEY (`pengiriman_id`) REFERENCES `pengirimen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengiriman_produk_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pengirimen`
--
ALTER TABLE `pengirimen`
  ADD CONSTRAINT `pengirimen_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `cabangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengirimen_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengirimen_kendaraan_id_foreign` FOREIGN KEY (`kendaraan_id`) REFERENCES `kendaraans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_categories_id_foreign` FOREIGN KEY (`product_categories_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_product_suppliers_id_foreign` FOREIGN KEY (`product_suppliers_id`) REFERENCES `product_suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
