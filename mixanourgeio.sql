-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 01, 2023 at 08:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mixanourgeio`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, '{\"0\":\"Draft\",\"1\":\"Active\",\"checked\":false}', 4),
(26, 4, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'seo_description', 'text', 'Seo Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'seo_image', 'image', 'Seo Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 8),
(30, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(31, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(32, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(34, 5, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(35, 5, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(36, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(37, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(38, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(39, 6, 'image', 'multiple_images', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(40, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(41, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(42, 6, 'gallery_name', 'text', 'Gallery Name', 1, 1, 1, 1, 1, 1, '{}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(4, 'pages', 'pages', 'Page', 'Pages', NULL, 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-26 16:00:26', '2023-06-26 16:03:38'),
(5, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-06-26 16:10:20', '2023-06-26 16:10:20'),
(6, 'images', 'images', 'Image', 'Images', NULL, 'App\\Image', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-26 16:11:32', '2023-06-26 16:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gallery_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(2, 'main', '2023-06-28 06:56:08', '2023-06-28 06:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-06-26 14:48:57', '2023-06-26 14:48:57', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-06-26 14:48:57', '2023-06-26 14:48:57', 'voyager.settings.index', NULL),
(11, 1, 'Pages', '', '_self', NULL, NULL, NULL, 15, '2023-06-26 16:00:26', '2023-06-26 16:00:26', 'voyager.pages.index', NULL),
(12, 1, 'Services', '', '_self', NULL, NULL, NULL, 16, '2023-06-26 16:10:20', '2023-06-26 16:10:20', 'voyager.services.index', NULL),
(13, 1, 'Images', '', '_self', NULL, NULL, NULL, 17, '2023-06-26 16:11:32', '2023-06-26 16:11:32', 'voyager.images.index', NULL),
(14, 2, 'Αρχική', 'arxikh', '_self', NULL, '#000000', NULL, 1, '2023-06-28 07:12:43', '2023-06-28 07:48:17', NULL, ''),
(15, 2, 'Υπηρεσίες', 'services', '_self', NULL, '#000000', NULL, 2, '2023-06-28 07:49:25', '2023-07-01 12:22:11', NULL, ''),
(16, 2, 'Σχετικά με εμάς', 'about', '_self', NULL, '#000000', NULL, 3, '2023-06-28 07:50:31', '2023-07-01 12:22:19', NULL, ''),
(17, 2, 'Οι συνεργάτες μας', 'clients', '_self', NULL, '#000000', NULL, 4, '2023-06-28 07:51:11', '2023-07-01 12:22:27', NULL, ''),
(18, 2, 'Επικοινωνία', 'contact', '_self', NULL, '#000000', NULL, 5, '2023-06-28 07:51:47', '2023-07-01 12:22:35', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `seo_image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `body`, `status`, `seo_title`, `seo_description`, `seo_image`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Αρχική', NULL, '0', 'Αρχική', NULL, NULL, 'arxikh', '2023-06-28 06:54:00', '2023-07-01 12:51:52'),
(4, 'Υπηρεσίες', NULL, '0', 'Υπηρεσίες', NULL, NULL, 'services', '2023-06-28 06:54:00', '2023-07-01 12:53:51'),
(5, 'Σχετικά με εμάς', '<div class=\"custom-page-wrapper pt-5\">\r\n<div class=\"container container-xl-custom pt-5 mt-5\">\r\n<div class=\"row pt-5\">\r\n<div class=\"col position-relative\">\r\n<div class=\"position-absolute z-index-0 appear-animation animated fadeInRightShorter appear-animation-visible\" style=\"top: 100px; left: -80px; animation-delay: 2000ms;\" data-appear-animation=\"fadeInRightShorter\" data-appear-animation-delay=\"2000\">\r\n<h2 class=\"text-color-dark custom-stroke-text-effect-1 custom-big-font-size-1 font-weight-black opacity-1 mb-0\">YOUR PLACE</h2>\r\n</div>\r\n<div class=\"overflow-hidden mb-2\">\r\n<h2 class=\"text-color-default positive-ls-3 line-height-3 text-4 mb-0 appear-animation animated maskUp appear-animation-visible\" style=\"animation-delay: 1500ms;\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1500\">WE\'RE HERE TO HELP</h2>\r\n</div>\r\n<div class=\"overflow-hidden mb-3\">\r\n<h3 class=\"text-transform-none text-color-dark font-weight-black text-10 line-height-2 mb-0 appear-animation animated maskUp appear-animation-visible\" style=\"animation-delay: 1700ms;\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1700\">You need space for better living.</h3>\r\n</div>\r\n<div class=\"appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 1900ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1900\"><img class=\"img-fluid opacity-5 mb-4\" src=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/divider.jpg\" alt=\"\"></div>\r\n<p class=\"custom-font-tertiary text-5 line-height-4 mb-4 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2100ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2100\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet libero id nisi euismod, sed porta est consectetur.</p>\r\n<p class=\"text-3-5 mb-4 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2300ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2300\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p class=\"text-3-5 pb-3 mb-4 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2500ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2500\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>\r\n</div>\r\n<div class=\"lightbox\" data-plugin-options=\"{\'delegate\': \'a\', \'type\': \'image\', \'gallery\': {\'enabled\': true}, \'mainClass\': \'mfp-with-zoom\', \'zoom\': {\'enabled\': true, \'duration\': 300}}\">\r\n<div class=\"row pb-3 mb-4 appear-animation animated fadeInUpShorterPlus appear-animation-visible\" style=\"animation-delay: 2700ms;\" data-appear-animation=\"fadeInUpShorterPlus\" data-appear-animation-delay=\"2700\" data-plugin-options=\"{\'accY\': 200}\">\r\n<div class=\"col-md-4 mb-4 mb-md-0\"><a class=\"d-inline-block custom-img-thumbnail-style-1 img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon rounded-0\" href=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/generic/generic-11.jpg\"> <img class=\"img-fluid rounded-0\" src=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/generic/generic-11.jpg\" alt=\"\"> </a></div>\r\n<div class=\"col-md-4 mb-4 mb-md-0\"><a class=\"d-inline-block custom-img-thumbnail-style-1 img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon rounded-0\" href=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/generic/generic-11.jpg\"> <img class=\"img-fluid rounded-0\" src=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/generic/generic-12.jpg\" alt=\"\"> </a></div>\r\n<div class=\"col-md-4\"><a class=\"d-inline-block custom-img-thumbnail-style-1 img-thumbnail img-thumbnail-no-borders img-thumbnail-hover-icon rounded-0\" href=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/generic/generic-11.jpg\"> <img class=\"img-fluid rounded-0\" src=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/generic/generic-13.jpg\" alt=\"\"> </a></div>\r\n</div>\r\n</div>\r\n<div class=\"row pb-5 mb-5\">\r\n<div class=\"col\">\r\n<p class=\"text-3-5 mb-4\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p class=\"text-3-5 mb-0\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col\"><hr class=\"my-0\"></div>\r\n</div>\r\n<div class=\"row py-5 my-5\">\r\n<div class=\"col-lg-6 col-xl-7 mx-auto mb-5 mb-lg-0 appear-animation\" data-appear-animation=\"fadeInLeftShorterPlus\" data-appear-animation-delay=\"500\">\r\n<div class=\"owl-carousel owl-theme nav-style-1 nav-outside nav-font-size-lg custom-nav-grey mb-0\" data-plugin-options=\"{\'responsive\': {\'576\': {\'items\': 1}, \'768\': {\'items\': 2}, \'992\': {\'items\': 1}, \'1200\': {\'items\': 2}}, \'loop\': true, \'nav\': true, \'dots\': false, \'margin\': 20}\">\r\n<div>\r\n<div class=\"card border-radius-0\"><img class=\"card-img-top border-radius-0\" src=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/authors/author-1.jpg\" alt=\"\">\r\n<div class=\"card-body text-center\">\r\n<h4 class=\"card-title font-weight-extra-bold text-color-dark text-5 mb-1\">John Doe</h4>\r\n<h3 class=\"text-color-default text-3-5 ls-0 font-weight-normal mb-2 pb-1\">CEO &amp; FOUNDER</h3>\r\n<p class=\"card-text font-weight-light\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra erat orci, ac auctor...</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"card border-radius-0\"><img class=\"card-img-top border-radius-0\" src=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/authors/author-2.jpg\" alt=\"\">\r\n<div class=\"card-body text-center\">\r\n<h4 class=\"card-title font-weight-extra-bold text-color-dark text-5 mb-1\">Janice Doe</h4>\r\n<h3 class=\"text-color-default text-3-5 ls-0 font-weight-normal mb-2 pb-1\">ARCHITECT</h3>\r\n<p class=\"card-text font-weight-light\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra erat orci, ac auctor...</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"card border-radius-0\"><img class=\"card-img-top border-radius-0\" src=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/authors/author-1.jpg\" alt=\"\">\r\n<div class=\"card-body text-center\">\r\n<h4 class=\"card-title font-weight-extra-bold text-color-dark text-5 mb-1\">John Doe</h4>\r\n<h3 class=\"text-color-default text-3-5 ls-0 font-weight-normal mb-2 pb-1\">CEO &amp; FOUNDER</h3>\r\n<p class=\"card-text font-weight-light\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc viverra erat orci, ac auctor...</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-5 col-xl-4 text-end position-relative appear-animation\" data-appear-animation=\"fadeInLeftShorterPlus\" data-appear-animation-delay=\"250\">\r\n<div class=\"position-absolute z-index-0 appear-animation\" style=\"top: 102px; right: -50px;\" data-appear-animation=\"fadeInLeftShorter\" data-appear-animation-delay=\"500\">\r\n<h2 class=\"text-color-dark custom-stroke-text-effect-1 custom-big-font-size-3 font-weight-black opacity-1 mb-0\">ARCHLIFE</h2>\r\n</div>\r\n<h2 class=\"text-color-default positive-ls-3 line-height-3 text-4 mb-2\">THE BEST PROFESSIONALS</h2>\r\n<h3 class=\"text-transform-none text-color-dark font-weight-black text-10 line-height-2 mb-4\">Meet Our Team</h3>\r\n<img class=\"img-fluid opacity-5 mb-4 mt-2\" src=\"http://127.0.0.1:8000/admin/pages/5/img/demos/architecture-2/divider.jpg\" alt=\"\">\r\n<p class=\"custom-font-tertiary text-5 line-height-4 mb-4 mt-2\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet libero</p>\r\n<p class=\"text-3-5 pb-3 mb-4\">Vestibulum auctor felis eget orci semper vestibulum. Pellentesque ultricies nibh gravida, accumsan libero luctus, molestie nunc.</p>\r\n<a class=\"btn btn-primary custom-btn-style-1 custom-btn-style-1-right font-weight-bold text-3 px-5 py-3\" href=\"http://127.0.0.1:8000/admin/pages/5/demo-architecture-2-contact.html\">CONTACT US</a></div>\r\n</div>\r\n</div>\r\n<section class=\"section parallax bg-transparent border-0 py-0 m-0\" data-plugin-parallax=\"\" data-plugin-options=\"{\'speed\': 1.5, \'scrollableParallax\': true, \'scrollableParallaxMinWidth\': 991, \'startOffset\': 13, \'cssProperty\': \'width\', \'cssValueStart\': 40, \'cssValueEnd\': 100, \'cssValueUnit\': \'vw\'}\">\r\n<div class=\"d-flex justify-content-center\">\r\n<div class=\"scrollable-parallax-wrapper bg-primary overflow-hidden\">\r\n<div class=\"container container-xl-custom custom-container-style-3 custom-container-position-1 py-5 my-5 mx-0\">\r\n<div class=\"row justify-content-center pt-3 mb-5\">\r\n<div class=\"col-sm-8 col-md-12 text-center\">\r\n<h2 class=\"text-color-light opacity-6 positive-ls-3 line-height-3 text-4 mb-3\">HAPPY CLIENTS</h2>\r\n<h3 class=\"text-transform-none text-color-light font-weight-black line-height-2 text-10 negative-ls-1 mb-0\">See What Clients Are Saying</h3>\r\n</div>\r\n</div>\r\n<div class=\"row justify-content-center pb-3\">\r\n<div class=\"col-lg-9\">\r\n<div class=\"owl-carousel owl-theme nav-style-1 nav-light nav-outside nav-font-size-lg custom-dots-style-1 custom-dots-style-1-light mb-0\" data-plugin-options=\"{\'responsive\': {\'0\': {\'items\': 1, \'nav\': false, \'dots\': true}, \'576\': {\'items\': 1, \'nav\': false, \'dots\': true}, \'768\': {\'items\': 1, \'nav\': false, \'dots\': true}, \'992\': {\'items\': 1}, \'1200\': {\'items\': 1}}, \'loop\': false, \'nav\': true, \'dots\': false}\">\r\n<div>\r\n<div class=\"testimonial testimonial-style-2 testimonial-with-quotes testimonial-remove-right-quote custom-testimonial-quote mb-0\">\r\n<blockquote>\r\n<p class=\"custom-font-secondary text-color-light opacity-8 font-weight-light line-height-6 text-4-5 px-2 px-lg-3 mb-0\"><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget risus porta, tincidunt turpis at, interdum tortor. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</em></p>\r\n</blockquote>\r\n<div class=\"testimonial-author\">\r\n<p class=\"text-color-light font-weight-bold text-4 mb-0\">John Smith</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"testimonial testimonial-style-2 testimonial-with-quotes testimonial-remove-right-quote custom-testimonial-quote mb-0\">\r\n<blockquote>\r\n<p class=\"custom-font-secondary text-color-light opacity-8 font-weight-light line-height-6 text-4-5 px-2 px-lg-3 mb-0\"><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget risus porta, tincidunt turpis at, interdum tortor. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</em></p>\r\n</blockquote>\r\n<div class=\"testimonial-author\">\r\n<p class=\"text-color-light font-weight-bold text-4 mb-0\">John Smith</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<div class=\"container container-xl-custom pb-3\">\r\n<div class=\"row align-items-center text-center py-5 my-5\">\r\n<div class=\"col-sm-4 col-xl-2 mb-5 mb-xl-0\"><img class=\"img-fluid\" style=\"max-width: 90px;\" src=\"http://127.0.0.1:8000/admin/pages/5/img/logos/logo-8.png\" alt=\"\"></div>\r\n<div class=\"col-sm-4 col-xl-2 mb-5 mb-xl-0\"><img class=\"img-fluid\" style=\"max-width: 140px;\" src=\"http://127.0.0.1:8000/admin/pages/5/img/logos/logo-9.png\" alt=\"\"></div>\r\n<div class=\"col-sm-4 col-xl-2 mb-5 mb-xl-0\"><img class=\"img-fluid\" style=\"max-width: 140px;\" src=\"http://127.0.0.1:8000/admin/pages/5/img/logos/logo-10.png\" alt=\"\"></div>\r\n<div class=\"col-sm-4 col-xl-2 mb-5 mb-lg-0\"><img class=\"img-fluid\" style=\"max-width: 140px;\" src=\"http://127.0.0.1:8000/admin/pages/5/img/logos/logo-11.png\" alt=\"\"></div>\r\n<div class=\"col-sm-4 col-xl-2 mb-5 mb-lg-0\"><img class=\"img-fluid\" style=\"max-width: 100px;\" src=\"http://127.0.0.1:8000/admin/pages/5/img/logos/logo-12.png\" alt=\"\"></div>\r\n<div class=\"col-sm-4 col-xl-2\"><img class=\"img-fluid\" style=\"max-width: 100px;\" src=\"http://127.0.0.1:8000/admin/pages/5/img/logos/logo-13.png\" alt=\"\"></div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col\">\r\n<p class=\"text-3-5 mb-4\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p class=\"text-3-5 pb-3 mb-4\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '0', 'Σχετικά με εμάς', NULL, NULL, 'about', '2023-06-28 06:55:00', '2023-07-01 14:04:25'),
(6, 'Οι συνεργάτες μας', NULL, '0', 'Οι συνεργάτες μας', NULL, NULL, 'clients', '2023-06-28 06:55:00', '2023-07-01 12:54:26'),
(7, 'Επικοινωνία', '<div class=\"custom-page-wrapper pt-5 pb-1\">\r\n<div class=\"spacer py-4 my-5\">&nbsp;</div>\r\n<div class=\"container container-xl-custom pb-5 mb-5\">\r\n<div class=\"row pb-3\">\r\n<div class=\"col-lg-6 position-relative\">\r\n<div class=\"position-absolute z-index-0 appear-animation animated fadeInRightShorter appear-animation-visible\" style=\"top: 110px; left: -206px; animation-delay: 3000ms;\" data-appear-animation=\"fadeInRightShorter\" data-appear-animation-delay=\"3000\">\r\n<h2 class=\"text-color-dark custom-stroke-text-effect-1 custom-big-font-size-1 font-weight-black opacity-1 mb-0\">YOUR PLACE</h2>\r\n</div>\r\n<div class=\"overflow-hidden mb-2\">\r\n<h2 class=\"text-color-default positive-ls-3 line-height-3 text-4 mb-0 appear-animation animated maskUp appear-animation-visible\" style=\"animation-delay: 1500ms;\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1500\">WE\'RE HERE TO HELP</h2>\r\n</div>\r\n<div class=\"overflow-hidden mb-4\">\r\n<h3 class=\"text-transform-none text-color-dark font-weight-black text-10 line-height-2 mb-0 appear-animation animated maskUp appear-animation-visible\" style=\"animation-delay: 1700ms;\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1700\">Get Your Project Done</h3>\r\n</div>\r\n<img class=\"img-fluid opacity-5 mb-4 mt-2 appear-animation animated fadeInUpShorterPlus appear-animation-visible\" style=\"animation-delay: 1900ms;\" src=\"http://127.0.0.1:8000/admin/pages/7/img/demos/architecture-2/divider.jpg\" alt=\"\" data-appear-animation=\"fadeInUpShorterPlus\" data-appear-animation-delay=\"1900\">\r\n<p class=\"custom-font-tertiary text-5 line-height-4 mb-4 mt-2 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2100ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2100\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet libero id nisi euismod, sed porta est consectetur.</p>\r\n<p class=\"text-3-5 pb-2 mb-5 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2300ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2300\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-4 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2500ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2500\">\r\n<h4 class=\"alternative-font-4 text-color-dark font-weight-bold line-height-3 text-3-5 mb-0\">Work Inquiries</h4>\r\n<a class=\"text-decoration-none text-color-default text-color-hover-primary\" href=\"tel:1234567890\">(800) 123-4567</a>\r\n<h4 class=\"alternative-font-4 text-color-dark font-weight-bold line-height-3 text-3-5 mt-4 mb-0\">Careers &amp; Press</h4>\r\n<a class=\"text-decoration-none text-color-default text-color-hover-primary\" href=\"tel:1234567890\">(800) 123-4567</a></div>\r\n<div class=\"col-lg-4 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2700ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2700\">\r\n<h4 class=\"alternative-font-4 text-color-dark font-weight-bold line-height-3 text-3-5 mt-4 mt-lg-0 mb-0\">Address</h4>\r\n<p class=\"mb-0\">12345 Porto Blvd.<br>Suite 1500<br>Los Angeles, California 90000</p>\r\n<h4 class=\"alternative-font-4 text-color-dark font-weight-bold line-height-3 text-3-5 mt-4 mb-0\">Email</h4>\r\n<a class=\"text-decoration-none text-color-default text-color-hover-primary\" href=\"mailto:mail@example.com\">mail@example.com</a></div>\r\n<div class=\"col-lg-4 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2900ms;\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2900\">\r\n<h4 class=\"alternative-font-4 text-color-dark font-weight-bold line-height-3 text-3-5 mt-4 mt-lg-0 mb-0\">Business Hours</h4>\r\n<p class=\"mb-0\">Mon - Sat 9:00am - 6:00pm<br>Sunday - CLOSED</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div class=\"overflow-hidden mb-4 mt-4\">\r\n<h3 class=\"text-transform-none text-color-dark font-weight-black text-7 line-height-2 mb-0 pt-3 appear-animation animated maskUp appear-animation-visible\" style=\"animation-delay: 2600ms;\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"2600\">Send a Message</h3>\r\n</div>\r\n<form class=\"contact-form custom-form-style-1 appear-animation animated fadeInUpShorter appear-animation-visible\" style=\"animation-delay: 2800ms;\" action=\"php/contact-form.php\" method=\"POST\" novalidate=\"novalidate\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"2800\">\r\n<div class=\"contact-form-success alert alert-success d-none mt-4\"><strong>Success!</strong> Your message has been sent to us.</div>\r\n<div class=\"contact-form-error alert alert-danger d-none mt-4\"><strong>Error!</strong> There was an error sending your message.</div>\r\n<div class=\"row\">\r\n<div class=\"form-group col mb-3\"><input value=\"\" type=\"text\" class=\"form-control border-radius-0\" required=\"\" placeholder=\"Name *\" data-msg-required=\"Please enter your name.\"></div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"form-group col mb-3\"><input id=\"email\" name=\"email\" value=\"\" type=\"email\" class=\"form-control border-radius-0\" required=\"\" placeholder=\"E-mail *\" data-msg-required=\"Please enter your email address.\" data-msg-email=\"Please enter a valid email address.\"></div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"form-group col mb-3\"><input id=\"phone\" name=\"phone\" value=\"\" type=\"text\" class=\"form-control border-radius-0\" required=\"\" placeholder=\"Phone *\" data-msg-required=\"Please enter your phone number.\"></div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"form-group col mb-4\"><textarea id=\"message\" class=\"form-control border-radius-0\" maxlength=\"5000\" name=\"message\" required=\"\" rows=\"5\" placeholder=\"Message *\" data-msg-required=\"Please enter your message.\"></textarea></div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"form-group col mb-0\"><button class=\"btn btn-primary custom-btn-style-1 font-weight-bold text-3 px-5 py-3\" type=\"submit\" data-loading-text=\"Loading...\">SUBMIT</button></div>\r\n</div>\r\n</form></div>\r\n</div>\r\n</div>\r\n</div>', '0', 'Επικοινωνία', NULL, NULL, 'contact', '2023-06-28 06:55:00', '2023-07-01 13:00:44'),
(8, 'Όροι χρήσης', NULL, '1', NULL, NULL, NULL, 'terms', '2023-07-01 09:51:00', '2023-07-01 12:21:28'),
(9, 'Προσωπικά δεδομένα', NULL, '0', NULL, NULL, NULL, 'privacy', '2023-07-01 09:51:00', '2023-07-01 12:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(2, 'browse_bread', NULL, '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(3, 'browse_database', NULL, '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(4, 'browse_media', NULL, '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(5, 'browse_compass', NULL, '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(6, 'browse_menus', 'menus', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(7, 'read_menus', 'menus', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(8, 'edit_menus', 'menus', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(9, 'add_menus', 'menus', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(10, 'delete_menus', 'menus', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(11, 'browse_roles', 'roles', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(12, 'read_roles', 'roles', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(13, 'edit_roles', 'roles', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(14, 'add_roles', 'roles', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(15, 'delete_roles', 'roles', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(16, 'browse_users', 'users', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(17, 'read_users', 'users', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(18, 'edit_users', 'users', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(19, 'add_users', 'users', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(20, 'delete_users', 'users', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(21, 'browse_settings', 'settings', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(22, 'read_settings', 'settings', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(23, 'edit_settings', 'settings', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(24, 'add_settings', 'settings', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(25, 'delete_settings', 'settings', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(26, 'browse_pages', 'pages', '2023-06-26 16:00:26', '2023-06-26 16:00:26'),
(27, 'read_pages', 'pages', '2023-06-26 16:00:26', '2023-06-26 16:00:26'),
(28, 'edit_pages', 'pages', '2023-06-26 16:00:26', '2023-06-26 16:00:26'),
(29, 'add_pages', 'pages', '2023-06-26 16:00:26', '2023-06-26 16:00:26'),
(30, 'delete_pages', 'pages', '2023-06-26 16:00:26', '2023-06-26 16:00:26'),
(31, 'browse_services', 'services', '2023-06-26 16:10:20', '2023-06-26 16:10:20'),
(32, 'read_services', 'services', '2023-06-26 16:10:20', '2023-06-26 16:10:20'),
(33, 'edit_services', 'services', '2023-06-26 16:10:20', '2023-06-26 16:10:20'),
(34, 'add_services', 'services', '2023-06-26 16:10:20', '2023-06-26 16:10:20'),
(35, 'delete_services', 'services', '2023-06-26 16:10:20', '2023-06-26 16:10:20'),
(36, 'browse_images', 'images', '2023-06-26 16:11:32', '2023-06-26 16:11:32'),
(37, 'read_images', 'images', '2023-06-26 16:11:32', '2023-06-26 16:11:32'),
(38, 'edit_images', 'images', '2023-06-26 16:11:32', '2023-06-26 16:11:32'),
(39, 'add_images', 'images', '2023-06-26 16:11:32', '2023-06-26 16:11:32'),
(40, 'delete_images', 'images', '2023-06-26 16:11:32', '2023-06-26 16:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-06-26 14:48:57', '2023-06-26 14:48:57'),
(2, 'user', 'Normal User', '2023-06-26 14:48:57', '2023-06-26 14:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ασδσαδ', 'δασδασδσδ', 'services/July2023/10AExjb4EozINFaNVaDP.png', '2023-07-01 13:02:24', '2023-07-01 13:02:24'),
(2, 'fsdfsdf', 'sffsdfdsfsd', NULL, '2023-07-01 13:08:35', '2023-07-01 13:08:35'),
(3, 'sfdgfdfg', 'gdfgdfgdf', NULL, '2023-07-01 13:08:40', '2023-07-01 13:08:40'),
(4, 'ghdf dgdfgd', 'gdf gdfgdfgdfg', NULL, '2023-07-01 13:08:46', '2023-07-01 13:08:46'),
(5, 'gdf gdfgdfg', 'gdf gdfgdfg', NULL, '2023-07-01 13:08:51', '2023-07-01 13:08:51'),
(6, 'fdgfdgd', 'h fghfghfg hfgh fghfgf', NULL, '2023-07-01 13:08:57', '2023-07-01 13:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dimitris', 'dimliarop@gmail.com', 'users/July2023/c9kAADIFOjZU0ndSDV5M.png', NULL, '$2y$10$TYdb9mweRFGDrjgiRw8kHeCe9W2cYeBUHGpcgC9FzxBSt3mIu9lrW', NULL, '{\"locale\":\"en\"}', '2023-06-26 14:50:27', '2023-07-01 08:01:31'),
(2, 1, 'george', 'test@test.com', 'users/default.png', NULL, '$2y$10$toiWwukbGegGGMmiHgya6.Rv4D/WQwqqtoxndTafLDa479PC76WWK', NULL, NULL, '2023-06-28 06:36:05', '2023-06-28 06:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
