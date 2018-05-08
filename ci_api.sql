-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2018 at 11:59 AM
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
(18, '41cb3375b4fd34e55734d70670f97e8c', 1),
(19, '6020d31f7d3e0bf67fd189ef95d2597a', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `receiver_email` varchar(100) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `subject`, `body`, `sender_email`, `receiver_email`, `auth_key`, `user_id`, `datetime`) VALUES
(46, 'Sam-Solutions', 'Hi,This Is alex !', 'phpexpart007@gmail.com', 'zahidsajeeb100@gmail.com', '', 1, '2018-05-06 18:37:14'),
(47, 'phpmailer', 'Hi this is alex', 'php@gmail.com', 'zahidsajeeb100@gmail.com', '123456', 1, '2018-05-06 18:37:14'),
(48, 'hghgh', 'Hi this is alex', '', 'zahidsajeeb100@gmail.com', '123456', 1, '2018-05-06 18:37:14'),
(49, 'hi', 'hi this is alex', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '123456', 1, '2018-05-06 18:37:14'),
(50, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(51, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(52, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(53, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(54, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(55, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(56, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(57, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(58, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:14'),
(59, 'hi', 'hi this is alex', 'php@yahoo.com', 'php@email.com', '123456', 1, '2018-05-06 18:37:17'),
(60, 'hi', 'hi this is alex', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '123456', 1, '2018-05-07 12:02:51'),
(61, 'hi', 'hi this is alex', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '123456', 2, '2018-05-07 12:09:05'),
(62, 'hi', 'hi this is alex', 'php@yahoo.com', 'zahidsajeeb100@gmail.com', '123456', 2, '2018-05-08 09:33:29'),
(63, 'hi', 'hi this is alex', '', 'zahidsajeeb100@gmail.com', '123456', 2, '2018-05-08 09:34:46'),
(64, 'hi', 'hi this is alex', '', 'zahidsajeeb100@gmail.com', '123456', 2, '2018-05-08 09:35:29'),
(65, 'hi', 'hi this is alex', '', 'zahidsajeeb100@gmail.com', '123456', 2, '2018-05-08 09:37:13');

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
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `token_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
