-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 03:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_dt`) VALUES
(1, 'Web Development', '2023-12-09 16:00:00'),
(2, 'Window Development', '2023-12-09 16:00:00'),
(3, 'Web Development', '2023-12-09 16:00:00'),
(4, 'Cloud', '2023-12-09 16:00:00'),
(5, 'Database', '2023-12-09 16:00:00'),
(6, 'SQL Server', '2023-12-09 16:00:00'),
(7, 'mySQL', '2023-12-09 16:00:00'),
(8, 'Oracle', '2023-12-09 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `description`, `category_id`, `user_id`, `created_dt`) VALUES
(1, 'Web Development', 'https://miro.medium.com/v2/resize:fit:4800/format:webp/0*M4bxiCIjcTK-2Xr6.jpeg', 'If you are searching for the best web development software, then you may feel a little confused about where to start building a website. For most of us, the thought of building a website or doing anything web development-related is a daunting task. Well, there is no need to worry as we can tap into technology to create a fully-functional and good-looking website with the right web development or design software.', 1, 4, '2024-10-08 09:01:59'),
(2, 'mySQL', 'https://www.zend.com/sites/default/files/image/2020-04/image-blog-mysql-php.jpg', 'If you are searching for the best web development software, then you may feel a little confused about where to start building a website. For most of us, the thought of building a website or doing anything web development-related is a daunting task. Well, there is no need to worry as we can tap into technology to create a fully-functional and good-looking website with the right web development or design software.', 1, 4, '2024-10-08 09:03:14'),
(3, 'Oracle', 'https://t3.ftcdn.net/jpg/02/99/04/08/360_F_299040891_s5PU4Lla7pP2l5uV0wUh9OTYra0L26dk.jpg', 'If you are searching for the best web development software, then you may feel a little confused about where to start building a website. For most of us, the thought of building a website or doing anything web development-related is a daunting task. Well, there is no need to worry as we can tap into technology to create a fully-functional and good-looking website with the right web development or design software.', 1, 4, '2024-10-08 09:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile`, `role`, `created_dt`) VALUES
(1, 'Aung Aung', 'aungaung@gmail.com', '123', 'Aung Aung profile', 'admin', '2024-09-20 16:00:00'),
(2, 'Su Su', 'susu@gmail.com', '1234', 'Su Su profile', 'normal', '2024-09-11 16:00:00'),
(3, 'Myo Myo', 'myomyo@gmail.com', '1234', 'Myo Myo profile', 'normal', '2024-09-12 16:00:00'),
(4, 'Tania', 'tania@gmail.com', '123', 'Tania profile', 'admin', '2024-09-11 16:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
