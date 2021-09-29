-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2021 at 02:16 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beano_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `beano_commentmeta`
--

CREATE TABLE `beano_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beano_comments`
--

CREATE TABLE `beano_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beano_custom_cart`
--

CREATE TABLE `beano_custom_cart` (
  `id` int(11) NOT NULL,
  `preffered_bean` varchar(50) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `grind` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `session_id` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beano_custom_cart`
--

INSERT INTO `beano_custom_cart` (`id`, `preffered_bean`, `weight`, `grind`, `price`, `remarks`, `session_id`, `created_at`, `updated_at`) VALUES
(374, 'Swiss Water Decaf', '250g', 'Stovetop', '13.5 ', '', 'a5532c11b00cde282ad038b2d61e3963', '2020-10-31 12:35:39', '2020-10-31 12:35:39'),
(394, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '630f10dc46044d7719ee20d30ca06687', '2020-10-31 19:23:26', '2020-10-31 19:23:26'),
(396, 'Colombian Supremo', '500g', 'Espresso Machine', '27 ', '', '630f10dc46044d7719ee20d30ca06687', '2020-10-31 19:24:07', '2020-10-31 19:24:07'),
(397, 'Automatica Blend', '250g', 'Aeropress', '12.5 ', '', '630f10dc46044d7719ee20d30ca06687', '2020-10-31 19:24:40', '2020-10-31 19:24:40'),
(398, 'Mocha', '1kg', 'Stovetop', '48 ', '', '3945d307863447c29e7fa703d93c65c2', '2020-11-01 05:50:37', '2020-11-01 05:50:37'),
(399, 'Swiss Water Decaf', '250g', 'Stovetop', '13.5 ', '', 'a38a1f1fe311a55ba653a27bce276a81', '2020-11-01 15:55:53', '2020-11-01 15:55:53'),
(400, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '6ec2e0eef287ee34d1e6ccafd93663ff', '2020-11-02 15:43:38', '2020-11-02 15:43:38'),
(401, 'Peru Organic', '1kg', 'Stovetop', '48 ', '', '640d48cc7c53973324bc635aca77119e', '2020-11-02 18:12:54', '2020-11-02 18:12:54'),
(402, 'Guatemala Antigua', '100g', 'Stovetop', '5.2 ', '', '640d48cc7c53973324bc635aca77119e', '2020-11-02 18:13:00', '2020-11-02 18:13:00'),
(403, 'Colombian Supremo', '500g', 'Aeropress', '27 ', '', '90524cef0e30fb473f71b2742a46b553', '2020-11-03 17:00:15', '2020-11-03 17:00:15'),
(404, 'Daily Blend', '250g', 'Cold Drip', '13 ', '', '9b85681951bf21322aa7d6661121d823', '2020-12-02 14:13:12', '2020-12-02 14:13:12'),
(405, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', '84d216b8f76cb89a9afd6cef60c1be8b', '2021-06-30 17:33:04', '2021-06-30 17:33:04'),
(406, 'Mocha', '1kg', 'Stovetop', '48 ', '', 'f6d4f045ce75c74214569d340963d00e', '2021-06-30 18:18:41', '2021-06-30 18:18:41'),
(407, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '71d11b1969d7e1763233a9090bf89664', '2021-07-03 16:31:16', '2021-07-03 16:31:16'),
(408, 'Colombian Supremo', '100g', 'Whole beans', '5.4 ', '', '06053b6435b0153d68f6bfa50719f844', '2021-07-10 12:58:42', '2021-07-10 12:58:42'),
(409, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', '5b7833c475d9e7144a0ef0f62e034eb7', '2021-07-24 08:26:51', '2021-07-24 08:26:51'),
(410, 'Mocha', '500g', 'Aeropress', '26 ', '', 'd2a675bc293894323877b29c5ac462f3', '2021-07-24 08:37:32', '2021-07-24 08:37:32'),
(412, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '2f3bb84af7f1fec846fc62e358af366a', '2021-07-24 08:58:31', '2021-07-24 08:58:31'),
(413, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', '7d2b9d63895af23662bcd43ef64717db', '2021-07-24 09:04:30', '2021-07-24 09:04:30'),
(414, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', 'c40bcc6b51e6fce3071b8e89c60c2f2c', '2021-07-24 09:06:24', '2021-07-24 09:06:24'),
(415, 'Mocha', '500g', 'Aeropress', '26 ', '', '7d2b9d63895af23662bcd43ef64717db', '2021-07-24 10:11:38', '2021-07-24 10:11:38'),
(416, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '1e8489d7d1d1a1eef6540009e97d21e7', '2021-07-24 16:59:49', '2021-07-24 16:59:49'),
(417, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '315cff8617cd115c3d7008c7ebd1a41d', '2021-07-24 20:06:53', '2021-07-24 20:06:53'),
(418, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '18eca0f377e9b72d384a4bcd27aa8074', '2021-07-25 09:00:35', '2021-07-25 09:00:35'),
(419, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', 'f414641a51282a982ab5272723ade713', '2021-07-30 13:03:56', '2021-07-30 13:03:56'),
(422, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'e08e1e02328512528acade18b3f92823', '2021-08-01 22:16:50', '2021-08-01 22:16:50'),
(425, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'a5368a1e03e9b23ac842f7f7df7680c9', '2021-08-03 10:20:30', '2021-08-03 10:20:30'),
(427, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'fa9825c2ec87cac60c15845ebedf8330', '2021-08-03 11:03:08', '2021-08-03 11:03:08'),
(432, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', 'bc4d422ec7b7c21dd3e514b34ce42b61', '2021-08-04 07:03:58', '2021-08-04 07:03:58'),
(433, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', 'd60edebc8cbee5298f7950f1894c1d6d', '2021-08-04 07:04:14', '2021-08-04 07:04:14'),
(434, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '39dfda64629ec4b043a2495daeb29b96', '2021-08-04 07:09:58', '2021-08-04 07:09:58'),
(437, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'd18322bb3531577b89204cf1db1191b8', '2021-08-04 08:12:35', '2021-08-04 08:12:35'),
(439, 'Daily Blend', '500g', 'Aeropress', '26 ', '', '6314b1e74b2d88f6aebfd8397477dbf9', '2021-08-05 05:27:33', '2021-08-05 05:27:33'),
(441, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '6314b1e74b2d88f6aebfd8397477dbf9', '2021-08-05 05:48:04', '2021-08-05 05:48:04'),
(442, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', '6314b1e74b2d88f6aebfd8397477dbf9', '2021-08-05 05:53:07', '2021-08-05 05:53:07'),
(443, 'Guatemala Antigua', '500g', 'Aeropress', '26 ', '', '444f05b800dee90c71370278337c2e09', '2021-08-05 14:20:33', '2021-08-05 14:20:33'),
(444, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '7e73e1c8eb3f4aa4658ff36f80dcf2f1', '2021-08-05 14:34:42', '2021-08-05 14:34:42'),
(445, 'Swiss Water Decaf', '250g', 'Stovetop', '13.5 ', '', '4d4b2b1703b1debd6e34d3e524a29f37', '2021-08-05 15:53:08', '2021-08-05 15:53:08'),
(446, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', '3950a1703101b32f201164ef717c33af', '2021-08-05 17:46:21', '2021-08-05 17:46:21'),
(447, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', '44bbfbd18335ca04c1041c193332ded7', '2021-08-05 17:57:06', '2021-08-05 17:57:06'),
(448, 'Daily Blend', '250g', 'Stovetop', '13 ', '', '2a8e3be6d1dc6e591f2e60e66c26af4a', '2021-08-05 17:57:10', '2021-08-05 17:57:10'),
(449, 'Swiss Water Decaf', '250g', 'Automatic Drip', '13.5 ', '', '2a8e3be6d1dc6e591f2e60e66c26af4a', '2021-08-05 17:57:54', '2021-08-05 17:57:54'),
(450, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'b1cfb145b6872c4530c2810ab7ba2e97', '2021-08-06 02:24:19', '2021-08-06 02:24:19'),
(452, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'a70adf067f0e6c2d9ba59211ddb06b4f', '2021-08-06 02:27:30', '2021-08-06 02:27:30'),
(453, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '107a47cf324d570e2bf103977181a03d', '2021-08-06 03:55:57', '2021-08-06 03:55:57'),
(454, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '81d6ac5aa5eed39814c5ade1831cdfd8', '2021-08-06 05:57:14', '2021-08-06 05:57:14'),
(455, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '1a42f2805f0855e380451e284e7616c5', '2021-08-06 05:57:47', '2021-08-06 05:57:47'),
(456, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '997b00f7aa60be434ca90b19bab35234', '2021-08-06 05:58:47', '2021-08-06 05:58:47'),
(457, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '3b744134a76406f314f8e493f87e5992', '2021-08-06 05:59:37', '2021-08-06 05:59:37'),
(458, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'e046307ae2eab2ec64b7cfa335e961de', '2021-08-06 06:00:49', '2021-08-06 06:00:49'),
(459, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '2bc35a77a88042930a3521a08e7dfe91', '2021-08-06 06:01:13', '2021-08-06 06:01:13'),
(460, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'f97182376f67bf5953fe2a380e88c7bf', '2021-08-06 06:01:40', '2021-08-06 06:01:40'),
(461, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'f97182376f67bf5953fe2a380e88c7bf', '2021-08-06 06:02:29', '2021-08-06 06:02:29'),
(462, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', 'd360572f6ecffee5af6f860ef82e010c', '2021-08-06 06:14:27', '2021-08-06 06:14:27'),
(463, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'c019b92f1bbd09d86ca3624befc9dbf0', '2021-08-06 08:11:16', '2021-08-06 08:11:16'),
(464, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'abdca1fffc9d3d4814bd531c05b62ed1', '2021-08-06 08:12:03', '2021-08-06 08:12:03'),
(465, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '665cc6380c71e8aebd0b5bee4a8e1c97', '2021-08-06 08:12:41', '2021-08-06 08:12:41'),
(466, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', 'c9cbe0edbd71b6496ec7bf515aeecf3d', '2021-08-06 08:13:03', '2021-08-06 08:13:03'),
(467, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '28e31a2edf24590326ec35fefe80551d', '2021-08-06 08:21:11', '2021-08-06 08:21:11'),
(469, 'Daily Blend', '1kg', 'Whole beans', '45 ', '', '2ae4b9c7b1b91b137faa598a60843993', '2021-08-06 08:42:34', '2021-08-06 08:42:34'),
(470, 'Swiss Water Decaf', '250g', 'Stovetop', '13.5 ', '', '4499f72f701e5817e3e9175cf30bfcf4', '2021-08-10 10:08:10', '2021-08-10 10:08:10'),
(471, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', '4499f72f701e5817e3e9175cf30bfcf4', '2021-08-10 10:10:27', '2021-08-10 10:10:27'),
(472, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', '43538a1f1dfae839497dbcf46926a4f4', '2021-08-10 15:31:02', '2021-08-10 15:31:02'),
(473, 'Daily Blend', '100g', 'Aeropress', '5.2 ', '', 'id3ckonqrs0i7nmheaqv8jnbtq', '2021-08-14 11:32:10', '2021-08-14 11:32:10'),
(474, 'Colombian Supremo', '100g', 'Whole beans', '5.4 ', '', 'ub4vu830kgqiliajlneotmqooh', '2021-08-15 14:43:11', '2021-08-15 14:43:11'),
(475, 'Colombian Supremo', '500g', 'Aeropress', '27 ', '', 'ub4vu830kgqiliajlneotmqooh', '2021-08-15 14:43:39', '2021-08-15 14:43:39'),
(478, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', 'u0goli5mdkm4h17a0nn5tb1bo3', '2021-08-21 15:29:01', '2021-08-21 15:29:01'),
(479, 'Daily Blend', '100g', 'Whole beans', '5.2 ', '', 'oh7esf74boq1bphept748vm962', '2021-09-04 12:14:35', '2021-09-04 12:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `beano_custom_orders`
--

CREATE TABLE `beano_custom_orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(40) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `discount` float NOT NULL,
  `coupan_code` varchar(100) NOT NULL,
  `total` decimal(5,2) NOT NULL,
  `products` varchar(1000) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beano_custom_orders`
--

INSERT INTO `beano_custom_orders` (`id`, `customer_name`, `customer_email`, `customer_phone`, `discount`, `coupan_code`, `total`, `products`, `payment_id`, `created_at`, `updated_at`) VALUES
(15, 'Staging test', 'staging@test.com', '5555555555', 0, '', '4.68', '', 'Lxg1QcPYFGGnQa1eziYKG98m49dZY', '2021-08-01 10:25:42', '2021-08-01 10:25:42'),
(16, 'Vadher Prakash', 'test@test.com', '7896541233', 0, '', '12.15', '', 'V07za1Ek8CsxaLClWBLOQFMSwmUZY', '2021-08-01 10:27:53', '2021-08-01 10:27:53'),
(17, 'Kendrik', 'kendo@damn.co', '0433445566', 0, '', '47.88', '', '1yydnPjnL1db0c5HRnXrP3UzZxGZY', '2021-08-03 10:25:44', '2021-08-03 10:25:44'),
(18, 'Kendo', 'kendo@damn.co', '0422334455', 0, '', '40.50', '', 'lqYGkEXaRaPmxbnIBElVFyFWDtHZY', '2021-08-03 10:27:17', '2021-08-03 10:27:17'),
(19, 'Vadher Prakash', 'test@test.com', '7896541233', 0, '', '23.40', '', '7VcYMEZve1tmRB10zHZ3Am9d9qIZY', '2021-08-04 05:41:44', '2021-08-04 05:41:44'),
(20, 'Vadher Prakash', 'test@test.com', '7896541233', 0, '', '4.68', '', 'bfVyknrl1niS2iUVFJg37LpjNJcZY', '2021-08-04 05:43:45', '2021-08-04 05:43:45'),
(21, 'Vadher Prakash', 'test@test.com', '7896541233', 0, '', '4.68', '', 'RS5mSklUrEPivqJxvokTEkAdcJGZY', '2021-08-04 05:45:19', '2021-08-04 05:45:19'),
(22, 'Vadher Prakash', 'test@test.com', '7896541233', 0, '', '4.68', '', 'HhrewYV08VPB7jdjSrNcMbwt7OTZY', '2021-08-04 05:46:05', '2021-08-04 05:46:05'),
(23, 'Kendrik', 'kendo@damn.co', '0455665566', 0, '', '64.80', '', '1uqY8KdUTCGAzkqzWxNUqMW1nhHZY', '2021-08-04 08:12:01', '2021-08-04 08:12:01'),
(24, 'Vadher Prakash', 'test@test.com', '7896541233', 0, '', '4.68', '', 'bRQDoL83WQxM6P6lCRMoqD8LYtLZY', '2021-08-04 08:48:34', '2021-08-04 08:48:34'),
(25, 'Vadher Prakash', 'test@test.com', '9874563210', 0, '', '4.68', '', 'xy9cmCyutCdPPHwDaJ591SuGZmKZY', '2021-08-05 14:34:24', '2021-08-05 14:34:24'),
(26, 'Kendrik', 'kendo@mail.co', '0455667788', 0, '', '40.50', '', 'jjx0ilXwqOcVdOa61VoVSnwB2HPZY', '2021-08-06 02:27:05', '2021-08-06 02:27:05'),
(27, 'Kendo', 'kendo@damn.co', '0435463748', 0, '', '40.50', '', 'HBBHHy934nrY828hZXBfsuSuiUbZY', '2021-08-06 08:42:05', '2021-08-06 08:42:05'),
(28, 'Vadher Prakash', 'test@test.com', '7896541233', 0, '', '4.68', '', 'F8jVJUuIah09T0UR7qLICuj3EuUZY', '2021-08-14 11:32:36', '2021-08-14 11:32:36'),
(29, 'Vadher Prakash', 'test@test.com', '7896541233', 0, '', '4.68', '', 'Rg0MQIBJ6nSobVudWTKwTp74YCUZY', '2021-08-21 16:02:34', '2021-08-21 16:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `beano_links`
--

CREATE TABLE `beano_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beano_options`
--

CREATE TABLE `beano_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beano_options`
--

INSERT INTO `beano_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/beano_website', 'yes'),
(2, 'home', 'http://localhost/beano_website', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'prakash.4689.vadher@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:145:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"cafes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"cafes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"cafes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cafes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cafes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"cafes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"cafes/([^/]+)/embed/?$\";s:38:\"index.php?cafes=$matches[1]&embed=true\";s:26:\"cafes/([^/]+)/trackback/?$\";s:32:\"index.php?cafes=$matches[1]&tb=1\";s:34:\"cafes/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?cafes=$matches[1]&paged=$matches[2]\";s:41:\"cafes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?cafes=$matches[1]&cpage=$matches[2]\";s:30:\"cafes/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?cafes=$matches[1]&page=$matches[2]\";s:22:\"cafes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"cafes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"cafes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"cafes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"cafes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"cafes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"coffe/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"coffe/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"coffe/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"coffe/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"coffe/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"coffe/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"coffe/([^/]+)/embed/?$\";s:38:\"index.php?coffe=$matches[1]&embed=true\";s:26:\"coffe/([^/]+)/trackback/?$\";s:32:\"index.php?coffe=$matches[1]&tb=1\";s:34:\"coffe/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?coffe=$matches[1]&paged=$matches[2]\";s:41:\"coffe/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?coffe=$matches[1]&cpage=$matches[2]\";s:30:\"coffe/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?coffe=$matches[1]&page=$matches[2]\";s:22:\"coffe/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"coffe/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"coffe/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"coffe/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"coffe/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"coffe/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"amn_exact-metrics/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"amn_exact-metrics/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"amn_exact-metrics/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"amn_exact-metrics/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"amn_exact-metrics/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"amn_exact-metrics/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"amn_exact-metrics/([^/]+)/embed/?$\";s:50:\"index.php?amn_exact-metrics=$matches[1]&embed=true\";s:38:\"amn_exact-metrics/([^/]+)/trackback/?$\";s:44:\"index.php?amn_exact-metrics=$matches[1]&tb=1\";s:46:\"amn_exact-metrics/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?amn_exact-metrics=$matches[1]&paged=$matches[2]\";s:53:\"amn_exact-metrics/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?amn_exact-metrics=$matches[1]&cpage=$matches[2]\";s:42:\"amn_exact-metrics/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?amn_exact-metrics=$matches[1]&page=$matches[2]\";s:34:\"amn_exact-metrics/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"amn_exact-metrics/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"amn_exact-metrics/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"amn_exact-metrics/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"amn_exact-metrics/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"amn_exact-metrics/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=152&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:97:\"/home/customer/www/staging.beanoshop.co/public_html/wp-content/themes/beanoshop/css/new-style.css\";i:1;s:89:\"/home/customer/www/staging.beanoshop.co/public_html/wp-content/themes/beanoshop/style.css\";i:2;s:107:\"/home/customer/www/staging.beanoshop.co/public_html/wp-content/themes/beanoshop/assets/css/custom-style.css\";i:3;s:97:\"/home/customer/www/staging.beanoshop.co/public_html/wp-content/themes/beanoshop/buyer_details.php\";i:5;s:96:\"/home/customer/www/staging.beanoshop.co/public_html/wp-content/themes/beanoshop/single-cafes.php\";}', 'no'),
(40, 'template', 'beanoshop', 'yes'),
(41, 'stylesheet', 'beanoshop', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '49752', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";a:2:{i:0;s:15:\"GADWP_Uninstall\";i:1;s:9:\"uninstall\";}s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '152', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '24', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1640343592', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'beano_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1630758456;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1630772222;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630772223;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1630772324;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630774783;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1630820181;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630861183;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585413947;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(130, 'recently_activated', 'a:1:{s:30:\"advanced-custom-fields/acf.php\";i:1628941212;}', 'yes'),
(135, 'vc_version', '6.0.3', 'yes'),
(136, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1585413135;s:7:\"version\";s:5:\"5.1.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(137, 'current_theme', 'beanoshop', 'yes'),
(138, 'theme_mods_beano', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:20:\"enable_header_search\";b:0;s:15:\"show_author_bio\";b:0;s:11:\"custom_logo\";i:42;s:16:\"background_color\";s:6:\"ffffff\";s:30:\"header_footer_background_color\";s:7:\"#ffffff\";s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#e22658\";s:10:\"background\";s:7:\"#ffffff\";s:7:\"borders\";s:7:\"#dbdbdb\";s:9:\"secondary\";s:7:\"#6d6d6d\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#e22658\";s:10:\"background\";s:7:\"#ffffff\";s:7:\"borders\";s:7:\"#dbdbdb\";s:9:\"secondary\";s:7:\"#6d6d6d\";}}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600620103;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(146, 'wp_mail_smtp_initial_version', '1.9.0', 'no'),
(147, 'wp_mail_smtp_version', '1.9.0', 'no'),
(148, 'wp_mail_smtp', 'a:7:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:29:\"prakash.4689.vadher@gmail.com\";s:9:\"from_name\";s:5:\"Beano\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:1;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:11:\"pepipostapi\";a:1:{s:7:\"api_key\";s:0:\"\";}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}}', 'no'),
(149, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(152, 'swpsmtp_options', 'a:9:{s:16:\"from_email_field\";s:29:\"prakash.4689.vadher@gmail.com\";s:15:\"from_name_field\";s:10:\"Beano Shop\";s:23:\"force_from_name_replace\";b:0;s:13:\"smtp_settings\";a:10:{s:4:\"host\";s:0:\"\";s:15:\"type_encryption\";s:3:\"tls\";s:4:\"port\";s:3:\"587\";s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:29:\"prakash.4689.vadher@gmail.com\";s:8:\"password\";s:16:\"UHJha2FzaEA0Njg5\";s:12:\"enable_debug\";i:1;s:12:\"insecure_ssl\";b:0;s:12:\"encrypt_pass\";b:0;s:13:\"log_file_name\";s:27:\"5e80395ed02c4_debug_log.txt\";}s:15:\"allowed_domains\";s:12:\"bG9jYWxob3N0\";s:14:\"reply_to_email\";s:0:\"\";s:17:\"email_ignore_list\";s:0:\"\";s:19:\"enable_domain_check\";b:0;s:16:\"block_all_emails\";b:0;}', 'yes'),
(153, 'smtp_test_mail', 'a:3:{s:10:\"swpsmtp_to\";s:18:\"ppvadher@gmail.com\";s:15:\"swpsmtp_subject\";s:5:\"Testq\";s:15:\"swpsmtp_message\";s:4:\"test\";}', 'yes'),
(171, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":3,\"critical\":2}', 'yes'),
(181, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(301, 'category_children', 'a:0:{}', 'yes'),
(349, 'WPLANG', '', 'yes'),
(350, 'new_admin_email', 'prakash.4689.vadher@gmail.com', 'yes'),
(418, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630757668;s:7:\"checked\";a:1:{s:9:\"beanoshop\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(816, 'acf_version', '5.8.7', 'yes'),
(817, 'cptui_new_install', 'false', 'yes'),
(818, 'cptui_post_types', 'a:2:{s:5:\"cafes\";a:30:{s:4:\"name\";s:5:\"cafes\";s:5:\"label\";s:5:\"Cafes\";s:14:\"singular_label\";s:4:\"Cafe\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:5:\"coffe\";a:30:{s:4:\"name\";s:5:\"coffe\";s:5:\"label\";s:6:\"Coffes\";s:14:\"singular_label\";s:5:\"Coffe\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(1001, 'w3tc_state', '{\"common.install\":1587032154,\"common.install_version\":\"0.13.2\",\"license.status\":\"no_key\",\"license.next_check\":1596130768,\"license.terms\":\"\",\"common.show_note.flush_statics_needed\":false,\"common.show_note.flush_statics_needed.timestamp\":1595698901,\"common.show_note.flush_posts_needed\":false,\"common.show_note.flush_posts_needed.timestamp\":1595698901,\"common.show_note.plugins_updated\":false,\"common.show_note.plugins_updated.timestamp\":1595698901,\"minify.show_note.need_flush\":false,\"minify.show_note.need_flush.timestamp\":1595698901,\"objectcache.show_note.flush_needed\":false,\"objectcache.show_note.flush_needed.timestamp\":1595698901,\"license.community_terms\":\"decline\",\"common.next_support_us_invitation\":1595957977,\"common.support_us_invitations\":1}', 'no'),
(1008, 'w3tc_generic_widgetservices', '{\"content\":{\"items\":[{\"name\":\"Premium Support Response (Usually <1h First Response)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Premium Support Response (Usually <1h First Response)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Plugin Configuration\",\"parameter_name\":\"field4\",\"parameter_value\":\"Plugin Configuration\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"SSL Performance Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"SSL Performance Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Full Site Delivery Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"Full Site Delivery Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Hosting Environment Troubleshooting\",\"parameter_name\":\"field4\",\"parameter_value\":\"Hosting Environment Troubleshooting\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Monitoring\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Monitoring\",\"form_hash\":\"m5pom8z0qy59rm\"}],\"ui_strings\":{\"cdn.maxcdn.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.maxcdn.signUpAndSave.description\":\"MaxCDN is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"cdn.stackpath.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now and save!\",\"cdn.stackpath2.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath2.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"minify.general.header\":\"Reduce load time by decreasing the size and number of <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym> and <acronym title=\'JavaScript\'>JS<\\/acronym> files. Automatically remove unncessary data from <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym>, <acronym title=\'JavaScript\'>JS<\\/acronym>, feed, page and post <acronym title=\'Hypertext Markup Language\'>HTML<\\/acronym>.\",\"newrelic.general.header\":\"New Relic may not be installed or not active on this server. <a href=\'%s\' target=\'_blank\'>Sign up for a (free) account<\\/a>. Visit <a href=\'%s\' target=\'_blank\'>New Relic<\\/a> for installation instructions.\",\"reverseproxy.general.header\":\"A reverse proxy adds scale to an server by handling requests before WordPress does. Purge settings are set on the <a href=\'%s\'>Page Cache settings<\\/a> page and <a href=\'%s\'>Browser Cache settings<\\/a> are set on the browser cache settings page.\",\"cdnfsd.general.header\":\"Host the entire website with your compatible <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> provider to reduce page load time.\",\"cdn.general.header\":\"Host static files with your <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> to reduce page load time.\",\"cdn.stackpath.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.works_magically\":\"StackPath works magically with W3 Total Cache.\",\"cdn.stackpath.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\",\"cdn.stackpath2.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\"}},\"expires\":1587830467}', 'no'),
(1108, 'prevent_browser_caching_options', 'a:3:{s:25:\"clear_cache_automatically\";s:10:\"every_time\";s:33:\"clear_cache_automatically_minutes\";i:10;s:15:\"show_on_toolbar\";b:0;}', 'yes'),
(1111, 'prevent_browser_caching_clear_cache_time', '1595699163', 'yes'),
(1850, 'gadwp_options', '{\"client_id\":\"\",\"client_secret\":\"\",\"access_front\":[\"administrator\"],\"access_back\":[\"administrator\"],\"tableid_jail\":\"217926365\",\"theme_color\":\"#eded8e\",\"switch_profile\":0,\"tracking_type\":\"universal\",\"ga_anonymize_ip\":0,\"user_api\":0,\"ga_event_tracking\":\"1\",\"ga_event_downloads\":\"zip|mp3*|mpe*g|pdf|docx*|pptx*|xlsx*|rar*\",\"track_exclude\":[],\"ga_target_geomap\":\"\",\"ga_realtime_pages\":10,\"token\":\"\",\"ga_profiles_list\":[[\"All Web Site Data\",\"217926365\",\"UA-166059967-1\",\"http:\\/\\/beanoshop.co\\/\",36000,\"Australia\\/Melbourne\",null]],\"ga_enhanced_links\":0,\"ga_remarketing\":0,\"network_mode\":0,\"ga_speed_samplerate\":1,\"ga_user_samplerate\":100,\"ga_event_bouncerate\":0,\"ga_crossdomain_tracking\":0,\"ga_crossdomain_list\":\"\",\"ga_author_dimindex\":0,\"ga_category_dimindex\":0,\"ga_tag_dimindex\":0,\"ga_user_dimindex\":0,\"ga_pubyear_dimindex\":0,\"ga_pubyearmonth_dimindex\":0,\"ga_aff_tracking\":1,\"ga_event_affiliates\":\"\\/out\\/\",\"automatic_updates_minorversion\":\"1\",\"backend_item_reports\":1,\"backend_realtime_report\":0,\"frontend_item_reports\":0,\"dashboard_widget\":1,\"api_backoff\":0,\"ga_cookiedomain\":\"\",\"ga_cookiename\":\"\",\"ga_cookieexpires\":\"\",\"pagetitle_404\":\"Page Not Found\",\"maps_api_key\":\"\",\"tm_author_var\":0,\"tm_category_var\":0,\"tm_tag_var\":0,\"tm_user_var\":0,\"tm_pubyear_var\":0,\"tm_pubyearmonth_var\":0,\"web_containerid\":\"\",\"amp_containerid\":\"\",\"amp_tracking_tagmanager\":0,\"amp_tracking_analytics\":0,\"amp_tracking_clientidapi\":0,\"trackingcode_infooter\":0,\"trackingevents_infooter\":0,\"ecommerce_mode\":\"disabled\",\"ga_formsubmit_tracking\":1,\"optimize_tracking\":0,\"optimize_containerid\":\"\",\"optimize_pagehiding\":0,\"superadmin_tracking\":0,\"ga_pagescrolldepth_tracking\":1,\"tm_pagescrolldepth_tracking\":0,\"ga_event_precision\":0,\"ga_force_ssl\":0,\"with_endpoint\":1,\"ga_optout\":0,\"ga_dnt_optout\":0,\"tm_optout\":0,\"tm_dnt_optout\":0,\"ga_with_gtag\":0,\"usage_tracking\":0,\"hide_am_notices\":0,\"network_hide_am_notices\":0,\"ga_enhanced_excludesa\":0,\"ga_hash_tracking\":0,\"gadwp_hidden\":\"Y\"}', 'yes'),
(1851, 'widget_gadwp-frontwidget-report', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1852, '_amn_exact-metrics_to_check', '1627910445', 'yes'),
(1854, 'gadwp_redeemed_code', '4/zgEoy2JjU3Jfd83_1Yk7AAYAQNHwulxnLkehfqkNxf5GRFq2XcVSFtk', 'yes'),
(1861, 'gadwp_cache_qr2_3340707364', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:132:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:hour&metrics=ga:users&start-date=today&end-date=today\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:132:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:hour&metrics=ga:users&start-date=today&end-date=today\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:8:\"ga:users\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:5:\"today\";s:8:\"end-date\";s:5:\"today\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:7:\"ga:hour\";s:7:\"metrics\";a:1:{i:0;s:8:\"ga:users\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:7:\"ga:hour\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1589108400;}', 'no'),
(1862, 'gadwp_cache_qr3_2733084427', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:252:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:avgSessionDuration&start-date=today&end-date=today\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:252:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:avgSessionDuration&start-date=today&end-date=today\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:9:{s:11:\"ga:sessions\";s:1:\"0\";s:8:\"ga:users\";s:1:\"0\";s:12:\"ga:pageviews\";s:1:\"0\";s:13:\"ga:BounceRate\";s:3:\"0.0\";s:18:\"ga:organicSearches\";s:1:\"0\";s:22:\"ga:pageviewsPerSession\";s:3:\"0.0\";s:16:\"ga:avgTimeOnPage\";s:3:\"0.0\";s:18:\"ga:avgPageLoadTime\";s:3:\"0.0\";s:21:\"ga:avgSessionDuration\";s:3:\"0.0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:7:{s:10:\"start-date\";s:5:\"today\";s:8:\"end-date\";s:5:\"today\";s:3:\"ids\";s:12:\"ga:217926365\";s:7:\"metrics\";a:9:{i:0;s:11:\"ga:sessions\";i:1;s:8:\"ga:users\";i:2;s:12:\"ga:pageviews\";i:3;s:13:\"ga:BounceRate\";i:4;s:18:\"ga:organicSearches\";i:5;s:22:\"ga:pageviewsPerSession\";i:6;s:16:\"ga:avgTimeOnPage\";i:7;s:18:\"ga:avgPageLoadTime\";i:8;s:21:\"ga:avgSessionDuration\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:9:{i:0;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:1;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:2;a:3:{s:4:\"name\";s:12:\"ga:pageviews\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:3;a:3:{s:4:\"name\";s:13:\"ga:BounceRate\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"PERCENT\";}i:4;a:3:{s:4:\"name\";s:18:\"ga:organicSearches\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:5;a:3:{s:4:\"name\";s:22:\"ga:pageviewsPerSession\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:5:\"FLOAT\";}i:6;a:3:{s:4:\"name\";s:16:\"ga:avgTimeOnPage\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:4:\"TIME\";}i:7;a:3:{s:4:\"name\";s:18:\"ga:avgPageLoadTime\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:5:\"FLOAT\";}i:8;a:3:{s:4:\"name\";s:21:\"ga:avgSessionDuration\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:4:\"TIME\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1589108400;}', 'no'),
(1863, 'exactmetrics_tracking_notice', '1', 'yes'),
(4328, 'mtphr_post_duplicator_settings', '', 'yes');
INSERT INTO `beano_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4356, 'gadwp_cache_qr_realtimecache_372973732', 'a:2:{s:5:\"value\";O:37:\"Deconf_Service_Analytics_RealtimeData\":16:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:50:\"Deconf_Service_Analytics_RealtimeDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:2:\"id\";s:180:\"https://www.googleapis.com/analytics/v3/data/realtime?ids=ga:217926365&dimensions=rt:pagePath,rt:source,rt:keyword,rt:trafficType,rt:visitorType,rt:pageTitle&metrics=rt:activeUsers\";s:4:\"kind\";s:22:\"analytics#realtimeData\";s:18:\"\0*\0profileInfoType\";s:48:\"Deconf_Service_Analytics_RealtimeDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:42:\"Deconf_Service_Analytics_RealtimeDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:8:\"selfLink\";s:180:\"https://www.googleapis.com/analytics/v3/data/realtime?ids=ga:217926365&dimensions=rt:pagePath,rt:source,rt:keyword,rt:trafficType,rt:visitorType,rt:pageTitle&metrics=rt:activeUsers\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:14:\"rt:activeUsers\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:4:{s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:75:\"rt:pagePath,rt:source,rt:keyword,rt:trafficType,rt:visitorType,rt:pageTitle\";s:7:\"metrics\";a:1:{i:0;s:14:\"rt:activeUsers\";}s:11:\"max-results\";i:1000;}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:18:\"realtime:217926365\";}s:13:\"columnHeaders\";a:7:{i:0;a:3:{s:4:\"name\";s:11:\"rt:pagePath\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:9:\"rt:source\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:10:\"rt:keyword\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:3;a:3:{s:4:\"name\";s:14:\"rt:trafficType\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:4;a:3:{s:4:\"name\";s:14:\"rt:visitorType\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:5;a:3:{s:4:\"name\";s:12:\"rt:pageTitle\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:6;a:3:{s:4:\"name\";s:14:\"rt:activeUsers\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1594918509;}', 'no'),
(4359, 'gadwp_cache_qr2_1535591757', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:161:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:pageviews&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:30:{i:0;a:3:{i:0;s:8:\"20200617\";i:1;s:9:\"Wednesday\";i:2;s:1:\"4\";}i:1;a:3:{i:0;s:8:\"20200618\";i:1;s:8:\"Thursday\";i:2;s:1:\"7\";}i:2;a:3:{i:0;s:8:\"20200619\";i:1;s:6:\"Friday\";i:2;s:2:\"38\";}i:3;a:3:{i:0;s:8:\"20200620\";i:1;s:8:\"Saturday\";i:2;s:2:\"42\";}i:4;a:3:{i:0;s:8:\"20200621\";i:1;s:6:\"Sunday\";i:2;s:1:\"8\";}i:5;a:3:{i:0;s:8:\"20200622\";i:1;s:6:\"Monday\";i:2;s:2:\"16\";}i:6;a:3:{i:0;s:8:\"20200623\";i:1;s:7:\"Tuesday\";i:2;s:1:\"4\";}i:7;a:3:{i:0;s:8:\"20200624\";i:1;s:9:\"Wednesday\";i:2;s:1:\"1\";}i:8;a:3:{i:0;s:8:\"20200625\";i:1;s:8:\"Thursday\";i:2;s:1:\"2\";}i:9;a:3:{i:0;s:8:\"20200626\";i:1;s:6:\"Friday\";i:2;s:2:\"14\";}i:10;a:3:{i:0;s:8:\"20200627\";i:1;s:8:\"Saturday\";i:2;s:2:\"58\";}i:11;a:3:{i:0;s:8:\"20200628\";i:1;s:6:\"Sunday\";i:2;s:2:\"79\";}i:12;a:3:{i:0;s:8:\"20200629\";i:1;s:6:\"Monday\";i:2;s:2:\"22\";}i:13;a:3:{i:0;s:8:\"20200630\";i:1;s:7:\"Tuesday\";i:2;s:1:\"9\";}i:14;a:3:{i:0;s:8:\"20200701\";i:1;s:9:\"Wednesday\";i:2;s:2:\"83\";}i:15;a:3:{i:0;s:8:\"20200702\";i:1;s:8:\"Thursday\";i:2;s:1:\"1\";}i:16;a:3:{i:0;s:8:\"20200703\";i:1;s:6:\"Friday\";i:2;s:1:\"3\";}i:17;a:3:{i:0;s:8:\"20200704\";i:1;s:8:\"Saturday\";i:2;s:3:\"136\";}i:18;a:3:{i:0;s:8:\"20200705\";i:1;s:6:\"Sunday\";i:2;s:2:\"78\";}i:19;a:3:{i:0;s:8:\"20200706\";i:1;s:6:\"Monday\";i:2;s:2:\"49\";}i:20;a:3:{i:0;s:8:\"20200707\";i:1;s:7:\"Tuesday\";i:2;s:2:\"91\";}i:21;a:3:{i:0;s:8:\"20200708\";i:1;s:9:\"Wednesday\";i:2;s:3:\"213\";}i:22;a:3:{i:0;s:8:\"20200709\";i:1;s:8:\"Thursday\";i:2;s:3:\"195\";}i:23;a:3:{i:0;s:8:\"20200710\";i:1;s:6:\"Friday\";i:2;s:2:\"24\";}i:24;a:3:{i:0;s:8:\"20200711\";i:1;s:8:\"Saturday\";i:2;s:3:\"123\";}i:25;a:3:{i:0;s:8:\"20200712\";i:1;s:6:\"Sunday\";i:2;s:3:\"183\";}i:26;a:3:{i:0;s:8:\"20200713\";i:1;s:6:\"Monday\";i:2;s:2:\"19\";}i:27;a:3:{i:0;s:8:\"20200714\";i:1;s:7:\"Tuesday\";i:2;s:3:\"121\";}i:28;a:3:{i:0;s:8:\"20200715\";i:1;s:9:\"Wednesday\";i:2;s:2:\"22\";}i:29;a:3:{i:0;s:8:\"20200716\";i:1;s:8:\"Thursday\";i:2;s:2:\"87\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:161:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:pageviews&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:30;s:19:\"totalsForAllResults\";a:1:{s:12:\"ga:pageviews\";s:4:\"1732\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:12:\"ga:pageviews\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:12:\"ga:pageviews\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1594994400;}', 'no'),
(4366, 'gadwp_cache_qr8_114224495', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:171:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:deviceCategory&metrics=ga:sessions&sort=-ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:2:{i:0;a:2:{i:0;s:6:\"mobile\";i:1;s:3:\"279\";}i:1;a:2:{i:0;s:7:\"desktop\";i:1;s:2:\"86\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:171:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:deviceCategory&metrics=ga:sessions&sort=-ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:2;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"365\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:9:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:17:\"ga:deviceCategory\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:17:\"ga:deviceCategory\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1594994400;}', 'no'),
(4367, 'gadwp_cache_qr10_3949223000', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:196:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:browser&metrics=ga:sessions&sort=-ga:sessions&filters=ga:browser!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:6:{i:0;a:2:{i:0;s:6:\"Chrome\";i:1;s:3:\"177\";}i:1;a:2:{i:0;s:6:\"Safari\";i:1;s:3:\"147\";}i:2;a:2:{i:0;s:15:\"Safari (in-app)\";i:1;s:2:\"33\";}i:3;a:2:{i:0;s:7:\"Firefox\";i:1;s:1:\"3\";}i:4;a:2:{i:0;s:16:\"Samsung Internet\";i:1;s:1:\"3\";}i:5;a:2:{i:0;s:4:\"Edge\";i:1;s:1:\"2\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:196:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:browser&metrics=ga:sessions&sort=-ga:sessions&filters=ga:browser!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:6;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"365\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:10:\"ga:browser\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:21:\"ga:browser!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:10:\"ga:browser\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1594994400;}', 'no'),
(4368, 'gadwp_cache_qr10_685504799', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:212:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:operatingSystem&metrics=ga:sessions&sort=-ga:sessions&filters=ga:operatingSystem!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:4:{i:0;a:2:{i:0;s:3:\"iOS\";i:1;s:3:\"187\";}i:1;a:2:{i:0;s:7:\"Android\";i:1;s:2:\"92\";}i:2;a:2:{i:0;s:7:\"Windows\";i:1;s:2:\"62\";}i:3;a:2:{i:0;s:9:\"Macintosh\";i:1;s:2:\"24\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:212:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:operatingSystem&metrics=ga:sessions&sort=-ga:sessions&filters=ga:operatingSystem!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:4;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"365\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:18:\"ga:operatingSystem\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:29:\"ga:operatingSystem!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:18:\"ga:operatingSystem\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1594994400;}', 'no'),
(4369, 'gadwp_cache_qr10_896107716', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:214:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:screenResolution&metrics=ga:sessions&sort=-ga:sessions&filters=ga:screenResolution!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:24:{i:0;a:2:{i:0;s:7:\"375x812\";i:1;s:3:\"127\";}i:1;a:2:{i:0;s:8:\"1536x864\";i:1;s:2:\"39\";}i:2;a:2:{i:0;s:7:\"412x892\";i:1;s:2:\"31\";}i:3;a:2:{i:0;s:7:\"424x848\";i:1;s:2:\"31\";}i:4;a:2:{i:0;s:7:\"375x667\";i:1;s:2:\"25\";}i:5;a:2:{i:0;s:8:\"1440x900\";i:1;s:2:\"22\";}i:6;a:2:{i:0;s:7:\"414x896\";i:1;s:2:\"22\";}i:7;a:2:{i:0;s:8:\"1366x768\";i:1;s:2:\"20\";}i:8;a:2:{i:0;s:7:\"360x800\";i:1;s:2:\"20\";}i:9;a:2:{i:0;s:7:\"320x568\";i:1;s:1:\"5\";}i:10;a:2:{i:0;s:7:\"414x736\";i:1;s:1:\"5\";}i:11;a:2:{i:0;s:9:\"2000x2000\";i:1;s:1:\"4\";}i:12;a:2:{i:0;s:7:\"360x780\";i:1;s:1:\"2\";}i:13;a:2:{i:0;s:7:\"393x786\";i:1;s:1:\"2\";}i:14;a:2:{i:0;s:8:\"1280x720\";i:1;s:1:\"1\";}i:15;a:2:{i:0;s:8:\"1280x800\";i:1;s:1:\"1\";}i:16;a:2:{i:0;s:8:\"1920x767\";i:1;s:1:\"1\";}i:17;a:2:{i:0;s:9:\"2560x1440\";i:1;s:1:\"1\";}i:18;a:2:{i:0;s:7:\"360x480\";i:1;s:1:\"1\";}i:19;a:2:{i:0;s:7:\"360x640\";i:1;s:1:\"1\";}i:20;a:2:{i:0;s:7:\"360x760\";i:1;s:1:\"1\";}i:21;a:2:{i:0;s:7:\"400x644\";i:1;s:1:\"1\";}i:22;a:2:{i:0;s:7:\"412x869\";i:1;s:1:\"1\";}i:23;a:2:{i:0;s:7:\"706x353\";i:1;s:1:\"1\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:214:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:screenResolution&metrics=ga:sessions&sort=-ga:sessions&filters=ga:screenResolution!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:24;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"365\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:19:\"ga:screenResolution\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:30:\"ga:screenResolution!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:19:\"ga:screenResolution\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1594994400;}', 'no'),
(4370, 'gadwp_cache_qr10_3679199871', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:222:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:mobileDeviceBranding&metrics=ga:sessions&sort=-ga:sessions&filters=ga:mobileDeviceBranding!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:6:{i:0;a:2:{i:0;s:5:\"Apple\";i:1;s:3:\"187\";}i:1;a:2:{i:0;s:7:\"Samsung\";i:1;s:2:\"54\";}i:2;a:2:{i:0;s:6:\"Xiaomi\";i:1;s:2:\"32\";}i:3;a:2:{i:0;s:6:\"Google\";i:1;s:1:\"4\";}i:4;a:2:{i:0;s:6:\"Huawei\";i:1;s:1:\"1\";}i:5;a:2:{i:0;s:6:\"Realme\";i:1;s:1:\"1\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:222:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:mobileDeviceBranding&metrics=ga:sessions&sort=-ga:sessions&filters=ga:mobileDeviceBranding!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:6;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"279\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:23:\"ga:mobileDeviceBranding\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:34:\"ga:mobileDeviceBranding!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:23:\"ga:mobileDeviceBranding\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1594994400;}', 'no'),
(4374, 'gadwp_cache_qr4_437742989', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:220:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:pagePath,ga:fullReferrer&metrics=ga:sessions&sort=-ga:sessions&filters=ga:pageTitle%3D@Page+Not+Found&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:4:{i:0;a:3:{i:0;s:21:\"/littlesisterbrighton\";i:1;s:8:\"(direct)\";i:2;s:1:\"5\";}i:1;a:3:{i:0;s:9:\"/ap-admin\";i:1;s:8:\"(direct)\";i:2;s:1:\"1\";}i:2;a:3:{i:0;s:6:\"/farro\";i:1;s:8:\"(direct)\";i:2;s:1:\"1\";}i:3;a:3:{i:0;s:8:\"/hampton\";i:1;s:8:\"(direct)\";i:2;s:1:\"1\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:220:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:pagePath,ga:fullReferrer&metrics=ga:sessions&sort=-ga:sessions&filters=ga:pageTitle%3D@Page+Not+Found&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:4;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"8\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:27:\"ga:pagePath,ga:fullReferrer\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:28:\"ga:pageTitle=@Page Not Found\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:11:\"ga:pagePath\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:15:\"ga:fullReferrer\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1594994400;}', 'no'),
(4442, 'siteground_optimizer_default_enable_cache', '0', 'no'),
(4443, 'siteground_optimizer_default_autoflush_cache', '0', 'no'),
(4444, 'siteground_optimizer_supercacher_permissions', '1', 'no'),
(4445, 'sg_cachepress', 'a:8:{s:12:\"enable_cache\";i:1;s:15:\"autoflush_cache\";i:1;s:16:\"enable_memcached\";i:0;s:11:\"show_notice\";i:0;s:8:\"is_nginx\";i:0;s:13:\"checked_nginx\";i:0;s:9:\"first_run\";i:0;s:9:\"last_fail\";i:0;}', 'yes'),
(4446, 'siteground_optimizer_enable_cache', '1', 'yes'),
(4447, 'siteground_optimizer_autoflush_cache', '1', 'yes'),
(4448, 'siteground_optimizer_enable_memcached', '0', 'yes'),
(4449, 'siteground_optimizer_show_notice', '0', 'yes'),
(4450, 'siteground_optimizer_is_nginx', '0', 'yes'),
(4451, 'siteground_optimizer_checked_nginx', '0', 'yes'),
(4452, 'siteground_optimizer_first_run', '0', 'yes'),
(4453, 'siteground_optimizer_last_fail', '0', 'yes'),
(4454, 'siteground_optimizer_ssl_enabled', '0', 'yes'),
(4455, 'siteground_optimizer_optimize_html', '0', 'yes'),
(4456, 'siteground_optimizer_optimize_javascript', '0', 'yes'),
(4457, 'siteground_optimizer_optimize_javascript_async', '0', 'yes'),
(4458, 'siteground_optimizer_optimize_css', '0', 'yes'),
(4459, 'siteground_optimizer_combine_css', '0', 'yes'),
(4460, 'siteground_optimizer_remove_query_strings', '0', 'yes'),
(4461, 'siteground_optimizer_disable_emojis', '0', 'yes'),
(4462, 'siteground_optimizer_optimize_images', '0', 'yes'),
(4464, 'siteground_optimizer_version', '5.5.4', 'yes'),
(4465, 'siteground_optimizer_update_timestamp', '1594990952', 'yes'),
(4466, 'siteground_optimizer_phpcompat_status', '1', 'yes'),
(4467, 'siteground_optimizer_phpcompat_progress', '0', 'yes'),
(4468, 'siteground_optimizer_phpcompat_is_compatible', '0', 'yes'),
(4469, 'siteground_optimizer_phpcompat_result', 'a:0:{}', 'yes'),
(4470, 'siteground_optimizer_image_optimization_completed', '1', 'no'),
(4471, 'siteground_optimizer_enable_gzip_compression', '0', 'yes'),
(4472, 'siteground_optimizer_enable_browser_caching', '0', 'yes'),
(4473, 'siteground_optimizer_lazyload_mobile', '1', 'yes'),
(4474, 'siteground_optimizer_async_javascript_exclude', 'a:2:{i:0;s:11:\"jquery-core\";i:1;s:14:\"jquery-migrate\";}', 'yes'),
(4475, 'siteground_optimizer_excluded_lazy_load_classes', 'a:1:{i:0;s:9:\"skip-lazy\";}', 'yes'),
(4476, 'siteground_optimizer_lazyload_iframes', '1', 'no'),
(4477, 'siteground_optimizer_lazyload_videos', '1', 'no'),
(4478, 'siteground_optimizer_whats_new', 'a:1:{i:0;a:7:{s:4:\"type\";s:7:\"default\";s:5:\"title\";s:28:\"JavaScript Files Combination\";s:4:\"text\";s:439:\"We are combining all the JS files that your theme and plugins include in your site header and footer in order to lower the number of requests it is producing. We will keep the scripts in their original location after the combination for best compatibility with other plugins. Note, that in some cases you may need to exclude a script or two from combination so make sure you check your site after enabling the JavaScript Files Combination!\";s:4:\"icon\";s:31:\"presentational-javascript-files\";s:10:\"icon_color\";s:5:\"ocean\";s:12:\"optimization\";s:18:\"combine_javascript\";s:6:\"button\";a:3:{s:4:\"text\";s:10:\"Enable Now\";s:5:\"color\";s:7:\"primary\";s:4:\"link\";s:8:\"frontend\";}}}', 'yes'),
(4479, 'siteground_optimizer_quality_webp', '75', 'yes'),
(4480, 'siteground_optimizer_quality_type', 'lossless', 'yes'),
(4482, 'siteground_optimizer_assets_data', 'a:4:{i:0;a:7:{s:5:\"value\";s:16:\"wp-block-library\";s:5:\"title\";s:49:\"/wp-includes/css/dist/block-library/style.min.css\";s:5:\"group\";s:6:\"others\";s:4:\"name\";b:0;s:9:\"in_footer\";i:0;s:11:\"is_minified\";i:1;s:11:\"group_title\";s:6:\"others\";}i:1;a:7:{s:5:\"value\";s:14:\"contact-form-7\";s:5:\"title\";s:47:\"/plugins/contact-form-7/includes/css/styles.css\";s:5:\"group\";s:6:\"plugin\";s:4:\"name\";s:14:\"Contact Form 7\";s:9:\"in_footer\";i:0;s:11:\"is_minified\";i:0;s:11:\"group_title\";s:22:\"plugin: Contact Form 7\";}i:2;a:7:{s:5:\"value\";s:18:\"twentytwenty-style\";s:5:\"title\";s:23:\"/themes/beano/style.css\";s:5:\"group\";s:5:\"theme\";s:4:\"name\";s:5:\"beano\";s:9:\"in_footer\";i:0;s:11:\"is_minified\";i:0;s:11:\"group_title\";s:12:\"theme: beano\";}i:3;a:7:{s:5:\"value\";s:24:\"twentytwenty-print-style\";s:5:\"title\";s:23:\"/themes/beano/print.css\";s:5:\"group\";s:5:\"theme\";s:4:\"name\";s:5:\"beano\";s:9:\"in_footer\";i:0;s:11:\"is_minified\";i:0;s:11:\"group_title\";s:12:\"theme: beano\";}}', 'yes'),
(4665, 'gadwp_cache_qr2_1798952444', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:167:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:organicSearches&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:30:{i:0;a:3:{i:0;s:8:\"20200620\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:1;a:3:{i:0;s:8:\"20200621\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}i:2;a:3:{i:0;s:8:\"20200622\";i:1;s:6:\"Monday\";i:2;s:1:\"0\";}i:3;a:3:{i:0;s:8:\"20200623\";i:1;s:7:\"Tuesday\";i:2;s:1:\"0\";}i:4;a:3:{i:0;s:8:\"20200624\";i:1;s:9:\"Wednesday\";i:2;s:1:\"0\";}i:5;a:3:{i:0;s:8:\"20200625\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:6;a:3:{i:0;s:8:\"20200626\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}i:7;a:3:{i:0;s:8:\"20200627\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:8;a:3:{i:0;s:8:\"20200628\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}i:9;a:3:{i:0;s:8:\"20200629\";i:1;s:6:\"Monday\";i:2;s:1:\"0\";}i:10;a:3:{i:0;s:8:\"20200630\";i:1;s:7:\"Tuesday\";i:2;s:1:\"0\";}i:11;a:3:{i:0;s:8:\"20200701\";i:1;s:9:\"Wednesday\";i:2;s:1:\"0\";}i:12;a:3:{i:0;s:8:\"20200702\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:13;a:3:{i:0;s:8:\"20200703\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}i:14;a:3:{i:0;s:8:\"20200704\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:15;a:3:{i:0;s:8:\"20200705\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}i:16;a:3:{i:0;s:8:\"20200706\";i:1;s:6:\"Monday\";i:2;s:1:\"0\";}i:17;a:3:{i:0;s:8:\"20200707\";i:1;s:7:\"Tuesday\";i:2;s:1:\"0\";}i:18;a:3:{i:0;s:8:\"20200708\";i:1;s:9:\"Wednesday\";i:2;s:1:\"0\";}i:19;a:3:{i:0;s:8:\"20200709\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:20;a:3:{i:0;s:8:\"20200710\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}i:21;a:3:{i:0;s:8:\"20200711\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:22;a:3:{i:0;s:8:\"20200712\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}i:23;a:3:{i:0;s:8:\"20200713\";i:1;s:6:\"Monday\";i:2;s:1:\"0\";}i:24;a:3:{i:0;s:8:\"20200714\";i:1;s:7:\"Tuesday\";i:2;s:1:\"0\";}i:25;a:3:{i:0;s:8:\"20200715\";i:1;s:9:\"Wednesday\";i:2;s:1:\"0\";}i:26;a:3:{i:0;s:8:\"20200716\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:27;a:3:{i:0;s:8:\"20200717\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}i:28;a:3:{i:0;s:8:\"20200718\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:29;a:3:{i:0;s:8:\"20200719\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:167:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:organicSearches&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:30;s:19:\"totalsForAllResults\";a:1:{s:18:\"ga:organicSearches\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:18:\"ga:organicSearches\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:18:\"ga:organicSearches\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595253600;}', 'no'),
(4915, 'gadwp_cache_qr10_2636858437', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:194:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:medium&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:2:{i:0;a:2:{i:0;s:6:\"(none)\";i:1;s:3:\"560\";}i:1;a:2:{i:0;s:8:\"referral\";i:1;s:2:\"19\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:194:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:medium&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:2;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"579\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:9:\"ga:medium\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:20:\"ga:medium!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:9:\"ga:medium\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no'),
(4916, 'gadwp_cache_qr10_1705679488', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:204:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:visitorType&metrics=ga:sessions&sort=-ga:sessions&filters=ga:visitorType!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:2:{i:0;a:2:{i:0;s:17:\"Returning Visitor\";i:1;s:3:\"305\";}i:1;a:2:{i:0;s:11:\"New Visitor\";i:1;s:3:\"274\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:204:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:visitorType&metrics=ga:sessions&sort=-ga:sessions&filters=ga:visitorType!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:2;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"579\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:14:\"ga:visitorType\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:25:\"ga:visitorType!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:14:\"ga:visitorType\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no'),
(4917, 'gadwp_cache_qr10_2170550820', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:218:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dorganic;ga:keyword!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:218:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dorganic;ga:keyword!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:9:\"ga:source\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:40:\"ga:medium==organic;ga:keyword!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:9:\"ga:source\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no'),
(4918, 'gadwp_cache_qr10_1253003035', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:208:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:socialNetwork&metrics=ga:sessions&sort=-ga:sessions&filters=ga:socialNetwork!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:2:{i:0;a:2:{i:0;s:8:\"Facebook\";i:1;s:2:\"12\";}i:1;a:2:{i:0;s:17:\"Instagram Stories\";i:1;s:1:\"7\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:208:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:socialNetwork&metrics=ga:sessions&sort=-ga:sessions&filters=ga:socialNetwork!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:2;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:2:\"19\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:16:\"ga:socialNetwork\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:27:\"ga:socialNetwork!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:16:\"ga:socialNetwork\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no'),
(4967, 'gadwp_cache_qr2_3188323616', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:157:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:users&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:30:{i:0;a:3:{i:0;s:8:\"20200626\";i:1;s:6:\"Friday\";i:2;s:1:\"4\";}i:1;a:3:{i:0;s:8:\"20200627\";i:1;s:8:\"Saturday\";i:2;s:1:\"7\";}i:2;a:3:{i:0;s:8:\"20200628\";i:1;s:6:\"Sunday\";i:2;s:1:\"8\";}i:3;a:3:{i:0;s:8:\"20200629\";i:1;s:6:\"Monday\";i:2;s:1:\"6\";}i:4;a:3:{i:0;s:8:\"20200630\";i:1;s:7:\"Tuesday\";i:2;s:1:\"5\";}i:5;a:3:{i:0;s:8:\"20200701\";i:1;s:9:\"Wednesday\";i:2;s:2:\"10\";}i:6;a:3:{i:0;s:8:\"20200702\";i:1;s:8:\"Thursday\";i:2;s:1:\"1\";}i:7;a:3:{i:0;s:8:\"20200703\";i:1;s:6:\"Friday\";i:2;s:1:\"1\";}i:8;a:3:{i:0;s:8:\"20200704\";i:1;s:8:\"Saturday\";i:2;s:1:\"7\";}i:9;a:3:{i:0;s:8:\"20200705\";i:1;s:6:\"Sunday\";i:2;s:1:\"4\";}i:10;a:3:{i:0;s:8:\"20200706\";i:1;s:6:\"Monday\";i:2;s:2:\"11\";}i:11;a:3:{i:0;s:8:\"20200707\";i:1;s:7:\"Tuesday\";i:2;s:2:\"29\";}i:12;a:3:{i:0;s:8:\"20200708\";i:1;s:9:\"Wednesday\";i:2;s:2:\"11\";}i:13;a:3:{i:0;s:8:\"20200709\";i:1;s:8:\"Thursday\";i:2;s:2:\"14\";}i:14;a:3:{i:0;s:8:\"20200710\";i:1;s:6:\"Friday\";i:2;s:1:\"6\";}i:15;a:3:{i:0;s:8:\"20200711\";i:1;s:8:\"Saturday\";i:2;s:2:\"16\";}i:16;a:3:{i:0;s:8:\"20200712\";i:1;s:6:\"Sunday\";i:2;s:2:\"34\";}i:17;a:3:{i:0;s:8:\"20200713\";i:1;s:6:\"Monday\";i:2;s:1:\"6\";}i:18;a:3:{i:0;s:8:\"20200714\";i:1;s:7:\"Tuesday\";i:2;s:2:\"13\";}i:19;a:3:{i:0;s:8:\"20200715\";i:1;s:9:\"Wednesday\";i:2;s:1:\"7\";}i:20;a:3:{i:0;s:8:\"20200716\";i:1;s:8:\"Thursday\";i:2;s:2:\"19\";}i:21;a:3:{i:0;s:8:\"20200717\";i:1;s:6:\"Friday\";i:2;s:2:\"61\";}i:22;a:3:{i:0;s:8:\"20200718\";i:1;s:8:\"Saturday\";i:2;s:2:\"28\";}i:23;a:3:{i:0;s:8:\"20200719\";i:1;s:6:\"Sunday\";i:2;s:2:\"22\";}i:24;a:3:{i:0;s:8:\"20200720\";i:1;s:6:\"Monday\";i:2;s:2:\"22\";}i:25;a:3:{i:0;s:8:\"20200721\";i:1;s:7:\"Tuesday\";i:2;s:2:\"18\";}i:26;a:3:{i:0;s:8:\"20200722\";i:1;s:9:\"Wednesday\";i:2;s:1:\"9\";}i:27;a:3:{i:0;s:8:\"20200723\";i:1;s:8:\"Thursday\";i:2;s:1:\"5\";}i:28;a:3:{i:0;s:8:\"20200724\";i:1;s:6:\"Friday\";i:2;s:2:\"17\";}i:29;a:3:{i:0;s:8:\"20200725\";i:1;s:8:\"Saturday\";i:2;s:2:\"25\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:157:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:users&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:30;s:19:\"totalsForAllResults\";a:1:{s:8:\"ga:users\";s:3:\"426\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:8:\"ga:users\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no');
INSERT INTO `beano_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4968, 'gadwp_cache_qr2_1570541611', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:167:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:visitBounceRate&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:30:{i:0;a:3:{i:0;s:8:\"20200626\";i:1;s:6:\"Friday\";i:2;s:4:\"20.0\";}i:1;a:3:{i:0;s:8:\"20200627\";i:1;s:8:\"Saturday\";i:2;s:17:\"33.33333333333333\";}i:2;a:3:{i:0;s:8:\"20200628\";i:1;s:6:\"Sunday\";i:2;s:4:\"12.5\";}i:3;a:3:{i:0;s:8:\"20200629\";i:1;s:6:\"Monday\";i:2;s:4:\"50.0\";}i:4;a:3:{i:0;s:8:\"20200630\";i:1;s:7:\"Tuesday\";i:2;s:4:\"60.0\";}i:5;a:3:{i:0;s:8:\"20200701\";i:1;s:9:\"Wednesday\";i:2;s:4:\"20.0\";}i:6;a:3:{i:0;s:8:\"20200702\";i:1;s:8:\"Thursday\";i:2;s:5:\"100.0\";}i:7;a:3:{i:0;s:8:\"20200703\";i:1;s:6:\"Friday\";i:2;s:3:\"0.0\";}i:8;a:3:{i:0;s:8:\"20200704\";i:1;s:8:\"Saturday\";i:2;s:18:\"15.384615384615385\";}i:9;a:3:{i:0;s:8:\"20200705\";i:1;s:6:\"Sunday\";i:2;s:18:\"16.666666666666664\";}i:10;a:3:{i:0;s:8:\"20200706\";i:1;s:6:\"Monday\";i:2;s:17:\"69.23076923076923\";}i:11;a:3:{i:0;s:8:\"20200707\";i:1;s:7:\"Tuesday\";i:2;s:17:\"57.49999999999999\";}i:12;a:3:{i:0;s:8:\"20200708\";i:1;s:9:\"Wednesday\";i:2;s:18:\"29.166666666666668\";}i:13;a:3:{i:0;s:8:\"20200709\";i:1;s:8:\"Thursday\";i:2;s:18:\"30.434782608695656\";}i:14;a:3:{i:0;s:8:\"20200710\";i:1;s:6:\"Friday\";i:2;s:4:\"12.5\";}i:15;a:3:{i:0;s:8:\"20200711\";i:1;s:8:\"Saturday\";i:2;s:17:\"44.44444444444444\";}i:16;a:3:{i:0;s:8:\"20200712\";i:1;s:6:\"Sunday\";i:2;s:17:\"51.92307692307693\";}i:17;a:3:{i:0;s:8:\"20200713\";i:1;s:6:\"Monday\";i:2;s:18:\"42.857142857142854\";}i:18;a:3:{i:0;s:8:\"20200714\";i:1;s:7:\"Tuesday\";i:2;s:18:\"35.294117647058826\";}i:19;a:3:{i:0;s:8:\"20200715\";i:1;s:9:\"Wednesday\";i:2;s:17:\"44.44444444444444\";}i:20;a:3:{i:0;s:8:\"20200716\";i:1;s:8:\"Thursday\";i:2;s:18:\"55.172413793103445\";}i:21;a:3:{i:0;s:8:\"20200717\";i:1;s:6:\"Friday\";i:2;s:17:\"45.67901234567901\";}i:22;a:3:{i:0;s:8:\"20200718\";i:1;s:8:\"Saturday\";i:2;s:17:\"44.73684210526316\";}i:23;a:3:{i:0;s:8:\"20200719\";i:1;s:6:\"Sunday\";i:2;s:4:\"72.0\";}i:24;a:3:{i:0;s:8:\"20200720\";i:1;s:6:\"Monday\";i:2;s:17:\"64.28571428571429\";}i:25;a:3:{i:0;s:8:\"20200721\";i:1;s:7:\"Tuesday\";i:2;s:4:\"80.0\";}i:26;a:3:{i:0;s:8:\"20200722\";i:1;s:9:\"Wednesday\";i:2;s:17:\"77.77777777777779\";}i:27;a:3:{i:0;s:8:\"20200723\";i:1;s:8:\"Thursday\";i:2;s:4:\"80.0\";}i:28;a:3:{i:0;s:8:\"20200724\";i:1;s:6:\"Friday\";i:2;s:17:\"55.00000000000001\";}i:29;a:3:{i:0;s:8:\"20200725\";i:1;s:8:\"Saturday\";i:2;s:4:\"50.0\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:167:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:visitBounceRate&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:30;s:19:\"totalsForAllResults\";a:1:{s:18:\"ga:visitBounceRate\";s:17:\"47.84110535405872\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:18:\"ga:visitBounceRate\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:18:\"ga:visitBounceRate\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"PERCENT\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no'),
(4969, 'gadwp_cache_qr7_3252957078', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:164:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:country&metrics=ga:sessions&sort=-ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:4:{i:0;a:2:{i:0;s:9:\"Australia\";i:1;s:3:\"385\";}i:1;a:2:{i:0;s:5:\"India\";i:1;s:3:\"180\";}i:2;a:2:{i:0;s:13:\"United States\";i:1;s:2:\"10\";}i:3;a:2:{i:0;s:8:\"Malaysia\";i:1;s:1:\"4\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:164:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:country&metrics=ga:sessions&sort=-ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:4;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"579\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:9:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:10:\"ga:country\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:10:\"ga:country\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no'),
(4970, 'gadwp_cache_qr4_3252957078', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:166:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:pageTitle&metrics=ga:sessions&sort=-ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:11:{i:0;a:2:{i:0;s:11:\"Thank you 2\";i:1;s:3:\"175\";}i:1;a:2:{i:0;s:18:\"Glasshouse Hampton\";i:1;s:3:\"153\";}i:2;a:2:{i:0;s:13:\"Little Sister\";i:1;s:3:\"107\";}i:3;a:2:{i:0;s:10:\"Glasshouse\";i:1;s:2:\"74\";}i:4;a:2:{i:0;s:23:\"Farro Nourishing Eatery\";i:1;s:2:\"28\";}i:5;a:2:{i:0;s:9:\"Thank You\";i:1;s:2:\"15\";}i:6;a:2:{i:0;s:5:\"Farro\";i:1;s:2:\"11\";}i:7;a:2:{i:0;s:13:\"Buyer Details\";i:1;s:1:\"8\";}i:8;a:2:{i:0;s:14:\"Page not found\";i:1;s:1:\"8\";}i:9;a:2:{i:0;s:13:\"Coffe Details\";i:1;s:1:\"0\";}i:10;a:2:{i:0;s:23:\"Glasshouse Hampton Copy\";i:1;s:1:\"0\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:166:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:pageTitle&metrics=ga:sessions&sort=-ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:11;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"579\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:9:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:12:\"ga:pageTitle\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:12:\"ga:pageTitle\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no'),
(4971, 'gadwp_cache_qr5_3252957078', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:195:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dreferral&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:4:{i:0;a:2:{i:0;s:12:\"facebook.com\";i:1;s:1:\"9\";}i:1;a:2:{i:0;s:13:\"instagram.com\";i:1;s:1:\"7\";}i:2;a:2:{i:0;s:14:\"m.facebook.com\";i:1;s:1:\"2\";}i:3;a:2:{i:0;s:15:\"lm.facebook.com\";i:1;s:1:\"1\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:195:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dreferral&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:4;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:2:\"19\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:9:\"ga:source\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:19:\"ga:medium==referral\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:9:\"ga:source\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1595772000;}', 'no'),
(4986, 'wpsupercache_start', '1595780167', 'yes'),
(4987, 'wpsupercache_count', '0', 'yes'),
(4988, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1595780337;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}s:7:\"wpcache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}}', 'yes'),
(5758, 'gadwp_cache_qr8_3058263925', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:172:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:channelGrouping&metrics=ga:sessions&sort=-ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:2:{i:0;a:2:{i:0;s:6:\"Direct\";i:1;s:3:\"193\";}i:1;a:2:{i:0;s:6:\"Social\";i:1;s:1:\"4\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:172:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:channelGrouping&metrics=ga:sessions&sort=-ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:2;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:3:\"197\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:9:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:18:\"ga:channelGrouping\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:18:\"ga:channelGrouping\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1598882400;}', 'no'),
(5759, 'gadwp_cache_qr6_3252957078', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:196:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:keyword&metrics=ga:sessions&sort=-ga:sessions&filters=ga:keyword!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:196:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:217926365&dimensions=ga:keyword&metrics=ga:sessions&sort=-ga:sessions&filters=ga:keyword!%3D(not+set)&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:217926365\";s:10:\"dimensions\";s:10:\"ga:keyword\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:21:\"ga:keyword!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"217926365\";s:9:\"accountId\";s:9:\"166059967\";s:13:\"webPropertyId\";s:14:\"UA-166059967-1\";s:21:\"internalWebPropertyId\";s:9:\"231982568\";s:11:\"profileName\";s:17:\"All Web Site Data\";s:7:\"tableId\";s:12:\"ga:217926365\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:10:\"ga:keyword\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1598882400;}', 'no'),
(5793, 'theme_mods_beanoshop', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(6169, 'gadwp_cache_last_error', 'a:2:{s:5:\"value\";s:2903:\"2021-06-27 13:17:08: Deconf_Auth_Exception: Error refreshing the OAuth2 token, message: &#039;{\n  &quot;error&quot;: &quot;invalid_grant&quot;,\n  &quot;error_description&quot;: &quot;Bad Request&quot;\n}&#039; in /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/tools/src/Deconf/Auth/OAuth2.php:364\nStack trace:\n#0 /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/tools/src/Deconf/Auth/OAuth2.php(277): Deconf_Auth_OAuth2-&gt;refreshTokenRequest(Array)\n#1 /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/tools/src/Deconf/Auth/OAuth2.php(251): Deconf_Auth_OAuth2-&gt;refreshToken(&#039;1//0dY3UqOjBjGA...&#039;)\n#2 /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/tools/src/Deconf/Service/Resource.php(217): Deconf_Auth_OAuth2-&gt;sign(Object(Deconf_Http_Request))\n#3 /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/tools/src/Deconf/Service/Analytics.php(2052): Deconf_Service_Resource-&gt;call(&#039;get&#039;, Array, &#039;Deconf_Service_...&#039;)\n#4 /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/tools/gapi.php(345): Deconf_Service_Analytics_DataGa_Resource-&gt;get(&#039;ga:217926365&#039;, &#039;30daysAgo&#039;, &#039;yesterday&#039;, &#039;ga:sessions,ga:...&#039;, Array)\n#5 /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/tools/gapi.php(499): GADWP_GAPI_Controller-&gt;handle_corereports(&#039;217926365&#039;, &#039;30daysAgo&#039;, &#039;yesterday&#039;, &#039;ga:sessions,ga:...&#039;, Array, &#039;qr3_4233971143&#039;)\n#6 /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/tools/gapi.php(931): GADWP_GAPI_Controller-&gt;get_bottomstats(&#039;217926365&#039;, &#039;30daysAgo&#039;, &#039;yesterday&#039;, false)\n#7 /home/customer/www/staging.beanoshop.co/public_html/wp-content/plugins/google-analytics-dashboard-for-wp/admin/ajax-actions.php(118): GADWP_GAPI_Controller-&gt;get(&#039;217926365&#039;, &#039;bottomstats&#039;, &#039;30daysAgo&#039;, &#039;yesterday&#039;, false, &#039;sessions&#039;)\n#8 /home/customer/www/staging.beanoshop.co/public_html/wp-includes/class-wp-hook.php(288): GADWP_Backend_Ajax-&gt;ajax_item_reports(&#039;&#039;)\n#9 /home/customer/www/staging.beanoshop.co/public_html/wp-includes/class-wp-hook.php(312): WP_Hook-&gt;apply_filters(&#039;&#039;, Array)\n#10 /home/customer/www/staging.beanoshop.co/public_html/wp-includes/plugin.php(478): WP_Hook-&gt;do_action(Array)\n#11 /home/customer/www/staging.beanoshop.co/public_html/wp-admin/admin-ajax.php(175): do_action(&#039;wp_ajax_gadwp_b...&#039;)\n#12 {main}\";s:7:\"expires\";i:1624867200;}', 'no'),
(7103, 'gadwp_cache_errors_count', 'a:2:{s:5:\"value\";i:3;s:7:\"expires\";i:1624867200;}', 'no'),
(7263, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(7264, 'disallowed_keys', '', 'no'),
(7265, 'comment_previously_approved', '1', 'yes'),
(7266, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(7267, 'auto_update_core_dev', 'enabled', 'yes'),
(7268, 'auto_update_core_minor', 'enabled', 'yes'),
(7269, 'auto_update_core_major', 'unset', 'yes'),
(7270, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(7271, 'finished_updating_comment_type', '1', 'yes'),
(7272, 'db_upgraded', '', 'yes'),
(7273, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1630757656;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}', 'no'),
(7275, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"prakash.4689.vadher@gmail.com\";s:7:\"version\";s:3:\"5.8\";s:9:\"timestamp\";i:1627145981;}', 'no'),
(7277, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(7327, 'can_compress_scripts', '0', 'no'),
(7467, 'auto_update_plugins', 'a:4:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:30:\"advanced-custom-fields/acf.php\";}', 'no'),
(7501, '_transient_timeout_acf_plugin_updates', '1630930458', 'no'),
(7502, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";}}', 'no'),
(7503, '_site_transient_timeout_theme_roots', '1630759466', 'no'),
(7504, '_site_transient_theme_roots', 'a:1:{s:9:\"beanoshop\";s:7:\"/themes\";}', 'no'),
(7505, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630757669;s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.10.2\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.2\";}}', 'no'),
(7506, '_site_transient_timeout_php_check_6c9aa7b1087ab72b13d3f99b1ffc068f', '1631362471', 'no'),
(7507, '_site_transient_php_check_6c9aa7b1087ab72b13d3f99b1ffc068f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `beano_postmeta`
--

CREATE TABLE `beano_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beano_postmeta`
--

INSERT INTO `beano_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:22:\"Beano \"[your-subject]\"\";s:6:\"sender\";s:37:\"Beano <prakash.4689.vadher@gmail.com>\";s:4:\"body\";s:174:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Beano (http://localhost/beano_website)\";s:9:\"recipient\";s:29:\"prakash.4689.vadher@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Beano \"[your-subject]\"\";s:6:\"sender\";s:37:\"Beano <prakash.4689.vadher@gmail.com>\";s:4:\"body\";s:116:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Beano (http://localhost/beano_website)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:39:\"Reply-To: prakash.4689.vadher@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'en_US'),
(38, 18, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(39, 18, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:22:\"Beano \"[your-subject]\"\";s:6:\"sender\";s:37:\"Beano <prakash.4689.vadher@gmail.com>\";s:9:\"recipient\";s:29:\"prakash.4689.vadher@gmail.com\";s:4:\"body\";s:174:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Beano (http://localhost/beano_website)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(40, 18, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Beano \"[your-subject]\"\";s:6:\"sender\";s:37:\"Beano <prakash.4689.vadher@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:116:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Beano (http://localhost/beano_website)\";s:18:\"additional_headers\";s:39:\"Reply-To: prakash.4689.vadher@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(41, 18, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(42, 18, '_additional_settings', ''),
(43, 18, '_locale', 'en_US'),
(56, 24, '_wp_attached_file', '2020/03/cropped-beano_app_icon.png'),
(57, 24, '_wp_attachment_context', 'site-icon'),
(58, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2020/03/cropped-beano_app_icon.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-beano_app_icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-beano_app_icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:34:\"cropped-beano_app_icon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:34:\"cropped-beano_app_icon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:34:\"cropped-beano_app_icon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:32:\"cropped-beano_app_icon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 28, '_edit_lock', '1594662787:1'),
(66, 28, '_wp_page_template', 'buyer_details.php'),
(67, 30, '_edit_lock', '1586278769:1'),
(68, 30, '_wp_page_template', 'thank_you.php'),
(80, 34, '_wp_attached_file', '2020/04/cropped-logo.png'),
(81, 34, '_wp_attachment_context', 'custom-logo'),
(82, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:195;s:6:\"height\";i:51;s:4:\"file\";s:24:\"2020/04/cropped-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-150x51.png\";s:5:\"width\";i:150;s:6:\"height\";i:51;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 42, '_wp_attached_file', '2020/04/cropped-beano_logo.png'),
(105, 42, '_wp_attachment_context', 'custom-logo'),
(106, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:193;s:4:\"file\";s:30:\"2020/04/cropped-beano_logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-beano_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 47, '_edit_last', '1'),
(112, 47, '_edit_lock', '1593259702:1'),
(113, 59, '_edit_last', '1'),
(114, 59, '_edit_lock', '1593255081:1'),
(115, 62, '_edit_last', '1'),
(116, 62, '_edit_lock', '1590439517:1'),
(117, 66, '_edit_last', '1'),
(118, 66, '_edit_lock', '1628941085:1'),
(119, 68, '_edit_last', '1'),
(120, 68, '_edit_lock', '1590436039:1'),
(121, 70, '_edit_last', '1'),
(122, 70, '_edit_lock', '1590436037:1'),
(123, 72, '_edit_lock', '1595697162:1'),
(124, 72, '_edit_last', '1'),
(125, 72, 'address', '305 Hampton Street, Hampton, VIC 3188.'),
(126, 72, '_address', 'field_5e93687c0b01e'),
(127, 72, 'grinds', '8'),
(128, 72, '_grinds', 'field_5e9368102d4bf'),
(129, 72, 'latitude', ''),
(130, 72, '_latitude', 'field_5e93689b7aa7a'),
(131, 72, 'longitude', ''),
(132, 72, '_longitude', 'field_5e9368b627636'),
(133, 72, 'preferred_beans', '10'),
(134, 72, '_preferred_beans', 'field_5e9361f2c047f'),
(135, 72, '_wp_old_slug', 'glasshouse-hampton'),
(136, 72, 'weight', '4'),
(137, 72, '_weight', 'field_5e9367bcf0988'),
(138, 72, 'preferred_beans_0_bean_name', 'Daily Blend'),
(139, 72, '_preferred_beans_0_bean_name', 'field_5e936211c0480'),
(140, 72, 'preferred_beans_0_toppings', 'Chocolate,hazelnut & blackcurrant.'),
(141, 72, '_preferred_beans_0_toppings', 'field_5e936222c0481'),
(142, 72, 'preferred_beans_1_bean_name', 'Swiss Water Decaf'),
(143, 72, '_preferred_beans_1_bean_name', 'field_5e936211c0480'),
(144, 72, 'preferred_beans_1_toppings', 'Dark toffee & plum.'),
(145, 72, '_preferred_beans_1_toppings', 'field_5e936222c0481'),
(146, 72, 'preferred_beans_2_bean_name', 'Colombian Supremo'),
(147, 72, '_preferred_beans_2_bean_name', 'field_5e936211c0480'),
(148, 72, 'preferred_beans_2_toppings', 'Cocoa with toffee finish.'),
(149, 72, '_preferred_beans_2_toppings', 'field_5e936222c0481'),
(150, 72, 'preferred_beans_3_bean_name', 'Peru Organic'),
(151, 72, '_preferred_beans_3_bean_name', 'field_5e936211c0480'),
(152, 72, 'preferred_beans_3_toppings', 'Lemon & green apple.'),
(153, 72, '_preferred_beans_3_toppings', 'field_5e936222c0481'),
(154, 72, 'preferred_beans_4_bean_name', 'Mocha'),
(155, 72, '_preferred_beans_4_bean_name', 'field_5e936211c0480'),
(156, 72, 'preferred_beans_4_toppings', 'Stone fruit, malt & cocoa.'),
(157, 72, '_preferred_beans_4_toppings', 'field_5e936222c0481'),
(158, 72, 'preferred_beans_5_bean_name', 'Plunger Blend'),
(159, 72, '_preferred_beans_5_bean_name', 'field_5e936211c0480'),
(160, 72, 'preferred_beans_5_toppings', 'Cocoa with soft citrus & caramel.'),
(161, 72, '_preferred_beans_5_toppings', 'field_5e936222c0481'),
(162, 72, 'preferred_beans_6_bean_name', 'Guatemala Antigua'),
(163, 72, '_preferred_beans_6_bean_name', 'field_5e936211c0480'),
(164, 72, 'preferred_beans_6_toppings', 'Lemon, chocolate & honeycomb.'),
(165, 72, '_preferred_beans_6_toppings', 'field_5e936222c0481'),
(166, 72, 'preferred_beans_7_bean_name', 'Kenya AA'),
(167, 72, '_preferred_beans_7_bean_name', 'field_5e936211c0480'),
(168, 72, 'preferred_beans_7_toppings', 'Passionfruit, butter & cacao.'),
(169, 72, '_preferred_beans_7_toppings', 'field_5e936222c0481'),
(170, 72, 'preferred_beans_8_bean_name', 'Automatica Blend'),
(171, 72, '_preferred_beans_8_bean_name', 'field_5e936211c0480'),
(172, 72, 'preferred_beans_8_toppings', 'Blackcurrant, cocoa & jasmine.'),
(173, 72, '_preferred_beans_8_toppings', 'field_5e936222c0481'),
(174, 72, 'preferred_beans_9_bean_name', 'Costa Rica Tarrazu'),
(175, 72, '_preferred_beans_9_bean_name', 'field_5e936211c0480'),
(176, 72, 'preferred_beans_9_toppings', 'Blackcurrant, lemon & caramel.'),
(177, 72, '_preferred_beans_9_toppings', 'field_5e936222c0481'),
(178, 72, 'weight_0_weight', '100g'),
(179, 72, '_weight_0_weight', 'field_5e9367e0f0989'),
(180, 72, 'weight_1_weight', '250g'),
(181, 72, '_weight_1_weight', 'field_5e9367e0f0989'),
(182, 72, 'weight_2_weight', '500g'),
(183, 72, '_weight_2_weight', 'field_5e9367e0f0989'),
(184, 72, 'weight_3_weight', '1kg'),
(185, 72, '_weight_3_weight', 'field_5e9367e0f0989'),
(208, 85, '_wp_attached_file', '2020/04/buyer-details-mobile-bg.png'),
(209, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:414;s:6:\"height\";i:141;s:4:\"file\";s:35:\"2020/04/buyer-details-mobile-bg.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"buyer-details-mobile-bg-300x102.png\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"buyer-details-mobile-bg-150x141.png\";s:5:\"width\";i:150;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 86, '_wp_attached_file', '2020/04/buyer-mobile-bg.png'),
(211, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:414;s:6:\"height\";i:266;s:4:\"file\";s:27:\"2020/04/buyer-mobile-bg.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"buyer-mobile-bg-300x193.png\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"buyer-mobile-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 87, '_wp_attached_file', '2020/04/coffee.png'),
(213, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:527;s:6:\"height\";i:387;s:4:\"file\";s:18:\"2020/04/coffee.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 88, '_wp_attached_file', '2020/04/coffee-bg.png'),
(215, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:451;s:4:\"file\";s:21:\"2020/04/coffee-bg.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"coffee-bg-266x300.png\";s:5:\"width\";i:266;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"coffee-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 89, '_wp_attached_file', '2020/04/daily-blend.png'),
(217, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2020/04/daily-blend.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"daily-blend-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"daily-blend-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 90, '_wp_attached_file', '2020/04/days.png'),
(219, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:61;s:4:\"file\";s:16:\"2020/04/days.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 91, '_wp_attached_file', '2020/04/delivery.png'),
(221, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:61;s:4:\"file\";s:20:\"2020/04/delivery.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 92, '_wp_attached_file', '2020/04/down-arrow.png'),
(223, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:13;s:4:\"file\";s:22:\"2020/04/down-arrow.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 93, '_wp_attached_file', '2020/04/email.png'),
(225, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:23;s:6:\"height\";i:23;s:4:\"file\";s:17:\"2020/04/email.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 94, '_wp_attached_file', '2020/04/grounding-service.png'),
(227, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:61;s:4:\"file\";s:29:\"2020/04/grounding-service.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 95, '_wp_attached_file', '2020/04/home-icon.png'),
(229, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:106;s:6:\"height\";i:112;s:4:\"file\";s:21:\"2020/04/home-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 96, '_wp_attached_file', '2020/04/icon1.png'),
(231, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/04/icon1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"icon1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 97, '_wp_attached_file', '2020/04/icon2.png'),
(233, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/04/icon2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"icon2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 98, '_wp_attached_file', '2020/04/icon3.png'),
(235, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/04/icon3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"icon3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 99, '_wp_attached_file', '2020/04/icon4.png'),
(237, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/04/icon4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"icon4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 100, '_wp_attached_file', '2020/04/icon5.png'),
(239, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/04/icon5.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"icon5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 101, '_wp_attached_file', '2020/04/icon6.png'),
(241, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/04/icon6.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"icon6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 102, '_wp_attached_file', '2020/04/icon7.png'),
(243, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/04/icon7.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"icon7-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 103, '_wp_attached_file', '2020/04/icon8.png'),
(245, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/04/icon8.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"icon8-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"icon8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 104, '_wp_attached_file', '2020/04/in-store-pickup.png'),
(247, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:61;s:4:\"file\";s:27:\"2020/04/in-store-pickup.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 105, '_wp_attached_file', '2020/04/mobile.png'),
(249, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:23;s:6:\"height\";i:23;s:4:\"file\";s:18:\"2020/04/mobile.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 106, '_wp_attached_file', '2020/04/thank-you-bg.png'),
(251, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:414;s:6:\"height\";i:453;s:4:\"file\";s:24:\"2020/04/thank-you-bg.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"thank-you-bg-274x300.png\";s:5:\"width\";i:274;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"thank-you-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 107, '_wp_attached_file', '2020/04/thank-you-home.png'),
(253, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:126;s:6:\"height\";i:127;s:4:\"file\";s:26:\"2020/04/thank-you-home.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 108, '_wp_attached_file', '2020/04/user.png'),
(255, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:23;s:6:\"height\";i:23;s:4:\"file\";s:16:\"2020/04/user.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 109, '_wp_attached_file', '2020/04/whole-beans.png'),
(257, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:61;s:4:\"file\";s:23:\"2020/04/whole-beans.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 110, '_wp_attached_file', '2020/04/yellow_blob.png'),
(259, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:499;s:6:\"height\";i:483;s:4:\"file\";s:23:\"2020/04/yellow_blob.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"yellow_blob-300x290.png\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"yellow_blob-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 111, '_wp_attached_file', '2020/04/yellow-blob.png'),
(261, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1054;s:6:\"height\";i:942;s:4:\"file\";s:23:\"2020/04/yellow-blob.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"yellow-blob-300x268.png\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"yellow-blob-1024x915.png\";s:5:\"width\";i:1024;s:6:\"height\";i:915;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"yellow-blob-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"yellow-blob-768x686.png\";s:5:\"width\";i:768;s:6:\"height\";i:686;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 72, 'grinds_0_name', 'Aeropress'),
(263, 72, '_grinds_0_name', 'field_5e93681f2d4c0'),
(264, 72, 'grinds_0_image', '96'),
(265, 72, '_grinds_0_image', 'field_5e93683f2d4c1'),
(266, 72, 'grinds_1_name', 'Moka Pot'),
(267, 72, '_grinds_1_name', 'field_5e93681f2d4c0'),
(268, 72, 'grinds_1_image', '97'),
(269, 72, '_grinds_1_image', 'field_5e93683f2d4c1'),
(270, 72, 'grinds_2_name', 'Percolator'),
(271, 72, '_grinds_2_name', 'field_5e93681f2d4c0'),
(272, 72, 'grinds_2_image', '98'),
(273, 72, '_grinds_2_image', 'field_5e93683f2d4c1'),
(274, 72, 'grinds_3_name', 'Automatic Drip'),
(275, 72, '_grinds_3_name', 'field_5e93681f2d4c0'),
(276, 72, 'grinds_3_image', '99'),
(277, 72, '_grinds_3_image', 'field_5e93683f2d4c1'),
(278, 72, 'grinds_4_name', 'Chemex'),
(279, 72, '_grinds_4_name', 'field_5e93681f2d4c0'),
(280, 72, 'grinds_4_image', '100'),
(281, 72, '_grinds_4_image', 'field_5e93683f2d4c1'),
(282, 72, 'grinds_5_name', 'Cold Drip'),
(283, 72, '_grinds_5_name', 'field_5e93681f2d4c0'),
(284, 72, 'grinds_5_image', '101'),
(285, 72, '_grinds_5_image', 'field_5e93683f2d4c1'),
(286, 72, 'grinds_6_name', 'French Press'),
(287, 72, '_grinds_6_name', 'field_5e93681f2d4c0'),
(288, 72, 'grinds_6_image', '102'),
(289, 72, '_grinds_6_image', 'field_5e93683f2d4c1'),
(290, 72, 'grinds_7_name', 'Espresso Machine'),
(291, 72, '_grinds_7_name', 'field_5e93681f2d4c0'),
(292, 72, 'grinds_7_image', '103'),
(293, 72, '_grinds_7_image', 'field_5e93683f2d4c1'),
(294, 72, 'grind_0_name', 'Aeropress'),
(295, 72, '_grind_0_name', 'field_5e93681f2d4c0'),
(296, 72, 'grind_0_image', '96'),
(297, 72, '_grind_0_image', 'field_5e93683f2d4c1'),
(298, 72, 'grind_1_name', 'Stovetop'),
(299, 72, '_grind_1_name', 'field_5e93681f2d4c0'),
(300, 72, 'grind_1_image', '97'),
(301, 72, '_grind_1_image', 'field_5e93683f2d4c1'),
(302, 72, 'grind_2_name', 'Percolator'),
(303, 72, '_grind_2_name', 'field_5e93681f2d4c0'),
(304, 72, 'grind_2_image', '98'),
(305, 72, '_grind_2_image', 'field_5e93683f2d4c1'),
(306, 72, 'grind_3_name', 'Automatic Drip'),
(307, 72, '_grind_3_name', 'field_5e93681f2d4c0'),
(308, 72, 'grind_3_image', '99'),
(309, 72, '_grind_3_image', 'field_5e93683f2d4c1'),
(310, 72, 'grind_4_name', 'Chemex'),
(311, 72, '_grind_4_name', 'field_5e93681f2d4c0'),
(312, 72, 'grind_4_image', '100'),
(313, 72, '_grind_4_image', 'field_5e93683f2d4c1'),
(314, 72, 'grind_5_name', 'Cold Drip'),
(315, 72, '_grind_5_name', 'field_5e93681f2d4c0'),
(316, 72, 'grind_5_image', '101'),
(317, 72, '_grind_5_image', 'field_5e93683f2d4c1'),
(318, 72, 'grind_6_name', 'Plunger'),
(319, 72, '_grind_6_name', 'field_5e93681f2d4c0'),
(320, 72, 'grind_6_image', '102'),
(321, 72, '_grind_6_image', 'field_5e93683f2d4c1'),
(322, 72, 'grind_7_name', 'Espresso Machine'),
(323, 72, '_grind_7_name', 'field_5e93681f2d4c0'),
(324, 72, 'grind_7_image', '103'),
(325, 72, '_grind_7_image', 'field_5e93683f2d4c1'),
(326, 72, 'grind', '8'),
(327, 72, '_grind', 'field_5e9368102d4bf'),
(328, 112, '_edit_lock', '1590438045:1'),
(329, 112, '_edit_last', '1'),
(330, 112, 'preferred_beans', '10'),
(331, 112, '_preferred_beans', 'field_5e9361f2c047f'),
(332, 112, 'weight', '4'),
(333, 112, '_weight', 'field_5e9367bcf0988'),
(334, 112, 'grind', '8'),
(335, 112, '_grind', 'field_5e9368102d4bf'),
(336, 112, 'address', '306 Larsen Street, Hampton, VIC 3188.'),
(337, 112, '_address', 'field_5e93687c0b01e'),
(338, 112, 'latitude', ''),
(339, 112, '_latitude', 'field_5e93689b7aa7a'),
(340, 112, 'longitude', ''),
(341, 112, '_longitude', 'field_5e9368b627636'),
(342, 112, '_wp_old_slug', 'larsen-and-co'),
(343, 112, 'preferred_beans_0_bean_name', 'Daily Blend'),
(344, 112, '_preferred_beans_0_bean_name', 'field_5e936211c0480'),
(345, 112, 'preferred_beans_0_toppings', 'Chocolate,hazelnut & blackcurrant.'),
(346, 112, '_preferred_beans_0_toppings', 'field_5e936222c0481'),
(347, 112, 'preferred_beans_1_bean_name', 'Swiss Water Decaf'),
(348, 112, '_preferred_beans_1_bean_name', 'field_5e936211c0480'),
(349, 112, 'preferred_beans_1_toppings', 'Dark toffee & plum.'),
(350, 112, '_preferred_beans_1_toppings', 'field_5e936222c0481'),
(351, 112, 'preferred_beans_2_bean_name', 'Colombian Supremo'),
(352, 112, '_preferred_beans_2_bean_name', 'field_5e936211c0480'),
(353, 112, 'preferred_beans_2_toppings', 'Cocoa with toffee finish.'),
(354, 112, '_preferred_beans_2_toppings', 'field_5e936222c0481'),
(355, 112, 'preferred_beans_3_bean_name', 'Peru Organic'),
(356, 112, '_preferred_beans_3_bean_name', 'field_5e936211c0480'),
(357, 112, 'preferred_beans_3_toppings', 'Lemon & green apple.'),
(358, 112, '_preferred_beans_3_toppings', 'field_5e936222c0481'),
(359, 112, 'preferred_beans_4_bean_name', 'Mocha'),
(360, 112, '_preferred_beans_4_bean_name', 'field_5e936211c0480'),
(361, 112, 'preferred_beans_4_toppings', 'Stone fruit, malt & cocoa.'),
(362, 112, '_preferred_beans_4_toppings', 'field_5e936222c0481'),
(363, 112, 'preferred_beans_5_bean_name', 'Plunger Blend'),
(364, 112, '_preferred_beans_5_bean_name', 'field_5e936211c0480'),
(365, 112, 'preferred_beans_5_toppings', 'Cocoa with soft citrus & caramel.'),
(366, 112, '_preferred_beans_5_toppings', 'field_5e936222c0481'),
(367, 112, 'preferred_beans_6_bean_name', 'Guatemala Antigua'),
(368, 112, '_preferred_beans_6_bean_name', 'field_5e936211c0480'),
(369, 112, 'preferred_beans_6_toppings', 'Lemon, chocolate & honeycomb.'),
(370, 112, '_preferred_beans_6_toppings', 'field_5e936222c0481'),
(371, 112, 'preferred_beans_7_bean_name', 'Kenya AA'),
(372, 112, '_preferred_beans_7_bean_name', 'field_5e936211c0480'),
(373, 112, 'preferred_beans_7_toppings', 'Passionfruit, butter & cacao.'),
(374, 112, '_preferred_beans_7_toppings', 'field_5e936222c0481'),
(375, 112, 'preferred_beans_8_bean_name', 'Automatica Blend'),
(376, 112, '_preferred_beans_8_bean_name', 'field_5e936211c0480'),
(377, 112, 'preferred_beans_8_toppings', 'Blackcurrant, cocoa & jasmine.'),
(378, 112, '_preferred_beans_8_toppings', 'field_5e936222c0481'),
(379, 112, 'preferred_beans_9_bean_name', 'Costa Rica Tarrazu'),
(380, 112, '_preferred_beans_9_bean_name', 'field_5e936211c0480'),
(381, 112, 'preferred_beans_9_toppings', 'Blackcurrant, lemon & caramel.'),
(382, 112, '_preferred_beans_9_toppings', 'field_5e936222c0481'),
(383, 112, 'weight_0_weight', '250g'),
(384, 112, '_weight_0_weight', 'field_5e9367e0f0989'),
(385, 112, 'weight_1_weight', '500g'),
(386, 112, '_weight_1_weight', 'field_5e9367e0f0989'),
(387, 112, 'weight_2_weight', '750g'),
(388, 112, '_weight_2_weight', 'field_5e9367e0f0989'),
(389, 112, 'weight_3_weight', '1kg'),
(390, 112, '_weight_3_weight', 'field_5e9367e0f0989'),
(391, 112, 'grind_0_name', 'Aeropress'),
(392, 112, '_grind_0_name', 'field_5e93681f2d4c0'),
(393, 112, 'grind_0_image', '96'),
(394, 112, '_grind_0_image', 'field_5e93683f2d4c1'),
(395, 112, 'grind_1_name', 'Moka Pot'),
(396, 112, '_grind_1_name', 'field_5e93681f2d4c0'),
(397, 112, 'grind_1_image', '97'),
(398, 112, '_grind_1_image', 'field_5e93683f2d4c1'),
(399, 112, 'grind_2_name', 'Percolator'),
(400, 112, '_grind_2_name', 'field_5e93681f2d4c0'),
(401, 112, 'grind_2_image', '98'),
(402, 112, '_grind_2_image', 'field_5e93683f2d4c1'),
(403, 112, 'grind_3_name', 'Automatic Drip'),
(404, 112, '_grind_3_name', 'field_5e93681f2d4c0'),
(405, 112, 'grind_3_image', '99'),
(406, 112, '_grind_3_image', 'field_5e93683f2d4c1'),
(407, 112, 'grind_4_name', 'Chemex'),
(408, 112, '_grind_4_name', 'field_5e93681f2d4c0'),
(409, 112, 'grind_4_image', '100'),
(410, 112, '_grind_4_image', 'field_5e93683f2d4c1'),
(411, 112, 'grind_5_name', 'Cold Drip'),
(412, 112, '_grind_5_name', 'field_5e93681f2d4c0'),
(413, 112, 'grind_5_image', '101'),
(414, 112, '_grind_5_image', 'field_5e93683f2d4c1'),
(415, 112, 'grind_6_name', 'French Press'),
(416, 112, '_grind_6_name', 'field_5e93681f2d4c0'),
(417, 112, 'grind_6_image', '102'),
(418, 112, '_grind_6_image', 'field_5e93683f2d4c1'),
(419, 112, 'grind_7_name', 'Espresso Machine'),
(420, 112, '_grind_7_name', 'field_5e93681f2d4c0'),
(421, 112, 'grind_7_image', '103'),
(422, 112, '_grind_7_image', 'field_5e93683f2d4c1'),
(423, 113, '_edit_lock', '1596220800:1'),
(424, 115, '_wp_attached_file', '2020/04/temporary_HOME.jpg'),
(425, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:26:\"2020/04/temporary_HOME.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"temporary_HOME-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"temporary_HOME-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"temporary_HOME-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"temporary_HOME-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"temporary_HOME-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"temporary_HOME-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(426, 113, '_thumbnail_id', '117'),
(427, 113, '_wp_page_template', 'home.php'),
(428, 117, '_wp_attached_file', '2020/04/temporary_HOME-1.jpg'),
(429, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:28:\"2020/04/temporary_HOME-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"temporary_HOME-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"temporary_HOME-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"temporary_HOME-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"temporary_HOME-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"temporary_HOME-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"temporary_HOME-1-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(433, 119, '_edit_lock', '1600622584:1'),
(434, 119, '_wp_page_template', 'test.php'),
(435, 121, '_menu_item_type', 'post_type'),
(436, 121, '_menu_item_menu_item_parent', '0'),
(437, 121, '_menu_item_object_id', '119'),
(438, 121, '_menu_item_object', 'page'),
(439, 121, '_menu_item_target', ''),
(440, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(441, 121, '_menu_item_xfn', ''),
(442, 121, '_menu_item_url', ''),
(444, 122, '_menu_item_type', 'post_type'),
(445, 122, '_menu_item_menu_item_parent', '0'),
(446, 122, '_menu_item_object_id', '119'),
(447, 122, '_menu_item_object', 'page'),
(448, 122, '_menu_item_target', ''),
(449, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(450, 122, '_menu_item_xfn', ''),
(451, 122, '_menu_item_url', ''),
(453, 123, '_menu_item_type', 'post_type'),
(454, 123, '_menu_item_menu_item_parent', '0'),
(455, 123, '_menu_item_object_id', '30'),
(456, 123, '_menu_item_object', 'page'),
(457, 123, '_menu_item_target', ''),
(458, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(459, 123, '_menu_item_xfn', ''),
(460, 123, '_menu_item_url', ''),
(462, 124, '_menu_item_type', 'post_type'),
(463, 124, '_menu_item_menu_item_parent', '0'),
(464, 124, '_menu_item_object_id', '28'),
(465, 124, '_menu_item_object', 'page'),
(466, 124, '_menu_item_target', ''),
(467, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(468, 124, '_menu_item_xfn', ''),
(469, 124, '_menu_item_url', ''),
(470, 124, '_menu_item_orphaned', '1588051537'),
(471, 126, '_edit_lock', '1588608723:1'),
(472, 126, '_edit_last', '1'),
(473, 126, 'preferred_beans_0_bean_name', 'Bar Speciale'),
(474, 126, '_preferred_beans_0_bean_name', 'field_5e936211c0480'),
(475, 126, 'preferred_beans_0_toppings', ''),
(476, 126, '_preferred_beans_0_toppings', 'field_5e936222c0481'),
(477, 126, 'preferred_beans_1_bean_name', 'Decaf'),
(478, 126, '_preferred_beans_1_bean_name', 'field_5e936211c0480'),
(479, 126, 'preferred_beans_1_toppings', ''),
(480, 126, '_preferred_beans_1_toppings', 'field_5e936222c0481'),
(481, 126, 'preferred_beans', '2'),
(482, 126, '_preferred_beans', 'field_5e9361f2c047f'),
(483, 126, 'weight', '4'),
(484, 126, '_weight', 'field_5e9367bcf0988'),
(485, 126, 'grind', '8'),
(486, 126, '_grind', 'field_5e9368102d4bf'),
(487, 126, 'address', '275 Hampton Street, Hampton, VIC 3188.'),
(488, 126, '_address', 'field_5e93687c0b01e'),
(489, 126, 'latitude', ''),
(490, 126, '_latitude', 'field_5e93689b7aa7a'),
(491, 126, 'longitude', ''),
(492, 126, '_longitude', 'field_5e9368b627636'),
(493, 126, 'weight_0_weight', '250g'),
(494, 126, '_weight_0_weight', 'field_5e9367e0f0989'),
(495, 126, 'weight_1_weight', '500g'),
(496, 126, '_weight_1_weight', 'field_5e9367e0f0989'),
(497, 126, 'weight_2_weight', '750g'),
(498, 126, '_weight_2_weight', 'field_5e9367e0f0989'),
(499, 126, 'weight_3_weight', '1kg'),
(500, 126, '_weight_3_weight', 'field_5e9367e0f0989'),
(501, 126, '_wp_old_slug', 'eclair-hampton'),
(502, 126, 'grind_0_name', 'Aeropress'),
(503, 126, '_grind_0_name', 'field_5e93681f2d4c0'),
(504, 126, 'grind_0_image', '96'),
(505, 126, '_grind_0_image', 'field_5e93683f2d4c1'),
(506, 126, 'grind_1_name', 'Moka Pot'),
(507, 126, '_grind_1_name', 'field_5e93681f2d4c0'),
(508, 126, 'grind_1_image', '97'),
(509, 126, '_grind_1_image', 'field_5e93683f2d4c1'),
(510, 126, 'grind_2_name', 'Percolator'),
(511, 126, '_grind_2_name', 'field_5e93681f2d4c0'),
(512, 126, 'grind_2_image', '98'),
(513, 126, '_grind_2_image', 'field_5e93683f2d4c1'),
(514, 126, 'grind_3_name', 'Automatic Drip'),
(515, 126, '_grind_3_name', 'field_5e93681f2d4c0'),
(516, 126, 'grind_3_image', '99'),
(517, 126, '_grind_3_image', 'field_5e93683f2d4c1'),
(518, 126, 'grind_4_name', 'Chemex'),
(519, 126, '_grind_4_name', 'field_5e93681f2d4c0'),
(520, 126, 'grind_4_image', '100'),
(521, 126, '_grind_4_image', 'field_5e93683f2d4c1'),
(522, 126, 'grind_5_name', 'Cold Drip'),
(523, 126, '_grind_5_name', 'field_5e93681f2d4c0'),
(524, 126, 'grind_5_image', '101'),
(525, 126, '_grind_5_image', 'field_5e93683f2d4c1'),
(526, 126, 'grind_6_name', 'French Press'),
(527, 126, '_grind_6_name', 'field_5e93681f2d4c0'),
(528, 126, 'grind_6_image', '102'),
(529, 126, '_grind_6_image', 'field_5e93683f2d4c1'),
(530, 126, 'grind_7_name', 'Espresso Machine'),
(531, 126, '_grind_7_name', 'field_5e93681f2d4c0'),
(532, 126, 'grind_7_image', '103'),
(533, 126, '_grind_7_image', 'field_5e93683f2d4c1'),
(534, 129, '_edit_lock', '1590869128:1'),
(535, 129, '_edit_last', '1'),
(536, 129, 'address', '305 Hampton Street, Hampton, VIC 3188.'),
(537, 129, '_address', 'field_5e93687c0b01e'),
(538, 129, 'grind_0_name', 'Aeropress'),
(539, 129, '_grind_0_name', 'field_5e93681f2d4c0'),
(540, 129, 'grind_0_image', '96'),
(541, 129, '_grind_0_image', 'field_5e93683f2d4c1'),
(542, 129, 'grind_1_name', 'Moka Pot'),
(543, 129, '_grind_1_name', 'field_5e93681f2d4c0'),
(544, 129, 'grind_1_image', '97'),
(545, 129, '_grind_1_image', 'field_5e93683f2d4c1'),
(546, 129, 'grind_2_name', 'Percolator'),
(547, 129, '_grind_2_name', 'field_5e93681f2d4c0'),
(548, 129, 'grind_2_image', '98'),
(549, 129, '_grind_2_image', 'field_5e93683f2d4c1'),
(550, 129, 'grind_3_name', 'Automatic Drip'),
(551, 129, '_grind_3_name', 'field_5e93681f2d4c0'),
(552, 129, 'grind_3_image', '99'),
(553, 129, '_grind_3_image', 'field_5e93683f2d4c1'),
(554, 129, 'grind', '8'),
(555, 129, '_grind', 'field_5e9368102d4bf'),
(556, 129, 'latitude', ''),
(557, 129, '_latitude', 'field_5e93689b7aa7a'),
(558, 129, 'longitude', ''),
(559, 129, '_longitude', 'field_5e9368b627636'),
(560, 129, 'preferred_beans', '10'),
(561, 129, '_preferred_beans', 'field_5e9361f2c047f'),
(562, 129, 'weight', '4'),
(563, 129, '_weight', 'field_5e9367bcf0988'),
(564, 129, 'preferred_beans_0_bean_name', 'Daily Blend'),
(565, 129, '_preferred_beans_0_bean_name', 'field_5e936211c0480'),
(566, 129, 'preferred_beans_0_toppings', 'Chocolate,hazelnut & blackcurrant.'),
(567, 129, '_preferred_beans_0_toppings', 'field_5e936222c0481'),
(568, 129, 'preferred_beans_0_price_for_100g', '4.8'),
(569, 129, '_preferred_beans_0_price_for_100g', 'field_5ecc22aec57d1'),
(570, 129, 'preferred_beans_0_price_for_250g', '12'),
(571, 129, '_preferred_beans_0_price_for_250g', 'field_5ecc22d8c57d2'),
(572, 129, 'preferred_beans_0_price_for_500g', '24'),
(573, 129, '_preferred_beans_0_price_for_500g', 'field_5ecc22f4c57d3'),
(574, 129, 'preferred_beans_0_price_for_1kg', '48'),
(575, 129, '_preferred_beans_0_price_for_1kg', 'field_5ecc22fbc57d4'),
(576, 129, 'preferred_beans_1_bean_name', 'Swiss Water Decaf'),
(577, 129, '_preferred_beans_1_bean_name', 'field_5e936211c0480'),
(578, 129, 'preferred_beans_1_toppings', 'Dark toffee & plum.'),
(579, 129, '_preferred_beans_1_toppings', 'field_5e936222c0481'),
(580, 129, 'preferred_beans_1_price_for_100g', '5.2'),
(581, 129, '_preferred_beans_1_price_for_100g', 'field_5ecc22aec57d1'),
(582, 129, 'preferred_beans_1_price_for_250g', '13');
INSERT INTO `beano_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(583, 129, '_preferred_beans_1_price_for_250g', 'field_5ecc22d8c57d2'),
(584, 129, 'preferred_beans_1_price_for_500g', '26'),
(585, 129, '_preferred_beans_1_price_for_500g', 'field_5ecc22f4c57d3'),
(586, 129, 'preferred_beans_1_price_for_1kg', '48'),
(587, 129, '_preferred_beans_1_price_for_1kg', 'field_5ecc22fbc57d4'),
(588, 129, 'preferred_beans_2_bean_name', 'Colombian Supremo'),
(589, 129, '_preferred_beans_2_bean_name', 'field_5e936211c0480'),
(590, 129, 'preferred_beans_2_toppings', 'Cocoa with toffee finish.'),
(591, 129, '_preferred_beans_2_toppings', 'field_5e936222c0481'),
(592, 129, 'preferred_beans_2_price_for_100g', '5'),
(593, 129, '_preferred_beans_2_price_for_100g', 'field_5ecc22aec57d1'),
(594, 129, 'preferred_beans_2_price_for_250g', '12'),
(595, 129, '_preferred_beans_2_price_for_250g', 'field_5ecc22d8c57d2'),
(596, 129, 'preferred_beans_2_price_for_500g', '25'),
(597, 129, '_preferred_beans_2_price_for_500g', 'field_5ecc22f4c57d3'),
(598, 129, 'preferred_beans_2_price_for_1kg', '46'),
(599, 129, '_preferred_beans_2_price_for_1kg', 'field_5ecc22fbc57d4'),
(600, 129, 'preferred_beans_3_bean_name', 'Peru Organic'),
(601, 129, '_preferred_beans_3_bean_name', 'field_5e936211c0480'),
(602, 129, 'preferred_beans_3_toppings', 'Lemon & green apple.'),
(603, 129, '_preferred_beans_3_toppings', 'field_5e936222c0481'),
(604, 129, 'preferred_beans_3_price_for_100g', '5'),
(605, 129, '_preferred_beans_3_price_for_100g', 'field_5ecc22aec57d1'),
(606, 129, 'preferred_beans_3_price_for_250g', '12.5'),
(607, 129, '_preferred_beans_3_price_for_250g', 'field_5ecc22d8c57d2'),
(608, 129, 'preferred_beans_3_price_for_500g', '25'),
(609, 129, '_preferred_beans_3_price_for_500g', 'field_5ecc22f4c57d3'),
(610, 129, 'preferred_beans_3_price_for_1kg', '48'),
(611, 129, '_preferred_beans_3_price_for_1kg', 'field_5ecc22fbc57d4'),
(612, 129, 'preferred_beans_4_bean_name', 'Mocha'),
(613, 129, '_preferred_beans_4_bean_name', 'field_5e936211c0480'),
(614, 129, 'preferred_beans_4_toppings', 'Stone fruit, malt & cocoa.'),
(615, 129, '_preferred_beans_4_toppings', 'field_5e936222c0481'),
(616, 129, 'preferred_beans_4_price_for_100g', '5'),
(617, 129, '_preferred_beans_4_price_for_100g', 'field_5ecc22aec57d1'),
(618, 129, 'preferred_beans_4_price_for_250g', '12.5'),
(619, 129, '_preferred_beans_4_price_for_250g', 'field_5ecc22d8c57d2'),
(620, 129, 'preferred_beans_4_price_for_500g', '25'),
(621, 129, '_preferred_beans_4_price_for_500g', 'field_5ecc22f4c57d3'),
(622, 129, 'preferred_beans_4_price_for_1kg', '48'),
(623, 129, '_preferred_beans_4_price_for_1kg', 'field_5ecc22fbc57d4'),
(624, 129, 'preferred_beans_5_bean_name', 'Plunger Blend'),
(625, 129, '_preferred_beans_5_bean_name', 'field_5e936211c0480'),
(626, 129, 'preferred_beans_5_toppings', 'Cocoa with soft citrus & caramel.'),
(627, 129, '_preferred_beans_5_toppings', 'field_5e936222c0481'),
(628, 129, 'preferred_beans_5_price_for_100g', '5'),
(629, 129, '_preferred_beans_5_price_for_100g', 'field_5ecc22aec57d1'),
(630, 129, 'preferred_beans_5_price_for_250g', '12.5'),
(631, 129, '_preferred_beans_5_price_for_250g', 'field_5ecc22d8c57d2'),
(632, 129, 'preferred_beans_5_price_for_500g', '25'),
(633, 129, '_preferred_beans_5_price_for_500g', 'field_5ecc22f4c57d3'),
(634, 129, 'preferred_beans_5_price_for_1kg', '46'),
(635, 129, '_preferred_beans_5_price_for_1kg', 'field_5ecc22fbc57d4'),
(636, 129, 'weight_0_weight', '100g'),
(637, 129, '_weight_0_weight', 'field_5e9367e0f0989'),
(638, 129, 'weight_1_weight', '250g'),
(639, 129, '_weight_1_weight', 'field_5e9367e0f0989'),
(640, 129, 'weight_2_weight', '500g'),
(641, 129, '_weight_2_weight', 'field_5e9367e0f0989'),
(642, 129, 'weight_3_weight', '1kg'),
(643, 129, '_weight_3_weight', 'field_5e9367e0f0989'),
(648, 129, 'preferred_beans_6_bean_name', 'Guatemala Antigua'),
(649, 129, '_preferred_beans_6_bean_name', 'field_5e936211c0480'),
(650, 129, 'preferred_beans_6_toppings', 'Lemon, chocolate & honeycomb.'),
(651, 129, '_preferred_beans_6_toppings', 'field_5e936222c0481'),
(652, 129, 'preferred_beans_6_price_for_100g', '5'),
(653, 129, '_preferred_beans_6_price_for_100g', 'field_5ecc22aec57d1'),
(654, 129, 'preferred_beans_6_price_for_250g', '12.5'),
(655, 129, '_preferred_beans_6_price_for_250g', 'field_5ecc22d8c57d2'),
(656, 129, 'preferred_beans_6_price_for_500g', '25'),
(657, 129, '_preferred_beans_6_price_for_500g', 'field_5ecc22f4c57d3'),
(658, 129, 'preferred_beans_6_price_for_1kg', '46'),
(659, 129, '_preferred_beans_6_price_for_1kg', 'field_5ecc22fbc57d4'),
(660, 129, 'preferred_beans_7_bean_name', 'Kenya AA'),
(661, 129, '_preferred_beans_7_bean_name', 'field_5e936211c0480'),
(662, 129, 'preferred_beans_7_toppings', 'Passionfruit, butter & cacao.'),
(663, 129, '_preferred_beans_7_toppings', 'field_5e936222c0481'),
(664, 129, 'preferred_beans_7_price_for_100g', '5.2'),
(665, 129, '_preferred_beans_7_price_for_100g', 'field_5ecc22aec57d1'),
(666, 129, 'preferred_beans_7_price_for_250g', '13'),
(667, 129, '_preferred_beans_7_price_for_250g', 'field_5ecc22d8c57d2'),
(668, 129, 'preferred_beans_7_price_for_500g', '26'),
(669, 129, '_preferred_beans_7_price_for_500g', 'field_5ecc22f4c57d3'),
(670, 129, 'preferred_beans_7_price_for_1kg', '50'),
(671, 129, '_preferred_beans_7_price_for_1kg', 'field_5ecc22fbc57d4'),
(672, 129, 'preferred_beans_8_bean_name', 'Automatica Blend'),
(673, 129, '_preferred_beans_8_bean_name', 'field_5e936211c0480'),
(674, 129, 'preferred_beans_8_toppings', 'Blackcurrant, cocoa & jasmine.'),
(675, 129, '_preferred_beans_8_toppings', 'field_5e936222c0481'),
(676, 129, 'preferred_beans_8_price_for_100g', '4.8'),
(677, 129, '_preferred_beans_8_price_for_100g', 'field_5ecc22aec57d1'),
(678, 129, 'preferred_beans_8_price_for_250g', '12'),
(679, 129, '_preferred_beans_8_price_for_250g', 'field_5ecc22d8c57d2'),
(680, 129, 'preferred_beans_8_price_for_500g', '24'),
(681, 129, '_preferred_beans_8_price_for_500g', 'field_5ecc22f4c57d3'),
(682, 129, 'preferred_beans_8_price_for_1kg', '46'),
(683, 129, '_preferred_beans_8_price_for_1kg', 'field_5ecc22fbc57d4'),
(684, 129, 'preferred_beans_9_bean_name', 'Costa Rica Tarrazu'),
(685, 129, '_preferred_beans_9_bean_name', 'field_5e936211c0480'),
(686, 129, 'preferred_beans_9_toppings', 'Blackcurrant, lemon & caramel.'),
(687, 129, '_preferred_beans_9_toppings', 'field_5e936222c0481'),
(688, 129, 'preferred_beans_9_price_for_100g', '4.8'),
(689, 129, '_preferred_beans_9_price_for_100g', 'field_5ecc22aec57d1'),
(690, 129, 'preferred_beans_9_price_for_250g', '12'),
(691, 129, '_preferred_beans_9_price_for_250g', 'field_5ecc22d8c57d2'),
(692, 129, 'preferred_beans_9_price_for_500g', '24'),
(693, 129, '_preferred_beans_9_price_for_500g', 'field_5ecc22f4c57d3'),
(694, 129, 'preferred_beans_9_price_for_1kg', '46'),
(695, 129, '_preferred_beans_9_price_for_1kg', 'field_5ecc22fbc57d4'),
(696, 129, 'grind_4_name', 'Chemex'),
(697, 129, '_grind_4_name', 'field_5e93681f2d4c0'),
(698, 129, 'grind_4_image', '100'),
(699, 129, '_grind_4_image', 'field_5e93683f2d4c1'),
(700, 129, 'grind_5_name', 'Cold Drip'),
(701, 129, '_grind_5_name', 'field_5e93681f2d4c0'),
(702, 129, 'grind_5_image', '101'),
(703, 129, '_grind_5_image', 'field_5e93683f2d4c1'),
(704, 129, 'grind_6_name', 'French Press'),
(705, 129, '_grind_6_name', 'field_5e93681f2d4c0'),
(706, 129, 'grind_6_image', '102'),
(707, 129, '_grind_6_image', 'field_5e93683f2d4c1'),
(708, 129, 'grind_7_name', 'Espresso Machine'),
(709, 129, '_grind_7_name', 'field_5e93681f2d4c0'),
(710, 129, 'grind_7_image', '103'),
(711, 129, '_grind_7_image', 'field_5e93683f2d4c1'),
(712, 72, 'preferred_beans_0_price_for_100g', '5.2'),
(713, 72, '_preferred_beans_0_price_for_100g', 'field_5ecc22aec57d1'),
(714, 72, 'preferred_beans_0_price_for_250g', '13'),
(715, 72, '_preferred_beans_0_price_for_250g', 'field_5ecc22d8c57d2'),
(716, 72, 'preferred_beans_0_price_for_500g', '26'),
(717, 72, '_preferred_beans_0_price_for_500g', 'field_5ecc22f4c57d3'),
(718, 72, 'preferred_beans_0_price_for_1kg', '45'),
(719, 72, '_preferred_beans_0_price_for_1kg', 'field_5ecc22fbc57d4'),
(720, 72, 'preferred_beans_1_price_for_100g', '5.4'),
(721, 72, '_preferred_beans_1_price_for_100g', 'field_5ecc22aec57d1'),
(722, 72, 'preferred_beans_1_price_for_250g', '13.5'),
(723, 72, '_preferred_beans_1_price_for_250g', 'field_5ecc22d8c57d2'),
(724, 72, 'preferred_beans_1_price_for_500g', '27'),
(725, 72, '_preferred_beans_1_price_for_500g', 'field_5ecc22f4c57d3'),
(726, 72, 'preferred_beans_1_price_for_1kg', '48'),
(727, 72, '_preferred_beans_1_price_for_1kg', 'field_5ecc22fbc57d4'),
(728, 72, 'preferred_beans_2_price_for_100g', '5.4'),
(729, 72, '_preferred_beans_2_price_for_100g', 'field_5ecc22aec57d1'),
(730, 72, 'preferred_beans_2_price_for_250g', '13.5'),
(731, 72, '_preferred_beans_2_price_for_250g', 'field_5ecc22d8c57d2'),
(732, 72, 'preferred_beans_2_price_for_500g', '27'),
(733, 72, '_preferred_beans_2_price_for_500g', 'field_5ecc22f4c57d3'),
(734, 72, 'preferred_beans_2_price_for_1kg', '48'),
(735, 72, '_preferred_beans_2_price_for_1kg', 'field_5ecc22fbc57d4'),
(736, 72, 'preferred_beans_3_price_for_100g', '5.2'),
(737, 72, '_preferred_beans_3_price_for_100g', 'field_5ecc22aec57d1'),
(738, 72, 'preferred_beans_3_price_for_250g', '13'),
(739, 72, '_preferred_beans_3_price_for_250g', 'field_5ecc22d8c57d2'),
(740, 72, 'preferred_beans_3_price_for_500g', '26'),
(741, 72, '_preferred_beans_3_price_for_500g', 'field_5ecc22f4c57d3'),
(742, 72, 'preferred_beans_3_price_for_1kg', '48'),
(743, 72, '_preferred_beans_3_price_for_1kg', 'field_5ecc22fbc57d4'),
(744, 72, 'preferred_beans_4_price_for_100g', '5.2'),
(745, 72, '_preferred_beans_4_price_for_100g', 'field_5ecc22aec57d1'),
(746, 72, 'preferred_beans_4_price_for_250g', '13'),
(747, 72, '_preferred_beans_4_price_for_250g', 'field_5ecc22d8c57d2'),
(748, 72, 'preferred_beans_4_price_for_500g', '26'),
(749, 72, '_preferred_beans_4_price_for_500g', 'field_5ecc22f4c57d3'),
(750, 72, 'preferred_beans_4_price_for_1kg', '48'),
(751, 72, '_preferred_beans_4_price_for_1kg', 'field_5ecc22fbc57d4'),
(752, 72, 'preferred_beans_5_price_for_100g', '5.2'),
(753, 72, '_preferred_beans_5_price_for_100g', 'field_5ecc22aec57d1'),
(754, 72, 'preferred_beans_5_price_for_250g', '13'),
(755, 72, '_preferred_beans_5_price_for_250g', 'field_5ecc22d8c57d2'),
(756, 72, 'preferred_beans_5_price_for_500g', '26'),
(757, 72, '_preferred_beans_5_price_for_500g', 'field_5ecc22f4c57d3'),
(758, 72, 'preferred_beans_5_price_for_1kg', '48'),
(759, 72, '_preferred_beans_5_price_for_1kg', 'field_5ecc22fbc57d4'),
(760, 72, 'preferred_beans_6_price_for_100g', '5.2'),
(761, 72, '_preferred_beans_6_price_for_100g', 'field_5ecc22aec57d1'),
(762, 72, 'preferred_beans_6_price_for_250g', '13'),
(763, 72, '_preferred_beans_6_price_for_250g', 'field_5ecc22d8c57d2'),
(764, 72, 'preferred_beans_6_price_for_500g', '26'),
(765, 72, '_preferred_beans_6_price_for_500g', 'field_5ecc22f4c57d3'),
(766, 72, 'preferred_beans_6_price_for_1kg', '48'),
(767, 72, '_preferred_beans_6_price_for_1kg', 'field_5ecc22fbc57d4'),
(768, 72, 'preferred_beans_7_price_for_100g', '5.4'),
(769, 72, '_preferred_beans_7_price_for_100g', 'field_5ecc22aec57d1'),
(770, 72, 'preferred_beans_7_price_for_250g', '13.5'),
(771, 72, '_preferred_beans_7_price_for_250g', 'field_5ecc22d8c57d2'),
(772, 72, 'preferred_beans_7_price_for_500g', '27'),
(773, 72, '_preferred_beans_7_price_for_500g', 'field_5ecc22f4c57d3'),
(774, 72, 'preferred_beans_7_price_for_1kg', '50'),
(775, 72, '_preferred_beans_7_price_for_1kg', 'field_5ecc22fbc57d4'),
(776, 72, 'preferred_beans_8_price_for_100g', '5'),
(777, 72, '_preferred_beans_8_price_for_100g', 'field_5ecc22aec57d1'),
(778, 72, 'preferred_beans_8_price_for_250g', '12.5'),
(779, 72, '_preferred_beans_8_price_for_250g', 'field_5ecc22d8c57d2'),
(780, 72, 'preferred_beans_8_price_for_500g', '25'),
(781, 72, '_preferred_beans_8_price_for_500g', 'field_5ecc22f4c57d3'),
(782, 72, 'preferred_beans_8_price_for_1kg', '46'),
(783, 72, '_preferred_beans_8_price_for_1kg', 'field_5ecc22fbc57d4'),
(784, 72, 'preferred_beans_9_price_for_100g', '5.2'),
(785, 72, '_preferred_beans_9_price_for_100g', 'field_5ecc22aec57d1'),
(786, 72, 'preferred_beans_9_price_for_250g', '13'),
(787, 72, '_preferred_beans_9_price_for_250g', 'field_5ecc22d8c57d2'),
(788, 72, 'preferred_beans_9_price_for_500g', '26'),
(789, 72, '_preferred_beans_9_price_for_500g', 'field_5ecc22f4c57d3'),
(790, 72, 'preferred_beans_9_price_for_1kg', '48'),
(791, 72, '_preferred_beans_9_price_for_1kg', 'field_5ecc22fbc57d4'),
(792, 139, '_edit_lock', '1593539452:1'),
(793, 139, '_edit_last', '1'),
(794, 139, 'preferred_beans', '3'),
(795, 139, '_preferred_beans', 'field_5e9361f2c047f'),
(796, 139, 'weight', '2'),
(797, 139, '_weight', 'field_5e9367bcf0988'),
(798, 139, 'grind', ''),
(799, 139, '_grind', 'field_5e9368102d4bf'),
(800, 139, 'address', 'Shop 3. 4-6 Station Street Moorabbin VIC 3189.'),
(801, 139, '_address', 'field_5e93687c0b01e'),
(802, 139, 'latitude', ''),
(803, 139, '_latitude', 'field_5e93689b7aa7a'),
(804, 139, 'longitude', ''),
(805, 139, '_longitude', 'field_5e9368b627636'),
(806, 139, 'weight_0_weight', '200g'),
(807, 139, '_weight_0_weight', 'field_5e9367e0f0989'),
(808, 139, 'weight_1_weight', '1kg'),
(809, 139, '_weight_1_weight', 'field_5e9367e0f0989'),
(810, 139, 'preferred_beans_0_bean_name', 'House Blend'),
(811, 139, '_preferred_beans_0_bean_name', 'field_5e936211c0480'),
(812, 139, 'preferred_beans_0_toppings', 'Cocoa nibs, Earth & Spice'),
(813, 139, '_preferred_beans_0_toppings', 'field_5e936222c0481'),
(814, 139, 'preferred_beans_0_price_for_100g', '0'),
(815, 139, '_preferred_beans_0_price_for_100g', 'field_5ecc22aec57d1'),
(816, 139, 'preferred_beans_0_price_for_250g', '0'),
(817, 139, '_preferred_beans_0_price_for_250g', 'field_5ecc22d8c57d2'),
(818, 139, 'preferred_beans_0_price_for_500g', '0'),
(819, 139, '_preferred_beans_0_price_for_500g', 'field_5ecc22f4c57d3'),
(820, 139, 'preferred_beans_0_price_for_1kg', '48'),
(821, 139, '_preferred_beans_0_price_for_1kg', 'field_5ecc22fbc57d4'),
(822, 139, 'preferred_beans_1_bean_name', 'Espresso S.O.'),
(823, 139, '_preferred_beans_1_bean_name', 'field_5e936211c0480'),
(824, 139, 'preferred_beans_1_toppings', 'Single Origin. (Alternates)'),
(825, 139, '_preferred_beans_1_toppings', 'field_5e936222c0481'),
(826, 139, 'preferred_beans_1_price_for_100g', '0'),
(827, 139, '_preferred_beans_1_price_for_100g', 'field_5ecc22aec57d1'),
(828, 139, 'preferred_beans_1_price_for_250g', '0'),
(829, 139, '_preferred_beans_1_price_for_250g', 'field_5ecc22d8c57d2'),
(830, 139, 'preferred_beans_1_price_for_500g', '0'),
(831, 139, '_preferred_beans_1_price_for_500g', 'field_5ecc22f4c57d3'),
(832, 139, 'preferred_beans_1_price_for_1kg', '64.5'),
(833, 139, '_preferred_beans_1_price_for_1kg', 'field_5ecc22fbc57d4'),
(834, 139, 'preferred_beans_2_bean_name', 'Organic Decaf'),
(835, 139, '_preferred_beans_2_bean_name', 'field_5e936211c0480'),
(836, 139, 'preferred_beans_2_toppings', 'Chocolate, Malt & Roasted Nuts'),
(837, 139, '_preferred_beans_2_toppings', 'field_5e936222c0481'),
(838, 139, 'preferred_beans_2_price_for_100g', '0'),
(839, 139, '_preferred_beans_2_price_for_100g', 'field_5ecc22aec57d1'),
(840, 139, 'preferred_beans_2_price_for_250g', '0'),
(841, 139, '_preferred_beans_2_price_for_250g', 'field_5ecc22d8c57d2'),
(842, 139, 'preferred_beans_2_price_for_500g', '0'),
(843, 139, '_preferred_beans_2_price_for_500g', 'field_5ecc22f4c57d3'),
(844, 139, 'preferred_beans_2_price_for_1kg', '56'),
(845, 139, '_preferred_beans_2_price_for_1kg', 'field_5ecc22fbc57d4'),
(846, 139, 'preferred_beans_0_price_for_200g', '12.4'),
(847, 139, '_preferred_beans_0_price_for_200g', 'field_5ef724f2ead06'),
(848, 139, 'preferred_beans_1_price_for_200g', '15.5'),
(849, 139, '_preferred_beans_1_price_for_200g', 'field_5ef724f2ead06'),
(850, 139, 'preferred_beans_2_price_for_200g', '13'),
(851, 139, '_preferred_beans_2_price_for_200g', 'field_5ef724f2ead06'),
(852, 141, '_edit_last', '1'),
(853, 141, '_edit_lock', '1593524786:1'),
(854, 139, 'small_title', 'Nourishing Eatery'),
(855, 139, '_small_title', 'field_5efb423a37b67'),
(857, 147, '_edit_lock', '1595697160:1'),
(858, 147, '_edit_last', '1'),
(859, 147, 'address', '350 Bay Street, Brighton, VIC 3186'),
(860, 147, '_address', 'field_5e93687c0b01e'),
(861, 147, 'grinds', '8'),
(862, 147, '_grinds', 'field_5e9368102d4bf'),
(863, 147, 'latitude', ''),
(864, 147, '_latitude', 'field_5e93689b7aa7a'),
(865, 147, 'longitude', ''),
(866, 147, '_longitude', 'field_5e9368b627636'),
(867, 147, 'preferred_beans', '10'),
(868, 147, '_preferred_beans', 'field_5e9361f2c047f'),
(869, 147, '_wp_old_slug', 'glasshouse-hampton'),
(870, 147, 'weight', '4'),
(871, 147, '_weight', 'field_5e9367bcf0988'),
(872, 147, 'preferred_beans_0_bean_name', 'Daily Blend'),
(873, 147, '_preferred_beans_0_bean_name', 'field_5e936211c0480'),
(874, 147, 'preferred_beans_0_toppings', 'Chocolate,hazelnut & blackcurrant.'),
(875, 147, '_preferred_beans_0_toppings', 'field_5e936222c0481'),
(876, 147, 'preferred_beans_1_bean_name', 'Swiss Water Decaf'),
(877, 147, '_preferred_beans_1_bean_name', 'field_5e936211c0480'),
(878, 147, 'preferred_beans_1_toppings', 'Dark toffee & plum.'),
(879, 147, '_preferred_beans_1_toppings', 'field_5e936222c0481'),
(880, 147, 'preferred_beans_2_bean_name', 'Colombian Supremo'),
(881, 147, '_preferred_beans_2_bean_name', 'field_5e936211c0480'),
(882, 147, 'preferred_beans_2_toppings', 'Cocoa with toffee finish.'),
(883, 147, '_preferred_beans_2_toppings', 'field_5e936222c0481'),
(884, 147, 'preferred_beans_3_bean_name', 'Peru Organic'),
(885, 147, '_preferred_beans_3_bean_name', 'field_5e936211c0480'),
(886, 147, 'preferred_beans_3_toppings', 'Lemon & green apple.'),
(887, 147, '_preferred_beans_3_toppings', 'field_5e936222c0481'),
(888, 147, 'preferred_beans_4_bean_name', 'Mocha'),
(889, 147, '_preferred_beans_4_bean_name', 'field_5e936211c0480'),
(890, 147, 'preferred_beans_4_toppings', 'Stone fruit, malt & cocoa.'),
(891, 147, '_preferred_beans_4_toppings', 'field_5e936222c0481'),
(892, 147, 'preferred_beans_5_bean_name', 'Plunger Blend'),
(893, 147, '_preferred_beans_5_bean_name', 'field_5e936211c0480'),
(894, 147, 'preferred_beans_5_toppings', 'Cocoa with soft citrus & caramel.'),
(895, 147, '_preferred_beans_5_toppings', 'field_5e936222c0481'),
(896, 147, 'preferred_beans_6_bean_name', 'Guatemala Antigua'),
(897, 147, '_preferred_beans_6_bean_name', 'field_5e936211c0480'),
(898, 147, 'preferred_beans_6_toppings', 'Lemon, chocolate & honeycomb.'),
(899, 147, '_preferred_beans_6_toppings', 'field_5e936222c0481'),
(900, 147, 'preferred_beans_7_bean_name', 'Kenya AA'),
(901, 147, '_preferred_beans_7_bean_name', 'field_5e936211c0480'),
(902, 147, 'preferred_beans_7_toppings', 'Passionfruit, butter & cacao.'),
(903, 147, '_preferred_beans_7_toppings', 'field_5e936222c0481'),
(904, 147, 'preferred_beans_8_bean_name', 'Automatica Blend'),
(905, 147, '_preferred_beans_8_bean_name', 'field_5e936211c0480'),
(906, 147, 'preferred_beans_8_toppings', 'Blackcurrant, cocoa & jasmine.'),
(907, 147, '_preferred_beans_8_toppings', 'field_5e936222c0481'),
(908, 147, 'preferred_beans_9_bean_name', 'Costa Rica Tarrazu'),
(909, 147, '_preferred_beans_9_bean_name', 'field_5e936211c0480'),
(910, 147, 'preferred_beans_9_toppings', 'Blackcurrant, lemon & caramel.'),
(911, 147, '_preferred_beans_9_toppings', 'field_5e936222c0481'),
(912, 147, 'weight_0_weight', '100g'),
(913, 147, '_weight_0_weight', 'field_5e9367e0f0989'),
(914, 147, 'weight_1_weight', '250g'),
(915, 147, '_weight_1_weight', 'field_5e9367e0f0989'),
(916, 147, 'weight_2_weight', '500g'),
(917, 147, '_weight_2_weight', 'field_5e9367e0f0989'),
(918, 147, 'weight_3_weight', '1kg'),
(919, 147, '_weight_3_weight', 'field_5e9367e0f0989'),
(920, 147, 'grinds_0_name', 'Aeropress'),
(921, 147, '_grinds_0_name', 'field_5e93681f2d4c0'),
(922, 147, 'grinds_0_image', '96'),
(923, 147, '_grinds_0_image', 'field_5e93683f2d4c1'),
(924, 147, 'grinds_1_name', 'Moka Pot'),
(925, 147, '_grinds_1_name', 'field_5e93681f2d4c0'),
(926, 147, 'grinds_1_image', '97'),
(927, 147, '_grinds_1_image', 'field_5e93683f2d4c1'),
(928, 147, 'grinds_2_name', 'Percolator'),
(929, 147, '_grinds_2_name', 'field_5e93681f2d4c0'),
(930, 147, 'grinds_2_image', '98'),
(931, 147, '_grinds_2_image', 'field_5e93683f2d4c1'),
(932, 147, 'grinds_3_name', 'Automatic Drip'),
(933, 147, '_grinds_3_name', 'field_5e93681f2d4c0'),
(934, 147, 'grinds_3_image', '99'),
(935, 147, '_grinds_3_image', 'field_5e93683f2d4c1'),
(936, 147, 'grinds_4_name', 'Chemex'),
(937, 147, '_grinds_4_name', 'field_5e93681f2d4c0'),
(938, 147, 'grinds_4_image', '100'),
(939, 147, '_grinds_4_image', 'field_5e93683f2d4c1'),
(940, 147, 'grinds_5_name', 'Cold Drip'),
(941, 147, '_grinds_5_name', 'field_5e93681f2d4c0'),
(942, 147, 'grinds_5_image', '101'),
(943, 147, '_grinds_5_image', 'field_5e93683f2d4c1'),
(944, 147, 'grinds_6_name', 'French Press'),
(945, 147, '_grinds_6_name', 'field_5e93681f2d4c0'),
(946, 147, 'grinds_6_image', '102'),
(947, 147, '_grinds_6_image', 'field_5e93683f2d4c1'),
(948, 147, 'grinds_7_name', 'Espresso Machine'),
(949, 147, '_grinds_7_name', 'field_5e93681f2d4c0'),
(950, 147, 'grinds_7_image', '103'),
(951, 147, '_grinds_7_image', 'field_5e93683f2d4c1'),
(952, 147, 'grind_0_name', 'Aeropress'),
(953, 147, '_grind_0_name', 'field_5e93681f2d4c0'),
(954, 147, 'grind_0_image', '96'),
(955, 147, '_grind_0_image', 'field_5e93683f2d4c1'),
(956, 147, 'grind_1_name', 'Stovetop'),
(957, 147, '_grind_1_name', 'field_5e93681f2d4c0'),
(958, 147, 'grind_1_image', '97'),
(959, 147, '_grind_1_image', 'field_5e93683f2d4c1'),
(960, 147, 'grind_2_name', 'Percolator'),
(961, 147, '_grind_2_name', 'field_5e93681f2d4c0'),
(962, 147, 'grind_2_image', '98'),
(963, 147, '_grind_2_image', 'field_5e93683f2d4c1'),
(964, 147, 'grind_3_name', 'Automatic Drip'),
(965, 147, '_grind_3_name', 'field_5e93681f2d4c0'),
(966, 147, 'grind_3_image', '99'),
(967, 147, '_grind_3_image', 'field_5e93683f2d4c1'),
(968, 147, 'grind_4_name', 'Chemex'),
(969, 147, '_grind_4_name', 'field_5e93681f2d4c0'),
(970, 147, 'grind_4_image', '100'),
(971, 147, '_grind_4_image', 'field_5e93683f2d4c1'),
(972, 147, 'grind_5_name', 'Cold Drip'),
(973, 147, '_grind_5_name', 'field_5e93681f2d4c0'),
(974, 147, 'grind_5_image', '101'),
(975, 147, '_grind_5_image', 'field_5e93683f2d4c1'),
(976, 147, 'grind_6_name', 'Plunger'),
(977, 147, '_grind_6_name', 'field_5e93681f2d4c0'),
(978, 147, 'grind_6_image', '102'),
(979, 147, '_grind_6_image', 'field_5e93683f2d4c1'),
(980, 147, 'grind_7_name', 'Espresso Machine'),
(981, 147, '_grind_7_name', 'field_5e93681f2d4c0'),
(982, 147, 'grind_7_image', '103'),
(983, 147, '_grind_7_image', 'field_5e93683f2d4c1'),
(984, 147, 'grind', '8'),
(985, 147, '_grind', 'field_5e9368102d4bf'),
(986, 147, 'preferred_beans_0_price_for_100g', '4.8'),
(987, 147, '_preferred_beans_0_price_for_100g', 'field_5ecc22aec57d1'),
(988, 147, 'preferred_beans_0_price_for_250g', '12'),
(989, 147, '_preferred_beans_0_price_for_250g', 'field_5ecc22d8c57d2'),
(990, 147, 'preferred_beans_0_price_for_500g', '24'),
(991, 147, '_preferred_beans_0_price_for_500g', 'field_5ecc22f4c57d3'),
(992, 147, 'preferred_beans_0_price_for_1kg', '44'),
(993, 147, '_preferred_beans_0_price_for_1kg', 'field_5ecc22fbc57d4'),
(994, 147, 'preferred_beans_1_price_for_100g', '5.2'),
(995, 147, '_preferred_beans_1_price_for_100g', 'field_5ecc22aec57d1'),
(996, 147, 'preferred_beans_1_price_for_250g', '13'),
(997, 147, '_preferred_beans_1_price_for_250g', 'field_5ecc22d8c57d2'),
(998, 147, 'preferred_beans_1_price_for_500g', '26'),
(999, 147, '_preferred_beans_1_price_for_500g', 'field_5ecc22f4c57d3'),
(1000, 147, 'preferred_beans_1_price_for_1kg', '48'),
(1001, 147, '_preferred_beans_1_price_for_1kg', 'field_5ecc22fbc57d4'),
(1002, 147, 'preferred_beans_2_price_for_100g', '5'),
(1003, 147, '_preferred_beans_2_price_for_100g', 'field_5ecc22aec57d1'),
(1004, 147, 'preferred_beans_2_price_for_250g', '12.5'),
(1005, 147, '_preferred_beans_2_price_for_250g', 'field_5ecc22d8c57d2'),
(1006, 147, 'preferred_beans_2_price_for_500g', '25'),
(1007, 147, '_preferred_beans_2_price_for_500g', 'field_5ecc22f4c57d3'),
(1008, 147, 'preferred_beans_2_price_for_1kg', '46'),
(1009, 147, '_preferred_beans_2_price_for_1kg', 'field_5ecc22fbc57d4'),
(1010, 147, 'preferred_beans_3_price_for_100g', '5'),
(1011, 147, '_preferred_beans_3_price_for_100g', 'field_5ecc22aec57d1'),
(1012, 147, 'preferred_beans_3_price_for_250g', '12.5'),
(1013, 147, '_preferred_beans_3_price_for_250g', 'field_5ecc22d8c57d2'),
(1014, 147, 'preferred_beans_3_price_for_500g', '25'),
(1015, 147, '_preferred_beans_3_price_for_500g', 'field_5ecc22f4c57d3'),
(1016, 147, 'preferred_beans_3_price_for_1kg', '48'),
(1017, 147, '_preferred_beans_3_price_for_1kg', 'field_5ecc22fbc57d4'),
(1018, 147, 'preferred_beans_4_price_for_100g', '5'),
(1019, 147, '_preferred_beans_4_price_for_100g', 'field_5ecc22aec57d1'),
(1020, 147, 'preferred_beans_4_price_for_250g', '12.5'),
(1021, 147, '_preferred_beans_4_price_for_250g', 'field_5ecc22d8c57d2'),
(1022, 147, 'preferred_beans_4_price_for_500g', '25'),
(1023, 147, '_preferred_beans_4_price_for_500g', 'field_5ecc22f4c57d3'),
(1024, 147, 'preferred_beans_4_price_for_1kg', '48'),
(1025, 147, '_preferred_beans_4_price_for_1kg', 'field_5ecc22fbc57d4'),
(1026, 147, 'preferred_beans_5_price_for_100g', '5'),
(1027, 147, '_preferred_beans_5_price_for_100g', 'field_5ecc22aec57d1'),
(1028, 147, 'preferred_beans_5_price_for_250g', '12.5'),
(1029, 147, '_preferred_beans_5_price_for_250g', 'field_5ecc22d8c57d2'),
(1030, 147, 'preferred_beans_5_price_for_500g', '25'),
(1031, 147, '_preferred_beans_5_price_for_500g', 'field_5ecc22f4c57d3'),
(1032, 147, 'preferred_beans_5_price_for_1kg', '46'),
(1033, 147, '_preferred_beans_5_price_for_1kg', 'field_5ecc22fbc57d4'),
(1034, 147, 'preferred_beans_6_price_for_100g', '5'),
(1035, 147, '_preferred_beans_6_price_for_100g', 'field_5ecc22aec57d1'),
(1036, 147, 'preferred_beans_6_price_for_250g', '12.5'),
(1037, 147, '_preferred_beans_6_price_for_250g', 'field_5ecc22d8c57d2'),
(1038, 147, 'preferred_beans_6_price_for_500g', '25'),
(1039, 147, '_preferred_beans_6_price_for_500g', 'field_5ecc22f4c57d3'),
(1040, 147, 'preferred_beans_6_price_for_1kg', '46'),
(1041, 147, '_preferred_beans_6_price_for_1kg', 'field_5ecc22fbc57d4'),
(1042, 147, 'preferred_beans_7_price_for_100g', '5.2'),
(1043, 147, '_preferred_beans_7_price_for_100g', 'field_5ecc22aec57d1'),
(1044, 147, 'preferred_beans_7_price_for_250g', '13'),
(1045, 147, '_preferred_beans_7_price_for_250g', 'field_5ecc22d8c57d2'),
(1046, 147, 'preferred_beans_7_price_for_500g', '26'),
(1047, 147, '_preferred_beans_7_price_for_500g', 'field_5ecc22f4c57d3'),
(1048, 147, 'preferred_beans_7_price_for_1kg', '50'),
(1049, 147, '_preferred_beans_7_price_for_1kg', 'field_5ecc22fbc57d4'),
(1050, 147, 'preferred_beans_8_price_for_100g', '4.8'),
(1051, 147, '_preferred_beans_8_price_for_100g', 'field_5ecc22aec57d1'),
(1052, 147, 'preferred_beans_8_price_for_250g', '12'),
(1053, 147, '_preferred_beans_8_price_for_250g', 'field_5ecc22d8c57d2'),
(1054, 147, 'preferred_beans_8_price_for_500g', '24'),
(1055, 147, '_preferred_beans_8_price_for_500g', 'field_5ecc22f4c57d3'),
(1056, 147, 'preferred_beans_8_price_for_1kg', '45'),
(1057, 147, '_preferred_beans_8_price_for_1kg', 'field_5ecc22fbc57d4'),
(1058, 147, 'preferred_beans_9_price_for_100g', '4.8'),
(1059, 147, '_preferred_beans_9_price_for_100g', 'field_5ecc22aec57d1'),
(1060, 147, 'preferred_beans_9_price_for_250g', '12'),
(1061, 147, '_preferred_beans_9_price_for_250g', 'field_5ecc22d8c57d2'),
(1062, 147, 'preferred_beans_9_price_for_500g', '24'),
(1063, 147, '_preferred_beans_9_price_for_500g', 'field_5ecc22f4c57d3'),
(1064, 147, 'preferred_beans_9_price_for_1kg', '46'),
(1065, 147, '_preferred_beans_9_price_for_1kg', 'field_5ecc22fbc57d4'),
(1066, 147, 'small_title', 'Brighton'),
(1067, 147, '_small_title', 'field_5efb423a37b67'),
(1068, 147, 'preferred_beans_0_price_for_200g', ''),
(1069, 147, '_preferred_beans_0_price_for_200g', 'field_5ef724f2ead06'),
(1070, 147, 'preferred_beans_1_price_for_200g', ''),
(1071, 147, '_preferred_beans_1_price_for_200g', 'field_5ef724f2ead06'),
(1072, 147, 'preferred_beans_2_price_for_200g', ''),
(1073, 147, '_preferred_beans_2_price_for_200g', 'field_5ef724f2ead06'),
(1074, 147, 'preferred_beans_3_price_for_200g', ''),
(1075, 147, '_preferred_beans_3_price_for_200g', 'field_5ef724f2ead06'),
(1076, 147, 'preferred_beans_4_price_for_200g', ''),
(1077, 147, '_preferred_beans_4_price_for_200g', 'field_5ef724f2ead06'),
(1078, 147, 'preferred_beans_5_price_for_200g', ''),
(1079, 147, '_preferred_beans_5_price_for_200g', 'field_5ef724f2ead06'),
(1080, 147, 'preferred_beans_6_price_for_200g', ''),
(1081, 147, '_preferred_beans_6_price_for_200g', 'field_5ef724f2ead06'),
(1082, 147, 'preferred_beans_7_price_for_200g', ''),
(1083, 147, '_preferred_beans_7_price_for_200g', 'field_5ef724f2ead06'),
(1084, 147, 'preferred_beans_8_price_for_200g', ''),
(1085, 147, '_preferred_beans_8_price_for_200g', 'field_5ef724f2ead06'),
(1086, 147, 'preferred_beans_9_price_for_200g', ''),
(1087, 147, '_preferred_beans_9_price_for_200g', 'field_5ef724f2ead06'),
(1088, 147, '_wp_old_slug', 'glasshouse-copy'),
(1089, 147, '_wp_old_slug', 'littlesisterbridghton'),
(1090, 72, 'small_title', 'Hampton'),
(1091, 72, '_small_title', 'field_5efb423a37b67'),
(1092, 72, 'preferred_beans_0_price_for_200g', ''),
(1093, 72, '_preferred_beans_0_price_for_200g', 'field_5ef724f2ead06'),
(1094, 72, 'preferred_beans_1_price_for_200g', ''),
(1095, 72, '_preferred_beans_1_price_for_200g', 'field_5ef724f2ead06'),
(1096, 72, 'preferred_beans_2_price_for_200g', ''),
(1097, 72, '_preferred_beans_2_price_for_200g', 'field_5ef724f2ead06'),
(1098, 72, 'preferred_beans_3_price_for_200g', ''),
(1099, 72, '_preferred_beans_3_price_for_200g', 'field_5ef724f2ead06'),
(1100, 72, 'preferred_beans_4_price_for_200g', ''),
(1101, 72, '_preferred_beans_4_price_for_200g', 'field_5ef724f2ead06'),
(1102, 72, 'preferred_beans_5_price_for_200g', ''),
(1103, 72, '_preferred_beans_5_price_for_200g', 'field_5ef724f2ead06'),
(1104, 72, 'preferred_beans_6_price_for_200g', ''),
(1105, 72, '_preferred_beans_6_price_for_200g', 'field_5ef724f2ead06'),
(1106, 72, 'preferred_beans_7_price_for_200g', ''),
(1107, 72, '_preferred_beans_7_price_for_200g', 'field_5ef724f2ead06'),
(1108, 72, 'preferred_beans_8_price_for_200g', ''),
(1109, 72, '_preferred_beans_8_price_for_200g', 'field_5ef724f2ead06'),
(1110, 72, 'preferred_beans_9_price_for_200g', ''),
(1111, 72, '_preferred_beans_9_price_for_200g', 'field_5ef724f2ead06'),
(1112, 152, '_edit_lock', '1596220950:1'),
(1113, 152, '_wp_page_template', 'front_page.php'),
(1115, 161, '_edit_lock', '1627651230:1'),
(1116, 161, '_wp_page_template', 'payment.php'),
(1117, 163, '_edit_lock', '1624799783:1'),
(1118, 163, '_wp_page_template', 'payment-process.php'),
(1119, 166, '_edit_lock', '1627812864:1'),
(1120, 170, '_edit_lock', '1629536812:1'),
(1121, 170, '_wp_page_template', 'landing_page.php');

-- --------------------------------------------------------

--
-- Table structure for table `beano_posts`
--

CREATE TABLE `beano_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beano_posts`
--

INSERT INTO `beano_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2020-03-28 16:32:15', '2020-03-28 16:32:15', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nBeano \"[your-subject]\"\nBeano <prakash.4689.vadher@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Beano (http://localhost/beano_website)\nprakash.4689.vadher@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nBeano \"[your-subject]\"\nBeano <prakash.4689.vadher@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Beano (http://localhost/beano_website)\n[your-email]\nReply-To: prakash.4689.vadher@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-03-28 16:32:15', '2020-03-28 16:32:15', '', 0, 'http://localhost/beano_website/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(18, 1, '2020-03-29 08:02:21', '2020-03-29 08:02:21', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nBeano \"[your-subject]\"\nBeano <prakash.4689.vadher@gmail.com>\nprakash.4689.vadher@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Beano (http://localhost/beano_website)\nReply-To: [your-email]\n\n\n\n\nBeano \"[your-subject]\"\nBeano <prakash.4689.vadher@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Beano (http://localhost/beano_website)\nReply-To: prakash.4689.vadher@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Buyer', '', 'publish', 'closed', 'closed', '', 'buyer', '', '', '2020-03-29 08:02:21', '2020-03-29 08:02:21', '', 0, 'http://localhost/beano_website/?post_type=wpcf7_contact_form&p=18', 0, 'wpcf7_contact_form', '', 0),
(24, 1, '2020-03-30 17:52:49', '2020-03-30 17:52:49', 'http://localhost/beano_website/wp-content/uploads/2020/03/cropped-beano_app_icon.png', 'cropped-beano_app_icon.png', '', 'inherit', 'open', 'closed', '', 'cropped-beano_app_icon-png', '', '', '2020-03-30 17:52:49', '2020-03-30 17:52:49', '', 0, 'http://localhost/beano_website/wp-content/uploads/2020/03/cropped-beano_app_icon.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2020-03-31 05:23:22', '2020-03-31 05:23:22', '', 'Buyer Details', '', 'publish', 'closed', 'closed', '', 'buyer-details', '', '', '2020-03-31 05:23:37', '2020-03-31 05:23:37', '', 0, 'http://localhost/beano_website/?page_id=28', 0, 'page', '', 0),
(29, 1, '2020-03-31 05:23:22', '2020-03-31 05:23:22', '', 'Buyer Details', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-03-31 05:23:22', '2020-03-31 05:23:22', '', 28, 'http://localhost/beano_website/2020/03/31/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-03-31 06:05:32', '2020-03-31 06:05:32', '', 'Thank You', '', 'publish', 'closed', 'closed', '', 'thank-you', '', '', '2020-03-31 06:09:17', '2020-03-31 06:09:17', '', 0, 'http://localhost/beano_website/?page_id=30', 0, 'page', '', 0),
(31, 1, '2020-03-31 06:05:32', '2020-03-31 06:05:32', '', 'Thank You', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-03-31 06:05:32', '2020-03-31 06:05:32', '', 30, 'http://localhost/beano_website/2020/03/31/30-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-04-01 06:21:40', '2020-04-01 06:21:40', 'http://localhost/beano_website/wp-content/uploads/2020/04/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-04-01 06:21:40', '2020-04-01 06:21:40', '', 0, 'http://localhost/beano_website/wp-content/uploads/2020/04/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2020-04-04 11:20:15', '2020-04-04 11:20:15', 'http://localhost/beano_website/wp-content/uploads/2020/04/cropped-beano_logo.png', 'cropped-beano_logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-beano_logo-png', '', '', '2020-04-04 11:20:15', '2020-04-04 11:20:15', '', 0, 'http://localhost/beano_website/wp-content/uploads/2020/04/cropped-beano_logo.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2020-04-07 16:59:16', '2020-04-07 16:59:16', '', 'Kendrik', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2020-04-07 16:59:16', '2020-04-07 16:59:16', '', 30, 'https://beanoshop.co/30-autosave-v1/', 0, 'revision', '', 0),
(47, 1, '2020-04-12 18:48:35', '2020-04-12 18:48:35', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cafes\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"coffe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Preferred Beans', 'preferred-beans', 'publish', 'closed', 'closed', '', 'group_5e93620e7d611', '', '', '2020-06-27 10:55:59', '2020-06-27 10:55:59', '', 0, 'http://localhost/beano_website/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2020-04-12 18:48:35', '2020-04-12 18:48:35', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Preferred Beans', 'preferred_beans', 'publish', 'closed', 'closed', '', 'field_5e9361f2c047f', '', '', '2020-04-12 18:48:35', '2020-04-12 18:48:35', '', 47, 'http://localhost/beano_website/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2020-04-12 18:48:35', '2020-04-12 18:48:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Bean Name', 'bean_name', 'publish', 'closed', 'closed', '', 'field_5e936211c0480', '', '', '2020-04-12 18:48:35', '2020-04-12 18:48:35', '', 48, 'http://localhost/beano_website/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2020-04-12 18:48:35', '2020-04-12 18:48:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Toppings', 'toppings', 'publish', 'closed', 'closed', '', 'field_5e936222c0481', '', '', '2020-04-12 18:48:35', '2020-04-12 18:48:35', '', 48, 'http://localhost/beano_website/?post_type=acf-field&p=50', 1, 'acf-field', '', 0),
(59, 1, '2020-04-12 19:12:33', '2020-04-12 19:12:33', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cafes\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"coffe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Weight', 'weight', 'publish', 'closed', 'closed', '', 'group_5e9367e605b37', '', '', '2020-05-25 19:49:33', '2020-05-25 19:49:33', '', 0, 'http://localhost/beano_website/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2020-04-12 19:12:33', '2020-04-12 19:12:33', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Weight', 'weight', 'publish', 'closed', 'closed', '', 'field_5e9367bcf0988', '', '', '2020-04-12 19:12:33', '2020-04-12 19:12:33', '', 59, 'http://localhost/beano_website/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2020-04-12 19:12:33', '2020-04-12 19:12:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Weight', 'weight', 'publish', 'closed', 'closed', '', 'field_5e9367e0f0989', '', '', '2020-04-12 19:12:33', '2020-04-12 19:12:33', '', 60, 'http://localhost/beano_website/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2020-04-12 19:14:29', '2020-04-12 19:14:29', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cafes\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"coffe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Grinds', 'grinds', 'publish', 'closed', 'closed', '', 'group_5e93683492f23', '', '', '2020-05-25 19:49:05', '2020-05-25 19:49:05', '', 0, 'http://localhost/beano_website/?post_type=acf-field-group&#038;p=62', 0, 'acf-field-group', '', 0),
(63, 1, '2020-04-12 19:14:29', '2020-04-12 19:14:29', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Grind', 'grind', 'publish', 'closed', 'closed', '', 'field_5e9368102d4bf', '', '', '2020-04-13 13:58:47', '2020-04-13 13:58:47', '', 62, 'http://localhost/beano_website/?post_type=acf-field&#038;p=63', 0, 'acf-field', '', 0),
(64, 1, '2020-04-12 19:14:29', '2020-04-12 19:14:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_5e93681f2d4c0', '', '', '2020-04-12 19:14:29', '2020-04-12 19:14:29', '', 63, 'http://localhost/beano_website/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2020-04-12 19:14:29', '2020-04-12 19:14:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5e93683f2d4c1', '', '', '2020-04-12 19:14:29', '2020-04-12 19:14:29', '', 63, 'http://localhost/beano_website/?post_type=acf-field&p=65', 1, 'acf-field', '', 0),
(66, 1, '2020-04-12 19:15:10', '2020-04-12 19:15:10', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cafes\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"coffe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'group_5e9368ae56d47', '', '', '2020-05-25 19:48:59', '2020-05-25 19:48:59', '', 0, 'http://localhost/beano_website/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2020-04-12 19:15:10', '2020-04-12 19:15:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5e93687c0b01e', '', '', '2020-04-12 19:15:10', '2020-04-12 19:15:10', '', 66, 'http://localhost/beano_website/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 1, '2020-04-12 19:15:41', '2020-04-12 19:15:41', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cafes\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"coffe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Latitude', 'latitude', 'publish', 'closed', 'closed', '', 'group_5e9368cec48d2', '', '', '2020-05-25 19:49:13', '2020-05-25 19:49:13', '', 0, 'http://localhost/beano_website/?post_type=acf-field-group&#038;p=68', 0, 'acf-field-group', '', 0),
(69, 1, '2020-04-12 19:15:41', '2020-04-12 19:15:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Latitude', 'latitude', 'publish', 'closed', 'closed', '', 'field_5e93689b7aa7a', '', '', '2020-04-12 19:15:41', '2020-04-12 19:15:41', '', 68, 'http://localhost/beano_website/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(70, 1, '2020-04-12 19:16:07', '2020-04-12 19:16:07', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cafes\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"coffe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Longitude', 'longitude', 'publish', 'closed', 'closed', '', 'group_5e9368e88ed38', '', '', '2020-05-25 19:49:20', '2020-05-25 19:49:20', '', 0, 'http://localhost/beano_website/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2020-04-12 19:16:07', '2020-04-12 19:16:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Longitude', 'longitude', 'publish', 'closed', 'closed', '', 'field_5e9368b627636', '', '', '2020-04-12 19:16:07', '2020-04-12 19:16:07', '', 70, 'http://localhost/beano_website/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2020-04-12 19:17:37', '2020-04-12 19:17:37', '', 'Glasshouse', '', 'publish', 'closed', 'closed', '', 'glasshouse', '', '', '2020-07-25 17:12:41', '2020-07-25 17:12:41', '', 0, 'http://localhost/beano_website/?post_type=cafes&#038;p=72', 0, 'cafes', '', 0),
(85, 1, '2020-04-13 13:52:30', '2020-04-13 13:52:30', '', 'buyer--details-mobile-bg', '', 'inherit', 'open', 'closed', '', 'buyer-details-mobile-bg', '', '', '2020-04-13 13:52:30', '2020-04-13 13:52:30', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/buyer-details-mobile-bg.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2020-04-13 13:52:31', '2020-04-13 13:52:31', '', 'buyer-mobile-bg', '', 'inherit', 'open', 'closed', '', 'buyer-mobile-bg', '', '', '2020-04-13 13:52:31', '2020-04-13 13:52:31', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/buyer-mobile-bg.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2020-04-13 13:52:33', '2020-04-13 13:52:33', '', 'coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2020-04-13 13:52:33', '2020-04-13 13:52:33', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/coffee.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2020-04-13 13:52:35', '2020-04-13 13:52:35', '', 'coffee-bg', '', 'inherit', 'open', 'closed', '', 'coffee-bg', '', '', '2020-04-13 13:52:35', '2020-04-13 13:52:35', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/coffee-bg.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2020-04-13 13:52:36', '2020-04-13 13:52:36', '', 'daily-blend', '', 'inherit', 'open', 'closed', '', 'daily-blend', '', '', '2020-04-13 13:52:36', '2020-04-13 13:52:36', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/daily-blend.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2020-04-13 13:52:36', '2020-04-13 13:52:36', '', 'days', '', 'inherit', 'open', 'closed', '', 'days', '', '', '2020-04-13 13:52:36', '2020-04-13 13:52:36', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/days.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2020-04-13 13:52:37', '2020-04-13 13:52:37', '', 'delivery', '', 'inherit', 'open', 'closed', '', 'delivery', '', '', '2020-04-13 13:52:37', '2020-04-13 13:52:37', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/delivery.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2020-04-13 13:52:37', '2020-04-13 13:52:37', '', 'down-arrow', '', 'inherit', 'open', 'closed', '', 'down-arrow', '', '', '2020-04-13 13:52:37', '2020-04-13 13:52:37', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/down-arrow.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2020-04-13 13:52:37', '2020-04-13 13:52:37', '', 'email', '', 'inherit', 'open', 'closed', '', 'email', '', '', '2020-04-13 13:52:37', '2020-04-13 13:52:37', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/email.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2020-04-13 13:52:38', '2020-04-13 13:52:38', '', 'grounding-service', '', 'inherit', 'open', 'closed', '', 'grounding-service', '', '', '2020-04-13 13:52:38', '2020-04-13 13:52:38', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/grounding-service.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2020-04-13 13:52:38', '2020-04-13 13:52:38', '', 'home-icon', '', 'inherit', 'open', 'closed', '', 'home-icon', '', '', '2020-04-13 13:52:38', '2020-04-13 13:52:38', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/home-icon.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2020-04-13 13:52:39', '2020-04-13 13:52:39', '', 'icon1', '', 'inherit', 'open', 'closed', '', 'icon1', '', '', '2020-04-13 13:52:39', '2020-04-13 13:52:39', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/icon1.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2020-04-13 13:52:39', '2020-04-13 13:52:39', '', 'icon2', '', 'inherit', 'open', 'closed', '', 'icon2', '', '', '2020-04-13 13:52:39', '2020-04-13 13:52:39', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/icon2.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2020-04-13 13:52:40', '2020-04-13 13:52:40', '', 'icon3', '', 'inherit', 'open', 'closed', '', 'icon3', '', '', '2020-04-13 13:52:40', '2020-04-13 13:52:40', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/icon3.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2020-04-13 13:52:41', '2020-04-13 13:52:41', '', 'icon4', '', 'inherit', 'open', 'closed', '', 'icon4', '', '', '2020-04-13 13:52:41', '2020-04-13 13:52:41', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/icon4.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2020-04-13 13:52:42', '2020-04-13 13:52:42', '', 'icon5', '', 'inherit', 'open', 'closed', '', 'icon5', '', '', '2020-04-13 13:52:42', '2020-04-13 13:52:42', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/icon5.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2020-04-13 13:52:42', '2020-04-13 13:52:42', '', 'icon6', '', 'inherit', 'open', 'closed', '', 'icon6', '', '', '2020-04-13 13:52:42', '2020-04-13 13:52:42', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/icon6.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2020-04-13 13:52:43', '2020-04-13 13:52:43', '', 'icon7', '', 'inherit', 'open', 'closed', '', 'icon7', '', '', '2020-04-13 13:52:43', '2020-04-13 13:52:43', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/icon7.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2020-04-13 13:52:44', '2020-04-13 13:52:44', '', 'icon8', '', 'inherit', 'open', 'closed', '', 'icon8', '', '', '2020-04-13 13:52:44', '2020-04-13 13:52:44', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/icon8.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2020-04-13 13:52:44', '2020-04-13 13:52:44', '', 'in-store-pickup', '', 'inherit', 'open', 'closed', '', 'in-store-pickup', '', '', '2020-04-13 13:52:44', '2020-04-13 13:52:44', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/in-store-pickup.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2020-04-13 13:52:44', '2020-04-13 13:52:44', '', 'mobile', '', 'inherit', 'open', 'closed', '', 'mobile', '', '', '2020-04-13 13:52:44', '2020-04-13 13:52:44', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/mobile.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2020-04-13 13:52:45', '2020-04-13 13:52:45', '', 'thank-you-bg', '', 'inherit', 'open', 'closed', '', 'thank-you-bg', '', '', '2020-04-13 13:52:45', '2020-04-13 13:52:45', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/thank-you-bg.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2020-04-13 13:52:46', '2020-04-13 13:52:46', '', 'thank-you-home', '', 'inherit', 'open', 'closed', '', 'thank-you-home', '', '', '2020-04-13 13:52:46', '2020-04-13 13:52:46', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/thank-you-home.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2020-04-13 13:52:47', '2020-04-13 13:52:47', '', 'user', '', 'inherit', 'open', 'closed', '', 'user', '', '', '2020-04-13 13:52:47', '2020-04-13 13:52:47', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/user.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2020-04-13 13:52:47', '2020-04-13 13:52:47', '', 'whole-beans', '', 'inherit', 'open', 'closed', '', 'whole-beans', '', '', '2020-04-13 13:52:47', '2020-04-13 13:52:47', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/whole-beans.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2020-04-13 13:52:48', '2020-04-13 13:52:48', '', 'yellow_blob', '', 'inherit', 'open', 'closed', '', 'yellow_blob', '', '', '2020-04-13 13:52:48', '2020-04-13 13:52:48', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/yellow_blob.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2020-04-13 13:52:50', '2020-04-13 13:52:50', '', 'yellow-blob', '', 'inherit', 'open', 'closed', '', 'yellow-blob', '', '', '2020-04-13 13:52:50', '2020-04-13 13:52:50', '', 72, 'http://localhost/beano_website/wp-content/uploads/2020/04/yellow-blob.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2020-04-13 14:17:33', '2020-04-13 14:17:33', '', 'Larsen and Co.', '', 'publish', 'closed', 'closed', '', 'larsen', '', '', '2020-04-13 14:32:11', '2020-04-13 14:32:11', '', 0, 'http://localhost/beano_website/?post_type=cafes&#038;p=112', 0, 'cafes', '', 0),
(113, 1, '2020-04-13 14:39:05', '2020-04-13 14:39:05', '', 'Front Page', '', 'publish', 'closed', 'closed', '', 'front-page', '', '', '2020-04-17 05:06:35', '2020-04-17 05:06:35', '', 0, 'http://localhost/beano_website/?page_id=113', 0, 'page', '', 0),
(114, 1, '2020-04-13 14:39:05', '2020-04-13 14:39:05', '', 'Front Page', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2020-04-13 14:39:05', '2020-04-13 14:39:05', '', 113, 'https://beanoshop.co/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2020-04-13 15:01:35', '2020-04-13 15:01:35', '', 'temporary_HOME', '', 'inherit', 'open', 'closed', '', 'temporary_home', '', '', '2020-04-13 15:01:35', '2020-04-13 15:01:35', '', 113, 'http://localhost/beano_website/wp-content/uploads/2020/04/temporary_HOME.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2020-04-17 05:06:28', '2020-04-17 05:06:28', '', 'temporary_HOME', '', 'inherit', 'open', 'closed', '', 'temporary_home-2', '', '', '2020-04-17 05:06:28', '2020-04-17 05:06:28', '', 113, 'http://localhost/beano_website/wp-content/uploads/2020/04/temporary_HOME-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2020-04-23 05:43:09', '2020-04-23 05:43:09', '', 'Two Sections', '', 'publish', 'closed', 'closed', '', 'sections', '', '', '2020-09-20 17:23:19', '2020-09-20 17:23:19', '', 0, 'http://localhost/beano_website/?page_id=119', 0, 'page', '', 0),
(120, 1, '2020-04-23 05:43:09', '2020-04-23 05:43:09', '', 'Test', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2020-04-23 05:43:09', '2020-04-23 05:43:09', '', 119, 'https://beanoshop.co/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2020-04-27 18:49:23', '2020-04-27 18:49:23', '', 'About Us', '', 'publish', 'closed', 'closed', '', '121', '', '', '2020-04-28 05:26:13', '2020-04-28 05:26:13', '', 0, 'http://localhost/beano_website/?p=121', 1, 'nav_menu_item', '', 0),
(122, 1, '2020-04-28 05:26:13', '2020-04-28 05:26:13', '', 'Learn', '', 'publish', 'closed', 'closed', '', 'learn', '', '', '2020-04-28 05:26:13', '2020-04-28 05:26:13', '', 0, 'http://localhost/beano_website/?p=122', 2, 'nav_menu_item', '', 0),
(123, 1, '2020-04-28 05:26:13', '2020-04-28 05:26:13', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-04-28 05:26:13', '2020-04-28 05:26:13', '', 0, 'http://localhost/beano_website/?p=123', 3, 'nav_menu_item', '', 0),
(124, 1, '2020-04-28 05:25:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-28 05:25:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/beano_website/?p=124', 1, 'nav_menu_item', '', 0),
(126, 1, '2020-05-04 15:39:24', '2020-05-04 15:39:24', '', 'Eclair Hampton', '', 'publish', 'closed', 'closed', '', 'eclairhampton', '', '', '2020-05-04 15:57:44', '2020-05-04 15:57:44', '', 0, 'http://localhost/beano_website/?post_type=cafes&#038;p=126', 0, 'cafes', '', 0),
(128, 1, '2020-05-21 13:05:13', '2020-05-21 13:05:13', '', 'Buyer Details', '', 'inherit', 'closed', 'closed', '', '28-autosave-v1', '', '', '2020-05-21 13:05:13', '2020-05-21 13:05:13', '', 28, 'https://beanoshop.co/28-autosave-v1/', 0, 'revision', '', 0),
(129, 1, '2020-05-25 19:54:18', '2020-05-25 19:54:18', '', 'Glasshouse Hampton', '', 'publish', 'closed', 'closed', '', 'test-glasshouse', '', '', '2020-05-30 19:46:31', '2020-05-30 19:46:31', '', 0, 'http://localhost/beano_website/?post_type=coffe&#038;p=129', 0, 'coffe', '', 0),
(130, 1, '2020-05-25 19:58:31', '2020-05-25 19:58:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price For 100g', 'price_for_100g', 'publish', 'closed', 'closed', '', 'field_5ecc22aec57d1', '', '', '2020-06-27 10:55:59', '2020-06-27 10:55:59', '', 48, 'http://localhost/beano_website/?post_type=acf-field&#038;p=130', 2, 'acf-field', '', 0),
(131, 1, '2020-05-25 19:58:31', '2020-05-25 19:58:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price For 250g', 'price_for_250g', 'publish', 'closed', 'closed', '', 'field_5ecc22d8c57d2', '', '', '2020-06-27 10:55:59', '2020-06-27 10:55:59', '', 48, 'http://localhost/beano_website/?post_type=acf-field&#038;p=131', 4, 'acf-field', '', 0),
(132, 1, '2020-05-25 19:58:31', '2020-05-25 19:58:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price For 500g', 'price_for_500g', 'publish', 'closed', 'closed', '', 'field_5ecc22f4c57d3', '', '', '2020-06-27 10:55:59', '2020-06-27 10:55:59', '', 48, 'http://localhost/beano_website/?post_type=acf-field&#038;p=132', 5, 'acf-field', '', 0),
(133, 1, '2020-05-25 19:58:31', '2020-05-25 19:58:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price For 1kg', 'price_for_1kg', 'publish', 'closed', 'closed', '', 'field_5ecc22fbc57d4', '', '', '2020-06-27 10:55:59', '2020-06-27 10:55:59', '', 48, 'http://localhost/beano_website/?post_type=acf-field&#038;p=133', 6, 'acf-field', '', 0),
(139, 1, '2020-06-27 07:06:11', '2020-06-27 07:06:11', '', 'Farro', '', 'publish', 'closed', 'closed', '', 'farro', '', '', '2020-06-30 17:27:57', '2020-06-30 17:27:57', '', 0, 'http://localhost/beano_website/?post_type=cafes&#038;p=139', 0, 'cafes', '', 0),
(140, 1, '2020-06-27 10:55:05', '2020-06-27 10:55:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Price For 200g', 'price_for_200g', 'publish', 'closed', 'closed', '', 'field_5ef724f2ead06', '', '', '2020-06-27 10:55:59', '2020-06-27 10:55:59', '', 48, 'http://localhost/beano_website/?post_type=acf-field&#038;p=140', 3, 'acf-field', '', 0),
(141, 1, '2020-06-30 13:48:44', '2020-06-30 13:48:44', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"cafes\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"coffe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Small Title', 'small-title', 'publish', 'closed', 'closed', '', 'group_5efb427c900cd', '', '', '2020-06-30 13:48:44', '2020-06-30 13:48:44', '', 0, 'http://localhost/beano_website/?post_type=acf-field-group&#038;p=141', 0, 'acf-field-group', '', 0),
(142, 1, '2020-06-30 13:48:44', '2020-06-30 13:48:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Small Title', 'small_title', 'publish', 'closed', 'closed', '', 'field_5efb423a37b67', '', '', '2020-06-30 13:48:44', '2020-06-30 13:48:44', '', 141, 'http://localhost/beano_website/?post_type=acf-field&p=142', 0, 'acf-field', '', 0),
(147, 1, '2020-07-16 10:34:52', '2020-07-16 10:34:52', '', 'Little Sister', '', 'publish', 'closed', 'closed', '', 'littlesisterbrighton', '', '', '2020-07-25 17:12:40', '2020-07-25 17:12:40', '', 0, 'http://localhost/beano_website/glasshouse-copy/', 0, 'cafes', '', 0),
(152, 1, '2020-07-31 18:42:54', '2020-07-31 18:42:54', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-07-31 18:44:52', '2020-07-31 18:44:52', '', 0, 'http://localhost/beano_website/?page_id=152', 0, 'page', '', 0),
(153, 1, '2020-07-31 18:42:54', '2020-07-31 18:42:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2020-07-31 18:42:54', '2020-07-31 18:42:54', '', 152, 'https://beanoshop.co/152-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2020-08-05 14:06:37', '2020-08-05 14:06:37', '', 'Two Sections', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2020-08-05 14:06:37', '2020-08-05 14:06:37', '', 119, 'https://beanoshop.co/119-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2020-09-20 17:21:45', '2020-09-20 17:21:45', '', 'Two Sections', '', 'inherit', 'closed', 'closed', '', '119-autosave-v1', '', '', '2020-09-20 17:21:45', '2020-09-20 17:21:45', '', 119, 'https://staging.beanoshop.co/119-autosave-v1/', 0, 'revision', '', 0),
(161, 1, '2021-06-27 13:17:24', '2021-06-27 13:17:24', '', 'Payment', '', 'publish', 'closed', 'closed', '', 'payment', '', '', '2021-06-27 13:17:24', '2021-06-27 13:17:24', '', 0, 'http://localhost/beano_website/?page_id=161', 0, 'page', '', 0),
(162, 1, '2021-06-27 13:17:24', '2021-06-27 13:17:24', '', 'Payment', '', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2021-06-27 13:17:24', '2021-06-27 13:17:24', '', 161, 'https://staging.beanoshop.co/161-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2021-06-27 13:18:27', '2021-06-27 13:18:27', '', 'Payment Process', '', 'publish', 'closed', 'closed', '', 'payment-process', '', '', '2021-06-27 13:18:27', '2021-06-27 13:18:27', '', 0, 'http://localhost/beano_website/?page_id=163', 0, 'page', '', 0),
(164, 1, '2021-06-27 13:18:27', '2021-06-27 13:18:27', '', 'Payment Process', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2021-06-27 13:18:27', '2021-06-27 13:18:27', '', 163, 'https://staging.beanoshop.co/163-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2021-08-01 10:16:32', '2021-08-01 10:16:32', '', 'Square Payment', '', 'publish', 'closed', 'closed', '', 'square-payment', '', '', '2021-08-01 10:16:32', '2021-08-01 10:16:32', '', 0, 'https://staging.beanoshop.co/?page_id=166', 0, 'page', '', 0),
(167, 1, '2021-08-01 10:16:32', '2021-08-01 10:16:32', '', 'Square Payment', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2021-08-01 10:16:32', '2021-08-01 10:16:32', '', 166, 'https://staging.beanoshop.co/?p=167', 0, 'revision', '', 0),
(170, 1, '2021-08-21 08:30:51', '2021-08-21 08:30:51', '', 'Landing Page', '', 'publish', 'closed', 'closed', '', 'landing-page', '', '', '2021-08-21 08:36:43', '2021-08-21 08:36:43', '', 0, 'http://localhost/beano_website/?page_id=170', 0, 'page', '', 0),
(171, 1, '2021-08-21 08:30:51', '2021-08-21 08:30:51', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2021-08-21 08:30:51', '2021-08-21 08:30:51', '', 170, 'http://localhost/beano_website/?p=171', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `beano_termmeta`
--

CREATE TABLE `beano_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beano_terms`
--

CREATE TABLE `beano_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beano_terms`
--

INSERT INTO `beano_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `beano_term_relationships`
--

CREATE TABLE `beano_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beano_term_relationships`
--

INSERT INTO `beano_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(121, 2, 0),
(122, 2, 0),
(123, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `beano_term_taxonomy`
--

CREATE TABLE `beano_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beano_term_taxonomy`
--

INSERT INTO `beano_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `beano_usermeta`
--

CREATE TABLE `beano_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beano_usermeta`
--

INSERT INTO `beano_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'beano'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'beano_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'beano_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"623df4b6a85c9d7fb9c174d014a1f2bc0dee795d4c05deaf9091a02e6cd0f1e2\";a:4:{s:10:\"expiration\";i:1629707410;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36\";s:5:\"login\";i:1629534610;}s:64:\"60e01d8741a0f03359c15a04c2ae1fc0cbd35ebc9c13ec103adcd5b102caa6ba\";a:4:{s:10:\"expiration\";i:1629718898;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36\";s:5:\"login\";i:1629546098;}}'),
(17, 1, 'beano_dashboard_quick_press_last_post_id', '169'),
(18, 1, 'closedpostboxes_page', 'a:0:{}'),
(19, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'beano_user-settings', 'editor=tinymce&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=759px&edit_element_vcUIPanelTop=74px&libraryContent=browse'),
(23, 1, 'beano_user-settings-time', '1585590788'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"49.34.75.0\";}'),
(26, 1, 'closedpostboxes_cafes', 'a:5:{i:0;s:23:\"acf-group_5efb427c900cd\";i:1;s:23:\"acf-group_5e93620e7d611\";i:2;s:23:\"acf-group_5e9367e605b37\";i:3;s:23:\"acf-group_5e9368cec48d2\";i:4;s:23:\"acf-group_5e9368e88ed38\";}'),
(27, 1, 'metaboxhidden_cafes', 'a:0:{}'),
(28, 1, 'meta-box-order_cafes', 'a:4:{s:6:\"normal\";s:143:\"acf-group_5e93620e7d611,acf-group_5e9367e605b37,acf-group_5e93683492f23,acf-group_5e9368ae56d47,acf-group_5e9368cec48d2,acf-group_5e9368e88ed38\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:12:\"gadwp-widget\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(30, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(31, 1, 'closedpostboxes_coffe', 'a:5:{i:0;s:23:\"acf-group_5e9367e605b37\";i:1;s:23:\"acf-group_5e93620e7d611\";i:2;s:23:\"acf-group_5e9368ae56d47\";i:3;s:23:\"acf-group_5e9368cec48d2\";i:4;s:23:\"acf-group_5e9368e88ed38\";}'),
(32, 1, 'metaboxhidden_coffe', 'a:0:{}'),
(33, 1, 'meta-box-order_coffe', 'a:4:{s:6:\"normal\";s:143:\"acf-group_5e9367e605b37,acf-group_5e93620e7d611,acf-group_5e9368ae56d47,acf-group_5e93683492f23,acf-group_5e9368cec48d2,acf-group_5e9368e88ed38\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Table structure for table `beano_users`
--

CREATE TABLE `beano_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beano_users`
--

INSERT INTO `beano_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'beano', '$P$BdeDkX.U.Abs9KVT4scc3Is667SVEo1', 'beano', 'prakash.4689.vadher@gmail.com', '', '2020-03-28 16:17:01', '', 0, 'beano');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beano_commentmeta`
--
ALTER TABLE `beano_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `beano_comments`
--
ALTER TABLE `beano_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `beano_custom_cart`
--
ALTER TABLE `beano_custom_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beano_custom_orders`
--
ALTER TABLE `beano_custom_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beano_links`
--
ALTER TABLE `beano_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `beano_options`
--
ALTER TABLE `beano_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `beano_postmeta`
--
ALTER TABLE `beano_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `beano_posts`
--
ALTER TABLE `beano_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `beano_termmeta`
--
ALTER TABLE `beano_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `beano_terms`
--
ALTER TABLE `beano_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `beano_term_relationships`
--
ALTER TABLE `beano_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `beano_term_taxonomy`
--
ALTER TABLE `beano_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `beano_usermeta`
--
ALTER TABLE `beano_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `beano_users`
--
ALTER TABLE `beano_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beano_commentmeta`
--
ALTER TABLE `beano_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beano_comments`
--
ALTER TABLE `beano_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beano_custom_cart`
--
ALTER TABLE `beano_custom_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `beano_custom_orders`
--
ALTER TABLE `beano_custom_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `beano_links`
--
ALTER TABLE `beano_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beano_options`
--
ALTER TABLE `beano_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7508;

--
-- AUTO_INCREMENT for table `beano_postmeta`
--
ALTER TABLE `beano_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1122;

--
-- AUTO_INCREMENT for table `beano_posts`
--
ALTER TABLE `beano_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `beano_termmeta`
--
ALTER TABLE `beano_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beano_terms`
--
ALTER TABLE `beano_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beano_term_taxonomy`
--
ALTER TABLE `beano_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beano_usermeta`
--
ALTER TABLE `beano_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `beano_users`
--
ALTER TABLE `beano_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
