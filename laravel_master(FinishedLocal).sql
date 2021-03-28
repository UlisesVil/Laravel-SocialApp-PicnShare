-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-03-2021 a las 21:21:39
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_users` (`user_id`),
  KEY `fk_comments_images` (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `image_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Buena foto de familia!!', '2020-09-29 23:10:05', '2020-09-29 23:10:05'),
(2, 2, 1, 'Buena foto de PLAYA!!', '2020-09-29 23:10:05', '2020-09-29 23:10:05'),
(3, 2, 4, 'que bueno!!', '2020-09-29 23:10:10', '2020-09-29 23:10:10'),
(4, 4, 24, 'Doro He Doro!!', '2020-10-05 08:38:08', '2020-10-05 08:38:08'),
(6, 1, 24, 'comentario de perro', '2020-10-05 10:05:01', '2020-10-05 10:05:01'),
(7, 1, 23, 'nice suit', '2020-10-05 12:34:17', '2020-10-05 12:34:17'),
(8, 2, 24, 'nice mask', '2020-10-05 12:37:16', '2020-10-05 12:37:16'),
(29, 1, 30, 'Nuevo comentario', '2021-01-13 04:57:17', '2021-01-13 04:57:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_images_users` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `user_id`, `image_path`, `description`, `created_at`, `updated_at`) VALUES
(8, 4, '1601641067Screenshot_4.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-02 12:17:47', '2020-10-02 12:17:47'),
(9, 4, '1601641358Screenshot_3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-02 12:22:38', '2020-10-02 12:22:38'),
(10, 4, '1601641687Anarchy.Stocking.full.1938817.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-02 12:28:07', '2020-10-02 12:28:07'),
(11, 4, '1601642505772a4497be5980c9e3caaa8b21a70c5d.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-02 12:41:45', '2020-10-02 12:41:45'),
(12, 4, '1601707353131225.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-03 06:42:33', '2020-10-03 06:42:33'),
(13, 4, '1601707382488104.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-03 06:43:02', '2020-10-03 06:43:02'),
(15, 4, '1602280363tronmotorcicle.jpg', 'La moto del Tron flynn', '2020-10-03 07:19:45', '2020-10-09 22:06:22'),
(17, 4, '1601727087EhpbMhCU4AAqYtN.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-03 12:11:27', '2020-10-03 12:11:27'),
(18, 4, '1601727161EhpbMhCU4AAqYtN.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-03 12:12:41', '2020-10-03 12:12:41'),
(19, 4, '1601727172EhpbMhCU4AAqYtN.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-03 12:12:52', '2020-10-03 12:12:52'),
(20, 4, '16017272202af8e8eb497bfdfda6820f4be7853f55.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-03 12:13:40', '2020-10-03 12:13:40'),
(21, 4, '160172774505.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-03 12:22:25', '2020-10-03 12:22:25'),
(22, 1, '1601729912800x_image.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2020-10-03 12:58:32', '2020-10-03 12:58:32'),
(23, 3, '160173035596699461_10158747336858881_4175286640727556096_n.jpg', 'soy gundam', '2020-10-03 13:05:55', '2020-10-03 13:05:55'),
(24, 1, '160175433487122950_1056359754731757_8205152938717347840_o.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '2020-10-03 19:45:34', '2020-10-03 19:45:34'),
(25, 8, '1609398163Ep1NjH9XIAAEevA.jpg', 'Super Sajians', '2020-12-19 08:11:36', '2020-12-31 07:02:43'),
(26, 8, '1608370136mary005.jpg', 'Evangelion 3.0+1 la fecha de salida para esta pelicula aun no se da a conocer', '2020-12-19 09:28:56', '2020-12-21 10:17:30'),
(28, 8, '1608555592Screenshot_26.jpg', 'Nueva imagen de Yakko Warner', '2020-12-21 12:59:52', '2020-12-21 12:59:52'),
(29, 11, '1608560320126098960_1857772631039814_3280960123765451678_n.jpg', 'pa que me alcanza?', '2020-12-21 14:18:40', '2020-12-21 14:18:40'),
(30, 8, '160906273179044129_p0.png', 'Easy breezy', '2020-12-27 09:52:11', '2020-12-27 09:52:11'),
(39, 8, '1616699466142744651_3556628217786830_3056859054212046426_o.jpg', 'Android', '2021-03-25 19:11:06', '2021-03-25 19:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_likes_users` (`user_id`),
  KEY `fk_likes_images` (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 1, 20, '2020-09-29 23:10:47', '2020-09-29 23:10:47'),
(2, 2, 20, '2020-09-29 23:10:47', '2020-09-29 23:10:47'),
(3, 3, 20, '2020-09-29 23:10:47', '2020-09-29 23:10:47'),
(4, 3, 20, '2020-09-29 23:10:47', '2020-09-29 23:10:47'),
(5, 2, 20, '2020-09-29 23:10:48', '2020-09-29 23:10:48'),
(34, 4, 21, '2020-10-06 11:09:21', '2020-10-06 11:09:21'),
(57, 4, 24, '2020-10-07 09:19:53', '2020-10-07 09:19:53'),
(33, 4, 22, '2020-10-06 11:09:19', '2020-10-06 11:09:19'),
(58, 4, 9, '2020-10-07 09:34:47', '2020-10-07 09:34:47'),
(64, 7, 12, '2020-12-03 11:23:05', '2020-12-03 11:23:05'),
(55, 4, 18, '2020-10-07 09:18:10', '2020-10-07 09:18:10'),
(22, 4, 20, '2020-10-06 11:00:56', '2020-10-06 11:00:56'),
(63, 4, 8, '2020-10-08 22:00:53', '2020-10-08 22:00:53'),
(69, 11, 28, '2020-12-21 14:54:11', '2020-12-21 14:54:11'),
(66, 8, 25, '2020-12-19 08:42:37', '2020-12-19 08:42:37'),
(67, 9, 26, '2020-12-20 05:18:21', '2020-12-20 05:18:21'),
(70, 11, 29, '2020-12-21 14:54:16', '2020-12-21 14:54:16'),
(72, 8, 26, '2020-12-27 08:10:14', '2020-12-27 08:10:14'),
(103, 8, 39, '2021-03-25 20:45:45', '2021-03-25 20:45:45'),
(78, 8, 29, '2020-12-27 15:40:29', '2020-12-27 15:40:29'),
(102, 8, 30, '2021-01-18 03:47:56', '2021-01-18 03:47:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_09_28_075045_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ulisesvil5@hotmail.com', '$2y$10$lFGRNsEFAB8DejFpLk0Y4OP5XQg8/CYYaZry6nL7XOZDUtQ6VRB/S', '2020-12-03 16:54:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `payload` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VExyh0MnDwc65POJoWn8rC3CG790idGVT7BXMedE', 8, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRjlHT2lHWmZPWmp0SHZDYzBHUzNONzExQklvZ0hXZVpBYm1sYmFubCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjEwNzoiaHR0cDovL3Byb3llY3RvLWxhcmF2ZWwuY29tLmRldmVsL2ltYWdlL2ZpbGUvMTYxNjY5OTQ2NjE0Mjc0NDY1MV8zNTU2NjI4MjE3Nzg2ODMwXzMwNTY4NTkwNTQyMTIwNDY0MjZfby5qcGciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkaEpmUVNSNnBnek4xT3d4ajguNUJWdUdhcDF1WTFHM3cwYlp4UkFWOFlkZXhsZVVzdWFxTHUiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGhKZlFTUjZwZ3pOMU93eGo4LjVCVnVHYXAxdVkxRzN3MGJaeFJBVjhZZGV4bGVVc3VhcUx1Ijt9', 1616897020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nick` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `nick`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, NULL, 'perro', 'Caiman', 'Caiman', 'perro@perro.com', NULL, '$2y$10$r8c2YsgU/mLEe9S49kJ6TuYJAO07BAZyudgDjzSeB8pkFdFVpYBya', NULL, NULL, NULL, NULL, '1608355701EjdT870U4AEgP2e.jpg', '2020-09-30 11:19:40', '2020-10-03 19:02:08'),
(2, NULL, 'gato', 'Neko', 'NenoNi', 'gato@gato.com', NULL, '$2y$10$6a5oSPJCLUzVIocRoZmnUuJwU/C61oFxN4RlVZqZ8wsLH7HPhUBIm', NULL, NULL, NULL, NULL, '1608360987pat.jpg', '2020-09-30 11:30:14', '2020-10-05 18:36:38'),
(3, NULL, 'Raton', 'Vaquero', 'RataAlcantara', 'raton@raton.com', NULL, '$2y$10$zsRP0YjvCarrZ6xb/CyxWuzWyxNXX69FXk4qVey0TUn/SJlMTQHTS', NULL, NULL, NULL, NULL, '1608363607tenor.gif', '2020-09-30 12:00:39', '2020-10-03 19:05:31'),
(4, NULL, 'Ulises', 'Villa', 'SlideSonic', 'ulisesvil5@hotmail.com', NULL, '$2y$10$CNm6ygcQICKfEwd0VnT1v.muVdw5kAFGcox64ufUKAmcez8Od3pWO', NULL, NULL, NULL, NULL, '127722782_3663923037035430_5459115044279394442_o.jpg', '2020-09-30 14:26:38', '2020-10-08 00:40:15'),
(5, 'user', 'adrian', 'adrian', 'adrian', 'adrian@adrian.com', NULL, '$2y$10$syQJxALr6iUNNaBTbdjpHeYac/na2hkTDOqV9Vkqm93vC9wl8bbMC', NULL, NULL, NULL, NULL, '1608362411Gatos01.jpg', '2020-09-30 14:29:59', '2020-09-30 14:29:59'),
(6, 'user', 'ardilla', 'ardilla', 'ardilla', 'ardilla@ardilla.com', NULL, 'ardilla', NULL, NULL, NULL, NULL, '1608372393EGHJHFxVAAAlUXR.jpg', '2020-09-30 15:14:34', '2020-09-30 15:14:34'),
(7, 'user', 'mario', 'marioBro', 'MarioBro', 'mariobro@mariobro.com', NULL, '$2y$10$Aj2pTTAdgEPMBDVFIFNzfeBt59k.oU8a/KDfoF/fOweUbGDP.Z1Tq', NULL, NULL, NULL, NULL, '1608109517y7fd9izqp1551.jpg', '2020-12-03 17:15:07', '2020-12-03 17:31:46'),
(8, 'user', 'AdminSucces', 'Admin', 'Admin', 'admin@admin.com', NULL, '$2y$10$hJfQSR6pgzN1Owxj8.5BVuGap1uY1G3w0bZxRAV8YdexleUsuaqLu', NULL, NULL, NULL, NULL, '1609402469133327560_1824289591068276_1026476154360759475_o.jpg', '2020-12-18 16:48:47', '2020-12-31 14:14:29'),
(9, 'user', 'Admin2', 'Admin2', 'Admin2', 'admin2@admin2.com', NULL, '$2y$10$TJPMq8QuL.AON5Fd6O4CH.x3FXc4XorAV8Mweoz1K45JVyTLxMq5u', NULL, NULL, NULL, NULL, '1608377155wallpaperflare.com_wallpaper (39).jpg', '2020-12-19 17:14:36', '2020-12-19 17:25:55'),
(10, 'user', 'Admin3', 'Admin3', 'Admin3', 'admin3@admin3.com', NULL, '$2y$10$jr2vk/qYtBAP4QuTpAVhFeV5gfKIa4Oyvd.kkAOrORhT3G3Dj8vA2', NULL, NULL, NULL, NULL, '1608371617EK3R3n5U0AA-C_e.jpg', '2020-12-19 17:27:29', '2020-12-19 17:27:29'),
(11, 'user', 'Ulises3', 'Ulises3', 'Ulises3', 'Ulises3@Ulises3.com', NULL, '$2y$10$TTqyy6jsSYSqLM6VE/aF1Ov8g1tDuO6NOovyxY2cnauGv9qOs03xy', NULL, NULL, NULL, NULL, NULL, '2020-12-21 20:18:08', '2020-12-21 20:18:08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
