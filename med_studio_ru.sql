-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 22 2021 г., 20:35
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `med_studio_ru`
--

-- --------------------------------------------------------

--
-- Структура таблицы `acme_stdemo_tasks`
--

CREATE TABLE `acme_stdemo_tasks` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `acme_stdemo_tasks`
--

INSERT INTO `acme_stdemo_tasks` (`id`, `title`, `is_completed`, `created_at`, `updated_at`) VALUES
(2, 'e', 0, '2021-02-17 11:40:04', '2021-02-17 11:40:04'),
(3, 'w', 0, '2021-02-17 11:40:09', '2021-02-17 11:40:09'),
(6, 'f', 0, '2021-02-20 10:13:13', '2021-02-20 10:13:13'),
(7, 'g', 0, '2021-02-20 10:13:16', '2021-02-20 10:13:16'),
(9, 'aa1', 0, '2021-02-25 06:43:24', '2021-02-25 06:43:24'),
(10, 'кке', 0, '2021-02-25 06:43:32', '2021-02-25 06:43:32');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2020-11-16 08:32:55', '2020-11-16 08:32:55'),
(2, 1, '127.0.0.1', '2020-11-16 09:06:32', '2020-11-16 09:06:32'),
(3, 1, '127.0.0.1', '2020-11-17 05:45:39', '2020-11-17 05:45:39'),
(4, 1, '127.0.0.1', '2021-01-08 12:44:29', '2021-01-08 12:44:29'),
(5, 1, '127.0.0.1', '2021-01-13 11:09:03', '2021-01-13 11:09:03'),
(6, 1, '127.0.0.1', '2021-02-04 07:56:51', '2021-02-04 07:56:51'),
(7, 1, '127.0.0.1', '2021-02-17 11:09:09', '2021-02-17 11:09:09'),
(8, 1, '127.0.0.1', '2021-02-17 11:21:58', '2021-02-17 11:21:58'),
(9, 1, '127.0.0.1', '2021-02-17 11:22:19', '2021-02-17 11:22:19'),
(10, 6, '127.0.0.1', '2021-02-19 08:34:38', '2021-02-19 08:34:38'),
(11, 1, '127.0.0.1', '2021-03-20 06:57:07', '2021-03-20 06:57:07'),
(12, 1, '127.0.0.1', '2021-04-21 15:59:13', '2021-04-21 15:59:13'),
(13, 1, '127.0.0.1', '2021-05-10 13:07:19', '2021-05-10 13:07:19'),
(14, 1, '127.0.0.1', '2021-05-14 14:15:34', '2021-05-14 14:15:34'),
(15, 1, '127.0.0.1', '2021-05-14 15:42:52', '2021-05-14 15:42:52'),
(16, 1, '127.0.0.1', '2021-05-28 12:24:38', '2021-05-28 12:24:38'),
(17, 1, '127.0.0.1', '2021-06-01 09:33:08', '2021-06-01 09:33:08'),
(18, 1, '127.0.0.1', '2021-06-01 09:55:02', '2021-06-01 09:55:02'),
(19, 1, '127.0.0.1', '2021-06-11 13:09:43', '2021-06-11 13:09:43'),
(20, 1, '127.0.0.1', '2021-06-14 13:23:27', '2021-06-14 13:23:27'),
(21, 1, '127.0.0.1', '2021-06-15 10:59:23', '2021-06-15 10:59:23'),
(22, 1, '127.0.0.1', '2021-06-22 16:10:05', '2021-06-22 16:10:05'),
(23, 1, '127.0.0.1', '2021-07-02 10:04:47', '2021-07-02 10:04:47'),
(24, 1, '127.0.0.1', '2021-07-05 10:10:41', '2021-07-05 10:10:41'),
(25, 1, '127.0.0.1', '2021-07-05 10:12:12', '2021-07-05 10:12:12'),
(26, 1, '46.61.113.68', '2021-07-08 11:49:06', '2021-07-08 11:49:06'),
(27, 1, '46.61.113.68', '2021-07-08 13:16:23', '2021-07-08 13:16:23'),
(28, 1, '127.0.0.1', '2021-07-09 14:05:58', '2021-07-09 14:05:58'),
(29, 1, '5.139.87.52', '2021-07-14 16:45:38', '2021-07-14 16:45:38'),
(30, 1, '5.139.87.52', '2021-07-14 17:05:03', '2021-07-14 17:05:03'),
(31, 1, '93.178.73.197', '2021-07-21 13:14:15', '2021-07-21 13:14:15'),
(32, 1, '188.162.185.36', '2021-10-01 22:25:03', '2021-10-01 22:25:03'),
(33, 1, '46.61.114.81', '2021-10-05 11:44:42', '2021-10-05 11:44:42'),
(34, 6, '46.61.114.81', '2021-10-05 11:46:01', '2021-10-05 11:46:01'),
(35, 1, '46.61.114.81', '2021-10-05 16:30:14', '2021-10-05 16:30:14'),
(36, 1, '46.61.114.81', '2021-10-06 10:57:24', '2021-10-06 10:57:24'),
(37, 1, '46.61.114.81', '2021-10-06 12:50:32', '2021-10-06 12:50:32'),
(38, 1, '127.0.0.1', '2021-10-21 06:13:01', '2021-10-21 06:13:01'),
(39, 1, '127.0.0.1', '2021-10-21 09:03:26', '2021-10-21 09:03:26'),
(40, 1, '109.165.74.37', '2021-10-23 09:17:58', '2021-10-23 09:17:58'),
(41, 1, '109.165.74.37', '2021-10-23 10:54:53', '2021-10-23 10:54:53'),
(42, 1, '188.162.144.74', '2021-11-06 17:20:36', '2021-11-06 17:20:36'),
(43, 1, '109.165.114.107', '2021-11-15 11:09:22', '2021-11-15 11:09:22');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'stom', '_', 'stom', 'modeling@bk.ru', '$2y$10$meYCErzIrOP7quhGboQ3/uxhqgGaqjQ448VFRHVSbuJs9m3PAhZPy', NULL, '$2y$10$uE.gjJ0wHZARkR8/I5vqSOL7ac5W.6zbKzE5ZBPcD/ziowPwBmbJK', NULL, '', 1, 2, NULL, '2021-11-15 11:09:22', '2020-11-16 08:31:44', '2021-11-15 11:09:22', NULL, 1),
(6, 'tester', 'tester', 'mike', 'point111-111@yandex.ru', '$2y$10$0A7cMX.Eta3HNGyMJK1pTOoJ/fvar4cnNbWFmh42/aBUO0P2.J6pO', NULL, NULL, NULL, '{\"konvertagency.doctors.edit_all\":-1,\"rainlab.builder.manage_plugins\":-1}', 0, 1, NULL, '2021-10-05 11:46:01', '2021-02-19 08:34:07', '2021-10-05 11:47:47', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int UNSIGNED NOT NULL,
  `user_group_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2020-11-16 08:31:44', '2020-11-16 08:31:44', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `namespace` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'backend', 'preferences', '{\"locale\":\"ru\",\"fallback_locale\":\"en\",\"timezone\":\"Europe\\/Moscow\",\"editor_font_size\":\"16\",\"editor_word_wrap\":\"fluid\",\"editor_code_folding\":\"manual\",\"editor_tab_size\":\"2\",\"editor_theme\":\"sqlserver\",\"editor_show_invisibles\":\"0\",\"editor_highlight_active_line\":\"1\",\"editor_use_hard_tabs\":\"0\",\"editor_show_gutter\":\"1\",\"editor_auto_closing\":\"0\",\"editor_autocompletion\":\"manual\",\"editor_enable_snippets\":\"0\",\"editor_display_indent_guides\":\"0\",\"editor_show_print_margin\":\"0\",\"user_id\":1}'),
(2, 1, 'konvertagency_doctors', 'doctors', 'lists', '{\"visible\":[\"last_name\",\"rating\",\"id\",\"slug\"],\"per_page\":\"20\"}'),
(3, 1, 'backend', 'users', 'lists', '{\"visible\":[\"login\",\"email\",\"groups\",\"role\",\"last_login\",\"is_superuser\"],\"per_page\":\"20\"}'),
(4, 6, 'backend', 'backend', 'preferences', '{\"locale\":\"ru\",\"fallback_locale\":\"en\",\"timezone\":\"UTC\",\"editor_font_size\":\"12\",\"editor_word_wrap\":\"fluid\",\"editor_code_folding\":\"manual\",\"editor_tab_size\":\"4\",\"editor_theme\":\"twilight\",\"editor_show_invisibles\":\"0\",\"editor_highlight_active_line\":\"1\",\"editor_use_hard_tabs\":\"0\",\"editor_show_gutter\":\"1\",\"editor_auto_closing\":\"0\",\"editor_autocompletion\":\"manual\",\"editor_enable_snippets\":\"0\",\"editor_display_indent_guides\":\"0\",\"editor_show_print_margin\":\"0\",\"user_id\":6}'),
(5, 1, 'konvertagency_doctors', 'galleries', 'lists', '{\"visible\":[\"id\",\"gallerie_title\",\"description\",\"slug_gallerie\"],\"per_page\":\"20\"}'),
(6, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"title\":\"\\u0414\\u043e\\u0431\\u0440\\u043e \\u043f\\u043e\\u0436\\u0430\\u043b\\u043e\\u0432\\u0430\\u0442\\u044c\",\"ocWidgetWidth\":7,\"ocWidgetNewRow\":0}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"title\":\"\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b\",\"ocWidgetWidth\":7,\"ocWidgetNewRow\":null}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"title\":\"\\u0412\\u0435\\u0431-\\u0441\\u0430\\u0439\\u0442\",\"ocWidgetWidth\":5,\"ocWidgetNewRow\":null}}}'),
(7, 1, 'konvertagency_doctors', 'slides', 'lists', '{\"visible\":[\"slide_title\",\"description\",\"id\",\"any_title\",\"link\"],\"per_page\":\"20\"}'),
(8, 1, 'konvertagency_doctors', 'faqrow', 'lists', '{\"visible\":[\"id\",\"question\",\"faq_slug\"],\"per_page\":\"120\"}'),
(9, 1, 'konvertagency_doctors', 'tablerow', 'lists', '{\"visible\":[\"id\",\"nomination\",\"price\",\"table_slug\",\"sort_order\"],\"per_page\":\"120\",\"order\":[\"id\",\"nomination\",\"price\",\"table_slug\",\"sort_order\"]}'),
(10, 1, 'konvertagency_doctors', 'content', 'lists', '{\"visible\":[\"id\",\"description\",\"title\"],\"per_page\":\"120\"}'),
(11, 1, 'cms', 'theme', 'edit', '\"medstudio\"');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2020-11-16 08:31:44', '2020-11-16 08:31:44'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2020-11-16 08:31:44', '2020-11-16 08:31:44');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL),
(2, 6, NULL, 0, NULL, 0, NULL, 0, NULL),
(3, 1, '188.162.144.189', 0, NULL, 0, NULL, 0, NULL),
(4, 1, '46.61.113.68', 0, NULL, 0, NULL, 0, NULL),
(5, 1, '87.117.57.52', 0, NULL, 0, NULL, 0, NULL),
(6, 1, '5.139.100.248', 0, NULL, 0, NULL, 0, NULL),
(7, 1, '5.139.87.52', 0, NULL, 0, NULL, 0, NULL),
(8, 1, '46.61.17.35', 0, NULL, 0, NULL, 0, NULL),
(9, 1, '31.23.42.231', 0, NULL, 0, NULL, 0, NULL),
(10, 1, '5.139.152.113', 0, NULL, 0, NULL, 0, NULL),
(11, 1, '93.178.73.197', 0, NULL, 0, NULL, 0, NULL),
(12, 1, '87.117.60.204', 0, NULL, 0, NULL, 0, NULL),
(13, 1, '5.139.138.143', 0, NULL, 0, NULL, 0, NULL),
(14, 1, '31.23.96.55', 0, NULL, 0, NULL, 0, NULL),
(15, 1, '5.139.135.84', 0, NULL, 0, NULL, 0, NULL),
(16, 1, '87.117.49.235', 0, NULL, 0, NULL, 0, NULL),
(17, 1, '188.114.17.134', 0, NULL, 0, NULL, 0, NULL),
(18, 1, '188.162.185.36', 0, NULL, 0, NULL, 0, NULL),
(19, 1, '46.61.114.81', 0, NULL, 0, NULL, 0, NULL),
(20, 1, '5.139.71.200', 0, NULL, 0, NULL, 0, NULL),
(21, 1, '87.117.49.42', 0, NULL, 0, NULL, 0, NULL),
(22, 1, '109.165.74.37', 0, NULL, 0, NULL, 0, NULL),
(23, 1, '93.178.114.62', 0, NULL, 0, NULL, 0, NULL),
(24, 1, '188.114.51.229', 0, NULL, 0, NULL, 0, NULL),
(25, 1, '87.117.60.196', 0, NULL, 0, NULL, 0, NULL),
(26, 1, '87.117.60.240', 0, NULL, 0, NULL, 0, NULL),
(27, 1, '188.162.144.74', 0, NULL, 0, NULL, 0, NULL),
(28, 1, '93.178.88.94', 0, NULL, 0, NULL, 0, NULL),
(29, 1, '109.165.114.107', 0, NULL, 0, NULL, 0, NULL),
(30, 1, '31.23.14.194', 0, NULL, 0, NULL, 0, NULL),
(31, 1, '5.139.118.18', 0, NULL, 0, NULL, 0, NULL),
(32, 1, '5.139.139.202', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int UNSIGNED NOT NULL,
  `theme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `old_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int UNSIGNED NOT NULL,
  `source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int UNSIGNED NOT NULL,
  `master_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pivot_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `session_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `deferred_bindings`
--

INSERT INTO `deferred_bindings` (`id`, `master_type`, `master_field`, `slave_type`, `slave_id`, `pivot_data`, `session_key`, `is_bind`, `created_at`, `updated_at`) VALUES
(329, 'KonvertAgency\\Doctors\\Models\\Doctor', 'PhotoDoctor', 'System\\Models\\File', '166', NULL, 'NGn93k90yYCQbqriKAWeyQFT5iwjA021zqVB7myP', 1, '2021-02-06 09:06:22', '2021-02-06 09:06:22'),
(670, 'KonvertAgency\\Doctors\\Models\\Country', 'flag', 'System\\Models\\File', '485', NULL, '0QcyppVF6sH5Pask7uV1BRkl6TANNgMoUBv0dDfR', 1, '2021-03-24 12:58:04', '2021-03-24 12:58:04'),
(727, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, '9yNeHO2L4epfY57lxd1IMBhkGksEL8N6FIIpyHLZ', 0, '2021-03-29 11:29:27', '2021-03-29 11:29:27'),
(728, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, 'E0qG8sASSjtmFRwJQzj6MpYa6ucAJiQJENzqj2pD', 0, '2021-03-29 11:29:45', '2021-03-29 11:29:45'),
(729, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, 'syuajdFsyd3uRrCPBBHMGhXtLjMNp6iGnJ7M3iPj', 0, '2021-03-29 11:29:55', '2021-03-29 11:29:55'),
(730, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, 'jPzAMxynNV5Ltd4k5rXMMeeEkXcPK795rN12S4XZ', 0, '2021-03-29 11:30:08', '2021-03-29 11:30:08'),
(731, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, 'r5WpakFWMHSZ0x9smHZVm0H4nvLb3PQEUHGgVwZY', 0, '2021-03-29 11:30:52', '2021-03-29 11:30:52'),
(732, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, 'uQtIFc6uJdvOWih4G4neMBSx9OHxr38SFwO5SAUK', 0, '2021-03-29 11:31:31', '2021-03-29 11:31:31'),
(733, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, '8zotARjeFV4YfZbDCG7dRZ32xfSGjNGhbbd2FKOT', 0, '2021-03-29 11:32:42', '2021-03-29 11:32:42'),
(734, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, 'TYm3byEJe6eXaLfRsYq3lh85e93CmqkUPiADk1dF', 0, '2021-03-29 11:36:40', '2021-03-29 11:36:40'),
(735, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '523', NULL, 'kDhf24Em2p4iEowAwsg8ILFwhhnDD9DoqzKvU7sz', 0, '2021-03-29 11:37:16', '2021-03-29 11:37:16'),
(738, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '524', NULL, 'GSrTMe5g1YisrJ30uRbqJm6SNMuYQGhPSBBDRfXK', 0, '2021-03-29 11:50:19', '2021-03-29 11:50:19'),
(806, 'KonvertAgency\\Doctors\\Models\\Slides', 'img_slide', 'System\\Models\\File', '547', NULL, 'Kywjyh0ARiFrYhLnOmNbD2EFDqTNJhTH4rb9nn7U', 0, '2021-04-21 17:15:18', '2021-04-21 17:15:18'),
(1174, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '850', NULL, '25i1v9QaZoe6Gld5oyaEmENuZJ4l2CC7HALhlfXG', 1, '2021-06-25 13:21:41', '2021-06-25 13:21:41'),
(1177, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '852', NULL, 'VQUpjLdiG7pMmIIyByN7NqONOetY5vqpYimQSyK2', 1, '2021-06-25 13:24:42', '2021-06-25 13:24:42'),
(1181, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '854', NULL, 'biaFxmqmWQktI6mUpXm2ESRHDjZQfPWZ1xSNlVu8', 0, '2021-06-25 13:27:19', '2021-06-25 13:27:19'),
(1186, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '856', NULL, 'IA3hMMMi8jWt5P3kzZmPrsAjnaoKFk3PoQhZX3Hu', 0, '2021-06-25 13:34:30', '2021-06-25 13:34:30'),
(1188, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '857', NULL, '8dfQsZUdJZkKzC92bTgmfaowQcbAPGpLGCYv1mS7', 1, '2021-06-25 13:39:05', '2021-06-25 13:39:05'),
(1190, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '858', NULL, 'juXRHRFiYYWczE6JTn9RhFbx2xuAiOaSJchhPkZX', 0, '2021-06-25 13:45:15', '2021-06-25 13:45:15'),
(1191, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '858', NULL, '89hIchIrOSdKvZ8kbHEUSf6S3B14FSWPE8OKQY2x', 0, '2021-06-25 13:45:48', '2021-06-25 13:45:48'),
(1194, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '859', NULL, 'DbiJVRGMEWttwwSb4C9M5TDEjv0y02yPLjatxsRR', 0, '2021-06-25 13:47:56', '2021-06-25 13:47:56'),
(1197, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '860', NULL, 'G3ZKvxge0WBL8SC48WvXFWliLSM4nAGo3QqLZ4XU', 0, '2021-06-25 13:59:57', '2021-06-25 13:59:57'),
(1198, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '861', NULL, 'G3ZKvxge0WBL8SC48WvXFWliLSM4nAGo3QqLZ4XU', 1, '2021-06-25 14:00:01', '2021-06-25 14:00:01'),
(1199, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '860', NULL, '6BOvr5CKAp5TY2azlX5x1iRScrxK2BteDarnFA9Z', 0, '2021-06-25 14:00:16', '2021-06-25 14:00:16'),
(1200, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '862', NULL, '6BOvr5CKAp5TY2azlX5x1iRScrxK2BteDarnFA9Z', 1, '2021-06-25 14:00:20', '2021-06-25 14:00:20'),
(1201, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '860', NULL, '8akRIukHYnXnI5ac4Bxgq6l0DcJks3vFXQMreJYT', 0, '2021-06-25 14:13:13', '2021-06-25 14:13:13'),
(1202, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '860', NULL, '4on5qumkXcUQ3Eh2uy5U47akW6eVf8Gd9Uwp3AwY', 0, '2021-06-25 14:13:33', '2021-06-25 14:13:33'),
(1203, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '863', NULL, '4on5qumkXcUQ3Eh2uy5U47akW6eVf8Gd9Uwp3AwY', 1, '2021-06-25 14:13:37', '2021-06-25 14:13:37'),
(1204, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '860', NULL, '8tucTiEaUcJE7FJExOaM2uiq1Honqe1QhCnaAo9D', 0, '2021-06-25 14:18:46', '2021-06-25 14:18:46'),
(1205, 'KonvertAgency\\Doctors\\Models\\TitlePage', 'bg_title', 'System\\Models\\File', '864', NULL, '8tucTiEaUcJE7FJExOaM2uiq1Honqe1QhCnaAo9D', 1, '2021-06-25 14:18:50', '2021-06-25 14:18:50');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_`
--

CREATE TABLE `konvertagency_doctors_` (
  `id` int UNSIGNED NOT NULL,
  `rating` smallint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_year_work` smallint DEFAULT NULL,
  `specialities` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `specialization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `view_in_page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vrachi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_`
--

INSERT INTO `konvertagency_doctors_` (`id`, `rating`, `name`, `last_name`, `patronymic`, `start_year_work`, `specialities`, `specialization`, `description`, `slug`, `view_in_page`) VALUES
(14, 1, 'Алексей', 'Еременко', 'Алексеевич', 2001, 'Стоматолог-ортопед, Гнатолог', '', '', 'eremenko', 'vrachi restavracziya-zubov protezirovanie-zubov viniry semnye-zubnye-protezy koronka-na-zub o-klinike'),
(15, 9, 'Наталья', 'Керейтова', 'Владимировна', 2008, 'Стоматолог-ортопед, Стоматолог-хирург', '', '', 'kerejtova', 'vrachi restavracziya-zubov implantacziya-zubov protezirovanie-zubov semnye-zubnye-protezy koronka-na-zub udalenie-zuba viniry o-klinike'),
(16, 7, 'Элина', 'Киризели', 'Сергеевна', 2002, 'Стоматолог-ортодонт', '', '', 'kirizeli', 'vrachi ispravlenie-prikusa  brekety o-klinike'),
(17, 4, 'Ираида', 'Еременко', 'Леонидовна', 2003, 'Косметолог', '', '', 'eremenko-iraida', 'vrachi o-klinike'),
(18, 8, 'Наталиа', 'Хиблашвили', 'Гурамовна', 2010, 'Хирург-имплантолог', '', '', 'hiblashvili', 'vrachi implantacziya-zubov udalenie-zuba o-klinike'),
(19, 6, 'Антон', 'Никулушкин', 'Артамонович', 2011, 'Стоматолог-терапевт', '', '', 'nikulushkin', 'vrachi lechenie-zubov lechenie-pulpita restavracziya-zubov lechenie-kariesa o-klinike'),
(20, 2, 'София', 'Кибизова', 'Витальевна', 2016, 'Cтоматолог-терапевт', '', '', 'kibizova', 'vrachi lechenie-zubov lechenie-pulpita restavracziya-zubov lechenie-kariesa lechenie-desen professionalnaya-chistka-zubov o-klinike'),
(21, 3, 'Шамиль', 'Борлаков', 'Рашидович', 2011, 'Стоматолог-хирург, Стоматолог-имплантолог', '', '', 'borlakov', 'vrachi implantacziya-zubov udalenie-zuba o-klinike'),
(22, 5, 'Нелли', 'Давыдова', 'Олеговна', 2017, 'Стоматолог-ортодонт', '', '', 'davydova', 'vrachi ispravlenie-prikusa brekety o-klinike'),
(23, 10, 'Дарья', 'Селютина', 'Сергеевна', NULL, 'Медсестра', '', '', 'selyutina', 'vrachi'),
(24, 11, 'Юлия', 'Вишниветская', 'Игоревна', NULL, 'Администратор', '', '', 'vishnivetskaya', 'vrachi');

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_brand`
--

CREATE TABLE `konvertagency_doctors_brand` (
  `id` int UNSIGNED NOT NULL,
  `name_brand` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_brand`
--

INSERT INTO `konvertagency_doctors_brand` (`id`, `name_brand`, `country`) VALUES
(1, 'нет', 'нет'),
(2, 'Straumann', 'Швейцария'),
(3, 'Mis', 'Израиль'),
(4, 'Bego Semados', 'Германия'),
(5, 'Dentium', 'Южная Корея'),
(6, 'Nobel Biocare', 'Швейцария'),
(7, 'ROOTT', 'Швейцария'),
(8, 'OSSTEM', 'Южная Корея'),
(9, 'SGS', 'Швейцария'),
(10, 'Astra tech', 'Швеция');

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_content`
--

CREATE TABLE `konvertagency_doctors_content` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_position` smallint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_content`
--

INSERT INTO `konvertagency_doctors_content` (`id`, `title`, `description`, `text`, `img_position`) VALUES
(1, '', 'Лечение десен 1', '<p>Заболевания и воспаления десен – вторая по распространенности проблема после кариеса, с которой сталкиваются врачи нашей стоматологии. Признаком проблем может быть не только кровоточивость десен, но и наличие припухлостей, покраснений. Откладывать посещение врача при наличии подозрительных симптомов не стоит, потому что это может привести к неприятным последствиям, к развитию осложнений. Следствием станет необходимость продолжительной терапии.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>В нашей стоматологической клинике используются эффективные методы лечения, профессиональное стоматологическое оборудование. Это залог качественной терапии воспалений десен и лечения других болезней мягких тканей. В распоряжении наших специалистов диодный лазер Picasso. Он применяется для проведения различных процедур и позволяет эффективно бороться с воспалительными процессами.</p>\r\n</blockquote>', 1),
(2, '', 'Лечение десен 2 этапы лечения', '<h3>Этапы лечения</h3>\r\n\r\n<ul>\r\n	<li>Осмотр, оценка состояния полости рта.</li>\r\n	<li>При необходимости врачи проводят рентген-диагностику и другие специальные мероприятия.</li>\r\n	<li>Составление плана лечения.</li>\r\n	<li>Дополнительно проводится обработка (чистка). Будут удалены камни с зубов, налет, бактерии.</li>\r\n	<li>Непосредственно лечение (зависит от поражения здоровых тканей, способ терапии будет выбран доктором).</li>\r\n</ul>\r\n\r\n<blockquote>\r\n\r\n	<p>Врачи нашей стоматологии используют в работе диодный лазер Picasso. Он позволяет добиться лучших терапевтических результатов.</p>\r\n</blockquote>\r\n\r\n<h3>Преимущества использования лазера</h3>\r\n\r\n<ul>\r\n	<li>Стерилизация тканей.</li>\r\n	<li>Качественная обработка пораженных участков.</li>\r\n	<li>Создание особой защитной пленки, обеспечивающей профилактику рецидивов, а также способствующей укреплению тканей полости рта.</li>\r\n	<li>Высокая эффективность терапии на начальных стадиях заболеваний.</li>\r\n</ul>', 0),
(3, '', 'Лечение десен 4 Виды заболеваний мягких тканей', '<h3>Виды заболеваний мягких тканей</h3>\r\n\r\n<h4>Гингивит</h4>\r\n\r\n<p>Это воспаление, охватывающее верхние слои десен. Инфекция не затрагивает глубокие ткани пародонта (костная ткань, цемент, корни и т. п.).</p>\r\n\r\n<p>Причинами гингивита могут быть:</p>\r\n\r\n<ul>\r\n	<li><strong>недостаточная гигиена.</strong></li>\r\n	<li><strong>неправильно проведенные ранее процедуры.</strong></li>\r\n	<li><strong>нарушения иммунного характера и др.</strong></li>\r\n</ul>\r\n\r\n<p>Врач нашей стоматологии поставит такой диагноз, если после консультации и диагностики обнаружит отек, кровоточивость или изменение цвета мягких тканей. В таком случае будет порекомендована чистка в условиях клиники и курс противовоспалительных средств. Последние нужно использовать в домашних условиях (полоскания).</p>', 1),
(4, '', 'Лечение десен Гингивит.  Это воспаление, о', '<h4>Пародонтит</h4>\r\n\r\n<p>Может стать следствием хронического гингивита. В таком случае поражение затрагивает все ткани пародонта. Процесс сопровождается постепенным накоплением налета, зубного камня под деснами. Могут образовываться глубокие пародонтальные карманы. Патологией считается разрушение периодонтальных связок и костей зубов.</p>\r\n\r\n<p>Распространенные причины:</p>\r\n\r\n<ul>\r\n	<li><strong>твердые отложения на зубах (камень).</strong></li>\r\n	<li><strong>нарушения прикуса и т. д.</strong></li>\r\n</ul>\r\n\r\n<p>Доктор нашей стоматологии порекомендует пациенту лечение, если обнаружит отечность, усадку, выделения или подвижность зубов. Решение будет принято после осмотра. Необходимым станет курс процедур, в том числе комплексное медикаментозное лечение.</p>\r\n\r\n<h4>Пародонтоз</h4>\r\n\r\n<p>Это процесс разрушения десны, не сопровождающийся характерными для воспаления признаками. На начальных стадиях пациент может не ощущать дискомфорта.</p>\r\n\r\n<p>Причины пародонтоза:</p>\r\n\r\n<ul>\r\n	<li><strong>наличие системных заболеваний.</strong></li>\r\n	<li><strong>невылеченный пародонтит.</strong></li>\r\n	<li><strong>возрастные изменения.</strong></li>\r\n</ul>\r\n\r\n<p>Стоматолог назначит необходимую терапию, если обнаружит рецессию, оголение зубов, их подвижность. Лечить пародонтоз потребуется долго и комплексно.</p>\r\n\r\n<h4>Свищ</h4>\r\n\r\n<p>Это шишки, образующиеся на деснах, имеющие диаметр до 10 мм. Воспаленный участок является очагом гноевыделения из воспаленного зуба.</p>\r\n\r\n<p>Причина – хронические инфекции корней зубов. Лечение будет комплексным.</p>', 0),
(5, '', 'Лечение десен 5 Другие методы лечения', '<h3>Другие методы лечения</h3>\r\n\r\n<p>Вылечить воспаления можно не только лазером. Другие методы:</p>\r\n\r\n<ul>\r\n	<li><strong>кюретаж </strong>(чистка камня под мягкими тканями).</li>\r\n	<li><strong>медикаментозная терапия и аппликации</strong> (уколы от кровоточивости десен, антибиотики, плазмолифтинг, мази, гели и др.).</li>\r\n	<li><strong>хирургические методы</strong> (гингивэктомия и др.).</li>\r\n</ul>', 0),
(6, '', 'имплантация 1 Установка дентальных имплантов – оптимальный в стомат', '<p>Установка дентальных имплантов – оптимальный вариант восстановления утраченных зубов. Также это один из наиболее эффективных методов реставрации. Видов процедуры множество, они позволяют решить различные задачи: восстановить жевательный ряд (нижние и верхние зубы), зону улыбки (эстетика).</p>\r\n\r\n<p>Само по себе вживление зубов – хирургическая операция. Суть – установка имплантов в костную ткань полости рта пациента. Импланты – стоматологические конструкции, которые устанавливаются в челюсти, замещают корни отсутствующих верхних или нижних зубов. На них впоследствии фиксируются протезы (коронки).</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Врачи нашей клиники используют современные технологии и методы, высокоточное стоматологическое оборудование. Это гарантия исключения риска осложнений, высокой приживаемости имплантов и их качества.</p>\r\n</blockquote>', 0),
(7, '', 'Имплантация в нашей клинике – без боли и разрезов', '<h3>Имплантация в нашей клинике – без боли и разрезов</h3>\r\n\r\n<p>Это обеспечивается благодаря использованию хирургического шаблона. Для создания последнего стоматологи клиники применяют компьютерные программы, где моделируют челюсть пациента. После определения положения имплантов и изготовления шаблона он будет установлен в полости рта пациента. Следующий этап – непосредственно проведение процедуры.</p>\r\n\r\n<p><strong>Плюсы хирургического шаблона:</strong></p>\r\n\r\n<ul>\r\n	<li>повышение точности вмешательства.</li>\r\n	<li>возможность прогнозирования результатов.</li>\r\n	<li>вероятность осложнений отсутствует.</li>\r\n	<li>гарантия правильной установки.</li>\r\n	<li>отклонение от протокола полностью исключено, рисков нет.</li>\r\n</ul>\r\n\r\n<p>Перед процедурой будет сделан специальный снимок с помощью компьютерного томографа высокой точности. Анализ снимка специалистом позволяет выбрать подходящий имплант и оценить фактическое состояние костной ткани пациента.</p>', 0),
(8, 'Плюсы имплантации', 'имплантация Плюсы имплантации', '<p>Вживление имплантов для последующего восстановления верхних и нижних зубов – один из лучших стоматологических методов. Его преимущества:</p>\r\n\r\n<ul>\r\n	<li>здоровые постоянные зубы не нужно обтачивать (в отличии от установки моста).</li>\r\n	<li>восстановить можно один любой зуб или целую группу.</li>\r\n	<li>импланты обеспечивают надежную фиксацию протезов, препятствуют атрофии челюсти.</li>\r\n</ul>', 0),
(9, 'Методы процедуры', 'имплантация Методы процедуры', '<p>Имплантация проводится стоматологами нашей клиники различными методами. Выбор в пользу той или иной методики будет сделан врачом после консультации и осмотра с учетом наличия дефектов, показаний, противопоказаний.</p>\r\n\r\n<p>Мы не проводим скуловую, а также базальную имплантацию, потому что эти методы характеризуются множеством минусов. Яркий пример – низкая приживаемость.</p>\r\n\r\n<p><strong>Классическая двухэтапная методика (с отсроченной нагрузкой)</strong></p>\r\n\r\n<p>Установка протеза осуществляется спустя несколько месяцев после приживления.</p>\r\n\r\n<p>Особенности:</p>\r\n\r\n<ul>\r\n	<li>отсутствие риска отторжения.</li>\r\n	<li>возможность решения даже сложных клинических задач двухэтапным методом.</li>\r\n</ul>\r\n\r\n<p><strong>Одноэтапная методика с немедленной нагрузкой</strong></p>\r\n\r\n<p>Врач нашей клиники порекомендует одноэтапную имплантацию с немедленной нагрузкой при условии отсутствия противопоказаний. Суть метода сводится к тому, что в день процедуры будет установлен временный протез.</p>\r\n\r\n<p>Особенности:</p>\r\n\r\n<ul>\r\n	<li>моментальное решение эстетической задачи.</li>\r\n	<li>одноэтапный метод при условии недостатка костной ткани не осуществляется.</li>\r\n</ul>\r\n\r\n<p>Также одноэтапную методику имплантации челюсти называют одномоментной. Разница в том, что в последнем случае имплант вживляется в лунку удаленного зуба (или в лунки соседних зубных единиц).</p>', 0),
(10, 'Экспресс-имплантация', 'Имплантация Экспресс-имплантация', '<p>Безоперационная методика. Рассечение десны (верхней или нижней, зависит от места установки) не требуется. Вживление осуществляется через прокол.</p>\r\n\r\n<p>Особенности:</p>\r\n\r\n<ul>\r\n	<li>сохранение естественного контура десен.</li>\r\n	<li>низкий реабилитационный период.</li>\r\n</ul>\r\n\r\n<p><strong>Скуловая</strong></p>\r\n\r\n<p>Удлиненный имплант устанавливается выше десны в скуловой бугор. Метод не используется при наличии лор-заболеваний, характеризуется низкой приживаемостью.</p>\r\n\r\n<p><strong>Базальная имплантация</strong></p>\r\n\r\n<p>Титановый штифт устанавливается в базальный слой костной ткани. Как и скуловая методика, врачами нашей клиники не используется ввиду множества недостатков</p>', 0),
(14, '', 'виниры Поставить виниры – значит', '<p>Поставить виниры – значит, не просто избавиться от косметических дефектов, но и скрыть несовершенства эмали, обрести голливудскую улыбку. Наши врачи используют современные технологии, материалы и профессиональное стоматологическое оборудование. Это гарантия качественной коррекции визуальных недостатков. Виниринг – сфера стоматологии, в которой наши врачи знают толк.</p>', 0),
(15, '', 'виниры Что такое виниры', '<h3>Что такое виниры</h3>\r\n\r\n<p>Виниры для зубов крепятся на внешнюю сторону собственных зубов пациента после их обточки или без нее и позволяют добиться высоких эстетических результатов. Красивая улыбка – это не мечта, а реальность!</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Врачи нашей стоматологии изготавливают виниры из материалов премиум-класса, применяют совершенные технологии, что обеспечивает максимальное соответствие естественным виду и форме зубов пациента.</p>\r\n</blockquote>\r\n\r\n<p><strong>Показания для процедуры</strong></p>\r\n\r\n<p>Врач порекомендует поставить виниры в нашей клинике в нескольких случаях:</p>\r\n\r\n<ul>\r\n	<li>форма зубов нарушена.</li>\r\n	<li>зубная эмаль повреждена, есть сколы.</li>\r\n	<li>неправильное положение отдельных единиц.</li>\r\n	<li>есть трещины, промежутки между отдельными зубами.</li>\r\n</ul>\r\n\r\n<p>Противопоказанием станет наличие заболеваний, воспалений тканей полости рта. В таком случае сначала будет проводиться лечение.</p>', 0),
(16, 'Этапы процедуры в нашей стоматологии', 'виниры Этапы процедуры в нашей стоматологии', '<ul>\r\n	<li><strong>Моделирование.</strong>\r\n		<br>После предварительного осмотра и консультации врач смоделирует будущую улыбку в программе. Пациент сможет увидеть результаты до начала установки.</li>\r\n	<li><strong>Подбор цвета.</strong>\r\n		<br>С помощью стоматологического аппарата врач выберет уровень прозрачности и структуру, соответствующие естественным зубам пациента.</li>\r\n	<li><strong>Изготовление.</strong>\r\n		<br>Посредством стоматологической технологии CAD/CAM будут изготовлены пластинки.</li>\r\n	<li><strong>Установка.</strong>\r\n		<br>Шаги зависят от выбранного метода. Если установка проводится прямым методом, сначала эмаль будет сточена до требуемой глубины, далее композит будет наложен слоями.</li>\r\n</ul>', 1),
(17, 'Виды виниров', 'виниры  Виды виниров', '<p>Существует несколько выдов изготовления виниров:</p>\r\n\r\n<ul>\r\n	<li><strong>Непрямые.</strong>&nbsp;\r\n		<br>Изготавливаются индивидуально в зуботехнической лаборатории. Для установки необходима обточка. После стоматолог поставит постоянные накладки. Такой метод считается классическим и самым надежным.</li>\r\n	<li><strong>Прямые.</strong>\r\n		<br>Позволяют получить идеальные результаты. Основные этапы установки напоминают по сути метод художественной реставрации. В таком случае осуществляется наращивание слой за слоем.</li>\r\n	<li><strong>Полупрямые.</strong>\r\n		<br>Пример – композиты. Изготавливаются после предварительного моделирования (по слепку). В нашей стоматологии этот этап исключен благодаря использованию современных стоматологических технологий.</li>\r\n</ul>\r\n\r\n<p>По материалам, из которых в стоматологии осуществляется изготовление, есть:</p>\r\n\r\n<ul>\r\n	<li><strong>Композитные виниры.</strong>\r\n		<br>Особенность – это использование для изготовления составов, напоминающих пломбировочные материалы.</li>\r\n	<li><strong>Керамические (фарфоровые).</strong>\r\n		<br>Обеспечивают максимальное соответствие естественным зубам пациента. Надежные, отличаются высокой прочностью. Бывают стеклокерамическими, циркониевыми, также выделяются люминиры. Их толщина самая маленькая, а препарирование перед установкой не нужно.</li>\r\n</ul>', 1),
(18, 'Преимущества виниров', 'виниры Преимущества виниров', '<ul>\r\n	<li>прочны, устойчивы к пищевым пигментам.</li>\r\n	<li>производятся из надежных стоматологических материалов (фарфор, композиты).</li>\r\n	<li>служат десятки лет.</li>\r\n	<li>Еще один плюс – возможность выбрать оттенок, который пожелает видеть пациент. В нашей стоматологии врачи устанавливают только качественные накладки.</li>\r\n</ul>', 0),
(20, '', 'брекеты Стоматология Авиценна предлагает', '<p>Стоматология Авиценна предлагает пациентам услугу установки брекетов (скоб на зубы). Такие конструкции применяются в стоматологических целях для исправления аномалий прикуса, коррекции неправильного смыкания нижней или верхней челюстей (ортодонтия).</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Наши врачи работают на профессиональном оборудовании, используют качественные материалы, что обеспечивает удобство ношения, беспроблемный уход, а также эффективную терапию ортодонтических аномалий (прикус, смещение зубных рядов относительно друг друга).</p>\r\n</blockquote>', 0),
(21, '', 'брекеты Показания', '<h3>Показания</h3>\r\n\r\n<p>Ортодонт нашей стоматологии порекомендует сделать брекеты при наличии тяжелых, необычных дефектов прикуса, в частности при:</p>\r\n\r\n<ul>\r\n	<li>скученности зубов.</li>\r\n	<li>давлении единиц друг на друга.</li>\r\n	<li>наклоне зубов.</li>\r\n	<li>выдвижении нижней челюсти (или верхней) вперед или назад.</li>\r\n	<li>сдвиге рядов относительно друг друга.</li>\r\n</ul>\r\n\r\n<p><strong>Установка поможет:</strong></p>\r\n\r\n<ul>\r\n	<li>исправить прикус.</li>\r\n	<li>улучшить дикцию.</li>\r\n	<li>выровнять единицы.</li>\r\n	<li>вернуть эстетику улыбке.</li>\r\n</ul>\r\n\r\n<p>Выявление показаний или противопоказаний – обязанность каждого врача до назначения установки. К примеру, при наличии кариеса или отложений в виде камня стоматолог в первую очередь вылечит проблемные единицы, проведет чистку эмали.</p>', 0),
(23, 'Этапы установки в стоматологии Авиценна', 'брекеты Этапы установки в стоматологии Авиценна', '<ul>\r\n	<li>Консультация ортодонта, подготовка плана лечения. После осмотра врач примет решение о необходимости дополнительных процедур (лечение кариеса, чистка), а также расскажет о степени искривления зубов. Дополнительно будет сделан снимок, который позволит стоматологу подобрать подходящие брекеты. Также врач снимет слепок, необходимый для изготовления системы.</li>\r\n	<li>Установка. После подготовки поверхности зубов врач зафиксирует пластинки, а затем поставит дугу (закрепит в пазах).</li>\r\n	<li>Дополнительно после установки потребуется регулярно посещать врача для замены резиночек (в случае с лигатурной) или дуги (безлигатурной системы). Врач расскажет о периодичности посещения.</li>\r\n</ul>\r\n\r\n<blockquote>\r\n\r\n	<p>После того, как брекеты выполнят свою задачу, их снимают с зубов. Стоматолог установит ретейнер с внутренней стороны зубов, при необходимости порекомендует каппы для ношения ночью. Это нужно для закрепления результатов коррекции. О сроках ношения ретейнера расскажет врач стоматологии после установки.</p>\r\n</blockquote>', 0),
(24, 'Подробнее о брекетах', 'брекеты Подробнее о брекетах', '<p>Брекеты – устройства, используемые в стоматологии для выравнивания зубов. Это современный и эффективный метод исправления ортодонтических аномалий. Принято выделять классические системы (щечные), а также лингвальные (язычные). Последние устанавливаются на соответствующей стороне зубного ряда.</p>\r\n\r\n<p>Перед тем, как поставить брекеты, ортодонт нашей стоматологии проведет осмотр, определит отклонения и необходимые терапевтические меры, а после назначит процедуру установки.</p>', 0),
(25, '', 'брекеты Разновидности Брекеты в стоматологии', '<h3>Разновидности</h3>\r\n\r\n<p>Брекеты в стоматологии принято различать по ряду признаков: тип конструкции, метод фиксации, материал, из которого изготавливаются системы.</p>\r\n\r\n<p><strong>По типу конструкции</strong> вестибулярные и лингвальные системы делятся на:</p>\r\n\r\n<ul>\r\n	<li>лигатурные.</li>\r\n	<li>безлигатурные (самолигирующие).</li>\r\n</ul>\r\n\r\n<p><strong>По типу фиксации (крепления) и конструкции</strong> в стоматологии принято выделять:</p>\r\n\r\n<ul>\r\n	<li>вестибулярные системы, которые устанавливают на наружной поверхности зубов (также внешние).</li>\r\n	<li>лингвальные – такие, которые крепятся на внутренней стороне зубов, в результате чего становятся незаметными для окружающих. Чаще всего лингвальные – цельнометаллические и самолигирующие конструкции.</li>\r\n</ul>', 1),
(26, '', 'брекеты По материалам для изготовления выделяют:', '<p><strong>По материалам для изготовления выделяют:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Металлические системы.</strong>\r\n		<br>Изготавливаются из металла (дуга, замочки и т. д.). Характеризуются высокой лечебной эффективностью.</li>\r\n	<li><strong>Керамические (сапфир-системы).&nbsp;</strong>\r\n		<br>Изготавливаются из особых сапфиров или керамики. Требуют тщательного ухода и дольше решают основную задачу – выравнивание зубов.</li>\r\n	<li><strong>Комбинированные системы&nbsp;</strong>(одновременно врач использует керамику и металл.\r\n		<br>Пример – сапфировые пластинки, замки и металлическая дуга).</li>\r\n</ul>', 0),
(27, '', 'Виниры Финальный шаг – обработка', '<p>Финальный шаг – обработка и придание накладкам максимально естественного вида. Если речь касается непрямого метода, последовательность действий такая: препарирование, моделирование; установка временных виниров не требуется. После изготовления врач зафиксирует накладки.</p>', 0),
(28, '', 'Исправление прикуса Изменение прикуса – аномалия,', '<p>Изменение прикуса – аномалия, с которой сталкиваются и взрослые пациенты нашей стоматологии, и дети. Зубочелюстные патологии требуют своевременного стоматологического вмешательства, потому что могут привести к потере зубов, стать причиной развития заболеваний, воспалений.</p>\r\n\r\n<p>Врачи-специалисты нашей стоматологии применяют эффективные методы, современное оборудование для корректировки прикуса у пациентов всех возрастов. Работаем даже со сложными патологическими нарушениями!</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Незаметные брекеты? Прозрачные каппы? Надежные пластинки? Изготовим и установим в минимально возможные сроки. Предварительно проведем лечение кариеса, воспалений десен, а также осуществим профессиональную чистку.</p>\r\n</blockquote>', 0),
(29, 'Распространенные дефекты', 'Исправление прикуса  Распространенные дефекты', '<p>Стоматологи выделяют несколько видов нарушений положения зубов и челюстей:</p>\r\n\r\n<ul>\r\n	<li><strong>глубокий прикус</strong> (верхняя челюсть перекрывает нижнюю).</li>\r\n	<li><strong>открытый</strong> (зубы не смыкаются).</li>\r\n	<li><strong>перекрестный прикус</strong> (нижняя челюсть смещена горизонтально, зубы пересекаются).</li>\r\n	<li><strong>мезиальный</strong> (нижняя челюсть выходит вперед).</li>\r\n	<li><strong>дистальный</strong> (выступает верхняя челюсть).</li>\r\n	<li><strong>дистопия&nbsp;</strong>(зубные единицы не на своих местах).</li>\r\n</ul>\r\n\r\n<p>Чтобы исправить зубы, сделать их ровными, улыбку – красивой, а также восстановить жевательную функцию, врачи в нашей стоматологии после консультации и осмотра порекомендуют один из методов, рассмотренных далее. При диагностировании заболеваний или воспалений потребуется предварительное лечение.</p>', 0),
(30, 'Методы для исправления прикуса', 'Исправление прикуса Методы для исправления прикуса', '<p>Для устранения дефектов не нужны хирургические операции. Стоматологи нашей стоматологии используют неинвазивные способы формирования правильного прикуса. Речь об ортодонтических стоматологических конструкциях: брекет-системах, съемных элайнерах и т. д. Они позволяют решить все эстетические задачи, исправить проблемы с челюстями за минимально возможные сроки.</p>', 1),
(31, '', 'Исправление прикуса  Пластинки Пластмассовые или поли', '<h3>Пластинки</h3>\r\n\r\n<p>Пластмассовые или полимерные пластинки фиксируются на постоянных зубах с помощью крючков. Также возможна установка на молочные зубы у детей, чтобы исправить ранние проявления зубочелюстных аномалий.</p>\r\n\r\n<p>Стоит отметить, что проводят установку пластинок чаще всего для коррекции ранних признаков и симптомов нарушений, потому что лечение сложных патологий требует более серьезного подхода.</p>\r\n\r\n<h3>Каппы</h3>\r\n\r\n<p>Это съемные колпачки. Ношение капп стоматолог порекомендует при:</p>\r\n\r\n<ul>\r\n	<li>незначительной скученности.</li>\r\n	<li>суженной или расширенной зубной дуге.</li>\r\n	<li>необходимости исправления рецидива.</li>\r\n</ul>\r\n\r\n<p>С их помощью устранить серьезные ортодонтические дефекты невозможно, врач подберет другое лечение при необходимости.</p>', 1),
(32, 'Почему мы?', 'Исправление прикуса Почему мы? Врач подберет', '<p>Врач подберет подходящий для решения именно вашей проблемы метод. Без боли, без скальпелей, абсолютно безопасно!</p>\r\n\r\n<p>Наши стоматологи не прибегают к методикам хирургического исправления прикуса. Есть достаточное количество вариантов процедур, не требующих хирургических вмешательств. Примеры: установка лингвальных брекетов (скоб на зубы), капп (кап), пластинок. Эти стоматологические конструкции позволяют исправить неправильный прикус даже в случае со сложными нарушениями смыкания зубного ряда.</p>', 0),
(33, '', 'Коронки на зубы Стоматологические коронки – это специальны', '<p>Стоматологические коронки – это специальные ортопедические конструкции. Они устанавливаются на собственные зубы пациента при условии невозможности их восстановления другими стоматологическими способами. Обычно установка осуществляется на сохранившиеся корни. Это позволяет восстановить эстетику улыбки, жевательную функцию, исключить разрушение соседних единиц. Возможна установка с опорой на импланты, на штифты, культевые вкладки.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Стоматологи нашей клиники используют материалы премиум-класса, работают на профессиональном стоматологическом оборудовании. Также в распоряжении сотрудников клиники собственная зуботехническая лаборатория. Это обеспечивает качество всех этапов протезирования.</p>\r\n</blockquote>', 0),
(34, '', 'Коронки на зубы Разновидности коронок  Искусственные коронки', '<h2>Разновидности коронок</h2>\r\n\r\n<p>Искусственные коронки в стоматологии принято различать по материалам, из которых они изготавливаются. Последними обусловлены сроки службы, надежность, эстетические показатели стоматологических коронок.</p>\r\n\r\n<h3>Безметалловая керамика</h3>\r\n\r\n<p><strong>Особенности:</strong></p>\r\n\r\n<ul>\r\n	<li>не содержат металла.</li>\r\n	<li>обычно устанавливаются в эстетических целях.</li>\r\n	<li>устойчивы к окраске.</li>\r\n	<li>используются преимущественно для протезирования в зоне улыбки.</li>\r\n	<li>преимущество – сходство с естественными здоровыми зубами пациента.</li>\r\n	<li>керамические протезы не вызывают аллергических реакций.</li>\r\n	<li>срок службы – высокий.</li>\r\n</ul>', 0),
(35, '', 'Коронки на зубы Цельнокерамические коронки изготавливаются', '<p>Цельнокерамические коронки изготавливаются в нашей клинике по технологии CAD/CAM, то есть вытачиваются на оборудовании CEREC 3D. Это залог долговечности, надежности и качества протезирования.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<h3>Зубные коронки из диоксида циркония</h3>\r\n\r\n<p><strong>Особенности:</strong></p>\r\n\r\n<ul>\r\n	<li>высокая прочность.</li>\r\n	<li>возможность протезирования жевательной группы (из-за меньшей светопроницаемости протезирование фронтальной группы не осуществляется).</li>\r\n	<li>надежность и долговечность.</li>\r\n	<li>гипоаллергенность.</li>\r\n</ul>\r\n\r\n<h3>Металлические и металлокерамические</h3>\r\n\r\n<p>Бюджетная альтернатива прочим вариантам. Для металлических несъемных протезов характерны такие особенности:</p>\r\n\r\n<ul>\r\n	<li>низкие эстетические показатели, поэтому сегодня их почти не ставят.</li>\r\n	<li>еще один недостаток – вероятность возникновения аллергических реакций.</li>\r\n</ul>\r\n\r\n<p>В области установки на опорные зубы (боковые или передние) они могут спровоцировать посинение десны (синюшный оттенок является следствием окисления металла).</p>', 0),
(36, 'Какие коронки лучше?', 'Коронки на зубы Какие коронки лучше? Врачи нашей клиники', '<p>Врачи нашей клиники посоветуют сделать выбор в пользу керамики.&nbsp;</p>\r\n\r\n<p><strong>Причины:</strong></p>\r\n\r\n<ul>\r\n	<li>твердость, как у естественных зубов.</li>\r\n	<li>хорошие эстетические показатели.</li>\r\n	<li>надежность, долговечность.</li>\r\n	<li>отсутствие вероятности возникновения аллергических реакций.</li>\r\n	<li>устойчивость к пищевым красителям.</li>\r\n	<li>минимальная обточка (препарирование) перед установкой.</li>\r\n</ul>\r\n\r\n<p>Выбор в пользу металлокерамики и металла стоит делать лишь при наличии серьезных оснований.&nbsp;</p>\r\n\r\n<p><strong>Минусы протезов из них:</strong></p>\r\n\r\n<ul>\r\n	<li>неэстетичный вид.</li>\r\n	<li>высокая вероятность аллергических реакций.</li>\r\n	<li>риск посинения десны в месте установки.</li>\r\n</ul>', 1),
(37, 'Когда врач порекомендует протезирование', 'Коронки на зубы Когда врач порекомендует протезирование После консультации, осмотра', '<p>После консультации, осмотра и оценки состояния зубов и десен, врач нашей клиники порекомендует процедуру, если обнаружит:</p>\r\n\r\n<ul>\r\n	<li>выраженные дефекты, например, истирание эмали, сколы.</li>\r\n	<li>серьезные повреждения зубов кариесом.</li>\r\n	<li>щели между ними.</li>\r\n</ul>\r\n\r\n<blockquote>\r\n\r\n	<p>Также процедура проводится при необходимости сохранения тканей частично разрушенных зубов, для их восстановления после некариозного поражения.</p>\r\n</blockquote>', 0),
(38, 'Этапы процедуры в нашей клинике', 'Коронки на зубы  Этапы процедуры в нашей клинике', '<p>Первый этап – осмотр и консультация. Врач оценит состояние полости рта, при необходимости назначит предварительное лечение кариеса или корневых каналов, чистку. Также на предварительном этапе будет составлен план лечения.</p>\r\n\r\n<p>Последующие шаги зависят от выбранного метода.</p>\r\n\r\n<h3>Установка с опорой на имплант</h3>\r\n\r\n<ul>\r\n	<li>При условии отсутствия противопоказаний будут установлены импланты и абатменты. При необходимости проблемные зубы потребуют удаления.</li>\r\n	<li>После стоматолог снимет слепок. По нему будут изготавливаться индивидуальные коронки, соответствующие по виду и форме натуральным, собственным зубным единицам пациента.</li>\r\n	<li>После изготовления и примерки ортопедические изделия будут установлены.</li>\r\n</ul>\r\n\r\n<h3>Установка на штифты</h3>\r\n\r\n<ul>\r\n	<li>Стоматолог сделает снимок челюсти, определит форму каналов, выявит очаги воспалений, если они есть. Также будет проводиться депульпирование каналов (удаление пораженных тканей и нервных окончаний), после врач установит пломбы по всей их длине.</li>\r\n	<li>Следующий этап – установка штифта. На данном этапе после того, как штифт будет установлен, стоматолог нарастит культю необходимой толщины (нужна для установки и фиксации).</li>\r\n	<li>После наращивания осуществляется снятие слепка с последующим изготовлением протеза.</li>\r\n	<li>Заключительный этап – примерка и фиксация.</li>\r\n</ul>\r\n\r\n<h3>Культевая вкладка</h3>\r\n\r\n<p>В таком случае врач восстанавливает зубы в последовательности, аналогичной предыдущему описанному методу. Отличия несущественны (исключается этап установки штифта; вместо него используется культевая вкладка).</p>', 0),
(39, '', 'Лечение зубов В стоматологической клинике Med Studio', '<p>В стоматологической клинике Med Studio пациенты могут пройти комплексное лечение зубов и избавиться от заболеваний полости рта. Безопасные методики, расходные материалы премиум-класса, проверенное медицинское оборудование (лазер, микроскоп), индивидуальный подход – гарантия того, что лечение пройдет комфортно для пациента, будет качественным.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Восстановление разрушенных единиц, удаление отложений, установка зубных протезов, лечение кариеса, пульпита любой сложности – малая часть того, на что способны наши стоматологи.</p>\r\n\r\n	<p>Есть проблемы? Мы поможем!</p>\r\n</blockquote>', 0),
(40, 'Лечение зубов в стоматологическом центре Med Studio', 'Лечение зубов в стоматологическом центре Med Studio', '<p>Своевременное лечение зубов – залог их здоровья. Это касается как взрослых, так и детей. В нашей стоматологии вы можете полечить зубы от кариеса, а также:</p>\r\n\r\n<ul>\r\n	<li><strong>восстановить зубной ряд.</strong></li>\r\n	<li><strong>вставить протезы.</strong></li>\r\n	<li><strong>отбелить единицы.</strong></li>\r\n	<li><strong>удалить камни, отложения.</strong></li>\r\n</ul>\r\n\r\n<p>Для пломбирования или подготовки протезов наши стоматологи используют надежные, качественные материалы. Лечение, к примеру, кариозных поражений проводится под микроскопом. Обезболивание при этом не нужно: прицельная терапия позволяет максимально сохранить эмаль, удалить отложения на дентине, не травмировать нервы. Также в стоматологии Med Studio установлено оборудование фирмы «Sirona». Сверление сводится к минимуму.</p>', 0),
(41, '', 'Лечение зубов При появлении признаков проблем, б', '<p>При появлении признаков проблем, болей или потемнений рекомендуется посещение стоматолога. Если отложить это «на потом», последствия станут печальными: возможно развитие воспалений, болезней мягких тканей, что потребует вмешательства хирурга, иссечения десен, а также трат времени, средств.</p>', 0),
(42, 'Как проходит лечение: этапы', 'Лечение зубов Как проходит лечение: этапы', '<p>Стоматологи нашей клиники занимаются всеми патологиями. Лечение у нас включает:</p>\r\n\r\n<ul>\r\n	<li><strong>Первичную консультацию, осмотр, обследование.&nbsp;</strong>Если будут подозрения, врач порекомендует сделать рентген, панорамный снимок конкретной области. Это нужно для точного выявления очагов поражения.</li>\r\n	<li><strong>Подготовительные мероприятия.</strong> Если речь, к примеру, касается сложных вмешательств, потребуется предварительная обработка, иногда – установка временных пломб или протезов (при пульпите или протезировании с отложенной нагрузкой соответственно).</li>\r\n	<li><strong>Непосредственно терапия.&nbsp;</strong>Наши врачи используют надежные методы, эффективное оборудование, качественные, одноразовые расходные материалы (вспомогательные инструменты, коффердамы, др.) – это залог терапии на высшем стоматологическом уровне.</li>\r\n</ul>', 1),
(49, '', 'Лечение кариеса Кариес – самое распространенное патологическое за', '<p>Кариес – самое распространенное патологическое заболевание твердых тканей зубов. Причина возникновения – бактерии, поражающие сначала эмаль, а затем проникающие в дентин. При осложнениях становится вероятным разрастание очага и поражение корней, пульпы.</p>\r\n\r\n<p>Лечение пораженных кариесом зубов на ранних стадиях развития – гарантия сохранения их здорового состояния.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>В нашей стоматологии врачи пользуются системой ICON, позволяющей эффективно избавиться от кариеса без сверления (подходит для поверхностно пораженных зубных единиц). Точность всех процедур обеспечивается применением микроскопа.&nbsp;</p>\r\n\r\n	<p>Также в распоряжении докторов пломбировочные материалы премиум-класса, оборудование Sirona и стоматологический микроскоп. Даже если предстоит работать со сложными разрушениями, специалисты приложат максимум усилий, чтобы сохранить зубы пациента.</p>\r\n</blockquote>', 0),
(50, 'Как мы лечим кариес', 'Лечение кариеса Как мы лечим кариес', '<p>Начальный и поверхностный виды кариозных поражений поддаются терапии системой ICON. Всего за один визит!</p>\r\n\r\n<p>Если дело касается средней или глубокой стадий, мы будем применять современное стоматологическое оборудование Sirona и качественные пломбировочные материалы. Способ лечения и количество визитов будут озвучены врачом после осмотра.Дополнительно может быть порекомендована чистка от налета, удаление зубного камня</p>', 1),
(51, 'Этапы процедуры', 'Лечение кариеса Этапы процедуры', '<p>Чтобы убрать кариес на начальной или поверхностной стадиях развития, стоматолог:</p>\r\n\r\n<ul>\r\n	<li>Изолирует зуб тампонами или коффердамом.</li>\r\n	<li>Проведет чистку от налета и отложений.</li>\r\n	<li>Просушит поверхность зуба и нанесет гель.</li>\r\n	<li>Промоет зубную единицу.</li>\r\n	<li>Нанесет на зуб препараты в два слоя и просветит УФ-лампой.</li>\r\n</ul>\r\n\r\n<p>Завершающий этап – удаление остатков материала и полировка поверхности.</p>\r\n\r\n<p>Чтобы вылечить кариес на средней или глубокой стадии, врач:</p>\r\n\r\n<ul>\r\n	<li>При необходимости использует обезболивающее.</li>\r\n	<li>Изолирует проблемный зуб.</li>\r\n	<li>В случае показаний проведет депульпацию и чистку каналов.</li>\r\n	<li>Установит пломбу.</li>\r\n</ul>\r\n\r\n<p>Если была установлена временная пломба, через время потребуется снова посетить нас.</p>', 0),
(52, 'Виды кариеса', 'Лечение кариеса Виды кариеса', '<p>По локализации поражения принято выделять:</p>\r\n\r\n<ul>\r\n	<li><strong>пришеечный кариес</strong> (возникает в прикорневой части вблизи десны, часто переходит в пульпит, периодонтит).</li>\r\n	<li><strong>межзубный</strong> (поражает боковые стенки, развивается чаще из-за неправильной гигиены).</li>\r\n	<li><strong>фиссурный</strong> (развивается в фиссурах – углублениях поверхностей зубов жевательной группы).</li>\r\n</ul>\r\n\r\n<p>Также в стоматологии выделяются первичный и вторичный виды кариеса. Вторичный – процесс образования поражений вследствие некорректного лечения, недостаточной очистки твердых тканей перед пломбированием.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>В распоряжении врачей нашей клиники имеется стоматологический микроскоп. Он позволяет вычистить даже труднодоступные и незаметные невооруженному глазу участки.</p>\r\n</blockquote>', 0),
(53, '', 'Лечение кариеса По результатам диагностики стоматолог определит', '<p>По результатам диагностики стоматолог определит стадию заболевания и выберет подходящую методику лечения.</p>\r\n\r\n<p>По стадиям кариозное поражение бывает:</p>\r\n\r\n<ul>\r\n	<li><strong>начальным</strong> (появление очагов белого цвета (светлые пятна), эмаль размягчается).</li>\r\n	<li><strong>поверхностным</strong> (постепенное разрушение эмали, возникновение шероховатости).</li>\r\n	<li><strong>средним</strong> (поражение переходит на дентин, возникают боли, повышается чувствительность зубных единиц (сахар, соль, холодные напитки или горячая пища вызывают неприятные ощущения)).</li>\r\n	<li><strong>глубоким</strong> (размягчение дентина до пульповой камеры).</li>\r\n</ul>\r\n\r\n<blockquote>\r\n\r\n	<p>В нашей стоматологии врачи могут вылечить поверхностные кариозные поражения безболезненно для пациента! Для этого используется немецкая система ICON. Анестезия не нужна. Современные стоматологические технологии и опыт докторов – наше преимущество.</p>\r\n</blockquote>\r\n\r\n<p>На заметку: своевременное лечение позволит исключить развитие осложнений. Не откладывайте его на потом.</p>', 0),
(54, '', 'Лечение пульпита Воспаления пульпы (пульповой камеры –', '<p>Воспаления пульпы (пульповой камеры – внутренней части зуба с сосудисто-нервным пучком) чаще всего возникают в результате осложнений кариеса. Когда кариозное поражение достигает мягких тканей, становится необходимым вмешательство стоматолога. Своевременный визит в стоматологическую клинику позволит исключить развитие осложнений.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Врачи нашей стоматологии используют современное высокоточное оборудование, качественные материалы для пломбирования. Эффективные стоматологические методы позволяют нашим специалистам решать даже сложные задачи.&nbsp;</p>\r\n\r\n	<p>Также в распоряжении докторов есть микроскоп. Он обеспечивает высокую точность терапии, способствует абсолютному удалению тканей, которые задел воспалительный процесс.</p>\r\n</blockquote>', 0),
(55, 'Лечение в нашей стоматологии', 'Лечение пульпита Лечение в нашей стоматологии', '<p>Лечение пульпита молочных зубов детей или постоянных у взрослых назначается нашими врачами после осмотра и диагностики полости рта пациента. Если обнаружены характерные симптомы или явные признаки, доктор порекомендует проведение терапевтических мероприятий.</p>\r\n\r\n<p>Депульпирование – методика, предполагающая удаление нервных окончаний зуба. Если врач нашей клиники обнаружит возможность сохранения пульпы и нерва, будет проведена терапия консервативным способом.</p>\r\n\r\n<p>Также существует хирургическое лечение. Оно применяется при условии, что сохранить пульпу нет возможности.</p>\r\n\r\n<p>Выбор сделает врач после постановки диагноза и определения формы протекания.</p>', 0),
(56, 'Консервативное лечение', 'Лечение пульпита Консервативное лечение', '<p>Вылечить воспаление и сохранить нерв можно при условии своевременного посещения врача. Способ предполагает обнажение мягких тканей с последующим обеззараживанием. На них будет наложена специальная повязка с лекарственным препаратом. Далее будет установлена временная пломба.</p>\r\n\r\n<p>Возможны болевые ощущения, потому как нерв еще жив. Если консервативное вмешательство завершится успехом, доктор во время вторичного посещения установит постоянную пломбу.</p>', 0),
(57, 'Хирургическое лечение', 'Лечение пульпита Хирургическое лечение', '<p>Процедура предполагает глубокую чистку пульповой камеры. Мягкие ткани зуба будут удалены.</p>\r\n\r\n<p>Говоря о хирургической терапии, стоит выделить ее виды: ампутация и экстирпация.</p>\r\n\r\n<p>Ампутация предполагает частичное удаления пульпы зуба. Часть у корня будет сохранена, коронковая – удалена. Часто такой метод используется при работе с трехканальными зубами.</p>\r\n\r\n<p>Ампутация может быть:</p>\r\n\r\n<ul>\r\n	<li><strong>витальной</strong> (под анестезией часть тканей удаляется).</li>\r\n	<li><strong>девитальной</strong> (доктор поставит «лекарство», которое постепенно частично уничтожит нерв. Отмершую часть впоследствии удалят, здоровая будет запломбирована).</li>\r\n</ul>\r\n\r\n<p>Экстирпация также может быть витальной и девитальной.</p>\r\n\r\n<p>В первом случае сначала будет удалена пораженная ткань, полость зуба подлежит обработке антисептиком. Нерв впоследствии будет извлечен из корня. Заключительный этап – установка пломбы.</p>\r\n\r\n<p>Во втором случае процедура проводится в два этапа. Во время первого визита доктор клиники установит токсичное вещество, которое умертвит пульпу. Будет поставлена временная пломба. После этого, когда цель терапии будет достигнута, врач извлечет пульпу без боли и установит постоянную пломбу.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>В процессе лечения стоматолог нашей клиники будет использовать микроскоп. Он обеспечивает высокую точность терапевтических мероприятий. Пораженные ткани будут удалены полностью, вероятность некачественного лечения исключена.</p>\r\n</blockquote>', 0),
(58, 'Виды пульпита', 'Лечение пульпита Виды пульпита', '<p>В стоматологии принято выделять следующие виды пульпита:</p>\r\n\r\n<ul>\r\n	<li><strong>фиброзный</strong> (вялотекущее хроническое воспаление, при котором в зубе (в пульпе) протекают процессы разрастания волокнистой ткани).</li>\r\n	<li><strong>гипертрофический</strong> (развивается вследствие невылеченного фиброзного пульпита).</li>\r\n	<li><strong>гангренозный</strong> (поздняя стадия хронического пульпита, сопровождается распадом пульпы).</li>\r\n</ul>\r\n\r\n<p>Также воспалительное заболевание принято различать по формам протекания.</p>\r\n\r\n<ul>\r\n	<li><strong>острая форма</strong> (кариес отделен от пульпы дентином, процесс сопровождается болезненными ощущениями. Может быть очаговой и диффузной, что зависит от степени обострения. Необратимая стадия – некроз).</li>\r\n	<li><strong>хроническая</strong> (сопровождается сильной болью, пульпа разрушена. Возможна обостренная реакция на горячую или холодную пищу, другие раздражители).</li>\r\n</ul>\r\n\r\n<p>Перечисленные ранее виды – это проявления хронического пульпита (фиброзный, гипертрофический, гангренозный). В полости зуба могут возникнуть гнойные образования.</p>', 0),
(59, 'Осложнения', 'Лечение пульпита Осложнения', '<p>Вовремя вылечить пульпит – значит исключить вероятность осложнений. Врачи нашей стоматологии на практике сталкиваются с такими, как:</p>\r\n\r\n<ul>\r\n	<li><strong>флюс </strong>(поражение надкостницы альвеолярного отростка, деформация десен, развитие свища).</li>\r\n	<li><strong>остеомиелит </strong>(сопровождается гнойными образованиями в челюсти).</li>\r\n	<li><strong>флегмона </strong>(инфекция переходит в мягкие ткани).</li>\r\n	<li><strong>абсцесс </strong>(чаще предшествует флегмоне).</li>\r\n</ul>\r\n\r\n<p>амилоидоз (крайняя стадия обостренного пульпита).</p>\r\n\r\n<p>В сложных случаях вероятным становится поражение корневых каналов. Также есть риск потери постоянных зубов. Избежать неблагоприятных последствий поможет своевременное лечение.</p>', 0),
(60, '', 'Профессиональная чистка зубов Чистка зубов у стоматолога – совокупность', '<p>Чистка зубов у стоматолога – совокупность мероприятий, направленных на оздоровление полости рта. В процессе чистки врач с помощью современного стоматологического оборудования проведет обработку тканей зубов и десен от мягких и твердых отложений (налета).</p>\r\n\r\n<blockquote>\r\n\r\n	<p>В нашей стоматологии врачи используют для очищения налета эффективные методики и современные терапевтические аппараты. Для достижения лучших результатов процедуры специалистами клиники применяются ультразвуковые способы обработки, а также особая техника Air Flow. При необходимости после чистки зубного камня и устранения бактерий, налета доктор порекомендует фторирование эмали. Процедура способствует ее укреплению.</p>\r\n</blockquote>', 0),
(61, 'От каких проблем избавляет механическая чистка', 'Профес­сио­нальная чистка зубов От каких проблем избавляет механическая чистка', '<p>С помощью механической чистки зубов в нашей стоматологии врач может:</p>\r\n\r\n<ul>\r\n	<li><strong>провести очистку межзубного налета.</strong></li>\r\n	<li><strong>удалить зубной камень (даже в труднодоступных местах).</strong></li>\r\n	<li><strong>очистить междесневые, поддесневые области, жевательную поверхность зубов.</strong></li>\r\n	<li><strong>отполировать и фторировать зубную эмаль</strong></li>\r\n</ul>\r\n\r\n<p>Данную процедуру чистки врачи клиники проводят перед лечением кариеса и лечением воспаления мягких тканей ротовой полости.</p>\r\n\r\n<p>В нашей стоматологии возможна чистка молочных зубов детей. Они тоже нуждаются в уходе. Процедура полностью безопасна, не вызывает неприятных ощущений, является безболезненной.</p>', 0),
(62, '', 'Профес­сио­нальная чистка зубов Регулярно чистить зубы в домашних условиях об', '<blockquote>\r\n\r\n	<p>Регулярно чистить зубы в домашних условиях обыкновенной щеткой и пастой – не всегда достаточно для сохранения их здоровья. Дополнительно можно ежедневно использовать ополаскиватели, нити, ирригаторы, но при неправильном применении они очищают полость рта недостаточно качественно.</p>\r\n</blockquote>', 0),
(63, 'Этапы и преимущества процедуры', 'Профес­сио­нальная чистка зубов  Этапы и преимущества процедуры  Подготовка. Врач клиники проведет', '<ul>\r\n	<li><strong>Подготовка</strong>. Врач клиники проведет консультацию, определит наличие противопоказаний, оценит состояние полости рта пациента. При необходимости будет назначено предварительное лечение.</li>\r\n	<li><strong>Чистка ультразвуком</strong>. С помощью специального стоматологического аппарата врачи удаляют отложения в виде камня. Процедура почти не травмирует ткани, не разрушает зубы.</li>\r\n	<li><strong>Полировка</strong>. Она сделает зубы гладкими. В процессе врач будет использовать абразивную пасту и различные насадки.</li>\r\n	<li><strong>Фторирование.&nbsp;</strong>Необходимо для укрепления эмали.</li>\r\n</ul>\r\n\r\n<blockquote>\r\n\r\n	<p>В распоряжении докторов нашей клиники современное стоматологическое оборудование и расходные материалы премиум-класса. Это залог белоснежной улыбки каждого из наших пациентов!</p>\r\n\r\n	<p>Также мы применяем методику Air Flow для удаления мягкого налета. Анестезия не нужна, травмирование тканей исключено.</p>\r\n</blockquote>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p>Профессиональная чистка в стоматологии - лучший метод профилактики заболеваний зубов и десен. Комплекс процедур в нашей клинике позволит предупредить:</p>\r\n\r\n<ul>\r\n	<li><strong>развитие заболеваний десен.</strong></li>\r\n	<li><strong>возникновение кариеса.</strong></li>\r\n	<li><strong>расшатывание зубов.</strong></li>\r\n</ul>\r\n\r\n<p>В результате пациент сможет рассчитывать на восстановление естественного оттенка зубов.</p>', 0),
(64, '', 'Удаление зуба Такое стоматологическое вмешательство', '<p>Такое стоматологическое вмешательство, как удаление зубов, вызывает у пациентов неподдельный страх. И очень зря: хирургическая стоматология совершенствуется, врачи используют безболезненные атравматичные методы. Стоматологи нашей клиники – не исключение. Они руководствуются в работе основным принципом: комфорт пациентов. Удаление зуба без боли – это просто!</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Перед тем, как удалить зуб, врач порекомендует местное обезболивание (анестезию). Для этого мы используем современные и эффективные анестезирующие препараты. Удаление зубов будет для вас безболезненным!</p>\r\n</blockquote>', 0),
(65, 'Не бойтесь боли!', 'Удаление зуба НЕ БОЙТЕСЬ БОЛИ!', '<p>Мы уже говорили о том, что страхи ничем не оправданы. Атравматичные технологии и оборудование в распоряжении стоматологов нашей клиники позволяют провести удаление зуба без боли.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Атравматичный подход предполагает разделение зубов не сегменты – это залог минимизации повреждения тканей и хороших результатов. Наши врачи используют ультразвуковую &nbsp;пьезохирургическу установку NSK VarioSurg (Япония).</p>\r\n</blockquote>\r\n\r\n<p>С помощью аппарата можно с высокой точностью сегментировать единицу, воздействуя на твердые ткани. Десны не будут травмированы! Еще одно преимущество VarioSurg – высокий обеззараживающий эффект. Ультразвуковое разделение абсолютно исключает перегрев тканей полости рта. Никаких ожогов и дискомфорта!</p>\r\n\r\n<p>Удаление зуба без боли и травм – возможно. Наши специалисты знают в этом толк и работаю даже с самыми сложными случаями.</p>', 0),
(66, 'Преимущества атравматичного ультразвукового метода удаления зубов', 'Удаление зуба  Преимущества атравматичного ультразвукового метода', '<p>Среди преимуществ аппарата, используемого нашими стоматологами:</p>\r\n\r\n<ul>\r\n	<li>ускоренное заживление лунки после операции.</li>\r\n	<li>минимизация вероятности возникновения отеков, болей в десневых тканях, корневых каналах. Также использование ультразвукового аппарата исключает кровотечения после удаления. Это преимущество для пациентов с нездоровыми сосудами.</li>\r\n	<li>исключение рисков проникновения инфекций, заражений. Этот эффект обусловлен антибактериальным, обеззараживающим эффектом пьезохирургического аппарата VarioSurg.</li>\r\n	<li>оперативность вмешательства. Скорость ультразвуковой процедуры выше на 20% в среднем по сравнению с традиционными методиками хирургии. Одно посещение и никаких проблем.</li>\r\n</ul>\r\n\r\n<p>Другой плюс ультразвукового вмешательства – оно эффективно, когда требуется последующая одномоментная (в один этап) имплантация.</p>\r\n\r\n<p>Ультразвуковой аппарат – залог проведения вмешательства эффективно, быстро и без травм, безболезненно. Никаких отеков, нарывов и осложнений, никакого вреда для здоровья</p>', 0);
INSERT INTO `konvertagency_doctors_content` (`id`, `title`, `description`, `text`, `img_position`) VALUES
(67, 'Когда нужна процедура', 'Удаление зуба Когда нужна процедура', '<p>Если стоматолог говорит о том, что нужно удалить зуб, значит, на это есть основания. Причины не имеют значения (неправильная гигиена, полученные травмы, др.).</p>\r\n\r\n<p>Врачи нашей клиники на такую меру идут редко. Однако в случаях, когда возможности сохранения зубов после терапевтической консультации обнаружено не будет, необходимо вмешательство.</p>\r\n\r\n<ul>\r\n	<li><strong>Сложный перелом.</strong>\r\n		<br>Обычные переломы зубов нестрашны. Речь о ситуации, когда разрушение затронуло верхнюю часть: восстановление возможно коронкой или виниром. Если же диагноз, поставленный врачом-терапевтом, хуже и перелом затронул корень, восстановление невозможно. Потребуется вырвать зуб.</li>\r\n	<li><strong>Подвижность зубов.</strong>\r\n		<br>Причина высокой подвижности зубов – заболевания десен (пародонтология): пародонтит, гингивит и другие. Приводить к подвижности может и дефицит полезных веществ, нарушение прикуса. Вне зависимости от причины подвижности стоматолог может порекомендовать удалить зуб после постановки соответствующего диагноза.</li>\r\n	<li><strong>Воспаления.</strong>\r\n		<br>Другая причина, по которой может потребоваться вмешательство – тяжелые и запущенные воспаления корней зубов: гранулемы, периостит и другие. Если эндодонтия не поможет, потребуется удалить зуб.</li>\r\n	<li><strong>Цели ортодонтии.</strong>\r\n		<br>Исправление прикуса или выравнивание зубного ряда (установка брекетов) и т. п., то есть провести ортодонтическое вмешательство, иногда требуется удаление коренного зуба. Особенно часто к такой мере стоматологи прибегают при повышенной скученности, неправильном росте единиц.</li>\r\n	<li><strong>Проблемный зуб мудрости.</strong>\r\n		<br>Рост «восьмерки» (даже полностью здоровой) – проблемный процесс. Она может упираться в соседние единицы и даже портить прикус, провоцировать острую боль. Удалить зуб мудрости, если он мешает – значит, сохранить в целости «соседей», а прикус – в норме.</li>\r\n</ul>\r\n\r\n<p>При любом из показаний к вмешательству пациенты нашей клиники могут рассчитывать на качественное удаление зуба без боли. Мы используем надежную ультразвуковую аппаратуру. Подробнее о ее преимуществах – далее.</p>', 0),
(68, 'Виды процедуры', 'Удаление зуба Виды процедуры', '<p>Выделяется несколько видов:</p>\r\n\r\n<ul>\r\n	<li>простое.</li>\r\n	<li>сложное удаление зубов.</li>\r\n</ul>\r\n\r\n<p><strong>В простом&nbsp;</strong>(первом) случае доктор может вырвать зуб за одну манипуляцию. Он будет использовать специальные стоматологические щипцы. Есть условие: должна быть достаточной коронковая часть. Это нужно, чтобы щипцы плотно обхватывали твердые ткани. Метод подходит для экстракции однокоренных, подвижных, молочных единиц (детская стоматология).</p>\r\n\r\n<p><strong>В сложном случае&nbsp;</strong>для удаления зубов необходима система манипуляций, а в некоторых случаях – хирургическое вмешательство. В редких случаях врач будет делить единицу на сегменты, использовать дополнительные экстракторы, наркоз. Сложный метод применяется для экстракции, к примеру, в случае труднодоступности зубов.</p>\r\n\r\n<p>Сколько стоит удалить зуб? Это зависит от случая, сложности процедуры и диагностики, состояния единицы, области ее расположения, от используемых материалов. Стоматолог озвучит стоимость после осмотра.</p>', 0),
(69, '', 'Протезирование зубов Стоматологический центр Med Studio', '<p>Стоматологический центр Med Studio оказывает услуги премиум-класса с 1995 года. Протезирование – одно из основных направлений нашей работы. Мы используем технологию CEREC 3D и даем гарантию на все конструкции до 10 лет.</p>\r\n\r\n<p>Процедура позволяет провести восстановление утраченных или разрушенных зубов с помощью установки несъемных, съемных ортопедических конструкций (зубные протезы, коронки).</p>', 0),
(70, 'Виды протезирования в стоматологии', 'Протезирование зубов  Виды протезирования в стоматологии', '<p>В распоряжении стоматологов-ортопедов нашей клиники большой набор современных технологий, инструментов, качественных расходных материалов премиум-класса – все, что необходимо для надежного протезирования. Разнообразие методик, диапазон цен на услуги позволяет пациенту найти и выбрать оптимальный, доступный вариант.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Зубное протезирование – комплексная стоматологическая процедура. Цель процедуры – восстановление отсутствующих или разрушенных единиц, обеспечение эстетики передних, функциональности жевательных единиц.</p>\r\n</blockquote>\r\n\r\n<p>Протезирование бывает:</p>\r\n\r\n<ul>\r\n	<li><strong>Съемным&nbsp;</strong></li>\r\n	<li><strong>Несъемным&nbsp;</strong></li>\r\n	<li><strong>Имплантационным</strong></li>\r\n</ul>', 0),
(71, 'Виды несъемных конструкций', 'Протезирование зубов Виды несъемных конструкций', '<p>Восстановление, обеспечение отличных функциональных (жевание), эстетических (улыбка) характеристик можно осуществить при помощи несъемных протезов. В нашей стоматологии используется много видов конструкций для различных целей, а также высококачественные расходные материалы.</p>\r\n\r\n<h3>Виниры</h3>\r\n\r\n<p>Винирами в стоматологии называются накладки, используемые для эстетической реставрации (микропротезирование). Это тонкие пластинки, изготавливаемые из керамики и посредством композита фиксируются на передних группах для маскировки:</p>\r\n\r\n<ul>\r\n	<li><strong>неровностей эмали.</strong></li>\r\n	<li><strong>небольших сколов или несущественных разрушений.</strong></li>\r\n	<li><strong>щелей.</strong></li>\r\n	<li><strong>кривизны.</strong></li>\r\n	<li><strong>потемнений.</strong></li>\r\n</ul>', 0),
(72, '', 'Протезирование зубов Коронковые протезы', '<h3>Коронковые протезы</h3>\r\n\r\n<p>Единицы, разрушенные более чем наполовину, восстанавливаются при помощи установки коронок. Они могут использоваться для устранения любых дефектов. Несъемные конструкции точно повторяют анатомическую форму.</p>\r\n\r\n<p>Керамические материалы характеризуются широким спектром оттенков, их посредством можно обеспечить точное соответствие конструкции цвету и форме естественных зубов. Благодаря инновационным технологиям в стоматологической ортопедии и ортодонтии появилась возможность восстановить коронками сильно поврежденные ряды.</p>\r\n\r\n<p>В изготовлении используются:</p>\r\n\r\n<ul>\r\n	<li><strong>металлические сплавы.</strong></li>\r\n	<li><strong>металлокерамические составы (металлокерамика).</strong></li>\r\n	<li><strong>керамика.</strong></li>\r\n	<li><strong>диоксид циркония.</strong></li>\r\n</ul>', 1),
(73, '', 'Протезирование зубов Мостовидные конструкции', '<h3>Мостовидные конструкции</h3>\r\n\r\n<p>При отсутствии нескольких зубов подряд восстановление ряда осуществляется установкой моста (две опорные коронки и спаянные протезы, необходимые для замены утраченных единиц). В качестве опор для моста выступают здоровые единицы или установленные имплантаты.</p>\r\n\r\n<p>Стоматологи используют в протезировании несколько видов конструкций. Есть классические, мэрилендские, консольные мосты и др. Они различаются по способу и материалам, технике установки.</p>\r\n\r\n<h3>Вкладки</h3>\r\n\r\n<p>Зубопротезирование стоматологическими вкладками проводится для восстановления функциональных и эстетических свойств зубов, разрушенных более чем на треть. Такие микропротезы являются аналогами пломб, но более прочны, надежны, имеют хорошие эстетические показатели.</p>', 0),
(74, 'Установка съемных протезов', 'Протезирование зубов Установка съемных протезов', '<p>Протезирование съемными протезами в нашей стоматологии доступно для всех пациентов, скорость процесса высокая. Посредством их установки восстанавливается разрушенная часть единицы; также методику применяют для восстановления полностью отсутствующего зубного ряда (адентия). Противопоказаний к процедуре практически нет, установка простая, конструкции не требуют особого ухода, бывают бюгельными, пластинчатыми.</p>', 0),
(75, '', 'Протезирование зубов Конструкции бюгельного типа', '<h3>Конструкции бюгельного типа</h3>\r\n\r\n<p>Протезы бюгельного типа требуют наличия опоры. Такое протезирование применяется, если у пациента есть опорные единицы. Системы отличаются механизмами крепления.</p>\r\n\r\n<p>Фиксация конструкций осуществляется:</p>\r\n\r\n<ul type=\"disc\">\r\n	<li><strong>кламмерами&nbsp;</strong>(крючки для «обхвата»).</li>\r\n	<li><strong>аттачментами&nbsp;</strong>(небольшие замки, устанавливаемые в конструкцию и в опоры).</li>\r\n	<li><strong>телескопическими коронками</strong> (устанавливаются в конструкцию и на опоры).</li>\r\n</ul>\r\n\r\n<h3>Протезы пластиночного типа</h3>\r\n\r\n<p>Искусственные единицы из керамики или полимеров крепятся на акриловый базис. Это тонкая пластина, толщина которой не превышает 2 мм. Такая пластина закрывает десну, нижнее или верхнее небо.</p>\r\n\r\n<p>Пластинчатые протезы бывают:</p>\r\n\r\n<ul type=\"disc\">\r\n	<li><strong>полными,&nbsp;</strong>восстанавливающими отсутствующий ряд.</li>\r\n	<li><strong>частичными,</strong> восстанавливающими несколько единиц ряда (в т. ч. концевые).</li>\r\n</ul>', 0),
(76, 'Имплантация', 'Протезирование зубов Имплантация', '<p>Протезисты считают имплантацию самой надежной технологией восстановления зубов. При такой методике протезирования используются искусственные корни в виде штифтов, изготовленные из сплавов титана. Они вживляются в кость челюсти, полностью выполняют функции опор для коронок, мостовидных или съемных конструкций.</p>\r\n\r\n<p>К преимуществам имплантации относятся:</p>\r\n\r\n<ul>\r\n	<li>восстановление отсутствующих единиц ряда без обточки здоровых зубов.</li>\r\n	<li>правильное распределение нагрузки, исключающее сдвиг имплантов, повреждение десневой ткани.</li>\r\n	<li>положительное воздействие на костную ткань, предотвращение атрофии.</li>\r\n	<li>повышенная прочность, пожизненная гарантия.</li>\r\n</ul>', 0),
(77, 'О технологии cerec 3d', 'Протезирование зубов О технологии cerec 3d', '<p>Технология нового поколения используется стоматологами нашей клиники для изготовления коронок, вкладок, виниров из керамических блоков. Процедура осуществляется за один сеанс.</p>\r\n\r\n<p>После подготовки к реставрации (чистка, лечение кариеса и т. п.) применяется специальное сканирующее устройство, которое позволяет впоследствии создать 3D-модель полости рта и всех тканей.</p>\r\n\r\n<p>Далее врач при условии отсутствия противопоказаний (необходимость костной пластики, синус-лифтинга и др.) подготовит модель. Она в условиях лаборатории будет использована для создания протеза. Следующий этап – примерка и фиксация.</p>\r\n\r\n<p>Плюсы технологии:</p>\r\n\r\n<ul>\r\n	<li><strong>обеспечение соответствия натуральным тканям.</strong></li>\r\n	<li><strong>возможность подготовки и полирования поверхностей до установки.</strong></li>\r\n	<li><strong>скорость процедуры.</strong></li>\r\n	<li><strong>точное прилегание к единицам.</strong></li>\r\n</ul>\r\n\r\n<p>Использование нашими врачами технологии CEREC 3D – залог надежного протезирования!</p>', 1),
(78, 'Показания к протезированию', 'Протезирование зубов  Показания к протезированию', '<p>Рекомендация врачей вставить зубы может быть вынесена при:</p>\r\n\r\n<ul>\r\n	<li><strong>патологической истираемости эмали.</strong></li>\r\n	<li><strong>разрушении коронковой части более чем на 50%.</strong></li>\r\n	<li><strong>адентии (отсутствие зубов).</strong></li>\r\n</ul>\r\n\r\n<p>Стоматолог порекомендует протезы, если такая необходимость будет вызвана потерями нескольких зубов, в т. ч. соседних.</p>\r\n\r\n<p>После консультации и диагностики врач назначит пациенту мероприятия лечения, подготовки полости рта пациента к протезированию.</p>', 0),
(79, 'Плюсы, минусы основных видов протезирования зубов', 'Протезирование зубов Плюсы, минусы основных видов протезирования зубов', '<p>Вставные зубы – гарантия восстановления эстетической, жевательной функций после утраты собственных единиц. Каждый вид протезирования имеет особенности. Лучших не существует, однако есть те, которые подходят для решения конкретных задач.</p>\r\n\r\n<p><strong>Несъемные протезы (+/-):</strong></p>\r\n\r\n<ul>\r\n	<li>надежные, не вызывают дискомфорта и проблем при уходе, а также не приводят к атрофии костей челюсти, их удобно носить.</li>\r\n	<li>требуют удаления отдельных зубов, обточки опорных единиц (если не установлены импланты).</li>\r\n</ul>\r\n\r\n<p><strong>Съемные протезы для зубов (+/-):</strong></p>\r\n\r\n<ul>\r\n	<li>не требуют вмешательства хирурга, характеризуются минимальными сроками адаптации, быстро устанавливаются.</li>\r\n	<li>не препятствуют атрофии, требуют регулярного ухода.</li>\r\n</ul>\r\n\r\n<p>Стоит также помнить, что невысокая стоимость съемных протезов обусловлена их невысоким сроком службы.</p>\r\n\r\n<p><strong>Микропротезирование зубов (+/-):</strong></p>\r\n\r\n<ul>\r\n	<li>обеспечивает полное восстановление, позволяет осуществлять «ремонт» зубов без ущерба соседним единицам (врач работает только с проблемным местом (единицей)).</li>\r\n	<li>необходимость обточки зубов.</li>\r\n</ul>\r\n\r\n<p>Лучшие протезы для решения конкретных задач порекомендует врач, опираясь на данные предварительной диагностики и текущее состояние полости рта пациента. Он предложит несколько доступных вариантов для тех или иных случаев.</p>\r\n\r\n<p>Также стоматолог при наличии противопоказаний порекомендует совет отложить процедуру.</p>', 0),
(80, '', 'Съемные протезы', '<p>Установка съемных протезов для зубов осуществляется при полной или частичной адентии. Съемные протезы – это искусственные ортопедические конструкции, которые используются в стоматологии для восстановления отсутствующих собственных зубов пациента. Посредством их можно добиться восстановления эстетических, жевательных функций.</p>\r\n\r\n<blockquote>\r\n\r\n	<p>В распоряжении врачей нашей клиники – материалы премиум-класса, собственная зуботехническая лаборатория с оборудованием последнего поколения. Опыт протезирования и применяемые стоматологами современные методы работы – гарантия исправления любых дефектов полости рта.</p>\r\n</blockquote>', 0),
(81, 'Виды съемного протезирования', 'Съемные протезы Виды съемного протезирования', '<p>В стоматологии выделяется три разновидности съемных протезов. Они отличаются друг от друга по материалам, из которых изготавливаются, по типу фиксации, сроку службы, а также по другим характеристикам.</p>', 0),
(82, '', 'Съемные протезы Полностью съемные протезы', '<h3>Полностью съемные протезы</h3>\r\n\r\n<p>Выделяются:</p>\r\n\r\n<ul>\r\n	<li><strong>Акриловые протезы.&nbsp;</strong>Служат в среднем 2-4 года, быстро изготавливаются, поддаются ремонту. Есть минусы: они перекрывают небо акриловым базисом, что ухудшает вкусовые ощущения во время приемов пищи. В период привыкания возможно ощущение дискомфорта и нарушение дикции. Не подходят пациентам, имеющим аллергию на пластмассы.</li>\r\n	<li><strong>Изготовленные из нейлона.</strong> Нейлон – мягкий эластичный полимер. Он не вызывает аллергических реакций, обладает хорошими эстетическими показателями. Недостатки нейлоновых протезов: неполноценная передача нагрузки на костную ткань; низкий срок службы. Также они впитывают запахи.</li>\r\n	<li><strong>Acry Free.</strong> В составе нет акрила и мономеров. Лучший из вариантов для съемного протезирования при частичном отсутствии зубов: устойчивость к окрашиванию, высокая прочность. Acry Free не вызывает аллергических реакций. Единственный минус – высокая стоимость.</li>\r\n</ul>\r\n\r\n<p>\r\n	<br>\r\n</p>', 0),
(83, '', 'Съемные протезы Условно-съемные конструкции Выделяются:', '<h3>Условно-съемные конструкции</h3>\r\n\r\n<p>Выделяются:</p>\r\n\r\n<ul>\r\n	<li><strong>Бюгельные протезы. </strong>Подходят для «замещения» нескольких отсутствующих единиц. Крепятся на зубы металлическими, нейлоновыми крючками или аттачменами. Частично перекрывают небо. Преимущество – они правильно распределяют жевательную нагрузку.</li>\r\n	<li><strong>Протезы Квадротти.</strong> В составе конструкции нет металлических элементов. Основа – эластичный, прочный пластмассовый материал Dental D. Крючков почти не видно, небо не перекрывается. Устанавливаются при отсутствии нескольких зубов.</li>\r\n</ul>\r\n\r\n<h3>Протезы с опорой на имплантах</h3>\r\n\r\n<p>Установка осуществляется на 2-6 имплантов. Отличаются надежной фиксацией, длительным сроком службы. Не травмируют десны. Единственный недостаток – относительно продолжительный период лечения (изготовления).</p>', 0),
(84, 'Показания для проведения процедуры', 'Съемные протезы Показания для проведения процедуры', '<p>Среди показаний стоит выделить:</p>\r\n\r\n<ul>\r\n	<li>отсутствие зубов на нижней или верхней челюсти (полное или частичное).</li>\r\n	<li>невозможность имплантации.</li>\r\n</ul>\r\n\r\n<p>Также врач нашей стоматологии порекомендует съемные протезы для ношения в период подготовки постоянной конструкции.</p>', 0),
(85, 'Почему мы?', 'Съемные протезы Почему мы?', '<p>Врачи нашей стоматологии используют материалы нового поколения (Vita, Bredent, Dentarium (Германия), Candulor (Швейцария), Rhein (Италия)). Это обеспечивает высокое качество и совместимость протезов. Они будут комфортными и удобными для любого пациента.</p>\r\n\r\n<p>Собственная зуботехническая лаборатория. Врачи используют в работе немецкое оборудование высокой точности. Оно применяется для изготовления и припасовки.</p>\r\n\r\n<p>Для оценки состояния полости рта пациента и выявления индивидуальных особенностей врачи стоматологии используют дентальный 3D-томограф Gendex GXDP-700 (США). Неточности снимков, погрешности протезирования исключены.</p>', 0),
(86, '', 'Исправление прикуса  Брекеты Это несъемные стоматологические конструкции', '<h3>Брекеты</h3>\r\n\r\n<p>Это несъемные стоматологические конструкции. Говоря проще, на зубные единицы крепятся пластинки, которые соединяет стягивающая дуга. Суть – механическое воздействие для постепенного выравнивания.</p>\r\n\r\n<p>Некоторые наши пациенты думают, что ношение брекетов – это неэстетичный способ коррекции. Все не так: можно сделать выбор лингвальных систем, которые будут незаметны для окружающих, потому что их устанавливают на внутреннюю сторону зубных рядов.</p>\r\n\r\n<p>Также пациенты нашей стоматологии могут выбрать в нашей стоматологии незаметные брекеты (сапфировые, из керамики).</p>\r\n\r\n<p>Преимущество ношения таких конструкций – возможность устранить любые дефекты, даже избавиться от перекрестного прикуса средней и тяжелой форм.</p>', 1),
(87, '', 'Исправление прикуса Трейнеры Напоминают каппы, но более массивны.', '<h3>Трейнеры</h3>\r\n\r\n<p>Напоминают каппы, но более массивны. Врач нашей стоматологии порекомендует ношение трейнеров при:</p>\r\n\r\n<ul>\r\n	<li>скученности зубных единиц.</li>\r\n	<li>дефектах речи.</li>\r\n	<li>затрудненном глотании и т. д.</li>\r\n</ul>\r\n\r\n<p>Недостаток трейнеров – возможность исправления только незначительных патологий. Как и в случае с каппами, в некоторых случаях необходимо будет другое лечение.</p>\r\n\r\n<h3>Протезирование</h3>\r\n\r\n<p>Иногда для коррекции зубочелюстных аномалий может потребоваться протезирование. При наличии показаний стоматолог порекомендует протезы.</p>', 0),
(88, '', 'Реставрация зубов Реставрация – это процедура восстановления зубов. Посре', '<p>Реставрация – это процедура восстановления зубов. Посредством этой процедуры в клинических условиях стоматологи восстанавливают эстетику (зона улыбки), жевательную функцию зубных единиц. Разновидностей коррекции зубов множество: прямые (посредством пломбировочных материалов), непрямые методики (с помощью вкладок, виниров из керамики).</p>\r\n\r\n<blockquote>\r\n\r\n	<p>Врачи нашей клиники применяют для лечения качественные материалы, современные технологии и эффективное высокоточное стоматологическое оборудование. Это залог качественной коррекции всех повреждений, сколов, трещин и даже прикуса.</p>\r\n\r\n	<p>Различают два метода реставрации зубов – прямую и непрямую.</p>\r\n</blockquote>', 0),
(89, '', 'Реставрация зубов Методика прямой реставрации  Особенности:', '<h3>Методика прямой реставрации</h3>\r\n\r\n<p><strong>Особенности:</strong></p>\r\n\r\n<ul>\r\n	<li>восстановление зуба выполняется композитами.</li>\r\n	<li>процедура проводится в день визита.</li>\r\n	<li>длительность – до двух часов.</li>\r\n</ul>\r\n\r\n<p><strong>Этапы лечения</strong> в нашей стоматологии прямым методом:</p>\r\n\r\n<ul>\r\n	<li>Консультация и осмотр.</li>\r\n	<li>Подготовка плана лечения (выбор материалов, их оттенка).</li>\r\n	<li>Удаление налета для улучшения адгезивных свойств (сцепление поверхности зуба и композита).</li>\r\n	<li>Нанесение пломбировочных материалов слоями.</li>\r\n	<li>Полировка и шлифовка.</li>\r\n</ul>\r\n\r\n<p><strong>Преимущества метода:</strong></p>\r\n\r\n<ul>\r\n	<li>возможно восстановление после предварительного лечения кариеса.</li>\r\n	<li>соответствие цвета и формы восстановленных единиц натуральным.</li>\r\n	<li>все процедуры за один визит.</li>\r\n</ul>', 1),
(90, '', 'Реставрация зубов Такой метод реставрации ча', '<p>Такой метод реставрации часто применяется для восстановления боковых зубных единиц, реже – для передних. Считается оптимальным и доступным вариантом косметической коррекции несущественных дефектов (сколов, трещин).</p>', 0),
(91, '', 'Реставрация зубов  Непрямая реставрация', '<h3>Непрямая реставрация</h3>\r\n\r\n<p>Непрямые методы следующие:</p>\r\n\r\n<ul>\r\n	<li>реставрирование зубов искусственными вкладками из керамики.</li>\r\n	<li>применение виниров из композитов или керамики.</li>\r\n</ul>\r\n\r\n<p><strong>Вкладки</strong> используются при существенных разрушениях коронковой части зубных единиц, виниры – при незначительных травмах и дефектах.</p>\r\n\r\n<p><strong>Виниры</strong> – это небольшие накладки, которые крепятся на зубы после обточки. Вкладки – микропротезы.</p>\r\n\r\n<p>Обе разновидности стоматологических конструкций позволяют избавиться от визуальных недостатков, отличаются высокими эстетическими показателями. Это идеальный метод коррекции верхних и нижних зубов, особенно в зоне улыбки.</p>\r\n\r\n<p><strong>Этапы процедуры на примере установки виниров:</strong></p>\r\n\r\n<ul>\r\n	<li>Предварительное обследование, осмотр, лечение при необходимости, снятие оттисков.</li>\r\n	<li>Изготовление виниров в зуботехнической лаборатории.</li>\r\n	<li>Фиксация.</li>\r\n</ul>', 0),
(92, '', 'Реставрация зубов Плюсы метода:', '<p><strong>Плюсы метода:</strong></p>\r\n\r\n<ul>\r\n	<li>соответствие изготовленных конструкций естественным зубным единицам.</li>\r\n	<li>естественность.</li>\r\n	<li>стойкость керамики к налету (внешняя поверхность гладкая, бактерии не могут «зацепиться» за нее).</li>\r\n	<li>накладки изготавливаются из прессованной керамики, что обеспечивает прочность.</li>\r\n</ul>', 0),
(93, 'Показания к реставрации', 'Реставрация зубов Показания к реставрации', '<p>Стоматолог нашей клиники порекомендует восстановить зубы (отреставрировать) после консультации и осмотра полости рта пациента, если обнаружит:</p>\r\n\r\n<ul>\r\n	<li>стираемость.</li>\r\n	<li>изменение цвета эмали.</li>\r\n	<li>щели между зубными единицами.</li>\r\n	<li>частично или полностью разрушенные зубы.</li>\r\n</ul>\r\n\r\n<p>Перед проведением процедуры может потребоваться предварительное лечение (кариеса, мягких тканей) и профессиональная чистка (для удаления налета и камня). Это необходимо для сохранения здоровых естественных зубов пациента.</p>', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_country`
--

CREATE TABLE `konvertagency_doctors_country` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_country`
--

INSERT INTO `konvertagency_doctors_country` (`id`, `name`) VALUES
(6, 'нет'),
(7, 'Израиль'),
(8, 'Германия'),
(9, 'Швейцария'),
(10, 'Южная Корея'),
(11, 'Швеция');

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_discounts`
--

CREATE TABLE `konvertagency_doctors_discounts` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_current` int UNSIGNED NOT NULL,
  `price_old` int UNSIGNED DEFAULT NULL,
  `txt_promotions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `txt_btn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication` tinyint(1) NOT NULL,
  `auto_date` tinyint(1) NOT NULL DEFAULT '1',
  `date_on` tinyint(1) NOT NULL DEFAULT '1',
  `date` date DEFAULT NULL,
  `txt_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_discounts`
--

INSERT INTO `konvertagency_doctors_discounts` (`id`, `title`, `price_current`, `price_old`, `txt_promotions`, `txt_btn`, `slug`, `link`, `publication`, `auto_date`, `date_on`, `date`, `txt_title`) VALUES
(1, 'Бесплатная консультация', 0, 500, '<p><span style=\"font-size: 24px;\">Консультация стоматолога терапевта -&nbsp;</span><a href=\"/doktor/kibizova\"><strong><span style=\"font-size: 24px;\">Кибизова София Витальевна</span></strong></a></p><p>Терапевт специализируется на лечении зубов и десен, профессональной гигиене и отбеливании.</p><p><span style=\"font-size: 24px;\">Консультация хирурга-имплантолога -&nbsp;</span><a href=\"/doktor/borlakov\"><strong><span style=\"font-size: 24px;\">Борлаков Шамиль Рашидович</span></strong></a></p><p>Стоматолог имплантолог специализируется на удалении проблемных зубов и восстановлении зубного ряда с помощью имплантов.</p>', 'Записаться по акции', 'besplatnaya-konsultaciya', '', 1, 1, 0, '2021-11-24', 'Консультация стоматолога-терапевта и хирурга-имплантолога'),
(2, 'Комплексная профессиональная чистка полости рта по суперцене!', 3500, 5500, '<p>В комплекс входит:</p><ul><li>Удаление твердых зубных отложений ультразвуком и скейлерами.</li><li>Чистка мягких зубных отложений и налета аппаратом Air-Flow</li><li>Удаление поддесневых зубных отложений для профилактики пародонтита.</li><li>Полировка поверхности зубов (включая межзубную полировку лавсановыми штрипсами)</li><li>Укрепление и фторирование эмали зуба.</li><li>Обучение гигиена полости рта.</li></ul>', 'Записаться по акции', 'kompleksnaya-professionalnaya-chistka-polosti-rta-po-supercene', 'professionalnaya-chistka-zubov', 1, 1, 1, NULL, ''),
(3, 'test', 1000, NULL, '', 'Записаться по акции', 'test', '', 0, 1, 1, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_faq`
--

CREATE TABLE `konvertagency_doctors_faq` (
  `id` int UNSIGNED NOT NULL,
  `faq_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_faq`
--

INSERT INTO `konvertagency_doctors_faq` (`id`, `faq_slug`, `title`, `class`, `description`) VALUES
(1, 'faq_1', 'Часто задаваемые вопросы', '', 'Лечение десен'),
(2, 'faq-implantation', 'Часто задаваемые вопросы', '', 'Имплантация'),
(4, 'faq-viniry', 'Часто задаваемые вопросы', '', 'Виниры'),
(5, 'faq-brackets', 'Часто задаваемые вопросы', '', 'Брекеты'),
(6, 'faq-ispravlenie-prikusa', 'Часто задаваемые вопросы', '', 'Исправление прикуса'),
(7, 'faq-koronki-na-zuby', 'Часто задаваемые вопросы', '', 'Коронки на зубы'),
(8, 'faq-lechenie-zubov', 'Часто задаваемые вопросы', '', 'Лечение зубов'),
(10, 'faq-lechenie-kariesa', 'Часто задаваемые вопросы', '', 'Лечение кариеса'),
(11, 'faq-lechenie-pulpita', 'Часто задаваемые вопросы', '', 'Лечение пульпита'),
(12, 'faq-dental-cleaning', 'Часто задаваемые вопросы', '', 'Профес­сио­нальная чистка зубов'),
(13, 'faq-semnye-protezy', 'Часто задаваемые вопросы', '', 'Съемные протезы'),
(14, 'faq-restavraciya-zubov', 'Часто задаваемые вопросы', '', 'Реставрация зубов');

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_faq_row`
--

CREATE TABLE `konvertagency_doctors_faq_row` (
  `id` int UNSIGNED NOT NULL,
  `faq_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_faq_row`
--

INSERT INTO `konvertagency_doctors_faq_row` (`id`, `faq_slug`, `question`, `answer`) VALUES
(1, 'faq_1', '1.	Будет ли боль?', '<p>Зависит от выбранного метода. К примеру, лечение лазером безболезненно, а кюретаж может доставить неприятные ощущения, &nbsp;врач порекомендует анестезию.</p>'),
(2, 'faq_1', '2.	Можно ли вылечить воспаления дома?', '<p>Можно, но только после терапии в условиях клиники. Для закрепления результатов доктор порекомендует применять специальные препараты.</p>'),
(3, 'faq_1', '3.	Вы лечите только взрослых или принимаете также детей?', '<p>Мы лечим и взрослых, и детей. Работаем с любыми заболеваниями полости рта, а также с травмами зубных единиц.</p>'),
(4, 'faq_1', '4.	После твердой пищи кровоточат мягкие ткани. У меня проблемы?', '<p>Однозначно сказать сложно: нужно обследование. Говорить о неправильном выборе пищи тоже не стоит. В норме кровоточивость возникает только после травмы. Приходите, мы вам расскажем, в чем может быть причина!</p>'),
(5, 'faq-implantation', 'Какие производители имплантационных систем существуют?', '<p>В нашей клинике мы используем только лучшие, проверенные стоматологические системы. Это швейцарские (ROOT, SGS, Straumann), шведские (Astra Tech, Nobel Biocare), южнокорейские импланты OSSTEM. Имплантолог подберет систему, которая подходит для решения конкретной задачи, после тщательного обследования.</p>\r\n\r\n<p>Также существуют израильские производители (Mis, BioLine, Noris, Adin, Alpha Bio), немецкие (Xive, Anlylos, Impro, Bego semados, ICX), американские (Bicon, BioHorizons), но они не так хороши по соотношению цена/качество.</p>'),
(6, 'faq-implantation', 'Каковы показания к синус-лифтингу?', '<p>Прежде чем поставить имплант, врач проведет диагностику и обследование. Если не будет обнаружено противопоказаний, стоматолог осуществит установку имплантатов без костной пластики. Если же обнаружится атрофия костной ткани или окажется, что расположение гайморовой пазухи не соответствует норме, врач настоит на пластике.</p>'),
(7, 'faq-implantation', 'Нужно восстановить только один зуб. Какой метод протезирования подойдет?', '<p>Метод дентальной имплантации зубов будет определять врач после консультации и диагностики. Для восстановления одной или нескольких утраченных зубных единиц можно использовать съемные протезы или стоматологические импланты.</p>'),
(8, 'faq-implantation', 'Какова стоимость одного импланта зуба с работой?', '<p>Это зависит от сложности ситуации, состояния полости рта пациента. К примеру, при необходимости проведения дополнительных процедур (профессиональная чистка (гигиена), лечение кариеса, воспалений тканей десен и др.) стоимость имплантации будет выше. Обо всем расскажет врач во время консультации.</p>'),
(9, 'faq-implantation', 'Каковы противопоказания?', '<p>Они общие: заболевания полости рта (пародонтит и др.), период беременности, лактации. Обо всем расскажем врач. Он определит возможность проведения процедуры после консультации и диагностики.</p>'),
(10, 'faq-implantation', 'Всегда ли нужно рассечение десны?', '<p>Нет. О рассечении и наложении швов можно забыть, если врач рекомендует одномоментную или экспресс-имплантацию. Их этапы не предполагают рассечения.</p>'),
(11, 'faq-implantation', 'Какие рекомендации на период после процедуры?', '<p>Они стандартные: необходим уход за конструкциями. Пациенты, которые не придерживаются рекомендаций стоматолога, не чистят зубы, чаще сталкиваются с проблемами и осложнениями.</p>'),
(18, 'faq-viniry', 'Если есть проблемы с челюстями, можно ли установить виниры?', '<p>В таком случае в первую очередь врач нашей стоматологии порекомендует исправить все проблемы. Установка на неровные зубные ряды не осуществляется.</p>'),
(19, 'faq-viniry', 'Обязательно ли обтачивать поверхность зубов?', '<p>Нет. Можно установить тонкую пластинку, которая будет закрывать поверхность зубов на 0,1-0,2 мм.</p>'),
(20, 'faq-viniry', 'Зачем нужны временные конструкции?', '<p>Такие накладки занимают в стоматологии особое место, но в качестве постоянных не используются. Основные задачи, которые они решают: примерка будущей улыбки и возможность для пациента привыкнуть к ношению. Они ненадежны, под область их установки попадает слюна и кусочки пищи.</p>'),
(21, 'faq-viniry', 'Сколько стоит установка виниров в вашей стоматологии?', '<p>Врач нашей стоматологии озвучит стоимость установки виниров под ключ после осмотра, консультации с учетом состояния полости рта. Также будут учитываться другие факторы (сколько нужно пластинок, какая выбрана разновидность и т. д.).</p>'),
(22, 'faq-viniry', 'Какие пластинки лучше: керамические или композитные?', '<p>Если говорить исключительно об эстетике, стоит отметить, что выигрывают керамические накладки. Что подходит вам, подскажет врач после консультации и осмотра.</p>'),
(23, 'faq-brackets', 'Какова стоимость брекетов в стоматологии Авиценна?', '<p>Стоимость зависит от их вида, используемых материалов, необходимости дополнительных процедур (лечение, чистка). Врач порекомендует подходящую систему с учетом состояния зубов пациента, сложности патологии.</p>'),
(24, 'faq-brackets', 'Могу ли я установить брекеты не на обе челюсти, а на одну?', '<p>Да, в некоторых случаях это возможно. Об особенностях процедуры, а также принципе процесса установки на одну челюсть расскажет стоматолог во время консультации. Этапы процедуры изменятся слабо, основные действия будут аналогичны действиям для установки системы на все челюсти.</p>'),
(25, 'faq-brackets', 'Какие системы лучше? Есть ли существенные отличия?', '<p>Лучших не существует, однако есть подходящие для решения конкретных задач (выравнивание челюстей относительно друг друга, коррекция прикуса и т. д.). Каждый из видов отличается особенностями, обладает как преимуществами, так и недостатками. К примеру, металлические системы по сравнению с керамическими требуют меньшего периода ношения (плюс), но выглядят менее эстетично (минус).</p>'),
(26, 'faq-brackets', 'Не хочу, чтобы брекеты были заметными. Это возможно?', '<p>Да, есть модели брекетов для зубов, которые врач фиксирует по желанию пациента с внутренней стороны. Также врачи нашей стоматологи врачи используют каппы Invisalign. Они незаметны при ношении.</p>'),
(27, 'faq-brackets', 'Ношение приводит к дискомфорту?', '<p>Сначала – да, но после нескольких дней-недель (индивидуально) пациенты обычно привыкают к брекетам. Если установка была осуществлена правильно, проблем и осложнений возникнуть не должно.</p>'),
(28, 'faq-ispravlenie-prikusa', 'Какой метод исправления – самый лучший?', '<p align=\"left\">Лучших не существует, но относительно эффективной считается установка брекет-систем или пластинок. С их помощью вне зависимости от причины патологии можно исправить даже сложные нарушения.</p>'),
(29, 'faq-ispravlenie-prikusa', 'Каковы этапы процедуры?', '<p align=\"left\">Все зависит от того, какой метод исправления выбран. К примеру, в некоторых случаях потребуется сначала сделать слепок, в других – провести предварительное лечение. Обо всем расскажет врач нашей стоматологии после консультации.</p>'),
(30, 'faq-ispravlenie-prikusa', 'Есть ли противопоказания?', '<p align=\"left\">Они общие: наличие заболеваний полости рта (сначала потребуется их лечение), болезни крови, онкология. Возможность проведения той или иной процедуры определит врач.</p>'),
(31, 'faq-ispravlenie-prikusa', 'Какие существуют брекеты?', '<p>Их множество. Системы различают по методам установки, по материалам, из которых они изготавливаются. Если цель, к примеру – незаметное ношение, врач порекомендует лингвальные брекеты. Они устанавливаются на внутреннюю сторону зубов, не мешают нормальной жизнедеятельности. Также для таких целей можно подобрать незаметные системы, изготовленные из сапфиров.</p>'),
(32, 'faq-ispravlenie-prikusa', 'Возможно ли выровнять зубы без брекет-систем?', '<p>Да. Для этого можно использовать элайнеры, каппы, пластинки или трейнеры. Однако последние не всегда эффективны, особенно при необходимости коррекции серьезных патологий.</p>'),
(33, 'faq-ispravlenie-prikusa', 'Обязательно ли лечение до установки ортодонтических конструкций?', '<p>Да, лечение обязательно. Установка ортодонтических конструкций не осуществляется, если состояние полости рта пациента неудовлетворительно. К примеру, если обнаруживается кариес, врач сначала порекомендует вылечить его.</p>'),
(34, 'faq-ispravlenie-prikusa', 'Каковы рекомендации на период после процедуры?', '<p>Об этом расскажет лечащий врач. Многое будет зависеть от типа установленной стоматологической (ортодонтической) конструкции.</p>'),
(35, 'faq-koronki-na-zuby', 'Какие есть противопоказания?', '<p>Замена зубов коронками не проводится, если у пациента есть аллергия на металлы и сплавы, а также при наличии патологий прикуса. Врач даст совет воздержаться от процедуры, если обнаружит воспаления полости рта.</p>'),
(36, 'faq-koronki-na-zuby', 'Сколько служат?', '<p>В среднем – 15 лет. Литые прослужат от 10 лет, керамические – максимум 15, циркониевые – до 20. Об особенностях расскажет врач. Он же порекомендует подходящий для решения конкретных стоматологических задач вариант.</p>\r\n\r\n<p>Стоит отметить, что даже максимально надежные ортопедические изделия в итоге прослужат меньше, если за ними не ухаживать. Врач нашей клиники расскажет, что и как нужно делать, чтобы сохранить протезы в порядке как можно дольше.</p>'),
(37, 'faq-koronki-na-zuby', 'Почему болит зуб под коронкой?', '<p>Вероятных причин несколько: плохое прилегание, неправильная фиксация, воспаления вследствие некорректного депульпирования. Стоматологи нашей клиники используют качественные материалы и надежное стоматологическое оборудование. Врачебные ошибки исключены.</p>'),
(38, 'faq-koronki-na-zuby', 'Появился неприятный запах изо рта. Что делать?', '<p>Если регулярная чистка, ополаскиватели и другие средства не помогают, рекомендуем обратиться за помощью к врачу. Причины различны, однако чаще всего неприятный запах обусловлен нарушением целостности ортопедических изделий или их неправильной установкой.</p>'),
(39, 'faq-koronki-na-zuby', 'Что такое культя и зачем она нужна?', '<p>Культя – это уменьшенная зубная единица с более простой формой. Часто создается искусственно путем наращивания. Нужна для фиксации ортопедических стоматологических конструкций.</p>'),
(40, 'faq-koronki-na-zuby', 'Чем отличаются коронки E-MAX?', '<p>Коронки E-Max - разновидность керамических несъемных протезов. Заменяют коронковые части зубов. E-Max – компания-производитель керамики для протезов. Они изготавливаются в лабораторных условиях из безметалловой стеклокерамики. Чаще устанавливаются для восстановления одиночных передних зубов, реже – для целого зубного ряда. Выглядят максимально натурально.</p>'),
(41, 'faq-lechenie-zubov', 'Могу ли я пройти лечение по полису ОМС бесплатно?', '<p>В нашей стоматологии пациенты могут пройти лечение по полису ДМС. Услуги бесплатно для владельцев полисов ОМС мы не оказываем. Вылечить проблемные единицы недорого – не про нас, но мы отвечаем за качество, даем все гарантии на протезы, пломбы, а также другие расходные материалы.</p>'),
(42, 'faq-lechenie-zubov', 'Безболезненно ли лечение зубов?', '<p>Наши врачи не используют наркоз и седацию. Анестезия не нужна. Лечение проходит быстро, без боли благодаря современному стоматологическому оборудованию (микроскоп, лазер, «Sirona»), расходным материалам премиум-класса. Неприятные ощущения исключены.</p>\r\n\r\n<p>Для пациентов лечение зубов полностью комфортно.</p>'),
(43, 'faq-lechenie-zubov', 'Хочу вылечить зубы. Сколько будет стоить лечение и прочие процедуры (консультация, осмотр, диагностика)?', '<p>Стоимость зависит от текущего состояния единиц, от наличия воспалений, необходимости устранения патологий. По результатам консультации и терапевтического осмотра доктор сделает заключение, после – назовет ориентировочную стоимость необходимых процедур.</p>'),
(44, 'faq-lechenie-zubov', 'Возможны ли осложнения?', '<p>Чтобы избежать осложнений после сложных вмешательств, сохранить все единицы здоровыми, посоветуйтесь со стоматологом. Он порекомендует доступные средства для ухода, расскажет, от чего нужно воздержаться на период после проведения той или иной процедуры.</p>'),
(45, 'faq-lechenie-zubov', 'Какие есть противопоказания?', '<p>Лечение зубов не проводится при наличии ряда противопоказаний, но для каждой из возможных процедур они разные. Общими являются такие противопоказания, как период беременности и лактации, комплексные заболевания, психические расстройства. Врач определит возможность терапии после осмотра и консультации.</p>'),
(46, 'faq-lechenie-zubov', 'Могу ли я доверять клинике Med Studio?', '<p>Однозначно! Наши врачи предлагают спектр процедур, а также услуг стоматологии, включающий лечение ретинированных зубов, пульпита одноканальной единицы, восстановление выпавших единиц, терапию гингивита, ортодонтию. Также пациенты клиники могут получить консультацию ортопеда, ортодонта, хирурга, терапевта, пародонтолога.</p>\r\n\r\n<p>Профессионализм, квалификация врачей, точная диагностика, применение компьютерной томографии (томограммы позволяют определить степень поражений твердых, мягких тканей, их характер) – гарантия эффективного избавления от болезней зубов в стоматологии Med Studio!</p>'),
(54, 'faq-lechenie-kariesa', 'Возможно ли лазерное лечение кариеса?', '<p>В нашей стоматологии есть лазер, однако он используется преимущественно при работе с воспалениями десен. Препарирование осуществляется с помощью профессиональной стоматологической бормашины.</p>'),
(55, 'faq-lechenie-kariesa', 'Каковы причины развития кариозных поражений зубов?', '<p>Самая распространенная – неправильная гигиена. Также на состояние зубов влияет пища. Избыток сахара и углеводов неблагоприятен. Также врачи нашей стоматологии иногда сталкиваются с наследственными причинами.</p>'),
(56, 'faq-lechenie-kariesa', 'Какие самые распространенные симптомы?', '<p>Изменение цвета эмали, повышенная чувствительность, боли – тревожные сигналы. При обнаружении таких симптомов рекомендуем как можно скорее обратиться за помощью врача-стоматолога.</p>'),
(57, 'faq-lechenie-kariesa', 'Как избежать развития заболеваний полости рта?', '<p>Лучшая профилактика – не только уход за твердыми и мягкими тканями, но и регулярные визиты к стоматологу. Доктор может обнаружить начальные стадии заболеваний, провести чистку полости рта и предупредить развитие осложнений.</p>'),
(58, 'faq-lechenie-kariesa', 'Сколько будет стоить лечение?', '<p>Врач озвучит стоимость после оценки стадии развития заболевания, локализации и разработки плана лечения. На нее повлияет и используемый пломбировочный материал.</p>'),
(59, 'faq-lechenie-pulpita', 'Как избежать пульпита?', '<p>Лучшая профилактика – своевременное лечение кариеса. При обнаружении характерных симптомов (болит зуб во время еды, особенно от сладкого и т. п.) рекомендуем вам обратиться в стоматологию.</p>'),
(60, 'faq-lechenie-pulpita', 'Когда подойдет биологической метод лечения?', '<p>Врач порекомендует лечение без удаления пульпы, если кариес не успел поразить нерв. К сожалению, чаще приходится прибегать к эндодонтическим стоматологическим методам.</p>'),
(61, 'faq-lechenie-pulpita', 'Каковы причины пульпита?', '<p>Несвоевременное лечение, недостаточная гигиена полости рта. Также наши стоматологи сталкиваются с необходимостью лечения пациентов, не получивших качественной терапии в других клиниках (кариес под пломбой и т. п.). В нашей стоматологии врачебные ошибки исключены. Это обусловлено использованием в процессе чистки пульповой камеры и лечения микроскопа.</p>'),
(62, 'faq-dental-cleaning', 'Поможет ли чистка вернуть белизну?', '<p>С помощью проф. чистки зубов удастся вернуть естественный оттенок эмали. Чтобы осветлить ее, рекомендуется комплекс дополнительных процедур. Наш стоматолог обо всем расскажет.</p>'),
(63, 'faq-dental-cleaning', 'У меня повышенная чувствительность. Что делать?', '<p>Процедуру можно провести, если ткани полости рта очень чувствительны, врач предложит анестезию &nbsp;Решение должен принять пациент.</p>'),
(64, 'faq-dental-cleaning', 'Врач назначил чистку перед имплантацией и протезированием. Это обязательно?', '<p>Да, процедура является обязательной. С ее помощью доктор удалит бактерии, налет, очистит полость рта. Это необходимо для исключения рисков осложнений и воспалений после протезирования.</p>'),
(65, 'faq-dental-cleaning', 'Почему образуется зубной камень?', '<p>Образование твердых зубных отложений нередко вызвано нарушениями метаболизма, неправильной гигиеной, привычками питаться вредным продуктами. Если в домашних условиях с налетом и отложениями справиться не удается, обращайтесь. Мы поможем!</p>'),
(66, 'faq-dental-cleaning', 'Есть ли какие-то альтернативы процедуре?', '<p>Нет. Только комплексная стоматологическая терапия позволяет добиться хороших результатов. Отметим, что самостоятельный уход на практике редко обеспечивает эффективную очистку. Затягивать с визитом не рекомендуется, потому что существует риск развития осложнений, вызванных налетом и образованиями.</p>'),
(67, 'faq-dental-cleaning', 'Сколько стоит?', '<p>Стоимость будет зависть от состояния полости рта пациента. Если, к примеру, потребуется предварительное лечение заболеваний (кариес, воспаления), они будут оплачиваться отдельно. Также на стоимость влияет сложность предстоящих процедур: количество налета, камня и т. д.</p>\r\n\r\n<p>Обо всем расскажет врач клиники после консультации и осмотра.</p>'),
(68, 'faq-semnye-protezy', 'Есть ли противопоказания?', '<p>Не рекомендуется установка при наличии у пациента аллергических реакций на материалы и составы, при пародонтозе, воспалениях слизистых тканей полости рта. Стоматологи во время консультации определяют возможность или невозможность проведения процедуры.</p>'),
(69, 'faq-semnye-protezy', 'Каковы последствия длительного ношения?', '<p>Длительное ношение может стать причиной атрофии костных тканей.</p>'),
(70, 'faq-semnye-protezy', 'Как ухаживать за съемным протезом?', '<p>Уход за ним аналогичен уходу за собственными зубами. Необходимо регулярно чистить протезы с помощью обычной зубной щетки. Если установлена частичная конструкция, собственные зубы также нужно чистить от налета. Дополнительно врач порекомендует после чисток ополаскивать ротовую полость.</p>'),
(71, 'faq-semnye-protezy', 'Стирают ли крючки эмаль?', '<p>Крючки сделаны таким образом, что они не вредят ни эмали зубов, ни их корням. Если они изготовлены правильно, можно ни о чем не переживать.</p>'),
(72, 'faq-semnye-protezy', 'Не могу привыкнуть к ношению. Что делать?', '<p>Постарайтесь отказаться от твердой, жесткой пищи. Хотя бы на время. При жевании первое время может возникать дискомфорт. Также в период адаптации может повыситься слюноотделение. Справиться с этим можно, если регулярно пить воду небольшими глотками.</p>\r\n\r\n<p>После процедуры в течение нескольких часов может возникать рвотный рефлекс. Характерно его проявление после установки полностью замещающих зубные ряду конструкций. Рекомендуется рассасывать мятные леденцы, полоскать рот. Рефлекс будет постепенно ослабевать. Обычно пациенты привыкают к ношению в течение нескольких дней.</p>'),
(73, 'faq-brackets', 'Есть ли противопоказания для установки брекетов?', '<p>Стоматолог откажет в проведении процедуры при наличии:</p>\r\n\r\n<ul>\r\n	<li>воспалений, заболеваний зубов и десен;</li>\r\n	<li>заболеваний иммунного характера;</li>\r\n	<li>психических расстройств и т. п.</li>\r\n</ul>'),
(74, 'faq-restavraciya-zubov', 'Поражение затронуло корень. Что делать?', '<p>В таком случае стоматолог порекомендует предварительное лечение, однако виниры не подойдут. Будет принято решение в пользу имплантации (установка штифта, создание слепка и подготовка новой искусственной единицы).</p>'),
(75, 'faq-restavraciya-zubov', 'Всегда ли нужно предварительное лечение?', '<p>Да, особенно лечение необходимо, если у пациента обнаруживается кариес, если есть воспаления десен. Без него ни один метод не будет результативным.</p>'),
(76, 'faq-restavraciya-zubov', 'Есть ли противопоказания?', '<p>Они общие: наличие заболеваний и поражений мягких, твердых тканей (требуется предварительно их пролечить), аллергии на используемые материалы.</p>'),
(77, 'faq-restavraciya-zubov', 'За один визит можно восстановить несколько зубных единиц?', '<p>Возможность или невозможность озвучит врач с учетом конкретной проблемы, сложности дефекта после оценки «фронта» работ.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_feadback`
--

CREATE TABLE `konvertagency_doctors_feadback` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feadback_txt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feadback_for` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feadback_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_feadback`
--

INSERT INTO `konvertagency_doctors_feadback` (`id`, `name`, `feadback_txt`, `feadback_for`, `feadback_url`, `rating_description`) VALUES
(3, '', 'Устанавливала зубные импланты у Хиблашвили Натальи. Очень внимательный и чуткий врач. Понравилась уже на первой консультации. В самой стоматологии отличное современное оборудование. Удобно, что можно сделать полную диагностику в одном месте и не тратить лишнее время. Всем, кто хочет получить качественную помощь – рекомендую.', 'Врач : Хиблашвили Н.Г.', '', '2'),
(4, '', 'Яркая, современная стоматология!:) В кабинетах очень светло и уютно! Посещаю клинику раз в полгода для профилактики и чистки полости рта, каждый раз с удовольствием! Врач Софья Кибизова – просто чудо! 🙂', 'Врач: Кибизова С.В.', '', '7'),
(5, '', 'Хочу отметить профессионализм замечательного доктора Алексея Алесеевича и всего персонала стоматологии Мед-Студио! Давно мечтала сделать себе красивую голливудскую улыбку. Врача выбрала по рекомендации подруг. Я в восторге от результата, эстетика потрясающая! 🙂', 'Врач: Еременко А.А.', '', '8'),
(6, '', 'В стоматологии удалял лежачий зуб мудрости. Керейтова Наталья – настоящий профессионал! Во время удаления боли практически не чувствовал. Опухоль сошла уже на следующий день. Я очень впечатлен, врач работает быстро и четко!', 'Врач: Керейтова Н.В.', '', '3'),
(7, '', 'В стоматологии Мед-Студио лечил запущенный кариес. До этого плохо следил за здоровьем зубов, пришел в клинику уже с болью, думал нужно удалять. Огромная благодарность Никулушкину Антону Артамоновичу. Врач смог сохранить мои зубы. Все лечение прошло практически безболезненно. Пломбировали зубы очень качественным материалом – никаких посторонних ощущений во рту на следующий день. Всем рекомендую стоматологию Мед-Студио!', 'Врач: Никулушкин А.А .', '', '4');

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_galleries`
--

CREATE TABLE `konvertagency_doctors_galleries` (
  `id` int UNSIGNED NOT NULL,
  `action` smallint NOT NULL DEFAULT '0',
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallerie_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagination` tinyint(1) NOT NULL DEFAULT '0',
  `pcs` smallint DEFAULT '4',
  `slug_gallerie` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagination_mobile` tinyint(1) NOT NULL DEFAULT '0',
  `size` smallint NOT NULL DEFAULT '0',
  `class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_title_position` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_galleries`
--

INSERT INTO `konvertagency_doctors_galleries` (`id`, `action`, `description`, `gallerie_title`, `pagination`, `pcs`, `slug_gallerie`, `pagination_mobile`, `size`, `class`, `slide_title_position`) VALUES
(3, 2, 'Лечение десен Похожие услуги', 'Похожие услуги', 0, 4, 'Lechenie-desen-Pohozhie-uslugi', 0, 0, '', 0),
(4, 3, 'Примеры работ имплантация', 'Примеры работ', 0, 4, 'primery-rabot-implantacia', 0, 0, 'sample_work', 1),
(6, 0, 'на станице \"имплантация\"', 'Лучшие системы имплантации', 0, 3, 'Best-system-implantation', 0, 0, '', 0),
(7, 2, 'Имплантация Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-implantation', 0, 0, '', 0),
(8, 3, 'Имплантация Наши работы', 'Наши работы', 0, 4, 'nashi-raboty-implantaciya', 0, 0, 'sample_work', 0),
(10, 3, 'Наши работы виниры', 'Наши работы', 0, 4, 'primery-rabot-viniry', 0, 0, 'sample_work', 0),
(11, 2, 'виниры Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-viniry', 0, 0, '', 0),
(13, 2, '', 'Популярные услуги', 0, 4, 'populyarnye-uslugi', 0, 0, '', 0),
(14, 3, 'Фото клиники', 'Фото клиники', 0, 4, 'foto-kliniki', 0, 0, '', 0),
(15, 3, 'Наши работы брекеты', 'Наши работы', 0, 4, 'nashi-raboty-brekety', 0, 0, 'sample_work', 0),
(16, 2, 'брекеты Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-breckets', 0, 0, '', 0),
(17, 2, 'Исправление прикуса Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-ispravlenie-prikusa', 0, 0, '', 0),
(18, 2, 'Коронки на зубы Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-koronki-na-zuby', 0, 0, '', 0),
(19, 3, 'Наши работы  коронки на зуб', 'Наши работы', 0, 4, 'nashi-raboty-koronki-na-zub', 0, 0, 'sample_work', 0),
(20, 3, 'Наши лицензии и сертификаты', 'Наши лицензии и сертификаты', 0, 4, 'nashi-licenzii-i-sertifikaty', 0, 2, '', 0),
(21, 3, 'Наши работы Лечение зубов', 'Наши работы', 0, 4, 'nashi-raboty-lechenie-zubov', 0, 0, 'sample_work', 0),
(22, 2, 'Лечение зубов Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-lechenie-zubov', 0, 0, '', 0),
(24, 3, 'Наши работы Лечение кариеса', 'Наши работы', 0, 4, 'nashi-raboty-lechenie-kariesa', 0, 0, 'sample_work', 0),
(25, 2, 'Лечение кариеса Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-lechenie-kariesa', 0, 0, '', 0),
(26, 2, 'Лечение пульпита Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-lechenie-pulpita', 0, 0, '', 0),
(27, 3, 'Наши работы Лечение пульпита', 'Наши работы', 0, 4, 'nashi-raboty-lechenie-pulpita', 0, 0, 'sample_work', 0),
(28, 3, 'Наши работы Профес­сио­нальная чистка зубов', 'Наши работы', 0, 4, 'nashi-raboty-profgigiena', 0, 0, 'sample_work', 0),
(29, 2, 'Профес­сио­нальная чистка зубов Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-dental-cleaning', 0, 0, '', 0),
(30, 2, 'Удаление зуба Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-udalenie-zuba', 0, 0, '', 0),
(31, 2, 'Протезирование зубов Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-protezirovanie-zubov', 0, 0, '', 0),
(32, 2, 'Съемные протезы Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-semnye-zubnye-protezy', 0, 0, '', 0),
(33, 3, 'Наши работы Реставрация зубов', 'Наши работы', 0, 4, 'nashi-raboty-restavraciya-zubov', 0, 0, 'sample_work', 0),
(34, 2, 'Реставрация зубов Похожие услуги', 'Похожие услуги', 0, 4, 'pohozhie-uslugi-restavraciya-zubov', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_marquiz`
--

CREATE TABLE `konvertagency_doctors_marquiz` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_date` tinyint(1) NOT NULL,
  `txt_slogan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeater` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `id_marquiz_site` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txt_btn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_row` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_marquiz`
--

INSERT INTO `konvertagency_doctors_marquiz` (`id`, `slug`, `title`, `txt`, `date`, `auto_date`, `txt_slogan`, `repeater`, `id_marquiz_site`, `txt_btn`, `per_row`) VALUES
(1, 'podberite-optimalnyj-variant-implantacii', 'Подберите оптимальный вариант имплантации', '<p>Ответьте на несколько вопросов и узнайте стоимость и тип имплантации, которая подойдет именно Вам!</p>', NULL, 1, 'при лечении у нас вы получаете бесплатно:', '[{\"txt_act_marquiz\":\"\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0441\\u043d\\u0438\\u043c\\u043e\\u043a (\\u041a\\u0422)\",\"old_price\":\"3 500 \\u0440\\u0443\\u0431.\",\"new_price\":\"\",\"img_act_marquiz\":\"\\/KT.png\"},{\"txt_act_marquiz\":\"\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u044b\\u0439 \\u043f\\u043b\\u0430\\u043d \\u043b\\u0435\\u0447\\u0435\\u043d\\u0438\\u044f \",\"old_price\":\"1 500 \\u0440\\u0443\\u0431.\",\"new_price\":\"\",\"img_act_marquiz\":\"\\/price.f1900f4f.png\"}]', '61869af879b7ac003fdf6733', 'Подобрать имплантацию', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_rating`
--

CREATE TABLE `konvertagency_doctors_rating` (
  `id` int UNSIGNED NOT NULL,
  `stars` int UNSIGNED NOT NULL DEFAULT '10',
  `txt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(10,1) NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_rating`
--

INSERT INTO `konvertagency_doctors_rating` (`id`, `stars`, `txt`, `rating`, `description`) VALUES
(1, 0, 'нет', '0.0', ''),
(2, 10, '15 отзывов о клинике', '5.0', 'Google'),
(3, 9, '21 отзыв о клинике', '4.8', 'Yandex'),
(4, 9, '38 отзывов о клинике', '4.6', 'Prodoctorov'),
(7, 10, '41 отзыв о клинике', '5.0', '2Gis'),
(8, 10, '26 отзывов о клинике', '5.0', 'Zoon'),
(9, 10, '31 отзыв о клинике', '5.0', 'Yell');

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_slides`
--

CREATE TABLE `konvertagency_doctors_slides` (
  `id` int UNSIGNED NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties_1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties_2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties_3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties_4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_slides`
--

INSERT INTO `konvertagency_doctors_slides` (`id`, `link`, `slide_title`, `description`, `properties_title`, `properties_1`, `properties_2`, `properties_3`, `properties_4`, `price`, `brand`, `position`) VALUES
(4, 'lechenie-pulpita', 'Лечение флюса (периостита)', '«Похожие услуги»  Лечение десен', '', '', '', '', '', '', 'нет', NULL),
(6, 'lechenie-desen', 'Лечение пародонтоза', '«Похожие услуги»  Лечение десен', '', '', '', '', '', '', 'нет', NULL),
(7, '', 'Зубная имплантация All-on-6', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', 'Зубной протез нижней челюсти на имплантатах', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', 'Имплантация под жевательный', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', 'Имплантация с протезированием', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', 'Керамическая коронка на имплантате', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', 'Мостовидный протез на четырех имплантатах', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', 'Полный бюгельный протез на имплантатах', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', 'Установка импланта на передние зубы', '', '', '', '', '', '', '', 'нет', NULL),
(20, 'lechenie-desen', 'Лечение кисты на деснах', '«Похожие услуги»  Лечение десен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(21, 'lechenie-desen', 'Лечение десен аппаратом Вектор (Vector)', '«Похожие услуги»  Лечение десен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(22, 'lechenie-desen', 'Лечение десен у детей', '«Похожие услуги»  Лечение десен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(23, 'lechenie-desen', 'Коррекция десны лазером', '«Похожие услуги»  Лечение десен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(24, 'lechenie-desen', 'Лечение десен уколами', '«Похожие услуги»  Лечение десен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(25, 'lechenie-desen', 'Лечение десен плазмой', '«Похожие услуги»  Лечение десен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(26, 'lechenie-desen', 'Пластика десны', '«Похожие услуги»  Лечение десен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(27, 'lechenie-desen', 'Наращивание десны', '«Похожие услуги»  Лечение десен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(28, 'implantacziya-zubov', 'Шведские импланты для зубов', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(29, 'implantacziya-zubov', 'Немецкие имплантанты для зубов', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(30, 'implantacziya-zubov', 'Южнокорейские импланты для зубов', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(31, 'implantacziya-zubov', 'Израильские импланты', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(32, 'implantacziya-zubov', 'Вставить передний зуб за 1 день', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(33, 'implantacziya-zubov', 'Имплантология в стоматологии', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(34, 'implantacziya-zubov', 'Вставить 1 зуб', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(35, 'implantacziya-zubov', 'Имплантация зубов по экспресс-методике', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(36, 'implantacziya-zubov', 'Вставить искусственный зуб', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(37, 'implantacziya-zubov', 'Имплантация передних зубов', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(38, 'implantacziya-zubov', 'Импланты на задние зубы', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(39, 'implantacziya-zubov', 'Имплантация зубов в кредит', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(40, 'semnye-zubnye-protezy', 'Установка несъемных протезов на зубы', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(41, 'implantacziya-zubov', 'Одноэтапная имплантация зубов', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(42, 'implantacziya-zubov', 'Двухэтапная имплантация зубов', '«Похожие услуги»  Имплантация', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(44, '', '', 'root', 'Гарантия:', 'пожизненная', '5 лет', '12-20 недель', 'возможен', 'Цена под ключ: от 22500 р.', 'ROOTT', NULL),
(46, '', '', 'sgs', 'Гарантия:', 'пожизненная', '10 лет', '6-10 недель', 'возможен', 'Цена под ключ: от 30000 р.', 'SGS', NULL),
(47, '', '', 'имплантация Наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(48, '', '', 'имплантация Наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(49, '', '', 'имплантация Наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(50, '', '', 'имплантация Наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(51, '', '', 'имплантация Наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(61, '', '', 'виниры  Примеры работ', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(62, '', '', 'виниры  Примеры работ', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(63, '', '', 'виниры  Примеры работ', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(64, '', '', 'виниры  Примеры работ', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(65, '', '', 'виниры  Примеры работ', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(66, '', '', 'виниры  Примеры работ', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(67, '', '', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(68, 'viniry', 'Накладки на зубы', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(69, 'brekety', 'Установить брекеты', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(70, 'professionalnaya-chistka-zubov', 'Удаление зубного камня', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(71, 'lechenie-kariesa', 'Лечение кариеса', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(72, 'ispravlenie-prikusa', 'Исправление прикуса', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(73, 'protezirovanie-zubov', 'Установка микропротезов', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(74, 'ispravlenie-prikusa', 'Установка пластинок', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(75, 'implantacziya-zubov', 'Протезирование на имплантах', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(76, 'restavracziya-zubov', 'Реставрация зубов', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(77, 'semnye-zubnye-protezy', 'Съемные протезы', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(78, 'lechenie-kariesa', 'Установка пломбы', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(86, '', '', 'Astra', 'Гарантия:', 'пожизненная', '7 лет', '12 -15 недель', 'возможен', 'Цена под ключ: от 47000 р.', 'Astra tech', 4),
(87, '', '', 'Straumann', 'Гарантия:', 'пожизненная', '10 лет', '6-10 недель', 'возможен', 'Цена под ключ от 52000 р.', 'Straumann', 6),
(88, '', '', 'Фото клиники фасад', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(89, '', '', 'Фото клиники ресепшен', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(90, '', '', 'Фото клиники ceric', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(91, '', '', 'Фото клиники кресло', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(92, '', '', 'Фото клиники микроскоп', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(93, '', '', 'Брекеты наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(94, '', '', 'Брекеты наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(95, '', '', 'Брекеты наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(96, '', '', 'Брекеты наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(97, '', '', 'Брекеты наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(98, '', '', 'Брекеты наши работы', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(99, 'brekety', 'Подтяжка брекетов', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(100, 'brekety', 'Выровнять зубы брекетами', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(101, 'brekety', 'Брекеты детям', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(102, 'brekety', 'Брекеты для взрослых', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(103, 'brekety', 'Брекеты для зубов из керамики', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(104, 'brekety', 'Брекеты для зубов из металла', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(105, 'ispravlenie-prikusa', 'Исправление прикуса', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(106, 'brekety', 'Исправление скученности зубов', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(107, 'brekety', 'Пластиковые брекеты для зубов', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(108, 'brekety', 'Подготовка зубов к установке брекетов', '', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(109, 'ispravlenie-prikusa', 'Исправление прикуса без брекетов', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(110, 'viniry', 'Коррекция прикуса коронками или винирами', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(111, 'brekety', 'Выпрямление прикуса капами', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(112, 'ispravlenie-prikusa', 'Выровнять прикус элайнерами', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(113, 'ispravlenie-prikusa', 'Исправление дистального прикуса', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(114, 'ispravlenie-prikusa', 'Исправление нарушений прикуса у детей', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(115, 'ispravlenie-prikusa', 'Коррекция открытого прикуса', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(116, 'ispravlenie-prikusa', 'Пластинка для исправления прикуса', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(117, 'ispravlenie-prikusa', 'Исправление прикуса протезированием зубов', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(118, 'ispravlenie-prikusa', 'Исправление глубокого прикуса', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(119, 'brekety', 'Выравнивание зубов брекетами', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(120, 'lechenie-zubov', 'Предварительное лечение зубов', 'похожие услуги «Исправление прикуса»', 'Гарантия:', '', '', '', '', '', 'нет', NULL),
(121, 'koronka-na-zub', 'Коронки на жевательные зубы', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(122, 'koronka-na-zub', 'Коронка на передний зуб', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(123, 'implantacziya-zubov', 'Имплантация зубов', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(124, 'koronka-na-zub', 'Поменять коронки на зубах', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(125, 'lechenie-pulpita', 'Депульпирование зуба', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(126, 'koronka-na-zub', 'Цельнолитые коронки на зубы', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(127, 'koronka-na-zub', 'Поставить коронки на постоянные зубы', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(128, 'protezirovanie-zubov', 'Протезирование зубов', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(129, 'restavracziya-zubov', 'Реставрация одного зуба', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(130, 'restavracziya-zubov', 'Реставрация всех зубов', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(131, 'protezirovanie-zubov', 'Вкладки для зубов', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(132, 'protezirovanie-zubov', 'Несъемные протезы для зубов', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(133, 'koronka-na-zub', 'Временная коронка на зуб', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(134, 'koronka-na-zub', 'Поставить металлокерамическую коронку на зуб', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(135, 'koronka-na-zub', 'Фарфоровые коронки', 'похожие услуги «Коронки на зубы»', '', '', '', '', '', '', 'нет', NULL),
(136, '', '', 'Коронки на зубы наши работы', '', '', '', '', '', '', 'нет', NULL),
(137, '', '', 'Коронки на зубы наши работы', '', '', '', '', '', '', 'нет', NULL),
(138, '', '', 'Коронки на зубы наши работы', '', '', '', '', '', '', 'нет', NULL),
(139, '', '', 'Коронки на зубы наши работы', '', '', '', '', '', '', 'нет', NULL),
(140, '', '', 'Коронки на зубы наши работы', '', '', '', '', '', '', 'нет', NULL),
(141, '', '', 'Коронки на зубы наши работы', '', '', '', '', '', '', 'нет', NULL),
(146, '', '', 'Лечение зубов наши работы Лечение кариеса наши работы', '', '', '', '', '', '', 'нет', NULL),
(147, '', '', 'Лечение зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(148, '', '', 'Лечение зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(149, '', '', 'Лечение зубов наши работы Реставрация зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(150, '', '', 'Лечение зубов наши работы Лечение пульпита наши работы', '', '', '', '', '', '', 'нет', NULL),
(151, '', '', 'Лечение зубов наши работы Лечение пульпита наши работы', '', '', '', '', '', '', 'нет', NULL),
(152, 'lechenie-zubov', 'Лечение зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(153, 'udalenie-zuba', 'Удаление зубов мудрости', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(154, 'lechenie-pulpita', 'Лечение пульпита', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(155, 'professionalnaya-chistka-zubov', 'Профессиональная чистка зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(156, 'lechenie-desen', 'Лечение десен', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(157, 'brekety', 'Установить брекеты', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(158, 'lechenie-kariesa', 'Лечение кариеса зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(159, 'protezirovanie-zubov', 'Виниры для зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(160, 'protezirovanie-zubov', 'Вкладки для зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(161, 'implantacziya-zubov', 'Протезирование зубов на имплантах', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(162, 'professionalnaya-chistka-zubov', 'Реминерализация зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(163, 'lechenie-desen', 'Плазмолифтинг десен', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(164, 'koronka-na-zub', 'Металлокерамические коронки', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(165, 'implantacziya-zubov', 'Синус-лифтинг', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(166, 'semnye-zubnye-protezy', 'Установка бюгельного протеза', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(167, 'lechenie-zubov', 'Устранение дефекта альвеолярного отростка', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(168, 'lechenie-zubov', 'Резекция верхушки корня зуба', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(169, 'semnye-zubnye-protezy', 'Акриловые протезы для зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(170, 'professionalnaya-chistka-zubov', 'Отбеливание зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(171, 'udalenie-zuba', 'Сложное удаление зубов мудрости', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(172, 'implantacziya-zubov', 'Имплантация зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(173, 'ispravlenie-prikusa', 'Исправление прикуса', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(174, 'lechenie-desen', 'Лечение пародонтоза', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(175, 'lechenie-desen', 'Лечение пародонтита', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(176, 'lechenie-pulpita', 'Лечение периодонтита', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(177, 'professionalnaya-chistka-zubov', 'Ультразвуковая чистка зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(178, 'lechenie-zubov', 'Пластика уздечки', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(179, 'restavracziya-zubov', 'Реставрация зубов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(180, 'lechenie-pulpita', 'Чистка корневых каналов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(181, 'lechenie-zubov', 'Кюретаж пародонтальных карманов', 'похожие услуги «Лечение зубов»', '', '', '', '', '', '', 'нет', NULL),
(188, '', '', 'Лечение кариеса наши работы', '', '', '', '', '', '', 'нет', NULL),
(189, '', '', 'Лечение кариеса наши работы Лечение пульпита наши работы', '', '', '', '', '', '', 'нет', NULL),
(190, '', '', 'Лечение кариеса наши работы', '', '', '', '', '', '', 'нет', NULL),
(191, '', '', 'Лечение кариеса наши работы', '', '', '', '', '', '', 'нет', NULL),
(192, '', '', 'Лечение кариеса наши работы', '', '', '', '', '', '', 'нет', NULL),
(193, 'lechenie-kariesa', 'Лечение кариеса зубов 1-2 категория', 'похожие услуги «Лечение кариеса»', '', '', '', '', '', '', 'нет', NULL),
(194, 'lechenie-kariesa', 'Формирование кариозной полости', 'похожие услуги «Лечение кариеса»', '', '', '', '', '', '', 'нет', NULL),
(195, 'lechenie-kariesa', 'Обработка кариозной полости', 'похожие услуги «Лечение кариеса»', '', '', '', '', '', '', 'нет', NULL),
(196, 'lechenie-kariesa', 'Профилактика кариеса зубов', 'похожие услуги «Лечение кариеса»', '', '', '', '', '', '', 'нет', NULL),
(197, 'lechenie-kariesa', 'Вылечить кариес зуба', 'похожие услуги «Лечение кариеса»', '', '', '', '', '', '', 'нет', NULL),
(198, 'lechenie-kariesa', 'Лечить кариес у детей', 'похожие услуги «Лечение кариеса»', '', '', '', '', '', '', 'нет', NULL),
(199, 'lechenie-kariesa', 'Удалить кариес у взрослых', 'похожие услуги «Лечение кариеса»', '', '', '', '', '', '', 'нет', NULL),
(200, 'lechenie-pulpita', 'Лечение каналов зуба', 'похожие услуги «Лечение пульпита»', '', '', '', '', '', '', 'нет', NULL),
(201, 'lechenie-pulpita', 'Комплексное лечение пульпита', 'похожие услуги «Лечение пульпита»', '', '', '', '', '', '', 'нет', NULL),
(202, 'lechenie-pulpita', 'Пульпит 3 канала', 'похожие услуги «Лечение пульпита»', '', '', '', '', '', '', 'нет', NULL),
(203, 'lechenie-pulpita', 'Пульпирование зуба перед протезированием', 'похожие услуги «Лечение пульпита»', '', '', '', '', '', '', 'нет', NULL),
(204, 'lechenie-pulpita', 'Лечение пульпита лазером', 'похожие услуги «Лечение пульпита»', '', '', '', '', '', '', 'нет', NULL),
(205, '', '', 'Лечение пульпита наши работы', '', '', '', '', '', '', 'нет', NULL),
(206, '', '', 'Профес­сио­нальная чистка зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(207, '', '', 'Профес­сио­нальная чистка зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(208, '', '', 'Профес­сио­нальная чистка зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(209, '', '', 'Профес­сио­нальная чистка зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(210, '', '', 'Профес­сио­нальная чистка зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(211, 'professionalnaya-chistka-zubov', 'Покрытие зубов фторлаком', 'похожие услуги «Профес­сио­нальная чистка зубов»', '', '', '', '', '', '', 'нет', NULL),
(212, 'professionalnaya-chistka-zubov', 'Полировка эмали', 'похожие услуги «Профес­сио­нальная чистка зубов»', '', '', '', '', '', '', 'нет', NULL),
(213, 'professionalnaya-chistka-zubov', 'Чистка зубов от зубного налета', 'похожие услуги «Профес­сио­нальная чистка зубов»', '', '', '', '', '', '', 'нет', NULL),
(214, 'professionalnaya-chistka-zubov', 'Чистка зубов от камня', 'похожие услуги «Профес­сио­нальная чистка зубов»', '', '', '', '', '', '', 'нет', NULL),
(215, 'professionalnaya-chistka-zubov', 'Чистка зубов в клинике', 'похожие услуги «Профес­сио­нальная чистка зубов»', '', '', '', '', '', '', 'нет', NULL),
(216, 'professionalnaya-chistka-zubov', 'Стоматологическая чистка зубов', 'похожие услуги «Профес­сио­нальная чистка зубов»', '', '', '', '', '', '', 'нет', NULL),
(217, 'professionalnaya-chistka-zubov', 'Лазерная чистка зубов', 'похожие услуги «Профес­сио­нальная чистка зубов»', '', '', '', '', '', '', 'нет', NULL),
(218, 'udalenie-zuba', 'Удаление зуба мудрости', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(219, 'udalenie-zuba', 'Удаление ретинированного зуба', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(220, 'udalenie-zuba', 'Удаление дистопированного зуба', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(221, 'udalenie-zuba', 'Сложное удаление зуба', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(222, 'protezirovanie-zubov', 'Ортопедическая стоматология', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(223, 'implantacziya-zubov', 'Имплантация после удаления зуба', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(224, 'udalenie-zuba', 'Атравматичное удаление зуба', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(225, 'implantacziya-zubov', 'Восстановить зуб после удаления', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(226, 'implantacziya-zubov', 'Протезирование на имплантах', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(227, 'implantacziya-zubov', 'Костная пластика', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(228, 'semnye-zubnye-protezy', 'Съемные протезы', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(229, 'protezirovanie-zubov', 'Несъемные протезы', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(230, 'lechenie-desen', 'Кюретаж десен', 'похожие услуги «Удаление зуба»', '', '', '', '', '', '', 'нет', NULL),
(231, 'implantacziya-zubov', 'Имплантация зубов', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(232, 'koronka-na-zub', 'Установка коронок', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(233, 'semnye-zubnye-protezy', 'Съемное протезирование зубов', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(234, 'implantacziya-zubov', 'Протезирование зубов на имплантах', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(235, 'implantacziya-zubov', 'Протезирование зубов «All-On-4»', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(236, 'implantacziya-zubov', 'Протезирование зубов «All-On-6»', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(237, 'protezirovanie-zubov', 'Несъемное протезирование зубов', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(238, 'implantacziya-zubov', 'Одномоментное протезирование зубов с немедленной нагрузкой', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(239, 'implantacziya-zubov', 'Одномоментное протезирование зубов с отсроченной нагрузкой', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(240, 'protezirovanie-zubov', 'Временные протезы для зубов', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(241, 'protezirovanie-zubov', 'Постоянные протезы', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(242, 'protezirovanie-zubov', 'Протезирование одного зуба', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(243, 'protezirovanie-zubov', 'Протезирование всех зубов', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(244, 'protezirovanie-zubov', 'Микропротезирование зубов', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(245, 'protezirovanie-zubov', 'Протезирование зубов по технологии CEREC 3D', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(246, 'implantacziya-zubov', 'Импланты для зубов', 'похожие услуги «Протезирование зубов»', '', '', '', '', '', '', 'нет', NULL),
(247, 'implantacziya-zubov', 'Имплантация зубов', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(248, 'protezirovanie-zubov', 'Несъемный мостовидный протез на имплантах', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(249, 'restavracziya-zubov', 'Эстетическая реставрация', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(250, 'implantacziya-zubov', 'Протезирование на имплантах', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(251, 'semnye-zubnye-protezy', 'Установка вставной челюсти', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(252, 'semnye-zubnye-protezy', 'Съемный протез на верхнюю челюсть', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(253, 'koronka-na-zub', 'Установок коронок на зубы', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(254, 'protezirovanie-zubov', 'Установка моста на зубы', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(255, 'semnye-zubnye-protezy', 'Протезы для зубов на присосках', 'похожие услуги «Съемные протезы»', '', '', '', '', '', '', 'нет', NULL),
(256, '', '', 'Реставрация зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(257, '', '', 'Реставрация зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(258, '', '', 'Реставрация зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(259, '', '', 'Реставрация зубов наши работы', '', '', '', '', '', '', 'нет', NULL),
(260, 'restavracziya-zubov', 'Восстановление режущего края зуба', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(261, 'restavracziya-zubov', 'Наращивание зубов', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(262, 'viniry', 'Установка зубного украшения', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(263, 'lechenie-kariesa', 'Светоотверждаемая пломба', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(264, 'restavracziya-zubov', 'Реконструкция зуба', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(265, 'restavracziya-zubov', 'Композитная реставрация зубов', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(266, 'restavracziya-zubov', 'Исправление формы зубов', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(267, 'restavracziya-zubov', 'Реставрация скола зуба', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(268, 'restavracziya-zubov', 'Косметическая реставрация зубов', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(269, 'restavracziya-zubov', 'Исправление формы зубов', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(270, 'restavracziya-zubov', 'Реставрация нижних зубов', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(271, 'viniry', 'Реставрация передних зубов винирами', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(272, 'restavracziya-zubov', 'Ремонт фронтальных зубов', 'похожие услуги «Реставрация зубов»', '', '', '', '', '', '', 'нет', NULL),
(273, '', '', 'лицензии', '', '', '', '', '', '', 'нет', NULL),
(274, '', '', 'лицензии', '', '', '', '', '', '', 'нет', NULL),
(275, '', '', 'лицензии', '', '', '', '', '', '', 'нет', NULL),
(276, '', '', 'лицензии', '', '', '', '', '', '', 'нет', NULL),
(278, '', '', 'Dentium', 'Гарантия:', '20 лет', '5 лет', '15 -20 недель', 'возможен', 'Цена под ключ: от 32000 р.', 'Dentium', 2),
(279, '', '', 'Nobel', 'Гарантия:', '30 лет', '7 лет', '12 -15 недель', 'возможен', 'Цена под ключ: от 45000 р.', 'Nobel Biocare', 3),
(280, '', '', 'Mis', '', 'пожизненная', '7 лет', '12 -15 недель', 'возможен', 'Цена под ключ: от 51000 р.', 'Mis', 5),
(281, '', '', 'Osstem', '', '20 лет', '5 лет', '15 -20 недель', 'возможен', 'Цена под ключ: от 23000 р.', 'OSSTEM', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_slides_galleries`
--

CREATE TABLE `konvertagency_doctors_slides_galleries` (
  `galleries_id` int NOT NULL,
  `slides_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_slides_galleries`
--

INSERT INTO `konvertagency_doctors_slides_galleries` (`galleries_id`, `slides_id`) VALUES
(3, 6),
(3, 4),
(4, 7),
(4, 8),
(4, 10),
(4, 9),
(4, 11),
(4, 12),
(4, 14),
(4, 13),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 26),
(3, 27),
(7, 28),
(7, 29),
(7, 30),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(7, 35),
(7, 36),
(7, 37),
(7, 38),
(7, 39),
(7, 40),
(7, 41),
(7, 42),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(3, 25),
(10, 61),
(10, 62),
(10, 63),
(10, 64),
(10, 65),
(10, 66),
(10, 67),
(11, 68),
(11, 69),
(11, 70),
(11, 71),
(11, 72),
(11, 73),
(11, 74),
(11, 75),
(11, 76),
(11, 77),
(11, 78),
(13, 73),
(13, 69),
(13, 76),
(13, 26),
(6, 86),
(6, 87),
(14, 88),
(14, 89),
(14, 90),
(14, 91),
(14, 92),
(15, 94),
(15, 93),
(15, 95),
(15, 96),
(15, 97),
(15, 98),
(16, 99),
(16, 100),
(16, 101),
(16, 102),
(16, 103),
(16, 104),
(16, 105),
(16, 106),
(16, 107),
(16, 108),
(17, 109),
(17, 110),
(17, 111),
(17, 112),
(17, 113),
(17, 114),
(17, 115),
(17, 116),
(17, 117),
(17, 118),
(17, 119),
(17, 120),
(18, 121),
(18, 122),
(18, 123),
(18, 124),
(18, 125),
(18, 126),
(18, 127),
(18, 128),
(18, 129),
(18, 130),
(18, 131),
(18, 132),
(18, 133),
(18, 134),
(18, 135),
(19, 136),
(19, 137),
(19, 138),
(19, 139),
(19, 140),
(19, 141),
(21, 146),
(21, 147),
(21, 148),
(21, 149),
(21, 150),
(21, 151),
(22, 152),
(22, 153),
(22, 154),
(22, 155),
(22, 156),
(22, 157),
(22, 158),
(22, 159),
(22, 160),
(22, 161),
(22, 162),
(22, 163),
(22, 164),
(22, 165),
(22, 166),
(22, 167),
(22, 168),
(22, 169),
(22, 170),
(22, 171),
(22, 172),
(22, 173),
(22, 174),
(22, 175),
(22, 176),
(22, 177),
(22, 178),
(22, 179),
(22, 180),
(22, 181),
(24, 188),
(24, 189),
(24, 190),
(24, 191),
(24, 192),
(24, 146),
(25, 193),
(25, 194),
(25, 195),
(25, 196),
(25, 197),
(25, 198),
(25, 199),
(26, 200),
(26, 201),
(26, 202),
(26, 203),
(26, 204),
(27, 205),
(27, 189),
(27, 150),
(27, 151),
(28, 206),
(28, 207),
(28, 208),
(28, 209),
(28, 210),
(29, 211),
(29, 212),
(29, 213),
(29, 214),
(29, 215),
(29, 216),
(29, 217),
(30, 218),
(30, 219),
(30, 220),
(30, 221),
(30, 222),
(30, 223),
(30, 224),
(30, 225),
(30, 226),
(30, 227),
(30, 228),
(30, 229),
(30, 230),
(31, 231),
(31, 233),
(31, 232),
(31, 234),
(31, 235),
(31, 236),
(31, 237),
(31, 238),
(31, 239),
(31, 240),
(31, 241),
(31, 242),
(31, 243),
(31, 244),
(31, 245),
(31, 246),
(32, 247),
(32, 248),
(32, 249),
(32, 250),
(32, 251),
(32, 252),
(32, 253),
(32, 254),
(32, 255),
(33, 149),
(33, 256),
(33, 257),
(33, 258),
(33, 259),
(34, 260),
(34, 261),
(34, 262),
(34, 263),
(34, 264),
(34, 265),
(34, 266),
(34, 267),
(34, 268),
(34, 269),
(34, 270),
(34, 271),
(34, 272),
(20, 273),
(20, 274),
(20, 275),
(20, 276),
(6, 278),
(6, 279),
(6, 280),
(6, 281);

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_table`
--

CREATE TABLE `konvertagency_doctors_table` (
  `id` int UNSIGNED NOT NULL,
  `table_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_row` int UNSIGNED DEFAULT NULL,
  `visible_pcs` tinyint(1) DEFAULT '0',
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `type` smallint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_table`
--

INSERT INTO `konvertagency_doctors_table` (`id`, `table_slug`, `title`, `class`, `visible_row`, `visible_pcs`, `description`, `order`, `type`) VALUES
(1, 'lechenie-zubov', 'Лечение, зубов', 'classtest', NULL, 0, '', NULL, NULL),
(2, 'implantaciya-zubov', 'Имплантация зубов (не используется)', '', 4, 0, '', NULL, NULL),
(4, 'Ceny-Lechenie-desen', 'Цены:', '', 6, 0, 'Цены Лечение десен', NULL, 0),
(5, 'ceny-implontataion', 'Цены:', '', 6, 0, 'Цены имплантация', NULL, 0),
(7, 'ceny-viniry', 'Цены:', '', 6, 0, 'Цены виниры', NULL, 0),
(8, 'ceny-brekety', 'Цены:', '', 6, 0, 'Цены брекеты', NULL, 0),
(9, 'ceny-ispravlenie-prikusa', 'Цены:', '', 6, 0, 'Цены Исправление прикуса', NULL, 0),
(10, 'ceny-koronki-na-zuby', 'Цены:', '', 6, 0, 'Цены Коронки на зубы', NULL, 0),
(12, 'ceny-lechenie-kariesa', 'Цены:', '', 6, 0, 'Цены Лечение кариеса', NULL, 0),
(13, 'ceny-lechenie-pulpita', 'Цены:', '', 6, 0, 'Цены Лечение пульпита', NULL, 0),
(14, 'ceny-dental-cleaning', 'Цены:', '', 6, 0, 'Цены Профес­сио­нальная чистка зубов', NULL, 0),
(15, 'ceny-udalenie-zuba', 'Цены:', '', 6, 0, 'Цены Удаление зуба', NULL, 0),
(16, 'ceny-semnye-protezy', 'Цены:', '', 6, 0, 'Цены Съемные протезы', NULL, 0),
(17, 'ceny-restavraciya-zubov', 'Цены:', '', 6, 0, 'Цены Реставрация зубов', NULL, 0),
(18, 'prajs-obshchie', 'Общие', '', 6, 0, 'Прайс Общие', 1, 1),
(19, 'prajs-ortodontiya', 'Ортодонтия', '', 6, 0, 'Прайс Ортодонтия', NULL, 1),
(20, 'prajs-ortopediya', 'Ортопедия', '', 6, 0, 'Прайс Ортопедия', NULL, 1),
(21, 'prajs-profilaktika-i-gigiena', 'Профилактика и гигиена', '', 6, 0, 'Прайс Профилактика и гигиена', NULL, 1),
(24, 'prajs-terapiya', 'Терапия', '', 6, 0, 'Прайс Терапия', NULL, 1),
(25, 'prajs-hirurgiya', 'Хирургия', '', 6, 0, 'Прайс Хирургия', NULL, 1),
(26, 'ceny-lechenie-zubov', 'Цены:', '', 6, 0, 'Цены Лечение зубов', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_table_row`
--

CREATE TABLE `konvertagency_doctors_table_row` (
  `id` int UNSIGNED NOT NULL,
  `nomination` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pcs` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort_order` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_table_row`
--

INSERT INTO `konvertagency_doctors_table_row` (`id`, `nomination`, `pcs`, `price`, `table_slug`, `article`, `sort_order`, `parent_id`) VALUES
(1, '<p>Прием врача стоматолога-пародонтолога первичный</p>', '', '500', 'Ceny-Lechenie-desen', '', 1, NULL),
(2, '<p>Прием врача стоматолога-пародонтолога повторный</p>', '', '500', 'Ceny-Lechenie-desen', '', 2, NULL),
(3, '<p>Пародонтологическое обследование десен, составление плана лечения</p>', '', '1500', 'Ceny-Lechenie-desen', '', 3, NULL),
(4, '<p>Лечение заболеваний слизистой оболочки полости рта (одно посещение)</p>', '', '450', 'Ceny-Lechenie-desen', '', 4, NULL),
(5, '<p>Плазмолифтинг десен Endoret (PrP-плазмотерапия)</p>', '', '5000', 'Ceny-Lechenie-desen', '', 5, NULL),
(6, '<p>Гингивотомия (область одного зуба)</p>', '1 ед.', '1500', 'Ceny-Lechenie-desen', '', 6, NULL),
(7, '<p>Гингивэктомия (область 1 зуба)</p>', '1 ед.', '2800', 'Ceny-Lechenie-desen', '', 7, NULL),
(8, '<p>Лечение локального пародонтита лазером (1 зуб)</p>', '1 ед.', '1500', 'Ceny-Lechenie-desen', '', 8, NULL),
(9, '<p>Лечение генерализированного пародонтита (1 посещение)</p>', '', '1500', 'Ceny-Lechenie-desen', '', 9, NULL),
(10, '<p>Лоскутная операция (гингивопластика) в области 1 сегмента</p>', '', '950', 'Ceny-Lechenie-desen', '', 10, NULL),
(11, '<p>Лоскутная операция (гингивоостеопластика) в области 1 сегмента</p>', '', '1650', 'Ceny-Lechenie-desen', '', 11, NULL),
(12, '<p>Закрытый кюретаж пародонтальных карманов (до 3 мм) в области 1 зуба</p>', '', '3500', 'Ceny-Lechenie-desen', '', 12, NULL),
(13, '<p>Открытый кюретаж пародонтальных карманов (до 5 мм) в области 1 зуба</p>', '', '5500', 'Ceny-Lechenie-desen', '', 13, NULL),
(14, '<p>Открытый кюретаж пародонтальных карманов (более 5 мм) в области 1 зуба</p>', '', '7000', 'Ceny-Lechenie-desen', '', 14, NULL),
(15, '<p>Введение лекарственных препаратов в пародонтальный карман</p>', '', '600', 'Ceny-Lechenie-desen', '', 15, NULL),
(16, '<p>Пародонтопластика прилокальной рецессии десны</p>', '', '2000', 'Ceny-Lechenie-desen', '', 16, NULL),
(17, '<p>Временное шинирование зуба при заболеваниях пародонта</p>', '', '3500', 'Ceny-Lechenie-desen', '', 17, NULL),
(18, '<p>Закрытие рецессии десны в области одного зуба</p>', '', '6500', 'Ceny-Lechenie-desen', '', 18, NULL),
(20, '<p>Лечение афтозного стоматита, герпеса лазером</p>', '', '1500', 'Ceny-Lechenie-desen', '', 20, NULL),
(21, '<p>Лазерное лечение пародонтальных карманов (область 1 зуба)</p>', '', '1500', 'Ceny-Lechenie-desen', '', 21, NULL),
(25, '<p>Удаление доброкачественных новообразований полости рта лазером</p>', '', '3500', 'Ceny-Lechenie-desen', '', 25, NULL),
(26, '<p>Вестибулопластика десны</p>', '', '21000', 'Ceny-Lechenie-desen', '', 26, NULL),
(27, '<p>Имплантация зубов под ключ системой Dentium (Южная Корея) (цена за 1 ед.)</p>', '', '32000', 'ceny-implontataion', '', 27, NULL),
(28, '<p>Имплантация зубов под ключ системой Nobel Replace Conical Connection (Швейцария) (цена за 1 ед.)</p>', '', '45000', 'ceny-implontataion', '', 28, NULL),
(29, '<p>Имплантация зубов под ключ системой Astra Tech(Швеция) (цена за 1 ед.)</p>', '', '47000', 'ceny-implontataion', '', 29, NULL),
(30, '<p>Имплантация зубов под ключ системой Mis (Израиль) с навигационным шаблоном (цена за 1 ед.)</p>', '', '51000', 'ceny-implontataion', '', 30, NULL),
(32, '<p>Имплантация зубов под ключ системой Straumann (Швейцария) (цена за 1 ед.)</p>', '', '52000', 'ceny-implontataion', '', 32, NULL),
(33, '<p>Установка 4-х имплантов (All-on-4) при полном отсутствии зубов</p>', '', '130000', 'ceny-implontataion', '', 33, NULL),
(34, '<p>Установка 6-х имплантов (All-on-6) при полном отсутствии зубов</p>', '', '195000', 'ceny-implontataion', '', 34, NULL),
(35, '<p>Раскрытие имплантата и установка формирователя десны</p>', '', '6500', 'ceny-implontataion', '', 35, NULL),
(37, '<p>Навигационный хирургический шаблон</p>', '', '12000', 'ceny-implontataion', '', 37, NULL),
(38, '<p>Направленная костная регенерация в области имплантации</p>', '', '4600', 'ceny-implontataion', '', 38, NULL),
(39, '<p>Удаление импланта зуба</p>', '', '5000', 'ceny-implontataion', '', 39, NULL),
(40, '<p>Установка временного импланта Vector Tas</p>', '', '12000', 'ceny-implontataion', '', 40, NULL),
(41, '<p>Установка ортодонтического микроимпланта</p>', '', '9800', 'ceny-implontataion', '', 41, NULL),
(42, '<p>Закрытый cинус-лифтинг без учета материала</p>', '', '10000', 'ceny-implontataion', '', 42, NULL),
(43, '<p>Открытый cинус-лифтинг без учета материала</p>', '', '23000', 'ceny-implontataion', '', 43, NULL),
(44, '<p>Увеличение объема альвеолярного гребня</p>', '', '10000', 'ceny-implontataion', '', 44, NULL),
(45, '<p>Фиксация коронок на имплант</p>', '', '7000', 'ceny-implontataion', '', 45, NULL),
(46, '<p>Изготовление индивидуального абатмента</p>', '', '7000', 'ceny-implontataion', '', 46, NULL),
(47, '<p>Временная коронка на имплантате</p>', '', '8500', 'ceny-implontataion', '', 47, NULL),
(76, '<p>Винир цельнокерамический E-Max (Ivoclar-Vivadent) (цена за 1 зуб)</p>', '', '30000', 'ceny-viniry', '', 76, NULL),
(77, '<p>Винир из гибридной керамики Vita Enamic (цена за 1 зуб)</p>', '', '24000', 'ceny-viniry', '', 77, NULL),
(78, '<p>Сверхтонкий винир (люминир) – без обточки (цена за 1 зуб)</p>', '', '45000', 'ceny-viniry', '', 78, NULL),
(79, '<p>Композитный винир прямым методом (цена за 1 зуб)</p>', '', '11500', 'ceny-viniry', '', 79, NULL),
(80, '<p>Винир из диоксида циркония (цена за 1 зуб)</p>', '', '27000', 'ceny-viniry', '', 80, NULL),
(81, '<p>Коронка цельнокерамическая CEREC 3D CAD/CAM</p>', '', '25000', 'ceny-viniry', '', 81, NULL),
(82, '<p>Восковое моделирование (Wax-Up) 1ед.</p>', '', '1500', 'ceny-viniry', '', 82, NULL),
(83, '<p>Адгезивная фиксация коронки, винира, вкладки на Emax press (ИМАКС)</p>', '', '2300', 'ceny-viniry', '', 83, NULL),
(84, '<p>Консультация стоматолога-ортодонта</p>', '', '500', 'ceny-brekety', '', 84, NULL),
(85, '<p>Установка вестибулярных металлических лигатурных брекетов (1 челюсть)</p>', '', '40000', 'ceny-brekety', '', 85, NULL),
(86, '<p>Установка вестибулярных эстетических лигатурных брекетов (1 челюсть)</p>', '', '60000', 'ceny-brekety', '', 86, NULL),
(87, '<p>Установка частичных металлических брекетов (система 2x4) (1 челюсть)</p>', '', '25000', 'ceny-brekety', '', 87, NULL),
(88, '<p>Установка сапфировых прозрачных брекетов системы Damon Clear (1 зубной ряд)</p>', '', '72000', 'ceny-brekety', '', 88, NULL),
(89, '<p>Установка металлических брекетов системы Damon Q (1 зубной ряд)</p>', '', '60000', 'ceny-brekety', '', 89, NULL),
(90, '<p>Безлигатурная керамическая брекет-система Damon Clear (1 зубной ряд)</p>', '', '72000', 'ceny-brekety', '', 90, NULL),
(91, '<p>Безлигатурная металлическая брекет-система Damon Q (1 зубной ряд)</p>', '', '60000', 'ceny-brekety', '', 91, NULL),
(92, '<p>Установка лингвальных брекетов Incognito Lite (1 челюсть)</p>', '', '160000', 'ceny-brekety', '', 92, NULL),
(93, '<p>Установка лингвальных брекетов Incognito Full (1 челюсть)</p>', '', '210000', 'ceny-brekety', '', 93, NULL),
(94, '<p>Снятие невидимых внутренних брекетов Incognito Lite (1 челюсть)</p>', '', '12500', 'ceny-brekety', '', 94, NULL),
(95, '<p>Снятие невидимых внутренних брекетов Incognito Full (1 челюсть)</p>', '', '15000', 'ceny-brekety', '', 95, NULL),
(96, '<p>Фиксация металлических самолигирующих брекетов (1 челюсть)</p>', '', '13000', 'ceny-brekety', '', 96, NULL),
(97, '<p>Фиксация керамических самолигирующих брекетов (1 челюсть)</p>', '', '15000', 'ceny-brekety', '', 97, NULL),
(98, '<p>Активация металлической дуги брекет-системы</p>', '', '3500', 'ceny-brekety', '', 98, NULL),
(99, '<p>Повторное посещение – лечение брекетами Incognito</p>', '', '1500', 'ceny-brekety', '', 99, NULL),
(100, '<p>Повторный прием пациентов с лингвальной несъемной аппаратурой</p>', '', '500', 'ceny-brekety', '', 100, NULL),
(101, '<p>Повторный прием пациентов с несъемной аппаратурой</p>', '', '500', 'ceny-brekety', '', 101, NULL),
(102, '<p>Повторная фиксация брекета и других ортодонтических элементов</p>', '', '1000', 'ceny-brekety', '', 102, NULL),
(103, '<p>Замена вестибулярного брекета в случае его потери, поломки, многократного отклеивания</p>', '', '13000', 'ceny-brekety', '', 103, NULL),
(104, '<p>Ортодонтическая коррекция металлическим лигатурным аппаратом RothMini</p>', '', '25000', 'ceny-brekety', '', 104, NULL),
(105, '<p>Установка дополнительных ортодонтических аппаратов, элементов</p>', '', '1000', 'ceny-brekety', '', 105, NULL),
(106, '<p>Изготовление и установка одночелюстной съемной пластинки (любой возраст)</p>', '', '14000', 'ceny-brekety', '', 106, NULL),
(107, '<p>Починка съемного пластиночного аппарата</p>', '', '2500', 'ceny-brekety', '', 107, NULL),
(108, '<p>Установка ортодонтического микроимплантата (1 шт.)</p>', '', '9800', 'ceny-brekety', '', 108, NULL),
(109, '<p>Ортодонтическое лечение с применением индивидуальных капп</p>', '', '2190', 'ceny-brekety', '', 109, NULL),
(111, '<p>Снятие брекет-системы с установкой стального ретейнера</p>', '', '4000', 'ceny-brekety', '', 111, NULL),
(112, '<p>Снятие брекет-системы с установкой титанового ретейнера</p>', '', '4000', 'ceny-brekety', '', 112, NULL),
(113, '<p>Установка лингвального стального ретейнера</p>', '', '700', 'ceny-brekety', '', 113, NULL),
(114, '<p>Установка лингвального титанового ретейнера</p>', '', '1000', 'ceny-brekety', '', 114, NULL),
(115, '<p>Установка ортодонтического шипа</p>', '', '500', 'ceny-brekety', '', 115, NULL),
(117, '<p>Консультация стоматолога-ортодонта</p>', '', '500', 'ceny-ispravlenie-prikusa', '', 117, NULL),
(118, '<p>Исправление прикуса пластинкой (без брекетов на зубы)</p>', '', '12000', 'ceny-ispravlenie-prikusa', '', 118, NULL),
(119, '<p>Исправление прикуса металлическими брекетами Damon Q</p>', '', '60000', 'ceny-ispravlenie-prikusa', '', 119, NULL),
(120, '<p>Исправление прикуса керамическими брекетами Damon Clear</p>', '', '72000', 'ceny-ispravlenie-prikusa', '', 120, NULL),
(122, '<p>Ортодонтическое лечение прикуса с использованием фиксатора</p>', '', '7200', 'ceny-ispravlenie-prikusa', '', 122, NULL),
(123, '<p>Ортодонтическое лечение прикуса – LM-активатор</p>', '', '7000', 'ceny-ispravlenie-prikusa', '', 123, NULL),
(125, '<p>Коррекция прикуса с применением моноблокового двухчелюстного аппарата</p>', '', '16000', 'ceny-ispravlenie-prikusa', '', 125, NULL),
(126, '<p>Коррекция прикуса с использованием лицевой маски Тюбингера</p>', '', '8000', 'ceny-ispravlenie-prikusa', '', 126, NULL),
(127, '<p>Установка ортодонтического мини-импланта для зубов Vector Tas</p>', '', '12000', 'ceny-ispravlenie-prikusa', '', 127, NULL),
(128, '<p>Изготовление окклюзионной накладки для зубов</p>', '', '2000', 'ceny-ispravlenie-prikusa', '', 128, NULL),
(129, '<p>Ортодонтическое лечение с применением небного расширителя</p>', '', '18000', 'ceny-ispravlenie-prikusa', '', 129, NULL),
(130, '<p>Коррекция ортодонтической пластинки</p>', '', '600', 'ceny-ispravlenie-prikusa', '', 130, NULL),
(131, '<p>Починка ортодонтической пластинки для зубов</p>', '', '2500', 'ceny-ispravlenie-prikusa', '', 131, NULL),
(132, '<p>Установка несъемного ретейнера на зубы</p>', '', '6000', 'ceny-ispravlenie-prikusa', '', 132, NULL),
(133, '<p>Коронка керамическая на основе диоксида циркония CAD/CAM</p>', '', '35000', 'ceny-koronki-na-zuby', '', 133, NULL),
(134, '<p>Циркониевая коронка (без нанесения керамики) ZrO2</p>', '', '20750', 'ceny-koronki-na-zuby', '', 134, NULL),
(135, '<p>Цельнокерамическая (фарфоровая) коронка E-Max CAD/CAM</p>', '', '25000', 'ceny-koronki-na-zuby', '', 135, NULL),
(136, '<p>Керамическая безметалловая коронка с винтовой фиксацией на импланте</p>', '', '32000', 'ceny-koronki-na-zuby', '', 136, NULL),
(137, '<p>Керамическая коронка на каркасе из диоксида циркония с винтовой фиксацией на импланте</p>', '', '42000', 'ceny-koronki-na-zuby', '', 137, NULL),
(138, '<p>Коронка из металлокерамики с плечевой массой</p>', '', '17500', 'ceny-koronki-na-zuby', '', 138, NULL),
(139, '<p>Металлокерамическая коронка КХС «Дуцерам»</p>', '', '15500', 'ceny-koronki-na-zuby', '', 139, NULL),
(140, '<p>Металлическая цельнолитая коронка</p>', '', '5500', 'ceny-koronki-na-zuby', '', 140, NULL),
(141, '<p>Временная пластмассовая коронка ПММА длительного ношения</p>', '', '3500', 'ceny-koronki-na-zuby', '', 141, NULL),
(142, '<p>Временная коронка из пластмассы на имплант + абатмент</p>', '', '8500', 'ceny-koronki-na-zuby', '', 142, NULL),
(143, '<p>Временная композитная коронка</p>', '', '2500', 'ceny-koronki-na-zuby', '', 143, NULL),
(144, '<p>Снятие штампованной зубной коронки</p>', '', '600', 'ceny-koronki-na-zuby', '', 144, NULL),
(145, '<p>Снятие цельнолитой, металлокерамической зубной коронки</p>', '', '1000', 'ceny-koronki-na-zuby', '', 145, NULL),
(146, '<p>Фиксация коронки, вкладки, винира на композитный цемент</p>', '', '2300', 'ceny-koronki-na-zuby', '', 146, NULL),
(147, '<p>Фиксация коронки на стеклоиономерный цемент</p>', '', '700', 'ceny-koronki-na-zuby', '', 147, NULL),
(148, '<p>Культевая цельнолитая вкладка</p>', '', '7300', 'ceny-koronki-na-zuby', '', 148, NULL),
(149, '<p>Культевая вкладка из диоксида циркония</p>', '', '10600', 'ceny-koronki-na-zuby', '', 149, NULL),
(150, '<p>Починка металлокерамической коронки светоотверждаемым материалом</p>', '', '2750', 'ceny-koronki-na-zuby', '', 150, NULL),
(164, '<p>Консультация стоматолога-терапевта перед лечением кариеса</p>', '', '500', 'ceny-lechenie-kariesa', '', 164, NULL),
(165, '<p>Стоматологическое обследование с составлением плана лечения</p>', '', '1500', 'ceny-lechenie-kariesa', '', 165, NULL),
(166, '<p>Лечение поверхностного кариеса на стадии пятна без сверления (Инфильтрация ICON)</p>', '', '1700', 'ceny-lechenie-kariesa', '', 166, NULL),
(167, '<p>Лечение среднего неосложненного кариеса (Пломбирование фотополимером двух поверхностей зуба)</p>', '', '5500', 'ceny-lechenie-kariesa', '', 167, NULL),
(168, '<p>Лечение глубокого осложненного кариеса (Пломбирование фотополимером трех поверхностей зуба)</p>', '', '6500', 'ceny-lechenie-kariesa', '', 168, NULL),
(169, '<p>Лечение кариеса передних зубов (С эстетической художественной реставрацией зуба)</p>', '', '6500', 'ceny-lechenie-kariesa', '', 169, NULL),
(170, '<p>Лечение пришеечного кариеса</p>', '', '3500', 'ceny-lechenie-kariesa', '', 170, NULL),
(171, '<p>Восстановление стенки зуба перед эндодонтическим лечением</p>', '', '1500', 'ceny-lechenie-kariesa', '', 171, NULL),
(172, '<p>Пломбирование одного канала зуба при пульпите</p>', '', '1850', 'ceny-lechenie-kariesa', '', 172, NULL),
(173, '<p>Пломбирование одного канала зуба при периодонтите</p>', '', '2100', 'ceny-lechenie-kariesa', '', 173, NULL),
(174, '<p>Пломбировка каналов зуба (резца, клыка) под микроскопом</p>', '', '1850', 'ceny-lechenie-kariesa', '', 174, NULL),
(175, '<p>Пломбировка каналов зуба (премоляра) под микроскопом</p>', '', '1950', 'ceny-lechenie-kariesa', '', 175, NULL),
(176, '<p>Пломбировка каналов зуба (моляра) под микроскопом</p>', '', '2100', 'ceny-lechenie-kariesa', '', 176, NULL),
(177, '<p>Удаление нерва зуба (депульпирование) при острых состояниях</p>', '', '1000', 'ceny-lechenie-kariesa', '', 177, NULL),
(178, '<p>Герметизация фиссур</p>', '', '2500', 'ceny-lechenie-kariesa', '', 178, NULL),
(179, '<p>Наложение временной пломбы</p>', '', '500', 'ceny-lechenie-kariesa', '', 179, NULL),
(180, '<p>Установка временной пломбы из стеклоиномерного цемента</p>', '', '1500', 'ceny-lechenie-kariesa', '', 180, NULL),
(181, '<p>Удаление старой пломбы</p>', '', '700', 'ceny-lechenie-kariesa', '', 181, NULL),
(182, '<p>Шлифовка, полировка пломбы зуба после лечения кариеса</p>', '', '200', 'ceny-lechenie-kariesa', '', 182, NULL),
(183, '<p>Лечение канала зуба лазером</p>', '', '1500', 'ceny-lechenie-kariesa', '', 183, NULL),
(184, '<p>Консультация стоматолога-терапевта</p>', '', '500', 'ceny-lechenie-pulpita', '', 184, NULL),
(185, '<p>Лечение пульпита одноканального зуба</p>', '', '3250', 'ceny-lechenie-pulpita', '', 185, NULL),
(186, '<p>Лечение пульпита двухканального зуба</p>', '', '3950', 'ceny-lechenie-pulpita', '', 186, NULL),
(187, '<p>Лечение пульпита трехканального зуба</p>', '', '6800', 'ceny-lechenie-pulpita', '', 187, NULL),
(188, '<p>Пломбирование одного канала при пульпите</p>', '', '1850', 'ceny-lechenie-pulpita', '', 188, NULL),
(189, '<p>Пломбирование одного канала при периодонтите</p>', '', '2000', 'ceny-lechenie-pulpita', '', 189, NULL),
(190, '<p>Пломбирование одного канала термогуттаперчей</p>', '', '1500', 'ceny-lechenie-pulpita', '', 190, NULL),
(191, '<p>Эндодонтическое лечение однокорневого зуба под микроскопом</p>', '', '11000', 'ceny-lechenie-pulpita', '', 191, NULL),
(192, '<p>Эндодонтическое лечение двухкорневого зуба под микроскопом</p>', '', '15900', 'ceny-lechenie-pulpita', '', 192, NULL),
(193, '<p>Эндодонтическое лечение трехкорневого зуба под микроскопом</p>', '', '21500', 'ceny-lechenie-pulpita', '', 193, NULL),
(194, '<p>Депульпирование зуба при острых состояниях</p>', '', '1000', 'ceny-lechenie-pulpita', '', 194, NULL),
(195, '<p>Распломбировка одного канала зуба</p>', '', '1350', 'ceny-lechenie-pulpita', '', 195, NULL),
(196, '<p>Обработка одного канала зуба ультразвуком</p>', '', '200', 'ceny-lechenie-pulpita', '', 196, NULL),
(197, '<p>Восстановление коронки зуба при пульпите и периодонтите (1 поверхность)</p>', '', '4500', 'ceny-lechenie-pulpita', '', 197, NULL),
(198, '<p>Восстановление коронки зуба при пульпите и периодонтите (2 поверхности)</p>', '', '5500', 'ceny-lechenie-pulpita', '', 198, NULL),
(199, '<p>Восстановление коронки зуба при пульпите и периодонтите (3 поверхности)</p>', '', '6500', 'ceny-lechenie-pulpita', '', 199, NULL),
(200, '<p>Эстетическая реставрация зуба при пульпите и периодонтите</p>', '', '6500', 'ceny-lechenie-pulpita', '', 200, NULL),
(201, '<p>Комплексная гигиена полости рта профилактическая (УЗ чистка+Air-Flow+фторирование эмали)</p>', '', '5500', 'ceny-dental-cleaning', '', 201, NULL),
(202, '<p>Комплексная гигиена полости рта терапевтическая (УЗ чистка+Air-Flow+фторирование эмали)</p>', '', '6000', 'ceny-dental-cleaning', '', 202, NULL),
(203, '<p>Комплексная гигиена полости рта при заболеваниях пародонта (кюреты Hu-Friendy)</p>', '', '6000', 'ceny-dental-cleaning', '', 203, NULL),
(204, '<p>Комплекс профгигиены полости рта при наличии ортодонтических конструкций (брекеты, пластины)</p>', '', '6000', 'ceny-dental-cleaning', '', 204, NULL),
(205, '<p>Комплекс профгигиены полости рта BRACKET (после снятия брекет-системы)</p>', '', '5500', 'ceny-dental-cleaning', '', 205, NULL),
(209, '<p>Обучение гигиене полости рта</p>', '', '500', 'ceny-dental-cleaning', '', 209, NULL),
(210, '<p>Профессиональная чистка зубов аппаратом Air-Flow</p>', '', '1500', 'ceny-dental-cleaning', '', 210, NULL),
(211, '<p>Глубокое фторирование зубов ClinPro XT Varnish</p>', '', '1000', 'ceny-dental-cleaning', '', 211, NULL),
(212, '<p>Реминерализация эмали зубов (снятие слепков, изготовление капп, гель Relief ACP)</p>', '', '2500', 'ceny-dental-cleaning', '', 212, NULL),
(213, '<p>Профессиональное отбеливание зубов системой ZOOM 4 Advanced Power</p>', '', '20000', 'ceny-dental-cleaning', '', 213, NULL),
(214, '<p>Профессиональное отбеливание зубов Opalescence BOOST</p>', '', '15000', 'ceny-dental-cleaning', '', 214, NULL),
(215, '<p>Профессиональное отбеливание зубов Beyond Polus</p>', '', '17000', 'ceny-dental-cleaning', '', 215, NULL),
(216, '<p>Герметизация фиссур зуба</p>', '', '2500', 'ceny-dental-cleaning', '', 216, NULL),
(217, '<p>Ультразвуковое удаление наддесневых и поддесневых зубных отложений в области зуба</p>', '', '250', 'ceny-dental-cleaning', '', 217, NULL),
(218, '<p>Ультразвуковая чистка зубов (снятие зубных отложений)</p>', '', '4000', 'ceny-dental-cleaning', '', 218, NULL),
(219, '<p>Профессиональная чистка зубов при гингивите</p>', '', '6000', 'ceny-dental-cleaning', '', 219, NULL),
(220, '<p>Профессиональная чистка зубов при пародонтите, пародонтозе</p>', '', '6000', 'ceny-dental-cleaning', '', 220, NULL),
(221, '<p>Профессиональная комплексная чистка зубов&nbsp;</p>', '', '5500', 'ceny-dental-cleaning', '', 221, NULL),
(222, '<p>Удаление подвижного зуба</p>', '', '1400', 'ceny-udalenie-zuba', '', 222, NULL),
(223, '<p>Сложное хирургическое удаление зуба (моляры)</p>', '', '4000', 'ceny-udalenie-zuba', '', 223, NULL),
(224, '<p>Удаление 8 зуба мудрости на верхней челюсти</p>', '', '5000', 'ceny-udalenie-zuba', '', 224, NULL),
(225, '<p>Удаление 8 зуба мудрости на нижней челюсти</p>', '', '4000', 'ceny-udalenie-zuba', '', 225, NULL),
(226, '<p>Удаление зуба 5 категории сложности (ретинированный, и/или дистопированный зуб)</p>', '', '7800', 'ceny-udalenie-zuba', '', 226, NULL),
(227, '<p>Удаление зуба 4-й категории сложности (полуретинированный зуб )</p>', '', '6850', 'ceny-udalenie-zuba', '', 227, NULL),
(228, '<p>Удаление сверхкомплектного зуба</p>', '', '4000', 'ceny-udalenie-zuba', '', 228, NULL),
(229, '<p>Атравматичное удаление зуба с подготовкой для имплантации</p>', '', '4650', 'ceny-udalenie-zuba', '', 229, NULL),
(230, '<p>Экстракция винтового имплантата</p>', '', '5000', 'ceny-udalenie-zuba', '', 230, NULL),
(231, '<p>Наложение шва</p>', '', '1500', 'ceny-udalenie-zuba', '', 231, NULL),
(232, '<p>Временный съемный пластиночный протез (на 1 челюсть)</p>', '', '20000', 'ceny-semnye-protezy', '', 232, NULL),
(233, '<p>Съемный полный зубной протез нейлоновый deflex (на 1 челюсть)</p>', '', '30000', 'ceny-semnye-protezy', '', 233, NULL),
(234, '<p>Протез бюгельный на замковых креплениях (на аттачменах Bredent) (на 1 челюсть)</p>', '', '55000', 'ceny-semnye-protezy', '', 234, NULL),
(235, '<p>Протез бюгельный на кламмерных креплениях (на 1 челюсть)</p>', '', '45700', 'ceny-semnye-protezy', '', 235, NULL),
(236, '<p>Протез бюгельный на телескопической паре (на 1 челюсть)</p>', '', '45700', 'ceny-semnye-protezy', '', 236, NULL),
(237, '<p>Пластинчатый зубной протез повышенной эстетики (на 1 челюсть)</p>', '', '54000', 'ceny-semnye-protezy', '', 237, NULL),
(238, '<p>Частично съемный акриловый протез (термопластичный) Акри-Фри</p>', '', '30000', 'ceny-semnye-protezy', '', 238, NULL),
(239, '<p>Мини-протез «бабочка» (1-3 зуба)</p>', '', '12000', 'ceny-semnye-protezy', '', 239, NULL),
(240, '<p>Кламмер опорно-удерживающий литой, для бюгельного протеза</p>', '', '2000', 'ceny-semnye-protezy', '', 240, NULL),
(241, '<p>Замена 2-х матриц на протезах</p>', '', '3500', 'ceny-semnye-protezy', '', 241, NULL),
(242, '<p>Вкладка нхс</p>', '', '7300', 'ceny-semnye-protezy', '', 242, NULL),
(243, '<p>Починка и коррекция зубных протезов</p>', '', '3500', 'ceny-semnye-protezy', '', 243, NULL),
(244, '<p>Художественная реставрация фронтального зуба светоотверждаемым композитом</p>', '', '11500', 'ceny-restavraciya-zubov', '', 244, NULL),
(245, '<p>Эстетическая реставрация коронки зуба при пульпите и периодонтите</p>', '', '5500', 'ceny-restavraciya-zubov', '', 245, NULL),
(246, '<p>Эстетическая реставрация коронки зуба при кариесе</p>', '', '3500', 'ceny-restavraciya-zubov', '', 246, NULL),
(247, '<p>Восстановление коронки зуба при пульпите и периодонтите (1 поверхность)</p>', '', '4500', 'ceny-restavraciya-zubov', '', 247, NULL),
(248, '<p>Восстановление коронки зуба при пульпите и периодонтите (2 поверхности)</p>', '', '5500', 'ceny-restavraciya-zubov', '', 248, NULL),
(249, '<p>Восстановление коронки зуба при пульпите и периодонтите (3 поверхности)</p>', '', '6500', 'ceny-restavraciya-zubov', '', 249, NULL),
(250, '<p>Реставрация коронковой части одного зуба при кариесе (1 поверхность)</p>', '', '4500', 'ceny-restavraciya-zubov', '', 250, NULL),
(251, '<p>Реставрация коронковой части одного зуба при кариесе (2 поверхности)</p>', '', '5500', 'ceny-restavraciya-zubov', '', 251, NULL),
(252, '<p>Реставрация коронковой части одного зуба при кариесе (3 поверхности)</p>', '', '6500', 'ceny-restavraciya-zubov', '', 252, NULL),
(254, '<p>Реставрация клиновидного дефекта</p>', '', '3500', 'ceny-restavraciya-zubov', '', 254, NULL),
(255, '<p>Художественная реставрация зуба композитным виниром</p>', '', '6500', 'ceny-restavraciya-zubov', '', 255, NULL),
(256, '<p>Реставрация зуба керамическим виниром</p>', '', '30000', 'ceny-restavraciya-zubov', '', 256, NULL),
(257, '<p>Восстановление культи зуба перед протезированием</p>', '', '5000', 'ceny-restavraciya-zubov', '', 257, NULL),
(258, '<p>Восстановление стенки зуба перед эндодонтическим лечением</p>', '', '2900', 'ceny-restavraciya-zubov', '', 258, NULL),
(259, '<p>Пломбировка каналов зуба (резца, клыка) с использованием микроскопа</p>', '', '1850', 'ceny-restavraciya-zubov', '', 259, NULL),
(260, '<p>Пломбирование каналов зуба (моляра) с использованием микроскопа</p>', '', '1900', 'ceny-restavraciya-zubov', '', 260, NULL),
(261, '<p>Пломбировка каналов зуба (премоляра) с использованием микроскопа</p>', '', '2000', 'ceny-restavraciya-zubov', '', 261, NULL),
(262, '<p>Отбеливание зубов Beyond Polus</p>', '', '17000', 'ceny-restavraciya-zubov', '', 262, NULL),
(263, '<p>Внутриканальное отбеливание зуба</p>', '', '2500', 'ceny-restavraciya-zubov', '', 263, NULL),
(264, '<p>Пришлифовка и полировка пломбы после лечения</p>', '', '200', 'ceny-restavraciya-zubov', '', 264, NULL),
(265, '<p>Консультация врача-стоматолога.</p>', '', '500', 'prajs-obshchie', 'B01:065.001', 265, NULL),
(266, '<p>Составление комплексного плана лечения.</p>', '', '2500', 'prajs-obshchie', 'B01:065.002', 266, NULL),
(267, '<p>Прицельный внутриротовой визиографический снимок.</p>', '', '400', 'prajs-obshchie', 'А06:07.001', 267, NULL),
(268, '<p>Компьютерная ортопантомограмма.</p>', '', '1500', 'prajs-obshchie', 'А06:07.002', 268, NULL),
(269, '<p>Компьютерная томограмма.</p>', '', '3500', 'prajs-obshchie', 'А06:07.003', 269, NULL),
(270, '<p>Наложение изоляции коффердам, OptraDam.</p>', '', '1000', 'prajs-obshchie', 'А06:07.051.02', 270, NULL),
(271, '<p>Наложение ретрактора OptraGate.</p>', '', '550', 'prajs-obshchie', 'А16:07.051.01', 271, NULL),
(272, '<p>Аппликационная анестезия.</p>', '', '100', 'prajs-obshchie', 'В01:003.004.01', 272, NULL),
(273, '<p>Инъекционная анестезия.</p>', '', '500', 'prajs-obshchie', 'В01:003.004.02', 273, NULL),
(274, '<p>Дополнительная карпула анестетика.</p>', '', '150', 'prajs-obshchie', 'В01:003.004.03', 274, NULL),
(275, '<p>Внутримышечное введение лекарственных препаратов.</p>', '', '450', 'prajs-obshchie', 'В01:003.004.04', 275, NULL),
(276, '<p>Фотопротокол.</p>', '', '0', 'prajs-obshchie', 'В01:065.003', 276, NULL),
(277, '<p>Стерильный индивидуальный гигиенический пакет.</p>', '', '500', 'prajs-obshchie', 'В01:065.004', 277, NULL),
(278, '<p>Ортодонтическая коррекция съемным аппаратом. Двучелюстной аппарат.</p>', '', '17000', 'prajs-ortodontiya', 'A16.07.047.005', 278, NULL),
(279, '<p>Ортодонтическая коррекция съемным аппаратом. Изготовление каппы.</p>', '', '2190', 'prajs-ortodontiya', 'A16.07.047.009', 279, NULL),
(280, '<p>Коррекция прикуса с использованием брекет-системы. Установка 1 брекета.</p>', '', '3500', 'prajs-ortodontiya', 'A16.07.048', 280, NULL),
(281, '<p>Коррекция прикуса с использованием брекет-системы. Установка брекетов Damon Clear, включая стоимость системы (1 зубной ряд).</p>', '', '72000', 'prajs-ortodontiya', 'A16.07.048.001', 281, NULL),
(282, '<p>Коррекция прикуса с использованием брекет-системы. Установка брекетов Damon Q, включая стоимость системы (1 зубной ряд).</p>', '', '60000', 'prajs-ortodontiya', 'A16.07.048.002', 282, NULL),
(283, '<p>Коррекция прикуса с использованием брекет-системы. Установка металлических брекетов, включая стоимость системы (1 зубной ряд).</p>', '', '40000', 'prajs-ortodontiya', 'A16.07.048.003', 283, NULL),
(284, '<p>Коррекция прикуса с использованием брекет-системы. Установка лингвальной системы \"Incognito\" (один зубной ряд).</p>', '', '80000', 'prajs-ortodontiya', 'A16.07.048.005', 284, NULL),
(285, '<p>Коррекция прикуса с использованием брекет-системы. Система \"Incognito\" (снятие оттисков, заказ, доставка).</p>', '', '210000', 'prajs-ortodontiya', 'A16.07.048.006', 285, NULL),
(286, '<p>Коррекция прикуса с использованием брекет-системы. Система Incognito Lite (1 зубной ряд).</p>', '', '160000', 'prajs-ortodontiya', 'A16.07.048.007', 286, NULL),
(287, '<p>Коррекция прикуса с использованием брекет-системы. Установка брекетов Incognito Lite (1 зубной ряд).</p>', '', '60000', 'prajs-ortodontiya', 'A16.07.048.008', 287, NULL),
(288, '<p>Избирательное пришлифовывание твердых тканей. Интерпроксимальная редукция эмали 1 зуба.</p>', '', '400', 'prajs-ortodontiya', 'A16.07.082', 288, NULL),
(289, '<p>Ортодонтическая коррекция съемным аппаратом. Повторное посещение, лечение съемным аппаратом.</p>', '', '400', 'prajs-ortodontiya', 'A23.07.001.001', 289, NULL),
(290, '<p>Ортодонтическая коррекция съемным аппаратом. Починка съемного аппарата.</p>', '', '2500', 'prajs-ortodontiya', 'A23.07.001.002', 290, NULL),
(291, '<p>Ортодонтическая коррекция съемным аппаратом. Клиническая перебазировка съемного аппарата.</p>', '', '1500', 'prajs-ortodontiya', 'A23.07.002.034', 291, NULL),
(292, '<p>Ортодонтическая коррекция съемным аппаратом. Изготовление Twin Block.</p>', '', '17000', 'prajs-ortodontiya', 'A23.07.002.060', 292, NULL),
(293, '<p>Ортодонтическая коррекция съемным аппаратом. Изготовление, припасовка и наложение одночелюстного съемного аппарата.</p>', '', '8000', 'prajs-ortodontiya', 'A23.07.002.063', 293, NULL),
(294, '<p>Ортодонтическая коррекция съемным аппаратом. LM - активатор, трейнер.</p>', '', '7000', 'prajs-ortodontiya', 'A23.07.047.001', 294, NULL),
(295, '<p>Приём (осмотр, консультация) врача-ортодонта.</p>', '', '500', 'prajs-ortodontiya', 'B01:065.004', 295, NULL),
(296, '<p>Расчёт и анализ ТРГ.</p>', '', '4000', 'prajs-ortodontiya', 'А02:07.004.003', 296, NULL),
(297, '<p>Снятие оттиска с одной челюсти силиконовой массой.</p>', '', '1500', 'prajs-ortodontiya', 'А02:07.010.002', 297, NULL),
(298, '<p>Изготовление и анализ диагностических моделей.</p>', '', '2500', 'prajs-ortodontiya', 'А02:07.010.006', 298, NULL),
(299, '<p>Исследования на диагностических моделях челюстей.</p>', '', '1000', 'prajs-ortodontiya', 'А02:07.010.007', 299, NULL),
(300, '<p>Описание и интерпретация данных рентгенографических исследований с применением телемедицинских технологий.</p>', '', '1800', 'prajs-ortodontiya', 'А06.30.002.003', 300, NULL),
(301, '<p>Описание и интерпритация данных компьютерной томограммы. Clean-check Incognito, InvisalineОписание и интерпритация данных компьютерной томограммы. Clean-check Incognito, Invisaline.</p>', '', '4900', 'prajs-ortodontiya', 'А06:30.002.001', 301, NULL),
(302, '<p>Описание и интерпритация данных рентгенографических исследований с применением телемедицинских технологий.</p>', '', '1800', 'prajs-ortodontiya', 'А06:30.002.002', 302, NULL),
(303, '<p>Ортодонтическое скрепление металлической проволокой. Установка ретейнера.</p>', '', '6000', 'prajs-ortodontiya', 'А16.07.018.001', 303, NULL),
(304, '<p>Ортодонтическое скрепление металлической проволокой. Коррекция ретейнера.</p>', '', '800', 'prajs-ortodontiya', 'А16.07.018.002', 304, NULL),
(305, '<p>Ортодонтическая коррекция несъемным аппаратом. Изготовление распорки.</p>', '', '3000', 'prajs-ortodontiya', 'А16.07.046.004', 305, NULL),
(306, '<p>Ортодонтическая коррекция несъемным аппаратом. Изготовление, фиксация расширяющего аппарата с опорой на микровинт.</p>', '', '14800', 'prajs-ortodontiya', 'А16.07.046.005', 306, NULL),
(307, '<p>Коррекция прикуса с использованием брекет-системы. Установка лигатурных металлических брекетов (2х4).</p>', '', '25000', 'prajs-ortodontiya', 'А16.07.048.004', 307, NULL),
(308, '<p>Коррекция прикуса с использованием брекет-системы. Активация дуги.</p>', '', '500', 'prajs-ortodontiya', 'А16.07.048.016', 308, NULL),
(309, '<p>Исследования на диагностических моделях челюстей с восковой моделировкой (Wax-Up) будущей ортопедической конструкции с целью планирования препарирования, эстетики и функции (1 единица).</p>', '', '1500', 'prajs-ortopediya', 'А02:07.006.001', 309, NULL),
(310, '<p>Планирование прикуса, эстетики и функции при помощи композитного моделирования в полости рта (Mike-Up) (1 единица).</p>', '', '500', 'prajs-ortopediya', 'А02:07.006.002', 310, NULL),
(311, '<p>Снятие оттиска с одной челюсти альгинатной массой.</p>', '', '1000', 'prajs-ortopediya', 'А02:07.010.001', 311, NULL),
(312, '<p>Снятие оттиска с одной челюсти массой из поливинилсилоксана.</p>', '', '1800', 'prajs-ortopediya', 'А02:07.010.003', 312, NULL),
(313, '<p>Снятие оттиска с одной челюсти с имплантатов</p>', '', '4500', 'prajs-ortopediya', 'А02:07.010.004', 313, NULL),
(314, '<p>Снятие оттиска с одной челюсти силиконовой массой.</p>', '', '1500', 'prajs-ortopediya', 'А02:07.010.005', 314, NULL),
(315, '<p>Изготовление индивидуальной ложки.</p>', '', '2500', 'prajs-ortopediya', 'А02:07.010.010', 315, NULL),
(316, '<p>Диагностика моделей в артикуляторе.</p>', '', '3500', 'prajs-ortopediya', 'А02:07.010.012', 316, NULL),
(317, '<p>Снятие цельнолитой, металлокерамической коронки.</p>', '', '1000', 'prajs-ortopediya', 'А02:07.053.002', 317, NULL),
(318, '<p>Временная металлокерамическая коронка.</p>', '', '9000', 'prajs-ortopediya', 'А16.07.004.006', 318, NULL),
(319, '<p>Профилактика условно-съёмного протеза.</p>', '', '8000', 'prajs-ortopediya', 'А16.07.036.006', 319, NULL),
(320, '<p>Определение физиологического положения челюстей.</p>', '', '20000', 'prajs-ortopediya', 'А16:07.002.016', 320, NULL),
(321, '<p>Цельнокерамическая коронка CAD/CAM Cerec.</p>', '', '25000', 'prajs-ortopediya', 'А16:07.003.001', 321, NULL),
(322, '<p>Цельнокерамическая вкладка CAD/CAM Cerec.</p>', '', '25000', 'prajs-ortopediya', 'А16:07.003.002', 322, NULL),
(323, '<p>Цельнокерамический винир CAD/CAM Cerec.</p>', '', '30000', 'prajs-ortopediya', 'А16:07.003.003', 323, NULL),
(324, '<p>Ультраниры (люминиры) без обточки.</p>', '', '45000', 'prajs-ortopediya', 'А16:07.003.004', 324, NULL),
(325, '<p>Временная пластмассовая коронка (срок службы 4 недели).</p>', '', '2500', 'prajs-ortopediya', 'А16:07.004.001', 325, NULL),
(326, '<p>Временная коронка ПММА (срок службы до 3 месяцев).</p>', '', '3500', 'prajs-ortopediya', 'А16:07.004.002', 326, NULL),
(327, '<p>Временная композитная коронка (срок службы до 6 месяцев).</p>', '', '4000', 'prajs-ortopediya', 'А16:07.004.003', 327, NULL),
(328, '<p>Временная фрезерованная коронка ENAMIC (срок службы до 12 месяцев).</p>', '', '10000', 'prajs-ortopediya', 'А16:07.004.004', 328, NULL),
(329, '<p>Временная коронка на имплантате.</p>', '', '8500', 'prajs-ortopediya', 'А16:07.004.005', 329, NULL),
(330, '<p>Металокерамическая коронка.</p>', '', '15500', 'prajs-ortopediya', 'А16:07.004.006', 330, NULL),
(331, '<p>Керамическая коронка из диоксида циркония.</p>', '', '35000', 'prajs-ortopediya', 'А16:07.004.008', 331, NULL),
(332, '<p>Индивидуальный циркониевый абатмент.</p>', '', '10000', 'prajs-ortopediya', 'А16:07.004.009', 332, NULL),
(333, '<p>Индивидуальный титановый абатмент.</p>', '', '7000', 'prajs-ortopediya', 'А16:07.006.001', 333, NULL),
(334, '<p>Керамическая коронка из диоксида циркония на титановом основании с винтовой фиксацией на имплантате.</p>', '', '42000', 'prajs-ortopediya', 'А16:07.006.002', 334, NULL),
(335, '<p>Замена винта на титановом основании.</p>', '', '2500', 'prajs-ortopediya', 'А16:07.006.003', 335, NULL),
(336, '<p>Временный абатмент.</p>', '', '3000', 'prajs-ortopediya', 'А16:07.006.004', 336, NULL),
(337, '<p>Коррекция прикуса Сплинт-терапия.</p>', '', '25000', 'prajs-ortopediya', 'А16:07.021.001', 337, NULL),
(338, '<p>Индивидуальная ортопедическая капа.</p>', '', '2500', 'prajs-ortopediya', 'А16:07.021.002', 338, NULL),
(339, '<p>Полный съёмный пластиночный протез с анатомией десны.</p>', '', '54000', 'prajs-ortopediya', 'А16:07.023.001', 339, NULL),
(340, '<p>Избирательное пришлифовывание зубов (1 зуб).</p>', '', '200', 'prajs-ortopediya', 'А16:07.025', 340, NULL),
(341, '<p>Культевая цельнолитая вкладка.</p>', '', '7300', 'prajs-ortopediya', 'А16:07.033.001', 341, NULL),
(342, '<p>Культевая вкладка из диоксида циркония.</p>', '', '10600', 'prajs-ortopediya', 'А16:07.033.002', 342, NULL),
(343, '<p>Частичный съёмный пластиночный протез (временный).</p>', '', '16000', 'prajs-ortopediya', 'А16:07.035.001', 343, NULL),
(344, '<p>Частичный съёмный пластиночный протез.</p>', '', '30000', 'prajs-ortopediya', 'А16:07.035.002', 344, NULL),
(345, '<p>Частичный съёмный пластиночный протез для временного замещения 1-3 зубов (иммедиат-протез).</p>', '', '12000', 'prajs-ortopediya', 'А16:07.035.003', 345, NULL),
(346, '<p>Бюгельный протез с кламмерной фиксацией.</p>', '', '45700', 'prajs-ortopediya', 'А16:07.036.001', 346, NULL),
(347, '<p>Бюгельный протез с телескопической фиксацией.</p>', '', '45700', 'prajs-ortopediya', 'А16:07.036.002', 347, NULL),
(348, '<p>Телескопическая пара для бюгельного протеза КХС.</p>', '', '34000', 'prajs-ortopediya', 'А16:07.036.003', 348, NULL),
(349, '<p>Телескопическая пара для бюгельного протеза гальванотехника.</p>', '', '41000', 'prajs-ortopediya', 'А16:07.036.004', 349, NULL),
(350, '<p>Условно-съёмный протез с опорой на имплантатах.</p>', '', '172000', 'prajs-ortopediya', 'А16:07.036.005', 350, NULL),
(351, '<p>Фиксация коронки на временный цемент.</p>', '', '300', 'prajs-ortopediya', 'А16:07.049.001', 351, NULL),
(352, '<p>Фиксация коронки, вкладки, винира на композитный цемент.</p>', '', '2300', 'prajs-ortopediya', 'А16:07.049.002', 352, NULL),
(353, '<p>Фиксация коронки на стеклоиономерный цемент.</p>', '', '700', 'prajs-ortopediya', 'А16:07.049.003', 353, NULL),
(354, '<p>Снятие штампованной коронки.</p>', '', '600', 'prajs-ortopediya', 'А16:07.053.001', 354, NULL),
(355, '<p>Изготовление навигационного шаблона.</p>', '', '12000', 'prajs-ortopediya', 'А16:07.054.011', 355, NULL),
(356, '<p>Починка съёмного протеза.</p>', '', '3500', 'prajs-ortopediya', 'А23:07.002.001', 356, NULL),
(357, '<p>Перебазировка съёмного протеза.</p>', '', '5500', 'prajs-ortopediya', 'А23:07.002.002', 357, NULL),
(358, '<p>Приварка одного зуба.</p>', '', '1700', 'prajs-ortopediya', 'А23:07.002.003', 358, NULL),
(359, '<p>Наложение лечебной повязки при заболеваниях слизистой оболочки полости рта и пародонта в области одной челюсти.</p>', '', '600', 'prajs-profilaktika-i-gigiena', 'A15:07.003', 359, NULL),
(360, '<p>Глубокое фторирование твёрдых тканей зубов (один зуб).</p>', '', '150', 'prajs-profilaktika-i-gigiena', 'А11:07.012', 360, NULL),
(361, '<p>Глубокое фторирование твёрдых тканей зубов (одна челюсть).</p>', '', '1000', 'prajs-profilaktika-i-gigiena', 'А11:07.013', 361, NULL),
(362, '<p>Применение десенсибилизирующих средств в области 1 зуба.</p>', '', '150', 'prajs-profilaktika-i-gigiena', 'А11:07.014', 362, NULL),
(363, '<p>Местное применение реминерализирующих препаратов в области одной челюсти.</p>', '', '1000', 'prajs-profilaktika-i-gigiena', 'А11:07.024', 363, NULL),
(364, '<p>Обучение гигиене полости рта.</p>', '', '500', 'prajs-profilaktika-i-gigiena', 'А14:07.008', 364, NULL),
(365, '<p>Комплексная профессиональная гигиена.</p>', '', '5500', 'prajs-profilaktika-i-gigiena', 'А16:07.020.01', 365, NULL),
(366, '<p>Запечатывание фиссур герметиком.</p>', '', '2500', 'prajs-profilaktika-i-gigiena', 'А16:07.057', 366, NULL),
(367, '<p>Полировка поверхности 1 зуба.</p>', '', '150', 'prajs-profilaktika-i-gigiena', 'А16:07.058', 367, NULL),
(368, '<p>Удаление наддесневых и поддесневых зубных отложений в области одного зуба.</p>', '', '250', 'prajs-profilaktika-i-gigiena', 'А22:07.002', 368, NULL),
(369, '<p>Профессиональное отбеливание зубов системой Beyond Polus.</p>', '', '17000', 'prajs-terapiya', 'А16:07.050.01', 369, NULL),
(370, '<p>Домашнее отбеливание системой Opalescence</p>', '', '13000', 'prajs-terapiya', 'А16:07.050.03', 370, NULL),
(371, '<p>Дополнительный шприц Opalescence для домашнего отбеливания.</p>', '', '1000', 'prajs-terapiya', 'А16:07.050.04', 371, NULL),
(372, '<p>Внутрикоронковое отбеливание (одно посещение).</p>', '', '2500', 'prajs-terapiya', 'А16:07.050.05', 372, NULL),
(373, '<p>Профессиональное отбеливание зубов системой Opalescence BOOST.</p>', '', '15000', 'prajs-terapiya', 'А16:07.050.02', 373, NULL),
(374, '<p>Изготовление каппы для домашнего отбеливания.</p>', '', '2500', 'prajs-terapiya', 'А23:07.002.01', 374, NULL),
(375, '<p>Изготовление каппы для домашней РЕМ-терапии.</p>', '', '2500', 'prajs-terapiya', 'А23:07.002.02', 375, NULL),
(376, '<p>Костнозамещающий материал Bio Oss Collagen меньше 0.5 г (Швейцария).</p>', '', '8450', 'prajs-obshchie', 'А16:03.003.001', 376, NULL),
(377, '<p>Костнозамещающий материал Bio Oss Collagen 1 г. (Швейцария).</p>', '', '15600', 'prajs-obshchie', 'А16:03.003.002', 377, NULL),
(378, '<p>Резорбимуемая барьерная мембрана Bio Gide 16×22 мм (Швейцария).</p>', '', '15000', 'prajs-obshchie', 'А16:03.003.003', 378, NULL),
(379, '<p>Резорбимуемая барьерная мембрана Bio Gide 25×25 мм (Швейцария).</p>', '', '18000', 'prajs-obshchie', 'А16:03.003.004', 379, NULL),
(380, '<p>Резорбимуемая барьерная мембрана Bio Gide 30×40 мм (Швейцария).</p>', '', '24000', 'prajs-obshchie', 'А16:03.003.005', 380, NULL),
(381, '<p>Титановая мембрана.</p>', '', '15500', 'prajs-obshchie', 'А16:03.003.006', 381, NULL),
(382, '<p>Костный скребок.</p>', '', '6700', 'prajs-obshchie', 'А16:03.003.007', 382, NULL),
(383, '<p>Пин для мембраны.</p>', '', '2000', 'prajs-obshchie', 'А16:03.003.008', 383, NULL),
(384, '<p>Реставрация зуба фотополимерным композитом (до 1/2 поверхности зуба).</p>', '', '3500', 'prajs-terapiya', 'А16:07.002.001', 384, NULL),
(385, '<p>Реставрация зуба фотополимерным композитом (до 1 поверхности зуба).</p>', '', '4500', 'prajs-terapiya', 'А16:07.002.002', 385, NULL),
(386, '<p>Реставрация зуба фотополимерным композитом (до 2 поверхностей зуба).</p>', '', '5500', 'prajs-terapiya', 'А16:07.002.003', 386, NULL),
(387, '<p>Реставрация зуба фотополимерным композитом (до 3 поверхностей зуба).</p>', '', '6500', 'prajs-terapiya', 'А16:07.002.004', 387, NULL),
(388, '<p>Реставрация зуба фотополимерным композитом (до 4 поверхностей зуба).</p>', '', '7000', 'prajs-terapiya', 'А16:07.002.005', 388, NULL),
(389, '<p>Реставрация зуба фотополимерным композитом (до 5 поверхностей зуба).</p>', '', '7500', 'prajs-terapiya', 'А16:07.002.006', 389, NULL),
(390, '<p>Эстетическая реставрация зубов фронтальной группы 1-ой степени сложности.</p>', '', '6500', 'prajs-terapiya', 'А16:07.002.007', 390, NULL),
(391, '<p>Эстетическая реставрация зубов фронтальной группы 2-ой степени сложности.</p>', '', '11500', 'prajs-terapiya', 'А16:07.002.008', 391, NULL),
(392, '<p>Временная композитная реставрация.</p>', '', '1500', 'prajs-terapiya', 'А16:07.002.009', 392, NULL),
(393, '<p>Временная пломба.</p>', '', '500', 'prajs-terapiya', 'А16:07.002.010', 393, NULL),
(394, '<p>Восстановление зуба с помощью стеклоиономерного цемента, цемента тройного отверждения (Vitremer).</p>', '', '2900', 'prajs-terapiya', 'А16:07.002.011', 394, NULL),
(395, '<p>Восстановление культи зуба под коронку с использованием фотополимерного композита.</p>', '', '5000', 'prajs-terapiya', 'А16:07.002.012', 395, NULL),
(396, '<p>Коррекция реставрации.</p>', '', '2750', 'prajs-terapiya', 'А16:07.002.013', 396, NULL),
(397, '<p>Полировка реставрации.</p>', '', '500', 'prajs-terapiya', 'А16:07.002.014', 397, NULL),
(398, '<p>Лечение начального кариеса «Icon».</p>', '', '1700', 'prajs-terapiya', 'А16:07.002.015', 398, NULL),
(399, '<p>Временное пломбирование корневого канала (за 1 канал).</p>', '', '500', 'prajs-terapiya', 'А16:07.008.001', 399, NULL),
(400, '<p>Постоянное пломбирование корневого канала (за 1 канал).</p>', '', '1850', 'prajs-terapiya', 'А16:07.008.002', 400, NULL),
(401, '<p>Закрытие перфорации.</p>', '', '2500', 'prajs-terapiya', 'А16:07.008.003', 401, NULL),
(402, '<p>Пульпотомия.</p>', '', '1000', 'prajs-terapiya', 'А16:07.009', 402, NULL),
(403, '<p>Создание эндодонтического доступа.</p>', '', '1200', 'prajs-terapiya', 'А16:07.010', 403, NULL),
(404, '<p>Инструментальная, медикаментозная, ультрозвуковая обработка корневого канала (за 1 канал).</p>', '', '1500', 'prajs-terapiya', 'А16:07.030', 404, NULL),
(405, '<p>Медикаментозная обработка корневого канала (за 1 канал).</p>', '', '500', 'prajs-terapiya', 'А16:07.030.01', 405, NULL),
(406, '<p>Укрепление реставрации с использованием стекловолоконного штифта, фиксированного на цемент двойного отверждения.</p>', '', '2500', 'prajs-terapiya', 'А16:07.031', 406, NULL),
(407, '<p>Распломбировка корневого канала зуба (за 1 канал).</p>', '', '1350', 'prajs-terapiya', 'А16:07.082', 407, NULL),
(408, '<p>Фиксация внутриканального штифта.</p>', '', '1500', 'prajs-terapiya', 'А16:07.092', 408, NULL),
(409, '<p>Удаление штифта из корневого канала.</p>', '', '1500', 'prajs-terapiya', 'А16:07.093', 409, NULL),
(410, '<p>Удаление инородного тела из корневого канала.</p>', '', '3000', 'prajs-terapiya', 'А16:07.094', 410, NULL),
(411, '<p>Удаление цельнолитой вкладки.</p>', '', '5000', 'prajs-terapiya', 'А16:07.095', 411, NULL),
(412, '<p>Удаление подвижного зуба.</p>', '', '1400', 'prajs-hirurgiya', 'А16:07.001.001', 412, NULL),
(413, '<p>Удаление зуба простое.</p>', '', '2900', 'prajs-hirurgiya', 'А16:07.001.002', 413, NULL),
(414, '<p>Удаление зуба сложное.</p>', '', '4000', 'prajs-hirurgiya', 'А16:07.001.003', 414, NULL),
(415, '<p>Атравматичное удаление зуба с подготовкой для имплантации.</p>', '', '4650', 'prajs-hirurgiya', 'А16:07.001.004', 415, NULL),
(416, '<p>Резекция верхушки корня зуба.</p>', '', '5800', 'prajs-hirurgiya', 'А16:07.007', 416, NULL),
(417, '<p>Вскрытие пародонтального абсцесса.</p>', '', '400', 'prajs-hirurgiya', 'А16:07.011.001', 417, NULL),
(418, '<p>Удаление доброкачественных новообразований мягких тканей в полости рта 1 степени сложности.</p>', '', '3000', 'prajs-hirurgiya', 'А16:07.015.001', 418, NULL),
(419, '<p>Удаление доброкачественных новообразований мягких тканей в полости рта 2 степени сложности.</p>', '', '5000', 'prajs-hirurgiya', 'А16:07.015.002', 419, NULL),
(420, '<p>Забор и подсадка костного блока.</p>', '', '30000', 'prajs-hirurgiya', 'А16:07.017.001', 420, NULL),
(421, '<p>Расщепление альвеолярного гребня в одном сегменте.</p>', '', '9500', 'prajs-hirurgiya', 'А16:07.017.002', 421, NULL),
(422, '<p>Забор костной стружки.</p>', '', '3000', 'prajs-hirurgiya', 'А16:07.017.003', 422, NULL),
(423, '<p>Костная пластика альвеолярного гребня 1 степени сложности.</p>', '', '10000', 'prajs-hirurgiya', 'А16:07.017.004', 423, NULL),
(424, '<p>Костная пластика альвеолярного гребня 2 степени сложности.</p>', '', '20000', 'prajs-hirurgiya', 'А16:07.017.005', 424, NULL),
(425, '<p>Удаление ретинированного зуба на верхней челюсти.</p>', '', '6850', 'prajs-hirurgiya', 'А16:07.024.001', 425, NULL),
(426, '<p>Удаление ретинированного зуба на нижней челюсти.</p>', '', '7800', 'prajs-hirurgiya', 'А16:07.024.002', 426, NULL),
(427, '<p>Гингивэктомия с остеотомией в области 1 зуба.</p>', '', '2800', 'prajs-hirurgiya', 'А16:07.026.001', 427, NULL),
(428, '<p>Гингивотомия.</p>', '', '1500', 'prajs-hirurgiya', 'А16:07.026.002', 428, NULL),
(429, '<p>Периостотомия.</p>', '', '1300', 'prajs-hirurgiya', 'А16:07.027.001', 429, NULL),
(430, '<p>Остеотомия челюсти.</p>', '', '3300', 'prajs-hirurgiya', 'А16:07.027.002', 430, NULL),
(431, '<p>Удаление экзостоза.</p>', '', '3000', 'prajs-hirurgiya', 'А16:07.027.003', 431, NULL),
(432, '<p>Открытый кюретаж в области одного сегмента (до 3 зубов).</p>', '', '5500', 'prajs-hirurgiya', 'А16:07.038', 432, NULL),
(433, '<p>Закрытый кюретаж в области одного сегмента (до 3 зубов).</p>', '', '3500', 'prajs-hirurgiya', 'А16:07.039. 01', 433, NULL),
(434, '<p>Устранение рецессии десны.</p>', '', '6500', 'prajs-hirurgiya', 'А16:07.040.003', 434, NULL),
(435, '<p>Подсадка соединительно-тканного трансплантата.</p>', '', '4600', 'prajs-hirurgiya', 'А16:07.040.004', 435, NULL),
(436, '<p>Пластика уздечки верхней губы, языка.</p>', '', '4000', 'prajs-hirurgiya', 'А16:07.042', 436, NULL),
(437, '<p>Вестибулопластика.</p>', '', '21000', 'prajs-hirurgiya', 'А16:07.045', 437, NULL),
(438, '<p>Удаление винтового имплантата.</p>', '', '5000', 'prajs-hirurgiya', 'А16:07.054.001', 438, NULL),
(439, '<p>Установка ортодонтического мини имплантата.</p>', '', '9800', 'prajs-hirurgiya', 'А16:07.054.002', 439, NULL),
(440, '<p>Установка дентального временного имплантата.</p>', '', '15500', 'prajs-hirurgiya', 'А16:07.054.003', 440, NULL),
(441, '<p>Установка дентального имплантата Dentium (Южная Корея).</p>', '', '32000', 'prajs-hirurgiya', 'А16:07.054.004', 441, NULL),
(442, '<p>Установка дентального имплантата Nobel Replace Conical Connection (Швейцария).</p>', '', '45000', 'prajs-hirurgiya', 'А16:07.054.005', 442, NULL),
(443, '<p>Установка дентального имплантата Astra Tech (Швеция).</p>', '', '47000', 'prajs-hirurgiya', 'А16:07.054.006', 443, NULL),
(444, '<p>Установка дентального имплантата Mis (Израиль) с навигационным шаблоном.</p>', '', '51000', 'prajs-hirurgiya', 'А16:07.054.007', 444, NULL),
(445, '<p>Установка дентального имплантата Straumann (Швейцария).</p>', '', '52000', 'prajs-hirurgiya', 'А16:07.054.008', 445, NULL),
(446, '<p>Установка формирователя десны.</p>', '', '6500', 'prajs-hirurgiya', 'А16:07.054.009', 446, NULL),
(447, '<p>Открытый синус-лифтинг.</p>', '', '23000', 'prajs-hirurgiya', 'А16:07.055.001', 447, NULL),
(448, '<p>Закрытый синус-лифтинг.</p>', '', '10000', 'prajs-hirurgiya', 'А16:07.055.002', 448, NULL),
(449, '<p>Лечение перикоронарита.</p>', '', '1800', 'prajs-hirurgiya', 'А16:07.058.001', 449, NULL),
(450, '<p>Лечение альвеолита.</p>', '', '1500', 'prajs-hirurgiya', 'А16:07.058.002', 450, NULL),
(451, '<p>Пластика перфорации верхнечелюстной пазухи.</p>', '', '6000', 'prajs-hirurgiya', 'А16:07.096', 451, NULL),
(452, '<p>Наложение шва.</p>', '', '1500', 'prajs-hirurgiya', 'А16:07.097', 452, NULL),
(453, '<p>Стерильный индивидуальный хирургический пакет.</p>', '', '1450', 'prajs-hirurgiya', 'В01:065.005', 453, NULL),
(454, '<p>Депульпирование</p>', '', '1000', 'ceny-lechenie-zubov', '', 454, NULL),
(455, '<p>Имплантация зубов</p>', '', '32000', 'ceny-lechenie-zubov', '', 455, NULL),
(456, '<p>Исправление прикуса</p>', '', '17000', 'ceny-lechenie-zubov', '', 456, NULL),
(457, '<p>Удаление зубного камня</p>', '', '250', 'ceny-lechenie-zubov', '', 457, NULL),
(458, '<p>Чистка корневых каналов</p>', '', '1500', 'ceny-lechenie-zubov', '', 458, NULL),
(459, '<p>Кюретаж пародонтальных карманов</p>', '', '3500', 'ceny-lechenie-zubov', '', 459, NULL),
(460, '<p>Наращивание костной ткани</p>', '', '10000', 'ceny-lechenie-zubov', '', 460, NULL),
(461, '<p>Установка мостовидного протеза</p>', '', '27000', 'ceny-lechenie-zubov', '', 461, NULL),
(462, '<p>Нейлоновые протезы</p>', '', '30000', 'ceny-lechenie-zubov', '', 462, NULL);
INSERT INTO `konvertagency_doctors_table_row` (`id`, `nomination`, `pcs`, `price`, `table_slug`, `article`, `sort_order`, `parent_id`) VALUES
(463, '<p>Лечение пародонтоза</p>', '', '1500', 'ceny-lechenie-zubov', '', 463, NULL),
(464, '<p>Лечение пародонтита</p>', '', '1500', 'ceny-lechenie-zubov', '', 464, NULL),
(465, '<p>Лечение периодонтита</p>', '', '1800', 'ceny-lechenie-zubov', '', 465, NULL),
(466, '<p>Установка пломбы</p>', '', '3500', 'ceny-lechenie-zubov', '', 466, NULL),
(467, '<p>Реставрация зубов</p>', '', '4500', 'ceny-lechenie-zubov', '', 467, NULL),
(468, '<p>Съемные протезы</p>', '', '12000', 'ceny-lechenie-zubov', '', 468, NULL),
(469, '<p>Ультразвуковая чистка</p>', '', '1500', 'ceny-lechenie-zubov', '', 469, NULL),
(470, '<p>Пластика уздечки</p>', '', '4000', 'ceny-lechenie-zubov', '', 470, NULL),
(471, '<p>Коронки из диоксида циркония</p>', '', '35000', 'ceny-lechenie-zubov', '', 471, NULL),
(472, '<p>Выравнивание зубного ряда</p>', '', '17000', 'ceny-lechenie-zubov', '', 472, NULL),
(473, '<p>Распломбирование канала</p>', '', '1350', 'ceny-lechenie-zubov', '', 473, NULL),
(474, '<p>Имплантация зубов под ключ системой Dentium (Южная Корея) (цена за 1 ед.)</p>', '', '23000', 'ceny-implontataion', '', 24, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `konvertagency_doctors_title_page`
--

CREATE TABLE `konvertagency_doctors_title_page` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_bg` smallint NOT NULL DEFAULT '0',
  `bgmedia` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_appointment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `konvertagency_doctors_title_page`
--

INSERT INTO `konvertagency_doctors_title_page` (`id`, `title`, `sub_title`, `position_bg`, `bgmedia`, `btn_appointment`) VALUES
(1, 'Элайнеры', 'Незаметное исправление прикуса с помощью прозрачных капп.', 0, '/uploaded-files/h1.jpg', NULL),
(2, 'Лечение зубов', 'Цена <span> от 1000 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на лечение'),
(3, 'Лечение дёсен', 'Цена <span> от 1500 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на лечение'),
(4, 'Акции и скидки', '', 0, '/uploaded-files/h1.jpg', NULL),
(5, 'Имплантация зубов', 'Цена <span> от 23000 р.</span>', 0, '/uploaded-files/h1.jpg', 'Запись на имплантацию'),
(7, 'Виниры на зубы', 'Цена <span> от 11500 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на прием'),
(8, 'Брекеты', 'Цена <span> от 25000 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на прием'),
(9, 'Исправление прикуса', 'Цена <span> от 7200 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на прием'),
(10, 'Коронки на зубы', 'Цена <span> от 15500 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на прием'),
(12, 'Лечение кариеса', 'Цена <span> от 1700 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на лечение'),
(13, 'Лечение пульпита', 'Цена <span> от 1850 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на лечение'),
(14, 'Профессиональная чистка зубов', 'Цена <span> от 5500 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на чистку'),
(15, 'Удаление зуба', 'Цена <span> от 1500 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на удаление'),
(16, 'Протезирование зубов', 'Цена <span> от 12000 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на прием'),
(17, 'Съемные зубные протезы', 'Цена <span> от 12000 р.</span>', 0, '/uploaded-files/h1.jpg', 'Записаться на прием'),
(18, 'Реставрация зубов', 'Цена <span> от 3500 р.</span>', 0, '/uploaded-files/h1.jpg', 'Запись на реставрацию'),
(19, 'Компьютерная томография челюсти', '', 0, '/uploaded-files/h1.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3),
(41, '2021_10_01_000025_Db_Add_Pivot_Data_To_Deferred_Bindings', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_sitemap_definitions`
--

CREATE TABLE `rainlab_sitemap_definitions` (
  `id` int UNSIGNED NOT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rainlab_sitemap_definitions`
--

INSERT INTO `rainlab_sitemap_definitions` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'medstudio', '[{\"changefreq\":\"always\",\"priority\":\"0.5\",\"nesting\":\"1\",\"type\":\"static-page\",\"url\":\"\",\"reference\":\"glavnaya\",\"cmsPage\":\"\"},{\"changefreq\":\"always\",\"priority\":\"0.5\",\"nesting\":\"0\",\"type\":\"static-page\",\"url\":\"\",\"reference\":\"o-klinike\",\"cmsPage\":\"\"},{\"changefreq\":\"always\",\"priority\":\"0.5\",\"nesting\":\"0\",\"type\":\"static-page\",\"url\":\"\",\"reference\":\"kontakty\",\"cmsPage\":\"\"},{\"changefreq\":\"always\",\"priority\":\"0.5\",\"nesting\":\"0\",\"type\":\"static-page\",\"url\":\"\",\"reference\":\"vrachi\",\"cmsPage\":\"\"},{\"changefreq\":\"always\",\"priority\":\"0.5\",\"nesting\":\"0\",\"type\":\"static-page\",\"url\":\"\",\"reference\":\"ceny\",\"cmsPage\":\"\"},{\"changefreq\":\"always\",\"priority\":\"0.7\",\"nesting\":\"1\",\"type\":\"static-page\",\"reference\":\"stomatologiya-lechenie-zubov\"},{\"changefreq\":\"always\",\"priority\":\"0.7\",\"nesting\":\"1\",\"type\":\"static-page\",\"reference\":\"implantation\"},{\"changefreq\":\"always\",\"priority\":\"0.7\",\"nesting\":\"1\",\"type\":\"static-page\",\"reference\":\"protezirovanie\"},{\"changefreq\":\"always\",\"priority\":\"0.7\",\"nesting\":\"1\",\"type\":\"static-page\",\"reference\":\"ispravlenie-prikusa\"},{\"changefreq\":\"always\",\"priority\":\"0.7\",\"nesting\":\"1\",\"type\":\"static-page\",\"reference\":\"lechenie-desen\"},{\"changefreq\":\"always\",\"priority\":\"0.7\",\"nesting\":\"1\",\"type\":\"static-page\",\"reference\":\"udalenie-zuba\"},{\"changefreq\":\"always\",\"priority\":\"0.7\",\"nesting\":\"1\",\"type\":\"static-page\",\"reference\":\"profgigiena-polosti-rta\"},{\"changefreq\":\"always\",\"priority\":\"0.5\",\"nesting\":\"0\",\"type\":\"static-page\",\"reference\":\"rassrochka-i-kredit\"}]', '2021-10-21 09:12:58', '2021-10-21 09:15:51');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_activity` int DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int UNSIGNED NOT NULL,
  `level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v17sm417893lfp.150 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v17sm417893lfp.150 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v17sm417893lfp.150 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-01 06:03:38', '2021-11-01 06:03:38'),
(2, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d21sm1355527lfa.19 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d21sm1355527lfa.19 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d21sm1355527lfa.19 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-01 06:03:49', '2021-11-01 06:03:49'),
(3, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v20sm1415983ljg.35 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v20sm1415983ljg.35 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials v20sm1415983ljg.35 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-01 06:07:06', '2021-11-01 06:07:06');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(4, 'error', 'PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'medstudio_v2.konvertagency_doctors_marquiz\' doesn\'t exist in /var/www/medstudi/data/www/med-studio.ru/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:82\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(82): PDO->prepare(\'select * from `...\', Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'select * from `...\')\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(662): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'select * from `...\', Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(629): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(338): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2159): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#6 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2147): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2619): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2148): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#9 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Database/QueryBuilder.php(89): Illuminate\\Database\\Query\\Builder->get(Array)\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(546): October\\Rain\\Database\\QueryBuilder->get(Array)\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(530): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Traits/ForwardsCalls.php(23): Illuminate\\Database\\Eloquent\\Builder->get()\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1622): Illuminate\\Database\\Eloquent\\Model->forwardCallTo(Object(October\\Rain\\Database\\Builder), \'get\', Array)\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Extension/ExtendableTrait.php(449): Illuminate\\Database\\Eloquent\\Model->__call(\'get\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Database/Model.php(618): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1634): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#17 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/MarquizP.php(57): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#18 /var/www/medstudi/data/www/med-studio.ru/modules/backend/traits/InspectableContainer.php(55): Konvertagency\\Doctors\\Components\\MarquizP->getMarquiz_slugOptions()\n#19 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(631): RainLab\\Pages\\Controllers\\Index->onInspectableGetOptions()\n#20 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(449): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#21 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(242): Backend\\Classes\\Controller->execAjaxHandlers()\n#22 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/BackendController.php(143): Backend\\Classes\\Controller->run(\'index\', Array)\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Backend\\Classes\\BackendController->run(\'rainlab/pages\')\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#51 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#52 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#53 {main}\n\nNext Doctrine\\DBAL\\Driver\\PDO\\Exception: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'medstudio_v2.konvertagency_doctors_marquiz\' doesn\'t exist in /var/www/medstudi/data/www/med-studio.ru/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDO/Exception.php:18\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(87): Doctrine\\DBAL\\Driver\\PDO\\Exception::new(Object(PDOException))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'select * from `...\')\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(662): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'select * from `...\', Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(629): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(338): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2159): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#6 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2147): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2619): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2148): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#9 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Database/QueryBuilder.php(89): Illuminate\\Database\\Query\\Builder->get(Array)\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(546): October\\Rain\\Database\\QueryBuilder->get(Array)\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(530): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Traits/ForwardsCalls.php(23): Illuminate\\Database\\Eloquent\\Builder->get()\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1622): Illuminate\\Database\\Eloquent\\Model->forwardCallTo(Object(October\\Rain\\Database\\Builder), \'get\', Array)\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Extension/ExtendableTrait.php(449): Illuminate\\Database\\Eloquent\\Model->__call(\'get\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Database/Model.php(618): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1634): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#17 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/MarquizP.php(57): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#18 /var/www/medstudi/data/www/med-studio.ru/modules/backend/traits/InspectableContainer.php(55): Konvertagency\\Doctors\\Components\\MarquizP->getMarquiz_slugOptions()\n#19 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(631): RainLab\\Pages\\Controllers\\Index->onInspectableGetOptions()\n#20 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(449): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#21 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(242): Backend\\Classes\\Controller->execAjaxHandlers()\n#22 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/BackendController.php(143): Backend\\Classes\\Controller->run(\'index\', Array)\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Backend\\Classes\\BackendController->run(\'rainlab/pages\')\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#51 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#52 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#53 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'medstudio_v2.konvertagency_doctors_marquiz\' doesn\'t exist (SQL: select * from `konvertagency_doctors_marquiz`) in /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php:669\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(629): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Connection.php(338): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2159): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2147): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2619): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2148): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Database/QueryBuilder.php(89): Illuminate\\Database\\Query\\Builder->get(Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(546): October\\Rain\\Database\\QueryBuilder->get(Array)\n#8 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(530): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#9 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Traits/ForwardsCalls.php(23): Illuminate\\Database\\Eloquent\\Builder->get()\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1622): Illuminate\\Database\\Eloquent\\Model->forwardCallTo(Object(October\\Rain\\Database\\Builder), \'get\', Array)\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Extension/ExtendableTrait.php(449): Illuminate\\Database\\Eloquent\\Model->__call(\'get\', Array)\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Database/Model.php(618): October\\Rain\\Database\\Model->extendableCall(\'get\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Model.php(1634): October\\Rain\\Database\\Model->__call(\'get\', Array)\n#14 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/MarquizP.php(57): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'get\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/backend/traits/InspectableContainer.php(55): Konvertagency\\Doctors\\Components\\MarquizP->getMarquiz_slugOptions()\n#16 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(631): RainLab\\Pages\\Controllers\\Index->onInspectableGetOptions()\n#17 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(449): Backend\\Classes\\Controller->runAjaxHandler(\'onInspectableGe...\')\n#18 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/Controller.php(242): Backend\\Classes\\Controller->execAjaxHandlers()\n#19 /var/www/medstudi/data/www/med-studio.ru/modules/backend/classes/BackendController.php(143): Backend\\Classes\\Controller->run(\'index\', Array)\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Backend\\Classes\\BackendController->run(\'rainlab/pages\')\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#49 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#50 {main}', '[]', '2021-11-06 12:25:52', '2021-11-06 12:25:52');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(5, 'error', 'Cms\\Classes\\CmsException: Не удалось найти шаблон (partial) с именем marquiz. in /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php:1052\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'marquiz\', Array, true)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Environment.php(418) : eval()\'d code(313): Cms\\Twig\\Extension->partialFunction(\'marquiz\', Array, true)\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(405): __TwigTemplate_f2948100c0ded7ecd3fb9db0fb90f9580f9570fc47ca818f11bc9e9ec98c7a39->doDisplay(Array, Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#5 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#6 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#8 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'test.htm\', Object(Cms\\Classes\\Theme), \'<figure data-co...\')\n#9 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#10 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#16 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#17 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'test\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'test\')\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#48 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Не удалось найти шаблон (partial) с именем marquiz.\") in \"/var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/marquizp/default.htm\" at line 124. in /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php:419\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#2 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#4 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#5 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'test.htm\', Object(Cms\\Classes\\Theme), \'<figure data-co...\')\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#8 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#9 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#14 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'test\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'test\')\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', '[]', '2021-11-06 12:39:21', '2021-11-06 12:39:21'),
(6, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k22sm585439lfu.95 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k22sm585439lfu.95 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials k22sm585439lfu.95 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-09 17:12:37', '2021-11-09 17:12:37'),
(7, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials j5sm1946516ljh.75 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials j5sm1946516ljh.75 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials j5sm1946516ljh.75 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-09 17:12:46', '2021-11-09 17:12:46'),
(8, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials e14sm318698lfs.150 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials e14sm318698lfs.150 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials e14sm318698lfs.150 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-09 17:14:34', '2021-11-09 17:14:34');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(9, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials p8sm349186ljh.76 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials p8sm349186ljh.76 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials p8sm349186ljh.76 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-11 15:49:15', '2021-11-11 15:49:15'),
(10, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b6sm336386ljr.103 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b6sm336386ljr.103 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials b6sm336386ljr.103 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-11 15:57:57', '2021-11-11 15:57:57'),
(11, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials r5sm1866857lji.132 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials r5sm1866857lji.132 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials r5sm1866857lji.132 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-16 10:40:42', '2021-11-16 10:40:42'),
(12, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d16sm1854314ljj.87 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d16sm1854314ljj.87 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials d16sm1854314ljj.87 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-16 10:40:51', '2021-11-16 10:40:51'),
(13, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalThrowableError: Too few arguments to function KonvertAgency\\Doctors\\Plugin::KonvertAgency\\Doctors\\{closure}(), 0 passed in /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Environment.php(418) : eval()\'d code on line 130 and exactly 1 expected in /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php:144\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Environment.php(418) : eval()\'d code(130): KonvertAgency\\Doctors\\Plugin->KonvertAgency\\Doctors\\{closure}()\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(405): __TwigTemplate_f2948100c0ded7ecd3fb9db0fb90f9580f9570fc47ca818f11bc9e9ec98c7a39->doDisplay(Array, Array)\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#5 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#8 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#9 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#14 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#16 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#17 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', '[]', '2021-11-19 13:32:15', '2021-11-19 13:32:15');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(14, 'error', 'ErrorException: Undefined variable: pref in /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php:145\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php(145): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/medstu...\', 145, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Environment.php(418) : eval()\'d code(130): KonvertAgency\\Doctors\\Plugin->KonvertAgency\\Doctors\\{closure}()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(405): __TwigTemplate_f2948100c0ded7ecd3fb9db0fb90f9580f9570fc47ca818f11bc9e9ec98c7a39->doDisplay(Array, Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#5 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#6 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#8 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#9 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#10 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#16 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#17 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#48 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Undefined variable: pref\") in \"/var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/marquizp/default.htm\" at line 40. in /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php:419\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#2 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#4 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#5 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#8 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#9 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#14 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', '[]', '2021-11-19 13:32:38', '2021-11-19 13:32:38'),
(15, 'error', 'ErrorException: Undefined variable: pref in /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php:145\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php(145): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/medstu...\', 145, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Environment.php(418) : eval()\'d code(132): KonvertAgency\\Doctors\\Plugin->KonvertAgency\\Doctors\\{closure}()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(405): __TwigTemplate_f2948100c0ded7ecd3fb9db0fb90f9580f9570fc47ca818f11bc9e9ec98c7a39->doDisplay(Array, Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#5 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#6 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#8 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#9 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#10 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#16 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#17 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#48 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Undefined variable: pref\") in \"/var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/marquizp/default.htm\" at line 40. in /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php:419\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#2 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#4 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#5 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#8 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#9 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#14 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', '[]', '2021-11-19 13:34:00', '2021-11-19 13:34:00');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(16, 'error', 'ErrorException: Undefined variable: pref in /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php:145\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php(145): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/medstu...\', 145, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Environment.php(418) : eval()\'d code(132): KonvertAgency\\Doctors\\Plugin->KonvertAgency\\Doctors\\{closure}()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(405): __TwigTemplate_f2948100c0ded7ecd3fb9db0fb90f9580f9570fc47ca818f11bc9e9ec98c7a39->doDisplay(Array, Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#5 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#6 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#8 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#9 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#10 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#16 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#17 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#48 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Undefined variable: pref\") in \"/var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/marquizp/default.htm\" at line 40. in /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php:419\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#2 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#4 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#5 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#8 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#9 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#14 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', '[]', '2021-11-19 13:34:54', '2021-11-19 13:34:54'),
(17, 'error', 'ErrorException: Undefined variable: pref in /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php:145\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/Plugin.php(145): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'/var/www/medstu...\', 145, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Environment.php(418) : eval()\'d code(130): KonvertAgency\\Doctors\\Plugin->KonvertAgency\\Doctors\\{closure}(\'\\xD0\\x94\\xD0\\xBE \')\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(405): __TwigTemplate_f2948100c0ded7ecd3fb9db0fb90f9580f9570fc47ca818f11bc9e9ec98c7a39->doDisplay(Array, Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#5 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#6 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#8 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#9 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#10 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#16 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#17 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#48 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#49 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Undefined variable: pref\") in \"/var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/marquizp/default.htm\" at line 40. in /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php:419\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(378): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/twig/twig/src/Template.php(390): Twig\\Template->display(Array)\n#2 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1110): Twig\\Template->render(Array)\n#3 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(1243): Cms\\Classes\\Controller->renderPartial(\'Marquiz::defaul...\', Array, false)\n#4 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Snippet.php(411): Cms\\Classes\\Controller->renderComponent(\'Marquiz\')\n#5 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Page.php(596): RainLab\\Pages\\Classes\\Snippet::processPageMarkup(\'implantation.ht...\', Object(Cms\\Classes\\Theme), \'\\n<section><div ...\')\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/classes/Controller.php(90): RainLab\\Pages\\Classes\\Page->getProcessedMarkup()\n#7 /var/www/medstudi/data/www/med-studio.ru/plugins/rainlab/pages/Plugin.php(133): RainLab\\Pages\\Classes\\Controller->getPageContents(Object(Cms\\Classes\\Page))\n#8 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(388): RainLab\\Pages\\Plugin->RainLab\\Pages\\{closure}(Object(Cms\\Classes\\Controller), Object(Cms\\Classes\\Page))\n#9 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(234): October\\Rain\\Events\\Dispatcher->October\\Rain\\Events\\{closure}(\'cms.page.before...\', Array)\n#10 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Events/Dispatcher.php(201): October\\Rain\\Events\\Dispatcher->dispatch(\'cms.page.before...\', Array, true)\n#11 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Events\\Dispatcher->fire(\'cms.page.before...\', Array, true)\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/system/traits/EventEmitter.php(58): Illuminate\\Support\\Facades\\Facade::__callStatic(\'fire\', Array)\n#13 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(410): Cms\\Classes\\Controller->fireSystemEvent(\'cms.page.before...\', Array)\n#14 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'implantacziya-z...\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'implantacziya-z...\')\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', '[]', '2021-11-19 13:35:31', '2021-11-19 13:35:31'),
(18, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials h13sm506232ljc.39 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials h13sm506232ljc.39 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials h13sm506232ljc.39 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-21 07:07:43', '2021-11-21 07:07:43');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(19, 'error', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"kostyrinandrej90@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials m15sm596616lfg.165 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials m15sm596616lfg.165 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials m15sm596616lfg.165 - gsmtp\r\n\". in /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /var/www/medstudi/data/www/med-studio.ru/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(488): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Mail/Mailer.php(115): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(261): October\\Rain\\Mail\\Mailer->send(\'konvertagency.d...\', Array, Object(Closure))\n#6 /var/www/medstudi/data/www/med-studio.ru/plugins/konvertagency/doctors/components/ContactP.php(175): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#7 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/ComponentBase.php(187): Konvertagency\\Doctors\\Components\\ContactP->onSendMail()\n#8 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(897): Cms\\Classes\\ComponentBase->runAjaxHandler(\'onSendMail\')\n#9 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(739): Cms\\Classes\\Controller->runAjaxHandler(\'onSendMail\')\n#10 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(375): Cms\\Classes\\Controller->execAjaxHandlers()\n#11 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/Controller.php(222): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#12 /var/www/medstudi/data/www/med-studio.ru/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'sendmail\')\n#13 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): Cms\\Classes\\CmsController->run(\'sendmail\')\n#14 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#15 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#16 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Route.php(176): Illuminate\\Routing\\Route->runController()\n#17 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(681): Illuminate\\Routing\\Route->run()\n#18 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(683): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Routing/Router.php(624): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Router/CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /var/www/medstudi/data/www/med-studio.ru/vendor/october/rain/src/Foundation/Http/Middleware/CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /var/www/medstudi/data/www/med-studio.ru/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#42 /var/www/medstudi/data/www/med-studio.ru/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#43 {main}', '[]', '2021-11-21 07:07:47', '2021-11-21 07:07:47'),
(20, 'error', 'PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'med_studio_ru.konvertagency_doctors_etaps\' doesn\'t exist in C:\\openserver\\domains\\medstudio2\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\PDOConnection.php:82\nStack trace:\n#0 C:\\openserver\\domains\\medstudio2\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\PDOConnection.php(82): PDO->prepare()\n#1 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare()\n#2 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(662): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}()\n#3 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(629): Illuminate\\Database\\Connection->runQueryCallback()\n#4 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(338): Illuminate\\Database\\Connection->run()\n#5 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2159): Illuminate\\Database\\Connection->select()\n#6 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2147): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2619): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2148): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#9 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(89): Illuminate\\Database\\Query\\Builder->get()\n#10 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2246): October\\Rain\\Database\\QueryBuilder->get()\n#11 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2217): Illuminate\\Database\\Query\\Builder->runPaginationCountQuery()\n#12 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Database\\Builder.php(140): Illuminate\\Database\\Query\\Builder->getCountForPagination()\n#13 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(588): October\\Rain\\Database\\Builder->paginate()\n#14 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(249): Backend\\Widgets\\Lists->getRecords()\n#15 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(237): Backend\\Widgets\\Lists->prepareVars()\n#16 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\listcontroller\\partials\\_container.htm(10): Backend\\Widgets\\Lists->render()\n#17 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(252): include(\'C:\\\\openserver\\\\d...\')\n#18 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\ControllerBehavior.php(140): Backend\\Classes\\Controller->makeFileContents()\n#19 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(99): Backend\\Classes\\ControllerBehavior->makeFileContents()\n#20 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\ListController.php(436): Backend\\Classes\\ControllerBehavior->makePartial()\n#21 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\ListController.php(423): Backend\\Behaviors\\ListController->listMakePartial()\n#22 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(435): Backend\\Behaviors\\ListController->listRender()\n#23 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Extension\\Extendable.php(46): October\\Rain\\Extension\\Extendable->extendableCall()\n#24 C:\\openserver\\domains\\medstudio2\\plugins\\konvertagency\\doctors\\controllers\\etaps\\index.htm(1): October\\Rain\\Extension\\Extendable->__call()\n#25 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(252): include(\'C:\\\\openserver\\\\d...\')\n#26 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(113): Backend\\Classes\\Controller->makeFileContents()\n#27 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\Controller.php(397): Backend\\Classes\\Controller->makeView()\n#28 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\Controller.php(255): Backend\\Classes\\Controller->execPageAction()\n#29 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\BackendController.php(143): Backend\\Classes\\Controller->run()\n#30 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Backend\\Classes\\BackendController->run()\n#31 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#32 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#33 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(176): Illuminate\\Routing\\Route->runController()\n#34 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(681): Illuminate\\Routing\\Route->run()\n#35 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#36 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#38 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#40 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle()\n#42 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#44 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#46 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#48 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#49 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#50 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute()\n#51 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#52 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#53 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#54 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#55 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#56 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#57 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#58 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#59 C:\\openserver\\domains\\medstudio2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#60 {main}\n\nNext Doctrine\\DBAL\\Driver\\PDO\\Exception: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'med_studio_ru.konvertagency_doctors_etaps\' doesn\'t exist in C:\\openserver\\domains\\medstudio2\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\PDO\\Exception.php:18\nStack trace:\n#0 C:\\openserver\\domains\\medstudio2\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\PDOConnection.php(87): Doctrine\\DBAL\\Driver\\PDO\\Exception::new()\n#1 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare()\n#2 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(662): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}()\n#3 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(629): Illuminate\\Database\\Connection->runQueryCallback()\n#4 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(338): Illuminate\\Database\\Connection->run()\n#5 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2159): Illuminate\\Database\\Connection->select()\n#6 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2147): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2619): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2148): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#9 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(89): Illuminate\\Database\\Query\\Builder->get()\n#10 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2246): October\\Rain\\Database\\QueryBuilder->get()\n#11 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2217): Illuminate\\Database\\Query\\Builder->runPaginationCountQuery()\n#12 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Database\\Builder.php(140): Illuminate\\Database\\Query\\Builder->getCountForPagination()\n#13 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(588): October\\Rain\\Database\\Builder->paginate()\n#14 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(249): Backend\\Widgets\\Lists->getRecords()\n#15 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(237): Backend\\Widgets\\Lists->prepareVars()\n#16 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\listcontroller\\partials\\_container.htm(10): Backend\\Widgets\\Lists->render()\n#17 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(252): include(\'C:\\\\openserver\\\\d...\')\n#18 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\ControllerBehavior.php(140): Backend\\Classes\\Controller->makeFileContents()\n#19 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(99): Backend\\Classes\\ControllerBehavior->makeFileContents()\n#20 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\ListController.php(436): Backend\\Classes\\ControllerBehavior->makePartial()\n#21 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\ListController.php(423): Backend\\Behaviors\\ListController->listMakePartial()\n#22 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(435): Backend\\Behaviors\\ListController->listRender()\n#23 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Extension\\Extendable.php(46): October\\Rain\\Extension\\Extendable->extendableCall()\n#24 C:\\openserver\\domains\\medstudio2\\plugins\\konvertagency\\doctors\\controllers\\etaps\\index.htm(1): October\\Rain\\Extension\\Extendable->__call()\n#25 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(252): include(\'C:\\\\openserver\\\\d...\')\n#26 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(113): Backend\\Classes\\Controller->makeFileContents()\n#27 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\Controller.php(397): Backend\\Classes\\Controller->makeView()\n#28 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\Controller.php(255): Backend\\Classes\\Controller->execPageAction()\n#29 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\BackendController.php(143): Backend\\Classes\\Controller->run()\n#30 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Backend\\Classes\\BackendController->run()\n#31 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#32 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#33 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(176): Illuminate\\Routing\\Route->runController()\n#34 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(681): Illuminate\\Routing\\Route->run()\n#35 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#36 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#38 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#40 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle()\n#42 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#44 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#46 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#48 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#49 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#50 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute()\n#51 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#52 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#53 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#54 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#55 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#56 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#57 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#58 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#59 C:\\openserver\\domains\\medstudio2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#60 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S02]: Base table or view not found: 1146 Table \'med_studio_ru.konvertagency_doctors_etaps\' doesn\'t exist (SQL: select count(*) as aggregate from `konvertagency_doctors_etaps`) in C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:669\nStack trace:\n#0 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(629): Illuminate\\Database\\Connection->runQueryCallback()\n#1 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(338): Illuminate\\Database\\Connection->run()\n#2 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2159): Illuminate\\Database\\Connection->select()\n#3 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2147): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2619): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#5 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2148): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#6 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(89): Illuminate\\Database\\Query\\Builder->get()\n#7 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2246): October\\Rain\\Database\\QueryBuilder->get()\n#8 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(2217): Illuminate\\Database\\Query\\Builder->runPaginationCountQuery()\n#9 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Database\\Builder.php(140): Illuminate\\Database\\Query\\Builder->getCountForPagination()\n#10 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(588): October\\Rain\\Database\\Builder->paginate()\n#11 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(249): Backend\\Widgets\\Lists->getRecords()\n#12 C:\\openserver\\domains\\medstudio2\\modules\\backend\\widgets\\Lists.php(237): Backend\\Widgets\\Lists->prepareVars()\n#13 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\listcontroller\\partials\\_container.htm(10): Backend\\Widgets\\Lists->render()\n#14 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(252): include(\'C:\\\\openserver\\\\d...\')\n#15 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\ControllerBehavior.php(140): Backend\\Classes\\Controller->makeFileContents()\n#16 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(99): Backend\\Classes\\ControllerBehavior->makeFileContents()\n#17 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\ListController.php(436): Backend\\Classes\\ControllerBehavior->makePartial()\n#18 C:\\openserver\\domains\\medstudio2\\modules\\backend\\behaviors\\ListController.php(423): Backend\\Behaviors\\ListController->listMakePartial()\n#19 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(435): Backend\\Behaviors\\ListController->listRender()\n#20 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Extension\\Extendable.php(46): October\\Rain\\Extension\\Extendable->extendableCall()\n#21 C:\\openserver\\domains\\medstudio2\\plugins\\konvertagency\\doctors\\controllers\\etaps\\index.htm(1): October\\Rain\\Extension\\Extendable->__call()\n#22 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(252): include(\'C:\\\\openserver\\\\d...\')\n#23 C:\\openserver\\domains\\medstudio2\\modules\\system\\traits\\ViewMaker.php(113): Backend\\Classes\\Controller->makeFileContents()\n#24 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\Controller.php(397): Backend\\Classes\\Controller->makeView()\n#25 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\Controller.php(255): Backend\\Classes\\Controller->execPageAction()\n#26 C:\\openserver\\domains\\medstudio2\\modules\\backend\\classes\\BackendController.php(143): Backend\\Classes\\Controller->run()\n#27 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): Backend\\Classes\\BackendController->run()\n#28 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction()\n#29 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(219): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#30 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(176): Illuminate\\Routing\\Route->runController()\n#31 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(681): Illuminate\\Routing\\Route->run()\n#32 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#33 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#34 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle()\n#35 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#36 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#37 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(56): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#38 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Session\\Middleware\\StartSession->handle()\n#39 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#40 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#41 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#42 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#43 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#44 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(683): Illuminate\\Pipeline\\Pipeline->then()\n#45 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Router->runRouteWithinStack()\n#46 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(624): Illuminate\\Routing\\Router->runRoute()\n#47 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(31): Illuminate\\Routing\\Router->dispatchToRoute()\n#48 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(170): October\\Rain\\Router\\CoreRouter->dispatch()\n#49 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#50 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#51 C:\\openserver\\domains\\medstudio2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(23): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#52 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(171): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#53 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#54 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(145): Illuminate\\Pipeline\\Pipeline->then()\n#55 C:\\openserver\\domains\\medstudio2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(110): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#56 C:\\openserver\\domains\\medstudio2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle()\n#57 {main}', '[]', '2021-11-22 12:34:53', '2021-11-22 12:34:53');

-- --------------------------------------------------------

--
-- Структура таблицы `system_files`
--

CREATE TABLE `system_files` (
  `id` int UNSIGNED NOT NULL,
  `disk_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int NOT NULL,
  `content_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(166, '601e863e24a69181253773.jpg', 'Аведов Юрий Борисович - ортопед.jpg', 1337356, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 166, '2021-02-06 09:06:22', '2021-02-06 09:06:22'),
(446, '603909b68549f844430211.jpg', 'IMG_20191116_191108[1].jpg', 938900, 'image/jpeg', 'название', 'описание', 'imgSampleWorks', '1', 'KonvertAgency\\Doctors\\Models\\SampleWorks', 1, 446, '2021-02-26 11:46:14', '2021-03-05 07:41:06'),
(447, '60390a30395a7731817467.jpg', '389.jpg', 647807, 'image/jpeg', NULL, NULL, 'imgSampleWorks', '2', 'KonvertAgency\\Doctors\\Models\\SampleWorks', 1, 447, '2021-02-26 11:48:16', '2021-02-26 11:48:19'),
(448, '60390a40b1a6f881716577.jpg', '111203-ONYU9B-674.jpg', 164796, 'image/jpeg', NULL, NULL, 'imgSampleWorks', '3', 'KonvertAgency\\Doctors\\Models\\SampleWorks', 1, 448, '2021-02-26 11:48:32', '2021-02-26 11:48:34'),
(449, '603d0bc88a538993915014.jpg', 'jelainery.jpg', 50834, 'image/jpeg', NULL, NULL, 'bg_title', '1', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 449, '2021-03-01 12:44:08', '2021-03-01 12:44:42'),
(472, '604f744449d45863068043.jpg', 'Зубная имплантация All-on-6.jpg', 144297, 'image/jpeg', NULL, NULL, 'img_slide', '7', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 472, '2021-03-15 11:50:44', '2021-03-15 11:50:55'),
(473, '604f745e78ca2580755122.jpg', 'Зубной протез нижней челюсти на имплантатах.jpg', 111722, 'image/jpeg', NULL, NULL, 'img_slide', '8', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 473, '2021-03-15 11:51:10', '2021-03-15 11:51:18'),
(474, '604f7484bd705955834541.jpg', 'Имплантация под жевательный.jpg', 126847, 'image/jpeg', NULL, NULL, 'img_slide', '9', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 474, '2021-03-15 11:51:48', '2021-03-15 11:51:54'),
(475, '604f7494bf61c135032393.jpg', 'Имплантация с протезированием.jpg', 108470, 'image/jpeg', NULL, NULL, 'img_slide', '10', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 475, '2021-03-15 11:52:04', '2021-03-15 11:52:09'),
(476, '604f75672127a754901687.jpg', 'Керамическая коронка на имплантате.jpg', 123097, 'image/jpeg', NULL, NULL, 'img_slide', '11', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 476, '2021-03-15 11:55:35', '2021-03-15 11:55:41'),
(477, '604f7584a535a319586878.jpg', 'Мостовидный протез на четырех имплантатах.jpg', 129952, 'image/jpeg', NULL, NULL, 'img_slide', '12', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 477, '2021-03-15 11:56:04', '2021-03-15 11:56:11'),
(478, '604f759eeb2db808002561.jpg', 'Полный бюгельный протез на имплантатах.jpg', 115360, 'image/jpeg', NULL, NULL, 'img_slide', '13', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 478, '2021-03-15 11:56:30', '2021-03-15 11:56:33'),
(479, '604f75abe1f21756475727.jpg', 'Установка импланта на передние зубы.jpg', 103690, 'image/jpeg', NULL, NULL, 'img_slide', '14', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 479, '2021-03-15 11:56:43', '2021-03-15 11:56:49'),
(481, '605b5e7e68956248220926.jpg', 'flag-ch-300x200.jpg', 2839, 'image/jpeg', NULL, NULL, 'flag', '1', 'KonvertAgency\\Doctors\\Models\\Country', 1, 481, '2021-03-24 12:45:02', '2021-03-24 12:45:12'),
(482, '605b5e9c92cc5914755421.jpg', 'flag-de-300x200.jpg', 2163, 'image/jpeg', NULL, NULL, 'flag', '2', 'KonvertAgency\\Doctors\\Models\\Country', 1, 482, '2021-03-24 12:45:32', '2021-03-24 12:45:35'),
(483, '605b5eaf5b889986093248.jpg', 'flag-il-300x200.jpg', 6639, 'image/jpeg', NULL, NULL, 'flag', '3', 'KonvertAgency\\Doctors\\Models\\Country', 1, 483, '2021-03-24 12:45:51', '2021-03-24 12:45:54'),
(485, '605b618c91876455151575.jpg', 'flag-kr-300x200.jpg', 8250, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 485, '2021-03-24 12:58:04', '2021-03-24 12:58:04'),
(486, '605b6296452c6276157010.jpg', 'flag-kr-300x200.jpg', 8250, 'image/jpeg', NULL, NULL, 'flag', '4', 'KonvertAgency\\Doctors\\Models\\Country', 1, 486, '2021-03-24 13:02:30', '2021-03-24 13:02:34'),
(488, '605c8b4ea810f178618004.jpeg', 'smail.jpeg', 133095, 'image/jpeg', NULL, NULL, 'flag', '5', 'KonvertAgency\\Doctors\\Models\\Country', 1, 488, '2021-03-25 10:08:30', '2021-03-25 10:08:38'),
(489, '605c8d574332c559010482.jpeg', 'smail.jpeg', 133095, 'image/jpeg', NULL, NULL, 'flag', '6', 'KonvertAgency\\Doctors\\Models\\Country', 1, 489, '2021-03-25 10:17:11', '2021-03-25 10:17:29'),
(490, '605c8d7a5fdfc473843894.jpg', 'flag-il-300x200.jpg', 6639, 'image/jpeg', NULL, NULL, 'flag', '7', 'KonvertAgency\\Doctors\\Models\\Country', 1, 490, '2021-03-25 10:17:46', '2021-03-25 10:17:48'),
(491, '605c8d9051418982010684.jpg', 'flag-de-300x200.jpg', 2163, 'image/jpeg', NULL, NULL, 'flag', '8', 'KonvertAgency\\Doctors\\Models\\Country', 1, 491, '2021-03-25 10:18:08', '2021-03-25 10:18:12'),
(492, '605c8daac0691711383278.jpg', 'flag-ch-300x200.jpg', 2839, 'image/jpeg', NULL, NULL, 'flag', '9', 'KonvertAgency\\Doctors\\Models\\Country', 1, 492, '2021-03-25 10:18:34', '2021-03-25 10:18:37'),
(493, '605c8dc2a42f5566127826.jpg', 'flag-kr-300x200.jpg', 8250, 'image/jpeg', NULL, NULL, 'flag', '10', 'KonvertAgency\\Doctors\\Models\\Country', 1, 493, '2021-03-25 10:18:58', '2021-03-25 10:19:00'),
(526, '6061eb9dc2071696681170.jpg', 'лечение десен_cr.jpg', 308947, 'image/jpeg', NULL, NULL, 'bg_title', '3', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 526, '2021-03-29 12:00:45', '2021-03-29 12:00:49'),
(536, '60634ff7359c9930372606.jpg', 'fon-dlya-aktsii-skidok-53.jpg', 850180, 'image/jpeg', NULL, NULL, 'bg_title', '4', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 536, '2021-03-30 13:21:11', '2021-03-30 13:21:13'),
(541, '60649e40a3498605232116.png', 'no.png', 4061, 'image/png', NULL, NULL, 'img_rating', '1', 'KonvertAgency\\Doctors\\Models\\Rating', 1, 541, '2021-03-31 13:07:28', '2021-03-31 13:07:31'),
(561, '607f05004bb07826846598.jpg', 'logo_brand_roott.jpg', 63293, 'image/jpeg', NULL, NULL, 'img_slide', '44', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 561, '2021-04-20 16:44:48', '2021-04-20 16:44:50'),
(563, '607f053c509fb735846729.jpg', 'logo_brand_sgs.jpg', 44191, 'image/jpeg', NULL, NULL, 'img_slide', '46', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 563, '2021-04-20 16:45:48', '2021-04-20 16:45:49'),
(564, '60805e8642260917616913.jpg', 'sample_works_1.jpg', 154065, 'image/jpeg', NULL, NULL, 'img_slide', '47', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 564, '2021-04-21 17:19:02', '2021-04-21 17:19:20'),
(565, '60805ee3050c1739312623.jpg', 'sample_works_2.jpg', 196791, 'image/jpeg', NULL, NULL, 'img_slide', '48', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 565, '2021-04-21 17:20:35', '2021-04-21 17:20:40'),
(566, '60805ef8cf621914549740.jpg', 'sample_works_3.jpg', 162391, 'image/jpeg', NULL, NULL, 'img_slide', '49', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 566, '2021-04-21 17:20:56', '2021-04-21 17:21:00'),
(567, '60805f0ee7bc2940234597.jpg', 'sample_works_4.jpg', 168914, 'image/jpeg', NULL, NULL, 'img_slide', '50', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 567, '2021-04-21 17:21:18', '2021-04-21 17:21:21'),
(568, '60805fd128c80933944902.jpg', 'sample_works_5.jpg', 140181, 'image/jpeg', NULL, NULL, 'img_slide', '51', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 568, '2021-04-21 17:24:33', '2021-04-21 17:24:34'),
(571, '6080871ed16ac438607868.jpg', 'sample_works_vinir_1.jpg', 186528, 'image/jpeg', NULL, NULL, 'img_slide', '61', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 571, '2021-04-21 20:12:14', '2021-04-21 20:12:24'),
(572, '60808737587a6212671451.jpg', 'sample_works_vinir_2.jpg', 248540, 'image/jpeg', NULL, NULL, 'img_slide', '62', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 572, '2021-04-21 20:12:39', '2021-04-21 20:12:41'),
(573, '6080875f69137125735868.jpg', 'sample_works_vinir_3.jpg', 319953, 'image/jpeg', NULL, NULL, 'img_slide', '63', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 573, '2021-04-21 20:13:19', '2021-04-21 20:13:21'),
(574, '608087815feb1024336358.jpg', 'sample_works_vinir_4.jpg', 234663, 'image/jpeg', NULL, NULL, 'img_slide', '64', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 574, '2021-04-21 20:13:53', '2021-04-21 20:13:55'),
(575, '6080878f605d2137524174.jpg', 'sample_works_vinir_5.jpg', 201113, 'image/jpeg', NULL, NULL, 'img_slide', '65', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 575, '2021-04-21 20:14:07', '2021-04-21 20:14:14'),
(576, '608087a49c10c844132205.jpg', 'sample_works_vinir_6.jpg', 153012, 'image/jpeg', NULL, NULL, 'img_slide', '66', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 576, '2021-04-21 20:14:28', '2021-04-21 20:14:33'),
(577, '608087b5c5897400050110.jpg', 'sample_works_vinir_7.jpg', 224640, 'image/jpeg', NULL, NULL, 'img_slide', '67', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 577, '2021-04-21 20:14:45', '2021-04-21 20:14:48'),
(594, '6083f0afd8984282671718.jpg', 'flag-se-300x200.jpg', 4854, 'image/jpeg', NULL, NULL, 'flag', '11', 'KonvertAgency\\Doctors\\Models\\Country', 1, 594, '2021-04-24 10:19:27', '2021-04-24 10:19:32'),
(598, '6083f35c3f30f467493196.jpg', 'logo_brand_astra.jpg', 32196, 'image/jpeg', NULL, NULL, 'img_slide', '86', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 598, '2021-04-24 10:30:52', '2021-04-24 10:30:54'),
(600, '608414fab3723650705248.jpg', 'logo_brand_strauman_2.jpg', 38153, 'image/jpeg', NULL, NULL, 'img_slide', '87', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 600, '2021-04-24 12:54:18', '2021-04-24 12:55:34'),
(602, '608697c286d6d381476355.jpg', 'Fasad.jpg', 219051, 'image/jpeg', NULL, NULL, 'img_slide', '88', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 602, '2021-04-26 10:36:50', '2021-04-26 10:36:57'),
(603, '608697d87daad971554210.jpg', 'reception.jpg', 187318, 'image/jpeg', NULL, NULL, 'img_slide', '89', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 603, '2021-04-26 10:37:12', '2021-04-26 10:37:33'),
(604, '6086982d3b55b777501860.jpg', 'ceric.jpg', 238263, 'image/jpeg', NULL, NULL, 'img_slide', '90', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 604, '2021-04-26 10:38:37', '2021-04-26 10:38:48'),
(605, '608698508f1ef794726284.jpg', 'kreslo.jpg', 281034, 'image/jpeg', NULL, NULL, 'img_slide', '91', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 605, '2021-04-26 10:39:12', '2021-04-26 10:39:15'),
(606, '60869861bb39e849937891.jpg', 'mikroscop.jpg', 209528, 'image/jpeg', NULL, NULL, 'img_slide', '92', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 606, '2021-04-26 10:39:29', '2021-04-26 10:39:39'),
(608, '60882a6f5d6e0244567558.jpg', 'h1-vinirs.jpg', 118613, 'image/jpeg', NULL, NULL, 'bg_title', '7', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 608, '2021-04-27 15:14:55', '2021-04-27 15:14:58'),
(610, '608998281f200165022987.jpg', 'sample_works_brackets_1.jpg', 210402, 'image/jpeg', NULL, NULL, 'img_slide', '93', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 610, '2021-04-28 17:15:20', '2021-04-28 17:15:23'),
(611, '6089983ddbacd028056686.jpg', 'sample_works_brackets_2.jpg', 243711, 'image/jpeg', NULL, NULL, 'img_slide', '94', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 611, '2021-04-28 17:15:41', '2021-04-28 17:15:43'),
(612, '6089985045d6f385607894.jpg', 'sample_works_brackets_3.jpg', 265299, 'image/jpeg', NULL, NULL, 'img_slide', '95', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 612, '2021-04-28 17:16:00', '2021-04-28 17:16:02'),
(613, '6089986188ec3370916344.jpg', 'sample_works_brackets_4.jpg', 193402, 'image/jpeg', NULL, NULL, 'img_slide', '96', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 613, '2021-04-28 17:16:17', '2021-04-28 17:16:19'),
(614, '6089986c5b9c0937354168.jpg', 'sample_works_brackets_5.jpg', 225216, 'image/jpeg', NULL, NULL, 'img_slide', '97', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 614, '2021-04-28 17:16:28', '2021-04-28 17:16:32'),
(615, '6089987c0bb17916158404.jpg', 'sample_works_brackets_6.jpg', 194729, 'image/jpeg', NULL, NULL, 'img_slide', '98', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 615, '2021-04-28 17:16:44', '2021-04-28 17:16:45'),
(616, '60899ab90b8b5606560211.jpg', 'Виды-брекетов.jpg', 139640, 'image/jpeg', NULL, NULL, 'imgcontent', '25', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 616, '2021-04-28 17:26:17', '2021-04-28 17:26:19'),
(617, '6089a9a633693093040322.jpg', 'h1-brackets.jpg', 246159, 'image/jpeg', NULL, NULL, 'bg_title', '8', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 617, '2021-04-28 18:29:58', '2021-04-28 18:30:00'),
(622, '608a803bcc9f3836061470.jpg', 'h1-Correction-of-bite.jpg', 126024, 'image/jpeg', NULL, NULL, 'bg_title', '9', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 622, '2021-04-29 09:45:31', '2021-04-29 09:45:34'),
(625, '608ac707488cc646121158.jpg', 'h1-koronki.jpg', 116436, 'image/jpeg', NULL, NULL, 'bg_title', '10', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 625, '2021-04-29 14:47:35', '2021-04-29 14:47:36'),
(631, '608adafe14365016766831.jpg', 'sample_works_koronki_1.jpg', 216768, 'image/jpeg', NULL, NULL, 'img_slide', '136', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 631, '2021-04-29 16:12:46', '2021-04-29 16:12:51'),
(632, '608adb3726650843485260.jpg', 'sample_works_koronki_2.jpg', 216864, 'image/jpeg', NULL, NULL, 'img_slide', '137', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 632, '2021-04-29 16:13:43', '2021-04-29 16:13:47'),
(633, '608adb465a1d4694743623.jpg', 'sample_works_koronki_3.jpg', 175917, 'image/jpeg', NULL, NULL, 'img_slide', '138', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 633, '2021-04-29 16:13:58', '2021-04-29 16:13:59'),
(634, '608adb641cee4738216946.jpg', 'sample_works_koronki_4.jpg', 206081, 'image/jpeg', NULL, NULL, 'img_slide', '139', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 634, '2021-04-29 16:14:28', '2021-04-29 16:14:30'),
(635, '608adb6f8324b583723446.jpg', 'sample_works_koronki_5.jpg', 222688, 'image/jpeg', NULL, NULL, 'img_slide', '140', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 635, '2021-04-29 16:14:39', '2021-04-29 16:14:43'),
(636, '608adb7c2ddc1216396778.jpg', 'sample_works_koronki_6.jpg', 155636, 'image/jpeg', NULL, NULL, 'img_slide', '141', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 636, '2021-04-29 16:14:52', '2021-04-29 16:14:54'),
(644, '609120b7e9dbf851552125.jpg', 'sample_works_lechenie_zubov_1.jpg', 159122, 'image/jpeg', NULL, NULL, 'img_slide', '146', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 644, '2021-05-04 10:23:51', '2021-05-04 10:23:55'),
(645, '609120c7363eb279344560.jpg', 'sample_works_lechenie_zubov_2.jpg', 157427, 'image/jpeg', NULL, NULL, 'img_slide', '147', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 645, '2021-05-04 10:24:07', '2021-05-04 10:24:10'),
(646, '609120d35edf8009937925.jpg', 'sample_works_lechenie_zubov_3.jpg', 222673, 'image/jpeg', NULL, NULL, 'img_slide', '148', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 646, '2021-05-04 10:24:19', '2021-05-04 10:24:24'),
(647, '609120e2ee176973567741.jpg', 'sample_works_lechenie_zubov_4.jpg', 183547, 'image/jpeg', NULL, NULL, 'img_slide', '149', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 647, '2021-05-04 10:24:34', '2021-05-04 10:24:39'),
(648, '609120f0735c5721913332.jpg', 'sample_works_lechenie_zubov_5.jpg', 155719, 'image/jpeg', NULL, NULL, 'img_slide', '150', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 648, '2021-05-04 10:24:48', '2021-05-04 10:24:52'),
(649, '609120fe70200076484804.jpg', 'sample_works_lechenie_zubov_6.jpg', 188050, 'image/jpeg', NULL, NULL, 'img_slide', '151', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 649, '2021-05-04 10:25:02', '2021-05-04 10:25:04'),
(653, '6092645a1cd48825592675.jpg', 'h1-caries.jpg', 80366, 'image/jpeg', NULL, NULL, 'bg_title', '12', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 653, '2021-05-05 09:24:42', '2021-05-05 09:24:43'),
(656, '609278713c02f416009689.jpg', 'sample_works_lechenie_kariesa_1.jpg', 275725, 'image/jpeg', NULL, NULL, 'img_slide', '188', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 656, '2021-05-05 10:50:25', '2021-05-05 10:50:53'),
(657, '609278aa15099419255582.jpg', 'sample_works_lechenie_kariesa_2.jpg', 190017, 'image/jpeg', NULL, NULL, 'img_slide', '189', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 657, '2021-05-05 10:51:22', '2021-05-05 10:51:23'),
(658, '609278b55e829773338385.jpg', 'sample_works_lechenie_kariesa_3.jpg', 179722, 'image/jpeg', NULL, NULL, 'img_slide', '190', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 658, '2021-05-05 10:51:33', '2021-05-05 10:51:40'),
(659, '609278d066dc4290559190.jpg', 'sample_works_lechenie_kariesa_4.jpg', 174164, 'image/jpeg', NULL, NULL, 'img_slide', '191', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 659, '2021-05-05 10:52:00', '2021-05-05 10:52:08'),
(660, '609278e2ebd3e314833751.jpg', 'sample_works_lechenie_kariesa_5.jpg', 164140, 'image/jpeg', NULL, NULL, 'img_slide', '192', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 660, '2021-05-05 10:52:18', '2021-05-05 10:52:24'),
(661, '60929632adba0932438018.jpg', 'h1-pulpitis-treatment.jpg', 93727, 'image/jpeg', NULL, NULL, 'bg_title', '13', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 661, '2021-05-05 12:57:22', '2021-05-05 12:57:26'),
(663, '6092a4d715cf2827751715.jpg', 'sample_works_lechenie_pulpita_1.jpg', 205436, 'image/jpeg', NULL, NULL, 'img_slide', '205', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 663, '2021-05-05 13:59:51', '2021-05-05 14:00:02'),
(665, '6092b0fd2656c375846446.jpg', 'h1-dental-cleaning.jpg', 112192, 'image/jpeg', NULL, NULL, 'bg_title', '14', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 665, '2021-05-05 14:51:41', '2021-05-05 14:51:43'),
(667, '6092bf062dc6b269807132.jpg', 'sample_works_clear_1.jpg', 261799, 'image/jpeg', NULL, NULL, 'img_slide', '206', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 667, '2021-05-05 15:51:34', '2021-05-05 15:51:45'),
(668, '6092bf5bd41d9928410364.jpg', 'sample_works_clear_2.jpg', 256706, 'image/jpeg', NULL, NULL, 'img_slide', '207', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 668, '2021-05-05 15:52:59', '2021-05-05 15:53:03'),
(669, '6092bf6f512e7180392941.jpg', 'sample_works_clear_4.jpg', 230029, 'image/jpeg', NULL, NULL, 'img_slide', '209', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 669, '2021-05-05 15:53:19', '2021-05-05 15:53:22'),
(670, '6092bf7ccafcd023564711.jpg', 'sample_works_clear_5.jpg', 205329, 'image/jpeg', NULL, NULL, 'img_slide', '210', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 670, '2021-05-05 15:53:32', '2021-05-05 15:53:34'),
(671, '6092bf9d13373049872254.jpg', 'sample_works_clear_3.jpg', 221575, 'image/jpeg', NULL, NULL, 'img_slide', '208', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 671, '2021-05-05 15:54:05', '2021-05-05 15:54:06'),
(682, '6093babbdf8f4203188202.jpg', 'h1-lechenie-zubov.jpg', 145846, 'image/jpeg', NULL, NULL, 'bg_title', '2', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 682, '2021-05-06 09:45:31', '2021-05-06 09:45:32'),
(689, '6093d6e688e0c853879134.jpg', 'h1-protezirovanie.jpg', 76026, 'image/jpeg', NULL, NULL, 'bg_title', '16', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 689, '2021-05-06 11:45:42', '2021-05-06 11:46:04'),
(691, '6093d9fb43860317980849.jpg', 'h1-removable-protezirovanie.jpg', 110338, 'image/jpeg', NULL, NULL, 'bg_title', '17', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 691, '2021-05-06 11:58:51', '2021-05-06 11:58:55'),
(698, '60950478bd8a1209594258.jpg', 'sample_works_restavraciya_1.jpg', 272596, 'image/jpeg', NULL, NULL, 'img_slide', '256', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 698, '2021-05-07 09:12:24', '2021-05-07 09:12:26'),
(699, '609504840ab1c094711002.jpg', 'sample_works_restavraciya_2.jpg', 200107, 'image/jpeg', NULL, NULL, 'img_slide', '257', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 699, '2021-05-07 09:12:36', '2021-05-07 09:12:41'),
(700, '6095049147886575448700.jpg', 'sample_works_restavraciya_3.jpg', 166151, 'image/jpeg', NULL, NULL, 'img_slide', '258', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 700, '2021-05-07 09:12:49', '2021-05-07 09:12:54'),
(701, '609504a055b3e574588389.jpg', 'sample_works_restavraciya_4.jpg', 164346, 'image/jpeg', NULL, NULL, 'img_slide', '259', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 701, '2021-05-07 09:13:04', '2021-05-07 09:13:06'),
(704, '609520ce3fa59803791625.jpg', 'h1-restavraciya.jpg', 114628, 'image/jpeg', NULL, NULL, 'bg_title', '18', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 704, '2021-05-07 11:13:18', '2021-05-07 11:13:22'),
(707, '6095301d95ea7536291921.jpg', 'h1-udalenie-zuba2.jpg', 225878, 'image/jpeg', NULL, NULL, 'bg_title', '15', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 707, '2021-05-07 12:18:37', '2021-05-07 12:18:39'),
(710, '60953f593a9a5127978822.jpg', 'h1-tomografiya.jpg', 101603, 'image/jpeg', NULL, NULL, 'bg_title', '19', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 710, '2021-05-07 13:23:37', '2021-05-07 13:23:39'),
(713, '60b604d5478e1565938427.svg', 'favicon2.svg', 39900, 'image/svg+xml', NULL, NULL, 'favicon', '2', 'Backend\\Models\\BrandSetting', 1, 713, '2021-06-01 09:58:45', '2021-06-01 09:58:55'),
(742, '60d309ddb981f829526420.jpg', '02.jpg', 816722, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 742, '2021-06-23 10:15:57', '2021-06-23 10:16:07'),
(743, '60d309de3f5d8563497089.jpg', '01.jpg', 2224606, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 743, '2021-06-23 10:15:58', '2021-06-23 10:16:07'),
(744, '60d309df0fb51701015820.jpg', '03.jpg', 490618, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 744, '2021-06-23 10:15:59', '2021-06-23 10:16:07'),
(745, '60d309df3c18a638946161.jpg', '04.jpg', 700978, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 745, '2021-06-23 10:15:59', '2021-06-23 10:16:07'),
(746, '60d309e01c469369355988.jpg', '05.jpg', 176881, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 746, '2021-06-23 10:16:00', '2021-06-23 10:16:07'),
(747, '60d309e04c4f5175540248.jpg', '06.jpg', 162218, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 747, '2021-06-23 10:16:00', '2021-06-23 10:16:07'),
(748, '60d309e093925198587636.jpg', '07.jpg', 107655, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 748, '2021-06-23 10:16:00', '2021-06-23 10:16:07'),
(749, '60d309e0b6b8f647124974.jpg', '08.jpg', 128314, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 749, '2021-06-23 10:16:00', '2021-06-23 10:16:07'),
(750, '60d309e107cc2674654082.jpg', '09.jpg', 196777, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 750, '2021-06-23 10:16:01', '2021-06-23 10:16:07'),
(751, '60d309e12c014388227949.jpg', '10.jpg', 159235, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 751, '2021-06-23 10:16:01', '2021-06-23 10:16:07'),
(752, '60d309e17c5b2328749874.jpg', '11.jpg', 134672, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 752, '2021-06-23 10:16:01', '2021-06-23 10:16:07'),
(753, '60d309e19d38f438040172.jpg', '12.jpg', 114247, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 753, '2021-06-23 10:16:01', '2021-06-23 10:16:07'),
(754, '60d309e1e664f176620324.jpg', '13.jpg', 79531, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 754, '2021-06-23 10:16:01', '2021-06-23 10:16:07'),
(755, '60d309e216601233614959.jpg', '14.jpg', 113518, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 755, '2021-06-23 10:16:02', '2021-06-23 10:16:07'),
(756, '60d309e261b14625235243.jpg', '15.jpg', 85812, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 756, '2021-06-23 10:16:02', '2021-06-23 10:16:07'),
(757, '60d309e27df98728252298.jpg', '16.jpg', 169240, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 757, '2021-06-23 10:16:02', '2021-06-23 10:16:07'),
(758, '60d309e2d9c80207690858.jpg', '17.jpg', 74269, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 758, '2021-06-23 10:16:02', '2021-06-23 10:16:07'),
(759, '60d309e2e6fb3076763179.jpg', '18.jpg', 93174, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 759, '2021-06-23 10:16:02', '2021-06-23 10:16:07'),
(760, '60d309e3585bc181615760.jpg', '19.jpg', 105690, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 760, '2021-06-23 10:16:03', '2021-06-23 10:16:07'),
(761, '60d309e36818b792209153.jpg', '20.jpg', 110649, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 761, '2021-06-23 10:16:03', '2021-06-23 10:16:07'),
(762, '60d309e3c13e9201980708.jpg', '21.jpg', 167285, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 762, '2021-06-23 10:16:03', '2021-06-23 10:16:07'),
(763, '60d309e3ce3d0872829044.jpg', '22.jpg', 92784, 'image/jpeg', NULL, NULL, 'certificates', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 763, '2021-06-23 10:16:03', '2021-06-23 10:16:07'),
(765, '60d3110d0aa83695252337.jpg', 'Керейтова 001.jpg', 593328, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 765, '2021-06-23 10:46:37', '2021-06-23 10:46:40'),
(766, '60d3110d411bf878390959.jpg', '02.jpg', 773390, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 766, '2021-06-23 10:46:37', '2021-06-23 10:46:40'),
(767, '60d3116809f9f540389505.jpg', 'Керейтова 002.jpg', 1068348, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 767, '2021-06-23 10:48:08', '2021-06-23 10:48:18'),
(768, '60d311680fb1a875340074.jpg', 'Керейтова 003.jpg', 386640, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 768, '2021-06-23 10:48:08', '2021-06-23 10:48:18'),
(769, '60d31168effa1475208144.jpg', 'Керейтова 004.jpg', 830980, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 769, '2021-06-23 10:48:08', '2021-06-23 10:48:18'),
(770, '60d31168ef78f509600809.jpg', 'Керейтова 005.jpg', 1405000, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 770, '2021-06-23 10:48:08', '2021-06-23 10:48:18'),
(771, '60d31169dc1f9405380589.jpg', 'Керейтова 006.jpg', 1334757, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 771, '2021-06-23 10:48:09', '2021-06-23 10:48:18'),
(772, '60d31169e9963603470086.jpg', 'Керейтова 007.jpg', 984368, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 772, '2021-06-23 10:48:09', '2021-06-23 10:48:18'),
(773, '60d3116ac771b121517290.jpg', 'Керейтова 009.jpg', 722971, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 773, '2021-06-23 10:48:10', '2021-06-23 10:48:18'),
(774, '60d3116ac8b65397815058.jpg', 'Керейтова 008.jpg', 1329373, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 774, '2021-06-23 10:48:10', '2021-06-23 10:48:18'),
(775, '60d3116b93f3d907063133.jpg', 'Керейтова 010.jpg', 416910, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 775, '2021-06-23 10:48:11', '2021-06-23 10:48:18'),
(776, '60d3116b9caf3047694671.jpg', 'Керейтова 011.jpg', 863923, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 776, '2021-06-23 10:48:11', '2021-06-23 10:48:18'),
(777, '60d3116c70e46406090911.jpg', 'Керейтова 014.jpg', 1264687, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 777, '2021-06-23 10:48:12', '2021-06-23 10:48:18'),
(778, '60d3116c70eba032555761.jpg', 'Керейтова 015.jpg', 1636639, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 778, '2021-06-23 10:48:12', '2021-06-23 10:48:18'),
(779, '60d3116d4b323056026188.jpg', 'Керейтова 016.jpg', 1705160, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 779, '2021-06-23 10:48:13', '2021-06-23 10:48:18'),
(780, '60d3116d53858463034562.jpg', 'Керейтова 017.jpg', 1767425, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 780, '2021-06-23 10:48:13', '2021-06-23 10:48:18'),
(781, '60d3116e28a95680580710.jpg', 'Керейтова 018.jpg', 1303944, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 781, '2021-06-23 10:48:14', '2021-06-23 10:48:18'),
(782, '60d3116e300d0341255811.jpg', 'Керейтова 019.jpg', 577418, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 782, '2021-06-23 10:48:14', '2021-06-23 10:48:18'),
(783, '60d3116ef22cd161360143.jpg', 'Керейтова 020.jpg', 1533241, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 783, '2021-06-23 10:48:14', '2021-06-23 10:48:18'),
(785, '60d3156feeea1683295410.jpg', 'Kirizeli 1.jpg', 314933, 'image/jpeg', NULL, NULL, 'certificates', '16', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 785, '2021-06-23 11:05:19', '2021-06-23 11:08:16'),
(786, '60d31570545e1516450836.jpg', 'Kirizeli 2.jpg', 230020, 'image/jpeg', NULL, NULL, 'certificates', '16', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 786, '2021-06-23 11:05:20', '2021-06-23 11:08:16'),
(787, '60d31570be43d197313534.jpg', 'Kirizeli 4.jpg', 114925, 'image/jpeg', NULL, NULL, 'certificates', '16', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 787, '2021-06-23 11:05:20', '2021-06-23 11:08:16'),
(788, '60d315717dac3760688424.jpg', 'Kirizeli 3.jpg', 120490, 'image/jpeg', NULL, NULL, 'certificates', '16', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 788, '2021-06-23 11:05:21', '2021-06-23 11:08:16'),
(790, '60d31902d4757698837399.jpg', '03.jpg', 739291, 'image/jpeg', NULL, NULL, 'certificates', '17', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 790, '2021-06-23 11:20:34', '2021-06-23 11:20:43'),
(792, '60d31aa9b7a19994358054.jpeg', 'WhatsApp Image 2021-05-10 at 16.50.14 (2).jpeg', 128657, 'image/jpeg', NULL, NULL, 'certificates', '18', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 792, '2021-06-23 11:27:37', '2021-06-23 11:27:41'),
(793, '60d31aa9b916e254548394.jpeg', 'WhatsApp Image 2021-05-10 at 16.50.14 (1).jpeg', 271800, 'image/jpeg', NULL, NULL, 'certificates', '18', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 793, '2021-06-23 11:27:37', '2021-06-23 11:27:41'),
(794, '60d31aaa80bb3034301622.jpeg', 'WhatsApp Image 2021-05-10 at 16.50.14.jpeg', 238996, 'image/jpeg', NULL, NULL, 'certificates', '18', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 794, '2021-06-23 11:27:38', '2021-06-23 11:27:41'),
(795, '60d31aaa80f79080802610.jpeg', 'WhatsApp Image 2021-05-10 at 16.50.15.jpeg', 173660, 'image/jpeg', NULL, NULL, 'certificates', '18', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 795, '2021-06-23 11:27:38', '2021-06-23 11:27:41'),
(797, '60d31ba696e2f746471669.jpg', '294b3673c59dbb3451964d047f2f6f0d.jpg', 1523636, 'image/jpeg', NULL, NULL, 'certificates', '19', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 797, '2021-06-23 11:31:50', '2021-06-23 11:31:55'),
(798, '60d31ba69798a743832128.jpg', '9d3438896e045258c30c91067250b63c.jpg', 1983431, 'image/jpeg', NULL, NULL, 'certificates', '19', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 798, '2021-06-23 11:31:50', '2021-06-23 11:31:55'),
(799, '60d31ba7cf783310938741.jpg', '321c0e947aeac2bd4fed32edbf2f3353.jpg', 946780, 'image/jpeg', NULL, NULL, 'certificates', '19', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 799, '2021-06-23 11:31:51', '2021-06-23 11:31:55'),
(800, '60d31ba7d5979605849626.jpg', '701ddc649a07c25836fb9564c8cd806a.jpg', 3160988, 'image/jpeg', NULL, NULL, 'certificates', '19', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 800, '2021-06-23 11:31:51', '2021-06-23 11:31:55'),
(801, '60d31ba8c19fe474635034.jpg', '899f584da6d035c47ad48fcbc8152a67.jpg', 2350674, 'image/jpeg', NULL, NULL, 'certificates', '19', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 801, '2021-06-23 11:31:52', '2021-06-23 11:31:55'),
(802, '60d31ba8cd903625874352.jpg', 'ef02059c4c2de8919709372fc424c80d.jpg', 1096923, 'image/jpeg', NULL, NULL, 'certificates', '19', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 802, '2021-06-23 11:31:52', '2021-06-23 11:31:55'),
(804, '60d31d780df13161724900.jpg', '2e76205b-1dba-4bb1-818d-252a57a517f4.jpg', 54625, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 1, '2021-06-23 11:39:36', '2021-06-23 11:43:01'),
(808, '60d31d78ec7f5029454698.jpg', '00199d4f-a8fa-4943-acd2-81b6048b7687.jpg', 74889, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 2, '2021-06-23 11:39:36', '2021-06-23 11:43:01'),
(809, '60d31d79486e1779398040.jpg', '562e01a9-58b6-4253-848b-252051ba2697.jpg', 88886, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 4, '2021-06-23 11:39:37', '2021-06-23 11:43:01'),
(811, '60d31d79b1031821337711.jpg', '895898f4-55aa-44ba-9908-26109d754e4a.jpg', 98574, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 5, '2021-06-23 11:39:37', '2021-06-23 11:43:01'),
(812, '60d31d79dbc36163818703.jpg', '02356752-1ee6-492d-8d67-71db5c18e13a.jpg', 95924, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 6, '2021-06-23 11:39:37', '2021-06-23 11:43:01'),
(813, '60d31d7a258e3415274827.jpg', '98026141-5c74-4541-8126-61612ccd2188.jpg', 105214, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 7, '2021-06-23 11:39:38', '2021-06-23 11:43:01'),
(814, '60d31d7a4cdd4217165086.jpg', 'b4c4817c-0c39-4a81-aa02-9227fc4316ee.jpg', 78826, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 8, '2021-06-23 11:39:38', '2021-06-23 11:43:01'),
(816, '60d31d7ab449f337578733.jpg', 'c1e56285-f450-474d-8c67-64f12ab61358.jpg', 85025, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 9, '2021-06-23 11:39:38', '2021-06-23 11:43:01'),
(817, '60d31d7b0210f794455207.jpg', 'c3fac7cc-d224-425d-933f-1853fa789675.jpg', 86669, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 10, '2021-06-23 11:39:39', '2021-06-23 11:43:01'),
(818, '60d31d7b254ce325141192.jpg', 'df8adc71-f605-4174-b652-50489438428c.jpg', 81207, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 3, '2021-06-23 11:39:39', '2021-06-23 11:43:01'),
(819, '60d31d7b6405f215719097.jpg', 'f10c9860-3d34-4deb-b981-9006ac3560d7.jpg', 69440, 'image/jpeg', NULL, NULL, 'certificates', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 11, '2021-06-23 11:39:39', '2021-06-23 11:43:01'),
(821, '60d31e5f5b738143423968.jpg', '07.jpg', 736525, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 821, '2021-06-23 11:43:27', '2021-06-23 11:43:51'),
(822, '60d31e606c90e121221098.jpg', '08.jpg', 140241, 'image/jpeg', NULL, NULL, 'certificates', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 822, '2021-06-23 11:43:28', '2021-06-23 11:43:52'),
(824, '60d31f020aa46005441075.jpg', '0001.jpg', 347690, 'image/jpeg', NULL, NULL, 'certificates', '21', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 3, '2021-06-23 11:46:10', '2021-06-23 11:46:53'),
(825, '60d31f0256ff0146701086.jpg', 'IMG_20210528_0005.jpg', 9310814, 'image/jpeg', NULL, NULL, 'certificates', '21', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 4, '2021-06-23 11:46:10', '2021-06-23 11:46:53'),
(826, '60d31f0320427686384099.jpg', 'IMG_20210528_0006.jpg', 8024739, 'image/jpeg', NULL, NULL, 'certificates', '21', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 1, '2021-06-23 11:46:11', '2021-06-23 11:46:53'),
(827, '60d31f03a44c7177469953.jpg', 'IMG_20210528_0007.jpg', 1323014, 'image/jpeg', NULL, NULL, 'certificates', '21', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 5, '2021-06-23 11:46:11', '2021-06-23 11:46:53'),
(828, '60d31f044ed91796455660.jpg', 'IMG_20210528_0008.jpg', 5692189, 'image/jpeg', NULL, NULL, 'certificates', '21', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 2, '2021-06-23 11:46:12', '2021-06-23 11:46:53'),
(830, '60d32092c3d0d737665197.jpg', '03.jpg', 177023, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 2, '2021-06-23 11:52:50', '2021-06-23 11:53:14'),
(831, '60d32092c4f0f880994906.jpg', '04.jpg', 253162, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 3, '2021-06-23 11:52:50', '2021-06-23 11:53:14'),
(832, '60d320934ad57544263930.jpg', '06.jpg', 127329, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 5, '2021-06-23 11:52:51', '2021-06-23 11:53:14'),
(833, '60d320934af49860856781.jpg', '05.jpg', 295536, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 4, '2021-06-23 11:52:51', '2021-06-23 11:53:14'),
(834, '60d32093bb3ec023295221.jpg', '07.jpg', 185740, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 6, '2021-06-23 11:52:51', '2021-06-23 11:53:14'),
(835, '60d32093bbb9e333884607.jpg', '08.jpg', 172909, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 7, '2021-06-23 11:52:51', '2021-06-23 11:53:14'),
(836, '60d3209431fb8714208912.jpg', '09.jpg', 241814, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 8, '2021-06-23 11:52:52', '2021-06-23 11:53:14'),
(837, '60d3209431c2a507328264.jpg', '10.jpg', 372131, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 9, '2021-06-23 11:52:52', '2021-06-23 11:53:14'),
(838, '60d320949fe65263132974.jpg', '11.jpg', 396242, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 10, '2021-06-23 11:52:52', '2021-06-23 11:53:14'),
(839, '60d32094ab606038178655.jpg', 'IMG_20210604_0021.jpg', 7005796, 'image/jpeg', NULL, NULL, 'certificates', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 1, '2021-06-23 11:52:52', '2021-06-23 11:53:14'),
(841, '60d3346722c07833006967.png', 'logo-ya.png', 28172, 'image/png', NULL, NULL, 'img_rating', '3', 'KonvertAgency\\Doctors\\Models\\Rating', 1, 841, '2021-06-23 13:17:27', '2021-06-23 13:17:28'),
(843, '60d334b1abc7b957292097.png', 'logo-google.png', 26863, 'image/png', NULL, NULL, 'img_rating', '2', 'KonvertAgency\\Doctors\\Models\\Rating', 1, 843, '2021-06-23 13:18:41', '2021-06-23 13:18:43'),
(845, '60d3369967a70504965749.png', 'logo-2gis.png', 37671, 'image/png', NULL, NULL, 'img_rating', '7', 'KonvertAgency\\Doctors\\Models\\Rating', 1, 845, '2021-06-23 13:26:49', '2021-06-23 13:26:52'),
(846, '60d336acaa0e3507926781.png', 'logo-prodoctorov.png', 32907, 'image/png', NULL, NULL, 'img_rating', '4', 'KonvertAgency\\Doctors\\Models\\Rating', 1, 846, '2021-06-23 13:27:08', '2021-06-23 13:27:10'),
(850, '60d5d865e73c1436004059.jpg', '1.jpg', 27086, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 850, '2021-06-25 13:21:41', '2021-06-25 13:21:41'),
(852, '60d5d91add000822661433.jpg', '1.jpg', 27086, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 852, '2021-06-25 13:24:42', '2021-06-25 13:24:42'),
(857, '60d5dc79bba6d215059683.jpg', '1.jpg', 27086, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 857, '2021-06-25 13:39:05', '2021-06-25 13:39:05'),
(861, '60d5e1615709d099377963.jpg', '1.jpg', 27086, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 861, '2021-06-25 14:00:01', '2021-06-25 14:00:01'),
(862, '60d5e174a7de5554263234.jpg', '1.jpg', 27086, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 862, '2021-06-25 14:00:20', '2021-06-25 14:00:20'),
(863, '60d5e491aff41320094592.jpg', '1.jpg', 27086, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 863, '2021-06-25 14:13:37', '2021-06-25 14:13:37'),
(864, '60d5e5cac9006746774144.jpg', '1.jpg', 27086, 'image/jpeg', NULL, NULL, NULL, NULL, NULL, 1, 864, '2021-06-25 14:18:50', '2021-06-25 14:18:50'),
(867, '60d5fa6a4bdf8614477660.jpg', '607ab78335ba3598454904.jpg', 167257, 'image/jpeg', NULL, NULL, 'bg_title', '5', 'KonvertAgency\\Doctors\\Models\\TitlePage', 1, 867, '2021-06-25 15:46:50', '2021-06-25 15:46:52'),
(869, '60d9e4896e0d3996601259.jpg', 'braces-dental.jpg', 88280, 'image/jpeg', NULL, NULL, 'imgcontent', '21', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 869, '2021-06-28 15:02:33', '2021-06-28 15:02:36'),
(872, '60daee5072576874223289.jpg', 'vinir new-smile-min.jpg', 676851, 'image/jpeg', NULL, NULL, 'imgcontent', '15', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 872, '2021-06-29 09:56:32', '2021-06-29 09:56:35'),
(873, '60daeec3e44dc229117477.jpg', 'vinir-Surf-City-Dental-crown-vs-filling-vs-implant-1.27-cut.jpg', 96697, 'image/jpeg', NULL, NULL, 'imgcontent', '16', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 873, '2021-06-29 09:58:27', '2021-06-29 09:58:29'),
(874, '60dafaa1521f6612622523.jpg', 'component-dental-implants-copy-space-blue-color-transparent-3d-illustrations-cut.jpg', 117603, 'image/jpeg', NULL, NULL, 'imgcontent', '7', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 874, '2021-06-29 10:49:05', '2021-06-29 10:49:07'),
(875, '60db01889b152993012386.jpg', 'ispravlenie-prikusa-cut.jpg', 180248, 'image/jpeg', NULL, NULL, 'imgcontent', '29', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 875, '2021-06-29 11:18:32', '2021-06-29 11:18:34'),
(876, '60db18e5d887a150989548.jpg', 'ispravlenie-prikusa-2.jpg', 145651, 'image/jpeg', NULL, NULL, 'imgcontent', '31', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 876, '2021-06-29 12:58:13', '2021-06-29 12:58:16'),
(879, '60db2aa1b51f2686222329.jpg', 'e.max-crowns.jpg', 83915, 'image/jpeg', NULL, NULL, 'imgcontent', '34', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 879, '2021-06-29 14:13:53', '2021-06-29 14:13:55'),
(881, '60db366733546584612080.jpg', 'sirona-1.jpg', 89834, 'image/jpeg', NULL, NULL, 'imgcontent', '37', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 881, '2021-06-29 15:04:07', '2021-06-29 15:04:09'),
(882, '60dc3dd7d578e961803287.jpg', 'parod1_1.jpg', 114088, 'image/jpeg', NULL, NULL, 'imgcontent', '2', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 882, '2021-06-30 09:48:07', '2021-06-30 09:48:10'),
(883, '60dc3e2b9cc90393886488.jpg', 'лечение десен 1.jpg', 29945, 'image/jpeg', NULL, NULL, 'imgcontent', '3', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 883, '2021-06-30 09:49:31', '2021-06-30 09:49:35'),
(887, '60dc72a300c3b573969457.jpg', 'dentist.jpg', 154258, 'image/jpeg', NULL, NULL, 'imgcontent', '40', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 887, '2021-06-30 13:33:23', '2021-06-30 13:33:25'),
(888, '60dc72b57b45b016188486.jpg', 'dentist-2.jpg', 626472, 'image/jpeg', NULL, NULL, 'imgcontent', '42', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 888, '2021-06-30 13:33:41', '2021-06-30 13:33:43'),
(889, '60dc745dab1db052905737.jpg', 'karies.jpg', 104884, 'image/jpeg', NULL, NULL, 'imgcontent', '51', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 889, '2021-06-30 13:40:45', '2021-06-30 13:40:47'),
(890, '60dc7654ab69b334653399.jpg', 'pulpit -789-rezekciya-porcelain-4-min.jpg', 415826, 'image/jpeg', NULL, NULL, 'imgcontent', '55', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 890, '2021-06-30 13:49:08', '2021-06-30 13:49:12'),
(891, '60dc78f4abdb2382201331.jpg', 'Виды протезирования.jpg', 100284, 'image/jpeg', NULL, NULL, 'imgcontent', '70', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 891, '2021-06-30 14:00:20', '2021-06-30 14:00:22'),
(892, '60dc7932970f9948999709.jpg', 'sirona-1.jpg', 89834, 'image/jpeg', NULL, NULL, 'imgcontent', '72', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 892, '2021-06-30 14:01:22', '2021-06-30 14:01:40'),
(894, '60dc7c45e7534720583499.jpg', 'semnye-protezy1.jpg', 346909, 'image/jpeg', NULL, NULL, 'imgcontent', '75', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 894, '2021-06-30 14:14:29', '2021-06-30 14:14:31'),
(895, '60dc931eabae9732139932.jpg', 'protezirovanie_zubov_photo_1.jpg', 84811, 'image/jpeg', NULL, NULL, 'imgcontent', '76', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 895, '2021-06-30 15:51:58', '2021-06-30 15:52:28'),
(896, '60dc93deab3eb137668473.jpg', 'Комплект-Primescan-MC-XL.jpg', 172943, 'image/jpeg', NULL, NULL, 'imgcontent', '77', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 896, '2021-06-30 15:55:10', '2021-06-30 15:55:12'),
(897, '60dc972a85e1e977399073.jpg', 'Профгигиена полости рта.jpg', 61613, 'image/jpeg', NULL, NULL, 'imgcontent', '61', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 897, '2021-06-30 16:09:14', '2021-06-30 16:09:17'),
(898, '60dc9d3566b3a351170398.jpg', 'Методика-прямой-реставрации-cut.jpg', 184777, 'image/jpeg', NULL, NULL, 'imgcontent', '89', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 898, '2021-06-30 16:35:01', '2021-06-30 16:35:02'),
(899, '60dc9d92c6fe1633967046.jpg', 'вкладки.jpg', 263321, 'image/jpeg', NULL, NULL, 'imgcontent', '91', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 899, '2021-06-30 16:36:34', '2021-06-30 16:36:36'),
(902, '60dd8f2588b9a541861702.jpg', 'Виды-съемного-протезирования.jpg', 67817, 'image/jpeg', NULL, NULL, 'imgcontent', '82', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 902, '2021-07-01 09:47:17', '2021-07-01 09:47:19'),
(903, '60dd8f8d3b8b4208708776.jpg', 'crowns.jpg', 55582, 'image/jpeg', NULL, NULL, 'imgcontent', '36', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 903, '2021-07-01 09:49:01', '2021-07-01 09:49:03'),
(905, '60dd969041293839520359.jpeg', 'can-wisdom-teeth-cause-tmj-1536x1024.jpeg', 94332, 'image/jpeg', NULL, NULL, 'imgcontent', '65', 'KonvertAgency\\Doctors\\Models\\ContentPage', 1, 905, '2021-07-01 10:18:56', '2021-07-01 10:18:59'),
(906, '60ded3d557625476101850.jpg', 'IMG_20210218_0001.jpg', 3045543, 'image/jpeg', NULL, NULL, 'img_slide', '273', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 906, '2021-07-02 08:52:37', '2021-07-02 08:52:42'),
(907, '60ded41631b7d524258166.jpg', 'IMG_20210218_0002.jpg', 1696872, 'image/jpeg', NULL, NULL, 'img_slide', '274', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 907, '2021-07-02 08:53:42', '2021-07-02 08:53:53'),
(908, '60ded427edc89309976365.jpg', 'IMG_20210218_0003.jpg', 2774826, 'image/jpeg', NULL, NULL, 'img_slide', '275', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 908, '2021-07-02 08:53:59', '2021-07-02 08:54:16'),
(909, '60ded43fcb327617655446.jpg', 'IMG_20210218_0006.jpg', 922431, 'image/jpeg', NULL, NULL, 'img_slide', '276', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 909, '2021-07-02 08:54:23', '2021-07-02 08:54:36'),
(910, '60ec4a9d85f04867652460.png', 'logo-zoon.png', 23742, 'image/png', NULL, NULL, 'img_rating', '8', 'KonvertAgency\\Doctors\\Models\\Rating', 1, 910, '2021-07-12 13:58:53', '2021-07-12 13:58:55'),
(911, '60ec4bc89826e939018682.png', 'logo-yell.png', 19729, 'image/png', NULL, NULL, 'img_rating', '9', 'KonvertAgency\\Doctors\\Models\\Rating', 1, 911, '2021-07-12 14:03:52', '2021-07-12 14:03:54'),
(919, '60f054828f880854127979.jpg', 'logo_brand_dentium.jpg', 34301, 'image/jpeg', NULL, NULL, 'img_slide', '278', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 919, '2021-07-15 15:30:10', '2021-07-15 15:32:12'),
(920, '60f055f0147cf947224200.jpg', 'logo_brand_nobel_2.jpg', 49611, 'image/jpeg', NULL, NULL, 'img_slide', '279', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 920, '2021-07-15 15:36:16', '2021-07-15 15:36:17'),
(921, '60f056719188d401289123.jpg', 'logo_brand_mis_2.jpg', 37670, 'image/jpeg', NULL, NULL, 'img_slide', '280', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 921, '2021-07-15 15:38:25', '2021-07-15 15:39:22'),
(923, '60f81ea95e8f0332195247.jpg', 'photo_person_Kereiytova_Natalia_Vladimirovna.jpg', 38176, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '15', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 923, '2021-07-21 13:18:33', '2021-07-21 13:18:36'),
(924, '60f81f0837771230239562.jpg', 'photo_person_Kirizeli_Elina_Sergeevnai.jpg', 43604, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '16', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 924, '2021-07-21 13:20:08', '2021-07-21 13:20:11'),
(925, '60f81f56736f6725486689.jpg', 'photo_person_Eremenko_Aleksey_Alekseevich.jpg', 42244, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '14', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 925, '2021-07-21 13:21:26', '2021-07-21 13:21:28'),
(926, '60f81f86a6d04625379157.jpg', 'photo_person_Eremenko_Iraida_Leonidovna.jpg', 36681, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '17', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 926, '2021-07-21 13:22:14', '2021-07-21 13:22:17'),
(927, '60f820a45f08f236799538.jpg', 'photo_person_Hiblashvili_Natalia_Guramovn.jpg', 44186, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '18', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 927, '2021-07-21 13:27:00', '2021-07-21 13:27:03'),
(928, '60f820b4f15df556376618.jpg', 'photo_person_Nikulushkin_Anton_Artamonovich.jpg', 32138, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '19', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 928, '2021-07-21 13:27:16', '2021-07-21 13:27:19'),
(930, '60f820dc02ece513312669.jpg', 'photo_person_Borlakov_Shamil_Rashidovich.jpg', 55627, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '21', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 930, '2021-07-21 13:27:56', '2021-07-21 13:27:58'),
(932, '60f82278e59f7629659259.jpg', 'photo_person_Seljutina_Darja_Sergeevna.jpg', 38571, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '23', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 932, '2021-07-21 13:34:48', '2021-07-21 13:35:42'),
(933, '60f822c16a487326249375.jpg', 'photo_person_Vishnivetskaja_Julija_Igorevna.jpg', 42770, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '24', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 933, '2021-07-21 13:36:01', '2021-07-21 13:37:05'),
(934, '60f8241eec907061596790.jpg', 'photo_person_Kibizova_Sophia_Vitalevna.jpg', 47997, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '20', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 934, '2021-07-21 13:41:50', '2021-07-21 13:42:04');
INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(935, '60f825c2deeba482966715.jpg', 'photo_person_Davydova_Nelli_Olegovna.jpg', 44797, 'image/jpeg', NULL, NULL, 'PhotoDoctor', '22', 'KonvertAgency\\Doctors\\Models\\Doctor', 1, 935, '2021-07-21 13:48:50', '2021-07-21 13:48:53'),
(936, '617400c873e74461480229.svg', 'logo_medstudio.svg', 4361, 'image/svg+xml', NULL, NULL, 'logo', '2', 'Backend\\Models\\BrandSetting', 1, 936, '2021-10-23 09:32:08', '2021-10-23 09:32:11'),
(937, '6186a067a8932653896661.jpg', 'ZZZ_3963.jpg', 9522819, 'image/jpeg', NULL, NULL, 'img_marquiz', '1', 'KonvertAgency\\Doctors\\Models\\Marquiz', 1, 937, '2021-11-06 12:33:59', '2021-11-06 12:39:01'),
(938, '6186adb72487f355321481.jpg', 'logo_brand_osstem.jpg', 39714, 'image/jpeg', NULL, NULL, 'img_slide', '281', 'KonvertAgency\\Doctors\\Models\\Slides', 1, 938, '2021-11-06 13:30:47', '2021-11-06 13:31:05'),
(939, '619bbd6d43065990083002.jpg', 'Viniry_discount.jpg', 186659, 'image/jpeg', NULL, NULL, 'ImgPpromotions', '2', 'KonvertAgency\\Doctors\\Models\\Discounts', 1, 939, '2021-11-22 12:55:25', '2021-11-22 12:55:27'),
(940, '619bbd8286a94361892714.jpg', '60f04a8fe4ddb356907384.jpg', 105723, 'image/jpeg', NULL, NULL, 'ImgPpromotions', '1', 'KonvertAgency\\Doctors\\Models\\Discounts', 1, 940, '2021-11-22 12:55:46', '2021-11-22 12:55:48');

-- --------------------------------------------------------

--
-- Структура таблицы `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n</head>\r\n<body>\r\n    <style type=\"text/css\" media=\"screen\">\r\n        {{ brandCss|raw }}\r\n        {{ css|raw }}\r\n    </style>\r\n\r\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\r\n\r\n        <!-- Header -->\r\n        {% partial \'header\' body %}\r\n            {{ subject|raw }}\r\n        {% endpartial %}\r\n\r\n        <tr>\r\n            <td align=\"center\">\r\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <!-- Email Body -->\r\n                    <tr>\r\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                <!-- Body content -->\r\n                                <tr>\r\n                                    <td class=\"content-cell\">\r\n                                        {{ content|raw }}\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n\r\n        <!-- Footer -->\r\n        {% partial \'footer\' body %}\r\n            &copy; {{ \"now\"|date(\"Y\") }} Клиника Med Studio.\r\n        {% endpartial %}\r\n\r\n    </table>\r\n\r\n</body>\r\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2020-11-16 08:31:44', '2020-11-16 08:31:44'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2020-11-16 08:31:44', '2020-11-16 08:31:44');

-- --------------------------------------------------------

--
-- Структура таблицы `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_mail_partials`
--

INSERT INTO `system_mail_partials` (`id`, `name`, `code`, `content_html`, `content_text`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'header', '<tr>\n    <td class=\"header\">\n        {% if url %}\n            <a href=\"{{ url }}\">\n                {{ body }}\n            </a>\n        {% else %}\n            <span>\n                {{ body }}\n            </span>\n        {% endif %}\n    </td>\n</tr>', '*** {{ body|trim }} <{{ url }}>', 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36'),
(2, 'Footer', 'footer', '<tr>\n    <td>\n        <table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n            <tr>\n                <td class=\"content-cell\" align=\"center\">\n                    {{ body|md_safe }}\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>', '-------------------\n{{ body|trim }}', 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36'),
(3, 'Button', 'button', '<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td align=\"center\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                            <tr>\n                                <td>\n                                    <a href=\"{{ url }}\" class=\"button button-{{ type ?: \'primary\' }}\" target=\"_blank\">\n                                        {{ body }}\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }} <{{ url }}>', 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36'),
(4, 'Panel', 'panel', '<table class=\"panel break-all\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td class=\"panel-content\">\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td class=\"panel-item\">\n                        {{ body|md_safe }}\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36'),
(5, 'Table', 'table', '<div class=\"table\">\n    {{ body|md_safe }}\n</div>', '{{ body|trim }}', 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36'),
(6, 'Subcopy', 'subcopy', '<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '-----\n{{ body|trim }}', 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36'),
(7, 'Promotion', 'promotion', '<table class=\"promotion break-all\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36');

-- --------------------------------------------------------

--
-- Структура таблицы `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `layout_id` int DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_mail_templates`
--

INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'backend::mail.invite', NULL, 'Invite new admin to the site', NULL, NULL, 2, 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36'),
(2, 'backend::mail.restore', NULL, 'Reset an admin password', NULL, NULL, 2, 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36');

-- --------------------------------------------------------

--
-- Структура таблицы `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int UNSIGNED NOT NULL,
  `namespace` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '2'),
(2, 'system', 'core', 'hash', '\"652ebd026445ccaeb3ba083f00830dc0\"'),
(3, 'system', 'core', 'build', '\"16\"'),
(4, 'system', 'update', 'retry', '1637688309'),
(5, 'cms', 'theme', 'active', '\"medstudio\"'),
(6, 'system', 'core', 'modified', 'true'),
(7, 'system', 'project', 'key', '\"0ZmD3BGDgZwL2Zwx5YJR0AGR0AzWzA2WvLGAzLGIvMJSyMGtjBGMyZQR0ZJLl\"'),
(8, 'system', 'project', 'id', '266299'),
(9, 'system', 'project', 'name', '\"med-studio.ru\"'),
(10, 'system', 'project', 'owner', '\"Mike\"'),
(11, 'system', 'project', 'is_active', 'true'),
(12, 'system', 'update', 'versions', '{\"count\":2,\"core\":\"2.1.21\",\"plugins\":{\"RainLab.Pages\":\"1.4.10\"}}');

-- --------------------------------------------------------

--
-- Структура таблицы `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(82, 'KonvertAgency.Doctors', 'comment', '1.0.1', 'Initialize plugin.', '2021-01-13 11:20:27'),
(83, 'KonvertAgency.Doctors', 'script', '1.0.2', 'builder_table_create_konvertagency_doctors_.php', '2021-01-13 12:17:49'),
(84, 'KonvertAgency.Doctors', 'comment', '1.0.2', 'Created table konvertagency_doctors_', '2021-01-13 12:17:49'),
(93, 'KonvertAgency.Doctors', 'script', '1.0.3', 'builder_table_update_konvertagency_doctors.php', '2021-01-13 12:37:22'),
(94, 'KonvertAgency.Doctors', 'comment', '1.0.3', 'Updated table konvertagency_doctors_', '2021-01-13 12:37:22'),
(95, 'KonvertAgency.Doctors', 'script', '1.0.4', 'builder_table_update_konvertagency_doctors2.php', '2021-01-14 12:46:11'),
(96, 'KonvertAgency.Doctors', 'comment', '1.0.4', 'Updated table konvertagency_doctors_', '2021-01-14 12:46:11'),
(97, 'KonvertAgency.Doctors', 'script', '1.0.5', 'builder_table_update_konvertagency_doctors__2.php', '2021-01-14 12:48:17'),
(98, 'KonvertAgency.Doctors', 'comment', '1.0.5', 'Updated table konvertagency_doctors_', '2021-01-14 12:48:17'),
(99, 'KonvertAgency.Doctors', 'script', '1.0.6', 'builder_table_update_konvertagency_doctors_.php', '2021-01-14 12:48:17'),
(100, 'KonvertAgency.Doctors', 'comment', '1.0.6', 'Updated table konvertagency_doctors_', '2021-01-14 12:48:17'),
(101, 'KonvertAgency.Doctors', 'script', '1.0.7', 'builder_table_update_konvertagency_doctors__3.php', '2021-01-14 12:48:17'),
(102, 'KonvertAgency.Doctors', 'comment', '1.0.7', 'Updated table konvertagency_doctors_', '2021-01-14 12:48:17'),
(103, 'KonvertAgency.Doctors', 'script', '1.0.8', 'builder_table_update_konvertagency_doctors__4.php', '2021-01-15 11:58:28'),
(104, 'KonvertAgency.Doctors', 'comment', '1.0.8', 'Updated table konvertagency_doctors_', '2021-01-15 11:58:28'),
(105, 'KonvertAgency.Doctors', 'script', '1.0.9', 'builder_table_update_konvertagency_doctors__5.php', '2021-02-04 08:04:48'),
(106, 'KonvertAgency.Doctors', 'comment', '1.0.9', 'Updated table konvertagency_doctors_', '2021-02-04 08:04:48'),
(110, 'KonvertAgency.Doctors', 'script', '1.0.10', 'builder_table_update_konvertagency_doctors__6.php', '2021-02-04 08:35:21'),
(111, 'KonvertAgency.Doctors', 'comment', '1.0.10', 'Updated table konvertagency_doctors_', '2021-02-04 08:35:21'),
(112, 'KonvertAgency.Doctors', 'script', '1.0.11', 'builder_table_update_konvertagency_doctors__7.php', '2021-02-04 08:35:53'),
(113, 'KonvertAgency.Doctors', 'comment', '1.0.11', 'Updated table konvertagency_doctors_', '2021-02-04 08:35:53'),
(114, 'KonvertAgency.Doctors', 'script', '1.0.12', 'builder_table_update_konvertagency_doctors__8.php', '2021-02-04 08:39:25'),
(115, 'KonvertAgency.Doctors', 'comment', '1.0.12', 'Updated table konvertagency_doctors_', '2021-02-04 08:39:25'),
(116, 'KonvertAgency.Doctors', 'script', '1.0.13', 'builder_table_update_konvertagency_doctors__9.php', '2021-02-04 11:20:34'),
(117, 'KonvertAgency.Doctors', 'comment', '1.0.13', 'Updated table konvertagency_doctors_', '2021-02-04 11:20:34'),
(150, 'KonvertAgency.Doctors', 'script', '1.0.14', 'builder_table_create_konvertagency_doctors_sample_works_.php', '2021-02-18 10:05:58'),
(151, 'KonvertAgency.Doctors', 'comment', '1.0.14', 'Created table konvertagency_doctors_sample_works_', '2021-02-18 10:05:58'),
(152, 'KonvertAgency.Doctors', 'script', '1.0.15', 'builder_table_update_konvertagency_doctors_sample_works_.php', '2021-02-18 10:23:23'),
(153, 'KonvertAgency.Doctors', 'comment', '1.0.15', 'Updated table konvertagency_doctors_sample_works_', '2021-02-18 10:23:23'),
(154, 'KonvertAgency.Doctors', 'script', '1.0.16', 'builder_table_update_konvertagency_doctors_sample_works__2.php', '2021-02-18 10:31:15'),
(155, 'KonvertAgency.Doctors', 'comment', '1.0.16', 'Updated table konvertagency_doctors_sample_works_', '2021-02-18 10:31:15'),
(156, 'KonvertAgency.Doctors', 'script', '1.0.17', 'builder_table_update_konvertagency_doctors_sample_works__3.php', '2021-02-26 11:20:46'),
(157, 'KonvertAgency.Doctors', 'comment', '1.0.17', 'Updated table konvertagency_doctors_sample_works_', '2021-02-26 11:20:46'),
(158, 'KonvertAgency.Doctors', 'script', '1.0.18', 'builder_table_update_konvertagency_doctors_sample_works__4.php', '2021-02-26 11:31:52'),
(159, 'KonvertAgency.Doctors', 'comment', '1.0.18', 'Updated table konvertagency_doctors_sample_works_', '2021-02-26 11:31:52'),
(160, 'KonvertAgency.Doctors', 'script', '1.0.19', 'builder_table_create_konvertagency_doctors_bloks.php', '2021-02-27 08:13:38'),
(161, 'KonvertAgency.Doctors', 'comment', '1.0.19', 'Created table konvertagency_doctors_bloks', '2021-02-27 08:13:38'),
(162, 'KonvertAgency.Doctors', 'script', '1.0.20', 'builder_table_update_konvertagency_doctors_bloks_.php', '2021-02-27 08:14:06'),
(163, 'KonvertAgency.Doctors', 'comment', '1.0.20', 'Updated table konvertagency_doctors_bloks', '2021-02-27 08:14:06'),
(164, 'KonvertAgency.Doctors', 'script', '1.0.21', 'builder_table_update_konvertagency_doctors_bloks__2.php', '2021-02-27 08:19:33'),
(165, 'KonvertAgency.Doctors', 'comment', '1.0.21', 'Updated table konvertagency_doctors_bloks_', '2021-02-27 08:19:33'),
(166, 'KonvertAgency.Doctors', 'script', '1.0.22', 'builder_table_update_konvertagency_doctors_bloks__3.php', '2021-02-27 08:22:41'),
(167, 'KonvertAgency.Doctors', 'comment', '1.0.22', 'Updated table konvertagency_doctors_bloks_', '2021-02-27 08:22:41'),
(168, 'KonvertAgency.Doctors', 'script', '1.0.23', 'builder_table_update_konvertagency_doctors_bloks__4.php', '2021-02-27 08:59:39'),
(169, 'KonvertAgency.Doctors', 'comment', '1.0.23', 'Updated table konvertagency_doctors_bloks_', '2021-02-27 08:59:39'),
(170, 'KonvertAgency.Doctors', 'script', '1.0.24', 'builder_table_update_konvertagency_doctors_bloks__5.php', '2021-02-27 09:06:33'),
(171, 'KonvertAgency.Doctors', 'comment', '1.0.24', 'Updated table konvertagency_doctors_bloks_', '2021-02-27 09:06:33'),
(172, 'KonvertAgency.Doctors', 'script', '1.0.25', 'builder_table_update_konvertagency_doctors_bloks__6.php', '2021-02-27 09:47:01'),
(173, 'KonvertAgency.Doctors', 'comment', '1.0.25', 'Updated table konvertagency_doctors_bloks_', '2021-02-27 09:47:01'),
(174, 'KonvertAgency.Doctors', 'script', '1.0.26', 'builder_table_update_konvertagency_doctors_bloks__7.php', '2021-02-27 09:52:43'),
(175, 'KonvertAgency.Doctors', 'comment', '1.0.26', 'Updated table konvertagency_doctors_bloks_', '2021-02-27 09:52:43'),
(176, 'KonvertAgency.Doctors', 'script', '1.0.27', 'builder_table_create_konvertagency_doctors_gallery_examples_.php', '2021-02-27 11:05:14'),
(177, 'KonvertAgency.Doctors', 'comment', '1.0.27', 'Created table konvertagency_doctors_gallery_examples_', '2021-02-27 11:05:14'),
(199, 'KonvertAgency.Doctors', 'script', '1.0.28', 'builder_table_create_konvertagency_doctors_title_page.php', '2021-03-01 12:16:58'),
(200, 'KonvertAgency.Doctors', 'comment', '1.0.28', 'Created table konvertagency_doctors_title_page', '2021-03-01 12:16:58'),
(201, 'KonvertAgency.Doctors', 'script', '1.0.29', 'builder_table_create_konvertagency_doctors_content.php', '2021-03-03 09:21:24'),
(202, 'KonvertAgency.Doctors', 'comment', '1.0.29', 'Создание базы текстового контента', '2021-03-03 09:21:24'),
(203, 'KonvertAgency.Doctors', 'script', '1.0.30', 'builder_table_update_konvertagency_doctors_content.php', '2021-03-03 09:36:41'),
(204, 'KonvertAgency.Doctors', 'comment', '1.0.30', 'konvertagency_doctors_content изменение умолчального значения img_position', '2021-03-03 09:36:41'),
(205, 'KonvertAgency.Doctors', 'script', '1.0.31', 'builder_table_delete_konvertagency_doctors_bloks_.php', '2021-03-11 11:03:05'),
(206, 'KonvertAgency.Doctors', 'comment', '1.0.31', 'Drop table konvertagency_doctors_bloks_', '2021-03-11 11:03:05'),
(207, 'KonvertAgency.Doctors', 'script', '1.0.32', 'builder_table_delete_konvertagency_doctors_gallery_examples_.php', '2021-03-11 11:03:23'),
(208, 'KonvertAgency.Doctors', 'comment', '1.0.32', 'Drop table konvertagency_doctors_gallery_examples_', '2021-03-11 11:03:23'),
(209, 'KonvertAgency.Doctors', 'script', '1.0.33', 'builder_table_delete_konvertagency_doctors_sample_works_.php', '2021-03-11 11:03:32'),
(210, 'KonvertAgency.Doctors', 'comment', '1.0.33', 'Drop table konvertagency_doctors_sample_works_', '2021-03-11 11:03:32'),
(211, 'KonvertAgency.Doctors', 'script', '1.0.34', 'builder_table_create_konvertagency_doctors_galleries.php', '2021-03-11 11:51:09'),
(212, 'KonvertAgency.Doctors', 'comment', '1.0.34', 'Created table konvertagency_doctors_galleries', '2021-03-11 11:51:09'),
(213, 'KonvertAgency.Doctors', 'script', '1.0.35', 'builder_table_create_konvertagency_doctors_slides.php', '2021-03-11 11:53:55'),
(214, 'KonvertAgency.Doctors', 'comment', '1.0.35', 'Created table konvertagency_doctors_slides', '2021-03-11 11:53:55'),
(215, 'KonvertAgency.Doctors', 'script', '1.0.36', 'builder_table_create_konvertagency_doctors_slides_gall.php', '2021-03-11 11:54:51'),
(216, 'KonvertAgency.Doctors', 'comment', '1.0.36', 'Created table konvertagency_doctors_slides_gall', '2021-03-11 11:54:51'),
(217, 'KonvertAgency.Doctors', 'script', '1.0.37', 'builder_table_update_konvertagency_doctors_slides_galleries.php', '2021-03-11 11:55:14'),
(218, 'KonvertAgency.Doctors', 'comment', '1.0.37', 'Updated table konvertagency_doctors_slides_gall', '2021-03-11 11:55:14'),
(219, 'KonvertAgency.Doctors', 'script', '1.0.38', 'builder_table_delete_konvertagency_doctors_slides_galleries.php', '2021-03-11 13:09:50'),
(220, 'KonvertAgency.Doctors', 'comment', '1.0.38', 'Drop table konvertagency_doctors_slides_galleries', '2021-03-11 13:09:50'),
(221, 'KonvertAgency.Doctors', 'script', '1.0.39', 'builder_table_update_konvertagency_doctors_galleries.php', '2021-03-15 07:23:52'),
(222, 'KonvertAgency.Doctors', 'comment', '1.0.39', 'Updated table konvertagency_doctors_galleries', '2021-03-15 07:23:53'),
(223, 'KonvertAgency.Doctors', 'script', '1.0.40', 'builder_table_update_konvertagency_doctors_galleries_2.php', '2021-03-15 12:12:13'),
(224, 'KonvertAgency.Doctors', 'comment', '1.0.40', 'Updated table konvertagency_doctors_galleries', '2021-03-15 12:12:13'),
(225, 'KonvertAgency.Doctors', 'script', '1.0.41', 'builder_table_update_konvertagency_doctors_galleries_3.php', '2021-03-15 12:27:27'),
(226, 'KonvertAgency.Doctors', 'comment', '1.0.41', 'Updated table konvertagency_doctors_galleries', '2021-03-15 12:27:27'),
(227, 'KonvertAgency.Doctors', 'script', '1.0.42', 'builder_table_create_konvertagency_doctors_table_row.php', '2021-03-18 12:20:18'),
(228, 'KonvertAgency.Doctors', 'comment', '1.0.42', 'Created table konvertagency_doctors_table_row', '2021-03-18 12:20:18'),
(229, 'KonvertAgency.Doctors', 'script', '1.0.43', 'builder_table_create_konvertagency_doctors_table.php', '2021-03-18 12:21:34'),
(230, 'KonvertAgency.Doctors', 'comment', '1.0.43', 'Created table konvertagency_doctors_table', '2021-03-18 12:21:34'),
(231, 'KonvertAgency.Doctors', 'script', '1.0.44', 'builder_table_create_konvertagency_doctors_table_rel_row.php', '2021-03-18 13:38:50'),
(232, 'KonvertAgency.Doctors', 'comment', '1.0.44', 'Created table konvertagency_doctors_table_rel_row', '2021-03-18 13:38:50'),
(233, 'KonvertAgency.Doctors', 'script', '1.0.45', 'builder_table_update_konvertagency_doctors_table_row.php', '2021-03-18 13:59:08'),
(234, 'KonvertAgency.Doctors', 'comment', '1.0.45', 'Updated table konvertagency_doctors_table_row', '2021-03-18 13:59:08'),
(235, 'KonvertAgency.Doctors', 'script', '1.0.46', 'builder_table_update_konvertagency_doctors_table_row_2.php', '2021-03-18 14:06:32'),
(236, 'KonvertAgency.Doctors', 'comment', '1.0.46', 'Updated table konvertagency_doctors_table_row', '2021-03-18 14:06:32'),
(237, 'KonvertAgency.Doctors', 'script', '1.0.47', 'builder_table_update_konvertagency_doctors_table_row_3.php', '2021-03-18 14:06:32'),
(238, 'KonvertAgency.Doctors', 'comment', '1.0.47', 'Updated table konvertagency_doctors_table_row', '2021-03-18 14:06:32'),
(239, 'KonvertAgency.Doctors', 'script', '1.0.48', 'builder_table_update_konvertagency_doctors_table.php', '2021-03-18 14:06:32'),
(240, 'KonvertAgency.Doctors', 'comment', '1.0.48', 'Updated table konvertagency_doctors_table', '2021-03-18 14:06:32'),
(241, 'KonvertAgency.Doctors', 'script', '1.0.49', 'builder_table_update_konvertagency_doctors_table_row_4.php', '2021-03-18 14:06:32'),
(242, 'KonvertAgency.Doctors', 'comment', '1.0.49', 'Updated table konvertagency_doctors_table_row', '2021-03-18 14:06:32'),
(243, 'KonvertAgency.Doctors', 'script', '1.0.50', 'builder_table_update_konvertagency_doctors_table_2.php', '2021-03-18 14:06:32'),
(244, 'KonvertAgency.Doctors', 'comment', '1.0.50', 'Updated table konvertagency_doctors_table', '2021-03-18 14:06:32'),
(245, 'KonvertAgency.Doctors', 'script', '1.0.51', 'builder_table_update_konvertagency_doctors_table_row_5.php', '2021-03-18 14:06:32'),
(246, 'KonvertAgency.Doctors', 'comment', '1.0.51', 'Updated table konvertagency_doctors_table_row', '2021-03-18 14:06:32'),
(247, 'KonvertAgency.Doctors', 'script', '1.0.52', 'builder_table_update_konvertagency_doctors_table_3.php', '2021-03-18 14:06:32'),
(248, 'KonvertAgency.Doctors', 'comment', '1.0.52', 'Updated table konvertagency_doctors_table', '2021-03-18 14:06:32'),
(249, 'KonvertAgency.Doctors', 'script', '1.0.53', 'builder_table_update_konvertagency_doctors_table_4.php', '2021-03-19 10:26:53'),
(250, 'KonvertAgency.Doctors', 'comment', '1.0.53', 'Updated table konvertagency_doctors_table', '2021-03-19 10:26:53'),
(251, 'KonvertAgency.Doctors', 'script', '1.0.54', 'builder_table_update_konvertagency_doctors_table_5.php', '2021-03-20 07:02:42'),
(252, 'KonvertAgency.Doctors', 'comment', '1.0.54', 'Updated table konvertagency_doctors_table', '2021-03-20 07:02:42'),
(253, 'KonvertAgency.Doctors', 'script', '1.0.55', 'builder_table_update_konvertagency_doctors_table_6.php', '2021-03-20 08:09:50'),
(254, 'KonvertAgency.Doctors', 'comment', '1.0.55', 'Updated table konvertagency_doctors_table', '2021-03-20 08:09:50'),
(255, 'KonvertAgency.Doctors', 'script', '1.0.56', 'builder_table_create_konvertagency_doctors_faq.php', '2021-03-22 09:52:16'),
(256, 'KonvertAgency.Doctors', 'comment', '1.0.56', 'Created table konvertagency_doctors_faq', '2021-03-22 09:52:16'),
(257, 'KonvertAgency.Doctors', 'script', '1.0.57', 'builder_table_create_konvertagency_doctors_faq_row.php', '2021-03-22 10:10:30'),
(258, 'KonvertAgency.Doctors', 'comment', '1.0.57', 'Created table konvertagency_doctors_faq_row', '2021-03-22 10:10:30'),
(259, 'KonvertAgency.Doctors', 'script', '1.0.58', 'builder_table_create_konvertagency_doctors_brand.php', '2021-03-24 09:48:00'),
(260, 'KonvertAgency.Doctors', 'comment', '1.0.58', 'Created table konvertagency_doctors_brand', '2021-03-24 09:48:00'),
(261, 'KonvertAgency.Doctors', 'script', '1.0.59', 'builder_table_create_konvertagency_doctors_country.php', '2021-03-24 09:49:25'),
(262, 'KonvertAgency.Doctors', 'comment', '1.0.59', 'Created table konvertagency_doctors_country', '2021-03-24 09:49:25'),
(263, 'KonvertAgency.Doctors', 'script', '1.0.60', 'builder_table_update_konvertagency_doctors_slides.php', '2021-03-24 09:59:15'),
(264, 'KonvertAgency.Doctors', 'comment', '1.0.60', 'Updated table konvertagency_doctors_slides', '2021-03-24 09:59:15'),
(265, 'KonvertAgency.Doctors', 'script', '1.0.61', 'builder_table_update_konvertagency_doctors_slides_2.php', '2021-03-24 10:07:21'),
(266, 'KonvertAgency.Doctors', 'comment', '1.0.61', 'Updated table konvertagency_doctors_slides', '2021-03-24 10:07:21'),
(267, 'KonvertAgency.Doctors', 'script', '1.0.62', 'builder_table_update_konvertagency_doctors_galleries_4.php', '2021-03-24 10:12:11'),
(268, 'KonvertAgency.Doctors', 'comment', '1.0.62', 'Updated table konvertagency_doctors_galleries', '2021-03-24 10:12:11'),
(269, 'KonvertAgency.Doctors', 'script', '1.0.63', 'builder_table_update_konvertagency_doctors_brand.php', '2021-03-24 15:02:11'),
(270, 'KonvertAgency.Doctors', 'comment', '1.0.63', 'Updated table konvertagency_doctors_brand', '2021-03-24 15:02:11'),
(271, 'KonvertAgency.Doctors', 'script', '1.0.64', 'builder_table_update_konvertagency_doctors_country.php', '2021-03-24 15:02:37'),
(272, 'KonvertAgency.Doctors', 'comment', '1.0.64', 'Updated table konvertagency_doctors_country', '2021-03-24 15:02:37'),
(273, 'KonvertAgency.Doctors', 'script', '1.0.65', 'builder_table_update_konvertagency_doctors_country_2.php', '2021-03-24 15:05:36'),
(274, 'KonvertAgency.Doctors', 'comment', '1.0.65', 'Updated table konvertagency_doctors_country', '2021-03-24 15:05:36'),
(275, 'KonvertAgency.Doctors', 'script', '1.0.66', 'builder_table_update_konvertagency_doctors_brand_2.php', '2021-03-24 15:05:49'),
(276, 'KonvertAgency.Doctors', 'comment', '1.0.66', 'Updated table konvertagency_doctors_brand', '2021-03-24 15:05:49'),
(277, 'KonvertAgency.Doctors', 'script', '1.0.67', 'builder_table_update_konvertagency_doctors_country_3.php', '2021-03-25 05:59:24'),
(278, 'KonvertAgency.Doctors', 'comment', '1.0.67', 'Updated table konvertagency_doctors_country', '2021-03-25 05:59:24'),
(279, 'KonvertAgency.Doctors', 'script', '1.0.68', 'builder_table_update_konvertagency_doctors_brand_3.php', '2021-03-25 06:00:09'),
(280, 'KonvertAgency.Doctors', 'comment', '1.0.68', 'Updated table konvertagency_doctors_brand', '2021-03-25 06:00:09'),
(281, 'KonvertAgency.Doctors', 'script', '1.0.69', 'builder_table_update_konvertagency_doctors_brand_4.php', '2021-03-25 06:01:26'),
(282, 'KonvertAgency.Doctors', 'comment', '1.0.69', 'Updated table konvertagency_doctors_brand', '2021-03-25 06:01:26'),
(283, 'KonvertAgency.Doctors', 'script', '1.0.70', 'builder_table_update_konvertagency_doctors_country_4.php', '2021-03-25 06:01:37'),
(284, 'KonvertAgency.Doctors', 'comment', '1.0.70', 'Updated table konvertagency_doctors_country', '2021-03-25 06:01:37'),
(285, 'KonvertAgency.Doctors', 'script', '1.0.71', 'builder_table_update_konvertagency_doctors_slides_3.php', '2021-03-25 09:25:46'),
(286, 'KonvertAgency.Doctors', 'comment', '1.0.71', 'Updated table konvertagency_doctors_slides', '2021-03-25 09:25:46'),
(287, 'KonvertAgency.Doctors', 'script', '1.0.72', 'builder_table_update_konvertagency_doctors_slides_4.php', '2021-03-25 09:49:38'),
(288, 'KonvertAgency.Doctors', 'comment', '1.0.72', 'Updated table konvertagency_doctors_slides', '2021-03-25 09:49:38'),
(289, 'KonvertAgency.Doctors', 'script', '1.0.73', 'builder_table_update_konvertagency_doctors_brand_5.php', '2021-03-25 10:35:19'),
(290, 'KonvertAgency.Doctors', 'comment', '1.0.73', 'Updated table konvertagency_doctors_brand', '2021-03-25 10:35:19'),
(291, 'KonvertAgency.Doctors', 'script', '1.0.74', 'builder_table_update_konvertagency_doctors_slides_5.php', '2021-03-25 10:57:38'),
(292, 'KonvertAgency.Doctors', 'comment', '1.0.74', 'Updated table konvertagency_doctors_slides', '2021-03-25 10:57:38'),
(293, 'KonvertAgency.Doctors', 'script', '1.0.75', 'builder_table_update_konvertagency_doctors_galleries_5.php', '2021-03-26 10:36:20'),
(294, 'KonvertAgency.Doctors', 'comment', '1.0.75', 'Updated table konvertagency_doctors_galleries', '2021-03-26 10:36:20'),
(295, 'KonvertAgency.Doctors', 'script', '1.0.76', 'builder_table_create_konvertagency_doctors_rating.php', '2021-03-26 11:10:15'),
(296, 'KonvertAgency.Doctors', 'comment', '1.0.76', 'Created table konvertagency_doctors_rating', '2021-03-26 11:10:15'),
(297, 'KonvertAgency.Doctors', 'script', '1.0.77', 'builder_table_update_konvertagency_doctors_rating.php', '2021-03-26 11:10:54'),
(298, 'KonvertAgency.Doctors', 'comment', '1.0.77', 'Updated table konvertagency_doctors_rating', '2021-03-26 11:10:54'),
(299, 'KonvertAgency.Doctors', 'script', '1.0.78', 'builder_table_update_konvertagency_doctors_rating_2.php', '2021-03-26 11:20:21'),
(300, 'KonvertAgency.Doctors', 'comment', '1.0.78', 'Updated table konvertagency_doctors_rating', '2021-03-26 11:20:21'),
(301, 'KonvertAgency.Doctors', 'script', '1.0.79', 'builder_table_update_konvertagency_doctors_rating_3.php', '2021-03-26 11:59:10'),
(302, 'KonvertAgency.Doctors', 'comment', '1.0.79', 'Updated table konvertagency_doctors_rating', '2021-03-26 11:59:10'),
(303, 'KonvertAgency.Doctors', 'script', '1.0.80', 'builder_table_update_konvertagency_doctors_rating_4.php', '2021-03-26 12:06:48'),
(304, 'KonvertAgency.Doctors', 'comment', '1.0.80', 'Updated table konvertagency_doctors_rating', '2021-03-26 12:06:48'),
(305, 'KonvertAgency.Doctors', 'script', '1.0.81', 'builder_table_update_konvertagency_doctors_rating_5.php', '2021-03-26 12:12:51'),
(306, 'KonvertAgency.Doctors', 'comment', '1.0.81', 'Updated table konvertagency_doctors_rating', '2021-03-26 12:12:51'),
(307, 'KonvertAgency.Doctors', 'script', '1.0.82', 'builder_table_update_konvertagency_doctors_rating_6.php', '2021-03-26 13:07:20'),
(308, 'KonvertAgency.Doctors', 'comment', '1.0.82', 'Updated table konvertagency_doctors_rating', '2021-03-26 13:07:20'),
(309, 'KonvertAgency.Doctors', 'script', '1.0.83', 'builder_table_update_konvertagency_doctors_rating_7.php', '2021-03-26 13:07:54'),
(310, 'KonvertAgency.Doctors', 'comment', '1.0.83', 'Updated table konvertagency_doctors_rating', '2021-03-26 13:07:54'),
(311, 'KonvertAgency.Doctors', 'script', '1.0.84', 'builder_table_update_konvertagency_doctors_title_page.php', '2021-03-29 11:22:41'),
(312, 'KonvertAgency.Doctors', 'comment', '1.0.84', 'Updated table konvertagency_doctors_title_page', '2021-03-29 11:22:41'),
(313, 'KonvertAgency.Doctors', 'script', '1.0.85', 'builder_table_update_konvertagency_doctors_rating_8.php', '2021-03-31 11:58:34'),
(314, 'KonvertAgency.Doctors', 'comment', '1.0.85', 'Updated table konvertagency_doctors_rating', '2021-03-31 11:58:34'),
(315, 'KonvertAgency.Doctors', 'script', '1.0.86', 'builder_table_create_konvertagency_doctors_feadback.php', '2021-03-31 12:02:45'),
(316, 'KonvertAgency.Doctors', 'comment', '1.0.86', 'Created table konvertagency_doctors_feadback', '2021-03-31 12:02:45'),
(317, 'KonvertAgency.Doctors', 'script', '1.0.87', 'builder_table_update_konvertagency_doctors_feadback.php', '2021-03-31 12:49:38'),
(318, 'KonvertAgency.Doctors', 'comment', '1.0.87', 'Updated table konvertagency_doctors_feadback', '2021-03-31 12:49:38'),
(319, 'KonvertAgency.Doctors', 'script', '1.0.88', 'builder_table_update_konvertagency_doctors_feadback_2.php', '2021-03-31 12:52:34'),
(320, 'KonvertAgency.Doctors', 'comment', '1.0.88', 'Updated table konvertagency_doctors_feadback', '2021-03-31 12:52:34'),
(321, 'KonvertAgency.Doctors', 'script', '1.0.89', 'builder_table_update_konvertagency_doctors_feadback_3.php', '2021-03-31 12:53:32'),
(322, 'KonvertAgency.Doctors', 'comment', '1.0.89', 'Updated table konvertagency_doctors_feadback', '2021-03-31 12:53:32'),
(414, 'KonvertAgency.Doctors', 'script', '1.0.90', 'builder_table_update_konvertagency_doctors_content_2.php', '2021-04-22 12:18:26'),
(415, 'KonvertAgency.Doctors', 'comment', '1.0.90', 'Updated table konvertagency_doctors_content', '2021-04-22 12:18:27'),
(416, 'KonvertAgency.Doctors', 'script', '1.0.91', 'builder_table_update_konvertagency_doctors_content_3.php', '2021-04-22 12:22:41'),
(417, 'KonvertAgency.Doctors', 'comment', '1.0.91', 'Updated table konvertagency_doctors_content', '2021-04-22 12:22:41'),
(418, 'KonvertAgency.Doctors', 'script', '1.0.92', 'builder_table_update_konvertagency_doctors_slides_6.php', '2021-04-24 11:30:52'),
(419, 'KonvertAgency.Doctors', 'comment', '1.0.92', 'Updated table konvertagency_doctors_slides', '2021-04-24 11:30:52'),
(420, 'KonvertAgency.Doctors', 'script', '1.0.93', 'builder_table_update_konvertagency_doctors_table_7.php', '2021-05-15 09:17:34'),
(421, 'KonvertAgency.Doctors', 'comment', '1.0.93', 'Updated table konvertagency_doctors_table', '2021-05-15 09:17:34'),
(422, 'KonvertAgency.Doctors', 'script', '1.0.94', 'builder_table_update_konvertagency_doctors_table_row_6.php', '2021-05-15 09:20:50'),
(423, 'KonvertAgency.Doctors', 'comment', '1.0.94', 'Updated table konvertagency_doctors_table_row', '2021-05-15 09:20:50'),
(424, 'KonvertAgency.Doctors', 'script', '1.0.95', 'builder_table_update_konvertagency_doctors_table_8.php', '2021-05-15 11:27:18'),
(425, 'KonvertAgency.Doctors', 'comment', '1.0.95', 'Updated table konvertagency_doctors_table', '2021-05-15 11:27:18'),
(426, 'KonvertAgency.Doctors', 'script', '1.0.96', 'builder_table_update_konvertagency_doctors_title_page_2.php', '2021-06-25 12:54:52'),
(427, 'KonvertAgency.Doctors', 'comment', '1.0.96', 'Updated table konvertagency_doctors_title_page', '2021-06-25 12:54:52'),
(428, 'KonvertAgency.Doctors', 'script', '1.0.97', 'builder_table_update_konvertagency_doctors_title_page_3.php', '2021-06-25 17:00:39'),
(429, 'KonvertAgency.Doctors', 'comment', '1.0.97', 'Updated table konvertagency_doctors_title_page', '2021-06-25 17:00:39'),
(441, 'KonvertAgency.Doctors', 'script', '1.0.98', 'builder_table_create_konvertagency_doctors_discounts.php', '2021-07-13 10:41:14'),
(442, 'KonvertAgency.Doctors', 'comment', '1.0.98', 'Created table konvertagency_doctors_discounts', '2021-07-13 10:41:14'),
(443, 'KonvertAgency.Doctors', 'script', '1.0.99', 'builder_table_update_konvertagency_doctors_discounts.php', '2021-07-14 15:16:52'),
(444, 'KonvertAgency.Doctors', 'comment', '1.0.99', 'Updated table konvertagency_doctors_discounts', '2021-07-14 15:16:52'),
(445, 'KonvertAgency.Doctors', 'script', '1.0.100', 'builder_table_update_konvertagency_doctors_discounts_2.php', '2021-07-15 13:34:46'),
(446, 'KonvertAgency.Doctors', 'comment', '1.0.100', 'Updated table konvertagency_doctors_discounts', '2021-07-15 13:34:46'),
(511, 'Bauboo.YouTube', 'comment', '1.0.1', NULL, '2021-10-21 09:12:26'),
(512, 'Bauboo.YouTube', 'comment', '1.1.0', NULL, '2021-10-21 09:12:26'),
(513, 'Bauboo.YouTube', 'comment', '1.1.1', NULL, '2021-10-21 09:12:26'),
(514, 'Bauboo.YouTube', 'comment', '1.2.0', NULL, '2021-10-21 09:12:26'),
(515, 'Bauboo.YouTube', 'comment', '1.2.1', NULL, '2021-10-21 09:12:26'),
(516, 'Bauboo.YouTube', 'comment', '1.2.2', NULL, '2021-10-21 09:12:26'),
(517, 'Bauboo.YouTube', 'comment', '1.2.3', NULL, '2021-10-21 09:12:26'),
(518, 'Bauboo.YouTube', 'comment', '1.2.4', NULL, '2021-10-21 09:12:26'),
(519, 'Bauboo.YouTube', 'comment', '1.2.4', NULL, '2021-10-21 09:12:26'),
(520, 'Bauboo.YouTube', 'comment', '1.3.0', NULL, '2021-10-21 09:12:26'),
(521, 'Bauboo.YouTube', 'comment', '1.3.1', NULL, '2021-10-21 09:12:26'),
(522, 'Bauboo.YouTube', 'comment', '1.3.2', NULL, '2021-10-21 09:12:26'),
(523, 'Bauboo.YouTube', 'comment', '1.3.3', NULL, '2021-10-21 09:12:26'),
(524, 'Bauboo.YouTube', 'comment', '1.4.0', NULL, '2021-10-21 09:12:26'),
(525, 'Bauboo.YouTube', 'comment', '1.4.1', NULL, '2021-10-21 09:12:26'),
(526, 'Bauboo.YouTube', 'comment', '1.5.0', NULL, '2021-10-21 09:12:26'),
(527, 'Davask.Dump', 'comment', '1.0.0', NULL, '2021-10-21 09:12:26'),
(528, 'Davask.Dump', 'comment', '1.0.1', NULL, '2021-10-21 09:12:26'),
(529, 'Davask.Dump', 'comment', '1.0.2', NULL, '2021-10-21 09:12:26'),
(530, 'RainLab.Builder', 'comment', '1.0.1', NULL, '2021-10-21 09:12:26'),
(531, 'RainLab.Builder', 'comment', '1.0.2', NULL, '2021-10-21 09:12:26'),
(532, 'RainLab.Builder', 'comment', '1.0.3', NULL, '2021-10-21 09:12:26'),
(533, 'RainLab.Builder', 'comment', '1.0.4', NULL, '2021-10-21 09:12:26'),
(534, 'RainLab.Builder', 'comment', '1.0.5', NULL, '2021-10-21 09:12:26'),
(535, 'RainLab.Builder', 'comment', '1.0.6', NULL, '2021-10-21 09:12:26'),
(536, 'RainLab.Builder', 'comment', '1.0.7', NULL, '2021-10-21 09:12:26'),
(537, 'RainLab.Builder', 'comment', '1.0.8', NULL, '2021-10-21 09:12:26'),
(538, 'RainLab.Builder', 'comment', '1.0.9', NULL, '2021-10-21 09:12:26'),
(539, 'RainLab.Builder', 'comment', '1.0.10', NULL, '2021-10-21 09:12:26'),
(540, 'RainLab.Builder', 'comment', '1.0.11', NULL, '2021-10-21 09:12:26'),
(541, 'RainLab.Builder', 'comment', '1.0.12', NULL, '2021-10-21 09:12:26'),
(542, 'RainLab.Builder', 'comment', '1.0.13', NULL, '2021-10-21 09:12:26'),
(543, 'RainLab.Builder', 'comment', '1.0.14', NULL, '2021-10-21 09:12:26'),
(544, 'RainLab.Builder', 'comment', '1.0.15', NULL, '2021-10-21 09:12:26'),
(545, 'RainLab.Builder', 'comment', '1.0.16', NULL, '2021-10-21 09:12:26'),
(546, 'RainLab.Builder', 'comment', '1.0.17', NULL, '2021-10-21 09:12:26'),
(547, 'RainLab.Builder', 'comment', '1.0.18', NULL, '2021-10-21 09:12:26'),
(548, 'RainLab.Builder', 'comment', '1.0.19', NULL, '2021-10-21 09:12:26'),
(549, 'RainLab.Builder', 'comment', '1.0.20', NULL, '2021-10-21 09:12:26'),
(550, 'RainLab.Builder', 'comment', '1.0.21', NULL, '2021-10-21 09:12:26'),
(551, 'RainLab.Builder', 'comment', '1.0.22', NULL, '2021-10-21 09:12:26'),
(552, 'RainLab.Builder', 'comment', '1.0.23', NULL, '2021-10-21 09:12:26'),
(553, 'RainLab.Builder', 'comment', '1.0.24', NULL, '2021-10-21 09:12:26'),
(554, 'RainLab.Builder', 'comment', '1.0.25', NULL, '2021-10-21 09:12:26'),
(555, 'RainLab.Builder', 'comment', '1.0.26', NULL, '2021-10-21 09:12:26'),
(556, 'RainLab.Builder', 'comment', '1.0.27', NULL, '2021-10-21 09:12:26'),
(557, 'RainLab.Builder', 'comment', '1.0.28', NULL, '2021-10-21 09:12:26'),
(558, 'RainLab.Builder', 'comment', '1.0.29', NULL, '2021-10-21 09:12:26'),
(559, 'RainLab.Builder', 'comment', '1.0.30', NULL, '2021-10-21 09:12:26'),
(560, 'RainLab.Builder', 'comment', '1.0.31', NULL, '2021-10-21 09:12:26'),
(561, 'RainLab.Builder', 'comment', '1.0.32', NULL, '2021-10-21 09:12:26'),
(562, 'RainLab.Builder', 'comment', '1.1.0', NULL, '2021-10-21 09:12:26'),
(563, 'RainLab.Pages', 'comment', '1.0.1', NULL, '2021-10-21 09:12:26'),
(564, 'RainLab.Pages', 'comment', '1.0.2', NULL, '2021-10-21 09:12:26'),
(565, 'RainLab.Pages', 'comment', '1.0.3', NULL, '2021-10-21 09:12:26'),
(566, 'RainLab.Pages', 'comment', '1.0.4', NULL, '2021-10-21 09:12:26'),
(567, 'RainLab.Pages', 'comment', '1.0.5', NULL, '2021-10-21 09:12:26'),
(568, 'RainLab.Pages', 'comment', '1.0.6', NULL, '2021-10-21 09:12:26'),
(569, 'RainLab.Pages', 'comment', '1.0.7', NULL, '2021-10-21 09:12:26'),
(570, 'RainLab.Pages', 'comment', '1.0.8', NULL, '2021-10-21 09:12:26'),
(571, 'RainLab.Pages', 'comment', '1.0.9', NULL, '2021-10-21 09:12:26'),
(572, 'RainLab.Pages', 'comment', '1.0.10', NULL, '2021-10-21 09:12:26'),
(573, 'RainLab.Pages', 'comment', '1.0.11', NULL, '2021-10-21 09:12:26'),
(574, 'RainLab.Pages', 'comment', '1.0.12', NULL, '2021-10-21 09:12:26'),
(575, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2021-10-21 09:12:26'),
(576, 'RainLab.Pages', 'comment', '1.1.0', NULL, '2021-10-21 09:12:26'),
(577, 'RainLab.Pages', 'comment', '1.1.1', NULL, '2021-10-21 09:12:26'),
(578, 'RainLab.Pages', 'comment', '1.1.2', NULL, '2021-10-21 09:12:26'),
(579, 'RainLab.Pages', 'comment', '1.1.3', NULL, '2021-10-21 09:12:26'),
(580, 'RainLab.Pages', 'comment', '1.1.4', NULL, '2021-10-21 09:12:26'),
(581, 'RainLab.Pages', 'comment', '1.1.5', NULL, '2021-10-21 09:12:26'),
(582, 'RainLab.Pages', 'comment', '1.1.6', NULL, '2021-10-21 09:12:26'),
(583, 'RainLab.Pages', 'comment', '1.1.7', NULL, '2021-10-21 09:12:26'),
(584, 'RainLab.Pages', 'comment', '1.1.8', NULL, '2021-10-21 09:12:26'),
(585, 'RainLab.Pages', 'comment', '1.1.9', NULL, '2021-10-21 09:12:26'),
(586, 'RainLab.Pages', 'comment', '1.1.10', NULL, '2021-10-21 09:12:26'),
(587, 'RainLab.Pages', 'comment', '1.1.11', NULL, '2021-10-21 09:12:26'),
(588, 'RainLab.Pages', 'comment', '1.2.0', NULL, '2021-10-21 09:12:26'),
(589, 'RainLab.Pages', 'comment', '1.2.1', NULL, '2021-10-21 09:12:26'),
(590, 'RainLab.Pages', 'comment', '1.2.2', NULL, '2021-10-21 09:12:26'),
(591, 'RainLab.Pages', 'comment', '1.2.3', NULL, '2021-10-21 09:12:26'),
(592, 'RainLab.Pages', 'comment', '1.2.4', NULL, '2021-10-21 09:12:26'),
(593, 'RainLab.Pages', 'comment', '1.2.5', NULL, '2021-10-21 09:12:26'),
(594, 'RainLab.Pages', 'comment', '1.2.6', NULL, '2021-10-21 09:12:26'),
(595, 'RainLab.Pages', 'comment', '1.2.7', NULL, '2021-10-21 09:12:26'),
(596, 'RainLab.Pages', 'comment', '1.2.8', NULL, '2021-10-21 09:12:26'),
(597, 'RainLab.Pages', 'comment', '1.2.9', NULL, '2021-10-21 09:12:26'),
(598, 'RainLab.Pages', 'comment', '1.2.10', NULL, '2021-10-21 09:12:26'),
(599, 'RainLab.Pages', 'comment', '1.2.11', NULL, '2021-10-21 09:12:26'),
(600, 'RainLab.Pages', 'comment', '1.2.12', NULL, '2021-10-21 09:12:26'),
(601, 'RainLab.Pages', 'comment', '1.2.13', NULL, '2021-10-21 09:12:26'),
(602, 'RainLab.Pages', 'comment', '1.2.14', NULL, '2021-10-21 09:12:26'),
(603, 'RainLab.Pages', 'comment', '1.2.15', NULL, '2021-10-21 09:12:26'),
(604, 'RainLab.Pages', 'comment', '1.2.16', NULL, '2021-10-21 09:12:26'),
(605, 'RainLab.Pages', 'comment', '1.2.17', NULL, '2021-10-21 09:12:26'),
(606, 'RainLab.Pages', 'comment', '1.2.18', NULL, '2021-10-21 09:12:26'),
(607, 'RainLab.Pages', 'comment', '1.2.19', NULL, '2021-10-21 09:12:26'),
(608, 'RainLab.Pages', 'comment', '1.2.20', NULL, '2021-10-21 09:12:26'),
(609, 'RainLab.Pages', 'comment', '1.2.21', NULL, '2021-10-21 09:12:26'),
(610, 'RainLab.Pages', 'comment', '1.3.0', NULL, '2021-10-21 09:12:26'),
(611, 'RainLab.Pages', 'comment', '1.3.1', NULL, '2021-10-21 09:12:26'),
(612, 'RainLab.Pages', 'comment', '1.3.2', NULL, '2021-10-21 09:12:26'),
(613, 'RainLab.Pages', 'comment', '1.3.3', NULL, '2021-10-21 09:12:26'),
(614, 'RainLab.Pages', 'comment', '1.3.4', NULL, '2021-10-21 09:12:26'),
(615, 'RainLab.Pages', 'comment', '1.3.5', NULL, '2021-10-21 09:12:26'),
(616, 'RainLab.Pages', 'comment', '1.3.6', NULL, '2021-10-21 09:12:26'),
(617, 'RainLab.Pages', 'comment', '1.3.7', NULL, '2021-10-21 09:12:26'),
(618, 'RainLab.Pages', 'comment', '1.4.0', NULL, '2021-10-21 09:12:26'),
(619, 'RainLab.Pages', 'comment', '1.4.1', NULL, '2021-10-21 09:12:26'),
(620, 'RainLab.Pages', 'comment', '1.4.3', NULL, '2021-10-21 09:12:26'),
(621, 'RainLab.Pages', 'comment', '1.4.4', NULL, '2021-10-21 09:12:26'),
(622, 'RainLab.Pages', 'comment', '1.4.5', NULL, '2021-10-21 09:12:26'),
(623, 'RainLab.Pages', 'comment', '1.4.6', NULL, '2021-10-21 09:12:26'),
(624, 'RainLab.Pages', 'comment', '1.4.7', NULL, '2021-10-21 09:12:26'),
(625, 'RainLab.Pages', 'comment', '1.4.8', NULL, '2021-10-21 09:12:26'),
(626, 'RainLab.Pages', 'comment', '1.4.9', NULL, '2021-10-21 09:12:26'),
(627, 'RainLab.Sitemap', 'comment', '1.0.1', NULL, '2021-10-21 09:12:26'),
(628, 'RainLab.Sitemap', 'script', '1.0.2', 'create_definitions_table.php', '2021-10-21 09:12:26'),
(629, 'RainLab.Sitemap', 'comment', '1.0.2', NULL, '2021-10-21 09:12:26'),
(630, 'RainLab.Sitemap', 'comment', '1.0.3', NULL, '2021-10-21 09:12:26'),
(631, 'RainLab.Sitemap', 'comment', '1.0.4', NULL, '2021-10-21 09:12:26'),
(632, 'RainLab.Sitemap', 'comment', '1.0.5', NULL, '2021-10-21 09:12:26'),
(633, 'RainLab.Sitemap', 'comment', '1.0.6', NULL, '2021-10-21 09:12:26'),
(634, 'RainLab.Sitemap', 'comment', '1.0.7', NULL, '2021-10-21 09:12:26'),
(635, 'RainLab.Sitemap', 'comment', '1.0.8', NULL, '2021-10-21 09:12:26'),
(636, 'RainLab.Sitemap', 'comment', '1.0.9', NULL, '2021-10-21 09:12:26'),
(637, 'RainLab.Sitemap', 'comment', '1.1.0', NULL, '2021-10-21 09:12:26'),
(638, 'RainLab.Sitemap', 'comment', '1.1.1', NULL, '2021-10-21 09:12:26'),
(639, 'Xeor.Sitemap', 'comment', '1.0.1', NULL, '2021-10-21 09:12:26'),
(640, 'KonvertAgency.Doctors', 'script', '1.0.101', 'builder_table_create_konvertagency_doctors_marquiz.php', '2021-11-06 12:27:08'),
(641, 'KonvertAgency.Doctors', 'comment', '1.0.101', NULL, '2021-11-06 12:27:08'),
(642, 'KonvertAgency.Doctors', 'script', '1.0.102', 'builder_table_update_konvertagency_doctors_table_row_7.php', '2021-11-15 11:10:05'),
(643, 'KonvertAgency.Doctors', 'comment', '1.0.102', NULL, '2021-11-15 11:10:05'),
(644, 'KonvertAgency.Doctors', 'script', '1.0.103', 'builder_table_update_konvertagency_doctors_discounts_3.php', '2021-11-22 12:30:14'),
(645, 'KonvertAgency.Doctors', 'comment', '1.0.103', NULL, '2021-11-22 12:30:14');

-- --------------------------------------------------------

--
-- Структура таблицы `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(4, 'KonvertAgency.Doctors', '1.0.103', '2021-11-22 12:30:14', 0, 0),
(16, 'Bauboo.YouTube', '1.5.0', '2021-10-21 09:12:26', 0, 0),
(17, 'Davask.Dump', '1.0.2', '2021-10-21 09:12:26', 0, 0),
(18, 'RainLab.Builder', '1.1.0', '2021-10-21 09:12:26', 0, 0),
(19, 'RainLab.Pages', '1.4.9', '2021-10-21 09:12:26', 0, 0),
(20, 'RainLab.Sitemap', '1.1.1', '2021-10-21 09:12:26', 0, 0),
(21, 'Xeor.Sitemap', '1.0.1', '2021-10-21 09:12:26', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int UNSIGNED NOT NULL,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int UNSIGNED NOT NULL,
  `item` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'rainlab_builder_settings', '{\"author_name\":\"Konvert Agency\",\"author_namespace\":\"KonvertAgency\"}'),
(2, 'backend_brand_settings', '{\"app_name\":\"Med Studio\",\"app_tagline\":\"\\u0423\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0441\\u0430\\u0439\\u0442\\u043e\\u043c\",\"primary_color\":\"#34495e\",\"secondary_color\":\"#e67e22\",\"accent_color\":\"#3498db\",\"menu_mode\":\"inline\",\"custom_css\":\".flag .image img {\\r\\n    min-width: 54px !important;\\r\\n    min-height: 36px !important;\\r\\n}\\r\\n\\r\\n.flag .image {\\r\\nbox-shadow: 0 0 10px rgba(0,0,0,0.1);\\r\\n}\\r\\n.flag .icon-container{\\r\\nborder: solid 1px #ccc !important;\\r\\nborder-radius: 3px;\\r\\n}\\r\\n .layout.control-tabs.oc-logo-transparent:not(.has-tabs){\\r\\n  background-size: 50% auto;\\r\\n\\r\\n }\",\"login_background_type\":\"color\",\"login_background_color\":null,\"login_background_wallpaper_size\":\"auto\",\"login_image_type\":\"autumn_images\"}'),
(3, 'backend_editor_settings', '{\"html_allow_empty_tags\":\"textarea, a, iframe, object, video, style, script, .fa, .fr-emoticon, .fr-inner, path, line, hr, i\",\"html_allow_tags\":\"a, abbr, address, area, article, aside, audio, b, bdi, bdo, blockquote, br, button, canvas, caption, cite, code, col, colgroup, datalist, dd, del, details, dfn, dialog, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form, h1, h2, h3, h4, h5, h6, header, hgroup, hr, i, iframe, img, input, ins, kbd, keygen, label, legend, li, link, main, map, mark, menu, menuitem, meter, nav, noscript, object, ol, optgroup, option, output, p, param, pre, progress, queue, rp, rt, ruby, s, samp, script, style, section, select, small, source, span, strike, strong, sub, summary, sup, table, tbody, td, textarea, tfoot, th, thead, time, title, tr, track, u, ul, var, video, wbr\",\"html_no_wrap_tags\":\"figure, script, style\",\"html_remove_tags\":\"script, style, base\",\"html_line_breaker_tags\":\"figure, table, hr, iframe, form, dl\",\"html_custom_styles\":\"\\/*\\r\\n * Text\\r\\n *\\/\\r\\n.oc-text-gray {\\r\\n    color: #AAA !important;\\r\\n}\\r\\n.oc-text-bordered {\\r\\n    border-top: solid 1px #222;\\r\\n    border-bottom: solid 1px #222;\\r\\n    padding: 10px 0;\\r\\n}\\r\\n.oc-text-spaced {\\r\\n    letter-spacing: 1px;\\r\\n}\\r\\n.oc-text-uppercase {\\r\\n    text-transform: uppercase;\\r\\n}\\r\\n\\r\\n\\/*\\r\\n * Links\\r\\n *\\/\\r\\na.oc-link-strong {\\r\\n    font-weight: 700;\\r\\n}\\r\\na.oc-link-green {\\r\\n    color: green;\\r\\n}\\r\\n\\r\\n\\/*\\r\\n * Table\\r\\n *\\/\\r\\ntable.oc-dashed-borders td,\\r\\ntable.oc-dashed-borders th {\\r\\n    border-style: dashed;\\r\\n}\\r\\ntable.oc-alternate-rows tbody tr:nth-child(2n) {\\r\\n    background: #f5f5f5;\\r\\n}\\r\\n\\r\\n\\/*\\r\\n * Table cell\\r\\n *\\/\\r\\ntable td.oc-cell-highlighted,\\r\\ntable th.oc-cell-highlighted {\\r\\n    border: 1px double red;\\r\\n}\\r\\ntable td.oc-cell-thick-border,\\r\\ntable th.oc-cell-thick-border {\\r\\n    border-width: 2px;\\r\\n}\\r\\n\\r\\n\\/*\\r\\n * Images\\r\\n *\\/\\r\\nimg.oc-img-rounded {\\r\\n    border-radius: 100%;\\r\\n    background-clip: padding-box;\\r\\n}\\r\\nimg.oc-img-bordered {\\r\\n    border: solid 10px #CCC;\\r\\n    box-sizing: content-box;\\r\\n}\",\"html_style_image\":[{\"class_label\":\"Rounded\",\"class_name\":\"oc-img-rounded\"},{\"class_label\":\"Bordered\",\"class_name\":\"oc-img-bordered\"}],\"html_style_link\":[{\"class_label\":\"Green\",\"class_name\":\"oc-link-green\"},{\"class_label\":\"Strong\",\"class_name\":\"oc-link-strong\"}],\"html_style_paragraph\":[{\"class_label\":\"Bordered\",\"class_name\":\"oc-text-bordered\"},{\"class_label\":\"Gray\",\"class_name\":\"oc-text-gray\"},{\"class_label\":\"Spaced\",\"class_name\":\"oc-text-spaced\"},{\"class_label\":\"Uppercase\",\"class_name\":\"oc-text-uppercase\"}],\"html_style_table\":[{\"class_label\":\"Dashed Borders\",\"class_name\":\"oc-dashed-borders\"},{\"class_label\":\"Alternate Rows\",\"class_name\":\"oc-alternate-rows\"}],\"html_style_table_cell\":[{\"class_label\":\"Highlighted\",\"class_name\":\"oc-cell-highlighted\"},{\"class_label\":\"Thick Border\",\"class_name\":\"oc-cell-thick-border\"}],\"html_paragraph_formats\":[{\"format_label\":\"Normal\",\"format_tag\":\"N\"},{\"format_label\":\"Heading 1\",\"format_tag\":\"H1\"},{\"format_label\":\"Heading 2\",\"format_tag\":\"H2\"},{\"format_label\":\"Heading 3\",\"format_tag\":\"H3\"},{\"format_label\":\"Heading 4\",\"format_tag\":\"H4\"},{\"format_label\":\"Code\",\"format_tag\":\"PRE\"}],\"html_toolbar_buttons\":\"undo, redo, |, bold, italic, underline, |, paragraphFormat, paragraphStyle, inlineStyle, |, strikeThrough, subscript, superscript, clearFormatting, |, fontFamily, fontSize, |, color, emoticons, -, selectAll, |, align, formatOL, formatUL, outdent, indent, quote, |, insertHR, insertLink, insertImage, insertVideo, insertAudio, insertFile, insertTable, |, selectAll, html, fullscreen\"}'),
(4, 'system_mail_brand_settings', '{\"body_bg\":\"#f5f8fa\",\"content_bg\":\"#fff\",\"content_inner_bg\":\"#fff\",\"button_text_color\":\"#fff\",\"button_primary_bg\":\"#3498db\",\"button_positive_bg\":\"#31ac5f\",\"button_negative_bg\":\"#ab2a1c\",\"header_color\":\"#bbbfc3\",\"heading_color\":\"#2f3133\",\"text_color\":\"#74787e\",\"link_color\":\"#0181b9\",\"footer_color\":\"#aeaeae\",\"body_border_color\":\"#edeff2\",\"subcopy_border_color\":\"#edeff2\",\"table_border_color\":\"#edeff2\",\"panel_bg\":\"#edeff2\",\"promotion_bg\":\"#fff\",\"promotion_border_color\":\"#9ba2ab\"}'),
(7, 'system_mail_settings', '{\"send_mode\":\"smtp\",\"sender_name\":\"MedStudio \\u0421\\u0442\\u0430\\u0432\\u0440\\u043e\\u043f\\u043e\\u043b\\u044c\",\"sender_email\":\"kostyrinandrej90@gmail.com\",\"sendmail_path\":\"\\/usr\\/sbin\\/sendmail -bs\",\"smtp_address\":\"smtp.gmail.com\",\"smtp_port\":\"465\",\"smtp_user\":\"kostyrinandrej90@gmail.com\",\"smtp_password\":\"UYG6tewhb\",\"smtp_authorization\":\"1\",\"smtp_encryption\":\"ssl\",\"mailgun_domain\":\"\",\"mailgun_secret\":\"\",\"mandrill_secret\":\"\",\"ses_key\":\"\",\"ses_secret\":\"\",\"ses_region\":\"\",\"sparkpost_secret\":\"\"}'),
(8, 'cms_maintenance_settings', '{\"is_enabled\":\"0\",\"cms_page\":\"sajt-na-obsluzhivanii.htm\",\"theme_map\":{\"medstudio\":\"sajt-na-obsluzhivanii.htm\"}}');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `acme_stdemo_tasks`
--
ALTER TABLE `acme_stdemo_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Индексы таблицы `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Индексы таблицы `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Индексы таблицы `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Индексы таблицы `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Индексы таблицы `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Индексы таблицы `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Индексы таблицы `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Индексы таблицы `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Индексы таблицы `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Индексы таблицы `konvertagency_doctors_`
--
ALTER TABLE `konvertagency_doctors_`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_brand`
--
ALTER TABLE `konvertagency_doctors_brand`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_content`
--
ALTER TABLE `konvertagency_doctors_content`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_country`
--
ALTER TABLE `konvertagency_doctors_country`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_discounts`
--
ALTER TABLE `konvertagency_doctors_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_faq`
--
ALTER TABLE `konvertagency_doctors_faq`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_faq_row`
--
ALTER TABLE `konvertagency_doctors_faq_row`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_feadback`
--
ALTER TABLE `konvertagency_doctors_feadback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_galleries`
--
ALTER TABLE `konvertagency_doctors_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_marquiz`
--
ALTER TABLE `konvertagency_doctors_marquiz`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `konvertagency_doctors_marquiz_slug_unique` (`slug`);

--
-- Индексы таблицы `konvertagency_doctors_rating`
--
ALTER TABLE `konvertagency_doctors_rating`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_slides`
--
ALTER TABLE `konvertagency_doctors_slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_table`
--
ALTER TABLE `konvertagency_doctors_table`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_table_row`
--
ALTER TABLE `konvertagency_doctors_table_row`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `konvertagency_doctors_title_page`
--
ALTER TABLE `konvertagency_doctors_title_page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_sitemap_definitions_theme_index` (`theme`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Индексы таблицы `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Индексы таблицы `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Индексы таблицы `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Индексы таблицы `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Индексы таблицы `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Индексы таблицы `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Индексы таблицы `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Индексы таблицы `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `acme_stdemo_tasks`
--
ALTER TABLE `acme_stdemo_tasks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1341;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_`
--
ALTER TABLE `konvertagency_doctors_`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_brand`
--
ALTER TABLE `konvertagency_doctors_brand`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_content`
--
ALTER TABLE `konvertagency_doctors_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_country`
--
ALTER TABLE `konvertagency_doctors_country`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_discounts`
--
ALTER TABLE `konvertagency_doctors_discounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_faq`
--
ALTER TABLE `konvertagency_doctors_faq`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_faq_row`
--
ALTER TABLE `konvertagency_doctors_faq_row`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_feadback`
--
ALTER TABLE `konvertagency_doctors_feadback`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_galleries`
--
ALTER TABLE `konvertagency_doctors_galleries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_marquiz`
--
ALTER TABLE `konvertagency_doctors_marquiz`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_rating`
--
ALTER TABLE `konvertagency_doctors_rating`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_slides`
--
ALTER TABLE `konvertagency_doctors_slides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_table`
--
ALTER TABLE `konvertagency_doctors_table`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_table_row`
--
ALTER TABLE `konvertagency_doctors_table_row`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT для таблицы `konvertagency_doctors_title_page`
--
ALTER TABLE `konvertagency_doctors_title_page`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT для таблицы `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=646;

--
-- AUTO_INCREMENT для таблицы `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
