-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 23, 2025 at 10:03 AM
-- Server version: 8.0.41
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blobartdesign`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0001_01_01_000003_create_pages_table', 2),
(5, '0001_01_01_000004_create_sections_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_tr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` int DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `url`, `display_name`, `display_name_tr`, `page_id`, `is_home`, `created_at`, `updated_at`) VALUES
(1, '', 'HOME', 'ANASAYFA', 0, 1, NULL, '2025-01-13 06:21:43'),
(3, 'hakkimizda', 'ABOUT', 'HAKKİMİZDA', NULL, 0, '2024-12-25 07:02:14', '2025-01-13 06:22:07'),
(4, 'projeler', 'PROJECTS', 'PROJELER', NULL, 0, '2024-12-26 05:29:38', '2025-01-13 06:22:23'),
(5, 'proje-ekibi', 'PROJECT TEAM', 'PROJE EKİBİ', NULL, 0, '2024-12-26 05:30:01', '2025-01-13 06:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@email.com', '$2y$12$spUloWaZ5jDujCRl5G.w6.r5jiRhdsb3x5QeCWSvvTOiLv6i0nWLG', '2024-12-19 07:54:17'),
('tobioluwole444@gmail.com', '$2y$12$Z02hplLE7bDOyvS0dgpwlOUmTK16VtQycrbOFRCYYVUn5I5.Xx11G', '2025-01-08 05:58:49'),
('tobioluwole69@gmail.com', '$2y$12$mdSP1lSdH63Rzvf3tMwniur8OboP1epiJBSYFOQDJd2LkHnz6Tt9q', '2024-12-19 08:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `page_id`, `sort_id`, `content`, `type`, `created_at`, `updated_at`) VALUES
(20, '1', 0, '[{\"image\":\"\\/storage\\/uploads\\/sections\\/section_20_slide_0_0_i09352308f911da125c84d36afad100b.jpeg\",\"text_en\":\"HOUSING PROJECTS\",\"text_tr\":\"KONUT PROJELER\\u0130\"},{\"image\":\"\\/storage\\/uploads\\/sections\\/section_20_slide_1_0_o09352308f911da125c84d36afad100b.jpeg\",\"text_en\":\"HEAD OFFICE AND HOUSING PROJECTS\",\"text_tr\":\"MERKEZ OF\\u0130S VE KONUT PROJELER\\u0130\"},{\"image\":\"\\/storage\\/uploads\\/sections\\/section_20_slide_2_0_f09352308f911da125c84d36afad100b.jpeg\",\"text_en\":\"BANK SHOWROOM AND HOSING PROJECTS\",\"text_tr\":\"BANKA SHOWROOM VE KONUT PROJELER\\u0130\"},{\"image\":\"\\/storage\\/uploads\\/sections\\/section_20_slide_3_0_f09352308f911da125c84d36afad100b.jpeg\",\"text_en\":\"FILM STUDIO PROJECTS\",\"text_tr\":\"F\\u0130LM ST\\u00dcDIOSU PROJELER\\u0130\"}]', 'hero', '2025-01-03 05:52:00', '2025-01-10 11:16:01'),
(22, '3', 1, '{\"text_en\":\"<h1>ABOUT<\\/h1><p><br><\\/p><p>The office, which handles the architectural design process in line with the criteria of place, time and quality, has made it its mission to design innovative, dynamic and sustainable modern structures.<\\/p><p><br><\\/p><p>Each design has adopted the principle of combining nature and holistic concept artistic qualities with ethical and cultural values.<\\/p><p><br><\\/p><p>They have been involved in major projects with effective, unique and innovative designs.<\\/p>\",\"text_tr\":\"<h1>HAKKIMIZDA<\\/h1><p><br><\\/p><p>Mimari projelendirme s\\u00fcrecini, yer, zaman ve nitelik kriterleri do\\u011frultusunda ele alan ofis yenilik\\u00e7i, dinamik ve s\\u00fcrd\\u00fcr\\u00fclebilir modern yap\\u0131lar tasarlamay\\u0131 misyon edinmi\\u015f.<\\/p><p><br><\\/p><p>Her bir tasar\\u0131m do\\u011fa ile b\\u00fct\\u00fcnsel konsept sanatsal nitelikleri etik, k\\u00fclt\\u00fcrel de\\u011ferlerle birle\\u015ftirmeyi prensip edinmi\\u015ftir.<\\/p><p><br><\\/p><p>Etkili, benzersiz ve yenilik\\u00e7i tasar\\u0131mlar ile b\\u00fcy\\u00fck projelerde yer alm\\u0131\\u015flard\\u0131r.<\\/p>\"}', 'text', '2025-01-03 05:54:38', '2025-01-23 10:00:36'),
(23, '4', 1, '{\"title_en\":\"All Projects\",\"title_tr\":\"T\\u00fcm Projeler\",\"galleries\":[{\"name_en\":\"BANKING SHOWROOM AND HOUSING PROJECT\",\"name_tr\":\"BANKA SHOWROOM VE KONUT PROJES\\u0130\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_0_0_d1d74d6643267543f57790bf7416033d.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_0_1_o1d74d6643267543f57790bf7416033d.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_0_2_n1d74d6643267543f57790bf7416033d.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_0_3_t1d74d6643267543f57790bf7416033d.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_0_4_h1d74d6643267543f57790bf7416033d.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_0_5_j1d74d6643267543f57790bf7416033d.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_0_6_m1d74d6643267543f57790bf7416033d.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_0_7_f1d74d6643267543f57790bf7416033d.jpeg\"]},{\"name_en\":\"HEAD OFFICE AND HOUSING PROJECT\",\"name_tr\":\"MARKEZ OF\\u0130S VE KONUT PROJES\\u0130\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_1_0_k02191adf21e14273339a6133c60dbbd.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_1_1_c02191adf21e14273339a6133c60dbbd.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_1_2_k02191adf21e14273339a6133c60dbbd.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_1_3_u02191adf21e14273339a6133c60dbbd.jpeg\"]},{\"name_en\":\"ZIYAMET WEDDING HALL PROJECT\",\"name_tr\":\"Z\\u0130YAMET D\\u00dc\\u011e\\u00dcN SALONU PROJES\\u0130\",\"group_name_en\":\"public\",\"group_name_tr\":\"kamusal\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_2_0_z1bc940f6126298dd304921977f2a6cc.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_2_1_m1bc940f6126298dd304921977f2a6cc.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_2_2_b1bc940f6126298dd304921977f2a6cc.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_2_3_e1bc940f6126298dd304921977f2a6cc.jpeg\"]},{\"name_en\":\"VILLA PROJECT\",\"name_tr\":\"V\\u0130LLA PROJES\\u0130\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_3_0_rc02d87e4a60acb72487444ec431fe27.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_3_1_sc02d87e4a60acb72487444ec431fe27.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_3_2_yc02d87e4a60acb72487444ec431fe27.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_3_3_gc02d87e4a60acb72487444ec431fe27.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_3_4_xc02d87e4a60acb72487444ec431fe27.jpeg\"]},{\"name_en\":\"YOUTH CENTER AND SOCIAL ACTIVITY CENTER PROJECT\",\"name_tr\":\"GEN\\u00c7L\\u0130K MERKEZ\\u0130 VE SOSYAL AKT\\u0130V\\u0130TE MERKEZ\\u0130 PROJES\\u0130\",\"group_name_en\":\"public\",\"group_name_tr\":\"kamusal\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_4_0_x7910589a97e291b9050cad3c27532e1.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_4_1_c7910589a97e291b9050cad3c27532e1.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_4_2_t7910589a97e291b9050cad3c27532e1.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_4_3_i7910589a97e291b9050cad3c27532e1.jpeg\"]},{\"name_en\":\"CONCEPT HOLIDAY VILLAGE PROJECT\",\"name_tr\":\"KONSEPT TAT\\u0130L K\\u00d6Y\\u00dc PROJES\\u0130\",\"group_name_en\":\"hotel\",\"group_name_tr\":\"otel\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_5_0_ne2fce55db04dc0abe0b77471956da99.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_5_1_ae2fce55db04dc0abe0b77471956da99.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_5_2_be2fce55db04dc0abe0b77471956da99.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_5_3_je2fce55db04dc0abe0b77471956da99.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_5_4_we2fce55db04dc0abe0b77471956da99.jpeg\"]},{\"name_en\":\"VILLA PROJECT 3\",\"name_tr\":\"V\\u0130LLA PROJES\\u0130 3\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_6_0_x64ed49e6493d051b4695986f96bc5dd.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_6_1_o64ed49e6493d051b4695986f96bc5dd.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_6_2_k64ed49e6493d051b4695986f96bc5dd.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_6_3_j64ed49e6493d051b4695986f96bc5dd.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_6_4_t64ed49e6493d051b4695986f96bc5dd.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_6_5_h64ed49e6493d051b4695986f96bc5dd.jpeg\"]},{\"name_en\":\"VILLA PROJECT 2\",\"name_tr\":\"V\\u0130LLA PROJES\\u0130 2\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_0_o93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_1_c93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_2_i93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_3_j93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_4_r93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_5_e93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_6_k93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_7_m93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_8_n93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_9_q93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_7_10_r93e3de06beb7eb4e85ab54a9fc51cc6.jpeg\"]},{\"name_en\":\"VILLA PROJECT 1\",\"name_tr\":\"V\\u0130LLA PROJES\\u0130 1\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_9_0_j22b1bf8fe6e5c10a1a595a9d2712229.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_9_1_i22b1bf8fe6e5c10a1a595a9d2712229.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_9_2_y22b1bf8fe6e5c10a1a595a9d2712229.jpeg\"]},{\"name_en\":\"VILLA PROJECT\",\"name_tr\":\"V\\u0130LLA PROJES\\u0130\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_0_w30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_1_l30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_2_y30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_3_k30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_4_f30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_5_o30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_6_p30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_7_z30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_8_w30edf2573073e5340ca42506d2c17c4.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_8_9_v30edf2573073e5340ca42506d2c17c4.jpeg\"]},{\"name_en\":\"HOLIDAY VILLAGE AND RESTURANT PROJECT\",\"name_tr\":\"TAT\\u0130L K\\u00d6Y\\u00dc VE RESTAURANT PROJES\\u0130\",\"group_name_en\":\"hotel\",\"group_name_tr\":\"otel\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_10_0_w718f93d62997212dd2538bd6749d34f.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_10_1_d718f93d62997212dd2538bd6749d34f.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_10_2_a718f93d62997212dd2538bd6749d34f.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_10_3_q718f93d62997212dd2538bd6749d34f.jpeg\"]},{\"name_en\":\"SHOWROOM PROEJCT\",\"name_tr\":\"SHOWROOM PROJES\\u0130\",\"group_name_en\":\"commercial\",\"group_name_tr\":\"ticari\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_11_0_kd1ece4e38bd75da7ff0121bfb0f7cfb.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_11_1_pd1ece4e38bd75da7ff0121bfb0f7cfb.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_11_2_nd1ece4e38bd75da7ff0121bfb0f7cfb.jpeg\"]},{\"name_en\":\"FILM STUDIO PROJECT\",\"name_tr\":\"F\\u0130LM ST\\u00dcDYOSU PROJES\\u0130\",\"group_name_en\":\"education\",\"group_name_tr\":\"e\\u011fitim\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_12_0_ea93ed1a6a8fb43955b2faf0718d8a50.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_12_1_na93ed1a6a8fb43955b2faf0718d8a50.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_12_2_ba93ed1a6a8fb43955b2faf0718d8a50.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_12_3_da93ed1a6a8fb43955b2faf0718d8a50.jpeg\"]},{\"name_en\":\"BOUTIQUE HOTEL PROJECT\",\"name_tr\":\"BUT\\u0130K OTEL PROJES\\u0130\",\"group_name_en\":\"hotel\",\"group_name_tr\":\"otel\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_13_0_e1744cc41f3646fd18fef03fe0e60579.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_13_1_t1744cc41f3646fd18fef03fe0e60579.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_13_2_i1744cc41f3646fd18fef03fe0e60579.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_13_3_u1744cc41f3646fd18fef03fe0e60579.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_13_4_s1744cc41f3646fd18fef03fe0e60579.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_13_5_x1744cc41f3646fd18fef03fe0e60579.jpeg\"]},{\"name_en\":\"LIBRARY PROJECT\",\"name_tr\":\"K\\u00dcT\\u00dcPHANE PROJES\\u0130\",\"group_name_en\":\"education\",\"group_name_tr\":\"e\\u011fitim\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_14_0_h57f3917bd07176237c7e8f27b4ab834.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_14_1_o57f3917bd07176237c7e8f27b4ab834.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_14_2_h57f3917bd07176237c7e8f27b4ab834.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_14_3_b57f3917bd07176237c7e8f27b4ab834.jpeg\"]},{\"name_en\":\"BOUTIQUE HOTEL  PROJECT\",\"name_tr\":\"BUT\\u0130K OTEL  PROJES\\u0130\",\"group_name_en\":\"hotel\",\"group_name_tr\":\"otel\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_15_0_tcac4477427b72fd2ad2062d3e434c58.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_15_1_hcac4477427b72fd2ad2062d3e434c58.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_15_2_ocac4477427b72fd2ad2062d3e434c58.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_15_3_zcac4477427b72fd2ad2062d3e434c58.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_15_4_zcac4477427b72fd2ad2062d3e434c58.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_15_5_pcac4477427b72fd2ad2062d3e434c58.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_15_6_ocac4477427b72fd2ad2062d3e434c58.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_15_7_tcac4477427b72fd2ad2062d3e434c58.jpeg\"]},{\"name_en\":\"AL\\u00c7IDA\\u011e APARTMENT PROJECT\",\"name_tr\":\"AL\\u00c7IDA\\u011e APARTMAN PROJES\\u0130\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_16_0_cdce6051ef526b091d4ad3f26095da48.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_16_1_ddce6051ef526b091d4ad3f26095da48.jpeg\",\"\\/storage\\/uploads\\/sections\\/section_23_slide_16_2_zdce6051ef526b091d4ad3f26095da48.jpeg\"]},{\"name_en\":\"CENG\\u0130ZKOY APARTMENT PROJECT\",\"name_tr\":\"CENG\\u0130ZK\\u00d6Y APARTMAN PROJES\\u0130\",\"group_name_en\":\"housing\",\"group_name_tr\":\"konut\",\"images\":[\"\\/storage\\/uploads\\/sections\\/section_23_slide_17_0_x3fd823262cb357b48ef22c002878cf7.jpeg\"]}]}', 'gallery', '2025-01-03 05:56:24', '2025-01-07 04:36:56'),
(24, '5', 0, '{\"image\":\"\\/storage\\/uploads\\/sections\\/section_24_slide_0_0.jpeg\"}', 'banner', '2025-01-03 05:57:11', '2025-01-23 09:44:01'),
(25, '5', 1, '{\"title_en\":\"Our Team\",\"title_tr\":\"Ek\\u0130b\\u0130m\\u0130z\",\"members\":[{\"name\":\"P\\u0131nar \\u015ea\\u015fmaz Kavas\",\"position_en\":\"Master Architect, Co-Founder\",\"position_tr\":\"Y\\u00fcksek Mimar, Kurucu Ortak\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_0_0_d390825698a48287364b1b11a7d35134.jpeg\"},{\"name\":\"Mehmet Aktun\\u00e7\",\"position_en\":\"Architect, Co-Founder\",\"position_tr\":\"Mimar, Kurucu Ortak\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_1_0_j60c03561d7caf175b8b94b9a9ab193e.jpeg\"},{\"name\":\"Beyza \\u00c7o\\u015flu\",\"position_en\":\"Architect\",\"position_tr\":\"Mimar\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_2_0_kefa3d361b271ecdaeac62d0e65ff78e.jpeg\"},{\"name\":\"ZEYN\\u0130 AL\\u0130C\\u0130K S\\u00d6NMEZLER\",\"position_en\":\"Interior Architect\",\"position_tr\":\"I\\u0307\\u00e7 Mi\\u0307mar\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_3_0_dd8424c7fbbbfd5807898829f630d5cb.png\"},{\"name\":\"CEMAL AKTUN\\u00c7\",\"position_en\":\"Architect\",\"position_tr\":\"Mimar\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_4_0_yb16014673aee0efb496a75098194873.jpeg\"},{\"name\":\"AKIN AKTUN\\u00c7\",\"position_en\":\"Civil Engineer\",\"position_tr\":\"I\\u0307n\\u015faat M\\u00fchendi\\u0307si\\u0307\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_5_0_y4c849ad42f51e4b09f0a7b72d2f6eb8.jpeg\"},{\"name\":\"Tun\\u00e7 Karkuto\\u011flu\",\"position_en\":\"Master Architect\",\"position_tr\":\"Y\\u00fcksek Mimar\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_6_0_lb886de5276afd4607257701a61f45e9.jpeg\"},{\"name\":\"E\\u015fref G\\u00fcnerman\",\"position_en\":\"Architect, Master Interior Architect\",\"position_tr\":\"Mimar, Y\\u00fcksek \\u0130\\u00e7 Mimar\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_7_0_f66ba1acdc2a8d4fcea6c73e960ec427.jpeg\"},{\"name\":\"Ya\\u011fmur Andreou<nl>(IONIC STUDIO)\",\"position_en\":\"Interior Architecture Consultant , Master Interior Architect\",\"position_tr\":\"\\u0130\\u00e7 Mimari Dan\\u0131\\u015fman , Y\\u00fcksek \\u0130\\u00e7 Mimar\",\"image\":\"\\/storage\\/uploads\\/sections\\/section_25_slide_8_0_e8247f9fa7a90911f39ed1064dd7147e.jpeg\"}]}', 'team', '2025-01-03 05:57:11', '2025-01-23 09:44:01'),
(26, '3', 0, '{\"image\":\"\\/storage\\/uploads\\/sections\\/section_temp_slide_0_0_ze96b36394df780c77cfb69f7efc549d.jpeg\"}', 'banner', '2025-01-06 06:45:22', '2025-01-23 10:00:36'),
(27, '3', 2, '{\"text_en\":\"<h1>MISSION<\\/h1><p><br><\\/p><p>To determine the principles of contemporary architecture as a design principle and to design architectural and interior spaces by blending the needs of investors and users with aesthetic and material requirements with an empathetic approach.<\\/p>\",\"text_tr\":\"<h1>M\\u0130SYON<\\/h1><p><br><\\/p><p>\\u00c7a\\u011fda\\u015f mimarl\\u0131k ilkelerini tasar\\u0131m prensibi olarak belirleyip, empatik yakla\\u015f\\u0131mla yat\\u0131r\\u0131mc\\u0131 ve kullan\\u0131c\\u0131 ihtiya\\u00e7lar\\u0131n\\u0131 estetik ve malzeme gereklilikleri ile harmanlay\\u0131p mimari ve i\\u00e7 mekan tasar\\u0131m\\u0131 yapmak.<\\/p>\"}', 'text', '2025-01-06 06:55:39', '2025-01-23 10:00:36'),
(28, '3', 3, '{\"text_en\":\"<h1>VISION<\\/h1><p><br><\\/p><p>To undertake projects across the country with a holistic approach in many different areas from hotels, hospitals, residences to offices, and to follow the requirements of the age and technology while doing this and to constantly renew.<\\/p>\",\"text_tr\":\"<h1>V\\u0130ZYON<\\/h1><p><br><\\/p><p>Otelden, hastaneye, konuttan ofise pek \\u00e7ok farkl\\u0131 alanda b\\u00fct\\u00fcnc\\u00fcl yakla\\u015f\\u0131mla t\\u00fcm \\u00fclke \\u00e7ap\\u0131nda projelere imza atmak ve bunu ger\\u00e7ekle\\u015ftirirken \\u00e7a\\u011f\\u0131n ve teknolojinin gereklerini takip edip s\\u00fcrekli yenilenmektir.<\\/p><p><br><\\/p>\"}', 'text', '2025-01-06 06:55:39', '2025-01-23 10:00:36'),
(29, '4', 0, '{\"image\":\"\\/storage\\/uploads\\/sections\\/section_temp_slide_0_0_cde1a981a827d23a8fe0958ba71fd719.jpeg\"}', 'banner', '2025-01-06 07:04:08', '2025-01-07 04:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dbBxBc0nhUiFPpFotJlbzdovIXzZ7lbsPmtQ7hNB', NULL, '172.18.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXVsbzJNTkE1WjdmbVJlNW11ZDZockp5Y2k4S0FZNEpQWkFacVZ2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvcGFnZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737626577);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location_link` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '#',
  `facebook` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '#',
  `twitter` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '#',
  `instagram` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '#',
  `linkedin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT '#',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `phone`, `email`, `address`, `location_link`, `facebook`, `twitter`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, '+(90) 542 889 19 05', 'info@blobartdesign.com', '5 Meşe Sokak, Küçük Kaymaklı Lefkoşa', 'https://goo.gl/maps/zugKrxxBVvr7nmab9', 'https://www.facebook.com/profile.php?id=100064944105122', NULL, 'https://www.instagram.com/blobartdesign/', NULL, '2024-12-26 08:30:38', '2024-12-26 10:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'tobioluwole444@gmail.com', '$2y$12$gzd45JQCEP0ie9fJ0RJgSuP.DMu43V53R9/ZiSZE4oi93VLHt1/RC', NULL, NULL, '2024-12-19 11:41:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_url_unique` (`url`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
