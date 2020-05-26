-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2020 at 01:41 AM
-- Server version: 10.1.44-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hust_hust`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ChMQHzQRarL1bSwnyHgGxpcSerMBwyXA', 1, '2020-05-13 10:37:28', '2020-05-13 10:37:28', '2020-05-13 10:37:28'),
(9, 9, 'jMTq4XCmjjPKmIxUQsLK20VPQlG2hybv', 1, '2020-05-21 11:47:32', '2020-05-21 11:47:32', '2020-05-21 11:47:32'),
(11, 11, '3PC5BKL6ffmscGHWxFDw5VOABKUQsQPK', 1, '2020-05-23 02:38:21', '2020-05-23 02:38:21', '2020-05-23 02:38:21'),
(12, 12, 'KJL9Zqk9sSKZRCzSJNrW0nexvcxy6sf1', 1, '2020-05-23 03:00:56', '2020-05-23 03:00:56', '2020-05-23 03:00:56'),
(13, 13, 'fITWTSWhaiQ9u7bHzKG0jFHsWa2z6sXg', 1, '2020-05-23 03:02:02', '2020-05-23 03:02:02', '2020-05-23 03:02:02'),
(14, 14, 'OkL37521k8hDPwCdJxeUec4SBZWaRAMy', 1, '2020-05-23 03:03:46', '2020-05-23 03:03:46', '2020-05-23 03:03:46'),
(15, 15, 'Q5CQB1S9cot9Mq7s3vgl427CJ4A5at9W', 1, '2020-05-23 03:04:32', '2020-05-23 03:04:32', '2020-05-23 03:04:32'),
(16, 16, 'DIetAOURMZ7ZsK98ZCGighLx1How6aey', 1, '2020-05-23 03:05:15', '2020-05-23 03:05:15', '2020-05-23 03:05:15'),
(17, 17, '5v063NrF1kFNm93M1me3mecyIsTgR79I', 1, '2020-05-23 03:05:55', '2020-05-23 03:05:55', '2020-05-23 03:05:55'),
(18, 18, 'GzrAE3WwFdXAzIiK86UGUN5lysRHFLDY', 1, '2020-05-23 03:08:06', '2020-05-23 03:08:06', '2020-05-23 03:08:06'),
(19, 19, 'f3KvRLjZH4XlXPuUVn9rrXoAIkBmzB6V', 1, '2020-05-23 03:09:34', '2020-05-23 03:09:34', '2020-05-23 03:09:34'),
(20, 20, 'DiaSsQrPd9m14hhisNawQ10vwB3PwYUM', 1, '2020-05-23 03:14:08', '2020-05-23 03:14:08', '2020-05-23 03:14:08'),
(21, 21, 'cjpWog0wgNXZAEHppsXCsT3PnI7m0iBh', 1, '2020-05-23 03:15:29', '2020-05-23 03:15:29', '2020-05-23 03:15:29'),
(22, 22, 'MiN6IiIyR8nHQ0EEjFp2FhwuksTj83U2', 1, '2020-05-23 03:17:02', '2020-05-23 03:17:02', '2020-05-23 03:17:02'),
(23, 23, 'o0IiqM4m4RQyzQP9jTksHos0sQpgaxy4', 1, '2020-05-23 03:17:38', '2020-05-23 03:17:38', '2020-05-23 03:17:38'),
(24, 24, 'KJ028edMp6gU1bihE1TxacORQUMfPC89', 1, '2020-05-23 03:20:19', '2020-05-23 03:20:19', '2020-05-23 03:20:19'),
(25, 25, 'fH7Gczwjqtg0nECgkoZwPjytXbH11Mg0', 1, '2020-05-23 03:21:09', '2020-05-23 03:21:09', '2020-05-23 03:21:09'),
(26, 26, 'q3PttqvMFw2Vi2DapdjdX0NO2jfyNSoY', 1, '2020-05-23 03:22:22', '2020-05-23 03:22:22', '2020-05-23 03:22:22'),
(27, 27, 'K5qahKIRTCjSR8BGLy7cb3G2inC83MUN', 1, '2020-05-23 03:23:02', '2020-05-23 03:23:02', '2020-05-23 03:23:02'),
(28, 28, 'D7aVJfmKTgG7UaU3hbohEjpHjYSjA6db', 1, '2020-05-23 03:24:56', '2020-05-23 03:24:56', '2020-05-23 03:24:56'),
(29, 29, 'k5bsKe4khScmniZyGO5aic8MNaHZktZ1', 1, '2020-05-23 03:26:42', '2020-05-23 03:26:42', '2020-05-23 03:26:42'),
(30, 30, 'LtUMAU2blKKeGVk0QYiUIiIOIKxd5aZk', 1, '2020-05-23 03:27:45', '2020-05-23 03:27:45', '2020-05-23 03:27:45'),
(31, 31, 'ylwHpfwimK4QFHxkvWbcwkH9kf4DcuOR', 1, '2020-05-23 03:28:52', '2020-05-23 03:28:52', '2020-05-23 03:28:52'),
(32, 32, 'S6yU9QSItCq0bJrubFgbvs5vOBkq1bTD', 1, '2020-05-23 03:29:44', '2020-05-23 03:29:44', '2020-05-23 03:29:44'),
(33, 33, '9Zq0QsIffiwS4jN4f2bgyhDXvZITpgtg', 1, '2020-05-23 03:30:25', '2020-05-23 03:30:25', '2020-05-23 03:30:25'),
(34, 34, 'z9vxsbB2zg2BhvEaRrIZ5McIGS5VBrVQ', 1, '2020-05-23 03:32:09', '2020-05-23 03:32:09', '2020-05-23 03:32:09'),
(35, 35, 'EHH44OGt4Q3y38gnIu3cQbzgSo18HFh6', 1, '2020-05-23 03:33:48', '2020-05-23 03:33:48', '2020-05-23 03:33:48'),
(36, 36, 'fR4wRJplvIyllZodYa5TpT8Jpvr70DBm', 1, '2020-05-23 03:34:43', '2020-05-23 03:34:43', '2020-05-23 03:34:43'),
(37, 37, 'WOPu9VpmIXMuqGkOsgDBsS0k7LdE2zFI', 1, '2020-05-23 03:35:33', '2020-05-23 03:35:33', '2020-05-23 03:35:33'),
(38, 38, 'JKIOWyUoQxZmxuHp0R2S6b9LzDNiFN5k', 1, '2020-05-23 03:36:11', '2020-05-23 03:36:11', '2020-05-23 03:36:11'),
(39, 39, 'ZvMEIWB9QTdCtqDFOsFi0iyz7nodWFeA', 1, '2020-05-23 03:36:51', '2020-05-23 03:36:51', '2020-05-23 03:36:51'),
(40, 40, '65tKz12RMczylcGoYTpLffYSH0DR2Fdu', 1, '2020-05-23 03:37:34', '2020-05-23 03:37:34', '2020-05-23 03:37:34'),
(41, 41, 'XjOJsU3kWmZGboqtmtA0EctsPmwbzPOD', 1, '2020-05-23 03:38:17', '2020-05-23 03:38:17', '2020-05-23 03:38:17'),
(42, 42, 'CgXlMPZagjasCvh5pLc1IESECb53bTDR', 1, '2020-05-23 03:39:21', '2020-05-23 03:39:21', '2020-05-23 03:39:21'),
(43, 43, 'MkFeEb34HVMDN4x39SsN2zYjgy0oOHLD', 1, '2020-05-23 03:40:03', '2020-05-23 03:40:03', '2020-05-23 03:40:03'),
(44, 44, 'eQW8IuGpL2kbcLawpMRlQIJZqWl2W2bk', 1, '2020-05-23 03:41:17', '2020-05-23 03:41:17', '2020-05-23 03:41:17'),
(45, 45, 'Rb1eEvFf131wqPEIsNgxV0ThuvYOxpXn', 1, '2020-05-23 03:43:10', '2020-05-23 03:43:10', '2020-05-23 03:43:10'),
(46, 46, 'JhCDIRknyMtRpfaWDbB8WQGk9gBU12IO', 1, '2020-05-23 03:58:59', '2020-05-23 03:58:59', '2020-05-23 03:58:59'),
(47, 47, 'sQIu0xs3NSCvRcV236jzrgqAGWngRXVi', 1, '2020-05-23 03:59:55', '2020-05-23 03:59:55', '2020-05-23 03:59:55'),
(48, 48, 'r0K0bxFIrD4D5QueMfXe1nl5ulvX9J7P', 1, '2020-05-23 04:00:49', '2020-05-23 04:00:49', '2020-05-23 04:00:49'),
(49, 49, 'l8sP0ZBGsQ7IFVFY3MNBs2s5K7hjyObo', 1, '2020-05-23 04:01:26', '2020-05-23 04:01:26', '2020-05-23 04:01:26'),
(50, 50, 'Cx3hDlqsSTREQE5hyqvUEIVgxl9HCUgT', 1, '2020-05-23 04:02:51', '2020-05-23 04:02:51', '2020-05-23 04:02:51'),
(51, 51, 'PM6PDXjHGZR72RAebiwGCubsxDoFcpsF', 1, '2020-05-23 04:03:44', '2020-05-23 04:03:44', '2020-05-23 04:03:44'),
(52, 52, 'ye5mYuyIlQCZtUrGhOVBR9ctG6FUsnZP', 1, '2020-05-23 04:04:21', '2020-05-23 04:04:21', '2020-05-23 04:04:21'),
(53, 53, 'kn39FiG8wMoP2NQp5kjPpZhgNbbsdF5b', 1, '2020-05-23 04:05:09', '2020-05-23 04:05:09', '2020-05-23 04:05:09'),
(54, 54, 'Bfmto1XwYSXeuBDjzHaOSciuEVacLiJz', 1, '2020-05-23 04:05:36', '2020-05-23 04:05:36', '2020-05-23 04:05:36'),
(55, 55, 'RuQhPaqsyJIaM70vo084yXuitSMiz5J4', 1, '2020-05-23 04:06:09', '2020-05-23 04:06:09', '2020-05-23 04:06:09'),
(56, 56, '5UQZ0z4dRDRqn9VH9TDrfjqWyg1AnP6P', 1, '2020-05-23 04:07:01', '2020-05-23 04:07:01', '2020-05-23 04:07:01'),
(57, 57, 'yIcPLl81r4xecbXvL1IK2hg6eIH9uEBD', 1, '2020-05-23 04:09:58', '2020-05-23 04:09:58', '2020-05-23 04:09:58'),
(58, 58, 'Bp0KBZGsZZK5c04TlS5lV25spnm7PdRy', 1, '2020-05-23 04:10:37', '2020-05-23 04:10:37', '2020-05-23 04:10:37'),
(59, 59, 'kd3lLoPqWuq47m4nYNWQwH2VmFsbIYAJ', 1, '2020-05-23 04:12:22', '2020-05-23 04:12:22', '2020-05-23 04:12:22'),
(60, 60, 'QyKwqCdF3tfTc5E5gNN70DLtHPm3l0ni', 1, '2020-05-23 04:13:11', '2020-05-23 04:13:11', '2020-05-23 04:13:11'),
(61, 61, 'xV1xAObivk1V8IKSyXI5dJP2CJSxg3vl', 1, '2020-05-23 04:13:52', '2020-05-23 04:13:52', '2020-05-23 04:13:52'),
(62, 62, 'K4NZPMWaY3EZt8NJcjOHQZ5TUhdQmyjU', 1, '2020-05-23 04:14:23', '2020-05-23 04:14:23', '2020-05-23 04:14:23'),
(63, 63, 'Yh2QxklDJGEM88vE14DiktU6t46A7SlA', 1, '2020-05-23 04:14:55', '2020-05-23 04:14:55', '2020-05-23 04:14:55'),
(64, 64, '214WYUYA6fNMy38ZrM60jJDkfvRIIZLX', 1, '2020-05-24 15:46:25', '2020-05-24 15:46:25', '2020-05-24 15:46:25'),
(65, 65, 'PI2MHOnEEOKiZBR9vyqZNdnAd8GCvn2z', 1, '2020-05-24 15:48:38', '2020-05-24 15:48:38', '2020-05-24 15:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `categories_check` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `categories_check`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', 0, 'Bài viết tin tức', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 18, 1, 0, 'tin_tuc', '2020-05-13 03:46:56', '2020-05-15 02:12:28'),
(3, 'Đề tài khoa học', 0, 'Đề tài khoa học', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 19, 1, 0, 'de_tai_khoa_hoc', '2020-05-13 04:32:25', '2020-05-15 02:15:06'),
(4, 'Giới thiệu', 0, 'Các bài viết giới thiệu', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-14 09:23:43', '2020-05-14 09:23:43'),
(5, 'Đào tạo', 0, 'Các bài viết đào tạo', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-14 09:24:06', '2020-05-14 09:24:06'),
(6, 'Tuyển sinh', 0, 'Các bài viết tuyển sinh', 'pending', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-14 09:24:34', '2020-05-18 14:49:15'),
(7, 'Nghiên cứu', 0, 'Các bài viết nghiên cứu', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-14 09:25:14', '2020-05-18 16:13:24'),
(12, 'Thông tin nổi bật', 0, 'Thông tin nổi bật', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 20, 1, 0, NULL, '2020-05-14 09:36:01', '2020-05-15 02:11:48'),
(13, 'Sinh viên hiện tại', 0, 'Sinh viên hiện tại', 'published', 1, 'Botble\\ACL\\Models\\User', 'fa fa-user-secret', 0, 0, 0, NULL, '2020-05-15 03:45:25', '2020-05-15 03:57:20'),
(14, 'Sinh viên tương lai', 0, 'Sinh viên tương lai', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-15 03:46:00', '2020-05-15 03:46:00'),
(15, 'Cán bộ', 0, 'Cán bộ', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-15 03:46:16', '2020-05-15 03:46:16'),
(16, 'Sơ đồ tổ chức', 0, 'Sơ đồ tổ chức', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, 'so_do_to_chuc', '2020-05-15 04:10:38', '2020-05-15 04:10:38'),
(17, 'Bộ môn', 0, 'Các bộ môn trong học viện', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 08:20:22', '2020-05-22 08:20:22'),
(18, 'Bộ môn công nghệ phần mềm', 17, 'Bộ môn công nghệ phần mềm', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 08:54:47', '2020-05-22 08:54:47'),
(19, 'Bộ môn hệ thống thông tin', 17, 'Bộ môn hệ thống thông tin', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, NULL, '2020-05-22 09:05:02', '2020-05-22 09:05:02'),
(20, 'Bộ môn khoa học máy tính', 17, 'Bộ môn khoa học máy tính', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, NULL, '2020-05-22 09:05:54', '2020-05-22 09:05:54'),
(21, 'Bộ môn kỹ thuật máy tính', 17, 'Bộ môn kỹ thuật máy tính', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 09:07:03', '2020-05-22 09:07:03'),
(22, 'Bộ môn truyền thông và mạng máy tính', 17, 'Bộ môn truyền thông và mạng máy tính', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 09:07:49', '2020-05-22 09:07:49'),
(23, 'Trung tâm', 0, 'Trung tâm', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 09:13:21', '2020-05-22 09:13:21'),
(24, 'Trung tâm máy tính', 23, 'Trung tâm máy tính', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 09:13:49', '2020-05-22 09:13:49'),
(25, 'Trung tâm đổi mới sáng tạo', 23, 'Trung tâm đổi mới sáng tạo', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 09:15:38', '2020-05-22 09:15:38'),
(26, 'Trung tâm NAVIS', 23, 'Trung tâm NAVIS', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 09:16:02', '2020-05-22 09:16:02'),
(27, 'Trung tâm Cyber Security', 23, 'Trung tâm Cyber Security', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, NULL, '2020-05-22 09:17:01', '2020-05-22 09:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_pages', '2020-05-13 03:37:51', '2020-05-13 03:37:51'),
(2, 'widget_total_users', '2020-05-13 03:37:51', '2020-05-13 03:37:51'),
(3, 'widget_total_plugins', '2020-05-13 03:37:51', '2020-05-13 03:37:51'),
(4, 'widget_total_themes', '2020-05-13 03:37:51', '2020-05-13 03:37:51'),
(5, 'widget_posts_recent', '2020-05-13 03:37:51', '2020-05-13 03:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 0, 1, '2020-05-19 16:43:02', '2020-05-19 16:43:02'),
(2, NULL, 1, 2, 0, 1, '2020-05-19 16:43:02', '2020-05-19 16:43:02'),
(3, NULL, 1, 3, 0, 1, '2020-05-19 16:43:02', '2020-05-19 16:43:02'),
(4, NULL, 1, 4, 0, 1, '2020-05-19 16:43:02', '2020-05-19 16:43:02'),
(5, '{\"state\":\"expand\"}', 1, 5, 0, 1, '2020-05-19 16:43:02', '2020-05-19 16:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `reference_id`, `images`, `reference_type`, `created_at`, `updated_at`) VALUES
(3, 3, '[{\"img\":\"76647903-2453090551630942-2197624049696243712-o.jpg\",\"description\":\"\"}]', 'Botble\\Blog\\Models\\Post', '2020-05-13 07:53:24', '2020-05-14 07:35:34'),
(5, 1, '[]', 'Botble\\Page\\Models\\Page', '2020-05-14 07:34:06', '2020-05-14 07:34:06'),
(11, 4, NULL, 'Botble\\Blog\\Models\\Post', '2020-05-15 01:44:42', '2020-05-15 01:44:42'),
(12, 5, NULL, 'Botble\\Blog\\Models\\Post', '2020-05-15 02:41:40', '2020-05-15 02:41:40'),
(13, 1, NULL, 'Botble\\Blog\\Models\\Post', '2020-05-15 03:03:52', '2020-05-15 03:03:52'),
(14, 2, NULL, 'Botble\\Blog\\Models\\Post', '2020-05-15 03:21:27', '2020-05-15 03:21:27'),
(15, 6, NULL, 'Botble\\Blog\\Models\\Post', '2020-05-15 03:23:14', '2020-05-15 03:23:14'),
(16, 2, NULL, 'Botble\\Page\\Models\\Page', '2020-05-15 03:38:52', '2020-05-15 03:38:52'),
(17, 3, NULL, 'Botble\\Page\\Models\\Page', '2020-05-15 03:39:39', '2020-05-15 03:39:39'),
(18, 4, NULL, 'Botble\\Page\\Models\\Page', '2020-05-15 03:40:20', '2020-05-15 03:40:20'),
(19, 5, NULL, 'Botble\\Page\\Models\\Page', '2020-05-15 03:40:48', '2020-05-15 03:40:48'),
(20, 7, NULL, 'Botble\\Blog\\Models\\Post', '2020-05-15 04:11:58', '2020-05-15 04:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'Tiếng Việt', 'vi', 'vi', 'vn', 1, 0, 0),
(2, 'English', 'en', 'en_US', 'us', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `reference_id`, `lang_meta_code`, `reference_type`, `lang_meta_origin`) VALUES
(1, 1, 'vi', 'Botble\\Blog\\Models\\Category', '4d02582fac2184eec0905ba06ea88267'),
(3, 3, 'vi', 'Botble\\Blog\\Models\\Category', 'e980ec33cb569326a5c26e158a6df7c5'),
(4, 1, 'vi', 'Botble\\Blog\\Models\\Post', 'be1fc7c0f2401eda0fdbfe94ee88cf21'),
(5, 2, 'vi', 'Botble\\Blog\\Models\\Post', '8b7dcb89716ced13e7e58ec3b4695ce2'),
(6, 3, 'vi', 'Botble\\Blog\\Models\\Post', 'e1b12a66a30d5c2e56864762363d2c20'),
(7, 1, 'vi', 'Botble\\Menu\\Models\\Menu', '1b805cf53bfa6e6ae77e252677c8b8db'),
(8, 1, 'vi', 'Botble\\Menu\\Models\\MenuLocation', '4b663b0f84c1b880c727e21f3721157e'),
(9, 1, 'vi', 'Botble\\Page\\Models\\Page', '1faa8efc5f4068d10d1d3512ced1d4e1'),
(10, 4, 'vi', 'Botble\\Blog\\Models\\Category', '971f777da9deb52593b4730262628fb9'),
(11, 5, 'vi', 'Botble\\Blog\\Models\\Category', 'c8b72698885f895ce62c2db3cc0cf3e8'),
(12, 6, 'vi', 'Botble\\Blog\\Models\\Category', 'ccfda14f3414e5a485c48d0198119c21'),
(13, 7, 'vi', 'Botble\\Blog\\Models\\Category', '38adfc891811c3f34bb3bf3c9645c0fb'),
(18, 4, 'vi', 'Botble\\Blog\\Models\\Post', 'f9939f0054fed1fe6f606a69738f4643'),
(23, 12, 'vi', 'Botble\\Blog\\Models\\Category', 'd5277cf8df2a0f3d2fc7802a1e365917'),
(24, 5, 'vi', 'Botble\\Blog\\Models\\Post', 'c9febe52f5025394cded141b12ecdbb3'),
(25, 6, 'vi', 'Botble\\Blog\\Models\\Post', '282c8136e8fb89876238e1e5232ce084'),
(26, 2, 'vi', 'Botble\\Page\\Models\\Page', '6a64b34aea772ae29408d69c36737acd'),
(27, 3, 'vi', 'Botble\\Page\\Models\\Page', '077a68f035f513b71b7906599b5a8f12'),
(28, 4, 'vi', 'Botble\\Page\\Models\\Page', '29bd800c6439b743f893b6f7c88ca16d'),
(29, 5, 'vi', 'Botble\\Page\\Models\\Page', '88013fd62d1de47b2f9f20a273582837'),
(30, 13, 'vi', 'Botble\\Blog\\Models\\Category', 'b547061837280301a1718e886401f93c'),
(31, 14, 'vi', 'Botble\\Blog\\Models\\Category', '11c8fb4e22d62b66c66f421aab5741cb'),
(32, 15, 'vi', 'Botble\\Blog\\Models\\Category', '0ae6a101a4479fe088992d09e235958f'),
(33, 2, 'vi', 'Botble\\Menu\\Models\\Menu', '6cab6a4cb7591fc4aa347aeaf7d24dd0'),
(34, 2, 'vi', 'Botble\\Menu\\Models\\MenuLocation', '1e3860e7bffb0a7f36ac4de9920e919a'),
(35, 16, 'vi', 'Botble\\Blog\\Models\\Category', '0399b557983ed611c40580399494a251'),
(36, 7, 'vi', 'Botble\\Blog\\Models\\Post', 'a8411ffccc6736f9ec2d0728ce030aa3'),
(37, 3, 'vi', 'Botble\\Menu\\Models\\Menu', 'd9c8c4da1aac3f8514f5772a30a30b73'),
(38, 3, 'vi', 'Botble\\Menu\\Models\\MenuLocation', '40eedc87f4f0f7a7259102ff77e8e2e1'),
(40, 4, 'vi', 'Botble\\Menu\\Models\\MenuLocation', 'b66196a60ce16ec629f2dd2f9b7c4f22'),
(42, 2, 'vi', 'Botble\\Profile\\Models\\Profile', '426966973c49c6249dd4ab25f9a2023b'),
(43, 3, 'vi', 'Botble\\Profile\\Models\\Profile', 'e1c3e7882ac9bef0776d9cea7d24fd14'),
(45, 2, 'vi', 'Botble\\Slidebar\\Models\\Slidebar', 'fe511600cc48e4f431ab36320774d515'),
(46, 3, 'vi', 'Botble\\Slidebar\\Models\\Slidebar', '68a367b71d4d308c555826576c72a859'),
(47, 4, 'vi', 'Botble\\Slidebar\\Models\\Slidebar', 'd429332811094e02244a326adda19e9a'),
(48, 4, 'vi', 'Botble\\Profile\\Models\\Profile', '1b378ce8ff0905de7818da951584e336'),
(49, 5, 'vi', 'Botble\\Menu\\Models\\Menu', '63c35cbf1fa932d0995ce624823c1c5b'),
(50, 5, 'vi', 'Botble\\Menu\\Models\\MenuLocation', 'b793ff9ba335c9296f830fbb8ff858a8'),
(51, 1, 'vi', 'Botble\\Tuyensinh\\Models\\Tuyensinh', '8775b9375d14ee334b21acfdfe70e7e2'),
(52, 2, 'vi', 'Botble\\Tuyensinh\\Models\\Tuyensinh', 'ba6b6d1e5ec312c93530df0a04c6ea7f'),
(53, 3, 'vi', 'Botble\\Tuyensinh\\Models\\Tuyensinh', '159c8b5edac701b61b4106c5fb1d7794'),
(54, 4, 'vi', 'Botble\\Tuyensinh\\Models\\Tuyensinh', '9f2c1d64bdd7ffa108252203cb3f8b58'),
(55, 5, 'vi', 'Botble\\Tuyensinh\\Models\\Tuyensinh', 'c1b894e20229d12a1caee850f2bd1c5b'),
(56, 6, 'vi', 'Botble\\Tuyensinh\\Models\\Tuyensinh', 'bd376dbb4925a3ee66eab8ad658f1780'),
(57, 8, 'vi', 'Botble\\Blog\\Models\\Post', '526a58a77ffddefb760ae999f56e31e4'),
(58, 9, 'vi', 'Botble\\Blog\\Models\\Post', '4f74b9fb66212c4de332b7241a688236'),
(59, 10, 'vi', 'Botble\\Blog\\Models\\Post', '1d3dea2af9d7119a061ac16f3ccd6754'),
(60, 11, 'vi', 'Botble\\Blog\\Models\\Post', '90475bc0d634e9f7ff6315b9317fbbef'),
(61, 12, 'vi', 'Botble\\Blog\\Models\\Post', '7203c5e9f74f860fef8be71011d24d19'),
(62, 13, 'vi', 'Botble\\Blog\\Models\\Post', 'ab1fc56b244be964c498ad7dfe2f98b3'),
(63, 14, 'vi', 'Botble\\Blog\\Models\\Post', '36d573f7ad42ff160f526d6b546e07de'),
(64, 15, 'vi', 'Botble\\Blog\\Models\\Post', '139b068a48824ae8b23c05598cf38536'),
(65, 17, 'vi', 'Botble\\Blog\\Models\\Category', 'a2a0d3a89fba0fe3745f1b6d96a487f7'),
(66, 6, 'vi', 'Botble\\Page\\Models\\Page', 'd23cd473c78785fade4e904abb9d8efc'),
(67, 7, 'vi', 'Botble\\Page\\Models\\Page', '9054a6b88f416ce767fa68e05937e1bd'),
(70, 18, 'vi', 'Botble\\Blog\\Models\\Category', '00d65ae950c2f9370f9a11e428688519'),
(71, 16, 'vi', 'Botble\\Blog\\Models\\Post', 'dbe32dbbc4408689c8307093ddfbf0d8'),
(72, 19, 'vi', 'Botble\\Blog\\Models\\Category', '57763298aad3d7cd0a4d0d960f2a9dba'),
(73, 20, 'vi', 'Botble\\Blog\\Models\\Category', 'a6e75f501247fdf08ac128c968315711'),
(74, 21, 'vi', 'Botble\\Blog\\Models\\Category', '10606ebf9f20a10f5ecc7a36dadd9535'),
(75, 22, 'vi', 'Botble\\Blog\\Models\\Category', '413d2628459401c2c13f78747578dda1'),
(76, 23, 'vi', 'Botble\\Blog\\Models\\Category', 'c3d1f2d4d016ad1f69aa5345fd66c77b'),
(77, 24, 'vi', 'Botble\\Blog\\Models\\Category', '27be0aaf5261fa6a0c524d69a9986589'),
(78, 25, 'vi', 'Botble\\Blog\\Models\\Category', 'f5fd2e2c888f723b7a7af0d0d5f4947f'),
(79, 26, 'vi', 'Botble\\Blog\\Models\\Category', '71c0b92271081cbdaefcf75c2ddaf23a'),
(80, 27, 'vi', 'Botble\\Blog\\Models\\Category', 'cb102cb02f3a01d381dcaf56fd3bb9a2');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '51569', 5, 'image/jpeg', 353544, '51569.jpg', '[]', '2020-05-13 03:43:57', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(2, 1, '76647903_2453090551630942_2197624049696243712_o', 5, 'image/jpeg', 438810, '76647903-2453090551630942-2197624049696243712-o.jpg', '[]', '2020-05-14 07:35:27', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(3, 1, 'logo', 5, 'image/png', 82946, 'logo.png', '[]', '2020-05-14 08:32:36', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(4, 1, 'logo-1', 5, 'image/png', 82946, 'logo-1.png', '[]', '2020-05-14 08:33:26', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(5, 1, 'blog1', 0, 'image/jpeg', 98497, 'blog1.jpg', '[]', '2020-05-15 02:41:29', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(6, 1, 'dientu-vienthongtientien2', 0, 'image/jpeg', 508014, 'dientu-vienthongtientien2.jpg', '[]', '2020-05-15 03:03:46', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(7, 1, 'dientu-vienthongtientien', 0, 'image/jpeg', 529056, 'dientu-vienthongtientien.jpg', '[]', '2020-05-15 03:21:11', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(8, 1, 'event1', 0, 'image/jpeg', 280191, 'event1.jpg', '[]', '2020-05-15 03:23:10', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(9, 1, 'dientu2', 0, 'image/jpeg', 244521, 'dientu2.jpg', '[]', '2020-05-15 03:38:47', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(10, 1, 'slider-1', 0, 'image/jpeg', 3092362, 'slider-1.jpg', '[]', '2020-05-16 07:01:43', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(11, 1, 'slider-2', 0, 'image/jpeg', 3468643, 'slider-2.jpg', '[]', '2020-05-16 07:01:51', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(12, 1, 'slider-3', 0, 'image/jpeg', 3016039, 'slider-3.jpg', '[]', '2020-05-16 07:01:51', '2020-05-18 14:11:52', '2020-05-18 14:11:52'),
(13, 1, 'banner', 0, 'image/jpeg', 455312, 'banner.jpg', '[]', '2020-05-18 14:12:26', '2020-05-18 14:12:26', NULL),
(14, 1, 'bg1', 0, 'image/jpeg', 237372, 'bg1.jpg', '[]', '2020-05-18 14:12:28', '2020-05-18 14:12:28', NULL),
(15, 1, 'blog1-1', 0, 'image/jpeg', 98497, 'blog1-1.jpg', '[]', '2020-05-18 14:12:28', '2020-05-18 14:12:28', NULL),
(16, 1, 'dientu', 0, 'image/jpeg', 233306, 'dientu.jpg', '[]', '2020-05-18 14:12:28', '2020-05-18 14:12:28', NULL),
(17, 1, 'dientu2-1', 0, 'image/jpeg', 244521, 'dientu2-1.jpg', '[]', '2020-05-18 14:12:29', '2020-05-18 14:12:29', NULL),
(18, 1, 'dientu-vienthong', 0, 'image/jpeg', 230901, 'dientu-vienthong.jpg', '[]', '2020-05-18 14:12:29', '2020-05-18 14:12:29', NULL),
(19, 1, 'dientu-vienthong2', 0, 'image/jpeg', 239941, 'dientu-vienthong2.jpg', '[]', '2020-05-18 14:12:30', '2020-05-18 14:12:30', NULL),
(20, 1, 'dientu-vienthongtientien-1', 0, 'image/jpeg', 529056, 'dientu-vienthongtientien-1.jpg', '[]', '2020-05-18 14:12:30', '2020-05-18 14:12:30', NULL),
(21, 1, 'dientu-vienthongtientien2-1', 0, 'image/jpeg', 508014, 'dientu-vienthongtientien2-1.jpg', '[]', '2020-05-18 14:12:31', '2020-05-18 14:12:31', NULL),
(22, 1, 'event1-1', 0, 'image/jpeg', 280191, 'event1-1.jpg', '[]', '2020-05-18 14:12:32', '2020-05-18 14:12:32', NULL),
(23, 1, 'event2', 0, 'image/jpeg', 321862, 'event2.jpg', '[]', '2020-05-18 14:12:32', '2020-05-18 14:12:32', NULL),
(24, 1, 'feature1', 0, 'image/jpeg', 105320, 'feature1.jpg', '[]', '2020-05-18 14:12:32', '2020-05-18 14:12:32', NULL),
(25, 1, 'hethongnhung', 0, 'image/jpeg', 235817, 'hethongnhung.jpg', '[]', '2020-05-18 14:12:33', '2020-05-18 14:12:33', NULL),
(26, 1, 'hethongnhung2', 0, 'image/jpeg', 218421, 'hethongnhung2.jpg', '[]', '2020-05-18 14:12:33', '2020-05-18 14:12:33', NULL),
(27, 1, 'logo', 0, 'image/png', 82946, 'logo.png', '[]', '2020-05-18 14:12:34', '2020-05-18 16:27:25', '2020-05-18 16:27:25'),
(28, 1, 'logo-bk', 0, 'image/jpeg', 285721, 'logo-bk.jpg', '[]', '2020-05-18 14:12:34', '2020-05-18 16:27:25', '2020-05-18 16:27:25'),
(29, 1, 'team1', 0, 'image/jpeg', 18820, 'team1.jpg', '[]', '2020-05-18 14:12:37', '2020-05-18 14:12:37', NULL),
(30, 1, 'ysinh', 0, 'image/jpeg', 227648, 'ysinh.jpg', '[]', '2020-05-18 14:12:38', '2020-05-18 14:12:38', NULL),
(31, 1, 'ysinh2', 0, 'image/jpeg', 225663, 'ysinh2.jpg', '[]', '2020-05-18 14:12:38', '2020-05-18 14:12:38', NULL),
(32, 1, 'slider-1-1', 0, 'image/jpeg', 3092362, 'slider-1-1.jpg', '[]', '2020-05-18 14:22:15', '2020-05-18 14:28:54', '2020-05-18 14:28:54'),
(33, 1, 'banner-1', 0, 'image/png', 3045014, 'banner-1.png', '[]', '2020-05-18 14:23:50', '2020-05-18 14:23:50', NULL),
(34, 1, 'slider-2-1', 0, 'image/jpeg', 3468643, 'slider-2-1.jpg', '[]', '2020-05-18 14:24:03', '2020-05-18 14:28:54', '2020-05-18 14:28:54'),
(35, 1, 'slider-3-1', 0, 'image/jpeg', 3016039, 'slider-3-1.jpg', '[]', '2020-05-18 14:25:08', '2020-05-18 14:28:54', '2020-05-18 14:28:54'),
(36, 1, 'slider-1-2', 0, 'image/jpeg', 3092362, 'slider-1-2.jpg', '[]', '2020-05-18 14:26:40', '2020-05-18 14:28:54', '2020-05-18 14:28:54'),
(37, 1, 'slider-1-3', 0, 'image/jpeg', 3092362, 'slider-1-3.jpg', '[]', '2020-05-18 14:28:31', '2020-05-18 14:28:31', NULL),
(38, 1, 'slider-2-2', 0, 'image/jpeg', 3468643, 'slider-2-2.jpg', '[]', '2020-05-18 14:29:11', '2020-05-18 14:29:11', NULL),
(39, 1, 'slider-3-2', 0, 'image/jpeg', 3016039, 'slider-3-2.jpg', '[]', '2020-05-18 14:29:20', '2020-05-18 14:29:20', NULL),
(40, 1, 'organization', 0, 'image/jpeg', 42991, 'organization.jpg', '[]', '2020-05-18 14:42:32', '2020-05-18 14:42:32', NULL),
(41, 1, 'team1', 2, 'image/jpeg', 18820, 'profile/team1.jpg', '[]', '2020-05-18 14:45:03', '2020-05-18 14:45:03', NULL),
(42, 1, 'slider-1', 3, 'image/jpeg', 3092362, 'banner/slider-1.jpg', '[]', '2020-05-18 14:52:24', '2020-05-18 14:52:24', NULL),
(43, 1, 'slider-2', 3, 'image/jpeg', 3468643, 'banner/slider-2.jpg', '[]', '2020-05-18 14:52:26', '2020-05-18 14:52:26', NULL),
(44, 1, 'slider-3', 3, 'image/jpeg', 3016039, 'banner/slider-3.jpg', '[]', '2020-05-18 14:52:28', '2020-05-18 14:52:28', NULL),
(45, 1, 'logo', 4, 'image/png', 82946, 'logo/logo.png', '[]', '2020-05-18 16:27:38', '2020-05-18 16:27:38', NULL),
(46, 1, 'logo-bk', 4, 'image/jpeg', 285721, 'logo/logo-bk.jpg', '[]', '2020-05-18 16:27:40', '2020-05-18 16:27:40', NULL),
(47, 1, 'favicon', 4, 'image/png', 4266, 'logo/favicon.png', '[]', '2020-05-18 16:29:34', '2020-05-18 16:29:34', NULL),
(48, 0, 'my-avatar.jpg', 0, 'image/jpeg', 134220, '/users/my-avatar.jpg', '[]', '2020-05-21 14:24:45', '2020-05-21 14:24:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'HustImg', 'hustimg', 5, '2020-05-14 08:33:05', '2020-05-14 08:33:05', NULL),
(2, 1, 'profile', 'profile', 0, '2020-05-18 14:44:46', '2020-05-18 14:44:46', NULL),
(3, 1, 'Banner', 'banner', 0, '2020-05-18 14:52:11', '2020-05-18 14:52:11', NULL),
(4, 1, 'Logo', 'logo', 0, '2020-05-18 16:26:55', '2020-05-18 16:26:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2020-05-14 07:32:01', '2020-05-14 07:32:01'),
(2, 'Top menu', 'top-menu', 'published', '2020-05-15 03:48:10', '2020-05-15 03:48:10'),
(3, 'Bottom menu', 'bottom-menu', 'published', '2020-05-15 04:15:13', '2020-05-15 04:15:13'),
(5, 'Content menu', 'content-menu', 'published', '2020-05-16 09:08:28', '2020-05-16 09:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2020-05-14 07:32:44', '2020-05-14 07:32:44'),
(2, 2, 'header-menu', '2020-05-15 03:48:37', '2020-05-15 03:48:37'),
(3, 3, 'footer-menu', '2020-05-15 04:16:05', '2020-05-15 04:16:05'),
(4, 4, 'footer-menu', '2020-05-15 04:28:40', '2020-05-15 04:28:40'),
(5, 5, 'content-menu', '2020-05-16 09:16:06', '2020-05-16 09:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT '0',
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(2, 1, 0, 1, 'Botble\\Blog\\Models\\Category', NULL, '', 7, 'Tin tức', '', '_self', 0, '2020-05-14 07:32:44', '2020-05-22 09:19:21'),
(3, 1, 0, 0, NULL, 'http://hust.htc-it.team/', '', 0, 'Trang chủ', '', '_self', 0, '2020-05-14 07:34:34', '2020-05-20 10:00:30'),
(4, 1, 0, 1, 'Botble\\Page\\Models\\Page', NULL, '', 8, 'Liên hệ', '', '_self', 0, '2020-05-14 07:34:34', '2020-05-22 09:19:21'),
(5, 1, 0, 4, 'Botble\\Blog\\Models\\Category', NULL, '', 1, 'Giới thiệu', '', '_self', 1, '2020-05-14 09:26:21', '2020-05-14 09:29:00'),
(6, 1, 0, 5, 'Botble\\Blog\\Models\\Category', NULL, '', 2, 'Đào tạo', '', '_self', 0, '2020-05-14 09:26:21', '2020-05-14 09:29:00'),
(8, 1, 0, 7, 'Botble\\Blog\\Models\\Category', NULL, '', 4, 'Nghiên cứu', '', '_self', 0, '2020-05-14 09:26:21', '2020-05-14 09:29:00'),
(13, 1, 5, 2, 'Botble\\Page\\Models\\Page', NULL, '', 0, 'Thông tin chung', '', '_self', 0, '2020-05-15 03:41:46', '2020-05-15 04:12:31'),
(14, 1, 5, 3, 'Botble\\Page\\Models\\Page', NULL, '', 1, 'Tầm nhìn, Sứ mệnh', '', '_self', 0, '2020-05-15 03:41:46', '2020-05-15 04:12:31'),
(15, 1, 5, 4, 'Botble\\Page\\Models\\Page', NULL, '', 2, 'Cơ sở vật chất', '', '_self', 0, '2020-05-15 03:41:46', '2020-05-15 04:12:31'),
(18, 2, 0, 13, 'Botble\\Blog\\Models\\Category', NULL, 'fa fa-user-secret', 0, 'Sinh viên hiện tại', '', '_self', 0, '2020-05-15 03:48:37', '2020-05-15 04:02:32'),
(19, 2, 0, 14, 'Botble\\Blog\\Models\\Category', NULL, 'fa fa-user-o', 1, 'Sinh viên tương lai', '', '_self', 0, '2020-05-15 03:48:37', '2020-05-15 04:02:32'),
(20, 1, 5, 16, 'Botble\\Blog\\Models\\Category', NULL, '', 3, 'Sơ đồ tổ chức', '', '_self', 0, '2020-05-15 04:12:31', '2020-05-16 09:20:50'),
(21, 3, 0, 0, NULL, 'http://hust.htc-it.team/', 'fa fa-angle-right', 0, 'Trang chủ', '', '_self', 0, '2020-05-15 04:16:05', '2020-05-26 01:14:25'),
(22, 3, 0, 4, 'Botble\\Blog\\Models\\Category', NULL, 'fa fa-angle-right', 1, 'Giới thiệu', '', '_self', 0, '2020-05-15 04:16:05', '2020-05-15 04:20:28'),
(23, 3, 0, 5, 'Botble\\Blog\\Models\\Category', NULL, 'fa fa-angle-right', 2, 'Đào tạo', '', '_self', 0, '2020-05-15 04:16:05', '2020-05-15 04:20:28'),
(24, 3, 0, 6, 'Botble\\Blog\\Models\\Category', NULL, 'fa fa-angle-right', 3, 'Tuyển sinh', '', '_self', 0, '2020-05-15 04:16:05', '2020-05-15 04:20:28'),
(30, 2, 0, 0, NULL, '/profile/all', 'fa fa-power-off', 2, 'Cán bộ', '', '_self', 0, '2020-05-15 10:21:12', '2020-05-16 02:41:43'),
(31, 5, 0, 4, 'Botble\\Page\\Models\\Page', NULL, '', 0, 'Cơ sở vật chất', '', '_self', 0, '2020-05-16 09:09:20', '2020-05-16 09:16:06'),
(32, 5, 0, 1, 'Botble\\Page\\Models\\Page', NULL, '', 1, 'Liên hệ', '', '_self', 0, '2020-05-16 09:09:20', '2020-05-16 09:16:06'),
(33, 5, 0, 5, 'Botble\\Page\\Models\\Page', NULL, '', 2, 'Sơ đồ tổ chức', '', '_self', 0, '2020-05-16 09:09:20', '2020-05-16 09:16:06'),
(34, 5, 0, 3, 'Botble\\Page\\Models\\Page', NULL, '', 3, 'Tầm nhìn, Sứ mệnh', '', '_self', 0, '2020-05-16 09:09:20', '2020-05-16 09:16:06'),
(35, 5, 0, 2, 'Botble\\Page\\Models\\Page', NULL, '', 4, 'Thông tin chung', '', '_self', 0, '2020-05-16 09:09:20', '2020-05-16 09:16:06'),
(36, 1, 0, 0, NULL, 'http://hust.htc-it.team/tuyensinh/all', '', 3, 'Tuyển sinh', 'blink', '_self', 0, '2020-05-16 09:20:50', '2020-05-21 12:03:51'),
(39, 1, 0, 17, 'Botble\\Blog\\Models\\Category', NULL, '', 5, 'Bộ môn', '', '_self', 1, '2020-05-22 08:21:12', '2020-05-22 09:00:12'),
(45, 1, 39, 18, 'Botble\\Blog\\Models\\Category', NULL, '', 0, 'Bộ môn công nghệ phần mềm', '', '_self', 0, '2020-05-22 09:00:12', '2020-05-22 09:19:21'),
(46, 1, 39, 19, 'Botble\\Blog\\Models\\Category', NULL, NULL, 1, 'Bộ môn hệ thống thông tin', NULL, '_self', 0, '2020-05-22 09:19:21', '2020-05-22 09:19:21'),
(47, 1, 39, 20, 'Botble\\Blog\\Models\\Category', NULL, NULL, 2, 'Bộ môn khoa học máy tính', NULL, '_self', 0, '2020-05-22 09:19:21', '2020-05-22 09:19:21'),
(48, 1, 39, 21, 'Botble\\Blog\\Models\\Category', NULL, NULL, 3, 'Bộ môn kỹ thuật máy tính', NULL, '_self', 0, '2020-05-22 09:19:21', '2020-05-22 09:19:21'),
(49, 1, 39, 22, 'Botble\\Blog\\Models\\Category', NULL, NULL, 4, 'Bộ môn truyền thông và mạng máy tính', NULL, '_self', 0, '2020-05-22 09:19:21', '2020-05-22 09:19:21'),
(50, 1, 0, 23, 'Botble\\Blog\\Models\\Category', NULL, NULL, 6, 'Trung tâm', NULL, '_self', 1, '2020-05-22 09:19:21', '2020-05-22 09:19:21'),
(51, 1, 50, 24, 'Botble\\Blog\\Models\\Category', NULL, NULL, 0, 'Trung tâm máy tính', NULL, '_self', 0, '2020-05-22 09:19:21', '2020-05-22 09:19:21'),
(52, 1, 50, 25, 'Botble\\Blog\\Models\\Category', NULL, NULL, 1, 'Trung tâm đổi mới sáng tạo', NULL, '_self', 0, '2020-05-22 09:19:21', '2020-05-22 09:19:21'),
(53, 1, 50, 27, 'Botble\\Blog\\Models\\Category', NULL, NULL, 2, 'Trung tâm Cyber Security', NULL, '_self', 0, '2020-05-22 09:19:21', '2020-05-22 09:19:21'),
(54, 1, 50, 26, 'Botble\\Blog\\Models\\Category', NULL, NULL, 3, 'Trung tâm NAVIS', NULL, '_self', 0, '2020-05-22 09:19:21', '2020-05-22 09:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-13 03:46:56', '2020-05-13 03:46:56'),
(3, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-13 04:32:25', '2020-05-13 04:32:25'),
(4, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-13 06:11:06', '2020-05-13 06:11:06'),
(5, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-13 07:53:07', '2020-05-13 07:53:07'),
(6, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-13 07:53:24', '2020-05-13 07:53:24'),
(7, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-05-14 07:34:06', '2020-05-14 07:34:06'),
(8, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-14 09:23:43', '2020-05-14 09:23:43'),
(9, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-14 09:24:06', '2020-05-14 09:24:06'),
(10, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-14 09:24:34', '2020-05-14 09:24:34'),
(11, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-14 09:25:14', '2020-05-14 09:25:14'),
(16, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-14 09:30:48', '2020-05-14 09:30:48'),
(21, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-14 09:36:01', '2020-05-14 09:36:01'),
(22, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-15 02:41:40', '2020-05-15 02:41:40'),
(23, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-15 03:23:14', '2020-05-15 03:23:14'),
(24, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-05-15 03:38:52', '2020-05-15 03:38:52'),
(25, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-05-15 03:39:39', '2020-05-15 03:39:39'),
(26, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-05-15 03:40:20', '2020-05-15 03:40:20'),
(27, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-05-15 03:40:48', '2020-05-15 03:40:48'),
(28, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-15 03:45:25', '2020-05-15 03:45:25'),
(29, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-15 03:46:00', '2020-05-15 03:46:00'),
(30, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-15 03:46:16', '2020-05-15 03:46:16'),
(31, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-15 04:10:38', '2020-05-15 04:10:38'),
(32, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-15 04:11:58', '2020-05-15 04:11:58'),
(33, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-18 14:59:40', '2020-05-18 14:59:40'),
(34, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-18 15:07:33', '2020-05-18 15:07:33'),
(35, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-18 15:09:53', '2020-05-18 15:09:53'),
(36, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-18 16:20:47', '2020-05-18 16:20:47'),
(37, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-18 16:21:19', '2020-05-18 16:21:19'),
(38, 13, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-18 16:22:57', '2020-05-18 16:22:57'),
(39, 14, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-18 16:23:58', '2020-05-18 16:23:58'),
(40, 15, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-18 16:24:42', '2020-05-18 16:24:42'),
(41, 17, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 08:20:22', '2020-05-22 08:20:22'),
(42, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-05-22 08:22:21', '2020-05-22 08:22:21'),
(43, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Page\\Models\\Page', '2020-05-22 08:23:40', '2020-05-22 08:23:40'),
(46, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 08:54:47', '2020-05-22 08:54:47'),
(47, 16, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2020-05-22 08:55:44', '2020-05-22 08:55:44'),
(48, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:05:02', '2020-05-22 09:05:02'),
(49, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:05:54', '2020-05-22 09:05:54'),
(50, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:07:03', '2020-05-22 09:07:03'),
(51, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:07:49', '2020-05-22 09:07:49'),
(52, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:13:21', '2020-05-22 09:13:21'),
(53, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:13:49', '2020-05-22 09:13:49'),
(54, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:15:38', '2020-05-22 09:15:38'),
(55, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:16:02', '2020-05-22 09:16:02'),
(56, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2020-05-22 09:17:01', '2020-05-22 09:17:01');

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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_01_05_053554_create_jobs_table', 1),
(19, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 1),
(20, '2019_08_13_033145_remove_unused_columns_in_users_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_09_07_030654_update_menu_nodes_table', 1),
(23, '2019_09_07_045041_update_slugs_table', 1),
(24, '2019_09_07_050405_update_slug_reference_for_page', 1),
(25, '2019_09_08_014859_update_meta_boxes_table', 1),
(26, '2019_09_08_015629_update_meta_box_data_for_page', 1),
(27, '2019_09_12_073711_update_media_url', 1),
(28, '2019_09_12_073711_update_media_url_for_current_data', 1),
(29, '2019_10_20_002256_remove_parent_id_in_pages_table', 1),
(30, '2015_06_18_033822_create_blog_table', 2),
(31, '2019_09_07_035526_update_menu_node_reference_type_for_category', 2),
(32, '2019_09_07_050058_update_slug_reference_for_blog', 2),
(33, '2019_09_07_155716_update_language_meta_for_blog', 2),
(34, '2019_09_08_015552_update_meta_box_data_for_blog', 2),
(35, '2019_10_20_002342_remove_parent_id_in_tags_table', 2),
(36, '2016_06_17_091537_create_contacts_table', 3),
(37, '2016_10_13_150201_create_galleries_table', 4),
(38, '2019_09_07_050253_update_slug_reference_for_gallery', 4),
(39, '2019_09_07_155917_update_language_meta_for_gallery', 4),
(40, '2019_09_08_032534_update_gallery_meta_table', 4),
(41, '2016_10_03_032336_create_languages_table', 5),
(42, '2019_09_07_154718_update_lang_meta_table', 5),
(43, '2017_02_13_034601_create_blocks_table', 6),
(44, '2019_09_07_155256_update_language_meta_for_block', 6),
(45, '2017_10_04_140938_create_member_table', 7),
(47, '2020_05_14_013445_create_profile_table', 8),
(48, '2020_05_16_063829_create_slidebar_table', 9),
(49, '2020_05_18_010213_create_tuyensinh_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Liên hệ', '<p><strong>Viện Điện Tử - Viễn Th&ocirc;ng</strong></p>\r\n\r\n<p><strong>Văn ph&ograve;ng viện:</strong>&nbsp;Ph&ograve;ng 405 - C9, Đại học B&aacute;ch Khoa H&agrave; Nội</p>\r\n\r\n<p><strong>Địa chỉ:&nbsp;</strong>Số 1, Đại Cồ Việt, Hai B&agrave; Trưng - H&agrave; Nội - Việt Nam</p>\r\n\r\n<p><strong>Điện thoại:</strong>&nbsp;(84) 43 8692242 * Fax: (84) 43 8692241</p>\r\n\r\n<p><strong>Website:</strong>&nbsp;<a href=\"http://set.hust.edu.vn/\">http://set.hust.edu.vn</a></p>\r\n\r\n<p><strong>Email:</strong>&nbsp;<a href=\"mailto:set@hust.edu.vn\">set@hust.edu.vn</a></p>\r\n\r\n<p><strong>Ban quản trị:</strong>&nbsp;PGS.TS. Vũ Văn Y&ecirc;m, PGS.TS Ho&agrave;ng Mạnh Thắng</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -13px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 1, NULL, 'default', 0, 'contac', 'published', '2020-05-14 07:34:06', '2020-05-18 14:39:27'),
(2, 'Thông tin chung', '<p><iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/b5DVfiwPF7w\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Triết l&yacute; gi&aacute;o dục của Viện Điện tử - Viễn th&ocirc;ng &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p><em>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;Gi&aacute;o dục phải kết hợp với lao động sản xuất, l&yacute; luận phải gắn liền với thực tiễn, học phải đi đ&ocirc;i với h&agrave;nh, nh&agrave; trường phải gắn liền với x&atilde; hội.&quot;</em></p>\r\n\r\n<p><strong><strong>&nbsp; &nbsp; &nbsp;</strong>Sứ mạng</strong></p>\r\n\r\n<p><em>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</em>C&ugrave;ng với qu&aacute; tr&igrave;nh đổi mới v&agrave; ph&aacute;t triển của Trường ĐH B&aacute;ch khoa H&agrave; Nội, Viện Điện tử - Viễn th&ocirc;ng đang t&iacute;ch cực triển khai c&aacute;c hoạt động đổi mới tr&ecirc;n to&agrave;n bộ c&aacute;c lĩnh vực: Đ&agrave;o tạo, Nghi&ecirc;n cứu khoa học v&agrave; x&acirc;y dựng cơ sở vật chất. Chương tr&igrave;nh đ&agrave;o tạo được đổi mới to&agrave;n diện theo hướng hiện đại v&agrave; hội nhập, &nbsp;đa dạng h&oacute;a c&aacute;c loại h&igrave;nh đ&agrave;o tạo; mở rộng c&aacute;c chương tr&igrave;nh đ&agrave;o tạo đặc biệt (Kỹ sư t&agrave;i năng, chương tr&igrave;nh ti&ecirc;n tiến), ph&aacute;t triển đ&agrave;o tạo sau đại học (Cao học, Nghi&ecirc;n cứu sinh); &nbsp;kết hợp đ&agrave;o tạo l&yacute; thuyết v&agrave; kỹ năng thực h&agrave;nh; gắn chặt đ&agrave;o tạo v&agrave; nghi&ecirc;n cứu khoa học. Hoạt động nghi&ecirc;n cứu khoa học, hợp t&aacute;c trong v&agrave; ngo&agrave;i nước được ph&aacute;t triển mạnh mẽ. Trang thiết bị, cơ sở vật chất cho học tập, thực h&agrave;nh v&agrave; nghi&ecirc;n cứu được tăng cường v&agrave; ng&agrave;y c&agrave;ng ho&agrave;n thiện. Cơ chế quản l&yacute; mới theo hướng tự chủ, tự chịu tr&aacute;ch nhiệm đang được triển khai từng bước. Một m&ocirc;i trường học tập, l&agrave;m việc v&agrave; nghi&ecirc;n cứu khoa học thuận lợi, th&acirc;n thiện đ&atilde; được tạo l&ecirc;n, c&oacute; sức hấp dẫn đối với SV v&agrave; c&aacute;n bộ khoa học c&oacute; tr&igrave;nh độ cao</p>\r\n\r\n<p><strong><em><strong>&nbsp; &nbsp; &nbsp;</strong></em>Tầm nh&igrave;n</strong></p>\r\n\r\n<p><em>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</em>X&acirc;y dựng Viện ĐTVT th&agrave;nh Viện đ&agrave;o tạo tr&igrave;nh độ&nbsp;cao; một trung t&acirc;m nghi&ecirc;n cứu&nbsp;khoa học, chuyển giao c&ocirc;ng nghệ&nbsp;v&agrave; tư&nbsp;vấn h&agrave;ng đầu của đất nước, đạt tr&igrave;nh độ&nbsp;ti&ecirc;n tiến trong khu&nbsp;vực v&agrave; tr&ecirc;n thế&nbsp;giới trong lĩnh vực Điện tử, Viễn th&ocirc;ng; một địa chỉ&nbsp;tin cậy, hấp dẫn đối với c&aacute;c nh&agrave; đầu tư ph&aacute;t triển c&ocirc;ng nghệ, giới doanh nghiệp trong v&agrave; ngo&agrave;i nước&nbsp;</p>\r\n\r\n<p><strong>&nbsp; &nbsp;&nbsp;&nbsp;Những chặng đường ph&aacute;t triển của Viện Điện Tử &ndash; Viễn Th&ocirc;ng</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Đại học B&aacute;ch khoa H&agrave; Nội l&agrave; trường đại học kỹ thuật đa ng&agrave;nh, được th&agrave;nh lập tại H&agrave; Nội ng&agrave;y 15 th&aacute;ng 10 năm 1956. Trường lu&ocirc;n l&agrave; một trong những trường đại học kỹ thuật h&agrave;ng đầu của nền gi&aacute;o dục Việt Nam. Qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh, x&acirc;y dựng v&agrave; ph&aacute;t triển của viện Điện Tử - Viễn Th&ocirc;ng cũng gắn liền với trường Đại Học B&aacute;ch Khoa H&agrave; Nội.</p>\r\n\r\n<p><strong><em>&nbsp;&nbsp;&nbsp;&nbsp; Những chặng đường ph&aacute;t triển</em></strong></p>\r\n\r\n<p>- Năm 1956: Khoa Cơ kh&iacute; &ndash; Điện &ndash; V&ocirc; tuyến điện được th&agrave;nh lập c&ugrave;ng với sự ra đời của Trường Đại học B&aacute;ch khoa H&agrave; Nội.</p>\r\n\r\n<p>- Năm 1959: Kho&aacute; 1 chuy&ecirc;n ng&agrave;nh V&ocirc; tuyến điện ho&agrave;n th&agrave;nh chương tr&igrave;nh đ&agrave;o tạo 3 năm, với lứa kỹ sư đầu ti&ecirc;n ra đời. Đ&acirc;y l&agrave; thế hệ với c&aacute;c chuy&ecirc;n gia đầu ng&agrave;nh Điện tử &ndash; Viễn th&ocirc;ng sau n&agrave;y như: GS. TSKH. Phan Anh, TS. Ng&ocirc; Đức Dũng, PGS. Kiều Vĩnh Kh&aacute;nh, GS. Trần Đức H&acirc;n .v.v.</p>\r\n\r\n<p>- Năm 1967: Bộ m&ocirc;n V&ocirc; tuyến Điện trở th&agrave;nh Khoa V&ocirc; tuyến điện bao gồm 3 đơn vị: Bộ m&ocirc;n Cơ sở V&ocirc; tuyến điện, Bộ m&ocirc;n Kỹ thuật V&ocirc; tuyến điện v&agrave; Xưởng V&ocirc; tuyến điện.</p>\r\n\r\n<p>- Năm 1984: Khoa Điện &ndash; Điện tử ra đời tr&ecirc;n cơ sở s&aacute;t nhập hai Khoa: Khoa V&ocirc; tuyến điện v&agrave; Khoa Điện</p>\r\n\r\n<p>- Năm 1987: Khoa Điện &ndash; Điện tử được t&aacute;ch th&agrave;nh 6 khoa, trong đ&oacute; c&oacute; 2 khoa l&agrave; tiền th&acirc;n của Viện Điện tử &ndash; Viễn th&ocirc;ng ng&agrave;y nay: Khoa Kỹ thuật th&ocirc;ng tin v&agrave; Khoa Điện tử &ndash; Tin học</p>\r\n\r\n<p>- Năm 1994: Khoa Kỹ thuật th&ocirc;ng tin v&agrave; Khoa Điện tử &ndash; Tin học được s&aacute;t nhập th&agrave;nh Khoa Điện Tử &ndash; Viễn Th&ocirc;ng.</p>\r\n\r\n<p>- Năm 2010: Khoa Điện tử &ndash; Viễn th&ocirc;ng được quyết định chuyển th&agrave;nh Viện Điện Tử &ndash; Viễn Th&ocirc;ng.</p>\r\n\r\n<p>&nbsp;<strong><em>&nbsp;&nbsp;&nbsp; Viện Điện tử &ndash; Viễn th&ocirc;ng ng&agrave;y nay</em></strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; Viện Điện tử - Viễn th&ocirc;ng c&oacute; tr&ecirc;n 118 c&aacute;n bộ, giảng vi&ecirc;n. Trong đ&oacute;, số c&aacute;n bộ giảng dạy l&agrave; 80 đều c&oacute; tr&igrave;nh độ tr&ecirc;n đại học, với 13 PGS v&agrave; 45 Tiến sỹ. Hằng năm, Viện Điện tử - Viễn th&ocirc;ng đ&agrave;o tạo khoảng 500 sinh vi&ecirc;n ch&iacute;nh qui, 200 học vi&ecirc;n cao học v&agrave; 10 nghi&ecirc;n cứu sinh, thực hiện 5 Đề t&agrave;i nghi&ecirc;n cứu khoa học cấp Nh&agrave; nước, Nghị định thư, tr&ecirc;n 10 Đề t&agrave;i cấp Bộ v&agrave; nhiều đề t&agrave;i nghi&ecirc;n cứu khoa học v&agrave; chuyển giao c&ocirc;ng nghệ với c&aacute;c cơ quan Nh&agrave; nước, doanh nghiệp trong v&agrave; ngo&agrave;i nước.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; C&ugrave;ng với qu&aacute; tr&igrave;nh đổi mới v&agrave; ph&aacute;t triển của Trường ĐH B&aacute;ch khoa H&agrave; Nội, Viện Điện tử - Viễn th&ocirc;ng đang t&iacute;ch cực triển khai c&aacute;c hoạt động đổi mới tr&ecirc;n to&agrave;n bộ c&aacute;c lĩnh vực: Đ&agrave;o tạo, Nghi&ecirc;n cứu khoa học v&agrave; x&acirc;y dựng cơ sở vật chất. Chương tr&igrave;nh đ&agrave;o tạo được đổi mới to&agrave;n diện theo hướng hiện đại v&agrave; hội nhập. Đa dạng h&oacute;a c&aacute;c loại h&igrave;nh đ&agrave;o tạo. Mở rộng c&aacute;c chương tr&igrave;nh đ&agrave;o tạo đặc biệt (Kỹ sư t&agrave;i năng, chương tr&igrave;nh ti&ecirc;n tiến), ph&aacute;t triển đ&agrave;o tạo sau đại học (Cao học, Nghi&ecirc;n cứu sinh). Kết hợp đ&agrave;o tạo l&yacute; thuyết v&agrave; kỹ năng thực h&agrave;nh. Gắn chặt đ&agrave;o tạo v&agrave; nghi&ecirc;n cứu khoa học. Hoạt động nghi&ecirc;n cứu khoa học, hợp t&aacute;c trong v&agrave; ngo&agrave;i nước được ph&aacute;t triển mạnh mẽ. Trang thiết bị, cơ sở vật chất cho học tập, thực h&agrave;nh v&agrave; nghi&ecirc;n cứu được tăng cường v&agrave; ng&agrave;y c&agrave;ng ho&agrave;n thiện.Cơ chế quản l&yacute; mới theo hướng tự chủ, tự chịu tr&aacute;ch nhiệm đang được triển khai từng bước. Một m&ocirc;i trường học tập, l&agrave;m việc v&agrave; nghi&ecirc;n cứu khoa học thuận lợi, th&acirc;n thiện đ&atilde; được tạo l&ecirc;n, c&oacute; sức hấp dẫn đối với sinh vi&ecirc;n v&agrave; c&aacute;n bộ khoa học c&oacute; tr&igrave;nh độ cao.</p>', 1, 'dientu2.jpg', 'default', 0, 'Thông tin chung', 'published', '2020-05-15 03:38:52', '2020-05-18 14:44:23'),
(3, 'Tầm nhìn, Sứ mệnh', '<p>Tầm nh&igrave;n, Sứ mệnh</p>', 1, 'dientu-vienthongtientien2.jpg', 'default', 0, 'Tầm nhìn, Sứ mệnh', 'published', '2020-05-15 03:39:39', '2020-05-15 03:39:39'),
(4, 'Cơ sở vật chất', '<p>Cơ sở vật chất</p>', 1, 'blog1.jpg', 'default', 0, 'Cơ sở vật chất', 'published', '2020-05-15 03:40:20', '2020-05-15 03:40:20'),
(5, 'Sơ đồ tổ chức', '<p><img alt=\"\" src=\"http://hust.htc-it.team//storage/organization.jpg\" style=\"width: 1100px; height: 1124px;\" /></p>', 1, 'dientu-vienthongtientien.jpg', 'default', 0, 'Sơ đồ tổ chức', 'published', '2020-05-15 03:40:48', '2020-05-18 14:43:44'),
(6, 'Giới thiệu chung', '<p>Giới thiệu chung về bộ m&ocirc;n</p>\r\n\r\n<p>Giới thiệu chung về bộ m&ocirc;n</p>\r\n\r\n<p>Giới thiệu chung về bộ m&ocirc;n</p>\r\n\r\n<p>Giới thiệu chung về bộ m&ocirc;n</p>\r\n\r\n<p>Giới thiệu chung về bộ m&ocirc;n</p>', 1, NULL, 'default', 0, 'Giới thiệu chung về bộ môn', 'published', '2020-05-22 08:22:21', '2020-05-22 08:22:21'),
(7, 'Cơ cấu tổ chức', '<p>Cơ cấu tổ chức&nbsp;</p>\r\n\r\n<p>Cơ cấu tổ chức&nbsp;Cơ cấu tổ chức&nbsp;</p>\r\n\r\n<p>Cơ cấu tổ chức&nbsp;</p>\r\n\r\n<p>Cơ cấu tổ chức&nbsp;</p>\r\n\r\n<p>Cơ cấu tổ chức&nbsp;</p>', 1, NULL, 'default', 0, 'Cơ cấu tổ chức', 'published', '2020-05-22 08:23:40', '2020-05-22 08:23:40');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'Tin tuc 1', 'Tin tuc 1', '<p>Tin tuc 1</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -10px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'feature1.jpg', 1, NULL, '2020-05-13 06:11:06', '2020-05-18 14:58:36'),
(2, 'Tin tuc', 'Tin tuc', '<p>Tin tuc</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'dientu-vienthongtientien2-1.jpg', 3, NULL, '2020-05-13 07:53:07', '2020-05-19 08:40:55'),
(3, 'Khoa hoc', 'Khoa hoc', '<p>Khoa hoc</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'bg1.jpg', 0, NULL, '2020-05-13 07:53:24', '2020-05-18 15:03:22'),
(4, 'Thông tin chung', 'Thông tin chung', '<p>Th&ocirc;ng tin chung</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -5px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'hethongnhung2.jpg', 3, NULL, '2020-05-14 09:30:48', '2020-05-20 09:43:19'),
(5, 'Thong tin noi bat 2', 'Thong tin noi bat 2', '<p>Thong tin noi bat 2</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'dientu.jpg', 2, NULL, '2020-05-15 02:41:40', '2020-05-22 10:00:45'),
(6, 'De tai khoa hoc', 'De tai khoa hoc', '<p>De tai khoa hoc</p>\r\n\r\n<p><img alt=\"\" src=\"http://hust.htc-it.team//storage/ysinh.jpg\" style=\"width: 1600px; height: 1137px;\" /></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'ysinh.jpg', 3, NULL, '2020-05-15 03:23:14', '2020-05-19 11:18:28'),
(8, 'Đề tài 1', 'Đề tài 1', '<p>Đề t&agrave;i 1<img alt=\"\" src=\"http://hust.htc-it.team//storage/event1-1.jpg\" style=\"width: 695px; height: 463px;\" /></p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'event1-1.jpg', 0, NULL, '2020-05-18 14:59:40', '2020-05-18 14:59:40'),
(9, 'Bộ môn hệ thống viễn thông', 'Bộ môn hệ thống viễn thông', '<p>Bộ m&ocirc;n hệ thống viễn th&ocirc;ng</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'dientu-vienthong2.jpg', 6, NULL, '2020-05-18 15:07:33', '2020-05-23 03:18:13'),
(10, 'Bài viết 1', 'Bài viết 1', '<p>B&agrave;i viết 1</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'event2.jpg', 3, NULL, '2020-05-18 15:09:53', '2020-05-22 08:08:34'),
(11, 'Tin công nghệ', 'Tin công nghệ', '<p>Tin c&ocirc;ng nghệ</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'dientu.jpg', 1, NULL, '2020-05-18 16:20:47', '2020-05-21 20:29:59'),
(12, 'Tin khoa học', 'Tin khoa học', '<p>Tin khoa học</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'dientu2-1.jpg', 1, NULL, '2020-05-18 16:21:19', '2020-05-22 10:14:46'),
(13, 'Công nghệ điện toán đám mây', 'Công nghệ điện toán đám mây', '<p>C&ocirc;ng nghệ điện to&aacute;n đ&aacute;m m&acirc;y</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'feature1.jpg', 1, NULL, '2020-05-18 16:22:57', '2020-05-22 10:00:33'),
(14, 'Công nghệ Cloud server', 'Công nghệ Cloud server', '<p>C&ocirc;ng nghệ Cloud server&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'dientu-vienthongtientien-1.jpg', 0, NULL, '2020-05-18 16:23:58', '2020-05-18 16:23:58'),
(15, 'Công nghệ mới năm 2020', 'Công nghệ mới năm 2020', '<p>C&ocirc;ng nghệ mới năm 2020</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'dientu-vienthongtientien2-1.jpg', 0, NULL, '2020-05-18 16:24:42', '2020-05-18 16:24:42'),
(16, 'Giới thiệu chung về bộ môn công nghệ phần mềm', 'Giới thiệu chung về bộ môn công nghệ phần mềm', '<p>Giới thiệu chung về bộ m&ocirc;n c&ocirc;ng nghệ phần mềm</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, NULL, 3, NULL, '2020-05-22 08:55:44', '2020-05-23 09:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(19, 16, 7),
(20, 1, 2),
(21, 1, 1),
(22, 7, 8),
(23, 3, 6),
(24, 12, 5),
(25, 12, 4),
(26, 3, 3),
(27, 16, 9),
(28, 5, 10),
(29, 1, 11),
(30, 1, 12),
(31, 3, 13),
(32, 3, 14),
(33, 12, 15),
(34, 18, 16);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `author_id` int(11) NOT NULL,
  `khoa_id` int(11) DEFAULT NULL,
  `chucvu` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `description`, `content`, `author_id`, `khoa_id`, `chucvu`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Văn A', 'Nguyễn Văn A', '<p>Họ t&ecirc;n :&nbsp;Nguyễn Văn A</p>\r\n\r\n<p>Chức vụ : Trưởng khoa</p>', 1, 7, 'Trưởng khoa', 'User', 0, 'profile/team1.jpg', 0, NULL, 'published', '2020-05-16 04:50:35', '2020-05-18 14:46:23'),
(3, 'Hoàng Thị C', 'Hoàng Thị C', '<p>Họ t&ecirc;n :&nbsp;Ho&agrave;ng Thị C</p>\r\n\r\n<p>Chức vuj: Giảng vi&ecirc;n</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -22px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 1, 7, NULL, 'User', 0, 'profile/team1.jpg', 0, NULL, 'published', '2020-05-16 04:59:41', '2020-05-18 14:47:12'),
(4, 'Đinh Quốc H', 'Đinh Quốc H', '<p>Họ t&ecirc;n :&nbsp;Đinh Quốc H</p>\r\n\r\n<p>Chức vụ: Ph&oacute; khoa</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -41px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 1, 7, 'Chức vụ 1', 'User', 0, 'profile/team1.jpg', 0, NULL, 'published', '2020-05-16 08:31:03', '2020-05-18 14:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 3, 1, 'image', NULL, '76647903-2453090551630942-2197624049696243712-o.jpg', '2020-05-14 07:36:19', '2020-05-14 07:36:19'),
(2, 'Botble\\Blog\\Models\\Post', 4, 1, 'is_featured', '0', '1', '2020-05-15 01:39:05', '2020-05-15 01:39:05'),
(3, 'Botble\\Blog\\Models\\Post', 1, 1, 'is_featured', '0', '1', '2020-05-15 01:39:10', '2020-05-15 01:39:10'),
(4, 'Botble\\Blog\\Models\\Post', 4, 1, 'is_featured', '1', '0', '2020-05-15 01:40:47', '2020-05-15 01:40:47'),
(5, 'Botble\\Blog\\Models\\Post', 4, 1, 'is_featured', '0', '1', '2020-05-15 01:44:42', '2020-05-15 01:44:42'),
(6, 'Botble\\Blog\\Models\\Post', 1, 1, 'name', 'klasdjfghlkasjdf', 'Tin tuc 1', '2020-05-15 03:03:52', '2020-05-15 03:03:52'),
(7, 'Botble\\Blog\\Models\\Post', 1, 1, 'description', 'agafdsgsdfdsafasd', 'Tin tuc 1', '2020-05-15 03:03:52', '2020-05-15 03:03:52'),
(8, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', NULL, 'dientu-vienthongtientien2.jpg', '2020-05-15 03:03:52', '2020-05-15 03:03:52'),
(9, 'Botble\\Blog\\Models\\Post', 2, 1, 'image', NULL, 'dientu-vienthongtientien.jpg', '2020-05-15 03:21:27', '2020-05-15 03:21:27'),
(10, 'Botble\\Blog\\Models\\Post', 2, 1, 'image', 'dientu-vienthongtientien.jpg', 'dientu-vienthongtientien2-1.jpg', '2020-05-18 14:57:58', '2020-05-18 14:57:58'),
(11, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', 'dientu-vienthongtientien2.jpg', 'feature1.jpg', '2020-05-18 14:58:36', '2020-05-18 14:58:36'),
(12, 'Botble\\Blog\\Models\\Post', 6, 1, 'image', 'event1.jpg', 'ysinh.jpg', '2020-05-18 15:01:43', '2020-05-18 15:01:43'),
(13, 'Botble\\Blog\\Models\\Post', 5, 1, 'image', 'blog1.jpg', 'dientu.jpg', '2020-05-18 15:02:29', '2020-05-18 15:02:29'),
(14, 'Botble\\Blog\\Models\\Post', 4, 1, 'image', '51569.jpg', 'hethongnhung2.jpg', '2020-05-18 15:02:59', '2020-05-18 15:02:59'),
(15, 'Botble\\Blog\\Models\\Post', 3, 1, 'image', '76647903-2453090551630942-2197624049696243712-o.jpg', 'bg1.jpg', '2020-05-18 15:03:22', '2020-05-18 15:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"core.appearance\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"widgets.index\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"slidebar.index\":true,\"slidebar.create\":true,\"slidebar.edit\":true,\"slidebar.destroy\":true,\"core.system\":true,\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"tuyensinh.index\":true,\"tuyensinh.create\":true,\"tuyensinh.edit\":true,\"tuyensinh.destroy\":true}', 'Có đầy đủ quyền trong hệ thống', 0, 1, 1, '2020-05-13 03:40:16', '2020-05-20 16:48:24'),
(2, 'member', 'Member', '{\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true}', 'Tài khoản mặc đinh', 1, 1, 1, '2020-05-13 03:40:50', '2020-05-15 08:25:37'),
(3, 'tin-tuc', 'Quản lý bài viết', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true}', 'Quản lý bài viết', 0, 1, 1, '2020-05-13 03:49:19', '2020-05-15 08:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(7, 9, 1, '2020-05-21 11:47:32', '2020-05-21 11:47:32'),
(9, 11, 3, '2020-05-23 02:38:21', '2020-05-23 02:38:21'),
(10, 12, 3, '2020-05-23 03:00:56', '2020-05-23 03:00:56'),
(11, 13, 3, '2020-05-23 03:02:02', '2020-05-23 03:02:02'),
(12, 14, 3, '2020-05-23 03:03:46', '2020-05-23 03:03:46'),
(13, 15, 3, '2020-05-23 03:04:32', '2020-05-23 03:04:32'),
(14, 16, 3, '2020-05-23 03:05:15', '2020-05-23 03:05:15'),
(15, 17, 3, '2020-05-23 03:05:55', '2020-05-23 03:05:55'),
(16, 18, 3, '2020-05-23 03:08:06', '2020-05-23 03:08:06'),
(17, 19, 3, '2020-05-23 03:09:34', '2020-05-23 03:09:34'),
(18, 20, 3, '2020-05-23 03:14:08', '2020-05-23 03:14:08'),
(19, 21, 3, '2020-05-23 03:15:29', '2020-05-23 03:15:29'),
(20, 22, 3, '2020-05-23 03:17:02', '2020-05-23 03:17:02'),
(21, 23, 3, '2020-05-23 03:17:38', '2020-05-23 03:17:38'),
(22, 24, 3, '2020-05-23 03:20:19', '2020-05-23 03:20:19'),
(23, 25, 3, '2020-05-23 03:21:09', '2020-05-23 03:21:09'),
(24, 26, 3, '2020-05-23 03:22:22', '2020-05-23 03:22:22'),
(25, 27, 3, '2020-05-23 03:23:02', '2020-05-23 03:23:02'),
(26, 28, 3, '2020-05-23 03:24:56', '2020-05-23 03:24:56'),
(27, 29, 3, '2020-05-23 03:26:42', '2020-05-23 03:26:42'),
(28, 30, 3, '2020-05-23 03:27:45', '2020-05-23 03:27:45'),
(29, 31, 3, '2020-05-23 03:28:52', '2020-05-23 03:28:52'),
(30, 32, 3, '2020-05-23 03:29:44', '2020-05-23 03:29:44'),
(31, 33, 3, '2020-05-23 03:30:25', '2020-05-23 03:30:25'),
(32, 34, 3, '2020-05-23 03:32:09', '2020-05-23 03:32:09'),
(33, 35, 3, '2020-05-23 03:33:48', '2020-05-23 03:33:48'),
(34, 36, 3, '2020-05-23 03:34:43', '2020-05-23 03:34:43'),
(35, 37, 3, '2020-05-23 03:35:33', '2020-05-23 03:35:33'),
(36, 38, 3, '2020-05-23 03:36:11', '2020-05-23 03:36:11'),
(37, 39, 3, '2020-05-23 03:36:51', '2020-05-23 03:36:51'),
(38, 40, 3, '2020-05-23 03:37:34', '2020-05-23 03:37:34'),
(39, 41, 3, '2020-05-23 03:38:17', '2020-05-23 03:38:17'),
(40, 42, 3, '2020-05-23 03:39:21', '2020-05-23 03:39:21'),
(41, 43, 3, '2020-05-23 03:40:03', '2020-05-23 03:40:03'),
(42, 44, 3, '2020-05-23 03:41:17', '2020-05-23 03:41:17'),
(43, 45, 3, '2020-05-23 03:43:10', '2020-05-23 03:43:10'),
(44, 46, 3, '2020-05-23 03:58:59', '2020-05-23 03:58:59'),
(45, 47, 3, '2020-05-23 03:59:55', '2020-05-23 03:59:55'),
(46, 48, 3, '2020-05-23 04:00:49', '2020-05-23 04:00:49'),
(47, 49, 3, '2020-05-23 04:01:26', '2020-05-23 04:01:26'),
(48, 50, 3, '2020-05-23 04:02:51', '2020-05-23 04:02:51'),
(49, 51, 3, '2020-05-23 04:03:44', '2020-05-23 04:03:44'),
(50, 52, 3, '2020-05-23 04:04:21', '2020-05-23 04:04:21'),
(51, 53, 3, '2020-05-23 04:05:09', '2020-05-23 04:05:09'),
(52, 54, 3, '2020-05-23 04:05:36', '2020-05-23 04:05:36'),
(53, 55, 3, '2020-05-23 04:06:09', '2020-05-23 04:06:09'),
(54, 56, 3, '2020-05-23 04:07:01', '2020-05-23 04:07:01'),
(55, 57, 3, '2020-05-23 04:09:58', '2020-05-23 04:09:58'),
(56, 58, 3, '2020-05-23 04:10:37', '2020-05-23 04:10:37'),
(57, 59, 3, '2020-05-23 04:12:22', '2020-05-23 04:12:22'),
(58, 60, 3, '2020-05-23 04:13:11', '2020-05-23 04:13:11'),
(59, 61, 3, '2020-05-23 04:13:52', '2020-05-23 04:13:52'),
(60, 62, 3, '2020-05-23 04:14:23', '2020-05-23 04:14:23'),
(61, 63, 3, '2020-05-23 04:14:55', '2020-05-23 04:14:55'),
(62, 64, 1, '2020-05-24 15:46:25', '2020-05-24 15:46:25'),
(63, 65, 1, '2020-05-24 15:48:38', '2020-05-24 15:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(5, 'theme', 'hust', NULL, NULL),
(10, 'activated_plugins', '[\"blog\",\"language\",\"slidebar\",\"profile\",\"tuyensinh\",\"social-login\"]', NULL, NULL),
(19, 'media_driver', 'public', NULL, NULL),
(31, 'time_zone', 'UTC', NULL, NULL),
(32, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(33, 'admin_logo', 'logo.png', NULL, NULL),
(34, 'admin_favicon', 'logo/favicon.png', NULL, NULL),
(35, 'admin_title', 'Botble CMS', NULL, NULL),
(36, 'rich_editor', 'ckeditor', NULL, NULL),
(37, 'default_admin_theme', 'default', NULL, NULL),
(38, 'enable_change_admin_theme', '0', NULL, NULL),
(39, 'enable_multi_language_in_admin', '1', NULL, NULL),
(40, 'enable_cache', '0', NULL, NULL),
(41, 'cache_time', '10', NULL, NULL),
(42, 'cache_admin_menu_enable', '0', NULL, NULL),
(43, 'optimize_page_speed_enable', '0', NULL, NULL),
(46, 'cache_time_site_map', '3600', NULL, NULL),
(47, 'show_admin_bar', '0', NULL, NULL),
(50, 'theme-hust-show_site_name', '0', NULL, NULL),
(53, 'theme-hust-copyright', '© 2019 Botble Technologies. All right reserved.', NULL, NULL),
(54, 'theme-hust-logo', 'logo/logo.png', NULL, NULL),
(58, 'theme-hust-phone', '033333333', NULL, NULL),
(62, 'theme-hust-email', 'hust@edu.vn', NULL, NULL),
(63, 'theme-hust-address', 'TP Hà Nội', NULL, NULL),
(64, 'theme-hust-ctdt', '120', NULL, NULL),
(65, 'theme-hust-sinhvien', '30000', NULL, NULL),
(66, 'theme-hust-ctkh', '215', NULL, NULL),
(67, 'theme-hust-doitac', '11', NULL, NULL),
(68, 'language_hide_default', '1', NULL, NULL),
(69, 'language_display', 'all', NULL, NULL),
(70, 'language_switcher_display', 'dropdown', NULL, NULL),
(71, 'language_hide_languages', '[]', NULL, NULL),
(72, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(78, 'membership_authorization_at', '2020-05-18 07:19:42', NULL, NULL),
(86, 'theme-hust-favicon', 'logo/favicon.png', NULL, NULL),
(91, 'social_login_enable', '1', NULL, NULL),
(92, 'social_login_facebook_enable', '0', NULL, NULL),
(93, 'social_login_facebook_app_id', '351259692506489', NULL, NULL),
(94, 'social_login_facebook_app_secret', '105ec0bbb770380dccd8aa50ff6fb3d4', NULL, NULL),
(95, 'social_login_google_enable', '1', NULL, NULL),
(96, 'social_login_google_app_id', '831642331279-7ru1ci14d3vn4aecqnvn39dt0ttk1uje.apps.googleusercontent.com', NULL, NULL),
(97, 'social_login_google_app_secret', 'lU8Yw1thGQYF4D-pwdgFkHWm', NULL, NULL),
(98, 'social_login_github_enable', '0', NULL, NULL),
(99, 'theme-hust-site_title', 'HUST', NULL, NULL),
(100, 'theme-hust-seo_title', NULL, NULL, NULL),
(101, 'theme-hust-seo_description', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slidebars`
--

CREATE TABLE `slidebars` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slidebars`
--

INSERT INTO `slidebars` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Slide 1', 'slider-1-3.jpg', 'published', '2020-05-16 07:01:59', '2020-05-18 14:29:54'),
(3, 'Slide 2', 'slider-2-2.jpg', 'published', '2020-05-16 07:02:14', '2020-05-18 14:30:06'),
(4, 'Slide 3', 'slider-3-2.jpg', 'published', '2020-05-16 07:02:28', '2020-05-18 14:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'tin-tuc', 1, 'Botble\\Blog\\Models\\Category', '', '2020-05-13 03:46:56', '2020-05-13 03:46:56'),
(3, 'khoa-hoc', 3, 'Botble\\Blog\\Models\\Category', '', '2020-05-13 04:32:25', '2020-05-13 04:32:25'),
(4, 'klasdjfghlkasjdf', 1, 'Botble\\Blog\\Models\\Post', '', '2020-05-13 06:11:06', '2020-05-13 06:11:06'),
(5, 'tin-tuc-1', 2, 'Botble\\Blog\\Models\\Post', '', '2020-05-13 07:53:07', '2020-05-13 07:53:07'),
(6, 'khoa-hoc-1', 3, 'Botble\\Blog\\Models\\Post', '', '2020-05-13 07:53:24', '2020-05-13 07:53:24'),
(7, 'lien-he', 1, 'Botble\\Page\\Models\\Page', '', '2020-05-14 07:34:06', '2020-05-14 07:34:06'),
(8, 'gioi-thieu', 4, 'Botble\\Blog\\Models\\Category', '', '2020-05-14 09:23:43', '2020-05-14 09:23:43'),
(9, 'dao-tao', 5, 'Botble\\Blog\\Models\\Category', '', '2020-05-14 09:24:06', '2020-05-14 09:24:06'),
(10, 'tuyen-sinh', 6, 'Botble\\Blog\\Models\\Category', '', '2020-05-14 09:24:34', '2020-05-14 09:24:34'),
(11, 'nghien-cuu', 7, 'Botble\\Blog\\Models\\Category', '', '2020-05-14 09:25:14', '2020-05-14 09:25:14'),
(16, 'thong-tin-chung', 4, 'Botble\\Blog\\Models\\Post', '', '2020-05-14 09:30:48', '2020-05-14 09:30:48'),
(21, 'thong-tin-noi-bat', 12, 'Botble\\Blog\\Models\\Category', '', '2020-05-14 09:36:01', '2020-05-14 09:36:01'),
(22, 'thong-tin-noi-bat-2', 5, 'Botble\\Blog\\Models\\Post', '', '2020-05-15 02:41:40', '2020-05-15 02:41:40'),
(23, 'de-tai-khoa-hoc', 6, 'Botble\\Blog\\Models\\Post', '', '2020-05-15 03:23:14', '2020-05-15 03:23:14'),
(24, 'thong-tin-chung-1', 2, 'Botble\\Page\\Models\\Page', '', '2020-05-15 03:38:52', '2020-05-15 03:38:52'),
(25, 'tam-nhin-su-menh', 3, 'Botble\\Page\\Models\\Page', '', '2020-05-15 03:39:39', '2020-05-15 03:39:39'),
(26, 'co-so-vat-chat', 4, 'Botble\\Page\\Models\\Page', '', '2020-05-15 03:40:20', '2020-05-15 03:40:20'),
(27, 'so-do-to-chuc', 5, 'Botble\\Page\\Models\\Page', '', '2020-05-15 03:40:48', '2020-05-15 03:40:48'),
(28, 'sinh-vien-hien-tai', 13, 'Botble\\Blog\\Models\\Category', '', '2020-05-15 03:45:25', '2020-05-15 03:45:25'),
(29, 'sinh-vien-tuong-lai', 14, 'Botble\\Blog\\Models\\Category', '', '2020-05-15 03:46:00', '2020-05-15 03:46:00'),
(30, 'can-bo', 15, 'Botble\\Blog\\Models\\Category', '', '2020-05-15 03:46:16', '2020-05-15 03:46:16'),
(31, 'so', 16, 'Botble\\Blog\\Models\\Category', '', '2020-05-15 04:10:38', '2020-05-15 04:10:38'),
(32, 'bo-mon-he-thong-vien-thong', 7, 'Botble\\Blog\\Models\\Post', '', '2020-05-15 04:11:58', '2020-05-15 04:11:58'),
(36, 'nguyen-van-a', 2, 'Botble\\Profile\\Models\\Profile', '', '2020-05-16 04:50:35', '2020-05-18 14:46:23'),
(37, 'hoang-thi-c', 3, 'Botble\\Profile\\Models\\Profile', '', '2020-05-16 04:59:41', '2020-05-18 14:47:12'),
(38, '1589788090', 4, 'Botble\\Profile\\Models\\Profile', '', '2020-05-16 08:31:03', '2020-05-18 14:48:10'),
(39, 'de-tai-1', 8, 'Botble\\Blog\\Models\\Post', '', '2020-05-18 14:59:40', '2020-05-18 14:59:40'),
(40, 'bo-mon-he-thong-vien-thong-1', 9, 'Botble\\Blog\\Models\\Post', '', '2020-05-18 15:07:33', '2020-05-18 15:07:33'),
(41, 'bai-viet-1', 10, 'Botble\\Blog\\Models\\Post', '', '2020-05-18 15:09:53', '2020-05-18 15:09:53'),
(42, 'tin-cong-nghe', 11, 'Botble\\Blog\\Models\\Post', '', '2020-05-18 16:20:47', '2020-05-18 16:20:47'),
(43, 'tin-khoa-hoc', 12, 'Botble\\Blog\\Models\\Post', '', '2020-05-18 16:21:19', '2020-05-18 16:21:19'),
(44, 'cong-nghe-dien-toan-dam-may', 13, 'Botble\\Blog\\Models\\Post', '', '2020-05-18 16:22:57', '2020-05-18 16:22:57'),
(45, 'cong-nghe-cloud-server', 14, 'Botble\\Blog\\Models\\Post', '', '2020-05-18 16:23:58', '2020-05-18 16:23:58'),
(46, 'cong-nghe-moi-nam-2020', 15, 'Botble\\Blog\\Models\\Post', '', '2020-05-18 16:24:42', '2020-05-18 16:24:42'),
(47, 'bo-mon', 17, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 08:20:22', '2020-05-22 08:20:22'),
(48, 'gioi-thieu-chung', 6, 'Botble\\Page\\Models\\Page', '', '2020-05-22 08:22:21', '2020-05-22 08:22:21'),
(49, 'co-cau-to-chuc', 7, 'Botble\\Page\\Models\\Page', '', '2020-05-22 08:23:40', '2020-05-22 08:23:40'),
(52, 'bo-mon-cong-nghe-phan-mem-1', 18, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 08:54:47', '2020-05-22 08:54:47'),
(53, 'gioi-thieu-chung-ve-bo-mon-cong-nghe-phan-mem', 16, 'Botble\\Blog\\Models\\Post', '', '2020-05-22 08:55:44', '2020-05-22 08:55:44'),
(54, 'bo-mon-he-thong-thong-tin', 19, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:05:02', '2020-05-22 09:05:02'),
(55, 'bo-mon-khoa-hoc-may-tinh', 20, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:05:54', '2020-05-22 09:05:54'),
(56, 'bo-mon-ky-thuat-may-tinh', 21, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:07:03', '2020-05-22 09:07:03'),
(57, 'bo-mon-truyen-thong-va-mang-may-tinh', 22, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:07:49', '2020-05-22 09:07:49'),
(58, 'trung-tam', 23, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:13:21', '2020-05-22 09:13:21'),
(59, 'trung-tam-may-tinh', 24, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:13:49', '2020-05-22 09:13:49'),
(60, 'trung-tam-doi-moi-sang-tao', 25, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:15:38', '2020-05-22 09:15:38'),
(61, 'trung-tam-navis', 26, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:16:02', '2020-05-22 09:16:02'),
(62, 'trung-tam-cyber-security', 27, 'Botble\\Blog\\Models\\Category', '', '2020-05-22 09:17:01', '2020-05-22 09:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tuyensinhs`
--

CREATE TABLE `tuyensinhs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `loai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tuyensinhs`
--

INSERT INTO `tuyensinhs` (`id`, `name`, `description`, `content`, `loai`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner', 'banner', '<p>banner</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 38px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'banner', 'banner/slider-3.jpg', 'published', '2020-05-18 02:38:04', '2020-05-18 14:52:42'),
(2, 'Hệ thống thông minh & IOT', 'Hệ thống thông minh & IOT', '<p><span style=\"font-size:12px;\"><img alt=\"\" src=\"http://localhost/botble-4-0//storage/dientu-vienthongtientien.jpg\" style=\"width: 1600px; height: 1138px;\" /></span></p>', 'httm', NULL, 'published', '2020-05-18 02:55:47', '2020-05-18 02:56:02'),
(3, 'Hệ thống điện tử thông minh & IOT', 'Hệ thống điện tử thông minh & IOT', '<p><img alt=\"\" src=\"http://localhost/botble-4-0//storage/dientu2.jpg\" style=\"width: 1600px; height: 1137px;\" /></p>', 'htdttm', NULL, 'published', '2020-05-18 03:06:10', '2020-05-18 03:06:40'),
(4, 'Hệ thống kỹ thuật điện tử viễn thông', 'Hệ thống kỹ thuật điện tử viễn thông', '<pre>\r\n<img alt=\"\" src=\"http://hust.htc-it.team//storage/ysinh2.jpg\" style=\"width: 1600px; height: 1138px;\" />\r\n</pre>', 'htktdtvt', NULL, 'published', '2020-05-18 03:07:08', '2020-05-18 14:53:23'),
(5, 'Hệ thống kỹ thuật y sinh', 'Hệ thống kỹ thuật y sinh', '<pre>\r\n<img alt=\"\" src=\"http://hust.htc-it.team//storage/ysinh2.jpg\" style=\"width: 1600px; height: 1138px;\" />\r\n</pre>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -4px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'htktys', 'hethongnhung.jpg', 'published', '2020-05-18 03:08:05', '2020-05-18 14:56:04'),
(6, 'Hệ thống kỹ thuật điện tử viễn thông tiên tiến', 'Hệ thống kỹ thuật điện tử viễn thông tiên tiến', '<pre>\r\n<img alt=\"\" src=\"http://hust.htc-it.team//storage/dientu-vienthongtientien-1.jpg\" style=\"width: 1600px; height: 1138px;\" />\r\n</pre>', 'htktdtvttt', 'dientu-vienthongtientien-1.jpg', 'published', '2020-05-18 03:08:24', '2020-05-18 14:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `categories` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `categories`) VALUES
(1, 'admin@admin.com', NULL, '$2y$10$ETqhMt/UwFLbI1NI.pN0Qe9wsLpnZsL0vkrHg9qKT3q3Z1VnS3Oxa', 'vOHRBhnhkI7yLVpyzote3sCgfL7GxkqqkS2CqGqSniMelP8uJRQIQgiBTeKK', '2020-05-13 10:37:28', '2020-05-26 01:12:49', NULL, '2020-05-26 01:12:49', 'Supper', 'Admin', 'admin', NULL, 1, 1, '[\"1\",\"3\",\"4\",\"5\",\"7\",\"12\",\"13\",\"14\",\"15\",\"16\"]'),
(9, 'hoangkien151092@gmail.com', NULL, '$2y$10$/eVs5FD4uO8sQgOVSv7rZeG9sPbSJjCO6vvz7RL/1rshaVJkQfAxK', 'XWIq6l12Zh8nHWLy9UnnxkmaqGTWaEmOJqJjlMhZlQ4x8IGAwbM9v6qkjk2S', '2020-05-21 11:47:32', '2020-05-23 02:34:30', '{\"core.appearance\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"widgets.index\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"slidebar.index\":true,\"slidebar.create\":true,\"slidebar.edit\":true,\"slidebar.destroy\":true,\"core.system\":true,\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"tuyensinh.index\":true,\"tuyensinh.create\":true,\"tuyensinh.edit\":true,\"tuyensinh.destroy\":true,\"superuser\":true,\"manage_supers\":true}', NULL, 'Hoàng', 'Kiên', 'hoangkien151092', NULL, 1, 1, '[\"1\",\"3\",\"4\",\"5\",\"7\",\"12\",\"13\",\"14\",\"15\",\"16\"]'),
(11, 'minhnd@set.hust.edu.vn', NULL, '$2y$10$J25i0PmRcFTKVqkgvCh3eOgRv2JJov00XcSsyHpCpav3VChv/vb12', NULL, '2020-05-23 02:38:21', '2020-05-23 09:37:57', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":true,\"manage_supers\":true}', '2020-05-23 02:39:30', 'Nguyễn Minh', 'Đức', 'minhnd', NULL, 1, 1, '[\"1\",\"3\",\"4\",\"5\",\"7\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\"]'),
(12, 'thanh.nguyenhuu@hust.edu.vn', NULL, '$2y$10$LfcxHvjKykvk1HSCtjAipex40DmUSGUhKy76juEmtseKInxwPg66O', NULL, '2020-05-23 03:00:56', '2020-05-23 03:00:56', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Hữu', 'Thanh', 'thanh.nguyenhuu', NULL, 0, 0, NULL),
(13, 'dung.nguyenviet1@hust.edu.vn', NULL, '$2y$10$Xa3hJYROrZrV8crjXo2JAODgM4JMFD9Fon9s4ku95NXVRuINObxLS', NULL, '2020-05-23 03:02:02', '2020-05-23 03:02:02', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Viết', 'Dũng', 'dung.nguyenviet1', NULL, 0, 0, NULL),
(14, 'ha.nguyenthai@hust.edu.vn', NULL, '$2y$10$mQa7JPsgBbNKoOmxMSQpaeQCh3AXlGtSKE0RCvhrKvCDPDZZ3go3e', NULL, '2020-05-23 03:03:46', '2020-05-23 03:03:46', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Thái', 'Hà', 'ha.nguyenthai', NULL, 0, 0, NULL),
(15, 'hai.vuduy@hust.edu.vn', NULL, '$2y$10$1AcyUZbKwKEGEohL9pHeB.P4bbPeiqu6/lqEuD9I0H2pBIYO1I0xS', NULL, '2020-05-23 03:04:32', '2020-05-23 03:04:32', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Vũ Duy', 'Hải', 'hai.vuduy', NULL, 0, 0, NULL),
(16, 'huan.daoquang@hust.edu.vn', NULL, '$2y$10$sQzOY7mN/.qcjyvbG.Cqkedw2/vjn612blG40eu0S7J2QFVZWRXZy', NULL, '2020-05-23 03:05:15', '2020-05-23 03:05:15', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Đào Quang', 'Huấn', 'huan.daoquang', NULL, 0, 0, NULL),
(17, 'hung.phammanh@hust.edu.vn', NULL, '$2y$10$CNJJHm.Ofri6UPlqqwpbOemzYaBMJtBRWboaH1SGIZuF5UgYTHvly', NULL, '2020-05-23 03:05:55', '2020-05-23 03:05:55', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Phan Mạnh', 'Hùng', 'hung.phammanh', NULL, 0, 0, NULL),
(18, 'hung.daoviet@hust.edu.vn', NULL, '$2y$10$gGXL/l7sfRFG3fSG3za9mOhXq5Enyjl0Uaqyi8PDogV0/ZoaUD3NS', NULL, '2020-05-23 03:08:06', '2020-05-23 03:08:06', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Đào Viết', 'Hùng', 'hung.daoviet', NULL, 0, 0, NULL),
(19, 'huy.hoangquang@hust.edu.vn', NULL, '$2y$10$utuwx9pN84yWzx8mQZftI.3lcryG7v5PFr9ZeQuY6Yn4rHY57vxJm', NULL, '2020-05-23 03:09:34', '2020-05-23 03:09:34', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Hoàng Quang', 'Huy', 'huy.hoangquang', NULL, 0, 0, NULL),
(20, 'kien.nguyenphan@hust.edu.vn', NULL, '$2y$10$WiALCYPZ2iPQdBnL9mdPcu8EvGz4t62oGXgp3u0YBW0kgHvODL1yW', NULL, '2020-05-23 03:14:08', '2020-05-23 03:14:08', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Phan', 'Kiên', 'kien.nguyenphan', NULL, 0, 0, NULL),
(21, 'luong.duongtrong@hust.edu.vn', NULL, '$2y$10$Hcl57RV5Iwv1icw7fFOByezRLBK9VpY87O4ipaS.Ga.SEiTRcERsW', NULL, '2020-05-23 03:15:29', '2020-05-23 03:15:29', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Lương Trọng', 'Lương', 'luong.duongtrong', NULL, 0, 0, NULL),
(22, 'ngoc.phamphuc@hust.edu.vn', NULL, '$2y$10$c6yR3yDE9EATfBxX1ZnwnOLuFaJ0s/J1RHhON0qtH.ZeXwpw4lM9m', NULL, '2020-05-23 03:17:02', '2020-05-23 03:17:02', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Phan Phúc', 'Ngọc', 'ngoc.phamphuc', NULL, 0, 0, NULL),
(23, 'nhung.dinhthi@hust.edu.vn', NULL, '$2y$10$dt.CFmvBLmqMnQ2zKj789uYdwXbYj5qvBag1mNiA66fDSnomjgB8K', NULL, '2020-05-23 03:17:38', '2020-05-23 03:17:38', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Đinh Thị', 'Nhung', 'nhung.dinhthi', NULL, 0, 0, NULL),
(24, 'thuan.nguyenduc@hust.edu.vn', NULL, '$2y$10$CExSz.ws34TN/tANU6Wws.xPxqCIOwOE7/h7/WIqLAE5SiQHaSjcm', NULL, '2020-05-23 03:20:19', '2020-05-23 03:20:19', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Đức', 'Thuận', 'thuan.nguyenduc', NULL, 0, 0, NULL),
(25, 'van.nguyenthu@hust.edu.vn', NULL, '$2y$10$89nsdfUrxHue8f9ahCL2RengsxmDkBrFZog7KmAX/huwl/xgTdv2i', NULL, '2020-05-23 03:21:09', '2020-05-23 03:21:09', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Thu', 'Vân', 'van.nguyenthu', NULL, 0, 0, NULL),
(26, 'vu.trananh@hust.edu.vn', NULL, '$2y$10$4LPyqKicdnZBgDGLnzrmbuQ70rGUWaDiZ19Bwv1yxKiJRxq1B02ne', NULL, '2020-05-23 03:22:22', '2020-05-23 03:22:22', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Trần Anh', 'Vũ', 'vu.trananh', NULL, 0, 0, NULL),
(27, 'duc.trinhquang@hust.edu.vn', NULL, '$2y$10$71z9769dS1ugpCbKDsEnUeGFSjp4nwXy.ho65XoYFxN1mt/JWQQHe', NULL, '2020-05-23 03:23:02', '2020-05-23 03:23:02', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Trịnh Quang', 'Đức', 'duc.trinhquang', NULL, 0, 0, NULL),
(28, 'huyen.nguyenbich@hust.edu.vn', NULL, '$2y$10$ZnPpsBjSX5f0/ah24ZTQ7u3ab//xd5dVJAqwMndH/3YXiILh4GNSS', NULL, '2020-05-23 03:24:55', '2020-05-23 03:24:56', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Bích', 'Huyền', 'huyen.nguyenbich', NULL, 0, 0, NULL),
(29, 'kiem.nguyenkhac@hust.edu.vn', NULL, '$2y$10$7IGeIkVHKRe21o4vKJP6zO4mELJDxt3kTF9o3X6.KCT8/jQF0Sr4C', NULL, '2020-05-23 03:26:42', '2020-05-23 03:26:42', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Khắc', 'Kiệm', 'kiem.nguyenkhac', NULL, 0, 0, NULL),
(30, 'quang.phuongxuan@hust.edu.vn', NULL, '$2y$10$Nain0C089hut47NnzMI3NuWLTf9.vqbXnlIA6faFq01mdyUfNPQsy', NULL, '2020-05-23 03:27:45', '2020-05-23 03:27:45', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Phương Xuân', 'Quang', 'quang.phuongxuan', NULL, 0, 0, NULL),
(31, 'thanh.hantrong@hust.edu.vn', NULL, '$2y$10$r1TD4oo8NXRbksGD6ebVgubZUzQ9qXdfgIrwJ.WqZAgKvxOSLMtDW', NULL, '2020-05-23 03:28:52', '2020-05-23 03:28:52', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Hán Trọng', 'Thanh', 'thanh.hantrong', NULL, 0, 0, NULL),
(32, 'trung.nguyenhuu@hust.edu.vn', NULL, '$2y$10$G8EyPRZm2Jh8nlxckQjnDuG.kA9QkQJsqS1cFlCU/9Q.Bcn/5Ahi.', NULL, '2020-05-23 03:29:44', '2020-05-23 03:29:44', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Hữu', 'Trung', 'trung.nguyenhuu', NULL, 0, 0, NULL),
(33, 'trung.haduyen@hust.edu.vn', NULL, '$2y$10$slRjGlsP9WAZR7AZbfgQUOjtOKVgERvPS6jY5xKUB2tddgvDsUAGC', NULL, '2020-05-23 03:30:25', '2020-05-23 03:30:25', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Hà Duyên', 'Trung', 'trung.haduyen', NULL, 0, 0, NULL),
(34, 'tuan.dotrong@hust.edu.vn', NULL, '$2y$10$Hui3IG3ledMtiBa9B07rZ.FcuswH5k1srUxg/lMb.QCJ6V6/KKY8O', NULL, '2020-05-23 03:32:09', '2020-05-23 03:32:09', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Đỗ Trọng', 'Tuấn', 'tuan.dotrong', NULL, 0, 0, NULL),
(35, 'dung.nguyentrung1@hust.edu.vn', NULL, '$2y$10$vG7laXMfecibPmKvIvWnduUY0arJZp6IBZAVXiLSs1ndGRmyrpRpm', NULL, '2020-05-23 03:33:48', '2020-05-23 03:33:48', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Trung', 'Dũng', 'dung.nguyentrung1', NULL, 0, 0, NULL),
(36, 'binh.nguyenthanh2@hust.edu.vn', NULL, '$2y$10$hNe033TpyJz2.hanLUkJH.T9KqShbSFysG1PSFCQLgopVQnS6FNja', NULL, '2020-05-23 03:34:42', '2020-05-23 03:34:43', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Thanh', 'Bình', 'binh.nguyenthanh2', NULL, 0, 0, NULL),
(37, 'cuong.vole@hust.edu.vn', NULL, '$2y$10$aEXHQ2sjS7nFmGsaYdfycO7kYJQ.XL3Y4rh4ikyu3Uw7LEGAL5Iue', NULL, '2020-05-23 03:35:33', '2020-05-23 03:35:33', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Võ Lê', 'Cường', 'cuong.vole', NULL, 0, 0, NULL),
(38, 'dung.nguyenhoang@hust.edu.vn', NULL, '$2y$10$TKZj7UmDM28AVnP0a5726.CcdJIA.ZUjEipGfMSvsXOSfu88jRuqK', NULL, '2020-05-23 03:36:11', '2020-05-23 03:36:11', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Hoàng', 'Dũng', 'dung.nguyenhoang', NULL, 0, 0, NULL),
(39, 'dung.le@hust.edu.vn', NULL, '$2y$10$mrfrXzM4OofpJ1UirkrUT.bjlEkXlzqru9jGWYpqSFt8pEvEESEza', NULL, '2020-05-23 03:36:51', '2020-05-23 03:36:51', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Lê', 'Dũng', 'dung.le', NULL, 0, 0, NULL),
(40, 'dung.hanhuy@hust.edu.vn', NULL, '$2y$10$knVps0j46wUeqvARDMW3VekvNXX7x2avne5zaoi7wt8IpseKGd4Cq', NULL, '2020-05-23 03:37:34', '2020-05-23 03:37:34', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Hàn Huy', 'Dũng', 'dung.hanhuy', NULL, 0, 0, NULL),
(41, 'dzung.nguyentien@hust.edu.vn', NULL, '$2y$10$YuWMWcYQ2fWKOR18uSf.zOmKHXbDKx55dDJx0K0mDVbpte3A78Nsm', NULL, '2020-05-23 03:38:17', '2020-05-23 03:38:17', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Tiến', 'Dũng', 'dzung.nguyentien', NULL, 0, 0, NULL),
(42, 'hainguyen.x268@gmail.com', NULL, '$2y$10$DnbGQ9r.H3ABckJ4fpvYbONq19DvzUgULySFM3fjY/hoGGrNNohDm', NULL, '2020-05-23 03:39:21', '2020-05-23 03:39:21', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn', 'Hải', 'hainguyen.x268', NULL, 0, 0, NULL),
(43, 'hoang.nguyenhuy@hust.edu.vn', NULL, '$2y$10$lWlk4UFeyq3tZrhiZoIyPuozrwSWllP1VCETsxW0zmXt3J.tyrg2G', NULL, '2020-05-23 03:40:03', '2020-05-23 03:40:03', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Huy', 'Hoàng', 'hoang.nguyenhuy', NULL, 0, 0, NULL),
(44, 'hue.tathikim@hust.edu.vn', NULL, '$2y$10$vgmYbPfntVv1lWjGqFUGaejILfHtDL6Cg0uX8Ijcb8ANubHqsltPm', NULL, '2020-05-23 03:41:16', '2020-05-23 03:41:17', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Tạ Thị', 'Kim Huệ', 'hue.tathikim', NULL, 0, 0, NULL),
(45, 'khang.nguyenvan1@hust.edu.vn', NULL, '$2y$10$wOLxiGIzZsV0G5vkxJcr4ugvj46I2lP/.g8SqJQDeU7QtiAqvCj0G', NULL, '2020-05-23 03:43:10', '2020-05-23 03:43:10', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Văn', 'Khanh', 'khang.nguyenvan1', NULL, 0, 0, NULL),
(46, 'loan.phamnguyenthanh@hust.edu.vn', NULL, '$2y$10$Fp37mUP6A6WGJcbSjCCypOJtKBF8GjOQgr7zmDBuCN6xcK.35Mg3C', NULL, '2020-05-23 03:58:59', '2020-05-23 03:58:59', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Phạm Nguyễn', 'Thanh Loan', 'loan.phamnguyenthanh', NULL, 0, 0, NULL),
(47, 'minh.nguyenquang@hust.edu.vn', NULL, '$2y$10$sp7wjntsV/2tQXTvOLffluaj/auGfQ1x8ZMjkDyFSUg564fIg8pF2', NULL, '2020-05-23 03:59:55', '2020-05-23 03:59:55', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Quang', 'Minh', 'minh.nguyenquang', NULL, 0, 0, NULL),
(48, 'nhi.vuonglan@hust.edu.vn', NULL, '$2y$10$sNbo5H.1UPtO1UDd3KqAw.O5iEWuq5PnQclNgH5cAnexqP16nvMm.', NULL, '2020-05-23 04:00:49', '2020-05-23 04:00:49', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Vương Lan', 'Nhi', 'nhi.vuonglan', NULL, 0, 0, NULL),
(49, 'thang.hoangmanh@hust.edu.vn', NULL, '$2y$10$ViPFpIBDA8bJuZPwsErzn.Vfm8DBihfYxa9LvE1YqpmvnxUbyjKqW', NULL, '2020-05-23 04:01:26', '2020-05-23 04:01:26', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Hoàng Mạnh', 'Thắng', 'thang.hoangmanh', NULL, 0, 0, NULL),
(50, 'thoa.nguyenthikim@hust.edu.vn', NULL, '$2y$10$ztsXSf5b5HKZ7s.XqLnvl.ydaz1HnFaBEFIpA0OInbzfZC3rPKDbm', NULL, '2020-05-23 04:02:51', '2020-05-23 04:02:51', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Thị', 'Kim Thoa', 'thoa.nguyenthikim', NULL, 0, 0, NULL),
(51, 'tinh.phamdoan@hust.edu.vn', NULL, '$2y$10$omsJ8opnjOf.X8jD2NIQKO.hVFOraqhF5FXTBzNpE5oHsAAdS8g0G', NULL, '2020-05-23 04:03:44', '2020-05-23 04:03:44', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Phạm Doãn', 'Tỉnh', 'tinh.phamdoan', NULL, 0, 0, NULL),
(52, 'tung.vusong@hust.edu.vn', NULL, '$2y$10$1EdgPKI.Mbr7b74nwm6ZROh/7j13oNDmzhQ0ubPFZCnNOdLjDZhgW', NULL, '2020-05-23 04:04:21', '2020-05-23 04:04:21', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Vũ Song', 'Tùng', 'tung.vusong', NULL, 0, 0, NULL),
(53, 'duc.ngovu@hust.edu.vn', NULL, '$2y$10$wozyZBQoIyHpPToLspacH.hSjCVwg1HJfP6m2Jw9cbHjSERPwVfmm', NULL, '2020-05-23 04:05:09', '2020-05-23 04:05:09', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Ngô Vũ', 'Đức', 'duc.ngovu', NULL, 0, 0, NULL),
(54, 'anh.nguyenhong@hust.edu.vn', NULL, '$2y$10$6Hm0OsAo1YXZE/oT0Z6eKO1sp2q5SpJvT1o52hmQ/mNLpia.YW.wq', NULL, '2020-05-23 04:05:36', '2020-05-23 04:05:36', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Hồng', 'Anh', 'anh.nguyenhong', NULL, 0, 0, NULL),
(55, 'chi.hoangphuong@hust.edu.vn', NULL, '$2y$10$qUI.ckJ6gfC8xKfc/xtDg.7o1WCjzARH5OR4squS9co.RY/nzqVuW', NULL, '2020-05-23 04:06:09', '2020-05-23 04:06:09', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Hoàng Phương', 'Chi', 'chi.hoangphuong', NULL, 0, 0, NULL),
(56, 'cong.phamthanh@hust.edu.vn', NULL, '$2y$10$B3fiOhVk3715CKVuJmc9a.c9OdTF3xLbt19JlnBI3JnJpyVvxBv6a', NULL, '2020-05-23 04:07:01', '2020-05-23 04:07:01', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Phan Thành', 'Công', 'cong.phamthanh', NULL, 0, 0, NULL),
(57, 'ha.phungthikieu@hust.edu.vn', NULL, '$2y$10$bhYi4bwMJUfJVb3IJ2uktOJtWFHPRKFbkzaELVNqqHcR1KImsfhN2', NULL, '2020-05-23 04:09:58', '2020-05-23 04:09:58', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Phụng Thị', 'Kiều Hà', 'ha.phungthikieu', NULL, 0, 0, NULL),
(58, 'hai.nguyenhoang@hust.edu.vn', NULL, '$2y$10$d.AdRNf3KXwbn4r2hCrtceR4M9ns.BvdyaJHV0KS5ihDhoZDkdFrm', NULL, '2020-05-23 04:10:37', '2020-05-23 04:10:37', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Hoàng', 'Hải', 'hai.nguyenhoang', NULL, 0, 0, NULL),
(59, 'huong.truongthu@hust.edu.vn', NULL, '$2y$10$1Zz.k7mYBlzt8h.hiMGcsOBU2JjqR76GLoW.iT939Jffh/XwT.CSO', NULL, '2020-05-23 04:12:22', '2020-05-23 04:12:22', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Trương Thu', 'Hương', 'huong.truongthu', NULL, 0, 0, NULL),
(60, 'huong.vuthi@hust.edu.vn', NULL, '$2y$10$FCAM56XGuqMu1OhLuwlN8OHvpfIV.BxKLqt1c72IhP.A7rOYIdG1C', NULL, '2020-05-23 04:13:11', '2020-05-23 04:13:11', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Vũ Thị', 'Hương', 'huong.vuthi', NULL, 0, 0, NULL),
(61, 'nam.vuonghoang@hust.edu.vn', NULL, '$2y$10$eH/ACljYuMYjAfhUt3Gt7ORVEEtINrLOqXgadb/k4Gezs5d9Q3aYa', NULL, '2020-05-23 04:13:52', '2020-05-23 04:13:52', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Vương Hoàng', 'Nam', 'nam.vuonghoang', NULL, 0, 0, NULL),
(62, 'phuong.ngothi@hust.edu.vn', NULL, '$2y$10$yCBqz4x0m3KFfomeZBpx5OrapRbJMdPgzC4uP8jntqA00mxBlFwr.', NULL, '2020-05-23 04:14:23', '2020-05-23 04:14:23', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Ngô Thị', 'Phương', 'phuong.ngothi', NULL, 0, 0, NULL),
(63, 'quang.nguyenanh@hust.edu.vn', NULL, '$2y$10$nK/KKop.iqRlnO9TnlSqPOwq8Sa7RipA.aKTxZg850hgYABEN2sNi', NULL, '2020-05-23 04:14:55', '2020-05-23 04:14:55', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Nguyễn Anh', 'Quang', 'quang.nguyenanh', NULL, 0, 0, NULL),
(64, 'kiendaotac92@gmail.com', NULL, '$2y$10$APlKghTA.54yUkWGxU6pcuN6Nz0YO56weQmlKEUq/8yijrOUTcKwy', 'K6Ll8oPMdYVtgnSJNbUM8p6D4TGZs0Rs7yqlxHGZe9oth0iudo2kdB9RnPsK', '2020-05-24 15:46:25', '2020-05-24 15:46:25', '{\"core.appearance\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"widgets.index\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"slidebar.index\":true,\"slidebar.create\":true,\"slidebar.edit\":true,\"slidebar.destroy\":true,\"core.system\":true,\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"tuyensinh.index\":true,\"tuyensinh.create\":true,\"tuyensinh.edit\":true,\"tuyensinh.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Kiên', 'Đạo Tặc', 'kiendaotac', NULL, 0, 0, NULL),
(65, 'vanhuy30305@gmail.com', NULL, '$2y$10$MKkcK3CoBZb4p0JO5tbqle9pDSu0pG9NEjHMp960wFNlDv5fBxLL2', 'd1Bjt8D7Xei6tRmNy9sQ7RoCPKP7rVKrRqPsGHJuFgi8MMVeDB3IxjW0qRY0', '2020-05-24 15:48:38', '2020-05-24 15:48:38', '{\"core.appearance\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"widgets.index\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"profile.index\":true,\"profile.create\":true,\"profile.edit\":true,\"profile.destroy\":true,\"slidebar.index\":true,\"slidebar.create\":true,\"slidebar.edit\":true,\"slidebar.destroy\":true,\"core.system\":true,\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"tuyensinh.index\":true,\"tuyensinh.create\":true,\"tuyensinh.edit\":true,\"tuyensinh.destroy\":true,\"superuser\":null,\"manage_supers\":null}', NULL, 'Vương Văn', 'Huy', 'vanhuy30305', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-locale', 'vi', 1, '2020-05-18 16:39:41', '2020-05-22 08:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_activity_logs_member_id_index` (`member_id`);

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slidebars`
--
ALTER TABLE `slidebars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuyensinhs`
--
ALTER TABLE `tuyensinhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `slidebars`
--
ALTER TABLE `slidebars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tuyensinhs`
--
ALTER TABLE `tuyensinhs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
