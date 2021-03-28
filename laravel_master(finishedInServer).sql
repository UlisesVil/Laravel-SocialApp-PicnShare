-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: fdb29.awardspace.net
-- Tiempo de generación: 28-03-2021 a las 03:19:21
-- Versión del servidor: 5.7.20-log
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `3673457_laravelmaster`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `image_id`, `content`, `created_at`, `updated_at`) VALUES
(37, 14, 97, 'Shut Up And Take My Money', '2021-03-27 03:52:33', '2021-03-27 03:52:33'),
(36, 16, 98, 'That\'s creepy.', '2021-03-27 03:51:27', '2021-03-27 03:51:27'),
(35, 17, 98, 'Majestic', '2021-03-27 03:50:49', '2021-03-27 03:50:49'),
(34, 18, 98, 'impresive', '2021-03-27 03:50:36', '2021-03-27 03:50:36'),
(33, 19, 98, 'nice picture', '2021-03-27 03:50:15', '2021-03-27 03:50:15'),
(32, 20, 99, 'Just what the doctor ordered.', '2021-03-27 03:49:01', '2021-03-27 03:49:01'),
(31, 21, 99, 'without worries.', '2021-03-27 03:32:44', '2021-03-27 03:32:44'),
(30, 22, 99, 'I know babe.', '2021-03-27 03:32:08', '2021-03-27 03:32:08'),
(24, 23, 100, 'So cute', '2021-03-27 02:04:35', '2021-03-27 02:04:35'),
(25, 24, 100, 'That just warms the heart.', '2021-03-27 03:29:10', '2021-03-27 03:29:10'),
(26, 14, 100, 'But now I can\'t sleep. Hold me.', '2021-03-27 03:29:50', '2021-03-27 03:29:50'),
(27, 16, 100, 'Oh, dear.', '2021-03-27 03:30:12', '2021-03-27 03:30:12'),
(28, 17, 100, 'I\'m floating on air.', '2021-03-27 03:30:47', '2021-03-27 03:30:47'),
(29, 18, 99, 'Oh, yeah.', '2021-03-27 03:31:36', '2021-03-27 03:31:36'),
(38, 19, 97, 'Big deal.', '2021-03-27 03:53:04', '2021-03-27 03:53:04'),
(39, 20, 97, 'Simply awesome.', '2021-03-27 03:53:16', '2021-03-27 03:53:16'),
(40, 21, 97, 'The legends are true.', '2021-03-27 03:54:15', '2021-03-27 03:54:15'),
(41, 22, 96, 'These are sick and magnificent, friend.', '2021-03-27 03:55:49', '2021-03-27 03:55:49'),
(42, 23, 96, 'This picture blew my mind.', '2021-03-27 03:56:19', '2021-03-27 03:56:19'),
(43, 24, 96, 'This picture has navigated right into my heart.', '2021-03-27 03:57:03', '2021-03-27 03:57:03'),
(44, 14, 96, 'Magnificent work you have here.', '2021-03-27 03:57:50', '2021-03-27 03:57:50'),
(45, 16, 96, 'I want to learn this kind of illustration! Teach me.', '2021-03-27 03:58:07', '2021-03-27 03:58:07'),
(46, 17, 95, 'comfortable', '2021-03-27 03:58:56', '2021-03-27 03:58:56'),
(47, 18, 95, 'Just what i Need', '2021-03-27 03:59:15', '2021-03-27 03:59:15'),
(48, 19, 95, 'Congrats on the new adventure!!', '2021-03-27 03:59:27', '2021-03-27 03:59:27'),
(49, 20, 95, 'Wow love it!', '2021-03-27 03:59:55', '2021-03-27 03:59:55'),
(50, 21, 94, 'Scary', '2021-03-27 04:00:58', '2021-03-27 04:00:58'),
(51, 22, 94, 'I would like to do that', '2021-03-27 04:01:20', '2021-03-27 04:01:20'),
(52, 23, 94, 'Just excellent', '2021-03-27 04:01:33', '2021-03-27 04:01:33'),
(53, 24, 93, 'I love that film', '2021-03-27 04:02:22', '2021-03-27 04:02:22'),
(54, 14, 93, 'Splendid Adore the use of shade', '2021-03-27 04:03:48', '2021-03-27 04:03:48'),
(55, 16, 92, 'Such work, so gorgeous', '2021-03-27 04:05:34', '2021-03-27 04:05:34'),
(56, 17, 92, 'Really incredible mate', '2021-03-27 04:05:49', '2021-03-27 04:05:49'),
(57, 18, 91, 'imposing', '2021-03-27 04:06:23', '2021-03-27 04:06:23'),
(58, 19, 91, 'How do you make this? Photoshop?', '2021-03-27 04:07:05', '2021-03-27 04:07:05'),
(59, 20, 91, 'Amazing work you have here.', '2021-03-27 04:07:31', '2021-03-27 04:07:31'),
(60, 21, 89, 'I love her music', '2021-03-27 04:19:02', '2021-03-27 04:19:02'),
(61, 22, 89, 'So incredible.', '2021-03-27 04:19:52', '2021-03-27 04:19:52'),
(62, 23, 89, 'Wow love her!', '2021-03-27 04:20:29', '2021-03-27 04:20:29'),
(63, 24, 89, 'It\'s simple not just magnificent!', '2021-03-27 04:22:23', '2021-03-27 04:22:23'),
(64, 14, 88, 'This experience blew my mind.', '2021-03-27 04:26:33', '2021-03-27 04:26:33'),
(65, 16, 88, 'Just sublime :)', '2021-03-27 04:26:45', '2021-03-27 04:26:45'),
(66, 17, 87, 'that is Art', '2021-03-27 04:27:35', '2021-03-27 04:27:35'),
(67, 18, 87, 'Alluring work you have here.', '2021-03-27 04:28:00', '2021-03-27 04:28:00'),
(68, 19, 87, 'Such amazing.', '2021-03-27 04:28:10', '2021-03-27 04:28:10'),
(69, 20, 86, 'The best game ever', '2021-03-27 04:29:24', '2021-03-27 04:29:24'),
(70, 21, 86, 'Tremendously amazing.', '2021-03-27 04:29:55', '2021-03-27 04:29:55'),
(71, 22, 86, 'Such style, many layers, so magical', '2021-03-27 04:30:10', '2021-03-27 04:30:10'),
(72, 23, 86, 'Just splendid!', '2021-03-27 04:30:25', '2021-03-27 04:30:25'),
(73, 24, 84, 'beautiful smile', '2021-03-27 04:31:34', '2021-03-27 04:31:34'),
(74, 14, 84, 'I think I\'m crying. It\'s that nice.', '2021-03-27 04:32:05', '2021-03-27 04:32:05'),
(75, 16, 84, 'Incredible shot', '2021-03-27 04:32:16', '2021-03-27 04:32:16'),
(76, 17, 84, 'This shot has navigated right into my heart.', '2021-03-27 04:32:26', '2021-03-27 04:32:26'),
(77, 18, 83, 'Sublime! I admire the use of style', '2021-03-27 04:33:27', '2021-03-27 04:33:27'),
(78, 19, 82, 'I want to learn this kind of shot! Teach me.', '2021-03-27 04:34:06', '2021-03-27 04:34:06'),
(79, 20, 82, 'Killer work you have here.', '2021-03-27 04:34:23', '2021-03-27 04:34:23'),
(80, 21, 80, 'Exquisite. So sublime.', '2021-03-27 04:34:48', '2021-03-27 04:34:48'),
(81, 22, 80, 'Overly thought out! You are so inspiring!', '2021-03-27 04:34:58', '2021-03-27 04:34:58'),
(82, 23, 80, 'Really admirable shot', '2021-03-27 04:35:08', '2021-03-27 04:35:08'),
(83, 24, 79, 'Just fresh, friend.', '2021-03-27 04:35:46', '2021-03-27 04:35:46'),
(84, 14, 79, 'You are so inspiring!', '2021-03-27 04:36:08', '2021-03-27 04:36:08'),
(85, 16, 79, 'Jesus Christ. How do you do it?', '2021-03-27 04:36:24', '2021-03-27 04:36:24'),
(86, 17, 79, 'Vastly excellent experience dude', '2021-03-27 04:36:35', '2021-03-27 04:36:35'),
(87, 18, 77, 'Attack', '2021-03-27 04:37:17', '2021-03-27 04:37:17'),
(88, 19, 77, 'Go for it', '2021-03-27 04:37:33', '2021-03-27 04:37:33'),
(89, 20, 77, 'Very funny', '2021-03-27 04:38:05', '2021-03-27 04:38:05'),
(90, 21, 76, 'Sleek. I adore the use of background image and layers!', '2021-03-27 04:38:54', '2021-03-27 04:38:54'),
(91, 22, 76, 'Wow love it!', '2021-03-27 04:39:10', '2021-03-27 04:39:10'),
(92, 23, 76, 'This is magnificent work mate', '2021-03-27 04:39:29', '2021-03-27 04:39:29'),
(93, 24, 76, 'It\'s excellent!', '2021-03-27 04:39:51', '2021-03-27 04:39:51'),
(94, 14, 75, 'Found myself staring at it for minutes.', '2021-03-27 04:40:30', '2021-03-27 04:40:30'),
(95, 16, 75, 'Such fabulous.', '2021-03-27 04:41:06', '2021-03-27 04:41:06'),
(96, 17, 74, 'Radiant work you have here.', '2021-03-27 04:41:43', '2021-03-27 04:41:43'),
(97, 18, 74, 'Overly good!!', '2021-03-27 04:41:53', '2021-03-27 04:41:53'),
(98, 19, 73, 'Hero, style, camera angle, incredible!', '2021-03-27 04:42:33', '2021-03-27 04:42:33'),
(99, 20, 73, 'Sick shot, friend.', '2021-03-27 04:42:42', '2021-03-27 04:42:42'),
(100, 21, 73, 'Admirable. So delightful.', '2021-03-27 04:43:17', '2021-03-27 04:43:17'),
(101, 22, 70, 'wonderful game', '2021-03-27 04:43:49', '2021-03-27 04:43:49'),
(102, 23, 70, 'I can\'t wait for the second part', '2021-03-27 04:44:39', '2021-03-27 04:44:39'),
(103, 24, 69, 'Nice style', '2021-03-27 04:45:26', '2021-03-27 04:45:26'),
(104, 14, 69, 'Fresh work you have here.', '2021-03-27 04:46:01', '2021-03-27 04:46:01'),
(105, 16, 68, 'I like your camera angle mate', '2021-03-27 04:46:45', '2021-03-27 04:46:45'),
(106, 17, 68, 'Fab concept.', '2021-03-27 04:46:56', '2021-03-27 04:46:56'),
(107, 18, 68, 'Immensely fresh style!!', '2021-03-27 04:47:10', '2021-03-27 04:47:10'),
(108, 19, 67, 'Gorgeous. So amazing.', '2021-03-27 04:48:54', '2021-03-27 04:48:54'),
(109, 20, 67, 'Classic work you have here.', '2021-03-27 04:50:30', '2021-03-27 04:50:30'),
(110, 21, 67, 'Superb', '2021-03-27 04:50:51', '2021-03-27 04:50:51'),
(111, 22, 64, 'It\'s a beast', '2021-03-27 04:51:33', '2021-03-27 04:51:33'),
(112, 23, 64, 'Release the beast', '2021-03-27 04:52:04', '2021-03-27 04:52:04'),
(113, 24, 64, 'Woww', '2021-03-27 04:52:11', '2021-03-27 04:52:11'),
(114, 14, 63, 'Better than the Original', '2021-03-27 04:52:57', '2021-03-27 04:52:57'),
(115, 16, 63, 'So cool', '2021-03-27 04:53:06', '2021-03-27 04:53:06'),
(116, 17, 63, 'I want it in my Garage', '2021-03-27 04:53:43', '2021-03-27 04:53:43'),
(117, 18, 60, 'Where is that place', '2021-03-27 04:54:16', '2021-03-27 04:54:16'),
(118, 19, 60, 'Beatiful', '2021-03-27 04:54:29', '2021-03-27 04:54:29'),
(119, 20, 59, 'Very cute', '2021-03-27 04:55:02', '2021-03-27 04:55:02'),
(120, 21, 59, 'I admire your shot mate', '2021-03-27 04:55:15', '2021-03-27 04:55:15'),
(121, 22, 59, 'Love it!', '2021-03-27 04:56:35', '2021-03-27 04:56:35'),
(122, 23, 58, 'Great Game', '2021-03-27 04:57:05', '2021-03-27 04:57:05'),
(123, 24, 58, 'I played it for years', '2021-03-27 04:58:06', '2021-03-27 04:58:06'),
(124, 14, 55, 'the 4th movie is coming', '2021-03-27 05:00:05', '2021-03-27 05:00:05'),
(125, 16, 55, 'So beastly', '2021-03-27 05:00:42', '2021-03-27 05:00:42'),
(126, 17, 54, 'It\'s gorgeous not just excellent!', '2021-03-27 05:02:56', '2021-03-27 05:02:56'),
(127, 18, 54, 'Super amazing =)', '2021-03-27 05:03:19', '2021-03-27 05:03:19'),
(128, 19, 54, 'Such atmosphere', '2021-03-27 05:03:37', '2021-03-27 05:03:37'),
(129, 20, 53, 'Relaxing', '2021-03-27 05:05:29', '2021-03-27 05:05:29'),
(130, 21, 53, 'So cute', '2021-03-27 05:05:42', '2021-03-27 05:05:42'),
(131, 22, 53, 'very funny', '2021-03-27 05:05:56', '2021-03-27 05:05:56'),
(132, 23, 52, 'What kind of magic is this', '2021-03-27 05:06:43', '2021-03-27 05:06:43'),
(133, 24, 52, 'Black. I\'d love to see a video of how it works.', '2021-03-27 05:07:24', '2021-03-27 05:07:24'),
(134, 14, 52, 'Outstandingly revolutionary shot', '2021-03-27 05:07:44', '2021-03-27 05:07:44'),
(135, 16, 51, 'Nice use of blue in this concept', '2021-03-27 05:08:26', '2021-03-27 05:08:26'),
(136, 17, 51, 'Gorgeous work you have here.', '2021-03-27 05:08:34', '2021-03-27 05:08:34'),
(137, 18, 51, 'How do you make this? Photoshop?', '2021-03-27 05:08:50', '2021-03-27 05:08:50'),
(138, 19, 51, 'Outstandingly nice mate', '2021-03-27 05:09:12', '2021-03-27 05:09:12'),
(139, 20, 50, 'This is beastly and killer', '2021-03-27 05:10:02', '2021-03-27 05:10:02'),
(140, 21, 50, 'I want to learn this kind of layout! Teach me.', '2021-03-27 05:10:12', '2021-03-27 05:10:12'),
(141, 22, 49, 'Such sublime.', '2021-03-27 05:10:44', '2021-03-27 05:10:44'),
(142, 23, 49, 'This colour palette blew my mind.', '2021-03-27 05:10:56', '2021-03-27 05:10:56'),
(143, 24, 49, 'I adore your shot', '2021-03-27 05:11:07', '2021-03-27 05:11:07'),
(144, 14, 48, 'I admire your atmosphere', '2021-03-27 05:11:56', '2021-03-27 05:11:56'),
(145, 16, 48, 'This is excellent', '2021-03-27 05:12:18', '2021-03-27 05:12:18'),
(146, 17, 48, 'It\'s killer not just revolutionary!', '2021-03-27 05:12:29', '2021-03-27 05:12:29'),
(147, 18, 47, 'Whoa.', '2021-03-27 05:13:07', '2021-03-27 05:13:07'),
(148, 19, 47, 'Overly cool dude', '2021-03-27 05:13:16', '2021-03-27 05:13:16'),
(149, 20, 47, 'Amazing. So cool.', '2021-03-27 05:13:31', '2021-03-27 05:13:31'),
(150, 21, 47, 'Just admirable', '2021-03-27 05:13:44', '2021-03-27 05:13:44'),
(151, 22, 46, 'Scary', '2021-03-27 05:14:14', '2021-03-27 05:14:14'),
(152, 23, 46, 'Incredible. So beastly.', '2021-03-27 05:14:48', '2021-03-27 05:14:48'),
(153, 24, 45, 'So cute and adorable', '2021-03-27 05:15:15', '2021-03-27 05:15:15'),
(154, 14, 45, 'such fresh', '2021-03-27 05:15:37', '2021-03-27 05:15:37'),
(155, 16, 45, 'I love your style', '2021-03-27 05:16:44', '2021-03-27 05:16:44'),
(156, 17, 43, 'You are so inspiring!', '2021-03-27 05:17:20', '2021-03-27 05:17:20'),
(157, 18, 43, 'Leading the way mate.', '2021-03-27 05:17:51', '2021-03-27 05:17:51'),
(158, 19, 42, 'I love Icecream', '2021-03-27 05:18:26', '2021-03-27 05:18:26'),
(159, 20, 42, 'Can I Join you?', '2021-03-27 05:18:53', '2021-03-27 05:18:53'),
(160, 21, 41, 'I am hungry now', '2021-03-27 05:20:12', '2021-03-27 05:20:12'),
(161, 22, 19, 'cute', '2021-03-27 05:20:38', '2021-03-27 05:20:38'),
(162, 23, 19, 'This shot has navigated right into my heart.', '2021-03-27 05:21:21', '2021-03-27 05:21:21'),
(163, 24, 18, 'Nice Colours', '2021-03-27 05:22:10', '2021-03-27 05:22:10'),
(164, 14, 18, 'I love your style', '2021-03-27 05:24:12', '2021-03-27 05:24:12'),
(165, 16, 18, 'Nice use of white in this idea', '2021-03-27 05:24:27', '2021-03-27 05:24:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `user_id`, `image_path`, `description`, `created_at`, `updated_at`) VALUES
(94, 24, '1616809173TUMBLR~1.PNG', 'Pure Adrenaline', '2021-03-27 01:39:33', '2021-03-27 01:39:33'),
(95, 23, '1616809216What Exactly Is Slow Travel_ A Deep Dive Into The History & Main Pillars Of Immersive Journeys _ Dame Traveler.jpg', 'Morning Coffee', '2021-03-27 01:40:16', '2021-03-27 01:40:16'),
(96, 22, '1616809272zspecial01.jpg', 'Nier Automata 2B in red', '2021-03-27 01:41:12', '2021-03-27 01:41:12'),
(91, 21, '1616809012Tron_Legacy_G_15.jpg', 'Tron yellow motorcycle', '2021-03-27 01:36:52', '2021-03-27 01:36:52'),
(92, 20, '1616809053tron-legacy.jpg', 'Tron Yellow Motorcycle in action', '2021-03-27 01:37:33', '2021-03-27 01:37:33'),
(93, 19, '1616809118TRON-Legacy-art-picture_3840x2160.jpg', 'Tron legacy movie', '2021-03-27 01:38:38', '2021-03-27 01:38:38'),
(86, 18, '1616808715Screenshot_29.jpg', 'Crash 4 looks insane !!!', '2021-03-27 01:31:55', '2021-03-27 01:31:55'),
(87, 17, '1616808782Skateboard Wine Rack Recyclart.jpg', 'A Great Idea', '2021-03-27 01:32:28', '2021-03-27 01:33:02'),
(88, 16, '1616808826These itty bitty shells speak my.jpg', 'Shells', '2021-03-27 01:33:46', '2021-03-27 01:33:46'),
(89, 14, '1616808871top.jpg', 'Daoko being Daoko', '2021-03-27 01:34:31', '2021-03-27 01:34:31'),
(82, 24, '1616808434over 10,000  maekunysz.jpg', 'Nostalgic sunset', '2021-03-27 01:27:14', '2021-03-27 01:27:14'),
(83, 23, '1616808560Photo (Today Tomorrow & Forever).jpg', 'New roads to discover', '2021-03-27 01:29:20', '2021-03-27 01:29:20'),
(84, 22, '1616808602PlayBarkRun - Becoming Better For Your Dog.jpg', 'Don\'t Worry be happy', '2021-03-27 01:30:02', '2021-03-27 01:30:02'),
(77, 21, '1616808057Lalocadelyuri101_ Blog.jpg', 'It\'s Mine', '2021-03-27 01:20:57', '2021-03-27 01:20:57'),
(79, 20, '1616808188Media Tweets by Brandon Woelfel (@Brandonwoelfel).jpg', 'Water Control', '2021-03-27 01:23:08', '2021-03-27 01:23:08'),
(80, 19, '1616808306cosmic.jpg', 'Cosmic sensation', '2021-03-27 01:24:03', '2021-03-27 01:25:24'),
(73, 18, '1616807808Igor Sobolevsky - KeyShot Software Portfolio.jpg', 'Jet Car Project', '2021-03-27 01:16:49', '2021-03-27 01:16:49'),
(74, 17, '1616807879Iness.jpg', 'Fox', '2021-03-27 01:17:59', '2021-03-27 01:17:59'),
(75, 16, '1616807964ITAP Jumping Through The Largest Trees In The World.jpg', 'Running through the forest', '2021-03-27 01:19:24', '2021-03-27 01:19:24'),
(76, 14, '1616807995Jetcar.jpg', 'Jet car project Front', '2021-03-27 01:19:55', '2021-03-27 01:19:55'),
(68, 24, '1616807492GT7.jpg', 'Start your Engines', '2021-03-27 01:11:32', '2021-03-27 01:11:32'),
(69, 23, '1616807528Hakosuka No_15.jpg', 'Retro Drawing', '2021-03-27 01:12:08', '2021-03-27 01:12:08'),
(70, 22, '1616807631HD wallpaper_ Zelda, The Legend of Zelda_ Breath of the Wild, Daruk (The Legend Of Zelda).jfif', 'Breath of the wild Portrait', '2021-03-27 01:13:51', '2021-03-27 01:13:51'),
(67, 21, '1616807411funny memes @elcathappy 982 seguidores 0 siguiendo 54_0k me gusta_ no te pierdas los geniales víd.jpg', 'Purrfect looking', '2021-03-27 01:10:11', '2021-03-27 01:10:11'),
(63, 20, '1616807071cyberpunk113_3___B5puTzmjlzD___.jpg', 'Tesla Cyber Truck', '2021-03-27 01:04:31', '2021-03-27 01:04:31'),
(64, 14, '1616807129cyberpunk113_5___B7gZupbjMMf___.jpg', 'New Design', '2021-03-27 01:05:29', '2021-03-27 01:05:29'),
(65, 16, '1616807247Demo_001, Tenjoy EDU.jpg', 'Vehicle Demo', '2021-03-27 01:07:27', '2021-03-27 01:07:27'),
(58, 17, '1616806561Butcher\'s Blog.jpg', 'Ikaruga Poster', '2021-03-27 00:56:01', '2021-03-27 00:56:01'),
(59, 18, '1616806609Chihuahua _ PetSync.jpg', 'Doggy Waterproof', '2021-03-27 00:56:49', '2021-03-27 00:56:49'),
(60, 19, '1616806681Desvre.jpg', 'The best sunset ever !!!', '2021-03-27 00:58:01', '2021-03-27 00:58:41'),
(52, 20, '1616806138all that was left was their shoes.jpg', 'Shadow in the water', '2021-03-27 00:48:58', '2021-03-27 00:48:58'),
(53, 21, '1616806190An interesting title.jpg', 'Massage time', '2021-03-27 00:49:50', '2021-03-27 00:49:50'),
(54, 22, '1616806241An overgrown spiral staircase.jpg', 'An overgrown spiral staircase', '2021-03-27 00:50:41', '2021-03-27 00:50:41'),
(55, 23, '1616806334Evangelion Poster - EVA 02.jpg', 'Eva 02 You are not Alone', '2021-03-27 00:52:14', '2021-03-27 00:52:14'),
(49, 24, '1616805892140336340_1675109262668821_5504075943121091883_o.jpg', 'Neo Escolta from Japan', '2021-03-27 00:44:52', '2021-03-27 00:44:52'),
(50, 14, '1616805930144338151_3241689145935676_5173183803358066989_o.jpg', 'Neo Samurai', '2021-03-27 00:45:30', '2021-03-27 00:45:30'),
(51, 16, '1616806036162052049_3961297840631280_1009317042499208774_o.jpg', 'Mobile Suit Gundam in battle', '2021-03-27 00:47:16', '2021-03-27 00:47:16'),
(48, 17, '1616805829140135394_997836857290807_1429655044495422198_o.jpg', 'coffee, please.', '2021-03-27 00:43:49', '2021-03-27 00:43:49'),
(45, 18, '161680546920+ The Coolest Ready For Summer Dogs - DIY Darlin\'.jpg', 'Doggy swimming', '2021-03-27 00:37:49', '2021-03-27 00:37:49'),
(46, 19, '161680554525 Increíbles fotos que capturan la belleza entre dos mundos en un solo disparo.jpg', 'Amazing jellyfish', '2021-03-27 00:39:05', '2021-03-27 00:39:58'),
(47, 20, '1616805714632925-1122x748.jpg', 'Delorean super tuned', '2021-03-27 00:41:54', '2021-03-27 00:41:54'),
(43, 21, '161680519515 Lindos fondos de pantalla estilo Tumblr para personalizar tu celular.jpg', 'Vibes', '2021-03-27 00:33:15', '2021-03-27 00:33:15'),
(41, 22, '161680503510 Recipes To Try This Week_ 9_11_16.jpg', 'Pizza and the Beach', '2021-03-27 00:30:35', '2021-03-27 00:30:35'),
(42, 23, '161680515510 regalos para tu novio DIY gastando menos de 100 pesos - Mujer de 10_ Guía real para la mujer actual_ Entérate ya_.jpg', 'Movie Time!!!', '2021-03-27 00:32:35', '2021-03-27 00:32:35'),
(18, 24, '16168048002PIGEON on Twitter.png', 'Keep Safe Mind', '2021-03-27 00:26:40', '2021-03-27 00:26:40'),
(19, 14, '1616804414[ 12cs ] Instagram - Thanh Xuân Của Chúng Ta - _ Nữ _.jpg', 'Purrrrfect!!!!', '2021-03-27 00:20:14', '2021-03-27 00:20:14'),
(97, 16, '1616809316zspecial02.jpg', 'Rolling in the night', '2021-03-27 01:41:56', '2021-03-27 01:41:56'),
(98, 17, '1616809347zspecial03.png', 'Red Octopus', '2021-03-27 01:42:27', '2021-03-27 01:42:27'),
(99, 18, '1616809433zspecial04.jpg', 'The best company', '2021-03-27 01:43:53', '2021-03-27 01:43:53'),
(100, 19, '1616809584zspecial05.gif', 'wake up we have already arrived', '2021-03-27 01:46:24', '2021-03-27 01:46:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`) VALUES
(140, 17, 82, '2021-03-27 10:08:38', '2021-03-27 10:08:38'),
(139, 17, 92, '2021-03-27 10:08:30', '2021-03-27 10:08:30'),
(138, 17, 95, '2021-03-27 10:08:25', '2021-03-27 10:08:25'),
(137, 17, 97, '2021-03-27 10:08:11', '2021-03-27 10:08:11'),
(136, 16, 19, '2021-03-27 10:07:27', '2021-03-27 10:07:27'),
(135, 16, 42, '2021-03-27 10:07:23', '2021-03-27 10:07:23'),
(134, 16, 47, '2021-03-27 10:07:13', '2021-03-27 10:07:13'),
(133, 16, 49, '2021-03-27 10:07:11', '2021-03-27 10:07:11'),
(132, 16, 55, '2021-03-27 10:07:06', '2021-03-27 10:07:06'),
(131, 16, 59, '2021-03-27 10:07:03', '2021-03-27 10:07:03'),
(130, 16, 60, '2021-03-27 10:07:01', '2021-03-27 10:07:01'),
(129, 16, 70, '2021-03-27 10:06:54', '2021-03-27 10:06:54'),
(128, 16, 74, '2021-03-27 10:06:51', '2021-03-27 10:06:51'),
(127, 16, 84, '2021-03-27 10:06:43', '2021-03-27 10:06:43'),
(126, 16, 87, '2021-03-27 10:06:41', '2021-03-27 10:06:41'),
(125, 16, 89, '2021-03-27 10:06:39', '2021-03-27 10:06:39'),
(124, 16, 96, '2021-03-27 10:06:28', '2021-03-27 10:06:28'),
(123, 16, 98, '2021-03-27 10:06:23', '2021-03-27 10:06:23'),
(122, 16, 100, '2021-03-27 10:06:19', '2021-03-27 10:06:19'),
(121, 14, 18, '2021-03-27 10:01:07', '2021-03-27 10:01:07'),
(120, 14, 42, '2021-03-27 10:00:59', '2021-03-27 10:00:59'),
(119, 14, 50, '2021-03-27 10:00:48', '2021-03-27 10:00:48'),
(118, 14, 51, '2021-03-27 10:00:46', '2021-03-27 10:00:46'),
(117, 14, 53, '2021-03-27 10:00:42', '2021-03-27 10:00:42'),
(116, 14, 64, '2021-03-27 10:00:34', '2021-03-27 10:00:34'),
(115, 14, 67, '2021-03-27 10:00:32', '2021-03-27 10:00:32'),
(114, 14, 68, '2021-03-27 10:00:29', '2021-03-27 10:00:29'),
(113, 14, 69, '2021-03-27 10:00:27', '2021-03-27 10:00:27'),
(112, 14, 77, '2021-03-27 10:00:12', '2021-03-27 10:00:12'),
(111, 14, 80, '2021-03-27 10:00:08', '2021-03-27 10:00:08'),
(110, 14, 83, '2021-03-27 10:00:05', '2021-03-27 10:00:05'),
(109, 14, 91, '2021-03-27 09:59:50', '2021-03-27 09:59:50'),
(108, 14, 93, '2021-03-27 09:59:47', '2021-03-27 09:59:47'),
(107, 14, 97, '2021-03-27 09:59:37', '2021-03-27 09:59:37'),
(106, 14, 100, '2021-03-27 09:58:32', '2021-03-27 09:58:32'),
(141, 17, 80, '2021-03-27 10:08:41', '2021-03-27 10:08:41'),
(105, 14, 99, '2021-03-27 09:58:19', '2021-03-27 09:58:19'),
(104, 14, 96, '2021-03-27 09:57:46', '2021-03-27 09:57:46'),
(144, 17, 65, '2021-03-27 10:08:54', '2021-03-27 10:08:54'),
(143, 17, 67, '2021-03-27 10:08:52', '2021-03-27 10:08:52'),
(142, 17, 77, '2021-03-27 10:08:45', '2021-03-27 10:08:45'),
(145, 17, 54, '2021-03-27 10:09:01', '2021-03-27 10:09:01'),
(146, 17, 50, '2021-03-27 10:09:06', '2021-03-27 10:09:06'),
(147, 17, 19, '2021-03-27 10:09:15', '2021-03-27 10:09:15'),
(148, 17, 18, '2021-03-27 10:09:17', '2021-03-27 10:09:17'),
(149, 18, 96, '2021-03-27 10:10:49', '2021-03-27 10:10:49'),
(150, 18, 98, '2021-03-27 10:10:55', '2021-03-27 10:10:55'),
(151, 18, 89, '2021-03-27 10:11:04', '2021-03-27 10:11:04'),
(152, 18, 88, '2021-03-27 10:11:09', '2021-03-27 10:11:09'),
(153, 18, 84, '2021-03-27 10:11:13', '2021-03-27 10:11:13'),
(154, 18, 75, '2021-03-27 10:11:27', '2021-03-27 10:11:27'),
(155, 18, 73, '2021-03-27 10:11:35', '2021-03-27 10:11:35'),
(156, 18, 70, '2021-03-27 10:11:37', '2021-03-27 10:11:37'),
(157, 18, 63, '2021-03-27 10:11:43', '2021-03-27 10:11:43'),
(158, 18, 59, '2021-03-27 10:11:47', '2021-03-27 10:11:47'),
(159, 18, 55, '2021-03-27 10:11:52', '2021-03-27 10:11:52'),
(160, 18, 48, '2021-03-27 10:11:58', '2021-03-27 10:11:58'),
(161, 18, 47, '2021-03-27 10:12:00', '2021-03-27 10:12:00'),
(162, 18, 46, '2021-03-27 10:12:02', '2021-03-27 10:12:02'),
(163, 18, 45, '2021-03-27 10:12:04', '2021-03-27 10:12:04'),
(164, 19, 99, '2021-03-27 10:14:19', '2021-03-27 10:14:19'),
(165, 19, 97, '2021-03-27 10:14:22', '2021-03-27 10:14:22'),
(166, 19, 96, '2021-03-27 10:14:24', '2021-03-27 10:14:24'),
(167, 19, 95, '2021-03-27 10:14:33', '2021-03-27 10:14:33'),
(168, 19, 94, '2021-03-27 10:14:35', '2021-03-27 10:14:35'),
(169, 19, 91, '2021-03-27 10:14:39', '2021-03-27 10:14:39'),
(170, 19, 79, '2021-03-27 10:14:51', '2021-03-27 10:14:51'),
(171, 19, 77, '2021-03-27 10:14:54', '2021-03-27 10:14:54'),
(172, 19, 69, '2021-03-27 10:15:02', '2021-03-27 10:15:02'),
(173, 19, 67, '2021-03-27 10:15:05', '2021-03-27 10:15:05'),
(174, 19, 64, '2021-03-27 10:15:08', '2021-03-27 10:15:08'),
(175, 19, 53, '2021-03-27 10:15:14', '2021-03-27 10:15:14'),
(176, 19, 51, '2021-03-27 10:15:18', '2021-03-27 10:15:18'),
(177, 19, 50, '2021-03-27 10:15:20', '2021-03-27 10:15:20'),
(178, 19, 41, '2021-03-27 10:15:27', '2021-03-27 10:15:27'),
(179, 19, 19, '2021-03-27 10:15:29', '2021-03-27 10:15:29'),
(180, 20, 100, '2021-03-27 10:16:37', '2021-03-27 10:16:37'),
(181, 20, 89, '2021-03-27 10:16:54', '2021-03-27 10:16:54'),
(182, 20, 87, '2021-03-27 10:16:58', '2021-03-27 10:16:58'),
(183, 20, 86, '2021-03-27 10:16:59', '2021-03-27 10:16:59'),
(184, 20, 84, '2021-03-27 10:17:01', '2021-03-27 10:17:01'),
(185, 20, 76, '2021-03-27 10:17:09', '2021-03-27 10:17:09'),
(186, 20, 75, '2021-03-27 10:17:12', '2021-03-27 10:17:12'),
(187, 20, 74, '2021-03-27 10:17:15', '2021-03-27 10:17:15'),
(188, 20, 60, '2021-03-27 10:17:26', '2021-03-27 10:17:26'),
(189, 20, 59, '2021-03-27 10:17:28', '2021-03-27 10:17:28'),
(190, 20, 58, '2021-03-27 10:17:31', '2021-03-27 10:17:31'),
(191, 20, 49, '2021-03-27 10:17:42', '2021-03-27 10:17:42'),
(192, 20, 48, '2021-03-27 10:17:45', '2021-03-27 10:17:45'),
(193, 20, 45, '2021-03-27 10:17:49', '2021-03-27 10:17:49'),
(194, 22, 100, '2021-03-27 10:21:23', '2021-03-27 10:21:23'),
(195, 22, 98, '2021-03-27 10:21:26', '2021-03-27 10:21:26'),
(196, 22, 96, '2021-03-27 10:21:29', '2021-03-27 10:21:29'),
(197, 22, 94, '2021-03-27 10:21:42', '2021-03-27 10:21:42'),
(198, 22, 93, '2021-03-27 10:21:46', '2021-03-27 10:21:46'),
(199, 22, 87, '2021-03-27 10:22:02', '2021-03-27 10:22:02'),
(200, 22, 86, '2021-03-27 10:22:04', '2021-03-27 10:22:04'),
(201, 22, 84, '2021-03-27 10:22:06', '2021-03-27 10:22:06'),
(202, 22, 82, '2021-03-27 10:22:41', '2021-03-27 10:22:41'),
(203, 22, 77, '2021-03-27 10:22:45', '2021-03-27 10:22:45'),
(204, 22, 75, '2021-03-27 10:23:24', '2021-03-27 10:23:24'),
(205, 22, 70, '2021-03-27 10:23:31', '2021-03-27 10:23:31'),
(206, 22, 69, '2021-03-27 10:23:42', '2021-03-27 10:23:42'),
(207, 22, 67, '2021-03-27 10:23:44', '2021-03-27 10:23:44'),
(208, 22, 64, '2021-03-27 10:23:46', '2021-03-27 10:23:46'),
(209, 22, 63, '2021-03-27 10:23:54', '2021-03-27 10:23:54'),
(210, 22, 59, '2021-03-27 10:23:58', '2021-03-27 10:23:58'),
(211, 22, 58, '2021-03-27 10:23:59', '2021-03-27 10:23:59'),
(212, 22, 55, '2021-03-27 10:24:01', '2021-03-27 10:24:01'),
(214, 22, 53, '2021-03-27 10:24:18', '2021-03-27 10:24:18'),
(215, 22, 51, '2021-03-27 10:24:22', '2021-03-27 10:24:22'),
(216, 22, 48, '2021-03-27 10:24:36', '2021-03-27 10:24:36'),
(217, 22, 45, '2021-03-27 10:24:40', '2021-03-27 10:24:40'),
(218, 22, 42, '2021-03-27 10:24:53', '2021-03-27 10:24:53'),
(219, 22, 41, '2021-03-27 10:24:56', '2021-03-27 10:24:56'),
(220, 22, 18, '2021-03-27 10:24:59', '2021-03-27 10:24:59'),
(221, 23, 98, '2021-03-27 10:26:33', '2021-03-27 10:26:33'),
(222, 23, 97, '2021-03-27 10:26:34', '2021-03-27 10:26:34'),
(223, 23, 96, '2021-03-27 10:26:40', '2021-03-27 10:26:40'),
(224, 23, 95, '2021-03-27 10:26:49', '2021-03-27 10:26:49'),
(225, 23, 91, '2021-03-27 10:26:54', '2021-03-27 10:26:54'),
(226, 23, 86, '2021-03-27 10:27:13', '2021-03-27 10:27:13'),
(227, 23, 89, '2021-03-27 10:27:16', '2021-03-27 10:27:16'),
(228, 23, 84, '2021-03-27 10:27:19', '2021-03-27 10:27:19'),
(229, 23, 77, '2021-03-27 10:27:32', '2021-03-27 10:27:32'),
(230, 23, 75, '2021-03-27 10:27:45', '2021-03-27 10:27:45'),
(231, 23, 73, '2021-03-27 10:27:49', '2021-03-27 10:27:49'),
(232, 23, 70, '2021-03-27 10:27:52', '2021-03-27 10:27:52'),
(233, 23, 69, '2021-03-27 10:28:00', '2021-03-27 10:28:00'),
(234, 23, 67, '2021-03-27 10:28:03', '2021-03-27 10:28:03'),
(235, 23, 65, '2021-03-27 10:28:06', '2021-03-27 10:28:06'),
(236, 23, 64, '2021-03-27 10:28:08', '2021-03-27 10:28:08'),
(237, 23, 54, '2021-03-27 10:28:15', '2021-03-27 10:28:15'),
(238, 23, 51, '2021-03-27 10:28:23', '2021-03-27 10:28:23'),
(239, 23, 48, '2021-03-27 10:28:31', '2021-03-27 10:28:31'),
(240, 23, 45, '2021-03-27 10:28:36', '2021-03-27 10:28:36'),
(241, 23, 42, '2021-03-27 10:28:46', '2021-03-27 10:28:46'),
(242, 23, 18, '2021-03-27 10:28:55', '2021-03-27 10:28:55'),
(243, 24, 19, '2021-03-27 10:30:43', '2021-03-27 10:30:43'),
(244, 24, 42, '2021-03-27 10:30:48', '2021-03-27 10:30:48'),
(245, 24, 47, '2021-03-27 10:31:07', '2021-03-27 10:31:07'),
(246, 24, 45, '2021-03-27 10:31:07', '2021-03-27 10:31:07'),
(247, 24, 54, '2021-03-27 10:31:13', '2021-03-27 10:31:13'),
(248, 24, 51, '2021-03-27 10:31:17', '2021-03-27 10:31:17'),
(249, 24, 63, '2021-03-27 10:31:25', '2021-03-27 10:31:25'),
(250, 24, 59, '2021-03-27 10:31:28', '2021-03-27 10:31:28'),
(251, 24, 55, '2021-03-27 10:31:31', '2021-03-27 10:31:31'),
(252, 24, 74, '2021-03-27 10:31:45', '2021-03-27 10:31:45'),
(253, 24, 75, '2021-03-27 10:31:45', '2021-03-27 10:31:45'),
(254, 24, 83, '2021-03-27 10:31:59', '2021-03-27 10:31:59'),
(255, 24, 80, '2021-03-27 10:32:01', '2021-03-27 10:32:01'),
(256, 24, 77, '2021-03-27 10:32:04', '2021-03-27 10:32:04'),
(257, 24, 95, '2021-03-27 10:32:14', '2021-03-27 10:32:14'),
(258, 24, 93, '2021-03-27 10:32:17', '2021-03-27 10:32:17'),
(259, 24, 91, '2021-03-27 10:32:19', '2021-03-27 10:32:19'),
(260, 24, 99, '2021-03-27 10:32:25', '2021-03-27 10:32:25'),
(261, 24, 97, '2021-03-27 10:32:28', '2021-03-27 10:32:28'),
(262, 24, 96, '2021-03-27 10:32:29', '2021-03-27 10:32:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gnAuI7B1AhyxJVTweWQOGSqbVdnfHOMTix5CncZy', 14, '189.217.97.217', 'Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZzBjMGFBWEFzN1VkNWEydTZtSFhVVUJMS0Y2ZXNVQUhLSE1jc2RTVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE3NDoiaHR0cDovL3VsaXNlcy1zb2NpYWwtYXBwLmF0d2VicGFnZXMuY29tL2ltYWdlL2ZpbGUvMTYxNjgwNDQxNCU1QiUyMDEyY3MlMjAlNUQlMjBJbnN0YWdyYW0lMjAtJTIwVGhhbmglMjBYdSVDMyVBMm4lMjBDJUUxJUJCJUE3YSUyMENoJUMzJUJBbmclMjBUYSUyMC0lMjBfJTIwTiVFMSVCQiVBRiUyMF8uanBnIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCR4ZmJlWERCeHpBa2tJeDlJNUIwL211UUQ0SlRSVjBiVWZMc1ZPejZMbU8yNlFQOTJlN083RyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkeGZiZVhEQnh6QWtrSXg5STVCMC9tdVFENEpUUlYwYlVmTHNWT3o2TG1PMjZRUDkyZTdPN0ciO30=', 1616901246),
('k3MlZyfGddbenJalG4rtrcQfPXZ1JRWoWfWazOzk', 14, '189.217.97.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTE9abGVvdHAzSjRNbFlSbXJRYVU1aFFMdkJpaGdEcVdqNVY4ZXp6VSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjkxOiJodHRwOi8vdWxpc2VzLXNvY2lhbC1hcHAuYXR3ZWJwYWdlcy5jb20vdXNlci9hdmF0YXIvMTYxNjg0MDQ1Nndpc2hfYnlfa3IwbnByMW56LWQ5N254NXMuanBnIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCR4ZmJlWERCeHpBa2tJeDlJNUIwL211UUQ0SlRSVjBiVWZMc1ZPejZMbU8yNlFQOTJlN083RyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkeGZiZVhEQnh6QWtrSXg5STVCMC9tdVFENEpUUlYwYlVmTHNWT3o2TG1PMjZRUDkyZTdPN0ciO30=', 1616898309),
('I3BoLiBtm5wkvjhQHHv03IoCS92GHgpjJvsba46b', NULL, '35.245.188.175', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiblB0WWxDcWpCaFZXMVJjSkpXOUZiMjBsdWtRYUtIdkp2bGVrQzNpdCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NDoiaHR0cDovL3VsaXNlcy1zb2NpYWwtYXBwLmF0d2VicGFnZXMuY29tL2hvbWUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NToiaHR0cDovL3VsaXNlcy1zb2NpYWwtYXBwLmF0d2VicGFnZXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1616897253),
('6LmIunavVo06f4EpyecW1tGUn30p9RJoFBooyKFj', NULL, '35.245.188.175', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVBvVndmVzFiSnRKOXR4aVlkYk9FSGxQdW9GeHhuSmJCUlN2VUJaQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly91bGlzZXMtc29jaWFsLWFwcC5hdHdlYnBhZ2VzLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1616897254),
('eo5wCDF7zu3XymIRlUVfIxKFSALjNSoYWI8VHYM1', NULL, '35.185.241.102', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic3NyT0w1WERua3FKMTdwQXVxaHRxN1J4ZzRYMUVXOGxmZlh6d1pKVSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NDoiaHR0cDovL3VsaXNlcy1zb2NpYWwtYXBwLmF0d2VicGFnZXMuY29tL2hvbWUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NToiaHR0cDovL3VsaXNlcy1zb2NpYWwtYXBwLmF0d2VicGFnZXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1616897797);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nick` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `nick`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(22, 'user', 'Renalee', 'Sage', 'RenaleeSage', 'renaleesage@renaleesage.com', NULL, '$2y$10$PzkTB9N26GBKfPzO63Y9PuKr8iokYaE0b5zBIs0sW1mE4wrnrOhWm', NULL, NULL, NULL, NULL, '1616840456wish_by_kr0npr1nz-d97nx5s.jpg', '2021-03-26 20:25:26', '2021-03-27 10:20:56'),
(20, 'user', 'Lenox', 'Ryven', 'LenoxRyven', 'lenoxryven@lenoxryven.com', NULL, '$2y$10$K7QMdrShzuirwzaWGLG2vuVmSCFP7xlhTqtfXbpEzy5uSdvfh.KLS', NULL, NULL, NULL, NULL, '16168779498cf45455e45a244164ca8b437900baba9e3f1bfc_hq.jpg', '2021-03-26 20:21:00', '2021-03-27 20:45:49'),
(21, 'user', 'Straus', 'Taewen', 'StrausTaewen', 'straustaewen@straustaewen.com', NULL, '$2y$10$7C39NEifj0dxPmg9wW7Mveb1/8dtU1m/D/0xs7ruiWv/4MvByV3QW', NULL, NULL, NULL, NULL, '1616841284Yo también.jpg', '2021-03-26 20:21:52', '2021-03-27 10:34:44'),
(19, 'user', 'Soko', 'Cassian', 'SokoCassian', 'sokocassian@sokocassian.com', NULL, '$2y$10$8PbIbQ/2o2xT7ELRnBgD6.Yfrls8quuAMq6CCDMW0AElmJdkoaGtO', NULL, NULL, NULL, NULL, '1616840037101830578_743634853078607_6589368508042182656_n.jpg', '2021-03-26 20:19:34', '2021-03-27 10:13:57'),
(17, 'user', 'Fintis', 'Embre', 'FintisEmbre', 'fintisembre@fintisembre.com', NULL, '$2y$10$Rvh/RyiMIHZtnMvPFW8LLubbgSR9rp4NvrtBD1RVTQPSJkH6YcBJm', NULL, NULL, NULL, NULL, NULL, '2021-03-26 20:16:58', '2021-03-26 20:16:58'),
(18, 'user', 'Syrana', 'Clawsen', 'SyranaClaw', 'syranaclawsen@syranaclawsen.com', NULL, '$2y$10$YQKpv20rSRPxtyfGKiapruTWalllq251FFsSkkeAzJHuylUmf59IO', NULL, NULL, NULL, NULL, '1616839958284c85098d433660f1bf3e52fac137b8.jpg', '2021-03-26 20:18:26', '2021-03-27 10:12:38'),
(23, 'user', 'Antia', 'Palra', 'AntiaPalra', 'antiapalra@antiapalra.com', NULL, '$2y$10$zwoQzjKSzx4QUB/LVUY9aOKg1aTXmGKmZapTaXDiw5s9pwoKfIhqy', NULL, NULL, NULL, NULL, '1616840962CatTime.jpg', '2021-03-26 20:26:21', '2021-03-27 10:29:23'),
(24, 'user', 'Asralyn', 'Rankar', 'AsralynRan', 'asralynrankar@asralynrankar.com', NULL, '$2y$10$Tb4iQ05/ew/VNiVjLsMTCuCSYAtU.0d/J/UM5L6DrYfdj5wth5ty.', NULL, NULL, NULL, NULL, '16168778271608447923FB_IMG_1607994139812.jpg', '2021-03-26 20:27:21', '2021-03-27 20:43:47'),
(16, 'user', 'Heron', 'du Blanc', 'HeronBlanc', 'herondublanc@herondublanc.com', NULL, '$2y$10$FT/BfnN05rugC1CMo7rpQeNqq/4RnzvQzD43Sx/xBpsvodduRSufW', NULL, NULL, NULL, NULL, '161683950382PIGEON.jpg', '2021-03-26 19:44:52', '2021-03-27 10:05:03'),
(14, 'user', 'Admin', 'Admin', 'Admin', 'admin@admin.com', NULL, '$2y$10$xfbeXDBxzAkkIx9I5B0/muQD4JTRV0bUfLsVOz6LmO26QP92e7O7G', NULL, NULL, NULL, NULL, '1609461885images (1).jpg', '2020-12-20 07:10:27', '2021-01-01 00:44:45');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_users` (`user_id`),
  ADD KEY `fk_comments_images` (`image_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_images_users` (`user_id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_likes_users` (`user_id`),
  ADD KEY `fk_likes_images` (`image_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
