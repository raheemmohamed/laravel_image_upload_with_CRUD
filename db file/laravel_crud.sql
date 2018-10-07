-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 11:59 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES
(1, 'Srilanka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'USA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'UK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2018_09_07_094601_create_post_table', 1),
('2018_09_07_100435_add_isadmin_colum', 1),
('2018_09_08_122534_create_personal_table', 1),
('2018_09_08_133255_add_delete_at_column_to_posts_table', 1),
('2018_09_12_080258_add_user_id_column', 2),
('2018_09_12_112812_create_roles_table', 3),
('2018_09_12_113208_create_user_role_table', 3),
('2018_09_12_121615_create_countries_table', 4),
('2018_09_12_122002_add_country_id_to_user', 4),
('2018_09_20_100125_create_photos_table', 5),
('2018_09_20_123521_create_videos_table', 6),
('2018_09_20_123542_create_tags_table', 6),
('2018_09_20_123636_create_taggables_table', 6),
('2018_09_29_120831_create_new_path_column_in_posts_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `NIC` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `path`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'raheem.jpg', 1, 'App\\User', '2018-09-20 05:02:54', '2018-09-20 05:02:54'),
(2, 'laravel.jpg', 2, 'App\\Post', '2018-09-20 05:11:57', '2018-09-20 05:11:57'),
(7, 'php.jpg', 2, 'App\\Post', '2018-09-20 05:11:57', '0000-00-00 00:00:00'),
(8, 'mohamed.jpg', 1, 'App\\User', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'php with artisan.jpg', 2, 'App\\Post', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isadmin` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `isadmin`, `deleted_at`, `path`) VALUES
(3, 'laravel updated Raheem mohamed', 'updated laravel Body contetns', '2018-09-12 03:06:03', '2018-09-29 04:53:24', '0', NULL, ''),
(4, 'Many belongs', 'Elequent BelongTo function check Reverse(Inverse)', '2018-09-13 18:30:00', '2018-09-27 18:30:00', '0', NULL, ''),
(5, 'php with Tinker', 'Tinker is awesome with command', '2018-09-21 06:05:12', '2018-09-21 06:05:12', '0', NULL, ''),
(6, 'This is first form post ', 'form post description', '2018-09-24 04:44:18', '2018-09-24 04:44:18', '0', NULL, ''),
(7, 'Database form', 'database form', '2018-09-24 04:57:49', '2018-09-24 04:57:49', '0', NULL, ''),
(8, 'testing form', 'test body', '2018-09-24 04:58:32', '2018-09-24 04:58:32', '0', NULL, ''),
(9, 'aaa', 'aaaa', '2018-09-24 04:58:52', '2018-09-24 04:58:52', '0', NULL, ''),
(10, 'sadas', 'dasd', '2018-09-24 04:59:36', '2018-09-24 04:59:36', '0', NULL, ''),
(11, 'Laravel CSRF', 'ssd', '2018-09-24 05:02:31', '2018-09-24 07:40:52', '0', NULL, ''),
(18, 'This is Angular form', 'Body angular', '2018-09-24 07:40:33', '2018-09-24 07:40:33', '0', NULL, ''),
(19, 'Raheem Ttitless', 'Content Bodydsd', '2018-09-24 08:06:22', '2018-09-27 02:45:14', '0', NULL, ''),
(34, 'dsds', '', '2018-09-27 03:26:15', '2018-09-27 03:26:15', '0', NULL, ''),
(35, ' sdads', 'hello', '2018-09-27 03:26:37', '2018-09-27 03:27:48', '0', NULL, ''),
(36, 'Hello', '', '2018-09-27 03:26:49', '2018-09-27 03:26:49', '0', NULL, ''),
(37, 'method', '', '2018-09-27 03:28:01', '2018-09-27 03:28:01', '0', NULL, ''),
(38, 'Hello world programme', 'dasdeasd', '2018-09-27 04:33:02', '2018-09-27 04:33:02', '0', NULL, ''),
(39, 'testers', 'dsadsad', '2018-09-27 04:47:47', '2018-09-27 04:47:47', '0', NULL, ''),
(40, 'This is first post', 'Contetn description', '2018-09-29 04:56:03', '2018-09-29 04:56:03', '0', NULL, ''),
(41, 'adsdasdasdad', 'dssssssssssssssssssssss', '2018-09-29 05:37:51', '2018-09-29 05:37:51', '0', NULL, ''),
(42, 'adsdasdasdad', 'dssssssssssssssssssssss', '2018-09-29 05:39:20', '2018-09-29 05:39:20', '0', NULL, ''),
(43, 'dasdasdasdasd', 'dnaskjdnkjasndkjas', '2018-09-29 05:39:36', '2018-09-29 05:39:36', '0', NULL, ''),
(44, 'dasdasdasdasd', 'dnaskjdnkjasndkjas', '2018-09-29 05:39:54', '2018-09-29 05:39:54', '0', NULL, ''),
(45, 'margartin mart', 'gtest ooooost', '2018-09-29 05:40:11', '2018-09-29 05:40:11', '0', NULL, ''),
(46, 'sbadkjnbjkn', 'kjndjksnjkdsjn kjn', '2018-09-29 06:40:38', '2018-09-29 06:40:38', '0', NULL, ''),
(47, 'This is first form with image submit', 'Post content with image submit form', '2018-09-29 06:41:21', '2018-09-29 06:41:21', '0', NULL, ''),
(48, 'jnjb anjdbsabdkasjbdkj', 'kjbjkdsbjkdbasjkdbkasjbdkjasbkjd', '2018-09-29 06:42:51', '2018-09-29 06:42:51', '0', NULL, ''),
(49, 'dnasjkdbsajhdb', 'kjdsbjhdbskdksj', '2018-09-29 06:44:18', '2018-09-29 06:44:18', '0', NULL, ''),
(52, 'thendjksndjknsjkdjk', 'jknskdjndjknsjkndjksjkndkjskjd', '2018-09-29 07:12:30', '2018-09-29 07:12:30', '0', NULL, ''),
(53, 'jknjdkanbk', 'kjnjknjknk', '2018-09-29 07:13:09', '2018-09-29 07:13:09', '0', NULL, ''),
(54, 'please work this image upload', 'please upload image file', '2018-09-29 07:14:53', '2018-09-29 07:14:53', '0', NULL, ''),
(55, 'Post of software programm', 'Hello world niceto meet you', '2018-09-29 07:22:16', '2018-09-29 07:22:16', '0', NULL, 'C:\\xampp\\tmp\\php685D.tmp'),
(56, 'dnkjasndjk', 'ndkjnsjkndjksdk', '2018-09-29 07:24:18', '2018-09-29 07:24:18', '0', NULL, 'C:\\xampp\\tmp\\php4277.tmp'),
(57, 'jndkjnakjjk', 'nkjndkjsnjdknkd', '2018-09-29 07:25:08', '2018-09-29 07:25:08', '0', NULL, 'C:\\xampp\\tmp\\php79A.tmp'),
(58, 'This is first upload image ', 'Upoad image description', '2018-09-29 07:26:59', '2018-09-29 07:26:59', '0', NULL, 'e6c4f547dbd96e8dba9434620e0ec875.jpg'),
(59, 'programmer accepted', 'hi world programmmer', '2018-09-29 07:44:31', '2018-09-29 07:44:31', '0', NULL, 'JdfgqbM.jpg'),
(60, 'hello beginers', 'beginers hello world', '2018-09-29 07:57:42', '2018-09-29 07:57:42', '0', NULL, 'windows_7_professional-wide.jpg'),
(61, 'master gi its working ', 'probably its working properly', '2018-09-29 08:07:42', '2018-09-29 08:07:42', '0', NULL, '2013070213072.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admininstator', '2018-09-11 18:30:00', '0000-00-00 00:00:00'),
(2, 'Subcriber', '2018-09-12 18:30:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `userId`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-09-12 00:43:00', '0000-00-00 00:00:00'),
(2, 2, 2, '2018-09-11 18:30:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`) VALUES
(1, 2, 'App\\Post'),
(2, 3, 'App\\Post'),
(2, 2, 'App\\Video');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Javascript', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `country_id`) VALUES
(1, 'Raheem', 'email', '123', NULL, '2018-09-12 02:42:25', '2018-09-12 02:42:25', 1),
(2, 'younus', 'younu@gmail.com', '234', NULL, '2018-09-12 03:04:52', '2018-09-12 03:04:52', 3);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'php_insert_video.mov', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Javascript_Alert_video.mov', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
