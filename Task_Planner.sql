-- phpMyAdmin SQL Dump
-- version 4.6.5.2deb1+deb.cihar.com~xenial.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2017 at 08:35 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Task_Planner`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `user_id`) VALUES
(1, 'category1', 1),
(2, 'category2', 2),
(3, 'praca', 1),
(4, 'zabawa', 2),
(5, 'praca', 2),
(6, 'zabawa', 1),
(7, 'user11', 1),
(8, '19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `task_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `task_id`) VALUES
(1, 'comment 1 to task 1', 1),
(2, 'comment 2', 1),
(3, 'erdftg7yr934945\r\n\r\nsadx\\', 5),
(4, 'szdxgfcvbh', 9),
(5, 'nowy comment dla task 1', 1),
(6, 'aesyui', 1),
(7, 'koment do task id 1', 4),
(8, 'dafdsfds', 1),
(9, 'asdfghjkhuygxtdyfcuvghb', 4),
(10, 'user2 comment', 5);

-- --------------------------------------------------------

--
-- Table structure for table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'user1', 'user1', 'user1@user1.com', 'user1@user1.com', 1, NULL, '$2y$13$exyPRmslxkD.AbseJ0LJr.RFO7PJ1lpGGe14.JqsDTcKSI4EJKvwO', '2017-01-15 19:03:07', NULL, NULL, 'a:0:{}'),
(2, 'user2', 'user2', 'user2@user2.com', 'user2@user2.com', 1, NULL, '$2y$13$Ufd8KFiX752TRMiS0GVEaOy0a6pPRFRxe48OJ31s3jTpmo8qdQvZ.', '2017-01-15 18:40:41', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `done` tinyint(1) NOT NULL,
  `dueDate` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `description`, `done`, `dueDate`, `user_id`, `category_id`) VALUES
(1, 'task1', 'task 1 user1', 0, '2017-01-01', 1, 1),
(3, 'task2', 'task2 user2', 0, '2018-01-01', 2, 3),
(4, 'fdfdfdsfdfds', 'fd', 1, '2016-12-23', 1, 5),
(5, 'sadx\\', 'xz\\x\\x\\', 0, '2016-12-26', 2, 2),
(6, 'task2', 'task2 user2', 0, '2018-01-01', 1, 3),
(7, 'z\\cxz', 'cxzcxzcx', 0, '2016-12-25', 2, 4),
(8, 'vcvcx', 'vcxcxvcxvcx', 1, '2016-12-30', 2, 3),
(9, 'asdfgh', 'il,kunmhjbvg', 1, '2016-12-20', 2, 4),
(10, 'probny task', 'bardzo duzy opis', 0, '2016-12-24', 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_64C19C1A76ED395` (`user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C8DB60186` (`task_id`);

--
-- Indexes for table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_527EDB25A76ED395` (`user_id`),
  ADD KEY `IDX_527EDB2512469DE2` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_64C19C1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C8DB60186` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `FK_527EDB2512469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_527EDB25A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
