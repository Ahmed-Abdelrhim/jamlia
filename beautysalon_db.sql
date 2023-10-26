-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 01:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beautysalon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `price`, `count`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 261.00, 1, '2023-09-01 12:16:45', '2023-09-01 12:16:45'),
(2, 6, 1, 167.00, 1, '2023-09-01 12:24:22', '2023-09-01 12:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `image`, `division_id`, `created_at`, `updated_at`) VALUES
(2, 'ميبلين', 'maybelline', NULL, 1, '2023-08-27 10:56:47', '2023-08-27 10:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `smtp_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_sender_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_sender_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_sender_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oneSignal_application_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oneSignal_authorization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_server_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_sender_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `smtp_type`, `smtp_username`, `smtp_password`, `smtp_sender_email`, `smtp_sender_name`, `smtp_port`, `smtp_host`, `smtp_encryption`, `sms_number`, `sms_password`, `sms_sender_name`, `oneSignal_application_id`, `oneSignal_authorization`, `fcm_server_key`, `fcm_sender_id`, `created_at`, `updated_at`) VALUES
(1, 'smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-27 06:21:19', '2023-08-27 06:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `contuct_us`
--

CREATE TABLE `contuct_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `total_uses_number` int(11) NOT NULL,
  `user_uses_number` int(11) NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `code` int(11) DEFAULT NULL,
  `active_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `commercial_registration_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_card_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `active_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name_ar`, `name_en`, `image`, `logo`, `color`, `created_at`, `updated_at`) VALUES
(1, 'جاميليا', 'Jamlia', 'v-2.svg', NULL, NULL, '2023-08-27 06:21:19', '2023-08-27 06:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inboxes`
--

CREATE TABLE `inboxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2020_03_27_231140_roles', 1),
(5, '2020_03_27_231215_permissions', 1),
(6, '2020_03_27_231451_reports', 1),
(7, '2020_03_27_231747_configurations', 1),
(8, '2020_03_27_232013_settings', 1),
(9, '2020_11_17_193506_inboxes', 1),
(10, '2020_12_23_083359_social_media', 1),
(11, '2022_04_18_000904_customers', 1),
(12, '2022_04_18_000905_create_dealers_table', 1),
(13, '2022_04_18_003006_create_divisions_table', 1),
(14, '2022_04_18_003007_categories', 1),
(15, '2022_04_18_111417_products', 1),
(16, '2022_04_18_111549_product_categories', 1),
(17, '2022_04_18_111712_product_images', 1),
(18, '2022_04_18_112327_orders', 1),
(19, '2022_04_18_112451_order_products', 1),
(20, '2022_04_26_003734_create_coupons_table', 1),
(21, '2022_06_13_065821_pro_types', 1),
(22, '2022_06_13_083834_pro_comments', 1),
(23, '2022_06_13_090042_pannars', 1),
(24, '2022_06_13_153546_carts', 1),
(25, '2022_06_14_142419_order_info', 1),
(26, '2022_06_15_093640_pro_likes', 1),
(27, '2022_06_15_151915_contuct_us', 1),
(28, '2022_08_27_151556_emails', 1),
(29, '2023_08_13_092817_add_product_id_to_order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_type` enum('c','d') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `pay_type` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_status` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `dealer_id`, `product_id`, `customer_type`, `status`, `pay_type`, `pay_status`, `ip`, `coupon_id`, `total`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'c', '1', NULL, NULL, '127.0.0.1', NULL, 428.00, '2023-09-01 12:16:45', '2023-09-01 12:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_first` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_last` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pannars`
--

CREATE TABLE `pannars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sections` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_from` double(8,2) NOT NULL,
  `price_to` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pannars`
--

INSERT INTO `pannars` (`id`, `name_ar`, `name_en`, `desc_ar`, `desc_en`, `image`, `type`, `kind`, `sections`, `price_from`, `price_to`, `created_at`, `updated_at`) VALUES
(1, 'ميبلين', 'maybelline', '<p>ميبلين</p>', '<p>maybelline</p>', '01-09-231693575838901525905.jpeg', '1', '1', '[\"2\"]', 1.00, 5000.00, '2023-08-27 11:33:46', '2023-09-01 11:43:58'),
(3, 'Word View', 'Word View', '<p>Word View</p>', '<p>Word View</p>', '01-09-231693576012616300575.jpeg', '1', '1', '[\"2\"]', 1.00, 5000.00, '2023-08-28 07:58:44', '2023-09-01 11:46:52'),
(4, 'Test Image', 'Test Image', '<p>Test Image</p>', '<p>Test Image</p>', '01-09-2316935759321826207304.jpeg', '2', '1', '[\"2\"]', 1.00, 5000.00, '2023-08-28 08:08:04', '2023-09-01 11:45:32'),
(5, 'Test Image second', 'Test Image second', '<p>Test Image second</p>', '<p>Test Image second</p>', '01-09-231693575963625516176.jpeg', '1', '1', '[\"2\"]', 1.00, 50000.00, '2023-08-28 08:09:23', '2023-09-01 11:46:03'),
(6, 'test', 'test', '<p>test</p>', '<p>test</p>', '01-09-23169357614237210931.jpeg', '3', '1', '[\"2\"]', 0.00, 1000.00, '2023-09-01 11:49:02', '2023-09-01 11:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `role_id`, `created_at`, `updated_at`) VALUES
(874, 'home', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(875, 'inbox', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(876, 'viewmessage', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(877, 'deletemessage', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(878, 'emails', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(879, 'supervisors', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(880, 'customers', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(881, 'editcustomers', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(882, 'deletecustomers', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(883, 'updatecustomers', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(884, 'dealers', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(885, 'editdealers', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(886, 'updatedealers', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(887, 'deletedealers', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(888, 'divisions', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(889, 'categories', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(890, 'storecategories', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(891, 'updatecategories', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(892, 'governorates', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(893, 'products', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(894, 'addproducts', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(895, 'storeproducts', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(896, 'editproducts', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(897, 'updateproducts', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(898, 'DeleteImageproduct', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(899, 'DeleteProduct', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(900, 'pannars', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(901, 'orders', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(902, 'editorders', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(903, 'Updateorders', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(904, 'Deleteorder', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(905, 'couponspage', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(906, 'storecoupon', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(907, 'updatecoupon', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(908, 'supervisorsresports', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(909, 'reports', 2, '2023-01-31 06:08:29', '2023-01-31 06:08:29'),
(910, 'home', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(911, 'Orderssales', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(912, 'Storedatesales', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(913, 'inbox', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(914, 'viewmessage', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(915, 'deletemessage', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(916, 'emails', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(917, 'supervisors', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(918, 'supervisorspage', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(919, 'storesupervisor', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(920, 'deletesupervisor', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(921, 'edittsupervisors', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(922, 'updatesupervisor', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(923, 'customers', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(924, 'editcustomers', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(925, 'deletecustomers', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(926, 'updatecustomers', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(927, 'dealers', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(928, 'editdealers', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(929, 'updatedealers', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(930, 'deletedealers', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(931, 'divisions', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(932, 'storedivisions', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(933, 'updatedivisions', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(934, 'deletedivisions', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(935, 'categories', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(936, 'storecategories', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(937, 'updatecategories', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(938, 'deletecategories', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(939, 'governorates', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(940, 'storegovernorates', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(941, 'updategovernorates', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(942, 'deletegovernorates', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(943, 'products', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(944, 'addproducts', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(945, 'storeproducts', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(946, 'editproducts', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(947, 'updateproducts', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(948, 'DeleteImageproduct', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(949, 'DeleteProduct', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(950, 'pannars', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(951, 'addpannars', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(952, 'StorePannar', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(953, 'editpannars', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(954, 'UpdatePannar', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(955, 'DeletePannar', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(956, 'orders', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(957, 'editorders', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(958, 'Updateorders', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(959, 'Deleteorder', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(960, 'Deleteorders', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(961, 'couponspage', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(962, 'storecoupon', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(963, 'deletecoupon', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(964, 'updatecoupon', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(965, 'permissions', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(966, 'addrolepage', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(967, 'addpermission', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(968, 'editrolepage', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(969, 'updatepermission', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(970, 'deletepermission', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(971, 'supervisorsresports', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(972, 'deletereport', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(973, 'deleteallreports', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(974, 'reports', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(975, 'setting', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(976, 'updatemainsetting', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(977, 'updatecopyrigth', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(978, 'updateaboutapp', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(979, 'updatepolicy', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(980, 'updatesmtp', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(981, 'updatesms', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(982, 'updateonesignal', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(983, 'updatefcm', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(984, 'storedynamicsetting', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(985, 'updatedynamicsetting', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(986, 'deletedynamicsetting', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(987, 'Storesocial', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(988, 'socialUpdate', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(989, 'Deletesocial', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(990, 'updatewhyus', 1, '2023-01-31 06:08:58', '2023-01-31 06:08:58'),
(1016, 'home', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1017, 'inbox', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1018, 'viewmessage', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1019, 'emails', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1020, 'customers', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1021, 'editcustomers', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1022, 'updatecustomers', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1023, 'dealers', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1024, 'editdealers', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1025, 'updatedealers', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1026, 'categories', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1027, 'storecategories', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1028, 'updatecategories', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1029, 'governorates', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1030, 'products', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1031, 'addproducts', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1032, 'storeproducts', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1033, 'editproducts', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1034, 'updateproducts', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1035, 'DeleteImageproduct', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1036, 'pannars', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1037, 'orders', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1038, 'editorders', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1039, 'Updateorders', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1040, 'couponspage', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32'),
(1041, 'supervisorsresports', 3, '2023-01-31 06:41:32', '2023-01-31 06:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `des_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `price_discount` double(8,2) NOT NULL DEFAULT 0.00,
  `dealer_price` double(8,2) DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 1,
  `pay_count` double(8,2) NOT NULL DEFAULT 0.00,
  `rate` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `name_ar`, `name_en`, `des_ar`, `des_en`, `price`, `price_discount`, `dealer_price`, `stock`, `pay_count`, `rate`, `created_at`, `updated_at`) VALUES
(1, '27-08-2316931413211515653361.jpg', 'Lash Sensational Sky High Mascara Black', 'Lash Sensational Sky High Mascara Black', '<p>Lengthening and volume mascara for sky high lash impact from every angle &bull; Long lasting formula delivers full volume and limitless length &bull; Infused with bamboo extract and fibers for long, full and lightweight lashes</p>', '<p>Lengthening and volume mascara for sky high lash impact from every angle &bull; Long lasting formula delivers full volume and limitless length &bull; Infused with bamboo extract and fibers for long, full and lightweight lashes</p>', 259.00, 259.00, 239.00, 30, 0.00, 0.00, '2023-08-27 11:02:01', '2023-08-27 11:02:01'),
(2, '27-08-231693141573631810916.jpg', 'Maybelline New York Fit Me Matte + Poreless 105 Natural Ivory', 'Maybelline New York Fit Me Matte + Poreless 105 Natural Ivory', '<ul><li>يوفر تغطية مثالية لمظهر جميل غير لامع</li><li>يساعدك على إعداد طبقة أولية مثالية للحصول على مكياج بمظهر رائع</li><li>يخفي الخطوط الرفيعة والتجاعيد لبشرة أكثر شباباً</li><li>كريم أساس سائل لا يسد المسام بطريقة استعمال سلسة على الوجه ويمكن مزجه بأطراف الأصابع</li><li>يستهدف إضفاء اللمعان ويمحو ظهور المسام بشكل واضح</li><li>مناسبة لأصحاب البشرة العادية والدهنية</li></ul>', '<p>Maybelline Fit Me Concealer makeup for flawless, natural coverage. These oil-free concealers match skin tones to deliver a more even complexion. Skin looks perfected with this natural coverage liquid concealer. These oil-free concealers conceal redness, flaws, and blemishes. Shades of concealers for various skin tones.<br />Dermatologist tested. Ophthalmologist tested. Non-comedogenic concealer. Fragrance-free. Packaging may vary, what you receive may not be what is reflected on site.<br />How to use:<br />Step 1. Dot concealer onto imperfections or under the eyes.<br />Step 2. Pat with a finger to blend.</p>', 349.00, 349.00, 330.00, 19, 0.00, 0.00, '2023-08-27 11:06:13', '2023-08-27 11:06:13'),
(3, '27-08-231693141658505113817.jpg', 'Fit Me Concealer Medium 25', 'Fit Me Concealer Medium 25', '<ul><li>خالٍ من الزيوت</li><li>خالي من العطور</li></ul>', '<p>Maybelline Fit Me Concealer makeup for flawless, natural coverage. These oil-free concealers match skin tones to deliver a more even complexion. Skin looks perfected with this natural coverage liquid concealer. These oil-free concealers conceal redness, flaws, and blemishes. Shades of concealers for various skin tones.<br />Dermatologist tested. Ophthalmologist tested. Non-comedogenic concealer. Fragrance-free. Packaging may vary, what you receive may not be what is reflected on site.<br />How to use:<br />Step 1. Dot concealer onto imperfections or under the eyes.<br />Step 2. Pat with a finger to blend.</p>', 261.00, 261.00, 255.00, 20, 1.00, 0.00, '2023-08-27 11:07:39', '2023-09-01 12:16:45'),
(4, '27-08-2316931419442008384242.jpg', 'روتين روزليا لعلاج تساقط الشعر و ملئ الفراغات ( شامبو+ لوشن+سيرم)', 'Rozalia hair loss treatment routine (shampoo + lotion +serum)', '<p>روزليا لوشن: بالتكنولوجيا الجديدة لمركب الببتيد 3G2C لعلاج تساقط الشعر بفعالية الكافيين لشعر قوي وصحي يقلل من تساقط الشعر ويعزز نمو الشعر الجديد ويزيد من حجمه ويحمي بصيلات الشعر من الشيخوخة والتلف التركيب: خلاصة الجينسنغ - خلاصة الجنكو بيلوبا - مستخلص بذور العنب - مستخلص الكافيين - مستخلص الآذريون - مستخلص النخيل - الببتيد -3 طريقة الاستخدام: ضع ستة بخاخات من لوشن Rosalia على فروة الرأس - مرتين يوميًا العبوة: 120 مل سيرم روزاليا : هو علاج مخصص لمشاكل الشعر الهش والتالف والمتطاير ، يتكون من تركيبة عالية التقنية بزيت الأرجان لإصلاح مشاكل الشعر وحمايته من العوامل الكيميائية والحرارية والبيئية. يساعد سيرم روزاليا على إصلاح الشعر التالف والمتقصف ، ويحمي من الحرارة لشعر صحي التركيب: زيت الزيتون ,زيت جوز الهند ,فيتامين هـ ,زيت الأرجان العبوة ١٢٠ مل شامبو روزاليا بتقنية مبتكرة يغذي بصيلات الشعر ويحفز نموه يمنع ضمور البصيلات ويحتوي على جيل جديد من الكافيين الذي يحفز الدورة الدموية للشعر لنمو صحي يعالج تساقط الشعر يعزز نمو الشعر التركيب: الكافيين ,مضادات الأكسدة ,مجموعة الببتيد والفيتامينات. العبوة ٢٠٠ مل</p>', '<p>rozalia hair Lotion : the new technology 3G2C peptide complex to effectively treat hair loss with Caffeine for strong and healthy hair Reduces hair loss, Promotes new hair growth, increase volume and protects hair follicles from aging and damage Compositions: Ginseng Extract - Ginkgo Biloba Extract - Grape Seed Extract - Caffeine Extract - Calendula Extract - Palm Extract - Peptide-3 Way of use: Apply six sprays of Rosalia Lotion to the scalp - twice daily Pack : 120 ml Rosalia Serum is a treatment dedicated to the problems of brittle, damaged and frizzy hair, consisting of a high-tech formula with argan oil to repair hair problems and protect it from chemical, thermal and environmental factors Rosalia Serum helps repair damaged and brittle hair, Protects from heat and repair hair Compositions: Olive oil, Coconut oil, Vitamin E and Argan oil Pack 120 Ml Rosalia shampoo with innovative technology (3G2C + peptide) that nourishes hair follicles and stimulates its growth Inhibits DHT and prevents follicle atrophy contains new generation of Caffeine which stimulates hair blood circulation for a healthy growth Compositions: Caffeine, Anti-oxidants, Peptide group and vitamins. Pack 200 Ml</p>', 450.00, 438.00, 420.00, 30, 0.00, 0.00, '2023-08-27 11:09:28', '2023-08-27 11:12:24'),
(5, '27-08-231693141905709289635.jpg', 'كريم ريمو ادفانس للبشرة الجافة 120 جم', 'Remo Advance Cream 120 GM', '<p>مرطب قوي من الجيل الجديد من المرطبات مع نظام الكواكسيل و النانو هيالرونيك اسيد لاول مرة في مصر، يوفر ترطيبًا ثلاثي الأبعاد فوريًا وطويل الأمد حتى 48 ساعة. مرطب مكثف بقوام خفيف للغاية. يحتوي علي خصائص تجديد قوية لتجديد الدهون اللازمة للحفاظ على الحاجز الواقي للبشرة التركيب: نظام أكواكسيل أكتيف ، نانو حمض الهيالورونيك ، نياسيناميد ، سيراميد ، بروفيتامين ب 5 ، فيتامين إي ، زبدة الشيا طريقة الاستخدام: ضعي كريم ريمو ادفانس على بشرتك بعد تنظيفها وتجفيفها بلطف ، ويتحسن التأثير المرطب لريمو كريم ادفانس إذا قمت بتطبيقه على بشرة رطبة قليلاً (بعد الاستحمام أو حمامات البخار)</p>', '<p>Advanced generation Revitalizing Moisturizer with Aquaxyl Active System and Nano Hyaluronic Acid in the Egyptian market , Offers instant and long lasting 3D Hydration up to 48 Hrs. Intensive moisturizer and emollient formula with ultra light texture. Strong Rejuvenating and lipid replenishing properties to reserve skin protective barrier Compositions: Aquaxyl Active System, Nano Hyaluronic Acid, Niacinamide, Ceramide, Provitamin B5, Vitamin E, Shea Butter Way of use: Apply Remo Cream to your skin after gently cleansing and drying, the moisturizing effect of Remo Advance cream is improved if you apply it to slightly damp skin (after bathing, showering or misting)</p>', 171.00, 165.00, 160.00, 20, 0.00, 0.00, '2023-08-27 11:11:45', '2023-08-27 11:11:45'),
(6, '27-08-231693142286391766406.jpg', 'ماء ميسيلار منظف سكين أكتيف', 'SkinActive Micellar Cleansing Water Clear 400 ml', '<p>الحل الشامل لجميع أنواع البشرة بما في ذلك البشرة الحساسة. مناسب للوجه والعينين والشفتين. مزيل مكياج + منظف. تلطف بقطعة قطن واحدة. تقدم غارنييه تقنية ميسيلار. تمت صياغته بمذيلات تلتقط الأوساخ والدهون والمحلول والمكياج اليومي من بشرتك مثل المغناطيس في لفتة واحدة. تم اختباره من قبل أطباء الجلدية والعيون. النتيجة: بشرة نظيفة ومنتعشة ومنتعشة بشكل مثالي.<br />&nbsp;</p>', '<p>The all-in-one solution for all skin types including sensitive skin. Suitable for face, eyes and lips. MAKEUP REMOVER + CLEANSER. Soothes with one cotton pad. Garnier Introduces the MICELLAR technology. It is formulated with micelles which capture dirt, sebum, solution and everyday make-up from your skin like magnets in one gesture. Dermatologically and ophthalmologically tested. The result: Skin is perfectly cleansed, soothed and refreshed.<br />&nbsp;</p>', 167.00, 167.00, 160.00, 10, 1.00, 0.00, '2023-08-27 11:18:06', '2023-09-01 12:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-08-27 11:02:01', '2023-08-27 11:02:01'),
(2, 2, 2, '2023-08-27 11:06:13', '2023-08-27 11:06:13'),
(3, 3, 2, '2023-08-27 11:07:39', '2023-08-27 11:07:39'),
(5, 5, 2, '2023-08-27 11:11:45', '2023-08-27 11:11:45'),
(6, 4, 2, '2023-08-27 11:12:24', '2023-08-27 11:12:24'),
(7, 6, 2, '2023-08-27 11:18:06', '2023-08-27 11:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro_comments`
--

CREATE TABLE `pro_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` double(8,2) NOT NULL DEFAULT 0.00,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro_likes`
--

CREATE TABLE `pro_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dealer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pro_types`
--

CREATE TABLE `pro_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_types`
--

INSERT INTO `pro_types` (`id`, `product_id`, `name_ar`, `name_en`, `value_ar`, `value_en`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lash Sensational Sky High Mascara Black', 'Lash Sensational Sky High Mascara Black', '259', '259', '2023-08-27 11:02:01', '2023-08-27 11:02:01'),
(2, 2, 'Maybelline New York Fit Me Matte + Poreless 105 Natural Ivory', 'Maybelline New York Fit Me Matte + Poreless 105 Natural Ivory', '349', '349', '2023-08-27 11:06:13', '2023-08-27 11:06:13'),
(3, 3, 'Fit Me Concealer Medium 25', 'Fit Me Concealer Medium 25', '261', '261', '2023-08-27 11:07:39', '2023-08-27 11:07:39'),
(5, 5, 'كريم ريمو ادفانس للبشرة الجافة 120 جم', 'Remo Advance Cream 120 GM', '171', '171', '2023-08-27 11:11:45', '2023-08-27 11:11:45'),
(6, 4, 'Rozalia hair loss treatment routine (shampoo + lotion +serum)', 'Rozalia hair loss treatment routine (shampoo + lotion +serum)', '450', '450', '2023-08-27 11:12:24', '2023-08-27 11:12:24'),
(7, 6, 'ماء ميسيلار منظف سكين أكتيف', 'SkinActive Micellar Cleansing Water Clear 400 ml', '167', '167', '2023-08-27 11:18:06', '2023-08-27 11:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `event`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'قام Ahmed Abdelrhim بإضافة قسم جديدميبلين', 2, '2023-08-27 10:56:47', '2023-08-27 10:56:47'),
(2, 'قام Ahmed Abdelrhim بحذف قسم بيكو', 2, '2023-08-27 10:56:52', '2023-08-27 10:56:52'),
(3, 'قام Ahmed Abdelrhim بإضافة منتج Lash Sensational Sky High Mascara Black', 2, '2023-08-27 11:02:01', '2023-08-27 11:02:01'),
(4, 'قام Ahmed Abdelrhim بإضافة منتج Maybelline New York Fit Me Matte + Poreless 105 Natural Ivory', 2, '2023-08-27 11:06:13', '2023-08-27 11:06:13'),
(5, 'قام Ahmed Abdelrhim بإضافة منتج Fit Me Concealer Medium 25', 2, '2023-08-27 11:07:39', '2023-08-27 11:07:39'),
(6, 'قام Ahmed Abdelrhim بإضافة منتج روتين روزليا لعلاج تساقط الشعر و ملئ الفراغات ( شامبو+ لوشن+سيرم)', 2, '2023-08-27 11:09:28', '2023-08-27 11:09:28'),
(7, 'قام Ahmed Abdelrhim بإضافة منتج كريم ريمو ادفانس للبشرة الجافة 120 جم', 2, '2023-08-27 11:11:45', '2023-08-27 11:11:45'),
(8, 'قام Ahmed Abdelrhim بتحديث منتج روتين روزليا لعلاج تساقط الشعر و ملئ الفراغات ( شامبو+ لوشن+سيرم)', 2, '2023-08-27 11:12:24', '2023-08-27 11:12:24'),
(9, 'قام Ahmed Abdelrhim بإضافة منتج ماء ميسيلار منظف سكين أكتيف', 2, '2023-08-27 11:18:06', '2023-08-27 11:18:06'),
(10, 'قام Ahmed Abdelrhim بإضافة بانر جديد ميبلين', 2, '2023-08-27 11:33:46', '2023-08-27 11:33:46'),
(11, 'قام Ahmed Abdelrhim بتحديث بانر ميبلين', 2, '2023-08-27 11:52:05', '2023-08-27 11:52:05'),
(12, 'قام Ahmed Abdelrhim بإضافة بانر جديد welcome hair', 2, '2023-08-28 07:01:18', '2023-08-28 07:01:18'),
(13, 'قام Ahmed Abdelrhim بإضافة بانر جديد Word View', 2, '2023-08-28 07:58:44', '2023-08-28 07:58:44'),
(14, 'قام Ahmed Abdelrhim بإضافة بانر جديد Test Image', 2, '2023-08-28 08:08:04', '2023-08-28 08:08:04'),
(15, 'قام Ahmed Abdelrhim بإضافة بانر جديد Test Image second', 2, '2023-08-28 08:09:23', '2023-08-28 08:09:23'),
(16, 'قام Ahmed Abdelrhim بحذف بانر welcome hair', 2, '2023-09-01 11:42:53', '2023-09-01 11:42:53'),
(17, 'قام Ahmed Abdelrhim بتحديث بانر ميبلين', 2, '2023-09-01 11:43:58', '2023-09-01 11:43:58'),
(18, 'قام Ahmed Abdelrhim بتحديث بانر Test Image', 2, '2023-09-01 11:45:32', '2023-09-01 11:45:32'),
(19, 'قام Ahmed Abdelrhim بتحديث بانر Test Image second', 2, '2023-09-01 11:46:03', '2023-09-01 11:46:03'),
(20, 'قام Ahmed Abdelrhim بتحديث بانر Test Image second', 2, '2023-09-01 11:46:17', '2023-09-01 11:46:17'),
(21, 'قام Ahmed Abdelrhim بتحديث بانر Word View', 2, '2023-09-01 11:46:52', '2023-09-01 11:46:52'),
(22, 'قام Ahmed Abdelrhim بإضافة بانر جديد test', 2, '2023-09-01 11:49:02', '2023-09-01 11:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '2022-08-07 05:55:58', '2022-10-19 06:01:41'),
(2, 'Supervisor', '2022-10-19 05:59:23', '2022-10-19 05:59:23'),
(3, 'Agent', '2022-10-19 06:02:49', '2022-10-19 06:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagged` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyrigth` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_us_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_us_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_rate` double(8,2) DEFAULT NULL,
  `dilivary` double(8,2) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `description`, `tagged`, `copyrigth`, `about_ar`, `about_en`, `policy_ar`, `why_us_ar`, `why_us_en`, `tax_rate`, `dilivary`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'إسم التطبيق', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mohamed.hamada0103@gmail.com', '01068549674', '2023-08-27 06:21:19', '2023-08-27 06:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `active` int(11) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `avatar`, `active`, `role`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'محمد حماده', 'root@root.com', NULL, '$2y$10$lX.u2NTfENxx5faSYNOXXOhbmveHhF6sCrnPWFM1qjRrp06y1NxDu', 'default.png', 1, 1, NULL, '2023-08-27 06:21:18', '2023-08-27 06:21:18', NULL),
(2, 'Ahmed Abdelrhim', 'aabdelrhim974@gmail.com', '01152067271', '$2y$10$GziC8.2NzybOH5CfFVxCDOMyg9iuhcunf68hvXYQf0CstLK6GGsAW', 'default.png', 1, 1, NULL, '2023-08-27 08:22:46', NULL, NULL),
(3, 'Omar Abdelaziz', 'omar.abdelazizz@gmail.com', '01151263677', '$2y$10$GziC8.2NzybOH5CfFVxCDOMyg9iuhcunf68hvXYQf0CstLK6GGsAW', 'default.png', 1, 1, NULL, '2023-08-27 08:23:43', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_division_id_foreign` (`division_id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contuct_us`
--
ALTER TABLE `contuct_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dealers_email_unique` (`email`),
  ADD UNIQUE KEY `dealers_phone_unique` (`phone`),
  ADD UNIQUE KEY `dealers_api_token_unique` (`api_token`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_email_unique` (`email`);

--
-- Indexes for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_dealer_id_foreign` (`dealer_id`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_info_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`);

--
-- Indexes for table `pannars`
--
ALTER TABLE `pannars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_role_id_foreign` (`role_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `pro_comments`
--
ALTER TABLE `pro_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_comments_product_id_foreign` (`product_id`),
  ADD KEY `pro_comments_customer_id_foreign` (`customer_id`),
  ADD KEY `pro_comments_dealer_id_foreign` (`dealer_id`);

--
-- Indexes for table `pro_likes`
--
ALTER TABLE `pro_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_likes_product_id_foreign` (`product_id`),
  ADD KEY `pro_likes_customer_id_foreign` (`customer_id`),
  ADD KEY `pro_likes_dealer_id_foreign` (`dealer_id`);

--
-- Indexes for table `pro_types`
--
ALTER TABLE `pro_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_types_product_id_foreign` (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contuct_us`
--
ALTER TABLE `contuct_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inboxes`
--
ALTER TABLE `inboxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_info`
--
ALTER TABLE `order_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pannars`
--
ALTER TABLE `pannars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1042;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_comments`
--
ALTER TABLE `pro_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_likes`
--
ALTER TABLE `pro_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_types`
--
ALTER TABLE `pro_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_dealer_id_foreign` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_info`
--
ALTER TABLE `order_info`
  ADD CONSTRAINT `order_info_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pro_comments`
--
ALTER TABLE `pro_comments`
  ADD CONSTRAINT `pro_comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pro_comments_dealer_id_foreign` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pro_comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pro_likes`
--
ALTER TABLE `pro_likes`
  ADD CONSTRAINT `pro_likes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pro_likes_dealer_id_foreign` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pro_likes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pro_types`
--
ALTER TABLE `pro_types`
  ADD CONSTRAINT `pro_types_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
