-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 11:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'Nokia', 'nokia', 0, '2022-05-31 03:01:53', '2022-07-25 00:35:40', 1),
(3, 'Lenovo', 'lenovo', 0, '2022-05-31 03:02:10', '2022-07-22 04:44:30', 4),
(5, 'MI', 'mi', 0, '2022-06-04 08:23:32', '2022-06-04 08:23:32', 1),
(6, 'Levis', 'levis', 0, '2022-06-04 09:28:47', '2022-07-22 04:44:43', 5),
(7, 'Vivo', 'vivo', 0, '2022-07-22 01:32:18', '2022-07-22 04:44:17', 1),
(8, 'MI', 'mi', 0, '2022-09-30 01:52:03', '2022-09-30 01:52:03', 4);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible,1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'mobile', 'This is a Mobile Description', 'uploads/category/1653136614.jpg', 'Mobile', 'This is a Mobile Description', 'This is a Mobile Description', 0, '2022-05-21 07:06:54', '2022-05-21 07:06:54'),
(4, 'Laptop', 'laptop', 'This is a laptop', 'uploads/category/1653143639.jpg', 'Laptop', 'Laptop keyword', 'Laptop Description', 0, '2022-05-21 09:03:59', '2022-05-21 09:03:59'),
(5, 'Men', 'men', 'This is a men category', 'uploads/category/1653143734.jpg', 'Mens Wear', 'This is a men Keyword', 'This is a men Description', 0, '2022-05-21 09:05:34', '2022-05-21 09:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', 'red', 0, '2022-06-19 02:11:38', '2022-06-19 02:11:38'),
(2, 'Green', 'green', 0, '2022-06-19 02:11:54', '2022-06-19 02:11:54'),
(4, 'Blue', 'blue', 0, '2022-06-19 11:23:29', '2022-06-19 11:23:29'),
(5, 'Yellow', 'yellow', 0, '2022-06-19 11:23:41', '2022-06-19 11:23:41'),
(6, 'Purple', 'purple', 0, '2022-06-19 11:23:54', '2022-06-19 11:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_21_072058_add_details_to_users_table', 2),
(7, '2022_05_21_115125_create_categories_table', 3),
(9, '2022_05_31_075956_create_brands_table', 4),
(12, '2022_06_04_082922_create_products_table', 5),
(13, '2022_06_04_084001_create_product_images_table', 5),
(15, '2022_06_13_173707_create_colors_table', 6),
(16, '2022_06_19_173120_create_product_colors_table', 7),
(17, '2022_07_10_064047_create_sliders_table', 8),
(18, '2022_07_22_100043_add_category_id_to_brands_table', 9),
(19, '2022_07_31_135859_create_wishlists_table', 10),
(20, '2022_08_21_135811_create_carts_table', 11),
(21, '2022_09_11_035305_create_orders_table', 12),
(22, '2022_09_11_035931_create_order_items_table', 12),
(24, '2022_09_30_073733_create_settings_table', 13),
(25, '2022_10_09_100605_create_user_details_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'funda-bq6gkS2ovq', 'Ved Prakash', 'ved@gmail.com', '8889998889', '560055', 'bangalore india', 'in progress', 'Cash on Delivery', NULL, '2022-09-11 03:28:15', '2022-09-11 03:28:15'),
(2, 1, 'funda-ShIGYzO1CN', 'Ved Prakash', 'ved@gmail.com', '8888555566', '560055', 'bangalore india', 'in progress', 'Cash on Delivery', NULL, '2022-09-11 03:32:41', '2022-09-11 03:32:41'),
(3, 1, 'funda-cd9coOHbP0', 'Ved Prakash', 'ved@gmail.com', '8880202611', '560077', 'byrathi bangalore', 'in progress', 'Cash on Delivery', NULL, '2022-09-14 21:55:53', '2022-09-14 21:55:53'),
(4, 1, 'funda-M6eMp2iUxc', 'Ved Prakash', 'vedprakashn888@gmail.com', '8889996669', '566699', 'banlgaore india ', 'in progress', 'Cash on Delivery', NULL, '2022-09-14 22:27:50', '2022-09-14 22:27:50'),
(5, 1, 'funda-J8wwNPzfuo', 'Ved Prakash', 'ved@gmail.com', '5556669998', '555888', 'adsa adsad asdad', 'in progress', 'Cash on Delivery', NULL, '2022-09-14 22:34:53', '2022-09-14 22:34:53'),
(6, 1, 'funda-CRheOqspbA', 'Ved Prakash', 'ved@gmail.com', '8880225556', '566999', 'asda asdad asdad adsasd', 'completed', 'Cash on Delivery', NULL, '2022-09-22 05:24:50', '2022-09-22 06:45:47'),
(7, 1, 'funda-FgocLV9kYR', 'Ved Prakash', 'ved@gmail.com', '8889998889', '555888', 'sadad adsad asdad', 'in progress', 'Paid by Paypal', '79X10290LC634594V', '2022-09-22 06:12:37', '2022-09-22 06:18:56'),
(8, 1, 'funda-hd1nCpzwLc', 'Ved Prakash N', 'vedprakashn888@gmail.com', '5555555555', '666666', 'KKKKKKKKKKKKKKKK KKKKKKKKKKKK', 'in progress', 'Cash on Delivery', NULL, '2022-10-22 07:00:13', '2022-10-22 07:00:13'),
(10, 1, 'funda-1aFBbzCsvf', 'Ved Prakash N', 'vedprakashn888@gmail.com', '5555555555', '666666', 'KKKKKKKKKKKKKKKK KKKKKKKKKKKK new addresss', 'in progress', 'Cash on Delivery', NULL, '2022-10-22 07:53:31', '2022-10-22 07:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 2, 299, '2022-09-11 03:28:15', '2022-09-11 03:28:15'),
(2, 1, 6, NULL, 1, 699, '2022-09-11 03:28:16', '2022-09-11 03:28:16'),
(3, 1, 4, 3, 1, 299, '2022-09-11 03:28:16', '2022-09-11 03:28:16'),
(4, 2, 4, 1, 2, 299, '2022-09-11 03:32:41', '2022-09-11 03:32:41'),
(5, 2, 6, NULL, 1, 699, '2022-09-11 03:32:41', '2022-09-11 03:32:41'),
(6, 2, 4, 3, 1, 299, '2022-09-11 03:32:41', '2022-09-11 03:32:41'),
(7, 3, 5, 5, 2, 240, '2022-09-14 21:55:53', '2022-09-14 21:55:53'),
(8, 3, 7, NULL, 1, 599, '2022-09-14 21:55:54', '2022-09-14 21:55:54'),
(9, 3, 1, NULL, 1, 14000, '2022-09-14 21:55:54', '2022-09-14 21:55:54'),
(10, 4, 1, NULL, 2, 14000, '2022-09-14 22:27:50', '2022-09-14 22:27:50'),
(11, 4, 6, NULL, 1, 699, '2022-09-14 22:27:50', '2022-09-14 22:27:50'),
(12, 4, 5, 5, 2, 240, '2022-09-14 22:27:51', '2022-09-14 22:27:51'),
(13, 5, 5, 5, 2, 240, '2022-09-14 22:34:53', '2022-09-14 22:34:53'),
(14, 5, 6, NULL, 1, 699, '2022-09-14 22:34:53', '2022-09-14 22:34:53'),
(15, 5, 1, NULL, 3, 14000, '2022-09-14 22:34:53', '2022-09-14 22:34:53'),
(16, 6, 1, NULL, 1, 14000, '2022-09-17 05:24:50', '2022-09-17 05:24:50'),
(17, 6, 6, NULL, 1, 699, '2022-09-17 05:24:51', '2022-09-17 05:24:51'),
(18, 7, 1, NULL, 1, 14000, '2022-09-19 06:12:37', '2022-09-19 06:12:37'),
(19, 7, 5, 5, 1, 240, '2022-09-19 06:12:37', '2022-09-19 06:12:37'),
(20, 8, 5, 5, 1, 240, '2022-10-22 07:00:13', '2022-10-22 07:00:13'),
(21, 10, 7, NULL, 1, 599, '2022-10-22 07:53:31', '2022-10-22 07:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vedprakashn888@gmail.com', '$2y$10$j5oaJv7MbXQzXykr9JX4Pewl9YtyI5xoUkgjDUv15twdR.wgJkSRC', '2022-10-10 01:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=trending,0=not-trending',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=fureted,0=not-featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mi Note 7', 'mi-note-7', 'MI', 'Mi Note 7', 'Mi Note 7', 15000, 14000, 12, 1, 1, 0, 'Mi Note 7', 'Mi Note 7 Meta Keyword', 'Mi Note 7 Meta Description', '2022-06-04 08:25:01', '2022-09-25 04:52:17'),
(4, 5, 'T-Shirt', 't-shirt', 'Levis', 'T-Shirt ajdhsgaj asdlukjg', 'T-Shirt ajdhsgaj asdlukjg', 400, 299, 20, 1, 1, 0, 'T-Shirt for men', 'T-Shirt for men', 'T-Shirt for men', '2022-06-19 12:18:08', '2022-09-25 05:54:35'),
(5, 5, 'Shirt', 'shirt', 'Levis', 'This is a Mens Shirt Wear', 'This is a Mens Shirt Wear This is a Mens Shirt Wear This is a Mens Shirt Wear This is a Mens Shirt Wear', 299, 240, 20, 1, 0, 0, 'Mens Shirt Wear', 'Mens Shirt Wear', 'Mens Shirt Wear', '2022-07-22 01:27:42', '2022-07-22 01:27:42'),
(6, 1, 'Vivo V19', 'vivo-v19', 'Vivo', 'new vivo phone under 10000, deep discount Save 69% available', 'new vivo phone under 10000, deep discount Save 69% available Vivo V19', 899, 699, 1, 1, 0, 0, 'Vivo V19 smart moile', 'Vivo V19 smart moile', 'Vivo V19 smart moile', '2022-07-22 01:35:27', '2022-09-17 05:24:51'),
(7, 1, 'Mi Note 8 Pro', 'mi-note-8-pro', 'MI', 'This is Mi Note 8 Pro Small Description', 'This is Mi Note 8 Pro Description', 699, 599, 22, 0, 0, 0, 'Mi Note 8 Pro', 'Mi Note 8 Pro', 'Mi Note 8 Pro', '2022-07-23 23:54:15', '2022-10-22 07:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 4, '2022-06-19 12:18:08', '2022-06-27 10:35:00'),
(3, 4, 2, 5, '2022-06-27 10:45:06', '2022-06-27 10:45:06'),
(4, 4, 5, 0, '2022-06-27 10:45:06', '2022-06-27 10:45:06'),
(5, 5, 4, 6, '2022-07-22 01:27:42', '2022-10-22 07:00:13'),
(6, 5, 6, 0, '2022-07-22 01:27:42', '2022-07-22 01:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/products/16543509011.jpg', '2022-06-04 08:25:01', '2022-06-04 08:25:01'),
(2, 1, 'uploads/products/16543509012.jpg', '2022-06-04 08:25:01', '2022-06-04 08:25:01'),
(3, 1, 'uploads/products/16543509013.jpg', '2022-06-04 08:25:01', '2022-06-04 08:25:01'),
(11, 4, 'uploads/products/16556608881.jpg', '2022-06-19 12:18:08', '2022-06-19 12:18:08'),
(12, 4, 'uploads/products/16556608882.jpg', '2022-06-19 12:18:08', '2022-06-19 12:18:08'),
(13, 4, 'uploads/products/16556608883.jpg', '2022-06-19 12:18:08', '2022-06-19 12:18:08'),
(14, 5, 'uploads/products/16584730621.jpg', '2022-07-22 01:27:42', '2022-07-22 01:27:42'),
(15, 5, 'uploads/products/16584730622.jpg', '2022-07-22 01:27:42', '2022-07-22 01:27:42'),
(16, 6, 'uploads/products/16584735281.jpg', '2022-07-22 01:35:28', '2022-07-22 01:35:28'),
(17, 6, 'uploads/products/16584735282.jpg', '2022-07-22 01:35:28', '2022-07-22 01:35:28'),
(18, 7, 'uploads/products/16586402551.jpg', '2022-07-23 23:54:15', '2022-07-23 23:54:15'),
(19, 7, 'uploads/products/16586402552.jpg', '2022-07-23 23:54:15', '2022-07-23 23:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_url`, `page_title`, `meta_keyword`, `meta_description`, `address`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `twitter`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'Funda Ecom', 'http://localhost:8000/', 'Funda of Web IT Ecommerce', 'Funda of Web IT Ecommerce, shopping website', 'Funda of Web IT Ecommerce, shopping website', '#444, some main road, some area, some street, bangalore, india - 560077', '8889998887', '8889998887', 'fundaofwebit@gmail.com', 'fundaofwebit@gmail.com', 'facebook.com', 'twit.com', NULL, NULL, '2022-09-29 21:06:02', '2022-09-30 04:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden,0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, '<span>Best Ecommerce Solutions 1 </span> to Boost your Brand Name &amp; Sales', 'We offer an industry-driven and successful digital marketing strategy that helps our clients in achieving a strong online presence and maximum company profit.', 'uploads/slider/1657438318.jpg', 0, '2022-07-10 02:01:58', '2022-07-18 00:51:18'),
(3, '<span>Best Ecommerce Solutions 2 </span> to Boost your Brand Name &amp; Sales', 'We offer an industry-driven and successful digital marketing strategy that helps our clients in achieving a strong online presence and maximum company profit.', 'uploads/slider/1657438354.jpg', 0, '2022-07-10 02:02:34', '2022-07-18 00:50:48'),
(4, '<span>Best Ecommerce Solutions 3 </span>   to Boost your Brand Name &amp; Sales', 'We offer an industry-driven and successful digital marketing strategy that helps our clients  in achieving a strong online presence and maximum company profit.', 'uploads/slider/1657439493.jpg', 0, '2022-07-10 02:21:33', '2022-07-18 00:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user,1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Ved Prakash N', 'vedprakashn888@gmail.com', NULL, '$2y$10$IRjtGw2EOblKkEj4FFU/uOaN/sp9hinqPt.nNW3IFzvvXu.G/HCQy', NULL, '2022-05-17 00:38:33', '2022-10-10 00:43:14', 0),
(3, 'Admin', 'admin@gmail.com', NULL, '$2y$10$.PidxlSqMPPJto90u/nlMu93MSIlq9pqhoQWc37R.dj3ed/LC3yS2', NULL, '2022-05-21 04:14:19', '2022-05-21 04:14:19', 1),
(4, 'Om N', 'om@gmail.com', NULL, '$2y$10$X5XAZmo9UFXLCK2I5EueXO3w9SOUdSdE340Be4K05F3Do.nGXCMN6', NULL, '2022-10-01 01:39:13', '2022-10-01 01:50:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `pin_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, '5555555555', '666666', 'KKKKKKKKKKKKKKKK KKKKKKKKKKKK', '2022-10-09 05:03:32', '2022-10-09 05:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2022-07-31 08:58:58', '2022-07-31 08:58:58'),
(5, 1, 1, '2022-08-15 02:03:50', '2022-08-15 02:03:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
