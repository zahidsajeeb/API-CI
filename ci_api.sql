-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2018 at 01:54 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `receiver_email` varchar(100) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `subject`, `body`, `sender_email`, `receiver_email`, `auth_key`, `user_id`, `username`, `datetime`, `status`, `message`) VALUES
(76, 'bgtgttgrr', 'hi this is alex', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'Mohammad Zahidul Islam', '2018-05-10 05:29:18', '', ''),
(77, 'bgtgttgrr', 'hi this is alex', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '123456', 1, 'Mohammad Samad', '2018-05-10 05:29:35', '', ''),
(78, 'bgtgttgrr', 'hi this is alex', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'Mohammad Zahidul Islam', '2018-05-10 05:56:03', '', ''),
(92, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 07:06:37', '', ''),
(93, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 07:13:53', '', ''),
(94, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 07:37:59', '', ''),
(95, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 07:39:31', '', ''),
(96, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 07:49:39', '', ''),
(97, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 07:50:34', '', ''),
(98, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 08:37:01', '', ''),
(99, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 08:45:17', '', ''),
(100, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 08:52:19', '', ''),
(101, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 09:31:11', '', ''),
(102, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 09:31:17', '', ''),
(103, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 09:31:25', '', ''),
(104, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 09:36:49', '', ''),
(105, 'hi', 'bhggrre', 'php@gmail.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-12 10:24:20', '', ''),
(106, 'hi', 'bhggrre', 'php@gmail.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-12 10:29:17', '', ''),
(107, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 11:11:52', '', ''),
(108, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-12 11:51:26', '', ''),
(109, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 03:39:39', '', ''),
(110, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 03:56:17', '', ''),
(111, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 03:56:54', '', ''),
(112, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 04:17:23', '', ''),
(113, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 04:59:53', '', ''),
(114, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 05:01:05', '', ''),
(115, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 05:01:41', '', ''),
(116, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 05:01:58', '', ''),
(117, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 05:05:01', '', ''),
(118, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 05:06:01', '', ''),
(119, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 05:06:56', '', ''),
(120, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 05:22:00', '', ''),
(121, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 05:22:29', '', ''),
(122, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 06:22:38', '', ''),
(123, 'Sam-Solution', 'hi this is sam', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '', 2, 'zahid', '2018-05-13 06:22:40', '', ''),
(124, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:22:42', '', ''),
(125, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:00:35', '', ''),
(126, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:15:48', '', ''),
(127, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:18:31', '200', ''),
(128, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:41:52', '200', ''),
(129, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:44:27', '200', ''),
(130, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:48:36', '200', ''),
(131, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:49:08', '200', ''),
(132, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:50:12', '200', ''),
(133, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:51:14', '200', ''),
(134, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 06:52:19', '200', ''),
(135, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 07:31:17', '200', ''),
(136, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 07:33:52', '200', ''),
(137, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 08:06:40', '200', ''),
(138, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 08:19:34', '200', ''),
(139, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 08:27:11', '200', 'OK'),
(140, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 08:30:59', '200', 'OK'),
(141, 'Ecommerce', 'Hi, This is Alex !!!!', 'abc@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 2, 'zahid', '2018-05-13 08:31:41', '200', 'OK'),
(142, '', '', '', '', '', 2, '', '2018-05-13 08:54:46', '200', 'SMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting'),
(144, '', '', '', '', '', 2, '', '2018-05-13 08:57:30', '200', 'SMTP connect() failed. https://github.com/PHPMailer/PHPMailer/wiki/Troubleshooting'),
(145, '', '', '', '', '', 2, '', '2018-05-13 11:00:42', '200', 'Could not instantiate mail function.'),
(146, '', '', '', '', '', 2, '', '2018-05-13 11:29:06', '200', 'Could not instantiate mail function.');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `token_id` int(10) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`token_id`, `token`, `user_id`) VALUES
(21, 'de94c5ccf4b0f486f2ac50a66376aab8', 1),
(22, 'b468e9265f52d1990007dbc027bb5a84', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activity`
--

INSERT INTO `user_activity` (`id`, `ip_address`, `os`, `time_zone`, `user_id`, `module`, `task`, `note`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'GMT', 10, 'myservices', 'insertions', 'New Data with ID10Has been Inserted!', NULL, NULL),
(2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'GMT', 10, 'myservices', 'insertions', 'New Data with ID10Has been Inserted!', '2018-04-19 06:26:10', '2018-04-19 06:26:10'),
(3, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 04:26:21', '2018-04-21 04:26:21'),
(4, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 04:27:19', '2018-04-21 04:27:19'),
(5, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'edit', 'edit', 'ID 10 is trying to edit the 2!', '2018-04-21 04:27:26', '2018-04-21 04:27:26'),
(6, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 06:05:39', '2018-04-21 06:05:39'),
(7, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'edit', 'edit', 'ID 10 is trying to edit the 2!', '2018-04-21 06:06:01', '2018-04-21 06:06:01'),
(8, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 06:06:20', '2018-04-21 06:06:20'),
(9, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 06:06:26', '2018-04-21 06:06:26'),
(10, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 06:07:47', '2018-04-21 06:07:47'),
(11, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 08:14:33', '2018-04-21 08:14:33'),
(12, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 08:33:53', '2018-04-21 08:33:53'),
(13, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 08:34:38', '2018-04-21 08:34:38'),
(14, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 08:44:47', '2018-04-21 08:44:47'),
(15, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 08:44:50', '2018-04-21 08:44:50'),
(16, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 08:52:31', '2018-04-21 08:52:31'),
(17, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 08:52:55', '2018-04-21 08:52:55'),
(18, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 08:53:18', '2018-04-21 08:53:18'),
(19, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'insertions', 'New Data with ID10Has been Inserted!', '2018-04-21 09:00:39', '2018-04-21 09:00:39'),
(20, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:00:39', '2018-04-21 09:00:39'),
(21, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:05:41', '2018-04-21 09:05:41'),
(22, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:19:09', '2018-04-21 09:19:09'),
(23, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:20:58', '2018-04-21 09:20:58'),
(24, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:21:07', '2018-04-21 09:21:07'),
(25, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:22:05', '2018-04-21 09:22:05'),
(26, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:22:44', '2018-04-21 09:22:44'),
(27, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:25:41', '2018-04-21 09:25:41'),
(28, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:26:11', '2018-04-21 09:26:11'),
(29, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:34:38', '2018-04-21 09:34:38'),
(30, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 09:34:42', '2018-04-21 09:34:42'),
(31, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:36:02', '2018-04-21 09:36:02'),
(32, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 09:37:28', '2018-04-21 09:37:28'),
(33, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 09:48:02', '2018-04-21 09:48:02'),
(34, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 09:48:06', '2018-04-21 09:48:06'),
(35, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 10:14:46', '2018-04-21 10:14:46'),
(36, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 10:23:11', '2018-04-21 10:23:11'),
(37, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 10:23:14', '2018-04-21 10:23:14'),
(38, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 10:23:51', '2018-04-21 10:23:51'),
(39, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 10:24:06', '2018-04-21 10:24:06'),
(40, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 10:24:31', '2018-04-21 10:24:31'),
(41, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 10:58:00', '2018-04-21 10:58:00'),
(42, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 10:58:07', '2018-04-21 10:58:07'),
(43, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:18:40', '2018-04-21 11:18:40'),
(44, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:18:45', '2018-04-21 11:18:45'),
(45, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:19:01', '2018-04-21 11:19:01'),
(46, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:32:25', '2018-04-21 11:32:25'),
(47, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:32:32', '2018-04-21 11:32:32'),
(48, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:32:37', '2018-04-21 11:32:37'),
(49, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:32:56', '2018-04-21 11:32:56'),
(50, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-21 11:40:32', '2018-04-21 11:40:32'),
(51, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'clicontacts', 'browse', 'UserID 10 is viewing the module!', '2018-04-21 11:40:40', '2018-04-21 11:40:40'),
(52, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:40:44', '2018-04-21 11:40:44'),
(53, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'logout', 'logout', 'UserID 1 logged out!', '2018-04-21 11:43:03', '2018-04-21 11:43:03'),
(54, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'logout', 'logout', 'UserID 10 logged out!', '2018-04-21 11:43:17', '2018-04-21 11:43:17'),
(55, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-04-21 11:48:02', '2018-04-21 11:48:02'),
(56, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-04-21 11:48:02', '2018-04-21 11:48:02'),
(57, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-04-21 11:49:01', '2018-04-21 11:49:01'),
(58, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-21 11:49:02', '2018-04-21 11:49:02'),
(59, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:49:07', '2018-04-21 11:49:07'),
(60, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:55:27', '2018-04-21 11:55:27'),
(61, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-21 11:55:34', '2018-04-21 11:55:34'),
(62, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'packages', 'browse', 'ID 10 is viewing the module!', '2018-04-21 11:59:26', '2018-04-21 11:59:26'),
(63, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'profile', 'browse', 'UserID 10 is viewing the module!', '2018-04-21 11:59:46', '2018-04-21 11:59:46'),
(64, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-04-22 03:51:04', '2018-04-22 03:51:04'),
(65, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-22 03:51:04', '2018-04-22 03:51:04'),
(66, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-22 04:34:35', '2018-04-22 04:34:35'),
(67, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-22 04:34:37', '2018-04-22 04:34:37'),
(68, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-04-22 04:35:16', '2018-04-22 04:35:16'),
(69, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-04-22 04:35:16', '2018-04-22 04:35:16'),
(70, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-22 05:54:32', '2018-04-22 05:54:32'),
(71, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-22 07:57:38', '2018-04-22 07:57:38'),
(72, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-22 07:57:45', '2018-04-22 07:57:45'),
(73, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-22 07:57:48', '2018-04-22 07:57:48'),
(74, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-04-23 04:13:44', '2018-04-23 04:13:44'),
(75, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-23 04:13:44', '2018-04-23 04:13:44'),
(76, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-23 04:13:48', '2018-04-23 04:13:48'),
(77, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-23 04:13:56', '2018-04-23 04:13:56'),
(78, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-23 04:17:37', '2018-04-23 04:17:37'),
(79, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-04-23 08:42:37', '2018-04-23 08:42:37'),
(80, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-23 08:42:37', '2018-04-23 08:42:37'),
(81, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-23 08:42:43', '2018-04-23 08:42:43'),
(82, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-23 08:42:47', '2018-04-23 08:42:47'),
(83, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-23 08:59:32', '2018-04-23 08:59:32'),
(84, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'UserID 10 is trying to create!', '2018-04-23 08:59:37', '2018-04-23 08:59:37'),
(85, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'UserID 10 is trying to create!', '2018-04-23 09:02:53', '2018-04-23 09:02:53'),
(86, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-04-24 02:25:27', '2018-04-24 02:25:27'),
(87, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-24 02:25:27', '2018-04-24 02:25:27'),
(88, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-24 02:25:34', '2018-04-24 02:25:34'),
(89, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-24 02:25:37', '2018-04-24 02:25:37'),
(90, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-04-24 11:38:34', '2018-04-24 11:38:34'),
(91, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-04-24 11:38:34', '2018-04-24 11:38:34'),
(92, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-04-24 11:38:50', '2018-04-24 11:38:50'),
(93, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-04-25 03:01:46', '2018-04-25 03:01:46'),
(94, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-25 03:01:46', '2018-04-25 03:01:46'),
(95, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-04-25 03:02:41', '2018-04-25 03:02:41'),
(96, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-04-25 03:02:41', '2018-04-25 03:02:41'),
(97, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'profile', 'browse', 'UserID 10 is viewing the module!', '2018-04-25 03:53:30', '2018-04-25 03:53:30'),
(98, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'profile', 'update', 'UserID 10 Has Updated information with new data!', '2018-04-25 03:53:46', '2018-04-25 03:53:46'),
(99, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'profile', 'browse', 'UserID 10 is viewing the module!', '2018-04-25 03:53:47', '2018-04-25 03:53:47'),
(100, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-25 05:33:26', '2018-04-25 05:33:26'),
(101, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'create', 'create', 'UserID 10 is trying to create!', '2018-04-25 05:33:28', '2018-04-25 05:33:28'),
(102, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-25 06:55:07', '2018-04-25 06:55:07'),
(103, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-04-25 09:10:56', '2018-04-25 09:10:56'),
(104, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-04-25 09:10:56', '2018-04-25 09:10:56'),
(105, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-04-25 09:38:11', '2018-04-25 09:38:11'),
(106, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 04:26:07', '2018-04-26 04:26:07'),
(107, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'profile', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 04:26:19', '2018-04-26 04:26:19'),
(108, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'teams', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 04:26:33', '2018-04-26 04:26:33'),
(109, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'clicontacts', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 04:26:38', '2018-04-26 04:26:38'),
(110, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 04:26:52', '2018-04-26 04:26:52'),
(111, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 04:27:01', '2018-04-26 04:27:01'),
(112, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 04:29:18', '2018-04-26 04:29:18'),
(113, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 04:52:01', '2018-04-26 04:52:01'),
(114, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 05:33:12', '2018-04-26 05:33:12'),
(115, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-26 05:33:18', '2018-04-26 05:33:18'),
(116, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-29 04:18:05', '2018-04-29 04:18:05'),
(117, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:06:08', '2018-04-30 03:06:08'),
(118, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'clicontacts', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:43:30', '2018-04-30 03:43:30'),
(119, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:43:37', '2018-04-30 03:43:37'),
(120, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:43:45', '2018-04-30 03:43:45'),
(121, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:45:44', '2018-04-30 03:45:44'),
(122, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:45:58', '2018-04-30 03:45:58'),
(123, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:49:21', '2018-04-30 03:49:21'),
(124, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:54:59', '2018-04-30 03:54:59'),
(125, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:56:44', '2018-04-30 03:56:44'),
(126, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 03:57:02', '2018-04-30 03:57:02'),
(127, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'edit', 'edit', 'UserID 10 is trying to edit the 2!', '2018-04-30 04:04:37', '2018-04-30 04:04:37'),
(128, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'profile', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 10:25:40', '2018-04-30 10:25:40'),
(129, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-04-30 12:20:30', '2018-04-30 12:20:30'),
(130, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 12:20:30', '2018-04-30 12:20:30'),
(131, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'profile', 'browse', 'UserID 10 is viewing the module!', '2018-04-30 12:21:36', '2018-04-30 12:21:36'),
(132, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-05-05 06:58:38', '2018-05-05 06:58:38'),
(133, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-05 06:58:38', '2018-05-05 06:58:38'),
(134, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-06 04:31:05', '2018-05-06 04:31:05'),
(135, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-06 05:17:01', '2018-05-06 05:17:01'),
(136, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-05-06 05:17:02', '2018-05-06 05:17:02'),
(137, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-06 05:17:16', '2018-05-06 05:17:16'),
(138, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 1, 'profile', 'browse', 'UserID 1 is viewing the module!', '2018-05-06 05:17:16', '2018-05-06 05:17:16'),
(139, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-05-06 05:21:28', '2018-05-06 05:21:28'),
(140, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-06 05:21:28', '2018-05-06 05:21:28'),
(141, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-05-06 05:21:35', '2018-05-06 05:21:35'),
(142, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:21:45', '2018-05-06 05:21:45'),
(143, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:26:56', '2018-05-06 05:26:56'),
(144, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:27:03', '2018-05-06 05:27:03'),
(145, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-05-06 05:29:17', '2018-05-06 05:29:17'),
(146, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:29:22', '2018-05-06 05:29:22'),
(147, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-05-06 05:30:38', '2018-05-06 05:30:38'),
(148, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:30:41', '2018-05-06 05:30:41'),
(149, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:34:56', '2018-05-06 05:34:56'),
(150, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-05-06 05:35:00', '2018-05-06 05:35:00'),
(151, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:35:04', '2018-05-06 05:35:04'),
(152, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:35:45', '2018-05-06 05:35:45'),
(153, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-05-06 05:35:49', '2018-05-06 05:35:49'),
(154, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:35:51', '2018-05-06 05:35:51'),
(155, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:53:47', '2018-05-06 05:53:47'),
(156, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-05-06 05:53:52', '2018-05-06 05:53:52'),
(157, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'ID 10 is trying to create!', '2018-05-06 05:53:54', '2018-05-06 05:53:54'),
(158, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-06 09:00:10', '2018-05-06 09:00:10'),
(159, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-05-06 09:00:10', '2018-05-06 09:00:10'),
(160, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'profile', 'browse', 'UserID 1 is viewing the module!', '2018-05-06 09:01:40', '2018-05-06 09:01:40'),
(161, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'profile', 'browse', 'UserID 1 is viewing the module!', '2018-05-06 09:01:44', '2018-05-06 09:01:44'),
(162, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-05-06 11:54:40', '2018-05-06 11:54:40'),
(163, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-06 11:54:40', '2018-05-06 11:54:40'),
(164, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 03:03:24', '2018-05-07 03:03:24'),
(165, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 04:41:30', '2018-05-07 04:41:30'),
(166, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'teams', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 04:42:23', '2018-05-07 04:42:23'),
(167, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'clicontacts', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 04:42:25', '2018-05-07 04:42:25'),
(168, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 04:42:35', '2018-05-07 04:42:35'),
(169, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-05-07 04:43:39', '2018-05-07 04:43:39'),
(170, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 04:43:39', '2018-05-07 04:43:39'),
(171, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'profile', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 04:44:10', '2018-05-07 04:44:10'),
(172, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'profile', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 04:54:45', '2018-05-07 04:54:45'),
(173, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 06:33:27', '2018-05-07 06:33:27'),
(174, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-07 06:33:42', '2018-05-07 06:33:42'),
(175, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-05-07 06:33:42', '2018-05-07 06:33:42'),
(176, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-05-07 09:05:12', '2018-05-07 09:05:12'),
(177, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 09:05:12', '2018-05-07 09:05:12'),
(178, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 09:05:20', '2018-05-07 09:05:20'),
(179, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 09:07:02', '2018-05-07 09:07:02'),
(180, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'edit', 'edit', 'UserID 10 is trying to edit the 4!', '2018-05-07 09:07:42', '2018-05-07 09:07:42'),
(181, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'edit', 'edit', 'UserID 10 is trying to edit the 4!', '2018-05-07 09:10:12', '2018-05-07 09:10:12'),
(182, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-07 09:41:00', '2018-05-07 09:41:00'),
(183, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-05-07 09:41:00', '2018-05-07 09:41:00'),
(184, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'login', 'login', 'UserID 13 logged in!', '2018-05-07 10:07:56', '2018-05-07 10:07:56'),
(185, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'login', 'login', 'UserID 13 logged in!', '2018-05-07 10:08:36', '2018-05-07 10:08:36'),
(186, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36 OPR/52.0.2871.99', 'GMT', 13, 'login', 'login', 'UserID 13 logged in!', '2018-05-07 10:09:34', '2018-05-07 10:09:34'),
(187, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-07 10:09:58', '2018-05-07 10:09:58'),
(188, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-07 10:10:23', '2018-05-07 10:10:23'),
(189, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-05-07 10:10:42', '2018-05-07 10:10:42'),
(190, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'login', 'login', 'UserID 10 logged in!', '2018-05-07 10:16:12', '2018-05-07 10:16:12'),
(191, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-07 10:16:12', '2018-05-07 10:16:12'),
(192, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-07 10:16:24', '2018-05-07 10:16:24'),
(193, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-05-07 10:16:24', '2018-05-07 10:16:24'),
(194, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'login', 'login', 'UserID 13 logged in!', '2018-05-07 10:19:50', '2018-05-07 10:19:50'),
(195, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'home', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:19:50', '2018-05-07 10:19:50'),
(196, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:19:56', '2018-05-07 10:19:56'),
(197, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:20:03', '2018-05-07 10:20:03'),
(198, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:20:32', '2018-05-07 10:20:32'),
(199, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:20:34', '2018-05-07 10:20:34'),
(200, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:20:35', '2018-05-07 10:20:35'),
(201, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:30:38', '2018-05-07 10:30:38'),
(202, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'update', 'UserID 13 Has Updated information with new data!', '2018-05-07 10:31:12', '2018-05-07 10:31:12'),
(203, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:31:12', '2018-05-07 10:31:12'),
(204, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:31:16', '2018-05-07 10:31:16'),
(205, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:33:11', '2018-05-07 10:33:11'),
(206, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:33:13', '2018-05-07 10:33:13');
INSERT INTO `user_activity` (`id`, `ip_address`, `os`, `time_zone`, `user_id`, `module`, `task`, `note`, `created_at`, `updated_at`) VALUES
(207, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:33:17', '2018-05-07 10:33:17'),
(208, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:33:20', '2018-05-07 10:33:20'),
(209, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'create', 'create', 'UserID 13 is trying to create!', '2018-05-07 10:33:22', '2018-05-07 10:33:22'),
(210, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'insertions', 'UserID 13Has Inserted new service!', '2018-05-07 10:34:25', '2018-05-07 10:34:25'),
(211, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:34:26', '2018-05-07 10:34:26'),
(212, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:36:23', '2018-05-07 10:36:23'),
(213, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 10:45:48', '2018-05-07 10:45:48'),
(214, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'login', 'login', 'UserID 1 logged in!', '2018-05-07 10:46:11', '2018-05-07 10:46:11'),
(215, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 1, 'home', 'browse', 'UserID 1 is viewing the module!', '2018-05-07 10:46:11', '2018-05-07 10:46:11'),
(216, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'login', 'login', 'UserID 13 logged in!', '2018-05-07 18:01:02', '2018-05-07 18:01:02'),
(217, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'home', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 18:01:03', '2018-05-07 18:01:03'),
(218, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 18:01:08', '2018-05-07 18:01:08'),
(219, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'edit', 'edit', 'UserID 13 is trying to edit the 6!', '2018-05-07 18:01:11', '2018-05-07 18:01:11'),
(220, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'update', 'UserID 13 has Updated informaion!', '2018-05-07 18:01:14', '2018-05-07 18:01:14'),
(221, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 18:01:14', '2018-05-07 18:01:14'),
(222, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'create', 'create', 'UserID 13 is trying to create!', '2018-05-07 18:01:16', '2018-05-07 18:01:16'),
(223, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'insertions', 'UserID 13Has Inserted new service!', '2018-05-07 18:01:53', '2018-05-07 18:01:53'),
(224, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 18:01:53', '2018-05-07 18:01:53'),
(225, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'edit', 'edit', 'UserID 13 is trying to edit the 7!', '2018-05-07 18:01:57', '2018-05-07 18:01:57'),
(226, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'update', 'UserID 13 has Updated informaion!', '2018-05-07 18:02:03', '2018-05-07 18:02:03'),
(227, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 18:02:03', '2018-05-07 18:02:03'),
(228, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 18:04:20', '2018-05-07 18:04:20'),
(229, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 18:05:41', '2018-05-07 18:05:41'),
(230, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'create', 'create', 'UserID 13 is trying to create!', '2018-05-07 18:05:47', '2018-05-07 18:05:47'),
(231, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'browse', 'UserID 13 is viewing the module!', '2018-05-07 18:05:53', '2018-05-07 18:05:53'),
(232, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-08 08:27:37', '2018-05-08 08:27:37'),
(233, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'myservices', 'browse', 'UserID 10 is viewing the module!', '2018-05-08 08:27:41', '2018-05-08 08:27:41'),
(234, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'create', 'create', 'UserID 10 is trying to create!', '2018-05-08 08:27:43', '2018-05-08 08:27:43'),
(235, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'home', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:49:31', '2018-05-09 06:49:31'),
(236, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'home', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:49:38', '2018-05-09 06:49:38'),
(237, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'login', 'login', 'UserID 13 logged in!', '2018-05-09 06:50:07', '2018-05-09 06:50:07'),
(238, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'home', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:50:08', '2018-05-09 06:50:08'),
(239, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:50:22', '2018-05-09 06:50:22'),
(240, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:50:33', '2018-05-09 06:50:33'),
(241, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:50:35', '2018-05-09 06:50:35'),
(242, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'create', 'create', 'UserID 13 is trying to create!', '2018-05-09 06:50:37', '2018-05-09 06:50:37'),
(243, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'insertions', 'UserID 13 added a new team named Network Support Team', '2018-05-09 06:50:45', '2018-05-09 06:50:45'),
(244, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:50:45', '2018-05-09 06:50:45'),
(245, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:50:49', '2018-05-09 06:50:49'),
(246, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:50:50', '2018-05-09 06:50:50'),
(247, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'create', 'create', 'UserID 13 is trying to create!', '2018-05-09 06:50:51', '2018-05-09 06:50:51'),
(248, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'insertions', 'UserID 13 added a new team named Billing Team', '2018-05-09 06:50:55', '2018-05-09 06:50:55'),
(249, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:50:56', '2018-05-09 06:50:56'),
(250, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'create', 'create', 'UserID 13 is trying to create!', '2018-05-09 06:50:57', '2018-05-09 06:50:57'),
(251, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'insertions', 'UserID 13 added a new team named Admin Team', '2018-05-09 06:51:01', '2018-05-09 06:51:01'),
(252, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'teams', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:51:01', '2018-05-09 06:51:01'),
(253, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:51:03', '2018-05-09 06:51:03'),
(254, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'create', 'create', 'UserID 13 is trying to create!', '2018-05-09 06:51:04', '2018-05-09 06:51:04'),
(255, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'insertions', 'UserID 13 client added NOC Member (noc@247monitor.net) as a team member!', '2018-05-09 06:51:41', '2018-05-09 06:51:41'),
(256, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'clicontacts', 'browse', 'UserID 13 is viewing the module!', '2018-05-09 06:51:42', '2018-05-09 06:51:42'),
(257, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-10 11:16:31', '2018-05-10 11:16:31'),
(258, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'payments', 'browse', 'ID 10 is viewing the module!', '2018-05-10 11:16:36', '2018-05-10 11:16:36'),
(259, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'GMT', 10, 'stripe', 'insertions', 'New Data with ID10Has been Inserted with stripe!', '2018-05-10 11:16:48', '2018-05-10 11:16:48'),
(260, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'home', 'browse', 'UserID 13 is viewing the module!', '2018-05-10 17:46:07', '2018-05-10 17:46:07'),
(261, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'home', 'browse', 'UserID 13 is viewing the module!', '2018-05-10 17:46:10', '2018-05-10 17:46:10'),
(262, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'login', 'login', 'UserID 13 logged in!', '2018-05-10 17:47:11', '2018-05-10 17:47:11'),
(263, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'home', 'browse', 'UserID 13 is viewing the module!', '2018-05-10 17:47:11', '2018-05-10 17:47:11'),
(264, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'browse', 'UserID 13 is viewing the module!', '2018-05-10 17:47:18', '2018-05-10 17:47:18'),
(265, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'update', 'UserID 13 Has Updated information with new data!', '2018-05-10 17:49:24', '2018-05-10 17:49:24'),
(266, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'profile', 'browse', 'UserID 13 is viewing the module!', '2018-05-10 17:49:24', '2018-05-10 17:49:24'),
(267, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'myservices', 'browse', 'UserID 13 is viewing the module!', '2018-05-10 17:49:40', '2018-05-10 17:49:40'),
(268, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'payments', 'browse', 'ID 13 is viewing the module!', '2018-05-10 17:50:25', '2018-05-10 17:50:25'),
(269, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'stripe', 'insertions', 'New Data with ID13Has been Inserted with stripe!', '2018-05-10 17:50:29', '2018-05-10 17:50:29'),
(270, '94.177.180.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'GMT', 13, 'stripepayment', 'store', 'ID 13 has given the payment just now!', '2018-05-10 17:50:36', '2018-05-10 17:50:36'),
(271, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-12 08:58:27', '2018-05-12 08:58:27'),
(272, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 10, 'home', 'browse', 'UserID 10 is viewing the module!', '2018-05-12 08:59:46', '2018-05-12 08:59:46'),
(273, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1 Safari/605.1.15', 'GMT', 14, 'login', 'login', 'UserID 14 logged in!', '2018-05-12 09:05:43', '2018-05-12 09:05:43'),
(274, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 14, 'login', 'login', 'UserID 14 logged in!', '2018-05-12 09:06:29', '2018-05-12 09:06:29'),
(275, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 14, 'login', 'login', 'UserID 14 logged in!', '2018-05-12 09:09:08', '2018-05-12 09:09:08'),
(276, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 14, 'login', 'login', 'UserID 14 logged in!', '2018-05-12 09:14:47', '2018-05-12 09:14:47'),
(277, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 14, 'home', 'browse', 'UserID 14 is viewing the module!', '2018-05-12 09:14:47', '2018-05-12 09:14:47'),
(278, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 14, 'profile', 'browse', 'UserID 14 is viewing the module!', '2018-05-12 09:14:58', '2018-05-12 09:14:58'),
(279, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 14, 'payments', 'browse', 'ID 14 is viewing the module!', '2018-05-12 09:15:39', '2018-05-12 09:15:39'),
(280, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 14, 'stripe', 'insertions', 'New Data with ID14Has been Inserted with stripe!', '2018-05-12 09:15:47', '2018-05-12 09:15:47'),
(281, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1 Safari/605.1.15', 'GMT', 14, 'login', 'login', 'UserID 14 logged in!', '2018-05-12 09:17:20', '2018-05-12 09:17:20'),
(282, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1 Safari/605.1.15', 'GMT', 14, 'home', 'browse', 'UserID 14 is viewing the module!', '2018-05-12 09:17:20', '2018-05-12 09:17:20'),
(283, '94.177.180.25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'GMT', 14, 'profile', 'browse', 'UserID 14 is viewing the module!', '2018-05-12 09:17:41', '2018-05-12 09:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `username`, `password`, `status`) VALUES
(1, 'samad', '123456', 2),
(2, 'zahid', '123456', 2),
(3, 'admin', '123456', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `token_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
