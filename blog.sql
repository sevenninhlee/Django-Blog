-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2018 at 11:36 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('54e8ef48e2af259053b5715c88e3fb94a22cb206', '2018-07-20 06:28:23.189178', 2),
('9619508868c00caa4f4d9d974239cf240c4e6093', '2018-07-13 02:30:05.841391', 1),
('9a01eb13c7610b5d927b437b643cd89d0aaaeef5', '2018-07-13 03:23:24.640963', 3),
('9c1d3c9bb35c5a6972cf9c9b4b7f99dbbb9431b5', '2018-07-20 06:28:15.371736', 23);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add user', 1, 'add_user'),
(2, 'Can change user', 1, 'change_user'),
(3, 'Can delete user', 1, 'delete_user'),
(4, 'Can add user', 2, 'add_userbase'),
(5, 'Can change user', 2, 'change_userbase'),
(6, 'Can delete user', 2, 'delete_userbase'),
(7, 'Can add category', 3, 'add_category'),
(8, 'Can change category', 3, 'change_category'),
(9, 'Can delete category', 3, 'delete_category'),
(10, 'Can add comment', 4, 'add_comment'),
(11, 'Can change comment', 4, 'change_comment'),
(12, 'Can delete comment', 4, 'delete_comment'),
(13, 'Can add post', 5, 'add_post'),
(14, 'Can change post', 5, 'change_post'),
(15, 'Can delete post', 5, 'delete_post'),
(16, 'Can add log entry', 6, 'add_logentry'),
(17, 'Can change log entry', 6, 'change_logentry'),
(18, 'Can delete log entry', 6, 'delete_logentry'),
(19, 'Can add permission', 7, 'add_permission'),
(20, 'Can change permission', 7, 'change_permission'),
(21, 'Can delete permission', 7, 'delete_permission'),
(22, 'Can add group', 8, 'add_group'),
(23, 'Can change group', 8, 'change_group'),
(24, 'Can delete group', 8, 'delete_group'),
(25, 'Can add content type', 9, 'add_contenttype'),
(26, 'Can change content type', 9, 'change_contenttype'),
(27, 'Can delete content type', 9, 'delete_contenttype'),
(28, 'Can add session', 10, 'add_session'),
(29, 'Can change session', 10, 'change_session'),
(30, 'Can delete session', 10, 'delete_session'),
(31, 'Can add Token', 11, 'add_token'),
(32, 'Can change Token', 11, 'change_token'),
(33, 'Can delete Token', 11, 'delete_token'),
(34, 'Can add musician', 12, 'add_musician'),
(35, 'Can change musician', 12, 'change_musician'),
(36, 'Can delete musician', 12, 'delete_musician'),
(37, 'Can add album', 13, 'add_album'),
(38, 'Can change album', 13, 'change_album'),
(39, 'Can delete album', 13, 'delete_album');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-07-13 02:10:29.699335', '1', 'nguyentungducbk@gmail.com', 2, '[{\"changed\": {\"fields\": [\"username\", \"like\"]}}]', 2, 1),
(2, '2018-07-13 02:13:43.236632', '1', 'nguyentungducbk@gmail.com', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 2, 1),
(3, '2018-07-13 02:30:05.841850', '9619508868c00caa4f4d9d974239cf240c4e6093', '9619508868c00caa4f4d9d974239cf240c4e6093', 1, '[{\"added\": {}}]', 11, 1),
(4, '2018-07-13 03:23:24.641463', '9a01eb13c7610b5d927b437b643cd89d0aaaeef5', '9a01eb13c7610b5d927b437b643cd89d0aaaeef5', 1, '[{\"added\": {}}]', 11, 3),
(5, '2018-07-13 03:25:10.938344', '3', 'a@gmail.com', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 2, 3),
(6, '2018-07-13 08:16:58.405578', '2', 'duc1', 2, '[{\"changed\": {\"fields\": [\"like\"]}}]', 2, 3),
(7, '2018-07-13 08:17:10.731814', '2', 'duc1', 2, '[{\"changed\": {\"fields\": [\"like\"]}}]', 2, 3),
(8, '2018-07-13 08:17:19.990023', '2', 'duc1', 2, '[{\"changed\": {\"fields\": [\"like\"]}}]', 2, 3),
(9, '2018-07-13 08:17:30.922962', '2', 'duc1', 2, '[{\"changed\": {\"fields\": [\"like\"]}}]', 2, 3),
(10, '2018-07-13 08:17:37.521199', '2', 'duc1', 2, '[{\"changed\": {\"fields\": [\"like\"]}}]', 2, 3),
(11, '2018-07-13 08:17:43.305823', '2', 'duc1', 2, '[{\"changed\": {\"fields\": [\"like\"]}}]', 2, 3),
(12, '2018-07-13 08:17:49.690366', '2', 'duc1', 2, '[{\"changed\": {\"fields\": [\"like\"]}}]', 2, 3),
(13, '2018-07-13 08:18:52.828295', '2', 'duc1', 2, '[]', 2, 3),
(14, '2018-07-19 09:59:03.684191', '4', '', 3, '', 2, 3),
(15, '2018-07-20 01:27:36.548404', '6', '', 3, '', 2, 3),
(16, '2018-07-20 01:39:37.958126', '9', '', 3, '', 2, 3),
(17, '2018-07-20 02:33:49.848056', '18', '', 3, '', 2, 3),
(18, '2018-07-20 06:20:16.412627', '21', '', 3, '', 2, 3),
(19, '2018-07-20 06:20:43.115602', '2', 'duc1', 2, '[{\"changed\": {\"fields\": [\"last_name\"]}}]', 2, 3),
(20, '2018-07-20 06:22:19.782116', '23', 'user', 1, '[{\"added\": {}}]', 2, 3),
(21, '2018-07-20 06:22:41.164397', '23', 'user', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 2, 3),
(22, '2018-07-20 06:23:23.835548', '23', 'user', 2, '[{\"changed\": {\"fields\": [\"is_active\"]}}]', 2, 3),
(23, '2018-07-20 06:23:48.132374', '23', 'user', 2, '[{\"changed\": {\"fields\": [\"is_active\", \"is_staff\"]}}]', 2, 3),
(24, '2018-07-20 06:25:43.605934', '23', 'user', 2, '[]', 2, 3),
(25, '2018-07-20 06:28:00.553624', '9619508868c00caa4f4d9d974239cf240c4e6093', '9619508868c00caa4f4d9d974239cf240c4e6093', 2, '[{\"changed\": {\"fields\": [\"user\"]}}]', 11, 3),
(26, '2018-07-20 06:28:08.406636', '9619508868c00caa4f4d9d974239cf240c4e6093', '9619508868c00caa4f4d9d974239cf240c4e6093', 2, '[{\"changed\": {\"fields\": [\"user\"]}}]', 11, 3),
(27, '2018-07-20 06:28:15.372130', '9c1d3c9bb35c5a6972cf9c9b4b7f99dbbb9431b5', '9c1d3c9bb35c5a6972cf9c9b4b7f99dbbb9431b5', 1, '[{\"added\": {}}]', 11, 3),
(28, '2018-07-20 06:28:23.189716', '54e8ef48e2af259053b5715c88e3fb94a22cb206', '54e8ef48e2af259053b5715c88e3fb94a22cb206', 1, '[{\"added\": {}}]', 11, 3),
(29, '2018-07-20 06:29:34.952192', '23', 'duc1@gmail.com', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 2, 3),
(30, '2018-07-20 06:29:43.356599', '2', 'duc@gmail.com', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 2, 3),
(31, '2018-07-20 07:19:58.643672', '24', '', 3, '', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'admin', 'logentry'),
(8, 'auth', 'group'),
(7, 'auth', 'permission'),
(11, 'authtoken', 'token'),
(9, 'contenttypes', 'contenttype'),
(13, 'login', 'album'),
(12, 'login', 'musician'),
(1, 'login', 'user'),
(3, 'posts', 'category'),
(4, 'posts', 'comment'),
(5, 'posts', 'post'),
(2, 'posts', 'userbase'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-07-12 09:52:41.857090'),
(2, 'contenttypes', '0002_remove_content_type_name', '2018-07-12 09:52:43.060990'),
(3, 'auth', '0001_initial', '2018-07-12 09:52:46.883179'),
(4, 'auth', '0002_alter_permission_name_max_length', '2018-07-12 09:52:47.696998'),
(5, 'auth', '0003_alter_user_email_max_length', '2018-07-12 09:52:47.752373'),
(6, 'auth', '0004_alter_user_username_opts', '2018-07-12 09:52:47.808191'),
(7, 'auth', '0005_alter_user_last_login_null', '2018-07-12 09:52:47.861466'),
(8, 'auth', '0006_require_contenttypes_0002', '2018-07-12 09:52:47.908182'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2018-07-12 09:52:47.964122'),
(10, 'auth', '0008_alter_user_username_max_length', '2018-07-12 09:52:48.005781'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2018-07-12 09:52:48.052248'),
(12, 'posts', '0001_initial', '2018-07-12 09:53:01.668884'),
(13, 'admin', '0001_initial', '2018-07-12 09:53:03.552381'),
(14, 'admin', '0002_logentry_remove_auto_add', '2018-07-12 09:53:03.617450'),
(15, 'authtoken', '0001_initial', '2018-07-12 09:53:04.757354'),
(16, 'authtoken', '0002_auto_20160226_1747', '2018-07-12 09:53:05.760055'),
(17, 'login', '0001_initial', '2018-07-12 09:53:06.070866'),
(18, 'login', '0002_auto_20180628_1533', '2018-07-12 09:53:06.654792'),
(19, 'login', '0003_user_username', '2018-07-12 09:53:07.201359'),
(20, 'sessions', '0001_initial', '2018-07-12 09:53:07.756724'),
(21, 'login', '0004_auto_20180716_0346', '2018-07-16 03:47:37.643457'),
(22, 'posts', '0002_auto_20180716_0709', '2018-07-16 07:09:31.574165'),
(23, 'posts', '0003_remove_post_like', '2018-07-18 04:52:51.779593'),
(24, 'posts', '0004_auto_20180719_0830', '2018-07-19 08:31:08.670157');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6imldt74hctg614gq52rb00ctbzy496q', 'MTRhZjJhMzgwMjBlODc3ZjFlOWU4Y2M2OWQ0Y2RjNzU3OGU2YzI0Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODY0NDI2ZTNkZWIzOWIzNGIwMzIzZDY3MzAzNTg5NzE1NmJjMWYwIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwMCwidXNlckluZm8iOiJkdWMifQ==', '2018-08-09 13:43:51.253878'),
('6qa676hwh3rf6vkez3y60qxa164q1ku7', 'MjM0NDlmOTUzNWZkNjI2ZjBkYTA1ZjA4NDAzYTZiNjQzMGI3N2JlMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODY0NDI2ZTNkZWIzOWIzNGIwMzIzZDY3MzAzNTg5NzE1NmJjMWYwIn0=', '2018-07-27 03:15:15.997389'),
('effrywq5e4fd5oilrxvag05o73ciomob', 'MjM0NDlmOTUzNWZkNjI2ZjBkYTA1ZjA4NDAzYTZiNjQzMGI3N2JlMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODY0NDI2ZTNkZWIzOWIzNGIwMzIzZDY3MzAzNTg5NzE1NmJjMWYwIn0=', '2018-08-03 06:27:25.900815'),
('okz2g9n5x53z2g0bigrv71v4h02o1670', 'MjM0NDlmOTUzNWZkNjI2ZjBkYTA1ZjA4NDAzYTZiNjQzMGI3N2JlMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODY0NDI2ZTNkZWIzOWIzNGIwMzIzZDY3MzAzNTg5NzE1NmJjMWYwIn0=', '2018-07-31 03:30:29.892459'),
('pw40gxrfekzxkmfcwepbz3jj51d2714w', 'MjM0NDlmOTUzNWZkNjI2ZjBkYTA1ZjA4NDAzYTZiNjQzMGI3N2JlMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODY0NDI2ZTNkZWIzOWIzNGIwMzIzZDY3MzAzNTg5NzE1NmJjMWYwIn0=', '2018-08-02 04:27:19.074136'),
('qfmoyg12n1xu5e1zuz7we9qyxi1ghx3g', 'MjM0NDlmOTUzNWZkNjI2ZjBkYTA1ZjA4NDAzYTZiNjQzMGI3N2JlMzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODY0NDI2ZTNkZWIzOWIzNGIwMzIzZDY3MzAzNTg5NzE1NmJjMWYwIn0=', '2018-08-06 04:38:13.561845');

-- --------------------------------------------------------

--
-- Table structure for table `login_album`
--

CREATE TABLE `login_album` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `num_stars` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_musician`
--

CREATE TABLE `login_musician` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `instrument` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `role`, `username`) VALUES
(1, 'duc', 'aaaaaaaa', 'a@gmail.com', '01263779335', '1', 1, 'duc'),
(3, 'duc', 'aaaaaa', 'a@gmail.com', '01263779335', '2', 1, 'duc'),
(4, 'duc', 'aaaaaa', 'a@gmail.com', '01263779335', '1', 2, 'duc');

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE `posts_category` (
  `id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_category`
--

INSERT INTO `posts_category` (`id`, `name`) VALUES
(1, 'Thời sự'),
(2, 'Góc nhìn'),
(3, 'Thế giới'),
(4, 'Kinh doanh'),
(5, 'Bóng đá');

-- --------------------------------------------------------

--
-- Table structure for table `posts_comment`
--

CREATE TABLE `posts_comment` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `new_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_comment`
--

INSERT INTO `posts_comment` (`id`, `content`, `fullname`, `new_id`, `parent_id`) VALUES
(1, 'fghjk', 'fghjkl', 1, NULL),
(2, 'aaaaaaaaaaa', 'this is username', 6, NULL),
(3, 'aaaaaaaaaaa', 'this is username', 6, NULL),
(5, 'aaaaaaaaaa', 'nguyen tung duc', 6, NULL),
(6, 'aaaaaaaaaa', 'nguyen tung duc', 6, NULL),
(7, 'vvvvvvvvvv', 'nguyen tung duc', 6, NULL),
(9, 'vvvvvvvvvv', 'nguyen tung duc', 6, NULL),
(11, 'gfdaf', 'nguyen tung duc', 6, NULL),
(26, 'fafavavVA', 'nguyen tung duc', 2, NULL),
(27, 'fafavavVA', 'nguyen tung duc', 2, NULL),
(28, 'vvvvvvvvvvvv', 'nguyen tung duc', 2, NULL),
(29, 'vavaav', 'nguyen tung duc', 2, NULL),
(34, 'aafafaf', 'nguyen tung duc', 2, NULL),
(35, 'aaf', 'nguyen tung duc', 2, NULL),
(36, 'aaf', 'nguyen tung duc', 2, NULL),
(37, 'afafaf', 'nguyen tung duc', 2, NULL),
(38, 'afafafaf', 'nguyen tung duc', 1, NULL),
(39, 'sgsgsg', 'nguyen tung duc', 1, NULL),
(40, 'afafafafaf', 'nguyen tung duc', 1, NULL),
(41, 'aaaaaaaaaaaf', 'nguyen tung duc', 1, NULL),
(42, 'fafaafaf', 'nguyen tung duc', 1, NULL),
(43, 'afafaf', 'nguyen tung duc', 1, NULL),
(44, 'afafaf', 'nguyen tung duc', 1, NULL),
(45, 'fafsgsg', 'nguyen tung duc', 1, NULL),
(46, 'afafafaf', 'nguyen tung duc', 1, NULL),
(47, 'fafafaf', 'nguyen tung duc', 1, NULL),
(48, 'aaaaaaa', 'nguyen tung duc', 1, NULL),
(49, 'afaff', 'nguyen tung duc', 1, NULL),
(69, 'faffafaf', 'nguyen tung duc', 1, 1),
(70, 'afafwwfwf', 'nguyen tung duc', 1, 38),
(71, 'efefef', 'nguyen tung duc', 1, 38),
(72, 'vevevev', 'nguyen tung duc', 1, 39),
(73, 'feefef', 'nguyen tung duc', 1, 39),
(74, 'efef', 'nguyen tung duc', 1, 41),
(75, 'efef', 'nguyen tung duc', 1, 44),
(76, 'rf', 'nguyen tung duc', 1, 44),
(77, 'faafafeef', 'nguyen tung duc', 1, 1),
(78, 'afafafefe', 'nguyen tung duc', 1, 1),
(79, 'afafaaf', 'nguyen tung duc', 1, 38),
(80, 'vaavaeve', 'nguyen tung duc', 1, 38),
(81, 'afafaf', 'nguyen tung duc', 1, 39),
(82, 'aafaf', 'nguyen tung duc', 1, 39),
(83, 'afafaf', 'nguyen tung duc', 2, 26),
(84, 'afafaf', 'nguyen tung duc', 2, 27),
(85, 'afafa', 'nguyen tung duc', 2, 27),
(86, 'afaf', 'nguyen tung duc', 2, 28),
(87, 'fafafa', 'nguyen tung duc', 2, 29),
(88, 'afaffafa', 'nguyen tung duc', 2, 34),
(89, 'afafwfwf', 'nguyen tung duc', 2, 37),
(90, 'fafaf', 'nguyen tung duc', 2, 89),
(91, 'afafaf', 'nguyen tung duc', 2, 89),
(92, 'afaf', 'nguyen tung duc', 2, 91),
(93, 'aaaaa', 'nguyen tung duc', 2, NULL),
(94, 'fafa', 'nguyen tung duc', 2, 93),
(95, 'affaf', 'nguyen tung duc', 2, 93),
(96, 'eeff', 'nguyen tung duc', 2, 93),
(97, 'afaf', 'nguyen tung duc', 2, 91),
(98, 'aafaf', 'nguyen tung duc', 2, 90),
(99, 'sgsgsg', 'nguyen tung duc', 2, 28),
(100, 'afafaf', 'nguyen tung duc', 2, 35),
(101, 'afafa', 'nguyen tung duc', 2, 35),
(102, 'afaf', 'nguyen tung duc', 2, 101),
(103, 'afavhbvcxz', 'nguyen tung duc', 2, 101),
(104, 'afafafff', 'nguyen tung duc', 2, 103),
(105, 'fds', 'nguyen tung duc', 2, 103),
(106, 'afafaf', 'nguyen tung duc', 2, 103),
(107, 'afafaf', 'nguyen tung duc', 2, NULL),
(108, 'afafaf', 'nguyen tung duc', 2, 107),
(109, 'afafafaf', 'nguyen tung duc', 2, 107),
(110, 'gsgsg', 'nguyen tung duc', 2, 109),
(111, 'afafaf', 'nguyen tung duc', 2, 109),
(112, 'afafaf', 'nguyen tung duc', 2, 111),
(113, 'bvvvhhvhg', 'nguyen tung duc', 2, 112),
(114, 'jlkjljl', 'nguyen tung duc', 2, 112),
(115, 'afafafaf', 'nguyen tung duc', 2, 26),
(116, 'afafaf', 'nguyen tung duc', 2, 26),
(117, 'afafaf', 'nguyen tung duc', 1, 82),
(118, 'afaffaf', 'nguyen tung duc', 1, 117),
(119, 'bbbbbbbb', 'nguyen tung duc', 1, 1),
(120, 'vvvvvvvvvvvvvvv', 'nguyen tung duc', 1, 38),
(121, 'hay qua', 'nguyen tung duc', 5, NULL),
(122, 'aavav', 'nguyen tung duc', 5, 121),
(123, 'vaav', 'nguyen tung duc', 5, 121),
(124, 'afaff', 'nguyen tung duc', 5, 121),
(125, 'aaa', 'nguyen tung duc', 5, 121),
(126, 'aaaaaaaa', 'nguyen tung duc', 5, NULL),
(127, '3', 'nguyen tung duc', 5, NULL),
(128, '4', 'nguyen tung duc', 5, NULL),
(129, '5', 'nguyen tung duc', 5, NULL),
(130, '6', 'nguyen tung duc', 5, NULL),
(131, 'rqrqrqr', 'nguyen tung duc', 1, NULL),
(132, 'afafaf', 'nguyen tung duc', 1, 1),
(133, 'faf', 'nguyen tung duc', 1, NULL),
(134, 'afaf', 'nguyen tung duc', 1, NULL),
(135, 'afaff', 'nguyen tung duc', 1, 1),
(136, 'afafaf', 'nguyen tung duc', 1, 134),
(137, 'afafaf', 'nguyen tung duc', 1, 134),
(138, 'afafaf', 'nguyen tung duc', 1, 134),
(139, 'afafafaf', 'nguyen tung duc', 1, 134),
(140, 'afafafaf', 'nguyen tung duc', 1, 134),
(141, 'afafafaf', 'nguyen tung duc', 1, 134),
(142, 'afaff', 'nguyen tung duc', 1, 134),
(143, 'afaff', 'nguyen tung duc', 1, 134),
(144, 'afaff', 'nguyen tung duc', 1, 134),
(145, 'afaff', 'nguyen tung duc', 1, 134),
(146, 'aafaf', 'nguyen tung duc', 1, 134),
(147, 'aafaf', 'nguyen tung duc', 1, 134),
(148, 'aafaf', 'nguyen tung duc', 1, 134),
(149, 'aafaf', 'nguyen tung duc', 1, 134),
(150, 'aafaf', 'nguyen tung duc', 1, 134),
(151, 'aafaf', 'nguyen tung duc', 1, 134),
(152, 'afafaf', 'nguyen tung duc', 1, 134),
(153, 'aaf', 'nguyen tung duc', 1, 134),
(154, 'afaf', 'nguyen tung duc', 1, 134),
(155, 'aafafaf', 'nguyen tung duc', 1, 133),
(156, 'afaaf', 'nguyen tung duc', 1, 133),
(157, 'aafafa', 'nguyen tung duc', 1, 1),
(158, 'aaaaaaaaaaaa', 'nguyen tung duc', 1, 1),
(159, 'aaaaaa', 'nguyen tung duc', 4, NULL),
(160, 'bbbbbbbbb', 'nguyen tung duc', 4, NULL),
(161, 'aaaaaaaaa', 'nguyen tung duc', 4, 159),
(162, 'afaff', 'nguyen tung duc', 4, NULL),
(163, 'afaaf', 'nguyen tung duc', 4, 162),
(164, 'afaf', 'nguyen tung duc', 4, 162),
(165, 'aaaaaaaa', 'nguyen tung duc', 4, 162),
(166, 'aaaa', 'nguyen tung duc', 4, NULL),
(167, 'aaaaaaaaa', 'nguyen tung duc', 4, NULL),
(168, 'aaaaaaaaaa', 'nguyen tung duc', 4, NULL),
(169, 'affaf', 'nguyen tung duc', 1, 1),
(170, 'afafaf', 'nguyen tung duc', 1, 1),
(171, 'aafaf', 'nguyen tung duc', 1, NULL),
(172, 'aafaf', 'nguyen tung duc', 1, NULL),
(173, 'aaaaaaa', 'nguyen tung duc', 3, NULL),
(174, 'baafaf', 'nguyen tung duc', 3, NULL),
(175, 'afaf', 'nguyen tung duc', 2, 26),
(176, 'aaaa', 'duc duc', 2, NULL),
(177, 'aaaaaaaa', 'duc duc', 2, 107),
(178, 'aaaaaaaaaaa', 'nguyen tung duc', 2, NULL),
(179, 'vvvvvvvvvvv', 'nguyen tung duc', 2, 176),
(180, 'fafaf', 'nguyen tung duc', 2, 26),
(181, 'afaf', 'nguyen tung duc', 2, 26),
(182, 'aafaf', 'nguyen tung duc', 2, NULL),
(183, 'faafa', 'nguyen tung duc', 2, 182),
(184, 'faff', 'nguyen tung duc', 2, 182),
(185, 'aaa', 'nguyen tung duc', 1, NULL),
(186, 'aaaaa', 'nguyen tung duc', 1, 1),
(187, 'sssss', 'nguyen tung duc', 5, 130),
(188, 'aaaaaaaa', 'nguyen tung duc', 5, NULL),
(189, 'afafaf', 'nguyen tung duc', 2, 182),
(190, 'aaaaa', 'nguyen tung duc', 2, 26);

-- --------------------------------------------------------

--
-- Table structure for table `posts_post`
--

CREATE TABLE `posts_post` (
  `id` int(11) NOT NULL,
  `status` smallint(5) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `preview_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `detail_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_post`
--

INSERT INTO `posts_post` (`id`, `status`, `name`, `preview_text`, `detail_text`, `picture`, `cat_id`) VALUES
(1, 0, 'Trọng tài - vết đen của kỳ World Cup sôi động', 'World Cup 2014 chưa đi hết lượt đầu vòng bảng nhưng các trọng tài đẳng cấp FIFA đã có tới bốn trận bị chỉ trích dữ dội.', 'Django là một web framework miễn phí mã nguồn mở được viết bằng Python. Django sử dụng mô hình Model-View-Control (MVC). Django được phát triển bởi Django Software Foundation(DSF) – một tổ chức phi lợi nhuận độc lập.\r\n\r\nMục tiêu chính của Django là đơn giản hóa việc tạo các website phức tạp có sử dụng cơ sở dữ liệu. Django tập trung vào tính năng “có thể tái sử dụng” và “có thể tự chạy” của các component, tính năng phát triển nhanh, không làm lại những gì đã làm. Một số website phổ biến được xây dựng từ Django là Pinterest, Instagram, Mozilla, và Bitbucket.\r\n\r\nCài đặt Django\r\nĐể có thể sử dụng Django thì bạn nhất định phải cài Python trong máy mình rồi, và khi cài thì Python có kèm theo một chương trình có tên là pip, đây là một phần mềm quản lý các gói mở rộng dành cho Python. Để cài đặt Django thì bạn sẽ dùng đến pip.\r\n\r\nBạn mở Command Prompt (cmd) lên và gõ lệnh:\r\n\r\n1\r\nC:\\User\\PhoCode>pip install Django\r\nđể Python cài đặt gói Django mới nhất, gói này sẽ nằm trong thư mục Lib/site-packages trong thư mục cài đặt Python, hoặc gõ lệnh\r\n\r\n1\r\nC:\\User\\PhoCode>pip install Django==1.9.4\r\nđể cài đặt gói Django phiên bản 1.9.4, đây là phiên bản mà mình sử dụng để viết series này.\r\n\r\nNếu khi cài Python bạn không cài pip thì bạn có thể lên trên trang GitHub của Django để tải về tại địa chỉ https://github.com/django/django.git\r\n\r\nXem phiên bản Django\r\nSau khi cài đặt xong gói Django, bạn có thể kiểm tra một số thông tin của gói này.\r\n\r\nversion.py\r\n1\r\n2\r\n3\r\nimport django\r\n \r\nprint(django.get_version())\r\nBằng cách dùng phương thức django.get_version().\r\n\r\nOutput\r\n1\r\n1.9.4', '', 2),
(2, 0, 'Nhóm phượt \'\'cứu người được khen thưởng\'\'', 'Sáng 6/9, Ủy ban An toàn giao thông quốc gia cùng Trung ương Đoàn TNCS Hồ Chí Minh tặng bằng khen cho đoàn phượt Phong Vân vì tham gia cứu hàng chục nạn nhân vụ xe khách Sao Việt lao xuống vực tại dốc Tòng Sành (Bát Xát, Lào Cai).', '<p>Tại buổi trao tặng, Bộ trưởng Giao th&ocirc;ng vận tải Đinh La Thăng cảm ơn đo&agrave;n phượt kh&ocirc;ng ngại trời tối, vực s&acirc;u, l&agrave; những người đầu ti&ecirc;n đưa h&agrave;ng chục nạn nh&acirc;n l&ecirc;n khỏi vực. &quot;T&ocirc;i đ&aacute;nh gi&aacute; cao tấm l&ograve;ng v&agrave; sự dũng cảm của c&aacute;c bạn, kh&ocirc;ng quản hiểm nguy tham gia cứu hộ. Ch&iacute;nh v&igrave; vậy mới giảm được thương vong&quot;, Bộ trưởng Thăng n&oacute;i. Ngo&agrave;i bằng khen, nh&oacute;m được thưởng 12 triệu đồng v&agrave; 16 chiếc mũ bảo hiểm c&ugrave;ng lời dặn &quot;đi phượt th&igrave; an to&agrave;n phải l&agrave; số một&quot;. Số tiền thưởng 500.000 đồng mỗi c&aacute; nh&acirc;n trước đ&oacute; từ Th&agrave;nh đo&agrave;n H&agrave; Nội đ&atilde; được Phong V&acirc;n ủng hộ lại cho quỹ từ thiện của Th&agrave;nh đo&agrave;n.</p>\\r\\n\'', 'drink/download_fFXVm3e.jpeg', 1),
(3, 0, '2 nhà máy vàng đóng cửa chưa có phương án trả nợ thuế', '2 nhà máy vàng đóng cửa chưa có phương án trả nợ thuế', 'p>2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế</p>\\r\\n', 'drink/download_fdzEj81.jpeg', 3),
(4, 0, 'U19 Việt Nam 0-0 U19 Australia (hiệp hai)', 'U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)', 'U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)U19 Việt Nam 0-0 U19 Australia (hiệp hai)</p>', 'drink/download_j3Ceg79.jpeg', 4),
(5, 0, 'Ước gì con tôi không phải đi du học', 'Tôi ra sân bay Tân Sơn Nhất tiễn con đi Mỹ du học vào năm ngoái mà lòng nặng trĩu nỗi buồn. Sân bay đông nghẹt. Nhìn những em bé chỉ 15, 16 tuổi như con tôi một mình đẩy hành lý vào làm thủ tục ở sân bay mà rớt nước mắt', 'Chuyến bay kéo dài 24 giờ đồng hồ, bao gồm cả transit ở Nhật Bản. Gia đình tôi chỉ còn biết cầu trời khấn Phật để mong bình an. Và tôi cũng như biết bao gia đình phải chờ đợi một năm học thì con mới về nghỉ hè. Không có gì có thể tả hết nỗi khổ của những người làm cha mẹ xa con. Cũng không có gì có thể nói hết về sự gian nan vất vả khi cha mẹ lao động cực nhọc kiếm tiền học phí cho con đi du học. Bởi cho một đứa con đi học xa nhà cần cả một tinh thần thép và một khả năng tài chính đủ mạnh. Cũng như chính đứa bé đó muốn thành công cũng phải vượt qua những thách thức không dễ dàng ở nơi chúng chưa bao giờ biết đến, trong môi trường học tập và cạnh tranh quốc tế.\\r\\n\\r\\nNhưng vì sao gia đình tôi và biết bao gia đình khác đã lựa chọn con đường này? Có lẽ vì chúng tôi muốn thoát ra khỏi nỗi lo lắng và buồn bực đã nặng trĩu trong lòng nhiều năm qua.', 'drink/download_Awoqa4a.jpeg', 5),
(6, 0, 'Nhóm phượt \'\'cứu người được khen thưởng\'\'', 'Sáng 6/9, Ủy ban An toàn giao thông quốc gia cùng Trung ương Đoàn TNCS Hồ Chí Minh tặng bằng khen cho đoàn phượt Phong Vân vì tham gia cứu hàng chục nạn nhân vụ xe khách Sao Việt lao xuống vực tại dốc Tòng Sành (Bát Xát, Lào Cai).', '<p>Tại buổi trao tặng, Bộ trưởng Giao th&ocirc;ng vận tải Đinh La Thăng cảm ơn đo&agrave;n phượt kh&ocirc;ng ngại trời tối, vực s&acirc;u, l&agrave; những người đầu ti&ecirc;n đưa h&agrave;ng chục nạn nh&acirc;n l&ecirc;n khỏi vực. &quot;T&ocirc;i đ&aacute;nh gi&aacute; cao tấm l&ograve;ng v&agrave; sự dũng cảm của c&aacute;c bạn, kh&ocirc;ng quản hiểm nguy tham gia cứu hộ. Ch&iacute;nh v&igrave; vậy mới giảm được thương vong&quot;, Bộ trưởng Thăng n&oacute;i. Ngo&agrave;i bằng khen, nh&oacute;m được thưởng 12 triệu đồng v&agrave; 16 chiếc mũ bảo hiểm c&ugrave;ng lời dặn &quot;đi phượt th&igrave; an to&agrave;n phải l&agrave; số một&quot;. Số tiền thưởng 500.000 đồng mỗi c&aacute; nh&acirc;n trước đ&oacute; từ Th&agrave;nh đo&agrave;n H&agrave; Nội đ&atilde; được Phong V&acirc;n ủng hộ lại cho quỹ từ thiện của Th&agrave;nh đo&agrave;n.</p>\\r\\n\'', 'drink/download_fFXVm3e.jpeg', 2),
(7, 0, '2 nhà máy vàng đóng cửa chưa có phương án trả nợ thuế', '2 nhà máy vàng đóng cửa chưa có phương án trả nợ thuế', 'p>2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế2 nh&agrave; m&aacute;y v&agrave;ng đ&oacute;ng cửa chưa c&oacute; phương &aacute;n trả nợ thuế</p>\\r\\n', 'drink/download_fdzEj81.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_userbase`
--

CREATE TABLE `posts_userbase` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(200) COLLATE utf8_unicode_ci,
  `birthday` date DEFAULT NULL,
  `fb_access_token` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_uid` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL,
  `is_robot` tinyint(1) NOT NULL,
  `opt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_userbase`
--

INSERT INTO `posts_userbase` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `avatar`, `avatar_url`, `birthday`, `fb_access_token`, `fb_uid`, `is_email_verified`, `is_robot`, `opt`) VALUES
(1, 'pbkdf2_sha256$100000$vnKtz4ygOZMB$6b8sd7wBLE4OpglB1ln1YJLTgAMSQuD9z9JuTYqN4OE=', '2018-07-13 03:06:45.375815', 1, 'nguyentungducbk@gmail.com', 'nguyen tung', 'duc', 'nguyentungducbk@gmail.com', 1, 1, '2018-07-12 09:55:23.000000', NULL, 'http://localhost:8000/media/avatar_defautl.png', NULL, NULL, NULL, 0, 0, NULL),
(2, 'pbkdf2_sha256$100000$a4G2YlY7DRBu$YfyDPWnepzJ0su+1o+EYKIP47DhzJv/Th2Ni4mFGWhI=', NULL, 1, 'duc@gmail.com', 'nguyen tung', 'teo', 'duc@gmail.com', 1, 1, '2018-07-13 03:09:14.000000', '', 'http://localhost:8000/media/avatar_defautl.png', NULL, NULL, NULL, 0, 0, NULL),
(3, 'pbkdf2_sha256$100000$uTqACqACQfWV$XZuhdnWjz/jPGKYMaAkAx+JuRxDnOy6x97dmtXZUu98=', '2018-08-09 03:45:11.427197', 1, 'a@gmail.com', 'nguyen tung', 'duc', 'a@gmail.com', 1, 1, '2018-07-13 03:14:34.000000', '', 'http://localhost:8000/media/avatar_defautl.png', NULL, NULL, NULL, 0, 0, NULL),
(23, 'pbkdf2_sha256$100000$ghySBTmQmECd$j1OTSd9b/75WDQ9XGGtrWmekAKwB1PItcC89N7UcrYk=', '2018-07-20 06:30:04.605815', 0, 'duc1@gmail.com', 'duc', 'duc', 'duc1@gmail.com', 1, 1, '2018-07-20 06:22:19.000000', '', 'http://localhost:8000/media/avatar_defautl.png', NULL, NULL, NULL, 0, 0, NULL),
(26, '', '2018-07-20 07:31:05.010137', 0, 'nguyentungduc2014@outlook.com.vn', 'Đức', 'Nguyễn', 'nguyentungduc2014@outlook.com.vn', 0, 1, '2018-07-20 07:04:09.193067', '', 'http://graph.facebook.com/1978268632393759/picture?width=500&height=500&type=square', '1996-07-02', 'b\'EAAEytwQmLjUBAKJFUud9dq7OTOvH6xBJ3menY5H4ITTeeQXlPhzPr4GZCYu6uCD3aIsCn6748caVSQhqJrCz3Qc6bTJ1rtwMfZBbvxemEKZBZAbPckPRyOFCBk8if0L3lCzaGKH3saei3idHabSjyRBH5c1PPeNEtdW6E2vptZC8E6AAvhpdEev9QnZBJnl4rUCaWwfKPrRZB61W0ft72nK69U2SZCl8I7oZD\'', '1978268632393759', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_userbase_groups`
--

CREATE TABLE `posts_userbase_groups` (
  `id` int(11) NOT NULL,
  `userbase_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_userbase_like`
--

CREATE TABLE `posts_userbase_like` (
  `id` int(11) NOT NULL,
  `userbase_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_userbase_like`
--

INSERT INTO `posts_userbase_like` (`id`, `userbase_id`, `post_id`) VALUES
(1, 1, 1),
(8, 2, 7),
(26, 3, 1),
(24, 3, 2),
(22, 3, 3),
(29, 3, 5),
(20, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `posts_userbase_user_permissions`
--

CREATE TABLE `posts_userbase_user_permissions` (
  `id` int(11) NOT NULL,
  `userbase_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_posts_userbase_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `login_album`
--
ALTER TABLE `login_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_album_artist_id_fc32031f_fk_login_musician_id` (`artist_id`);

--
-- Indexes for table `login_musician`
--
ALTER TABLE `login_musician`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_comment`
--
ALTER TABLE `posts_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_comment_new_id_7cf3f1b9_fk_posts_post_id` (`new_id`),
  ADD KEY `posts_comment_parent_id_ae76dcba_fk_posts_comment_id` (`parent_id`);

--
-- Indexes for table `posts_post`
--
ALTER TABLE `posts_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_cat_id_72a4c94d_fk_posts_category_id` (`cat_id`);

--
-- Indexes for table `posts_userbase`
--
ALTER TABLE `posts_userbase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `posts_userbase_email_db09c235_uniq` (`email`);

--
-- Indexes for table `posts_userbase_groups`
--
ALTER TABLE `posts_userbase_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_userbase_groups_userbase_id_group_id_a0eb9326_uniq` (`userbase_id`,`group_id`),
  ADD KEY `posts_userbase_groups_group_id_4a92f017_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `posts_userbase_like`
--
ALTER TABLE `posts_userbase_like`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_userbase_like_userbase_id_post_id_a7bf979b_uniq` (`userbase_id`,`post_id`),
  ADD KEY `posts_userbase_like_post_id_9f2c3f9d_fk_posts_post_id` (`post_id`);

--
-- Indexes for table `posts_userbase_user_permissions`
--
ALTER TABLE `posts_userbase_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_userbase_user_perm_userbase_id_permission_i_d079b066_uniq` (`userbase_id`,`permission_id`),
  ADD KEY `posts_userbase_user__permission_id_d3e23c51_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `login_album`
--
ALTER TABLE `login_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_musician`
--
ALTER TABLE `login_musician`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `posts_category`
--
ALTER TABLE `posts_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `posts_comment`
--
ALTER TABLE `posts_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `posts_post`
--
ALTER TABLE `posts_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts_userbase`
--
ALTER TABLE `posts_userbase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `posts_userbase_groups`
--
ALTER TABLE `posts_userbase_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_userbase_like`
--
ALTER TABLE `posts_userbase_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `posts_userbase_user_permissions`
--
ALTER TABLE `posts_userbase_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_posts_userbase_id` FOREIGN KEY (`user_id`) REFERENCES `posts_userbase` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_posts_userbase_id` FOREIGN KEY (`user_id`) REFERENCES `posts_userbase` (`id`);

--
-- Constraints for table `login_album`
--
ALTER TABLE `login_album`
  ADD CONSTRAINT `login_album_artist_id_fc32031f_fk_login_musician_id` FOREIGN KEY (`artist_id`) REFERENCES `login_musician` (`id`);

--
-- Constraints for table `posts_comment`
--
ALTER TABLE `posts_comment`
  ADD CONSTRAINT `posts_comment_new_id_7cf3f1b9_fk_posts_post_id` FOREIGN KEY (`new_id`) REFERENCES `posts_post` (`id`),
  ADD CONSTRAINT `posts_comment_parent_id_ae76dcba_fk_posts_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `posts_comment` (`id`);

--
-- Constraints for table `posts_post`
--
ALTER TABLE `posts_post`
  ADD CONSTRAINT `posts_post_cat_id_72a4c94d_fk_posts_category_id` FOREIGN KEY (`cat_id`) REFERENCES `posts_category` (`id`);

--
-- Constraints for table `posts_userbase_groups`
--
ALTER TABLE `posts_userbase_groups`
  ADD CONSTRAINT `posts_userbase_groups_group_id_4a92f017_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `posts_userbase_groups_userbase_id_688d5c9b_fk_posts_userbase_id` FOREIGN KEY (`userbase_id`) REFERENCES `posts_userbase` (`id`);

--
-- Constraints for table `posts_userbase_like`
--
ALTER TABLE `posts_userbase_like`
  ADD CONSTRAINT `posts_userbase_like_post_id_9f2c3f9d_fk_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts_post` (`id`),
  ADD CONSTRAINT `posts_userbase_like_userbase_id_d1cf6d56_fk_posts_userbase_id` FOREIGN KEY (`userbase_id`) REFERENCES `posts_userbase` (`id`);

--
-- Constraints for table `posts_userbase_user_permissions`
--
ALTER TABLE `posts_userbase_user_permissions`
  ADD CONSTRAINT `posts_userbase_user__permission_id_d3e23c51_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `posts_userbase_user__userbase_id_f98aa4c1_fk_posts_use` FOREIGN KEY (`userbase_id`) REFERENCES `posts_userbase` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
