-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2018 at 05:47 PM
-- Server version: 5.7.22
-- PHP Version: 7.2.7-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getmumm`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `article_name` varchar(200) NOT NULL,
  `article_desc` text NOT NULL,
  `attach_id` int(11) NOT NULL,
  `publish_article` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `cat_id`, `article_name`, `article_desc`, `attach_id`, `publish_article`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 22, 'first article', '<p>test</p>', 582, 1, NULL, NULL, NULL),
(3, 24, 'first sport article', '<p><strong>lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 584, 1, NULL, NULL, NULL),
(4, 25, 'php', '<p><strong>lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `alt` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `title`, `alt`, `path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '22', '3333', 'uploads/articles/service-charge1/984340a76a29525e349f9dfacaca264c.jpg', '0000-00-00 00:00:00', '2016-08-17 16:49:48', NULL),
(6, '', '', 'uploads/articles/service-charge/e2091c81d22df4993e9fdbf23083d9ca.png', NULL, '2018-04-11 15:31:21', NULL),
(62, '', '', 'uploads/langs/en/5fa77373e43cbb52f02925d3cc46b8a9.png', '0000-00-00 00:00:00', '2016-10-24 13:34:39', NULL),
(63, '', '', 'uploads/langs/en/1c48220e1d61f77c5ee619616d941281.png', NULL, '2016-10-02 09:04:33', NULL),
(64, '', '', 'uploads/langs/3.png', '0000-00-00 00:00:00', '2016-08-24 15:16:45', NULL),
(65, 'new article urdynew article urdy', 'new article urdy', 'uploads/articles/new article ar/ed48f3dbe50217574e9f0d0cfadf4153.jpg', '2016-08-17 17:06:41', '2016-08-17 17:06:41', NULL),
(66, '11', '22', 'uploads/articles/new article ar/6ab793da132cad1327fab46393acee3c.jpg', '2016-08-17 17:06:41', '2016-08-17 17:06:41', NULL),
(67, 'ar', 'ar', 'uploads/articles/ar/6a7162fb8c3cc3e9e19b4bc78cb83696.jpg', '2016-08-17 17:15:07', '2016-08-17 17:15:07', NULL),
(68, 'ar', 'ar', 'uploads/articles/ar/181d6572a2731d686e437d769b4ff866.jpg', '2016-08-17 17:15:07', '2016-08-17 17:15:07', NULL),
(69, 'asd', 'asd', 'uploads/articles/new ar/9590476d9f16148723dc368433dff00c.jpg', '2016-08-17 17:18:16', '2016-08-17 17:18:16', NULL),
(70, 'aad', 'sds', 'uploads/articles/new ar/7107372947c7a33e34044d89d87ca847.jpg', '2016-08-17 17:18:16', '2016-08-17 17:18:16', NULL),
(71, 'asd', 'asd', 'uploads/articles/new ar/9590476d9f16148723dc368433dff00c.jpg', '2016-08-17 17:18:16', '2016-08-17 17:18:16', NULL),
(72, '111', '222', 'uploads/pages/new-page-ar/252bcfbd552a1fbe20eaca5d616de4f1.jpg', '2016-08-17 17:18:16', '2016-10-31 14:17:32', NULL),
(73, '333', '444', 'uploads/pages/page_2_ar/3c14ce648dfb4bf9b05166be1f7f94ab.jpg', '2016-08-18 07:39:40', '2016-08-18 07:39:40', NULL),
(74, 'egypt', 'egypt', 'uploads/langs/egypt/302cdf54f67187d9b6711c5b2cf00279.png', '2016-08-18 11:33:28', '2016-08-18 11:33:28', NULL),
(75, '1', '2', 'uploads/langs/test/4a287bcdefd9cb7ae4021b058082220f.png', '2016-08-18 11:35:47', '2016-08-18 11:35:47', NULL),
(76, '11', '222', 'uploads/langs/test2/ad209ab96a3acdc1bca8c2acdd293ef9.jpg', '2016-08-18 11:38:04', '2016-08-18 11:38:04', NULL),
(77, 'egypt', 'egypt', 'uploads/langs/egypt/816b61338959c0dd6e088021ca5a025c.png', '2016-08-18 11:41:10', '2016-08-18 11:43:06', NULL),
(78, '111', '222', 'uploads/ads/215e242fd15bac9941d190d2b57f0830.jpg', '2016-08-21 11:35:33', '2016-08-21 11:35:33', NULL),
(79, '', '', 'uploads/category/بطاقات شحن الجوال/ec7c85afe6f5c5155a7946ef451c6a11.jpg', '2016-08-24 15:55:50', '2016-08-24 15:55:50', NULL),
(80, '', '', 'uploads/category/بطاقات شحن الجوال/ec7c85afe6f5c5155a7946ef451c6a11.jpg', '2016-08-24 15:55:50', '2016-08-24 15:55:50', NULL),
(81, '', '', 'uploads/category/الكل/71b389397e603f03448a4ea6c32e14e4.jpg', '2016-08-24 15:59:45', '2016-08-25 06:45:05', NULL),
(82, '', '', 'uploads/category/الكل/71b389397e603f03448a4ea6c32e14e4.jpg', '2016-08-24 15:59:45', '2016-08-25 06:45:05', NULL),
(83, '', '', 'uploads/product/بطاقاتشحنسوا/9f5411899ae4e23b352e0a600a16fdd1.jpg', '2016-08-24 16:07:49', '2016-10-23 08:15:49', NULL),
(84, '', '', 'uploads/product/بطاقاتشحنسوا/ac8261a53f9b2c62e7545bc4626c9771.jpg', '2016-08-24 16:07:49', '2016-10-23 08:15:49', NULL),
(85, '', '', 'uploads/product/شحن موبيلى السعوديه/c0c7a8094e7bb1e0080d94041019983a.jpg', '2016-08-24 16:11:53', '2016-08-25 06:46:48', NULL),
(86, '', '', 'uploads/product/شحن موبيلى السعوديه/c0c7a8094e7bb1e0080d94041019983a.jpg', '2016-08-24 16:11:53', '2016-08-25 06:46:48', NULL),
(87, '', '', 'uploads/category/كروت فورى/eac313d71262968823d3b18892b6cc9b.jpg', '2016-08-24 16:16:53', '2016-08-24 16:16:53', NULL),
(88, '', '', 'uploads/category/كروت فورى/eac313d71262968823d3b18892b6cc9b.jpg', '2016-08-24 16:16:53', '2016-08-24 16:16:53', NULL),
(89, 'sad', 'asd', 'uploads/category/asdasd/7cbc126f2c014afdbfbf5285cd9c6fd8.jpg', '2016-08-25 05:46:19', '2016-08-25 05:46:19', NULL),
(90, '', '', 'T', '2016-08-25 05:46:19', '2016-08-25 05:46:19', NULL),
(91, 'pre-paid cards', 'pre-paid cards', 'uploads/category/asdasd/c8b1020495f2d3401f181b7dca10cf92.jpg', '2016-08-25 05:46:36', '2016-08-25 06:18:25', NULL),
(92, 'pre-paid cards', 'pre-paid cards', 'uploads/category/بطاقات-مسبقة-الدفع/5e34e85e269b2fb89d150c4a9eec243d.jpg', '2016-08-25 05:46:36', '2016-08-25 06:18:25', NULL),
(93, 'sadad service', 'sadad service', 'uploads/category/خدمة-سداد/d0be1ceb53d21b1bbfc24a3941e5e679.png', '2016-08-25 06:21:37', '2016-08-25 06:21:37', NULL),
(94, '', '', 'uploads/category/خدمة-سداد/d0be1ceb53d21b1bbfc24a3941e5e679.png', '2016-08-25 06:21:37', '2016-10-24 14:07:37', NULL),
(95, '', '', 'uploads/general_edit_content/c803bf0fd91c62107961ab06b6a435b6.jpg', '2016-08-25 06:23:26', '2016-10-24 14:00:09', NULL),
(96, '', '', 'T', '2016-08-25 06:23:26', '2016-10-30 11:47:50', NULL),
(97, '', '', 'uploads/category/خدمة-منزلي/949e4515a56d31224d2c98240885b14e.JPG', '2016-08-25 06:27:38', '2016-10-23 08:31:36', NULL),
(98, 'home service', 'home service', 'uploads/category/خدمة-منزلي/949e4515a56d31224d2c98240885b14e.JPG', '2016-08-25 06:27:38', '2016-08-25 06:27:38', NULL),
(99, '', '', 'uploads/product/تي اي داتا - فواتير/1d72f7df6d3161a5a247f089eaf0eaa2.jpg', '2016-08-25 06:28:45', '2016-08-25 06:28:45', NULL),
(100, '', '', 'uploads/product/تي اي داتا - فواتير/1d72f7df6d3161a5a247f089eaf0eaa2.jpg', '2016-08-25 06:28:45', '2016-08-25 06:28:45', NULL),
(101, 'cash you', 'cash you', 'uploads/category/كاش-يو/d481d3ea5e67cdf8c8e73d92f06de7ab.jpg', '2016-08-25 06:32:30', '2016-08-25 06:32:30', NULL),
(102, 'cash you', 'cash you', 'uploads/category/كاش-يو/d481d3ea5e67cdf8c8e73d92f06de7ab.jpg', '2016-08-25 06:32:30', '2016-08-25 06:32:30', NULL),
(103, 'one card', 'one card', 'uploads/category/ون-كارد/915d9ab853f8756df0f1b6d0fe41b8d0.jpg', '2016-08-25 06:34:22', '2016-08-25 06:34:22', NULL),
(104, 'one card', 'one card', 'uploads/category/ون-كارد/915d9ab853f8756df0f1b6d0fe41b8d0.jpg', '2016-08-25 06:34:22', '2016-08-25 06:34:22', NULL),
(105, 'paypal', 'paypal', 'uploads/category/paypal/18022c9ac97c29a1e24d3bbe5436c552.jpg', '2016-08-25 06:36:36', '2016-08-25 06:43:39', NULL),
(106, 'paypal', 'paypal', 'uploads/category/paypal/18022c9ac97c29a1e24d3bbe5436c552.jpg', '2016-08-25 06:36:36', '2016-08-25 06:43:39', NULL),
(107, 'electronic devices', 'electronic devices', 'uploads/category/أجهزة-الكترونية/f53306a92851e264c2457e920ffaa3a7.jpg', '2016-08-25 06:46:23', '2016-08-25 06:46:23', NULL),
(108, 'electronic devices', 'electronic devices', 'uploads/category/أجهزة-الكترونية/f53306a92851e264c2457e920ffaa3a7.jpg', '2016-08-25 06:46:23', '2016-08-25 06:46:23', NULL),
(109, 'manage electronic devices ', 'manage electronic devices ', 'uploads/articles/صيانة-الاجهزة-الالكترونية/c01c27981c6abde95c4ba8d3f6fabbe8.jpg', '2016-08-25 06:49:41', '2016-08-30 10:13:29', NULL),
(110, 'manage electronic devices ', 'manage electronic devices ', 'uploads/articles/صيانة-الاجهزة-الالكترونية/a4200fe50c5a94cc96b47da25b998de5.png', '2016-08-25 06:49:41', '2016-08-30 10:13:29', NULL),
(111, '', '', 'uploads/ads/cf9c816941444f62948a98c9caf49081.jpg', '2016-08-25 09:40:23', '2016-10-28 23:17:38', NULL),
(112, '', '', 'uploads/category/بطاقة-ايتونز/48f87a99604c5c9bb311da2be6883671.png', '2016-08-28 10:40:16', '2016-08-28 10:40:16', NULL),
(113, '', '', 'uploads/category/بطاقة-ايتونز/48f87a99604c5c9bb311da2be6883671.png', '2016-08-28 10:40:16', '2016-08-28 10:40:16', NULL),
(114, '', '', 'T', '2016-08-29 13:08:52', '2016-10-24 15:03:41', NULL),
(115, '', '', 'uploads/edit_content_folder/d5ead2f0c2c8d615b7260178efc0b086.jpg', '2016-08-29 13:10:59', '2016-08-29 13:23:53', NULL),
(116, '', '', 'uploads/edit_content_folder/12db05f9266d64b9deda461cfd337950.jpg', '2016-08-29 13:10:59', '2016-08-29 13:23:53', NULL),
(117, '', '', 'T', '2016-08-30 14:09:40', '2016-08-30 14:10:17', NULL),
(118, '', '', 'uploads/edit_content_folder/8cf6d80e7570545e34af7956f5c33ed1.png', '2016-08-30 14:10:24', '2016-08-30 14:10:24', NULL),
(119, '', '', 'uploads/edit_content_folder/4ebf58e46867684056c7a640ad637941.jpg', '2016-08-30 14:10:24', '2016-08-30 14:10:24', NULL),
(120, '', '', 'uploads/edit_content_folder/bda66dee125c371cff99b4d09c28a470.jpg', '2016-08-30 14:10:24', '2016-08-30 14:10:24', NULL),
(121, '', '', 'uploads/general_edit_content/7404a15f51dcfe3f63405e0902c7f87f.png', '2016-10-01 13:19:12', '2017-03-20 10:25:33', NULL),
(122, '', '', 'uploads/general_edit_content/29c7a65f46d28f339530c729c63bf3d1.png', '2016-10-01 13:19:13', '2017-03-20 10:25:33', NULL),
(123, '', '', 'uploads/general_edit_content/9ac12a3efbb5131eb170c1e3f6639246.PNG', '2016-10-01 13:19:13', '2016-10-03 11:28:12', NULL),
(124, 'sad', 'asdasd', 'uploads/product/بطاقاتشحنسوا/slider/dc252465e9dd3eb0345edb8f3a985ba0.jpg', '2016-10-01 15:30:18', '2016-10-01 15:30:18', NULL),
(125, 'sad', 'asdasd', 'uploads/product/بطاقاتشحنسوا/slider/0e95a1e25deec0f991c89c3bdaac3d74.jpg', '2016-10-01 15:30:18', '2016-10-01 15:30:18', NULL),
(126, 'asdasd', 'asdasd', 'uploads/product/بطاقاتشحنسوا/slider/e5c9924ebd373e900691ffa689e90349.jpg', '2016-10-01 15:36:00', '2016-10-01 15:36:00', NULL),
(127, 'asdasd', 'asdasd', 'uploads/product/بطاقاتشحنسوا/slider/42bcffaeff59c443308bef965a5d9a12.jpg', '2016-10-01 15:36:00', '2016-10-01 15:36:00', NULL),
(128, 'sfsd1', 'sadasd2', 'uploads/product/بطاقاتشحنسوا/slider/a2dfa28a27c97ae01da4e0c33bcf2bf7.jpg', '2016-10-01 15:38:19', '2016-10-23 08:15:49', NULL),
(129, 'sadsad3', 'asdasd4', 'uploads/product/بطاقاتشحنسوا/slider/ea79e2e76dcdf9125c92145c14106ddf.jpg', '2016-10-01 15:39:04', '2016-10-23 08:15:49', NULL),
(130, 'slider1', 'slider1', 'uploads/edit_content_folder/c6c1b5d20bd2dc907254efbe5756ab18.jpg', '2016-10-02 07:53:27', '2016-10-03 11:28:12', NULL),
(131, 'slider2', 'slider2', 'uploads/edit_content_folder/9ccbe2049ccc8ebf15d4cabe5a5f7d18.jpg', '2016-10-02 07:53:27', '2016-10-03 11:28:12', NULL),
(132, 'slider3', 'slider3', 'uploads/edit_content_folder/445812441fd94810e3ffaee16fae1416.jpg', '2016-10-02 07:53:27', '2016-10-03 11:28:12', NULL),
(133, '', '', 'uploads/edit_content_folder/90c2d3766c2694d9e287eb1caaa5dcff.png', '2016-10-02 07:53:27', '2016-10-26 15:27:45', NULL),
(134, '', '', 'uploads/edit_content_folder/408417cb0a12fbe993fa19dd81139fe0.png', '2016-10-02 07:53:27', '2016-10-26 15:27:45', NULL),
(135, '', '', 'uploads/edit_content_folder/fb9c11ff7d8e8b2c994c422c8d11a823.png', '2016-10-02 07:53:27', '2016-10-26 15:27:45', NULL),
(136, '', '', 'uploads/edit_content_folder/d25c16936ef35f8c6099c2f9962ffa01.png', '2016-10-02 07:53:27', '2016-10-30 21:39:57', NULL),
(137, '', '', 'uploads/edit_content_folder/234087678738442d2a8267bcb2e0bf84.png', '2016-10-02 07:53:27', '2017-03-20 10:25:33', NULL),
(138, '', '', 'uploads/edit_content_folder/dd6476c43c92c2ffc89c596d2cd8f98d.png', '2016-10-02 07:53:27', '2016-10-26 15:27:45', NULL),
(139, '', '', 'uploads/edit_content_folder/48845521cfd00821c9b17d63f9e0b04a.png', '2016-10-02 07:53:27', '2016-10-26 15:27:45', NULL),
(140, '', '', 'uploads/edit_content_folder/dc05ee965bb9760700d3cf456ff8651d.png', '2016-10-02 07:53:27', '2017-03-20 10:25:33', NULL),
(141, '', '', 'uploads/edit_content_folder/fec8ce89a97aab5f591f4dfc605f21a0.png', '2016-10-02 07:53:27', '2016-10-26 15:27:45', NULL),
(142, '', '', 'T', '2016-10-02 12:03:33', '2016-10-02 12:10:07', NULL),
(143, '', '', 'T', '2016-10-02 12:10:15', '2016-10-02 12:13:59', NULL),
(144, '', '', 'uploads/edit_content_folder/445812441fd94810e3ffaee16fae1416.jpg', '0000-00-00 00:00:00', NULL, NULL),
(145, '', '', 'uploads/general_edit_content/d1fb12eee0745fdfa37cc782490a3aa2.png', '2016-10-17 12:38:22', '2017-03-20 10:25:33', NULL),
(146, '', '', 'uploads/edit_content_folder/ef3ce54733353f7847c1171fa77660b8.PNG', '2016-10-17 12:39:18', '2016-10-27 10:33:28', NULL),
(147, '', '', 'uploads/edit_content_folder/6ea05a7df4f0e74b67d639066368ef0c.jpg', '2016-10-17 12:39:18', '2016-10-28 19:14:59', NULL),
(148, '', '', 'uploads/edit_content_folder/d31446615aef8e9bbcebad53cedd06d3.jpg', '2016-10-17 12:39:18', '2016-10-28 19:15:00', NULL),
(149, '', '', 'uploads/edit_content_folder/febfba04f1a4dbc894d402c1593bdcd1.png', '2016-10-17 12:43:21', '2016-10-28 23:28:25', NULL),
(150, '', '', 'uploads/edit_content_folder/dc7aa70c07cbf91fe7b30116b9f45e28.png', '2016-10-17 12:43:21', '2016-10-30 21:49:52', NULL),
(151, '', '', 'uploads/edit_content_folder/9345a214544ceb7cd843a389c550b220.png', '2016-10-17 12:43:21', '2016-10-30 22:03:58', NULL),
(152, '', '', 'uploads/edit_content_folder/e7413733e56d20368820e78cc5be0222.jpg', '2016-10-17 13:39:16', '2016-10-30 20:11:19', NULL),
(153, '', '', 'uploads/edit_content_folder/761cc7de51338041cd3ff0d47c6bbc0a.jpg', '2016-10-17 13:39:16', '2016-10-24 15:04:24', NULL),
(154, '', '', 'uploads/edit_content_folder/1421aa80967c6e303b881610c02cdb8e.jpg', '2016-10-17 13:55:33', '2016-10-28 22:58:59', NULL),
(155, '', '', 'uploads/edit_content_folder/b235158f720d7057ef272d3792494507.jpg', '2016-10-17 13:55:33', '2016-10-28 22:58:59', NULL),
(156, 'Laptops', 'Laptops', 'uploads/category/لابتوب/c8e00e5c5d78d400ed364e6ba668d3ab.jpg', '2016-10-20 09:48:23', '2016-10-26 18:04:44', NULL),
(157, 'TECHNOLOGY', 'TECHNOLOGY', 'uploads/category/TECHNOLOGY/8f5dfaa13719e367749720331e1d02bc.png', '2016-10-20 09:48:23', '2016-10-26 18:04:44', NULL),
(158, 'HP-Envy17', 'HP-Envy17', 'uploads/category/HP-Envy17/d57ee50ac57cd68461ce18cdc6c59468.jpg', '2016-10-20 09:51:45', '2016-10-20 09:51:45', NULL),
(159, 'HP-Envy17', 'HP-Envy17', 'uploads/category/HP-Envy17/10f1a72bb67b40d87db5285635c0dcc9.jpg', '2016-10-20 09:51:45', '2016-10-20 09:51:45', NULL),
(160, 'Mobile Samsung S7', 'Mobile Samsung S7', 'uploads/product/MobileSamsungS7/2b9d35f8699fa20161017a6390b0f45d.jpg', '2016-10-20 10:27:00', '2016-10-27 11:26:10', NULL),
(161, 'Mobile Samsung S7', 'Mobile Samsung S7', 'uploads/product/MobileSamsungS7/4d5c9a2376fef5b6f2e2d936af03704c.jpg', '2016-10-20 10:27:02', '2016-10-27 11:26:10', NULL),
(162, '122', '121212', 'uploads/product/HP-Envy17-pro/slider/7f8fc4befc32fd48c1c03ec47d8ea1c5.jpg', '2016-10-20 10:27:06', '2016-10-26 17:47:19', NULL),
(163, '122', '121212', 'uploads/product/HP-Envy17-pro/slider/98fa221dfb10f677ab3a896152ac4559.jpg', '2016-10-20 10:27:06', '2016-10-26 17:47:19', NULL),
(164, '122', '121212', 'uploads/product/HP-Envy17-pro/slider/7d96f68d2fa80fed2912e976f0f8e073.png', '2016-10-20 10:27:06', '2016-10-26 17:47:19', NULL),
(165, 'dsfsdf', 'sdfsdfsdf', 'uploads/users/ded1a9a967ee71789930e9a81a2f72a1.jpg', '2016-10-20 11:21:28', '2016-10-20 11:21:28', NULL),
(166, '', '', 'uploads/users/1836c8559e5b7b638d800abf8ea25bb8.png', '2016-10-23 10:56:35', '2016-10-23 10:56:35', NULL),
(167, '', '', 'uploads/users/03bd00c01bdb1bed94f972b7638340fd.jpg', '2016-10-23 11:23:35', '2016-10-23 11:23:35', NULL),
(168, '', '', 'uploads/users/4be0d85d7786aaf4b1cec68aa258947d.png', '2016-10-23 11:26:52', '2016-10-23 11:26:52', NULL),
(169, '', '', 'T', '2016-10-26 17:37:32', '2016-10-26 17:37:32', NULL),
(170, 'Products', 'Products', 'T', '2016-10-26 17:37:32', '2016-10-26 17:37:32', NULL),
(171, '', '', 'T', '2016-10-26 17:41:09', '2016-10-26 23:05:19', NULL),
(172, 'Home Appliances', 'Home Appliances', 'uploads/category/HomeAppliances/b54789566770eef67bfd0bb519c421cd.png', '2016-10-26 17:41:09', '2016-10-26 23:05:20', NULL),
(173, '', '', 'T', '2016-10-26 17:43:37', '2016-10-26 23:06:34', NULL),
(174, 'Exclusive', 'Exclusive', 'uploads/category/Exclusive/a6aa0c83caf845426f2d288b7a2b8a5b.png', '2016-10-26 17:43:37', '2016-10-26 23:06:34', NULL),
(175, 'Vacuum Cleaner', 'Vacuum Cleaner', 'uploads/product/Philips Vacuum Cleaner/d32c021e43ce730985dd15ca0e2f128a.jpg', '2016-10-26 22:55:15', '2016-12-03 20:21:07', NULL),
(176, 'Vacuum Cleaner', 'Vacuum Cleaner', 'uploads/product/Philips Vacuum Cleaner/96622ba664d220f5a74c8f4b5fb654df.jpg', '2016-10-26 22:55:15', '2016-12-03 20:21:08', NULL),
(177, '', '', 'uploads/product/Tools/3796211415f59cad3db8c2da92236d95.png', '2016-10-26 22:58:34', '2017-01-12 10:23:47', NULL),
(178, '', '', 'uploads/product/Tools/652b3f3ad85495cec07db54dfd7bdd66.png', '2016-10-26 22:58:35', '2017-01-12 10:23:47', NULL),
(179, '', '', 'T', '2016-10-27 12:32:17', '2016-10-27 12:32:17', NULL),
(180, '', '', 'T', '2016-10-27 12:32:17', '2016-10-27 12:32:17', NULL),
(181, '', '', 'T', '2016-10-27 12:32:37', '2016-10-27 12:32:37', NULL),
(182, '', '', 'T', '2016-10-27 12:32:38', '2016-10-27 12:32:38', NULL),
(183, '', '', 'T', '2016-10-27 12:32:59', '2016-10-27 12:32:59', NULL),
(184, '', '', 'T', '2016-10-27 12:32:59', '2016-10-27 12:32:59', NULL),
(185, '', '', 'uploads/product/Huawei Mate 8/d39f0493ae1ef35189f8825597781950.jpg', '2016-10-27 13:46:44', '2016-11-06 09:41:19', NULL),
(186, '', '', 'uploads/product/Huawei Mate 8/3efe13c151250fc5d21e32483d0a5cee.jpg', '2016-10-27 13:46:44', '2016-11-06 09:41:19', NULL),
(187, '', '', 'uploads/product/Samsung Galaxy Note 5/344766b7da1345f1c4eefe1b00f260df.jpg', '2016-10-27 14:04:30', '2016-11-05 23:28:58', NULL),
(188, '', '', 'uploads/product/Samsung Galaxy Note 5/9d05925c2de10a639676cea37a2185c8.jpg', '2016-10-27 14:04:30', '2016-11-05 23:28:58', NULL),
(189, '', '', 'uploads/product/Apple iPhone 6s/aee082df6647d101c1aa8ef94641d676.jpg', '2016-10-27 14:12:41', '2016-12-03 20:20:48', NULL),
(190, '', '', 'uploads/product/Apple iPhone 6s/8a3f7b7d00041e25b494841892f612db.jpg', '2016-10-27 14:12:41', '2016-12-03 20:20:48', NULL),
(191, '', '', 'uploads/product/Nokia 130 Dual SIM/e073e3f27ad44a84eb7ce8441ad17f4f.jpg', '2016-10-27 14:20:40', '2016-11-05 23:31:05', NULL),
(192, '', '', 'uploads/product/Nokia 130 Dual SIM/389dbb62f0fc157a41e3da0a57c3f630.jpg', '2016-10-27 14:20:40', '2016-11-05 23:31:05', NULL),
(193, '', '', 'uploads/product/Nokia 105 Dual SIM/a96c54a4641d6c71ff0a0931c2ec0773.jpg', '2016-10-27 14:26:56', '2016-11-05 23:31:40', NULL),
(194, '', '', 'uploads/product/Nokia 105 Dual SIM/e01d874e94c3e7a5debcb5bdb7d5b117.jpg', '2016-10-27 14:26:56', '2016-11-05 23:31:40', NULL),
(195, '', '', 'uploads/product/Microsoft Lumia 550/fc410252468567fd890f2a19a37d79ea.jpg', '2016-10-27 14:51:05', '2016-10-30 11:15:56', NULL),
(196, '', '', 'uploads/product/Microsoft Lumia 550/2b13c59d40ee9c4eca059bf93e87d951.jpg', '2016-10-27 14:51:06', '2016-10-30 11:15:56', NULL),
(197, 'Aim', '', 'uploads/edit_content_folder/c742465b752ccda356e9e0eb834adc3b.png', '2016-10-28 19:15:00', '2016-10-28 19:16:56', NULL),
(198, 'Aim', '', 'uploads/edit_content_folder/a8b106651bc366e29d62bef8d9ac12f7.png', '2016-10-28 19:15:00', '2016-10-28 19:15:00', NULL),
(199, 'Welcome To The Success City', '', 'uploads/edit_content_folder/c7d203513fbbf8d0dc916d057d46c37e.png', '2016-10-28 19:23:04', '2017-02-05 20:18:57', NULL),
(200, '', '', 'uploads/edit_content_folder/531464d649ac2d43236ac756ece71edd.png', '2016-10-28 22:58:59', '2017-03-20 10:25:33', NULL),
(201, '', '', 'uploads/edit_content_folder/ef4d913a147ffbaece24313ab4a27569.png', '2016-10-28 23:05:30', '2016-10-28 23:05:30', NULL),
(202, '', '', 'uploads/edit_content_folder/dd2288c4caf64d4be999c064ab4271a9.png', '2016-10-28 23:06:50', '2017-03-20 10:25:33', NULL),
(203, '', '', 'uploads/edit_content_folder/0feaa1432a6ae4359c6a2ae6765d467e.png', '2016-10-28 23:27:53', '2016-10-28 23:28:25', NULL),
(204, 'Test', '', 'uploads/edit_content_folder/e576f78b44321dfd8920726208514a2b.png', '2016-10-28 23:30:36', '2016-10-28 23:30:36', NULL),
(205, '', '', 'uploads/edit_content_folder/131457a51ce66b9047ef822c5d58f913.png', '2016-10-28 23:32:13', '2016-10-29 09:40:15', NULL),
(206, 'Test 2', '', 'uploads/edit_content_folder/bf8cb384bd53e887eddd1ac193738f57.png', '2016-10-28 23:32:13', '2016-10-28 23:32:13', NULL),
(207, '', '', 'T', '2016-10-29 09:17:07', '2016-10-29 09:18:27', NULL),
(208, '', '', 'T', '2016-10-29 09:17:08', '2016-10-29 09:18:27', NULL),
(209, '', '', 'uploads/product/Lenovo K5 Note/e4e526c8e14783ad6bb0027445a37035.jpg', '2016-10-29 13:53:04', '2016-11-06 09:56:38', NULL),
(210, '', '', 'uploads/product/Lenovo K5 Note/b3301fc1e2c3dabc6b6e1f7fac4d8db3.jpg', '2016-10-29 13:53:04', '2016-11-06 09:56:38', NULL),
(211, '', '', 'uploads/product/Lenovo A1000/dc18a0270ca4d016bc21d92bee40ab1d.jpg', '2016-10-29 14:04:08', '2016-11-05 23:34:29', NULL),
(212, '', '', 'uploads/product/Lenovo A1000/d480ebc96fb0a5d82a3a1fcfe2cde013.jpg', '2016-10-29 14:04:09', '2016-11-05 23:34:29', NULL),
(213, '', '', 'uploads/product/Oppo A37/14f60a8e9781bfe68557a8362dc1a258.jpg', '2016-10-30 11:28:14', '2016-11-06 10:03:07', NULL),
(214, '', '', 'uploads/product/Oppo A37/b050ef25fd68dccee9d5510b30a010b8.jpg', '2016-10-30 11:28:14', '2016-11-06 10:03:07', NULL),
(215, '', '', 'uploads/product/Oppo Joy 3/cac9e0d073f8a787c707c3898f43bb3f.jpg', '2016-10-30 11:47:02', '2016-10-30 11:47:02', NULL),
(216, '', '', 'uploads/product/Oppo Joy 3/505559092ef110baa4bdc62bed27ca2e.jpg', '2016-10-30 11:47:03', '2016-10-30 11:47:03', NULL),
(217, '', '', 'uploads/product/Huawei Y560/80b2b8da168145a8cc42e3deae0ede88.jpg', '2016-10-30 12:14:37', '2016-10-30 12:14:37', NULL),
(218, '', '', 'uploads/product/Huawei Y560/38f35a80fbabd413c2cdade29a789aac.jpg', '2016-10-30 12:14:37', '2016-10-30 12:14:37', NULL),
(219, '', '', 'uploads/product/Samsung Galaxy J1 mini/7c1c8f2ab05cc443f4f45b9f8f92e2ef.jpg', '2016-10-30 12:22:12', '2016-10-30 12:22:12', NULL),
(220, '', '', 'uploads/product/Samsung Galaxy J1 mini/7f22174c0a3b717e74ce86231eaf64f4.jpg', '2016-10-30 12:22:12', '2016-10-30 12:22:12', NULL),
(221, '', '', 'uploads/product/Apple iPhone 5s/cd6b28d1bd505f3e171d9701cdc7285a.jpg', '2016-10-30 12:31:33', '2016-11-06 00:00:48', NULL),
(222, '', '', 'uploads/product/Apple iPhone 5s/0076190ad6144500f9dd37253eb89376.jpg', '2016-10-30 12:31:33', '2016-11-06 00:00:48', NULL),
(223, '', '', 'uploads/product/Samsung Galaxy Tab E 9.6/d1b9836334d6a800f5a3d06bbe06a2b9.jpg', '2016-10-30 12:40:23', '2016-11-06 00:01:47', NULL),
(224, '', '', 'uploads/product/Samsung Galaxy Tab E 9.6/624ce489e3cafed18f7ef429b5ce0f0e.jpg', '2016-10-30 12:40:23', '2016-11-06 00:01:47', NULL),
(225, '', '', 'uploads/product/Huawei MediaPad T1 7.0/bcf312de25261d0ba866220cb384cac9.jpg', '2016-10-30 12:46:03', '2016-11-06 00:02:41', NULL),
(226, '', '', 'uploads/product/Huawei MediaPad T1 7.0/866dee0abcd356db05e4b48ef5baa831.jpg', '2016-10-30 12:46:03', '2016-11-06 00:02:41', NULL),
(227, '', '', 'uploads/product/Apple iPad mini Wi-Fi + Cellular/2f33dd767dc079a241178b2ec37b1b9c.jpg', '2016-10-30 12:53:12', '2016-10-30 12:53:12', NULL),
(228, '', '', 'uploads/product/Apple iPad mini Wi-Fi + Cellular/ccf5fd254e6e918d55676c340709b7eb.jpg', '2016-10-30 12:53:12', '2016-10-30 12:53:12', NULL),
(229, '', '', 'uploads/users/051a3afaf96147f98018894ff5da12a3.jpg', '2016-10-30 14:29:26', '2016-10-30 14:29:26', NULL),
(230, 'Test 1', '', 'uploads/edit_content_folder/33fed28367e7b022ff169bc601ed5cef.png', '2016-10-30 14:36:17', '2016-10-30 14:36:17', NULL),
(231, 'Test1', '', 'uploads/edit_content_folder/3022bfcd732bc49d48bcddcfc3e71bdb.png', '2016-10-30 14:46:11', '2016-10-30 14:46:11', NULL),
(232, 'Test 1', '', 'uploads/edit_content_folder/182fd7d46fcb1fd22abf4c67bc1f1e7e.png', '2016-10-30 14:47:29', '2016-10-30 14:47:29', NULL),
(233, 'Maxout', '', 'uploads/edit_content_folder/e1dc7f1d87c42e6ac8223d98307032ae.png', '2016-10-30 15:02:02', '2016-10-30 15:02:02', NULL),
(234, 'Maxout', '', 'uploads/edit_content_folder/c2797f696a652980842c84ae9fd1eb00.png', '2016-10-30 15:03:45', '2016-10-30 15:03:45', NULL),
(235, 'Maxout', '', 'uploads/edit_content_folder/00899b06b4af16890f95c56c2d1918fc.png', '2016-10-30 15:11:52', '2016-10-30 15:11:52', NULL),
(236, 'Maxout', '', 'uploads/edit_content_folder/8c83e072e5d5d419885afca678c45050.png', '2016-10-30 15:17:58', '2016-10-30 15:17:58', NULL),
(237, 'Maxout', '', 'uploads/edit_content_folder/f50a3e809602e8908ed1d7349e3d1488.png', '2016-10-30 15:22:17', '2016-10-30 15:22:17', NULL),
(238, 'Maxout', '', 'uploads/edit_content_folder/f952fbd5fe5473dcf3272fc1cb40db98.png', '2016-10-30 15:26:25', '2016-10-30 15:26:25', NULL),
(239, 'Maxout', '', 'uploads/edit_content_folder/9d69fa16df47361d6520418715eda1f3.png', '2016-10-30 15:33:38', '2016-10-30 15:33:38', NULL),
(240, 'Maxout', '', 'uploads/edit_content_folder/f9ec6236f5c0b3210890fc5580bcfb9f.png', '2016-10-30 15:39:11', '2016-10-30 15:39:11', NULL),
(241, 'MaxouT', '', 'uploads/edit_content_folder/4371be112d81689dcb23e53cbcc074c0.png', '2016-10-30 15:40:36', '2016-10-30 15:40:36', NULL),
(242, 'MaxouT', '', 'uploads/edit_content_folder/fdfe3824178988a68b575dc3e6f59805.png', '2016-10-30 16:06:30', '2016-10-30 16:06:30', NULL),
(243, 'MaxouT', '', 'uploads/edit_content_folder/49b243a906608a0e65d260afe39335b9.png', '2016-10-30 16:23:52', '2016-10-30 16:23:52', NULL),
(244, 'MaxouT', '', 'uploads/edit_content_folder/2ae04142631f1450cedbac354e4b6b98.png', '2016-10-30 16:24:58', '2016-10-30 16:24:58', NULL),
(245, 'MaxouT', '', 'uploads/edit_content_folder/ea7d930288100b9eba8155ddc234aa65.png', '2016-10-30 16:32:23', '2016-10-30 16:32:23', NULL),
(246, 'MaxouT', '', 'uploads/edit_content_folder/80a0f811d3c95b61dd37f9cea03c7ba1.png', '2016-10-30 16:51:42', '2016-10-30 16:51:42', NULL),
(247, '', '', 'uploads/edit_content_folder/1b76f948b6917a430282e37d502c7242.png', '2016-10-30 16:53:49', '2016-10-30 16:53:49', NULL),
(248, 'MaxouT', '', 'uploads/edit_content_folder/c1c0e8560ead11bf25729f66e198deda.png', '2016-10-30 16:55:36', '2016-10-30 16:55:36', NULL),
(249, 'MaxouT', '', 'uploads/edit_content_folder/850d982e2383a8f7d5bb9517efab8ef1.png', '2016-10-30 17:01:52', '2016-10-30 17:01:52', NULL),
(250, 'MaxouT', '', 'uploads/edit_content_folder/47608742a34ca74a3ac21adb75f3e9d0.png', '2016-10-30 17:11:24', '2016-10-30 17:11:24', NULL),
(251, 'MaxouT', '', 'uploads/edit_content_folder/6a7d30ded22c7d0b01972d74b55cbc66.png', '2016-10-30 17:21:34', '2016-10-30 17:21:34', NULL),
(252, 'MaxouT', '', 'uploads/edit_content_folder/cb8e093f451c016fd7fcc77e0471db69.png', '2016-10-30 17:31:02', '2016-10-30 17:31:02', NULL),
(253, 'MaxouT', '', 'uploads/edit_content_folder/7e67355bec59176ab4377a9729d7e59f.png', '2016-10-30 19:59:20', '2016-10-30 19:59:20', NULL),
(254, '', '', 'uploads/edit_content_folder/84a2375323df68c6b320ddef3428becd.png', '2016-10-30 20:07:02', '2016-10-30 21:09:06', NULL),
(255, '', '', 'uploads/edit_content_folder/f1f87750d31bc5ad05745d57f029cfd4.png', '2016-10-30 20:11:19', '2016-10-30 20:27:42', NULL),
(256, '', '', 'uploads/edit_content_folder/f74481928809f92dad21e4051850741f.png', '2016-10-30 20:15:15', '2016-10-31 22:57:57', NULL),
(257, 'MaxouT', '', 'uploads/edit_content_folder/bbdf3d6919a4752c1a98cad3f5fb1e61.png', '2016-10-30 21:17:16', '2016-10-30 21:17:16', NULL),
(258, 'MaxouT', '', 'uploads/edit_content_folder/1b9178f2bfe28986a4161cafc52af09a.png', '2016-10-30 21:19:55', '2016-10-30 21:19:55', NULL),
(259, '', '', 'uploads/edit_content_folder/2736a138ce9ff4f64904290955eedde5.png', '2016-10-30 21:24:17', '2017-03-20 10:25:33', NULL),
(260, '', '', 'uploads/edit_content_folder/3dc16cd79135f25fb29d2bba67e4ea80.png', '2016-10-30 21:39:57', '2017-03-20 10:25:33', NULL),
(261, '', '', 'uploads/edit_content_folder/f6e378725af65491195303b52d93ead4.png', '2016-10-30 21:39:57', '2017-03-20 10:25:33', NULL),
(262, '', '', 'uploads/edit_content_folder/3a3ef67288f87acd5144734c2e82b505.jpg', '2016-10-30 21:39:57', '2017-03-20 10:25:33', NULL),
(263, '', '', 'uploads/edit_content_folder/aff9c0ac8ff1062a39f26189f8019c45.png', '2016-10-30 21:49:52', '2016-10-30 22:21:15', NULL),
(264, 'Products', '', 'uploads/edit_content_folder/361a879a4e89fbf3cf7819319bf8251a.png', '2016-10-30 22:02:43', '2016-10-30 22:02:43', NULL),
(265, '', '', 'uploads/edit_content_folder/7d68d2f0804febad5c35f4c00bcd866d.png', '2016-10-30 22:03:58', '2017-03-20 10:25:33', NULL),
(266, '', '', 'uploads/edit_content_folder/049ecb27f42db982b2672ac5e09febdb.png', '2016-10-30 22:21:15', '2017-03-20 10:25:33', NULL),
(267, '', '', 'uploads/edit_content_folder/bb34fb310e665c7cba77af6cf0bfdde0.png', '2016-10-30 22:24:47', '2017-03-20 10:25:33', NULL),
(268, 'test 1', 'test 1', 'uploads/pages/test1/f66f2599087aa73f5188f407e401c0f7.jpg', '2016-10-31 14:09:26', '2016-10-31 14:09:26', NULL),
(269, 'Filter Aqua Jet 5 Stages + Max Aim Card', 'Filter Aqua Jet 5 Stages + Max Aim Card', 'uploads/product/Aim Filter 5 Stages/554d4bafd72036765b83a60d42f3fae7.png', '2016-10-31 20:30:54', '2017-05-02 16:25:20', NULL),
(270, 'Filter Aqua Jet 5 Stages + Max Aim Card', 'Filter Aqua Jet 5 Stages + Max Aim Card', 'uploads/product/Aim Filter 5 Stages/84b5670a993ac9981f591c1f1e2c3f08.png', '2016-10-31 20:30:56', '2017-05-02 16:25:20', NULL),
(271, '', '', 'uploads/product/Tornado Electric Blender /b9087589e4ae6f2dc1c01b0d6f19e8e3.jpg', '2016-10-31 21:59:37', '2016-10-31 21:59:37', NULL),
(272, '', '', 'uploads/product/Tornado Electric Blender /9dff739631babb61458ae25b5eb58524.jpg', '2016-10-31 21:59:37', '2016-10-31 21:59:37', NULL),
(273, '', '', 'uploads/product/Tornado Iron/795f36479398a202ef4effad885a358d.jpg', '2016-10-31 22:04:01', '2016-12-03 20:21:57', NULL),
(274, '', '', 'uploads/product/Tornado Iron/899fad668ae0400d7dd269c283c993ba.jpg', '2016-10-31 22:04:01', '2016-12-03 20:21:57', NULL),
(275, '', '', 'uploads/product/Tornado Oil Heater/8777bf4cc6d75a37193d1d722d2fc974.jpg', '2016-10-31 22:13:09', '2016-12-03 20:22:58', NULL),
(276, '', '', 'uploads/product/Tornado Oil Heater/23aa8fed65511854f3e31e15d3333012.jpg', '2016-10-31 22:13:09', '2016-12-03 20:22:58', NULL),
(277, '', '', 'uploads/product/Toshiba Kitchen Ventilating Fan/e79805b8bd843a6ce174a336e7869fb5.jpg', '2016-10-31 22:15:59', '2016-12-03 20:23:09', NULL),
(278, '', '', 'uploads/product/Toshiba Kitchen Ventilating Fan/44355682a271f24413d926b0fde3717c.jpg', '2016-10-31 22:15:59', '2016-12-03 20:23:09', NULL),
(279, '', '', 'uploads/product/Tornado Microwave/67a8563109d09f9b038603d6023fd38c.jpg', '2016-10-31 22:19:27', '2016-12-03 20:21:39', NULL),
(280, '', '', 'uploads/product/Tornado Microwave/8feadafdc292c9b769b47917d9974ac9.jpg', '2016-10-31 22:19:28', '2016-12-03 20:21:39', NULL),
(281, '', '', 'uploads/product/Tornado Electric Oven/9d17e00415c6f08deebb9b5864c80c33.jpg', '2016-10-31 22:22:12', '2016-12-03 20:21:43', NULL),
(282, '', '', 'uploads/product/Tornado Electric Oven/8f39c1ea29d763de1071678ffd49d5cf.jpg', '2016-10-31 22:22:12', '2016-12-03 20:21:43', NULL),
(283, '', '', 'uploads/product/Tornado Chopper/d7cd7ca8cbf827594903c64cc3b84cc3.jpg', '2016-10-31 22:24:44', '2016-12-03 20:22:39', NULL),
(284, '', '', 'uploads/product/Tornado Chopper/7de22bd059b40b7a8bcd6e3e33a0d08d.jpg', '2016-10-31 22:24:44', '2016-12-03 20:22:39', NULL),
(285, '', '', 'uploads/product/Tornado Hand Blender/2537de95f728e4d048dbaf09fe59ff83.jpg', '2016-10-31 22:27:30', '2016-12-03 20:22:49', NULL),
(286, '', '', 'uploads/product/Tornado Hand Blender/36eee832511c7ac3fc4a1a7d209c3245.jpg', '2016-10-31 22:27:30', '2016-12-03 20:22:49', NULL),
(287, '', '', 'uploads/product/Tornado LED TV 24 Inch/781ea17f581cb3996006fc6e779f99e4.jpg', '2016-10-31 22:31:08', '2016-12-03 20:20:58', NULL),
(288, '', '', 'uploads/product/Tornado LED TV 24 Inch/496dc3d467e68d89bc3d215d9f7d82f0.jpg', '2016-10-31 22:31:08', '2016-12-03 20:20:58', NULL),
(289, '', '', 'uploads/product/Toshiba LED TV 40 Inch/dda844ff9616dde2b8015d18fe74d37d.jpg', '2016-10-31 22:40:13', '2016-10-31 22:40:13', NULL),
(290, '', '', 'uploads/product/Toshiba LED TV 40 Inch/ec169e123b51764f54b96587fde6b6f6.jpg', '2016-10-31 22:40:13', '2016-10-31 22:40:13', NULL),
(291, '', '', 'uploads/product/Sharp LED TV 32 Inch/8472d7ed374222f7262e926aa0338637.jpg', '2016-10-31 22:43:18', '2016-10-31 22:43:18', NULL),
(292, '', '', 'uploads/product/Sharp LED TV 32 Inch/80a38cb38abac008d1f9061c0c2ae510.jpg', '2016-10-31 22:43:18', '2016-10-31 22:43:18', NULL),
(293, '', '', 'uploads/product/Philips Electric Blender/0bbc074b5163be6fc698da6ff5f12da0.jpg', '2016-10-31 22:47:47', '2016-12-03 20:21:49', NULL),
(294, '', '', 'uploads/product/Philips Electric Blender/163bd8223c06f30d5f8f5f6a0a816e48.jpg', '2016-10-31 22:47:47', '2016-12-03 20:21:49', NULL),
(295, '', '', 'uploads/edit_content_folder/3d3d567a715a4f5d56d39726e4c32ef7.jpg', '2016-10-31 22:57:57', '2017-03-20 10:25:33', NULL),
(296, '', '', 'uploads/product/Beats Headphones/89ae6c94716c7fcd319845e5f9f0dfbc.jpg', '2016-11-01 17:11:30', '2016-12-03 20:21:03', NULL),
(297, '', '', 'uploads/product/Beats Headphones/0dc5fa896735c064089ecfdc9bdd40a9.jpg', '2016-11-01 17:11:30', '2016-12-03 20:21:03', NULL),
(298, '', '', 'uploads/product/Power Bank Proda 5000mah/0ee8a81d2867b61e5f89f5d926d13b5b.jpg', '2016-11-01 17:16:47', '2016-12-03 20:21:34', NULL),
(299, '', '', 'uploads/product/Power Bank Proda 5000mah/08f607b7c1bc45ae4d65306ad610adeb.jpg', '2016-11-01 17:16:47', '2016-12-03 20:21:34', NULL),
(300, '', '', 'T', '2016-11-05 10:21:09', '2016-11-05 10:21:09', NULL),
(301, 'Personal', 'Personal', 'uploads/category/Personal/a828463a64f8cbabbd2fbc3f28bfce7d.png', '2016-11-05 10:21:09', '2016-11-05 10:21:09', NULL),
(302, '', '', 'uploads/product/Braun Hair Dryer/1a2377ca49aba2958e1e38faa5720d66.jpg', '2016-11-05 10:34:32', '2016-12-03 20:22:53', NULL),
(303, '', '', 'uploads/product/Braun Hair Dryer/66f4bbbef817679acdc585ffc276e3e0.jpg', '2016-11-05 10:34:33', '2016-12-03 20:22:53', NULL),
(304, '', '', 'uploads/product/BabyLiss/4a8bf0eac13f2445845b2ff48d695e68.jpg', '2016-11-05 10:45:37', '2016-12-03 20:23:03', NULL),
(305, '', '', 'uploads/product/BabyLiss/a73271fce2b679cb716c263d874db117.jpg', '2016-11-05 10:45:37', '2016-12-03 20:23:03', NULL),
(306, '', '', 'uploads/product/BraunHairRemoval/248cd368ad540efc43b157682b166cf6.jpg', '2016-11-05 10:53:04', '2016-12-03 20:23:24', NULL),
(307, '', '', 'uploads/product/BraunHairRemoval/b93e6404df99a238d2894f6fd85684a3.jpg', '2016-11-05 10:53:04', '2016-12-03 20:23:24', NULL),
(308, '', '', 'uploads/product/Philips Hair Removal/c7c38de7a6b71d5b485b66206052f016.jpg', '2016-11-05 11:02:36', '2016-12-03 20:23:16', NULL),
(309, '', '', 'uploads/product/Philips Hair Removal/d6f7e9591fe6697dce427b41fef17b5d.jpg', '2016-11-05 11:02:36', '2016-12-03 20:23:16', NULL),
(310, '', '', 'uploads/product/PhilipsHairRemoval/slider/de2d9ee61d8278a8bb1a7b7a550c7187.jpg', '2016-11-05 11:02:36', '2016-12-03 20:23:16', NULL),
(311, '', '', 'uploads/users/53b216b1d98c606b0238a7912b5c99dc.png', '2016-11-06 12:21:28', '2016-11-06 12:21:28', NULL),
(312, 'Medical Discount Card', 'Medical Discount Card', 'uploads/product/MedicalDiscountCard/f0ab49f34740705a3c969c5bb5dbc9e7.png', '2016-11-14 16:51:54', '2017-05-02 16:24:03', NULL),
(313, 'Medical Discount Card', 'Medical Discount Card', 'uploads/product/MedicalDiscountCard/938692c34b95a8dceb8fa17cfad919ec.png', '2016-11-14 16:51:54', '2017-05-02 16:24:03', NULL),
(314, '', '', 'uploads/users/b583fa5ea7f5ec534f85e65981f11deb.jpg', '2016-11-22 14:41:24', '2016-11-22 14:41:24', NULL),
(315, '', '', 'uploads/product/Laptops/ae6ce0075ab9979c601f66e2b5272044.jpeg', '2016-11-23 16:10:34', '2016-12-03 20:20:53', NULL),
(316, '', '', 'uploads/product/Laptops/c6e51b7af6ecdc1243971b9ed2fab0fd.jpeg', '2016-11-23 16:10:34', '2016-12-03 20:20:56', NULL),
(317, '', '', 'T', '2016-11-28 09:41:34', '2017-01-12 10:10:56', NULL),
(318, 'SignUp', 'SignUp', 'uploads/category/HotDeals/183d4b04423b24357d2f6fa87421e0e2.jpg', '2016-11-28 09:41:34', '2017-01-12 10:10:56', NULL),
(319, 'Package 1', 'Package 1', 'uploads/product/Package1/64f95343ecdb179030f2eb700d406a74.png', '2016-11-28 18:53:40', '2017-05-02 16:25:08', NULL),
(320, 'Package 1', 'Package 1', 'uploads/product/Package1/33e458efb87228dd7d78829d5aecd357.png', '2016-11-28 18:53:40', '2017-05-02 16:25:09', NULL),
(321, '', '', 'uploads/product/Iphone 7 32GB/90b157933685c1e8f2fef3dd38945403.png', '2016-12-03 20:11:34', '2016-12-03 20:14:20', NULL),
(322, '', '', 'uploads/product/Iphone 7 32GB/2e34fba9ab64339aa922629a7092a4a3.png', '2016-12-03 20:11:34', '2016-12-03 20:14:20', NULL),
(323, '', '', 'uploads/cheque_data/3ea76af49468dbba378ba6886a387a20.png', '2016-12-04 11:16:46', '2016-12-04 11:16:46', NULL),
(324, '', '', 'uploads/cheque_data/45edf1480da3f5feb1540dfa054bd7e4.png', '2016-12-04 11:19:48', '2016-12-04 11:19:48', NULL),
(325, '', '', 'uploads/cheque_data/945c41ba8a5ea87caf3cbe3386e87d97.png', '2016-12-04 11:20:10', '2016-12-04 11:20:10', NULL),
(326, '', '', 'uploads/cheque_data/940adf9c98e8db98f92d1b52e7a509b6.png', '2016-12-04 11:20:49', '2016-12-04 11:20:49', NULL),
(327, '', '', 'uploads/cheque_data/00b3ffe72982d2d5debd334c8625652c.png', '2016-12-04 11:22:37', '2016-12-04 11:22:37', NULL),
(328, '', '', 'uploads/cheque_data/c46d1b5a456ff9ef1bca6213ed799f00.png', '2016-12-04 11:23:37', '2016-12-04 11:23:37', NULL),
(329, '', '', 'uploads/cheque_data/a7f6cfb6d404a379a654a0a62d6efdd5.png', '2016-12-04 11:27:49', '2016-12-04 11:27:49', NULL),
(330, '', '', 'uploads/cheque_data/ff20a56a68caa41ee3b71b75825de834.png', '2016-12-04 11:31:09', '2016-12-04 11:31:09', NULL),
(331, '', '', 'uploads/cheque_data/3adfbf2b0892d0918eaa7ac8b63fdc3e.png', '2016-12-04 11:31:42', '2016-12-04 11:31:42', NULL),
(332, '', '', 'uploads/cheque_data/8c42ea910ac411cdd9087e6de47e2b95.png', '2016-12-04 11:49:55', '2016-12-04 11:49:55', NULL),
(333, '', '', 'uploads/cheque_data/61558195d6000c8338581c05cb84887f.png', '2016-12-04 11:51:10', '2016-12-04 11:51:10', NULL),
(334, '', '', 'T', '2016-12-22 08:23:47', '2016-12-22 08:23:47', NULL),
(335, 'Clothes', 'Clothes', 'uploads/category/Clothes/9d24082cd49969f54300a0a8bcc37155.jpg', '2016-12-22 08:23:47', '2016-12-22 08:23:47', NULL),
(336, 'Blazer 1', 'Blazer 1', 'uploads/product/Blazer1/4a7058434c2b8acf8c1d4cb6b9a209b4.jpeg', '2016-12-22 08:36:31', '2016-12-22 19:12:50', NULL),
(337, 'Blazer 1', 'Blazer 1', 'uploads/product/Blazer1/7b0095446504d3526e45001fe1c7006c.jpeg', '2016-12-22 08:36:32', '2016-12-22 19:12:50', NULL),
(338, 'Blazer 2', 'Blazer 2', 'uploads/product/Blazer2/31848d53af2445a78be87756150073b1.jpeg', '2016-12-22 08:47:36', '2016-12-22 19:14:33', NULL),
(339, 'Blazer 2', 'Blazer 2', 'uploads/product/Blazer2/7d316fe0d8910d3cc45549da30f576d4.jpeg', '2016-12-22 08:47:36', '2016-12-22 19:14:34', NULL),
(340, 'Blazer 3', 'Blazer 3', 'uploads/product/Blazer3/038a9e3cb0579c962d8ffeda4a2d92a8.jpeg', '2016-12-22 09:00:03', '2016-12-22 19:15:48', NULL),
(341, 'Blazer 3', 'Blazer 3', 'uploads/product/Blazer3/11b819352deeffbdf342ce441fdb48d3.jpeg', '2016-12-22 09:00:03', '2016-12-22 19:15:48', NULL),
(342, 'Jeans Pants', 'Jeans Pants', 'uploads/product/Jeans Pants 1/e6a1ca999bc28bb6201695fa9ae06ec5.jpg', '2016-12-22 09:16:19', '2016-12-22 09:16:19', NULL),
(343, 'Jeans Pants', 'Jeans Pants', 'uploads/product/Jeans Pants 1/b0cd80dfa0ec759faf220a88efbe3005.jpg', '2016-12-22 09:16:19', '2016-12-22 09:16:19', NULL),
(344, 'Jeans Pants 2', 'Jeans Pants 2', 'uploads/product/Jeans Pants 2/a94f5fe9e49e4055da9a224734d7a8d3.jpg', '2016-12-22 09:20:00', '2016-12-22 09:20:00', NULL),
(345, 'Jeans Pants 2', 'Jeans Pants 2', 'uploads/product/Jeans Pants 2/02e4004125e5559e6be4bba85804fe72.jpg', '2016-12-22 09:20:00', '2016-12-22 09:20:00', NULL),
(346, 'Gabardine Pants 1', 'Gabardine Pants 1', 'uploads/product/Gabardine Pants 1/348324e35489bc41aa6370d548e8ce49.jpg', '2016-12-22 09:23:48', '2016-12-22 09:23:48', NULL),
(347, 'Gabardine Pants 1', 'Gabardine Pants 1', 'uploads/product/Gabardine Pants 1/ce65483f46e9c259889c7d27a48f33d1.jpg', '2016-12-22 09:23:48', '2016-12-22 09:23:48', NULL),
(348, 'Jacket 1', 'Jacket 1', 'uploads/product/Jacket 1/d189d7c486f0a7b095dc8c93e8a2b0c4.jpg', '2016-12-22 09:44:49', '2016-12-22 09:54:17', NULL),
(349, 'Jacket 1', 'Jacket 1', 'uploads/product/Jacket 1/a3bc9a24263f94003637059694b32226.jpg', '2016-12-22 09:44:49', '2016-12-22 09:54:17', NULL),
(350, 'Jacket 2', 'Jacket 2', 'uploads/product/Jacket2/da08b1e506bb6d2d396e6e59eb777e8c.jpg', '2016-12-22 09:46:29', '2016-12-22 09:53:30', NULL),
(351, 'Jacket 2', 'Jacket 2', 'uploads/product/Jacket2/f76b1846e8b89868a895f494b1a043db.jpg', '2016-12-22 09:46:29', '2016-12-22 09:53:30', NULL),
(352, 'Tshirt 1', 'Tshirt 1', 'uploads/product/Tshirt 1/59093bc13ad1310fd3edf37cf784bf85.jpg', '2016-12-22 10:05:53', '2016-12-22 10:05:53', NULL),
(353, 'Tshirt 1', 'Tshirt 1', 'uploads/product/Tshirt 1/de450282303de4f3c30bb314e619d67c.jpg', '2016-12-22 10:05:53', '2016-12-22 10:05:53', NULL),
(354, 'Tshirt 2', 'Tshirt 2', 'uploads/product/Tshirt 2/efbd3a9c47ea060309daefcdf4f950bd.jpg', '2016-12-22 10:28:00', '2016-12-22 10:28:00', NULL),
(355, 'Tshirt 2', 'Tshirt 2', 'uploads/product/Tshirt 2/f78a3cf8e9114e05316e11b847707e09.jpg', '2016-12-22 10:28:00', '2016-12-22 10:28:00', NULL),
(356, 'White Shirt ', 'White Shirt ', 'uploads/product/White Shirt /78f3867697251e6e20eebb17aad544df.jpg', '2016-12-22 19:56:12', '2016-12-22 19:56:12', NULL),
(357, 'White Shirt ', 'White Shirt ', 'uploads/product/White Shirt /68ad2848d56da60bc25b134d7d49cdba.jpg', '2016-12-22 19:56:12', '2016-12-22 19:56:12', NULL),
(358, 'Clothes Package  ', 'Clothes Package  ', 'uploads/product/Clothes Package  /7d4d6abb94bacb88c6fc678c4efa8218.jpg', '2017-01-12 11:07:25', '2017-03-27 10:24:59', NULL),
(359, 'Clothes Package  ', 'Clothes Package  ', 'uploads/product/Clothes Package  /6813aa50f1de4bbebab72dd77e5fdadd.jpg', '2017-01-12 11:07:25', '2017-03-27 10:24:59', NULL),
(360, 'Infinix Hot 4 Package', 'Infinix Hot 4 Package', 'uploads/product/Infinix Hot 4 Package/ab33a4888c65689b52877731c9672e64.png', '2017-01-12 17:23:09', '2017-05-07 20:16:09', NULL),
(361, 'Infinix Hot 4 Package', 'Infinix Hot 4 Package', 'uploads/product/Infinix Hot 4 Package/b20df8b52f2c5e825bfcf178dd49c8bc.png', '2017-01-12 17:23:09', '2017-05-07 20:16:09', NULL),
(362, 'Medical Discount Card', 'Medical Discount Card', 'uploads/product/MedicalDiscountCard/slider/963981764301b8d7e7551d7a8c6b78cc.png', '2017-01-12 19:18:15', '2017-05-02 16:24:03', NULL),
(363, 'Tools', 'Tools', 'uploads/product/Tools Package/759fe3999643b1c9d28eb18409be9ddc.png', '2017-01-13 10:12:37', '2017-05-02 16:24:59', NULL),
(364, 'Tools', 'Tools', 'uploads/product/Tools Package/70f9cb0c5ce4561d901806ee5dbeaf9f.png', '2017-01-13 10:12:37', '2017-05-02 16:24:59', NULL),
(365, 'Huawei Y6 + Power Bank', 'Huawei Y6 + Power Bank', 'uploads/product/Huawei Y6 + Power Bank/c0e7ee3fd8242f9574c845057a429c8a.jpg', '2017-01-13 11:09:46', '2017-02-25 20:01:00', NULL),
(366, 'Huawei Y6 + Power Bank', 'Huawei Y6 + Power Bank', 'uploads/product/Huawei Y6 + Power Bank/df8e5ca9f874380c076e918a95dfd564.jpg', '2017-01-13 11:09:46', '2017-02-25 20:01:00', NULL),
(367, 'Samsung Galaxy J1 mini prime', 'Samsung Galaxy J1 mini prime', 'uploads/product/Samsung Galaxy J1 mini prime/fb2125d3e29dbb9ecbfd9a71a504506a.jpeg', '2017-01-16 08:51:53', '2017-02-25 20:58:13', NULL),
(368, 'Samsung Galaxy J1 mini prime', 'Samsung Galaxy J1 mini prime', 'uploads/product/Samsung Galaxy J1 mini prime/85a7eb6e0023e0cb33cc9302996081b7.jpeg', '2017-01-16 08:51:53', '2017-02-25 20:58:13', NULL),
(369, 'Lenovo A1000', 'Lenovo A1000', 'uploads/product/Lenovo_A1000/51c1cd6990989f21e0505c7854745771.jpg', '2017-01-16 09:00:29', '2017-02-25 21:04:13', NULL),
(370, 'Lenovo A1000', 'Lenovo A1000', 'uploads/product/Lenovo_A1000/71b14afaf9407c50ba25ec1add7f4813.jpg', '2017-01-16 09:00:29', '2017-02-25 21:04:13', NULL),
(371, 'Clothes Package 2', 'Clothes Package 2', 'uploads/product/Clothes Package 2/b78209fae5618a1f2de226b6474593c6.jpeg', '2017-01-16 09:13:30', '2017-02-07 15:45:10', NULL),
(372, 'Clothes Package 2', 'Clothes Package 2', 'uploads/product/Clothes Package 2/f503aeada6cb18a89c1313d5b7a8224d.jpeg', '2017-01-16 09:13:30', '2017-02-07 15:45:10', NULL),
(373, '', '', 'uploads/product/Promo/8022d06b547b5c4f5a62c02ebb3ad64c.jpg', '2017-01-23 09:00:37', '2017-05-10 11:28:33', NULL),
(374, '', '', 'uploads/product/Promo/fcd55ecde4a311dbf27e0bac53d61e52.jpg', '2017-01-23 09:00:37', '2017-05-10 11:28:33', NULL),
(375, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/ba6b432b6d5b00cdd66e21e00f9b7822.jpg', '2017-02-05 19:02:18', '2017-02-05 19:02:18', NULL),
(376, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/4b97db9db25dffe421f3bc26542036ad.jpg', '2017-02-05 20:11:09', '2017-02-05 20:11:09', NULL),
(377, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/8eebea87228eb3d2ded70da578ffde72.jpg', '2017-02-05 20:18:57', '2017-02-05 20:23:33', NULL),
(378, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/0c03da13c8e9978e3b3b4f377d411034.jpg', '2017-02-05 20:25:57', '2017-02-05 20:25:57', NULL),
(379, 'Samsung Galaxy J5', 'Samsung Galaxy J5', 'uploads/product/Samsung Galaxy J5/ead8358ce96035d2b56a1a2889581b62.jpg', '2017-02-07 15:43:38', '2017-02-25 21:08:47', NULL),
(380, 'Samsung Galaxy J5', 'Samsung Galaxy J5', 'uploads/product/Samsung Galaxy J5/391dd6fb2658f071fa469e9ad4e8bffe.jpg', '2017-02-07 15:43:38', '2017-02-25 21:08:47', NULL),
(381, 'Samsung Galaxy A5 ( 2017 )', 'Samsung Galaxy A5 ( 2017 )', 'uploads/product/Samsung Galaxy A5 ( 2017 )/ad530898498a8fcbcb36c397e05ae9e5.jpg', '2017-02-07 15:57:48', '2017-02-25 21:12:09', NULL),
(382, 'Samsung Galaxy A5 ( 2017 )', 'Samsung Galaxy A5 ( 2017 )', 'uploads/product/Samsung Galaxy A5 ( 2017 )/9e55b731e0f8e4cc8fb4185adfb4b5ee.jpg', '2017-02-07 15:57:48', '2017-02-25 21:12:09', NULL),
(383, 'Unionaire gas water heater 10L Package', 'Unionaire gas water heater 10L Package', 'uploads/product/Unionaire gas water heater 10L Package/b73980a3bf6fdc1e3b8cc6e5ece86152.jpg', '2017-02-07 16:34:24', '2017-04-20 10:39:52', NULL),
(384, 'Unionaire gas water heater 10L Package', 'Unionaire gas water heater 10L Package', 'uploads/product/Unionaire gas water heater 10L Package/67311a7adc99b79bf0d5ee3863320bcb.jpg', '2017-02-07 16:34:26', '2017-04-20 10:39:52', NULL),
(385, 'Olympic Electric WATER HEATER 30L PACKAGE', 'Olympic Electric WATER HEATER 30L PACKAGE', 'uploads/product/Olympic Electric WATER HEATER 30L PACKAGE/2c240bc8f201e3416e459a4014ea836b.jpg', '2017-02-07 16:46:25', '2017-04-20 10:50:41', NULL),
(386, 'Olympic Electric WATER HEATER 30L PACKAGE', 'Olympic Electric WATER HEATER 30L PACKAGE', 'uploads/product/Olympic Electric WATER HEATER 30L PACKAGE/36d8e2e11a19111a7eab66fd58636b6d.jpg', '2017-02-07 16:46:25', '2017-04-20 10:50:41', NULL),
(387, 'Samsung 40 Inch HD LED TV ', 'Samsung 40 Inch HD LED TV ', 'uploads/product/Samsung 40 Inch HD LED TV /2508a46c38b2e00f4ac2bb7f4fb3bcba.jpg', '2017-02-07 16:59:44', '2017-04-13 11:40:48', NULL),
(388, 'Samsung 40 Inch HD LED TV ', 'Samsung 40 Inch HD LED TV ', 'uploads/product/Samsung 40 Inch HD LED TV /f41baa85fffbf83950c315d31b2f5ec3.jpg', '2017-02-07 16:59:44', '2017-04-13 11:40:48', NULL),
(389, 'Samsung 32 Inch HD LED TV ', 'Samsung 32 Inch HD LED TV ', 'uploads/product/Samsung 32 Inch HD LED TV /6991a14bc5fbd5a1cbec740f9f62f6ab.jpg', '2017-02-07 17:00:16', '2017-04-20 10:55:42', NULL),
(390, 'Samsung 32 Inch HD LED TV ', 'Samsung 32 Inch HD LED TV ', 'uploads/product/Samsung 32 Inch HD LED TV /10b4b993a62e4eade110b59d8905f017.jpg', '2017-02-07 17:00:16', '2017-04-20 10:55:42', NULL),
(391, 'Whirlpool Microwave 20 L', 'Whirlpool Microwave 20 L', 'uploads/product/WhirlpoolMicrowave20L/01e288b6534a0a975baa5269a1b3e924.jpg', '2017-02-07 18:13:38', '2017-02-26 18:18:17', NULL),
(392, 'Whirlpool Microwave 20 L', 'Whirlpool Microwave 20 L', 'uploads/product/WhirlpoolMicrowave20L/9b71c0668d5f5ee2b38f045085b69455.jpg', '2017-02-07 18:13:38', '2017-02-26 18:18:18', NULL),
(393, 'Samsung Microwave 34 L ', 'Samsung Microwave 34 L ', 'uploads/product/Samsung Microwave 34 L /9ddcfc5fed9cc7f028b9e3b698d77c20.jpg', '2017-02-07 18:16:30', '2017-02-26 18:26:25', NULL),
(394, 'Samsung Microwave 34 L ', 'Samsung Microwave 34 L ', 'uploads/product/Samsung Microwave 34 L /1097ffc0a8c7304b1c01345abe7038d3.jpg', '2017-02-07 18:16:30', '2017-02-26 18:26:25', NULL),
(395, 'Panasonic Vacuum 2300 Watt', 'Panasonic Vacuum 2300 Watt', 'uploads/product/Panasonic Vacuum 2300 Watt/d01e6637138fdb0a9d6dca0a725fc110.jpg', '2017-02-07 18:20:37', '2017-04-20 10:59:56', NULL),
(396, 'Panasonic Vacuum 2300 Watt', 'Panasonic Vacuum 2300 Watt', 'uploads/product/Panasonic Vacuum 2300 Watt/7fe7683936d2a9328aecde06827bad87.jpg', '2017-02-07 18:20:38', '2017-04-20 10:59:56', NULL),
(397, 'White Point Vacuum 1400 Watt', 'White Point Vacuum 1400 Watt', 'uploads/product/White Point Vacuum 1400 Watt/05a262d8cc99d9a358de8bfc32df87d8.png', '2017-02-07 18:24:33', '2017-04-20 10:58:40', NULL),
(398, 'White Point Vacuum 1400 Watt', 'White Point Vacuum 1400 Watt', 'uploads/product/White Point Vacuum 1400 Watt/1ebeef7860d96d7f6b9fac458cc438e9.png', '2017-02-07 18:24:33', '2017-04-20 10:58:40', NULL),
(399, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/7863680e7c4415c9689cac08dcfbd3a9.jpg', '2017-02-11 07:11:42', '2017-02-11 07:11:42', NULL),
(400, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/5445836f9e60f3d0e3521cb331b21d69.png', '2017-02-11 07:15:01', '2017-02-11 07:15:01', NULL),
(401, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/9080e13683615bb92b0368152aa2f3e3.png', '2017-02-11 07:19:39', '2017-02-21 10:02:27', NULL),
(402, '', '', 'uploads/cheque_data/1e6938b7e6bb9651b19bafac17e396a3.png', '2017-02-13 18:14:42', '2017-02-13 18:14:42', NULL),
(403, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/2a60e373aa0c5168e75028a10d310cad.png', '2017-02-21 16:13:52', '2017-02-21 16:13:52', NULL),
(404, '', '', 'uploads/cheque_data/41a8297ea7e65a5419b0613a4f74154d.png', '2017-02-21 20:14:43', '2017-02-21 20:14:43', NULL),
(405, 'Welcome To The Success City', 'Welcome To The Success City', 'uploads/edit_content_folder/b198e957e5dd3eef2a9aba7482d32634.png', '2017-02-26 19:03:16', '2017-02-26 19:03:16', NULL),
(406, 'Welcome To The Success City', 'Welcome To The Success City', 'uploads/edit_content_folder/3b64c5298b8cb0806f60642788a5383a.png', '2017-02-26 19:06:34', '2017-02-26 19:06:34', NULL),
(407, '', '', 'uploads/cheque_data/b2e82100a9ae0d0531299f3583b27fe5.png', '2017-02-26 20:37:11', '2017-02-26 20:37:11', NULL),
(408, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/e262224c241f300f74cae9fdd88dac10.png', '2017-03-05 07:49:14', '2017-03-05 07:49:14', NULL),
(409, 'Max Promo', 'Max Promo', 'uploads/edit_content_folder/06d06d8ef53d693fff5bc1be2eff6565.png', '2017-03-08 09:53:26', '2017-03-08 09:53:26', NULL),
(410, '', '', 'uploads/cheque_data/583f0732a2aaa5867e7c13b45586b651.png', '2017-03-09 21:38:01', '2017-03-09 21:38:01', NULL);
INSERT INTO `attachments` (`id`, `title`, `alt`, `path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(411, '', '', 'uploads/cheque_data/a5133eeb40ec0478d3ae66ee1a66a3f4.png', '2017-03-19 21:01:07', '2017-03-19 21:01:07', NULL),
(412, 'Welcome To The Success City', 'Welcome To The Success City', 'uploads/edit_content_folder/a077923fc10fd2ff0c75693cd6b7f510.png', '2017-03-20 10:24:05', '2017-03-20 10:25:33', NULL),
(413, '', '', 'uploads/cheque_data/90a1a88ec35eb37e3f04818056b2d465.png', '2017-03-20 14:03:56', '2017-03-20 14:03:56', NULL),
(414, 'Black Shirt', 'Black Shirt', 'uploads/product/Black Shirt/72d03c52a1508e928321cececdbec0bb.jpg', '2017-03-27 09:11:27', '2017-03-27 09:11:27', NULL),
(415, 'Black Shirt', 'Black Shirt', 'uploads/product/Black Shirt/0fbbf6622a0a188c373fa9751a88972e.jpg', '2017-03-27 09:11:27', '2017-03-27 09:11:27', NULL),
(416, '', '', 'uploads/users/9d24069eea0ddf61d783bbb4e4cb4327.jpg', '2017-03-27 17:30:05', '2017-03-27 17:30:05', NULL),
(417, '', '', 'uploads/users/d1529d24b7007b179ae6578e6a212c70.jpg', '2017-03-27 17:39:46', '2017-03-27 17:39:46', NULL),
(418, '', '', 'uploads/users/9fa8f363f07e99b2c800d62763b6464e.jpg', '2017-03-27 17:44:45', '2017-03-27 17:44:45', NULL),
(419, '', '', 'uploads/cheque_data/436c16235e671bf3ef12b4f4df7b18eb.png', '2017-04-16 09:40:18', '2017-04-16 09:40:18', NULL),
(420, '', '', 'uploads/cheque_data/98be7417e0f8aa43915c19af39167132.png', '2017-04-23 03:07:43', '2017-04-23 03:07:43', NULL),
(421, '', '', 'uploads/cheque_data/049d5a9e0b1a802c6ecb86027c1b0a44.png', '2017-04-23 03:16:53', '2017-04-23 03:16:53', NULL),
(422, '', '', 'uploads/cheque_data/a24581837eea7707e064fc6db796f668.png', '2017-04-23 21:58:22', '2017-04-23 21:58:22', NULL),
(423, 'Max Aim Card', 'Max Aim Card', 'uploads/product/MaxAimCard/ef99e2687ac5592b88a884164da66d1d.jpg', '2017-05-02 10:13:36', '2017-05-02 17:41:47', NULL),
(424, 'Max Aim Card', 'Max Aim Card', 'uploads/product/MaxAimCard/d7111993bb59b40d74982c0067ae6872.jpg', '2017-05-02 10:13:36', '2017-05-02 17:41:47', NULL),
(425, '', '', 'uploads/cheque_data/23dfc638d2d64efbff75c749f913fa5d.png', '2017-05-03 00:31:59', '2017-05-03 00:31:59', NULL),
(426, '', '', 'uploads/cheque_data/86d282c66133339e548403c9088a4d66.png', '2017-05-03 14:56:38', '2017-05-03 14:56:38', NULL),
(427, '', '', 'uploads/cheque_data/f880a3ed8f3a28e389e2f77820ede0d1.png', '2017-05-05 17:36:38', '2017-05-05 17:36:38', NULL),
(428, '', '', 'uploads/cheque_data/2e092d66bf282bb4f12c6a3a3662a011.png', '2017-05-06 15:27:11', '2017-05-06 15:27:11', NULL),
(429, 'Goldi Stand Fan', 'Goldi Stand Fan', 'uploads/product/Goldi Stand Fan/5ccd9b6d415dd8dd391ec41b9245bd19.jpg', '2017-05-07 21:36:16', '2017-05-07 21:36:16', NULL),
(430, 'Goldi Stand Fan', 'Goldi Stand Fan', 'uploads/product/Goldi Stand Fan/4165d095855982ddbec8d5bd74299946.jpg', '2017-05-07 21:36:16', '2017-05-07 21:36:16', NULL),
(431, 'lenovo tab 7 inch', 'lenovo tab 7 inch', 'uploads/product/Lenovo Tab 7 Inch + Max Aim Card/efd5e749e70f153b0b93f97c644c6bb7.jpg', '2017-05-07 21:42:38', '2017-05-07 21:42:38', NULL),
(432, 'lenovo tab 7 inch', 'lenovo tab 7 inch', 'uploads/product/Lenovo Tab 7 Inch + Max Aim Card/b5e262cf18640ea348ceb593896bd78c.jpg', '2017-05-07 21:42:38', '2017-05-07 21:42:38', NULL),
(433, '', '', 'uploads/cheque_data/2a176f894140f6d9829489049108c3a7.png', '2017-05-08 01:21:38', '2017-05-08 01:21:38', NULL),
(434, '', '', 'uploads/cheque_data/8e3a9f603d2b25da86e74d8e0e164993.png', '2017-05-08 19:57:18', '2017-05-08 19:57:18', NULL),
(435, '', '', 'uploads/cheque_data/434fed3398ce6c265dbe69d44ddf992f.png', '2017-05-08 20:14:32', '2017-05-08 20:14:32', NULL),
(436, '', '', 'uploads/cheque_data/d32f4750121fd44406c5267af57bc51d.png', '2017-05-12 18:40:41', '2017-05-12 18:40:41', NULL),
(437, '22222', '22', 'uploads/users/99d5a13dc9ebf69d835f5d677cea95de.jpg', '2017-05-17 10:10:18', '2017-05-17 10:13:17', NULL),
(438, '', '', 'uploads/users/a62edbd4db6f102facbd4baf7dbba659.jpg', '2017-05-17 11:28:14', '2017-05-17 11:28:14', NULL),
(439, '', '', 'uploads/users/d3f17d3cbd0fd3e25e13b6c0f6d5bf74.jpg', '2017-05-17 11:29:27', '2017-05-17 11:29:27', NULL),
(440, '', '', 'uploads/users/f38d60644f47a71d00f1038c389342c6.jpg', '2017-05-17 11:33:38', '2017-05-17 11:33:38', NULL),
(441, '', '', 'uploads/users/2fa8cb145e52c2c2456bafcbb265ba69.jpg', '2017-05-17 11:38:18', '2017-05-17 11:38:18', NULL),
(442, '', '', 'uploads/users/9f03e3a058a2adfbddf8f253c75b3b40.jpg', '2017-05-17 11:40:26', '2017-05-17 11:40:26', NULL),
(443, '1', '2', 'uploads/users/f228b2a084a0b6a612222451879c0c67.jpg', '2017-05-17 11:42:18', '2017-05-17 11:42:18', NULL),
(444, '', '', 'uploads/users/9dc26dd75839dc73adda1c499f6d710d.jpg', '2017-05-17 11:43:59', '2017-05-17 11:43:59', NULL),
(445, '', '', 'uploads/ads/207733b1b1eade6778c606ea46bbb880.jpg', '2017-05-17 14:45:00', '2017-05-17 14:51:28', NULL),
(446, '', '', 'uploads/ads/8fbaf1407ccc26626074196b820a4481.jpg', '2017-05-17 14:50:57', '2017-05-17 14:51:32', NULL),
(447, '', '', 'uploads/ads/6c8c96ffcbc713dd296a6bac5db83947.jpg', '2017-05-17 14:52:11', '2017-05-17 14:52:11', NULL),
(448, '', '', 'uploads/ads/da6838c08520042a7ca9ac0f46040e1b.jpg', '2017-05-17 14:52:28', '2017-05-17 14:52:28', NULL),
(449, '', '', 'uploads/ads/3669cdc4456b3a49dbafec1d3401a3c1.jpg', '2017-05-17 14:52:46', '2017-05-17 14:52:46', NULL),
(450, '', '', 'uploads/ads/c057655a2d5b1ba6a2e324c923a36097.jpg', '2017-05-17 14:53:02', '2017-05-17 14:53:02', NULL),
(451, '', '', 'T', '2018-02-08 18:02:35', '2018-03-13 20:54:12', NULL),
(452, '', '', 'uploads/admins/d60d04c39e12e6d7950c0a93d0ea1c18.jpg', '2018-02-08 19:15:22', '2018-02-08 19:25:04', NULL),
(453, '', '', 'uploads/admins/ee9c59c85636998d9c06a40a646694f9.jpg', '2018-02-08 19:25:27', '2018-02-08 19:25:27', NULL),
(454, '', '', 'uploads/admins/775f899c4050904301ab4089afa0989b.jpg', '2018-02-08 19:25:44', '2018-02-08 19:25:44', NULL),
(455, '', '', 'uploads/coins/f70615c0c5f74407fd7ba17df2a1bba6.jpg', '2018-02-08 21:33:50', '2018-02-08 21:33:50', NULL),
(456, '', '', 'uploads/coins/7c062c58197622bc3311fb435894b204.jpg', '2018-02-08 21:34:31', '2018-02-08 21:35:27', NULL),
(457, '', '', 'uploads/packages/00cc7c44b24766fb3a74c49d1e305c17.jpg', '2018-02-08 22:48:29', '2018-02-08 22:48:29', NULL),
(458, '', '', 'uploads/packages/11cb363cf3dd3a76bc90eb407c3e7f05.jpg', '2018-02-08 22:49:06', '2018-02-08 22:49:06', NULL),
(459, '', '', 'uploads/packages/d15d17b91643597aa24643dfb54312c6.jpg', '2018-02-08 22:49:33', '2018-02-08 22:49:33', NULL),
(460, '', '', 'uploads/packages/52bb1eaf3f948657e4ce84320dc30cfd.jpg', '2018-02-08 22:50:07', '2018-02-08 22:50:07', NULL),
(461, '', '', 'uploads/packages/59286afef72e3b4650ca7eb50f4628c1.jpg', '2018-02-08 22:50:48', '2018-02-08 22:50:48', NULL),
(462, '', '', 'uploads/packages/6623f2949d371f55e02da26e6d5040d3.jpg', '2018-02-08 22:51:32', '2018-03-07 00:02:20', NULL),
(463, '', '', 'uploads/packages/3c445efcbfae3fc75dd0bf0195b6b119.jpg', '2018-02-08 22:52:37', '2018-03-07 00:02:32', NULL),
(464, '', '', 'uploads/users/168fef1e8eda77fc1221ccd500ebaea6.png', '2018-02-13 20:58:18', '2018-02-13 20:58:18', NULL),
(465, '', '', 'uploads/users/0c77054c3bbc6f8ad90f308713767340.png', '2018-02-13 20:58:37', '2018-02-13 20:58:37', NULL),
(466, '', '', 'uploads/users/96cae12fd48eed1f6b2c8f7ec0987f96.png', '2018-02-13 20:58:43', '2018-02-13 20:58:43', NULL),
(467, '', '', 'uploads/users/18b4b96ff4b7949235b98e40c0d93f16.png', '2018-02-13 20:59:22', '2018-03-18 03:21:52', NULL),
(468, '', '', 'uploads/users/c6f0aebf15625c6a2eb8975cdc6667c8.jpg', '2018-02-16 00:50:55', '2018-02-16 00:50:55', NULL),
(469, '', '', 'uploads/coins/3e0016610fd21781a4f77ddf7e85d699.png', '2018-02-20 02:53:11', '2018-02-20 02:53:11', NULL),
(470, '', '', 'uploads/packages/fa4c1083fe113f99ef8ccc7a9657e4a7.jpg', '2018-02-20 16:30:50', '2018-03-07 00:01:59', NULL),
(471, '', '', 'uploads/admins/5713db19190719b994cee6b535971383.png', '2018-02-27 11:12:51', '2018-02-27 11:17:40', NULL),
(472, '', '', 'uploads/packages/c7dd6df56ab7e064d9429b110d7a44ad.jpg', '2018-03-07 00:00:19', '2018-03-07 00:01:38', NULL),
(473, '', '', 'uploads/packages/55ea6946777e46e00e3d5db1caee24a9.jpg', '2018-03-07 00:01:23', '2018-03-07 00:01:23', NULL),
(474, '', '', 'uploads/coins/089a9868f3eea1eca882de49b68159a7.png', '2018-03-07 01:30:24', '2018-03-07 01:56:27', NULL),
(475, '', '', 'uploads/pages/4654b5984e843d9c1d1a9e0bc6489a3b.jpg', '2018-03-08 09:49:21', '2018-03-08 09:53:08', NULL),
(476, '', '', 'uploads/pages/b5cff5dbe83bc88d6a0d521f328acdae.jpg', '2018-03-08 09:56:03', '2018-03-08 09:56:03', NULL),
(477, '', '', 'T', '2018-03-09 03:31:05', '2018-03-09 03:33:32', NULL),
(478, '', '', 'T', '2018-03-13 20:55:00', '2018-03-13 20:55:00', NULL),
(479, '', '', 'T', '2018-03-14 06:18:25', '2018-03-14 06:22:08', NULL),
(480, '', '', 'T', '2018-03-14 23:10:01', '2018-03-16 05:32:59', NULL),
(481, '', '', 'T', '2018-03-14 23:12:08', '2018-03-14 23:12:08', NULL),
(482, '', '', 'T', '2018-03-14 23:13:51', '2018-03-14 23:13:51', NULL),
(483, '', '', 'T', '2018-03-14 23:14:19', '2018-03-14 23:14:27', NULL),
(484, '', '', 'T', '2018-03-14 23:14:55', '2018-03-14 23:14:55', NULL),
(485, '', '', 'T', '2018-03-14 23:15:34', '2018-03-15 01:27:19', NULL),
(486, '', '', 'T', '2018-03-14 23:15:59', '2018-03-14 23:15:59', NULL),
(487, '', '', 'T', '2018-03-14 23:16:24', '2018-03-15 01:37:11', NULL),
(488, '', '', 'T', '2018-03-14 23:16:45', '2018-03-14 23:16:45', NULL),
(489, '', '', 'T', '2018-03-14 23:17:10', '2018-03-15 17:40:11', NULL),
(490, '', '', 'T', '2018-03-14 23:18:40', '2018-03-14 23:18:40', NULL),
(491, '', '', 'T', '2018-03-14 23:18:59', '2018-03-14 23:18:59', NULL),
(492, '', '', 'T', '2018-03-14 23:19:27', '2018-03-14 23:19:27', NULL),
(493, '', '', 'T', '2018-03-14 23:19:47', '2018-03-14 23:19:47', NULL),
(494, '', '', 'T', '2018-03-14 23:20:16', '2018-03-14 23:32:55', NULL),
(495, '', '', 'T', '2018-03-14 23:21:22', '2018-03-14 23:21:22', NULL),
(496, '', '', 'T', '2018-03-14 23:21:47', '2018-03-14 23:21:47', NULL),
(497, '', '', 'T', '2018-03-14 23:22:07', '2018-03-14 23:22:07', NULL),
(498, '', '', 'T', '2018-03-14 23:22:33', '2018-03-14 23:22:33', NULL),
(499, '', '', 'T', '2018-03-14 23:23:05', '2018-03-15 18:17:24', NULL),
(500, '', '', 'T', '2018-03-14 23:23:32', '2018-03-14 23:23:32', NULL),
(501, '', '', 'T', '2018-03-14 23:23:52', '2018-03-14 23:23:52', NULL),
(502, '', '', 'T', '2018-03-14 23:24:13', '2018-03-15 18:28:23', NULL),
(503, '', '', 'T', '2018-03-14 23:24:43', '2018-03-15 19:56:37', NULL),
(504, '', '', 'T', '2018-03-15 20:07:34', '2018-03-15 20:26:45', NULL),
(505, '', '', 'uploads/general_edit_content/32151505326a2d1e440460600d6cc228.png', '2018-03-15 20:18:56', '2018-03-19 06:10:10', NULL),
(506, '', '', 'uploads/general_edit_content/479d150ab9a4460f7c161960dd694548.png', '2018-03-15 20:18:56', '2018-03-19 06:10:10', NULL),
(507, '', '', 'uploads/general_edit_content/61c1fe10ea4b0110467fd90ed1de567a.jpeg', '2018-03-15 20:18:56', '2018-03-19 06:10:10', NULL),
(508, '', '', 'T', '2018-03-16 00:02:52', '2018-03-16 00:02:52', NULL),
(509, '', '', 'T', '2018-03-16 00:03:52', '2018-03-16 00:54:25', NULL),
(510, '', '', 'T', '2018-03-16 00:04:17', '2018-03-16 00:04:17', NULL),
(511, '', '', 'T', '2018-03-16 00:04:34', '2018-03-16 00:04:34', NULL),
(512, '', '', 'T', '2018-03-16 00:04:56', '2018-03-16 01:38:00', NULL),
(513, '', '', 'T', '2018-03-16 00:05:17', '2018-03-16 01:34:24', NULL),
(514, '', '', 'T', '2018-03-16 00:05:41', '2018-03-16 00:05:41', NULL),
(515, '', '', 'T', '2018-03-16 00:06:01', '2018-03-16 02:00:22', NULL),
(516, '', '', 'T', '2018-03-16 00:06:44', '2018-03-16 00:06:44', NULL),
(517, '', '', 'T', '2018-03-16 00:07:06', '2018-03-16 00:07:06', NULL),
(518, '', '', 'T', '2018-03-16 00:07:29', '2018-03-16 00:07:29', NULL),
(519, '', '', 'T', '2018-03-16 00:07:47', '2018-03-16 00:07:47', NULL),
(520, '', '', 'T', '2018-03-16 00:08:07', '2018-03-16 00:08:07', NULL),
(521, '', '', 'T', '2018-03-16 00:08:31', '2018-03-16 02:20:21', NULL),
(522, '', '', 'T', '2018-03-16 00:08:51', '2018-03-16 00:08:51', NULL),
(523, '', '', 'T', '2018-03-16 00:09:32', '2018-03-16 02:28:51', NULL),
(524, '', '', 'T', '2018-03-16 00:09:49', '2018-03-16 00:09:49', NULL),
(525, '', '', 'T', '2018-03-16 00:10:17', '2018-03-16 02:48:27', NULL),
(526, '', '', 'T', '2018-03-16 00:10:36', '2018-03-16 00:10:36', NULL),
(527, '', '', 'T', '2018-03-16 00:10:54', '2018-03-16 00:10:54', NULL),
(528, '', '', 'T', '2018-03-16 00:11:11', '2018-03-16 00:11:11', NULL),
(529, '', '', 'T', '2018-03-16 00:11:39', '2018-03-16 00:11:39', NULL),
(530, '', '', 'T', '2018-03-16 00:12:06', '2018-03-16 00:12:06', NULL),
(531, '', '', 'T', '2018-03-16 00:12:19', '2018-03-16 00:12:19', NULL),
(532, '', '', 'T', '2018-03-16 00:12:51', '2018-03-16 00:12:51', NULL),
(533, '', '', 'T', '2018-03-16 00:13:14', '2018-03-16 04:39:17', NULL),
(534, '', '', 'T', '2018-03-16 00:14:00', '2018-03-16 00:14:00', NULL),
(535, '', '', 'T', '2018-03-16 00:14:21', '2018-03-16 00:14:21', NULL),
(536, '', '', 'T', '2018-03-16 04:12:21', '2018-03-16 04:12:46', NULL),
(537, '', '', 'T', '2018-03-16 04:14:49', '2018-03-16 04:14:49', NULL),
(538, '', '', 'T', '2018-03-16 05:19:07', '2018-03-16 05:19:07', NULL),
(539, '', '', 'uploads/general_edit_content/8947afdc775b290d079bb2a7170adcb2.png', '2018-03-17 06:58:15', '2018-03-17 06:59:58', NULL),
(540, '', '', 'T', '2018-03-17 07:06:05', '2018-03-17 07:06:05', NULL),
(541, '', '', 'T', '2018-03-17 07:24:22', '2018-03-17 07:24:22', NULL),
(542, '', '', 'T', '2018-03-17 07:24:30', '2018-03-17 07:24:30', NULL),
(543, '', '', 'T', '2018-03-17 07:24:42', '2018-03-17 07:24:42', NULL),
(544, '', '', 'T', '2018-03-17 07:24:58', '2018-03-17 07:24:58', NULL),
(545, '', '', 'T', '2018-03-17 07:25:21', '2018-03-17 07:25:21', NULL),
(546, '', '', 'uploads/users/5eaabb7f54481becd2ab6540d1d8b5bf.jpg', '2018-03-17 07:39:29', '2018-03-17 08:21:13', NULL),
(547, '', '', 'uploads/admins/58499320444ad105db7cf3ca97daf7d4.png', '2018-04-11 06:29:26', '2018-04-11 06:29:26', NULL),
(548, '', '', 'uploads/admins/158e2fd3679385b482f89c917815f8c1.png', '2018-04-11 06:29:26', '2018-04-11 06:29:26', NULL),
(549, '', '', 'uploads/admins/e9ba908d59301329a31a8c6d029e61ec.png', '2018-04-11 06:30:24', '2018-04-11 06:30:24', NULL),
(550, '', '', 'uploads/admins/153feed099ca084d95472f7ef1871d39.png', '2018-04-11 06:30:24', '2018-04-11 06:30:24', NULL),
(551, '', '', 'uploads/admins/cc1908feed6ba6a45e6fdfa1ed7175bc.png', '2018-04-11 06:32:09', '2018-04-11 06:32:09', NULL),
(552, '', '', 'uploads/admins/cd6bdd9830912d8179485419fdd6220a.png', '2018-04-11 06:32:09', '2018-04-11 06:32:09', NULL),
(553, '', '', 'T', '2018-04-11 08:37:52', '2018-04-11 08:37:52', NULL),
(554, '', '', 'T', '2018-04-11 08:37:52', '2018-04-11 08:37:52', NULL),
(555, '', '', 'T', '2018-04-11 08:40:11', '2018-04-11 08:40:11', NULL),
(556, '', '', 'T', '2018-04-11 08:40:11', '2018-04-11 08:40:11', NULL),
(557, '', '', 'T', '2018-04-11 08:40:46', '2018-04-11 08:40:46', NULL),
(558, '', '', 'T', '2018-04-11 08:40:46', '2018-04-11 08:40:46', NULL),
(559, '', '', 'uploads/shops/gallery/7cc8fa53cc2ecd1a9233c759db3418c1.jpg', '2018-04-11 10:53:13', '2018-04-11 10:53:13', NULL),
(560, '', '', 'uploads/shops/gallery/c52cef58577489eb67d3173eb388d36c.jpg', '2018-04-11 10:53:13', '2018-04-11 10:53:13', NULL),
(561, '', '', 'uploads/shops/gallery/8feeb35c01536bc549aab6018cc36a98.jpg', '2018-04-11 10:53:13', '2018-04-11 10:53:13', NULL),
(562, '', '', 'uploads/shops/gallery/d8deec3e50b681d532c0ed72614b5839.jpg', '2018-04-11 10:53:13', '2018-04-11 10:53:13', NULL),
(563, '', '', 'uploads/shops/gallery/1d5462878f4c3f446f248a3092f54242.jpg', '2018-04-11 10:53:43', '2018-04-11 10:53:43', NULL),
(566, '', '', 'uploads/barber/c0d58135c0f82968f84083bead64de3a.png', '2018-04-11 15:37:03', '2018-04-11 15:37:03', NULL),
(567, '', '', 'uploads/barber/2c1cdc2105ef0c13402ae39454d0a33b.png', '2018-04-11 16:47:02', '2018-04-11 16:53:40', NULL),
(568, '', '', 'T', '2018-04-11 16:53:48', '2018-04-11 16:53:48', NULL),
(569, '', '', 'T', '2018-04-11 16:53:56', '2018-04-11 16:53:56', NULL),
(570, '', '', 'T', '2018-04-11 16:53:59', '2018-04-11 16:53:59', NULL),
(571, '', '', 'T', '2018-04-11 16:54:07', '2018-04-11 16:54:07', NULL),
(572, '', '', 'T', '2018-04-11 16:54:40', '2018-04-11 16:54:40', NULL),
(573, '', '', 'T', '2018-04-11 16:55:06', '2018-04-11 16:55:06', NULL),
(574, '', '', 'uploads/service/50c9f4fcffb66f624fd46b725618303f.png', '2018-04-11 16:55:47', '2018-04-11 16:56:08', NULL),
(575, '', '', 'uploads/pages/cb21fca4b96b83e993ea5f5c1f5c98a1.png', '2018-04-12 08:42:11', '2018-04-12 08:42:11', NULL),
(576, '', '', 'uploads/pages/f8b52664609c5235e9d0fb98c036b7f6.png', '2018-04-12 08:43:24', '2018-04-12 08:56:05', NULL),
(577, '', '', 'uploads/shop/129baae467f6931b3dff8c52a5c10873.png', '2018-04-12 09:10:41', '2018-04-12 09:10:41', NULL),
(578, '', '', 'uploads/shop/f9f9e63ccb36a20fbe5012fc2d4c4989.png', '2018-04-12 09:10:41', '2018-04-12 09:10:41', NULL),
(579, '', '', 'T', '2018-04-12 12:02:11', '2018-04-12 12:02:11', NULL),
(580, '', '', 'T', '2018-04-12 12:02:11', '2018-04-12 12:02:11', NULL),
(581, '', '', 'uploads/category//1e82a3139823d0765d9a282b8eb72662.jpg', '2018-07-31 10:55:11', '2018-07-31 10:55:11', NULL),
(582, '', '', 'uploads/article/606681730cebde82cb3b2f45278da8bb.jpg', '2018-07-31 12:20:30', '2018-07-31 12:20:30', NULL),
(583, '', '', 'uploads/article/00af4fb33d4ff39d9d1ee0e7afc5939e.jpg', '2018-07-31 12:22:07', '2018-07-31 12:22:07', NULL),
(584, '', '', 'uploads/article/491a141adf3f00bc742b7389bf705f4d.jpeg', '2018-07-31 14:27:41', '2018-07-31 14:27:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravelhomepage_1', 'eyJpdiI6IlVlZjZLQ3hHdGhqSDM1cFE5XC9Fc1B3PT0iLCJ2YWx1ZSI6IlpIc3JhUnRHcklnWGl5UDZVY3l0cjc3WlVxcXN2U051U29OREVVZ2NGbkJSMmdyM3Fwa0FjVVlibXREUWs5SDZjZEtXRUtEb0dVK1JiT0hFTnVZbXM3U0hma3J5S2o2ZVA4NFFlY0NpREs4ZkF3MHJKOWRVc05lNG1qdTNDMjBLc004bXJodktoODhON3h2QUVvZG5KVGsybFNOXC8zWGVhZVY5eG84alFYT3I1b2RIRUVWU1NxQ3dPTXRtWmZ6OVc3dGQ4ZzhRbzVVNHY0TXp3YVNadlUzenhaSDJ6M2Q0bEJmVzB0SVwvWCtyUitKd004QUJDXC9cL251NExrSVRWczF5N0pGWlJyVzV0YVwvVSt0SXFvZ1JnZlZKQW9ldmVzSWhzNW1MTlYxaVA0MDNBM3U3QzcxSUlpQ21NUHJuYkJOQTZrMWg4QzRleGZ4ckRaN1BhQzdEQkhXMkM3cXM4WGZxeU80WHZ6TFpUYlVvMEVWaUg2WHY5WFc5ekNEMzdnUEVFNjc3TkZTaThsODFJVldXbUlsZDFpdjEzY2VMYldONWdGRlVoTU50NEpTQ0wxVE1WMnFcLzZcLzVsa2IyNVZrTmw4WEU4TU9kd05BeFF3MHQ1YVNhQlJaWnozajlMKzMwNnYxUUl5VDhZVk9CK01MWmFDeHhJbHZwejcweWxqMnFWQ0xuTVwveEdoNGhkY01JZml2Z2JBSjBCTGUyTDlCVEZxZ0ZjYTZObW9jY1VpRlpoNWd1Zm1KanZxc0pZdzZoRzhjNGczZzRPYVFTSUU3b1RpbmtiYWxoU2xKYU5hSjg3M0krb21OZXd1SVVnZ2t5dGF6VWZnSUpqZkV4UkRGTDNoaVcxMGRUT3U5alNHTW5NY2ZoenRJN3VIb1wvS2xVKzJXS1FqNlBINE1rMm10UTVpV1dJa1g4ODM0bU5Od2YyWFVmejVSeXRQMzZpM1dzclwvQW9EZlNVdm5XZEJmbzNaTGxjcHZFenR1T2pMbVY5TDZhUlh4UnppWUVyditlckIzUnBzcTc4TG8rUHZlVlVYdE1td3FDY3NVZFVkRUx4c2loUjlnQTNwdWxLckxRXC95VFl5bHdjQ3AyaHBQOGRXYTRuRVZoRURlZWQ0eGE0allqR3QrUWQxWG04dU82cEtIRmxnZkRpbllTVUxSSFM1Z0R4amNNaUdSa2J0bWV6cldOR1wvdlwvbE9yVVwvcXpaQkRZWTNxK0hUZjdET0g5M24zdlNJTFwvKzhnZDN5bXRSQStUZ3dpZVA2OE13SzFZNUZQVmxQUEQ2bkcxQWpmeEJXQlBZaWVJb1BtelwvT0t1NDlQWnpnbzBaTzBiSFpOd2U5MnJrNGJwdkJTRngzRkFKaVhIQVY5eU5vbUhYN2RzeFhzN0RaenJYMHRvUnJkcXBySEZOaU9XN0grU1VQWGJjdWZQa0QwdmhPaktScFBzV29hdGZQcm9XdEpjVlcya2pHUEsyTU9EKzd1QXg4czc0NHdubmdyTXZSTytIMHNZTTJzZ0Ixem9hUmlcL0M5eXJpbm12VERTb1V6ZitZYUlHN0lHdGVqbjRmZHRlVUIxNGdTUzZwN0ZPdGhDNHJCNEtEd0ROaUhVaGJiWExxQzZob1RnWHdrdzQ0Nkc3dVBTQnJqdzdMc21ZOVRKYTRyTllQUzFRZ1pwZWVjV3psdHJrc3ZCUFlpRWVEN3lrUGJMTnVBSExBd09uY0dWVDFtWEJQanRxMktWWk9YODJQYUJrN2Jhd0NiVjJsNGFZM0hZbDhOQkdNbmxibmZZZDJsTFo2QlJMM3JUMW84bkJBbmNvQU5XbjZTeVpvWUQ5YmNuNW5pRzNRcnI0ckorV0dNb1I3MzRuT2pxSUQzMytBYXEydndpR29lUU96VCtERDJSejlMeE9MMlE0TEdlVTIzRk55K1VIenBWU0pSaHhiclR2aTNBdE1NU2dGTXhndG02cEE1Y0hWUmJQMmR6QWpBNms5UUU0MVEybFY1WGtWOEpnSHRzd29RSXNPT1ZWU0NUblF6cnVybVFpalI4Y2kzMkxDcDBGaklrdnNKWnpINVZQeVdDeUJ4UUJzV2xObmVyOTRcL2tGVWRwRjVoOEozRkQ0Q3dHT203TkJyUEtOWkRLanNRSFI0RFVuOFZ2cFVDeDk5M3l1Qmt4aTE5ekMrWU16SG9VMGtqOEFMWHRkQ3BwamczQTA5eU82WUE0VTcyOGdhdjNTVWhZWmUwdHBYNE95N0RSOFwvSVBKanZxSlpSXC9EaFZzV3ZUVGhiWmorbUJmWDRwSHZLaU9qS1wvWnAzQURaUWgrZ1pIbzNVQVkrOHNPaWFOV2JnenRcL2VHUTkxMFdScDlVN1BNWTYyd1d5N1wvQUE4aHZscFJvbGoyaHNVK0puUVJlXC9mamtcL1wvXC95XC80dFRBd2tLaVVBekl5ek80Zz09IiwibWFjIjoiOTkyYmJiZTg3NzExZTkyZjVmYThlYzU1ZmYyYmUyY2Q0Nzk1MzI0NDliYjU1MTNkNTk3MWQ2Y2JmYTEzYTM5NSJ9', 1539513092),
('laraveluserpanel_register_user_page_1', 'eyJpdiI6IldCeW5oZ1l5dUs1Yk1ocjZLSXdaRWc9PSIsInZhbHVlIjoiaityS1F1clBcLzZnWWFPU0RjYVVcL0hQVEZCMkRhRVwvU3U5ZzdkN21XRWxabHVSM1NuelhjSjJLamJONXh1dUlPd01HXC9rVGtxWGpGdUVnK0ttallLNCtjalMwUUhOMm16R2hcL3M1OHR5U0hHeHh6djRpNmZXbmtCN25GK0E1MTExWU9uRVdjM0Z1UHVKWjBSbkVIYWphOG5kOG9nN1ZKSVBOTzRtWEsyaURod09NeHVlZWZpalIwdE1zUFR0ZjBrTnJHb0dKQkxcL0lSR2ZQSU9nNVVZOHBDcTlxOUhERCtDSkhzQ2xKS0RUSmpsRjVFNkl2UWhreVd0cVU0SSs3Y0VUeFwvejZuczVrTjVZY0hXdEJsMjlhY1RIVG9oa25lcXFHNFJNajRXZkk3NFphb2IrZjdcL3FJWjArZ0RQcnp4UFh5MGFJN2FHUGhYcXFyeWFBVDFxMWtjSkQ3ZDVPaGEydHV1bWUyMVYyVlN0NE9BT1lMQUJ5UklWeVZ4NTZZSDkrVkxSeVEySXZ2OThRdGZWRHpVbFRTcTFLaWxyTmFCZVQyclp3R0NSRDJhWDZoOG9Md3l4VnJZZzhCd1BcL1RBWmc4Wkk2QVB3a0dMM1dZTW5kRG9aS3ZTNjI3amVHRjVNaStJRE8rbXVta3JaQ0U9IiwibWFjIjoiZTlkMWJlOTY2NGRjZDY1NTZmYzE5MTIyMTQ1YTgxMTFhYTYzNDYxYmM3ZmE3Y2ZkYWQ3M2QyOTA2ZjU1NTlmMSJ9', 1539513227),
('laraveladmin_panel_admin_menu_1', 'eyJpdiI6Im9saXEwclVERGI5ejR2MUZ1ZkZoWGc9PSIsInZhbHVlIjoiXC80dktBa1JCd0RCaVlBa0NPbjNMZTF6Q3VHdnlITkxnWmxaOXlOSG9qVllNOEdIK1ZVSDVcL2tRUGVWYzJRTkRuc3ZKVE03dW12UkNiSVdIMmlXV0ZjQ2lTOE5jaE5hVStBWUlJWXc3Q3hBUDJnQlN3dHJEWlRBQTAxYkF0ZnlKZ0ZZTklLUzBPbGp1YnpEMzNIUDQ5UXB0S0JDM1pcL1BPY2tRcWhqc1JjTTBLOER0elRPaHhSZ1wvS01PMkZMODhMRjRkam5hVzd4cUhDKzFDUk16bndDN0MzbXlJRlRLbVJTd0ZpR0l0VWNURzdqamVkdk5hWkRPZHJoNStSZTNReUxUYVVvcTVUS1I5c0RWOWtwQTV6eFZ1dW4wZHpFTTZXMnNLUWJFbFJEeHVCekxQNVNQRnNna1wvUUVmQUdpNVA2VzZ6WUlYb0d0VUZlT1FrMmwrZlpuNjVYYjBOdnJOZHJOeGN6c1c5SjNMd3FveEZ3XC9PSUFHT0JGdGN4NkRVc2tMeHF1UjZNbWpVdzZXNmd2ZzdFZUszYStlNEVobVQwVDdTTUVYRzArUkY1cjlJZ0kzWVZKcHg2RmNFOEJqNEdhM2VYRmdBYzhxNklGOWNjRHRtNjIxNE5EbmJRZVBMcFIydEQzXC8rSlZSYXVENHB1cEs0SmdzdGZHSmxoR0RlZ0NoN1pMUml4Q1FHY3h1Ylo5KzExSXlqNW9iaTBYQ1U3STAzWUdQU05SaWFXXC9YcGdsSUpTOEVKWVU2cVFQNkl3M1J0R2E1Mlc3VTZtSlNvN3RVK3VOVnE2UDkzSkFaSzJhUHpHV0dzZ2FEdGdxdFhxSCtRbmZxZGRlVGo1bWRkZ0N4TzQrcXVuUnQwVHYxSGk3WWE3bDFmM1pHWWdzSVdVVlN0QzZHVTRxYWNNS2g2Zkh2eXRsa1EzNW1FWVpwQTU4U1wvdW9KNitMb2w4MnRuaE9UUVFrUWduZExwVmI2ajIwQ2kzMWdDUW11UTNNNk5UdDRMU0o3blk5cXcwSjgyb2tkTFE0bkxUVHcrM1QrXC9JeGl2amtUTGl0amg2bU1EblR5bzd2RDdRcjE2MG1zSHZRNHRGbXJySTlmelFPbTYyWk9zNUg0T3o0UmlqXC9qVE9tMEN3dG5wNGpFdGdSQnVEd0xCaytjSkVrZThOYjA4Y1JHWTBjclh0RU05S1NQZkNXd1RGTUtUK1lXbFhXV015RmU5NFJKMFppSWt1MXNCZTVDZzJUb0VnN3hzWlwvSUt6Q3F3aU9TVVlEUkZUT2I2Vk1RVWw0MklHbDF0c3R2SGV2dGp2Ym1iRzZYUUNQNUFSVVwvekcweEIzenI5ZTFTWDZWQVNSdENMMmNsSVgxeXFGdkVaMExoMjNBbEp2aVRqdndrSUJORUFnOFBHMDRlKzBjYVhrNldPUFg0XC9OMkFzTnJEMW1zcmJMWmZROStvVENoY2dDOGM0dTRKQzdwUUl1bEs4RGZSZ2EwcVNIMVR2ejdRZWtcL05XQVhHRFJoZThXVTBVQzNveE84dEZKMmZCNWZtVW9rd1lkbEl4eWdSZ0JKV2I1dmJOOVZRYWJGamVRajZIWjhXeFRvbEVZSm1FbWNmakFSMFR0SnkzWmt3RTNaaGsyWGFoUG1cL0NPWGVuRHZxTThVVmNEblArM1lHWnhvVlwvUlpaVWtBS0lkTktQZHJhdjZyR1pmaGxPSExONlVcL2VyeitwNGYrakxcL3cxRzI2eExKSVR5c2RNRHNEUGNsdnVVdkV2YXZETHVQUGhZK1FxeERSK3pXZDB0R0RKcGw2MW1KRUNHZlwvc3dTOVdaZWp2UFwveE1sOW5TcVpuY1QzU0srRHVnNWlhb1VFeng2TDRtQ28wV2U3SHFrbDZSSjNTT3VCRzNuZnpHS0xWdDhJZklOZmJ1OTQ4WmF5ZjRhOTE4ejJ0RTBOZUhrdVJuenh3QkViN3NvcVwvR2lKNkNRK3EyWnE3R291MVJjeTNIdGw2TkdHTFcxVTY4SGtBTGVodGlwWndTR1NWZWZLNk8wTStTQXQrRGk3c3JNN0RLZmY0UEN4Tk05b0NQbUVzRzU0dDJ0MnBMVW1ZM0J4YXc4bWpCTDVNUEZyUmRCOHpIZHJWa3Q5bktZU042XC9QcUo3ajJwZkF1YnRmdlozSmNCcEIramt6UVNwWHhkc3p0T0FsTExRTzNEaGxZQmcxVG12KzUxWFZEZ1haUWo1SVZ5RnY1YWlubHRjbG1nV2FkVHBwM21jSko5Y2ltaFwvdlg4MXBXSDNRWkpGOWhkdm1XNlg2eGV6Q1VCY1hXZ04yZGhqUkZPVmo5MmNMYU9tRGxRd3p1ZDBBRTFqcGRCK0M4NWExdzFYMTZjTVJod0x0aEdxV1JBZlVyUXppQkNsY1cwUnlhMUV3UlFMdFlLS2xaSDdOSGpJOFNjU0tNMmVSbVY1emtIMTYwSUN0MXdORnkyaGdWZWRNSGZaZ2h6Q01UZXBPanpEbG8rUnNHUThBQ05zUzlJVUhOSDlnPT0iLCJtYWMiOiI0MDY3ZWVmYzY4MDA3YTFmMGFmZjkzNzAxYjAzM2ZhMTE4OTlmMjNjY2ViZDFhN2ZlYjA0MmY5NWE0NTFlM2E4In0=', 1539513237),
('laraveladmin_panel_general_keywords_1', 'eyJpdiI6Ijh6VVo5SGtNcENSWnVFUVh0Z1RnTUE9PSIsInZhbHVlIjoiN2xQY1JIem9XaXhvSGpHQjBjZ21LOVY1RDNOcXhjSDA1NHgyd2J2eDNzQVJOWWloYUV2SWFUMGdHN1wvSmNiNXZrMHYwUGJXUE1wcmcycHVzSXFualg4Q3drckNtODdyZG1ESVdIQjc1OGkrVkZ5WDRVNWtxd3BiZk14SXFZaVVJRFZuRUdBNU5RMzk0QmVNeWs2ZjEreU56K1N4MlZaVzJ6dFdNRkFaK0dUZUhsbGc1RHlVd01ka3hZbG93bEpGeGJcL1wvT2pobnFXcmdvT0VPZytFdnpVbFBDbTV4cVRvVVFlNVwveFg0YUd4YjI2VVdGOTBaSGlZWUY5NkxNSUQzNE5GWnhVaFJzYjdvaFQxOHBzR2hONHlXQll0VWNvUzRBNEpXK2k3cGk3eVNFPSIsIm1hYyI6ImJhMjQ1ZjExN2M5OWQyYmY0YzFlNmU3MjdhZDU3OWIyNWM4Njg3YmNlNDFmODNiMmI2MGU3MTQ5OWYyNzE1NjgifQ==', 1539513237),
('laraveladmin_panel_dashboard_page_1', 'eyJpdiI6IldSYVJ2aGljT01cL3NDQTYwbXRpVmx3PT0iLCJ2YWx1ZSI6InlINFM2bTZHc2k3cEhWOHdpSUZkVXBnTTRyd1djeFVJNE5rOUhkNU14UktzV1E5VExFV3JhaE90Y0lZNElad25wVG9uWEd2SGZSWWtaUk5seEgwZElsRHpOVVFTT3ZqbGRCRGI3TWxoTmozREZCUW5WVzljajFZNVpTeEphTVFpbWttdnVXVldHUm41U1o0NEhTS0lFK2ZrWm1ZZmJHT0RXNUVTNlpJWVpaaDhCMk11ZkluMnlOamxVTzVEbm55SlVIbDlVTDArVVpYNnRRWGt4OWFqeXRwZnRId01idGNqdDM5K1wvQUF6Y3MwZWkyS1BWZStjcEdBZ3VFWDNHY3haMndHQXJtd3FhUU9RTkxORm9HS2FKMVA1Rk1ZanVQTFBCUEZ5d3ZVa01La0k5UzRTZlFtSWRiMU1kd1FQd3lGZmpncUtGWG1ta2FtYmxKNklkVXl4cHN3V2RHb0p0N0Vqd3MzdE1HNE5aZm1mSmw1bGxuREdlUUQzaTlQN0oyeGhEMG91YXljVXFwYm5CcEtXMWtQYWdYREVKM3hWNEFvMExtQlI2bFFBUGhxbTRQTE5xQ3Nydjdka1wvblBHQWFyS0g5WTgxaVk5aTJrYnFcL1d2elhLdlBWaFJJdkVWempaRUNMdUNvK1BoNlNxQzA0Q2YyU01MMENcLzZIYzMxMGY4WkJtY0dZTStUNlwvYWF4c0Y4U1hyWE9iaTlLbmdmRXl1Rmdnd2Y1Zm9oc2lsc1pVXC8xREU3YWp0YmdaTW5KcmNwdEN5a0x4VlF3RHVMbEpNOUhvUWhCYXBMN0hmMHE0M1BTZklPVGVtb1hxdE94T090U0V3aUJCM2tsRDd5TEZ1T2NsQlhxUXlRTExDQW96cExJUlkrc1hxSHZzUSttenQ2amxhbWpvRWFjVnRzPSIsIm1hYyI6ImVkMzRiOTQ1NzYyMWNjODdkYmQzMWQ1MjMwYTQzMGI0Y2YxYjAzNTAxNmFiOGI4OWJlYjI5N2I4MThiZjIzYjkifQ==', 1539513237),
('laraveladmin_panel_settings_page_1', 'eyJpdiI6Im8ySEZsblhnM2JmTXd4Y3pcL0MrdFVBPT0iLCJ2YWx1ZSI6Im9cL0NTTFdwQW1UMEVOS0VxVVwvbGs0cHgwZ1FEZVFBRCsyN2daQ0xHc3dcL01ROFh0cjBERnNwa1JEMDNtYlptNHFUclBpVHRWeUhIUkF2azJXRUZnNjdRaDgrT1JpUGtxUk1VUW11Ym5FTzh3NEhReDdGUXNZYWlJVlU1XC9hUHBpSVlKVmVQaTYzcmpDV0NsUmd6VTJlSTBlNkE5WHI5VXkrelVtZHNXMjhVNzNMck0zNWJUZXIxVEE4Skc2ZXpRRWJwbnd0bXR2QXlKVlV0QVBKWDNDdHcyZWw3dzVOTlM1VGtoSERuZWlxNHppbVpGNmlEcEg5V1pOMVwvbDhuR3Z3eVRRYThoZGd2K3VDb0s1bHpvS29cL0NGZWZBTjZZdUJ4RXJDeHBYdlNzenVSYmVTOWkwWm9WWFJ6YVwvdjRmeGpUSEJmdk9LdkVWY1FIY2FqZ096SWlOTXZLNVV2OEhNMkJZc1ZrRndZbERsT2ozbnNmOXhSN1hSZXpQTGF1MDcwV01LMnl4VkcxVzZrcE84ZXpQYXZtZytnPT0iLCJtYWMiOiIxZjk3M2IzMTQzNWY4NjY2MThjYWQ2YmIwNWM3ZTEwYWFlNjYyYzk4M2QyOGNmYzJmYjkxYTg2NWFhZDU1M2NlIn0=', 1539513237),
('laraveladmin_panel_show_network_page_1', 'eyJpdiI6Ijd2dzBDWXdvNzB3QVpDZHBtVlpkOUE9PSIsInZhbHVlIjoicTVNNmRXcXZiNVNXSkgyczQ1V2FJSXFnVU85dWN0N2tOY0VKYUE4blcxNm80TzcrZmpWcGhUTWZJdmdzeXlXNjBqekw5VWtpdnFFVCtBeVVKYll2OTFcL2luRXBhb1lWeGpqS0lrc1ExNHlrd0lnY0VHdEhsY0N5Z05uZmtVQVZVVDk5Q2JseEhhdzA3OXBWVUFvelpMWmZoZGlENko3VUdzcGVXWTZIUzA5cnNIZm41cU1aYlBzR0xMTWpLZzc0UXlNUXYyNG5LM3lYVTVsTWRlR2p1TFNOM3JtS3VMTzMyS2lxeG04Q2RuZFpVMEdmODBnd3NOblwvYjllUk5aY1BUNlB2enpreDg2SEpXcWxiMFpYNThzUStCZGE2UmdYOFpPUlZoMVhHKzV5U0FoR3FWR2tzdlRWaGxPNlVnTG5sY1MzaXRyTVFld3QxR2RZMXh5VkhXeVwveFwvS2oxbDN5MytnXC9McTdZVENcL0tGUlhUcXhmUUxPdEp1WnhNaEc1YlZDbHB6NnNSNklUNlpEUXd4VUtlT1wvUEhGbjlNNjJCZlB5bDVQc2Z1dzNtaDdWakhsYlFHSU5yM2JZN1J5K3RlaU5WNFd1cmZIRFMrT3RBaklTcjRUK3ZHZVwvRENpNHlDcVdHKzBCek9BQWlRK3NLTG1vTm1DWGRqSnJrU3M0SytTOCIsIm1hYyI6IjAxMWY4NTExY2ViYmRkNWYzNGQ4NTUzYjk2MDFiZGQ2MWQzMzM5YmZjOWNjOTI5ZmY2MTUxMTdmZTQwYjUwYWIifQ==', 1539520263),
('laraveladmin_panel_list_users_page_1', 'eyJpdiI6InBiOTRjTkc2NDBjNXRNemNxa1ZidXc9PSIsInZhbHVlIjoiWnRoUGxoeWZRRW9uOXJJNkNcLzFaZlFUcTd1MDU4Q1RmZU01eDgxZm16eTFrY0p1QnBXeVV1S2lTbXVSWVQ3Tm1XUnliVjZ4R2pMT2tnUEVJMUpzY204eGNqUzdKaUtrZ1QwV2xSMmJ3d0pmSURxeGpLK0tnbXBcL0ZjWlRSYkFZaVVrVUlkVGxcL1owb0llOVZsUWRjYlwvYXh2Qlk0eDBqSExHbWkrY01jM2VjWVA4MG12RUhzc1Y1V0FaODFOQk5aQmw3a2NGWnlNXC9vYWp1T3o1MlhrMG5IQmdiMmZrYkRJTDVGR1BDZUIxYlQ3STh1c09sTjlYZFZuXC95NDI4VEFUWHoxSUxJQzZHOVZXWjdXOW9JYnJRT2tTY1ZGdjYxSW1pVVVVT3pDWDRmcEhqZUNzSVRGQW5uK0pmMVwvdm53NjNvb2hvNlB3MnRuenN2NytvWDRkVmg0Z2tGWGF1dUJKcE9oNytNOVI0WjNOYlhvT3kxXC85WEtHd21UVlREZldEYjhLQ0NQNnV2bnFsWDBDNlVBaXYyMUJPRldLXC9GY3dWczZHWlJMNWg0c1IrMlwvSnNjcm9OanpaWGhueGJGdmdFdjhQU1lQU2g5RmNFNHkwMkIyazFQSGdNSXFpclNKQ2EwTm9DYm9xeTNrRCtaZzBLTmY2eWJUVFhjWWViZW50NFRQVzVzR2cxU3kyRW0wYzNueUpoY2NMeDg2TERGWUJrYlJsUThDS1F3ajhXdnNacG9jQjF0TXVkcGdwXC9UTUNxOFdvbkRDUE4zUTR3VnpWaEdcL1UxQ1E0ZkFVOUE2MHhmazdVRjYrUGFTQUY2VnIxNForRXdvcHUwOUhjWEV3ZlpGNHdcL0RSSVptWWlva25Hckl5N0NcL1pxYjZ2QnpYVVhodGt1eXY1V0ZseFJmY0pXNG4wYW5iZ0dEU1VxYTh2MVdMdWsraW1QdEtwWUZZa0UrRTFHZXdtN014XC93dHRQNHFnNzRMMlFlNHpOYXlEUDRhQkhCREVLSmM3dWo4OXZmWFErVTdaVkRoMng0UmZqZDhcL0RneXF5bjRXK3ZHWllsOHBDcTM2YkxTWEtmdjg9IiwibWFjIjoiZGFiNGJmNzdhMDFiNmMyMGI4MzAzNTg1ZTA1NjYxY2Y5Y2M0MTk1Nzg0MzI4Yjc1ZDBmZWExNjY1YzY0NDFkYiJ9', 1539520263),
('laraveladmin_panel_show_all_admin_page_1', 'eyJpdiI6IlpqRFRUMzdsK2RKKzRTajgwR0JSOXc9PSIsInZhbHVlIjoiT0NCdVwvVkpYdCtLQXk0TnFwSFwvOG5NRko2aldQaVk0MFY1cWlOaHJadlpxZUNXWUNEdnZ4QzQ0U0Y4TmtCNVNYeW9aR1B5RWlsRXpBQXJSXC9EMkhIOU43Z3lXSFNVUjMzY1ZxWkMrc0R1OFE9IiwibWFjIjoiMTZkYmNlMTY3ZDY3MzE3MzdjNzJjODM3YjExYTgzZmE2MjU5MmI3NmZjZDc4NmJiZWVmZDNlOGNmZGRmODkwMyJ9', 1539520263),
('laraveladmin_panel_add_new_admin_page_1', 'eyJpdiI6ImV3b2hhZDNwR2h4NktCSmczYkdLOWc9PSIsInZhbHVlIjoiZEtkY2FVM29GeE1scTZhcUhpRTVZam1sdllURGVFeXFwRVNiTHhnM2dPeWJ4RjlKakFKRll3RVNuN1JYN0M5eXdQeCtCOU5XZmRhUVIzMW1PU0hQSmNBNEhSNzNxSEVVN0U0T2cyN0U4Y0NhSDM2d054UVZHXC9OKzJEckVOdXAxNlBUeUdBVHM0cTdGclwvS3pjalJSeU1PTTBEZ0JpSUY1WURHWTBQK2lQTVByS0lMb0lxVXEyRis3dldkTEZDNEgiLCJtYWMiOiJiOGI0MGI4NDUwYTY2NDJhMmFhMjk5ZTBmMmZhZGNhYTJlZjNjNWVhYzlhMTYzZTU0ZDUxYjgzZmNjMDU1ZGQ3In0=', 1539520263),
('laraveladmin_panel_edit_user_data_1', 'eyJpdiI6ImVBclpkeElcL3E5Y1wvcnJwcTVlOGRuUT09IiwidmFsdWUiOiJXUnZoeklHYkpxZXQxZnNoZ1ljaUl5bktOSFkxeGhIZXNLemhDcjNPQXowZVFSbGkwTVIrdjNmXC9GQkpBczBIUU5HeTVVT3VSeUlEZmpJYlZKQVpkUU9jblJkOE5FZWtUbjlXVWZIamtaVEtOd2NyUU5hbGRMQlViWlRsVXZkTFBxM3BzVTZFOVg2N1l1NTRSVUFlQU9SQzhHVU5BaVFQRmp5VXVPang3VFRZVDlMYjR6Z2xacjRUMTZIZ2VLc1gyV09maXBJUFwvOHdReFNTWXZMXC9CdDZFcHJUaENlcFZLMHYzcEFSVzJsNks5R2RHT05JM2V0OEVpcjRSZzUwbHc4N09uTllQZjhLMWZnVGx4REVsT0ZoXC8yR1N4dWd0eW1GOVhiTENTS1FUcm1ZZmRMMXZEMFRZU2xZY0UyTHgzTnQ2V01RbFlBRkFjMHJRcEM3bkw4QmYyNElwQURocVBPXC9hUXJESGFpcnFPdjJrQlVGSHVsVFwvK2FRU1h1UzZQc1wveHlpU2hlYm5YdjZxT0N2Y2lHU2xVTGE5KytleThFbWF5NXBRTmFJQkVHXC9zWnFXNWVZR3R4RHZkekVCT1VPeit0bTJTWlFZbFZaanoydytKMEVnbTZ3PT0iLCJtYWMiOiJmNWM1MzBlZWMyMTlhMjM5OTkxMDdjYjhmNjkzZDliOGY5NDQ3ZTczNmUzNjRhYzNiYjQ3ZWM0NmFkODBjMDE0In0=', 1539520263),
('laraveladmin_panel_show_all_admin_page _1', 'eyJpdiI6Ik5tN2RiNkZiUElOZE96NHpmSW1QNUE9PSIsInZhbHVlIjoiYU9ScU9OU0lcL0tEMWN4NmZ1STJueHZyREVwR3g1NkpHZTJWMmRGdGQ4TlBpY2JUczlLMHZ4Z3JVUHd6b1ZvTTU1YW9ybEVZQjVMa3BqcHV6cG4xZEhCNUlzM09yelBjbEY2Y2JBYk02cDlvPSIsIm1hYyI6ImZlYTQxZmVkNDBlMzc1ZGY0ZTQ0MTQ2MjYxNTdlYWIwNTQyYmYzODg0M2FhZTU0YzM5ZDBiZTRiYTJlZWIxYTUifQ==', 1529919822),
('laraveladmin_panel_show_all_pages_page_1', 'eyJpdiI6IkNyRWYybmZTRnVua2JZeHVySDdaSXc9PSIsInZhbHVlIjoiTWQ5a1M3MElNVUVaM1k2MXQ2UDIyRzVjTGdvNWVtXC9FRGpLcDdWMEJGcW1WdzZFZGYzRXI1MU9FYVo3bmo5ZmF2eFV2SWk1OXA2ZEdzZU1QMlozRDBGZ0ZKN05peVRDb0xUcU95b3hUcjdTTGtUWXNSY2JcL3p0WmNENWJwXC9VcnVpODBrWXh0T002OE1vZ1FZU3lXdTZ2ZEpubFZJblJPSXpnU0VhRWwzcDZWbUhUeWw5bHc5WHdFUUM4NTVkNnozWmRuT3NGbDhQdmtYenhGMkpnMHRIM0hZc1B5RFV0a3dRYWpmYlhpVGRsXC9GYnJBZzg4cVE3cjNPaEdoOFJ2eUlvYWVlcFJXcGZ5MDlZd21BUWdEbTY2bFcrWW93YnZPemh4VlFnNWZkbUxCbUVcL0xlemNkd0NXamZRVlNpTjJlUkNIajBnM2Vua3JOWXJiYmk4bHExaWhiano5djl6bUlXTHRTU2l6Vm42WGxPemVZaEwrMCtXVWVMaksraW03YlJGWFJZNU51VEpQVXdFZUtsRlNcL0QrakluTWc1cXpGVnZjVXZJakNuSTNiVT0iLCJtYWMiOiJiY2I4YTJhNjk2NTczYjA0ZWUzYzA5ZDY4OWZlNzY3ZjU4OTQyNDFiYTkyOWVkNTEyMTg3YTJlZTQ0MGMzNTA2In0=', 1530002503),
('laraveladmin_panel_add_new_page_page_1', 'eyJpdiI6IjNkR0xSVEh0VzlCK1k5dDZPYjZtVVE9PSIsInZhbHVlIjoiRjRzUVBaWmtWMDJLNWludjVLR0dqSTlibFFmOXBqYndDOG1ZMWNWSTRibnVkRTFXZ2oxcm9OMmtHMUU3RTBkTFh3NFlvQUlTODZMdEFaSlVKS2M2NHFQOU40Kzd5R1pHbHVvSTRRbkZha3FkZ3JZSXdpN2Q5XC9rMHNoTDl4dlRkb1B2Q0l5WjlWaTlrQXJJWnB4QUUxdnA0Zk1ORHhpeWxVQkg0a08wNmtrU3pNSmNxRWdGQVplZGJxckgwbERqYVIrQUpvc2o2UlRsNkZ2V2REWFRiWGdKQTFTUEplU1R2a2VcL1c4QVBvVUJzamJYTFhrZEVUVmcyR2x1Q2NGTzFTIiwibWFjIjoiMDhlNDZmZWEyMzBlYTg4MDkzZGQwZGQ4YmUwZTc1ZjAxZDllMDM0YmZiM2RmY2UwMjdlMDBmZmJhZGU0NGYxMSJ9', 1530002503);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `small_img_id` int(11) NOT NULL,
  `cat_type` varchar(200) NOT NULL COMMENT 'article||something else',
  `parent_id` int(11) NOT NULL,
  `cat_order` int(11) NOT NULL,
  `hide_cat` tinyint(1) NOT NULL,
  `show_in_menu` tinyint(1) NOT NULL,
  `make_background` tinyint(1) NOT NULL,
  `cat_icon` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `small_img_id`, `cat_type`, `parent_id`, `cat_order`, `hide_cat`, `show_in_menu`, `make_background`, `cat_icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 0, 'article', 0, 0, 0, 0, 0, '', '2018-07-31 12:13:15', '2018-07-31 12:13:15', NULL),
(23, 0, 'article', 0, 0, 0, 0, 0, '', '2018-07-31 12:26:28', '2018-07-31 12:26:28', NULL),
(24, 0, 'article', 0, 0, 0, 0, 0, '', '2018-07-31 14:24:46', '2018-07-31 14:24:46', NULL),
(25, 0, 'article', 0, 0, 0, 0, 0, '', '2018-07-31 14:25:08', '2018-07-31 14:25:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translate`
--

CREATE TABLE `category_translate` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(300) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_translate`
--

INSERT INTO `category_translate` (`id`, `cat_id`, `cat_name`, `lang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 22, 'todar', 1, '2018-07-31 12:13:15', '2018-07-31 14:24:35', '2018-07-31 14:24:35'),
(23, 23, 'test2', 1, '2018-07-31 12:26:28', '2018-07-31 14:24:37', '2018-07-31 14:24:37'),
(24, 24, 'Sport', 1, '2018-07-31 14:24:46', '2018-07-31 14:24:46', NULL),
(25, 25, 'Tetechnology', 1, '2018-07-31 14:25:08', '2018-07-31 14:25:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_article_id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_article_id`, `comment_user_id`, `comment_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'testt', NULL, NULL, NULL),
(2, 3, 1, 'lorem Ipsum is simply dummy text of the printing and typesetting industry', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `langs`
--

CREATE TABLE `langs` (
  `lang_id` int(11) NOT NULL,
  `lang_title` varchar(200) NOT NULL,
  `lang_text` varchar(200) NOT NULL,
  `lang_img_id` int(11) NOT NULL,
  `lang_direction` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `langs`
--

INSERT INTO `langs` (`lang_id`, `lang_title`, `lang_text`, `lang_img_id`, `lang_direction`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'en', 'English', 1665, 'ltr', '2016-08-16 22:00:00', '2017-12-13 13:32:32', NULL),
(2, 'tr', 'Turkish', 451, '', '2018-02-08 18:02:35', '2018-03-13 20:54:25', '2018-03-13 20:54:25'),
(3, 'tr', 'Turkish', 478, '', '2018-03-13 20:55:00', '2018-03-17 07:07:11', '2018-03-17 07:07:11'),
(4, 'RU', 'ru', 540, '', '2018-03-17 07:06:05', '2018-03-17 07:07:13', '2018-03-17 07:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `small_img_id` int(11) NOT NULL,
  `big_img_id` int(11) NOT NULL,
  `page_slider` text NOT NULL,
  `page_type` varchar(200) NOT NULL,
  `related_pages` text NOT NULL,
  `show_in_menu` tinyint(1) NOT NULL,
  `show_in_userpanel` tinyint(1) NOT NULL,
  `show_in_userpanel_left_side` tinyint(1) NOT NULL,
  `hide_page` tinyint(1) NOT NULL,
  `page_views` int(11) NOT NULL,
  `page_stars` int(11) NOT NULL,
  `page_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `cat_id`, `small_img_id`, `big_img_id`, `page_slider`, `page_type`, `related_pages`, `show_in_menu`, `show_in_userpanel`, `show_in_userpanel_left_side`, `hide_page`, `page_views`, `page_stars`, `page_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3651, 3650, '[]', 'article', '', 0, 0, 0, 0, 8, 0, 0, '2017-12-13 12:17:55', '2017-12-19 11:56:41', NULL),
(2, 1, 3655, 3654, '[]', 'article', '', 0, 0, 0, 0, 0, 0, 0, '2017-12-13 12:18:22', '2017-12-14 12:56:12', NULL),
(3, 3, 3661, 3660, '[]', 'article', '', 0, 0, 0, 0, 25, 0, 0, '2017-12-13 14:38:02', '2017-12-19 18:56:16', NULL),
(4, 3, 3663, 3662, '[3675]', 'article', '', 0, 0, 0, 0, 4, 0, 0, '2017-12-13 15:14:36', '2017-12-19 12:19:50', NULL),
(5, 3, 3665, 3664, '[]', 'article', '', 0, 0, 0, 0, 4, 0, 0, '2017-12-13 15:30:31', '2017-12-19 14:38:51', NULL),
(6, 1, 3670, 3669, '[]', 'article', '', 0, 0, 0, 0, 2, 0, 0, '2017-12-14 12:43:22', '2017-12-20 08:51:42', NULL),
(7, 2, 3672, 3671, '[]', 'article', '', 0, 0, 0, 0, 0, 0, 0, '2017-12-19 11:28:54', '2017-12-19 11:29:13', NULL),
(8, 2, 3674, 3673, '[]', 'article', '', 0, 0, 0, 0, 0, 0, 0, '2017-12-19 11:44:02', '2017-12-19 11:45:11', NULL),
(9, NULL, 0, 3685, 'null', 'default', '', 1, 0, 0, 0, 28, 0, 0, '2018-01-24 15:36:03', '2018-03-08 09:54:12', NULL),
(10, NULL, 0, 3686, 'null', 'default', '', 1, 0, 0, 0, 47, 0, 2, '2018-01-24 16:24:47', '2018-03-13 19:10:08', NULL),
(11, NULL, 0, 475, 'null', 'default', '', 1, 0, 0, 0, 15, 0, 1, '2018-03-08 09:49:21', '2018-03-12 12:45:19', NULL),
(12, NULL, 0, 476, 'null', 'default', '', 1, 0, 0, 0, 9, 0, 0, '2018-03-08 09:56:03', '2018-03-12 12:45:16', NULL),
(13, NULL, 0, 477, 'null', 'default', '', 1, 0, 0, 0, 14, 0, 0, '2018-03-09 03:31:05', '2018-03-12 12:45:21', NULL),
(14, NULL, 0, 479, 'null', 'default', '', 0, 0, 1, 0, 42, 0, 0, '2018-03-14 06:18:25', '2018-07-31 10:38:46', NULL),
(15, NULL, 0, 541, 'null', 'default', '', 0, 0, 0, 0, 0, 0, 0, '2018-03-17 07:24:22', '2018-03-17 07:24:22', NULL),
(16, NULL, 0, 542, 'null', 'default', '', 0, 0, 0, 0, 0, 0, 0, '2018-03-17 07:24:30', '2018-03-17 07:24:30', NULL),
(17, NULL, 0, 543, 'null', 'default', '', 0, 0, 0, 0, 0, 0, 0, '2018-03-17 07:24:42', '2018-03-17 07:24:42', NULL),
(18, NULL, 0, 544, 'null', 'default', '', 0, 0, 0, 0, 0, 0, 0, '2018-03-17 07:24:58', '2018-03-17 07:24:58', NULL),
(19, NULL, 0, 575, 'null', 'default', '', 0, 0, 0, 0, 0, 0, 0, '2018-04-12 08:42:11', '2018-04-12 08:42:11', NULL),
(20, NULL, 0, 576, 'null', 'default', '', 0, 0, 0, 0, 4, 0, 1, '2018-04-12 08:43:24', '2018-07-31 10:38:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages_translate`
--

CREATE TABLE `pages_translate` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `page_title` varchar(300) NOT NULL,
  `page_short_desc` text NOT NULL,
  `page_body` text NOT NULL,
  `page_meta_title` varchar(300) NOT NULL,
  `page_meta_desc` text NOT NULL,
  `page_meta_keywords` text NOT NULL,
  `page_slug` varchar(300) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_translate`
--

INSERT INTO `pages_translate` (`id`, `page_id`, `page_title`, `page_short_desc`, `page_body`, `page_meta_title`, `page_meta_desc`, `page_meta_keywords`, `page_slug`, `lang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'جراحة وتجميل الثدى', 'كل ماا يتعلق بجراحة وتجميل الثدى واستعيدى ثقتك بنفسك', '<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;">جمال ثدى المرأة يكمن فى بروزه و تنساقه مع حجم جسدها كما انه من ابرز علامات النضج الجنسى و منطقة محببة لرجلها فى جسدها .</div>\r\n\r\n<div style="direction: rtl;">لذا تعتبر عمليات تجميل الثدى من اهم العمليات التجميلية التى نجريها لدينا فى&nbsp;<strong>مستشفي اجيبادم&nbsp;</strong>&nbsp;و<strong>&nbsp;</strong>تتمثل فى :</div>\r\n\r\n<div style="direction: rtl;">تكبيره, تصغيره, شده</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;">و قبل ان نوضح تفصيلا&nbsp;<strong>عمليات تجميل الثدى</strong>&nbsp;نريد ان نوضح التركيب التشريحي له :</div>\r\n\r\n<div style="direction: rtl;">فهو عبارة عن دهون, جلد, غدد دون عضلات .</div>\r\n\r\n<div style="direction: rtl;">و هنا نؤكد على حقيقة ما يعرف بتمارين تكبير او تصغير الثدى</div>\r\n\r\n<div style="direction: rtl;">بانها لا تحدث اى تغير فى الحجم بل تسهم بشكل جزىء فى شده و لبس تكبيره او تصغيره اطلاقا</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>أ &ndash; عملية تكبير الثدى :</strong></div>\r\n\r\n<div style="direction: rtl;">و هى تجرى للنساء اللواتي يعانين من :</div>\r\n\r\n<div style="direction: rtl;">&ndash; صغر في حجم الثديين</div>\r\n\r\n<div style="direction: rtl;">&ndash; أو لتعويض حجم الانسجة التي تفقد من الثديين بعد الحمل والولادة</div>\r\n\r\n<div style="direction: rtl;">&ndash; أو لمعالجة عدم تساوي الثديين في الحجم</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>كيف تتم جراحة تكبير الثدى :</strong></div>\r\n\r\n<div style="direction: rtl;">&ndash; تتم باستعمال اكياس السيليكون ، حيث يتم إدخالها تحت أنسجة الثدي أو العضلة الصدرية</div>\r\n\r\n<div style="direction: rtl;">بهدف تحقيق حجم مناسب, تحت التخدير الموضعي و تستغرق حوالي 1/2 الساعة .</div>\r\n\r\n<div style="direction: rtl;">&ndash; يتم فيها ترسيم حجم الثدي المناسب ثم يستخدم شق جراحي, تحت الحلمة او تحت الثدي مباشرة او في الإبط .</div>\r\n\r\n<div style="direction: rtl;">&ndash; لينشأ تجويف يوضع من خلاله الكيس السيلكوني أو غيره لزيادة حجم الثدي ثم يخاط الجرح في مستويات متعددة .</div>\r\n\r\n<div style="direction: rtl;">&ndash; و آلام العملية بسيطة و يمكن السيطرة عليها بتناول المسكنات البسيطة .</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>ما بعد عملية تكبير الثدى &rdquo; فترة النقاهة &ldquo;</strong></div>\r\n\r\n<div style="direction: rtl;">&ndash; يمكنك العودة الى العمل الخفيف بعد أسبوعان من العملية</div>\r\n\r\n<div style="direction: rtl;">&ndash; مع تجنب الاعمال العنيفة و رفع الاثقال لمدة 4 أسابيع</div>\r\n\r\n<div style="direction: rtl;">&ndash; كما ننصحك بعمل تدليك خفيف للثدي لمدة 6 أسابيع</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>ب &ndash; عملية تصغير الثديين :</strong></div>\r\n\r\n<div style="direction: rtl;">لبعض السيدات التى يعانين من نمو غير طبيعي في نسيج الثدي او بسبب تجمع الدهون و الذى بدوره يؤدى الى الترهل و التدلي .</div>\r\n\r\n<div style="direction: rtl;">مما يؤثر على صحة السيدة نفسيا و صحيا, فالوزن الزائد فى الثدى يؤدى الى :</div>\r\n\r\n<div style="direction: rtl;">-آلام الظهر و الرقبة</div>\r\n\r\n<div style="direction: rtl;">-تقوس العمود الفقري</div>\r\n\r\n<div style="direction: rtl;">-صعوبة التنفس</div>\r\n\r\n<div style="direction: rtl;">-و قد يحدث احياناً نمو للثدى بشكل ملحوظ للفتيات دون اسباب لها علاقة بالسن أو الحمل او الولادة.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>كيف تتم جراحة تصغير الثدى :</strong></div>\r\n\r\n<div style="direction: rtl;">يتم استئصال الحجم الزائد, بإجراء شق الجراحي المفتاحي أو الطولي حيث يتم استئصال الأنسجة من الثديين و إزالة مساحة من الجلد و إعادة تشكيل الثديين</div>\r\n\r\n<div style="direction: rtl;">و موقع الحلمتين بشكل جديد مناسب لحجم الثديين، ثم يقوم الجراح بوضع أنبوب لتصريف السوائل و الدم</div>\r\n\r\n<div style="direction: rtl;">الذي قد يتجمع بعد العملية ثم يخاط الجرح في مستويات متعددة و يضع شريطا لاصقا حتى لا تكبر ندبة الجرح،</div>\r\n\r\n<div style="direction: rtl;">و يمكنك أن تغادرين المستشفى بعد 4 ساعات من إجراء العملية، و يتم إزالة أنبوب التصريف في اليوم الثاني .</div>\r\n\r\n<div style="direction: rtl;">كل هذا تحت تخدير كلى و تستغرق العملية ساعتين فقط, و لا تقلقى فالشق الجراحي لا يترك ندبات ظاهرة .</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>ج. عملية رفع الثديين :</strong></div>\r\n\r\n<div style="direction: rtl;">اغلب السيدات يتعرضن لمشكلة ترهلة و تدلى الثدى بسبب الرضاعة الطبيعية مما يفقدهن ثقتهن بمظهرهن فيجرين جراحة رفعه و شده ليعود كما كان قبل.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>كيف تتم جراحة رفع الثدى :</strong></div>\r\n\r\n<div style="direction: rtl;">تتم تحت البنج الموضعى لإستئصال الجلد المترهل بواسطة شقوق جراحية متعددة أكثرها انتشارا الشق الجراحي المفتاحي</div>\r\n\r\n<div style="direction: rtl;">حيث يمكن من خلال هذه الطريقة تصغير قطر الثدي و رفع الحلمة و الثدي في آن واحد، تتطلب هذه العملية استئصال أي أنسجة من الثدي</div>\r\n\r\n<div style="direction: rtl;">و إنما فقط ازالة سنتيمترات محدودة من الجلد، و لذلك يبدو الثدي بنفس الحجم ، لكنه أكثر تماسكا و يستخدم الشق الجراحي الطولي</div>\r\n\r\n<div style="direction: rtl;">حيث يخاط الجرح بشكل منكمش يؤدي إلى تصغير طول الشق الجراحي..</div>\r\n\r\n<div style="direction: rtl;">الذي يظهر فقط امام الثدي دون اية ندبات على الجانبين, و هى تستغرق ساعة واحدة فقط .</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>ما بعد عملية رفع الثدى :</strong></div>\r\n\r\n<div style="direction: rtl;">&ndash; قد تشعر السيدة بآلام بسيطة ، و توصف لها مسكنات بسيطة.</div>\r\n\r\n<div style="direction: rtl;">&ndash; يتم ازالة الشافط دموي بعد 48 ساعة.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>و ينصحك Dr. Ercan cihandide بعد انتهاء عملية تكبير او تصغير او رفع الثدى بالاتى :</strong></div>\r\n\r\n<div style="direction: rtl;">1- لا تنزعجى من حدوث كدمات و تورم و آلام في الثديين فقد يستمر 3&nbsp;أيام بعد العملية و تزول تلقائيا في معظم الأحيان.</div>\r\n\r\n<div style="direction: rtl;">2- لا تنسى ارتداء مشد ضاغط حول الثديين لمدة 3 إلى 4&nbsp;أيام، يلي ذلك ارتداء حمالة خاصة للصدر ليلا و نهارا لمدة 4 أسابيع.</div>\r\n\r\n<div style="direction: rtl;">3- لا تنسى الشريط اللاصق على الجرح لمدة 6&nbsp;أسابيع حتى لا تكبر الندبة.</div>\r\n\r\n<div style="direction: rtl;">4- قد يتعرض جلد الثدي إلى الجفاف بعد العملية فاستمرى على دهانه بالمراهم المرطبة للجلد عدة مرات يوميا، و يراعى عدم دهان منطقة الجرح.</div>\r\n\r\n<div style="direction: rtl;">5- يحدث فقدان للإحساس في الحلمتين مع تنميل يستمر حوالي 6&nbsp;إلى 8&nbsp;أسابيع ثم يعود الإحساس تدريجيا إلى حالته الطبيعية.</div>', 'جراحة وتجميل الثدى', 'جراحة وتجميل الثدى', 'جراحة وتجميل الثدى', 'breast-cosmetic-surgery', 1, '2017-12-13 12:17:55', '2017-12-14 12:49:39', NULL),
(2, 2, 'فيلر الوجه', 'حقائق عن فيلر الوجه قبل اجرائه', '<p style="direction: rtl; ">حقائق يجب ان تعرفيها عن فيلر الوجه قبل اجرائه</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;">مع اتباع بعض العادات الصحية السيئة تتأثر البشرة بشكل كبير خاصة بعد الـ 25 فضلا عن نقص مادة الكولاجين بالجسم و لأن المرأة بصفة خاصة الاكثر حرصا على جمالها,</div>\r\n\r\n<div style="direction: rtl;">ننصحها ببعض العادات اليومية الهامة للتقليل من ظهور تجاعيد البشرة فى سن مبكر, اهمها :</div>\r\n\r\n<div style="direction: rtl;">1. البعد قدر المستطاع عن الضغوط النفسية</div>\r\n\r\n<div style="direction: rtl;">2. التقليل من العصبية الغير مبررة و التى تسهم بشكل كبير فى كثرة التجاعيد حول الفم</div>\r\n\r\n<div style="direction: rtl;">و جبهه الرأس</div>\r\n\r\n<div style="direction: rtl;">3. تجنب التدخين و شرب الكحول</div>\r\n\r\n<div style="direction: rtl;">4. كثرة تناول المياه بشكل يومى, على الاقل 6 كاسات يومياً</div>\r\n\r\n<div style="direction: rtl;">5.عمل تمارين الوجه بشكل يومى امام المرآة كالابتسام و العبوس بشكل متلاحق لفك عضلات الوجه</div>\r\n\r\n<div style="direction: rtl;">6.استخدام بعض الماسكات الطبيعية التى تعمل على شد البشرة و لعل اهمها بياض البيض</div>\r\n\r\n<div style="direction: rtl;">( بخفقه مع قليل من النشا و فرده على البشرة لحتى يجف ثم شطفة بالمياه الدافئة و مسح البشرة بقطنة مبللة بماء الورد .</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;">كل هذة النصائح فى بداية العشرينات و قد تقلل بشكل كبير من شيخوخة الجلد, اما اذا كنتى لا تتبعى هذة النصائح و تعانين بالفعل من تجاعيد الوجه المزعجة</div>\r\n\r\n<div style="direction: rtl;">آثرنا اليوم ان نجمع لكِ بعض الحقائق التى ننصحك بمعرفتها قبل التفكير فى حقن التجاعيد بـ الفيلر</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>الحقيقة الاول &ndash; عن طبيعة الفيلر :</strong></div>\r\n\r\n<div style="direction: rtl;">عبارة عن مواد جلاتينية او شبه سائلة تملىء مناطق التجاعيد و تكون عادتاً</div>\r\n\r\n<div style="direction: rtl;">من الكولاجين او الهاليرونك اسد, الريستالين, حقن البرلين, هيدروكسي ابيتايت او الشحوم من جسم المريض نفسه</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>الحقيقة الثانية &ndash; اين يتم حقن الفيلر :</strong></div>\r\n\r\n<div style="direction: rtl;">يتم حقن التجاعيد ( حول الانف او الفم او لنفخ الخدود, نفخ الشفايف, معالجة ندبات حب الشباب قديمة او اسباب وراثية او نتيجة للحوادث, رفع الحاجب او تقليل اثار التعب او تلونات حول العينين,</div>\r\n\r\n<div style="direction: rtl;">تكبير الثدى او الارداف</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>الحقيقة الثالثة &ndash; ما هى انواع الفيلر :</strong></div>\r\n\r\n<div style="direction: rtl;"><em><em>النوع الأول</em>&nbsp;&ndash; هو نوع مؤقت أو وقتي يستمر من ستة أشهر إلى سنة (و هو ما ينصح به حيث يعد أكثر أماناً ) ،</em></div>\r\n\r\n<div style="direction: rtl;">اما<em>&nbsp;النوع الثاني</em>&nbsp;&ndash; شبه دائم و يستمر من سنة إلى غاية سنتين</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>الحقيقة الرابعة &ndash; كم تستغرق عملية حقن الفيلر :</strong></div>\r\n\r\n<div style="direction: rtl;">ما بين 1/4 ساعة و 1/2 ساعة فهو إجراء سريع و سهل, و يستخدم اطبائنا فى&nbsp;<strong>مستشفي اجيبادم</strong>&nbsp;مخدر موضعي لتقليل الإحساس بالألم في منطقة الحقن</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>الحقيقة الخامسة &ndash; ما يجب ان تتجنبيه قبل الفيلر :</strong></div>\r\n\r\n<div style="direction: rtl;">ترك استخدام مسيلات الدَّم كالأسبرين مثلاً قبل إجراء العملية بفترة ،و يجب إخبار الطبيب بالأدوية التي تستعمليها و بتاريخك المرضي,</div>\r\n\r\n<div style="direction: rtl;">و إذا ما كنتى تعانين من الحساسية لشيء ما .</div>\r\n\r\n<p style="direction: rtl; ">و تستمر نتيجة الفيلر من 9 شهور الى سنة كاملة , اما اذا كنتى بحاجة لنتيجة مختلفة فننحصك بالبوتكس .</p>', 'فيلر الوجه', 'فيلر الوجه', 'فيلر الوجه', 'filler-face', 1, '2017-12-13 12:18:22', '2017-12-14 12:56:12', NULL),
(3, 3, 'ما هى زراعة الشعر', 'نظرة شاملة عن زراعة الشعر او عملية نقل البصيلات', '<p style="direction: rtl; ">زراعة الشعر هي عملية نقل البصيلات الموجودة في القسم الخلفي من الراس (المنطقة المانحة) و هي البصيلات التي لايمكن لها ان تتساقط و نقلها الى القسم العلوي من الراس (المنطقة الاخذة) منطقة الصلع PRIVATE FUE + IMPLANTER TEKNIK و هذه التقنية المتاحة في اربع مراكز في العالم نحتل فى مستشفى وينر اجيبادم مركزا مميز حيث تصل نسبة النجاح الى 100 % و تعتبر اهم خطوة في زراعة الشعر هي اقتطاف البصيلات من المنطقة المانحة دون الحاق اي ضرر او اذى بها و حفظها في معدات مبردة, و بتقنية ,PRIVATE FUE بطريقة يدوية تماما دون الاعتماد على الاجهزة باقتطاف البصيلات دون الحاقها باي ضرر ممكن, كذلك يتم حفظ البصيلات في اجواء و معدات مبردة مخصصة لذلك و بتقنية IMPLANT TEKNİK يتم زرع هذه البصيلات اليا دون ان تمسها الايدي, و بعد عملية زراعة الشعر , يحصل المريض على شهادة الكفالة من قبل المركز و يتم اعادة المبلغ كاملا في حال عدم الحصول على النتائج المرغوبة عقب الزراعة.</p>', 'ما هى زراعة الشعر, تعرف على زراعة الشعراو نقل البصيلات فى  وينر اجيبادم', 'زراعة الشعر, تعرف على عملية زراعة الشعر فى مستشقى وينر اجيبادم وكيف تتم وما بعد عملية الزراعة والرعاية.', 'ما هى زراعة الشعر', 'what-is-hair-transplantation', 1, '2017-12-13 14:38:02', '2017-12-19 18:09:52', NULL),
(4, 4, 'زراعة اللحية', 'زرعة اللحية ونقل البصيلات', '<p style="direction: rtl; ">كما هو الحال في زراعة الشعر اقتطاف البصبلات في اللحية هو امر حساس و مهم للغاية لا يتحمل الاضرار للبصيلات, بطريقة مشابهة حيث يتم الاقتطاف للبصيلات يدويا بتقنية PRİVATE FUE و يتم حفظها في احواء باردة, و بتقنية SAGITAL يتم زرع هذه البصيلات من دون ان تمسها الايدي و بدون اي ضرر للبصيلات و يتم استخدام كريمات خاصة تدهن على الوجه بعد الزراعة لتغذية البصيلات في منطقة اللحية بشكل مكثف خلال 72 ساعة و نسبة النجاح لزراعة اللحية لدينا فى مستشفى وينر اجيبادم هي 98%.</p>', 'زراعة شعر اللحية, زراعة الذقن والشارب مستشفى وينر اجيبادم', 'زراعة اللحية فى مستشفى وينر اجيبادم, تعرف على الطريقه المستخدمه فى مستشفى مينر ابيجادم لزراعة شعر اللحيه والذقن والشارب وما بعد عملية الزرع.', '', 'grow-beard', 1, '2017-12-13 15:14:36', '2017-12-19 11:55:16', NULL),
(5, 5, 'زراعة الحاجب', 'زراعة الحاجب عوضاً عن الحلول المؤقتة بالميكب', '<p style="direction: rtl; ">و هو امر مهم بالنسبة للسيدات اكثر من الرجال, و لكي تضيف السيدات على جمالهن جمالا فانهن يتبعن زراعة الحاجب, عوضاً عن الحلول المؤقتة بالميكب, و في زراعة الحاجب يتم جمع البصيلات بتقنية PRIVATE FUE, و حفظها مبردة و نقلها بتقنية مطورة جدا تسمى KORONAL CHANEL , و تصل نسبة نجاح زراعة الحاجب لدينا فى مستشفى وينر اجيبادم لـ 100%.</p>', 'زراعة الحاجب, عملية زراعة شعر الحاجب مستشفى وينر اجيبادم', 'زراعة الحاجب بتقنية PRIVATE FUE و نقلها بتقنية مطورة جدا تسمى KORONAL CHANEL, و تصل نسبة نجاح زراعة الحاجب لدينا فى مستشفى وينر اجيبادم لـ 100%.', 'زراعة الحاجب', 'eyebrow-transplant', 1, '2017-12-13 15:30:31', '2017-12-19 11:47:15', NULL),
(6, 6, 'جراحة تجميل الانف', 'كل ما يخص عليات جراحة تجميل الانف واعادة ثقتك بملامح وجهك', '<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;">لم تعد عمليات تجميل الانف بالامر المخيف فهى ليست فقط لاعادة ثقتك بملامح وجهك بل لتحسين عملية التنفس شكل خاص .</div>\r\n\r\n<div style="direction: rtl;">بالنسبة لتحسين التنفس,ففي السابق كان تعديل الحاجز الانفى و استئصال اللحمية هو الحل الوحيد لاصلاح وظيفة الانف و للاسف لم يكن كافيا في بعض الحالات</div>\r\n\r\n<div style="direction: rtl;">و بخاصة الحالات التي تعاني من ضيق في صمامات الانف الداخلية و الحل الأمثل هنا هو وضع دعامات غضروفية لتوسيع مسار التنفس</div>\r\n\r\n<div style="direction: rtl;">و تتم بواسطة جراح التجميل لدينا فى مستشفي اجيبادم .&rdquo;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>اذاً متى يتم منعك من اجراء عملية تجميل الانف سواء تجملياً او لصعوبة التنفس ؟</strong></div>\r\n\r\n<div style="direction: rtl;">&ndash; اذا كنت مصاب بالانيميا &rdquo; فقر الدم &rdquo;</div>\r\n\r\n<div style="direction: rtl;">&ndash; مدخن &rdquo; فقد يطول الالم بعد العملية للمدخنين بشكل خاص &rdquo;</div>\r\n\r\n<div style="direction: rtl;">&ndash; مصاب بأى تشوهات او ضعف فى عضلات الوجه</div>\r\n\r\n<div style="direction: rtl;">-عمرك أقل من 15 سنة للإناث و 17 سنة للذكور &rdquo; لأن نمو الوجه يكتمل تقريباً في تلك الأعمار&rdquo;</div>\r\n\r\n<div style="direction: rtl;">&ndash; مصاب بسيولة الدم .</div>\r\n\r\n<div style="direction: rtl;">و قد تختلف عمليات تجميل الانف نفسها حسب شكل طرف الانف و حجمها و بل تختلف اذا كان رجل او امرأة و ايا كان فليس هناك ابدا ملامح مثالية مائة بالمائة</div>\r\n\r\n<div style="direction: rtl;">فالتجميل يحقق التوازن و ليس الملامح المثالية</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>كيف تتم عملية تجميل الانف :</strong></div>\r\n\r\n<div style="direction: rtl;">&ndash; بداية تستغرق العملية من 45 الى 90 دقيقة و تخرج بعد 24 ساعة من المستشفي .</div>\r\n\r\n<div style="direction: rtl;">&ndash; ننصحك بإحضار صورك و صور المحاكاة معك في يوم العمليّة.</div>\r\n\r\n<div style="direction: rtl;">&ndash; يكون التخدير عامّاً أو موضعيّاً، إلى جانب التخدير المخصّص للعمليّات التجميلية، و ذلك لمساعدة المريض على الاسترخاء</div>\r\n\r\n<div style="direction: rtl;">&ndash; في حالة جراحة الحاجز الأنفي أو تجميل الأنف كاملاً مع الجانب العظمي، يُفضَّل التخدير العام لأنّه أكثر راحةً للمريض.</div>\r\n\r\n<div style="direction: rtl;">-اما تجميل الأنف الموضعي لطرف الأنف أو لإزالة حدبة صغيرة على الجزء العظمي، يكفي عادة التخدير الموضعي مع التخدير المخصّص للجراحة التجميلية.</div>\r\n\r\n<div style="direction: rtl;">&ndash; و اخيراً تجميل الأنف الجزئي، و التى لا تدوم الإقامة في المستشفى نهاراً كاملاً.</div>\r\n\r\n<div style="direction: rtl;">أمّا في حالة تجميل الأنف الكامل، المرتبط بجراحة الحاجز، يُتوقَّع البقاء في المستشفى ليلة واحدة.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>ما بعد عميلة تجميل الانف :</strong></div>\r\n\r\n<div style="direction: rtl;">تستغرق مرحلة ما بعد العمليّة، و التي تختلف وفقاً لنوع عمليّة تجميل الأنف،</div>\r\n\r\n<div style="direction: rtl;">حوالي 7 أيّام إلى 15 يوماً، و تتمثل فى الاتى :</div>\r\n\r\n<div style="direction: rtl;">&ndash; احتماليّة وضع فتائل لمدّة 3-4 أيّام.</div>\r\n\r\n<div style="direction: rtl;">&ndash; وضع جُبَيرة أنفيّة في حالة جراحة الحاحز.</div>\r\n\r\n<div style="direction: rtl;">&ndash; استخدام ضِمَادة أنفيّة (إمّا الشاش المعقّم أو قطعة صغيرة من البلاستيك أو الجصّ)</div>\r\n\r\n<div style="direction: rtl;">تظلّ لمدّة 10 أيّام إذا تمّ إجراء تغيير على شكل الأنف.</div>\r\n\r\n<div style="direction: rtl;">&ndash; يظلّ الأنف هشّاً لمدّة شهر، حيث يجب تجنّب أيّ صدمة أو حركات عنيفة ( إخراج المخاط بعنف، الرياضة&hellip; ).</div>\r\n\r\n<div style="direction: rtl;">&ndash; عند إزالة الضِّمَادة، قد يظهر انتفاخ على الأنف، و يزول بالعلاج الطبّي الموضعي.</div>\r\n\r\n<div style="direction: rtl;">&ndash; لا تُزال خيوط الجراحة، لأنّه يتمّ وضعها داخل الأنف، كما أنّها تذوب لوحدها.</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="direction: rtl;"><strong>متى يجب ان تقلق بعد عملية تجميل الانف :</strong></div>\r\n\r\n<div style="direction: rtl;">&ndash; عند شعورك بأيّ ألم فهذا مؤشر إلى إمكانيّة حدوث إلتهاب ما, وقتها&nbsp;نرحب جدا بزيارتك لنا مع طبيبك للاطمئنان عليك</div>\r\n\r\n<div style="direction: rtl;">&ndash; قد تختلف مدّة وضع الضِّمَادة الخارجيّة و احتماليّة ظهور كدمات على الجفون والخدّين،من شخص إلى آخر,</div>\r\n\r\n<div style="direction: rtl;">فننصحك بعدم مقارنة حالتك بحالة اخرى تعتقد انها مشابها لك ..</div>', 'عملية جرااحة وتجميل الانف', 'عملية جرااحة وتجميل الانف', 'عملية جرااحة وتجميل الانف', 'Rhinoplasty-Surgery', 1, '2017-12-14 12:43:22', '2018-01-24 01:39:34', '2018-01-24 01:39:34'),
(7, 7, 'تقويم الاسنان', 'اعيدى ثقتك فى ابتسامتك مع تقويم الاسنان', '<p style="direction: rtl; ">لم تعد مشكلة اعوجاج الاسنان او عدم انتظامها بالامر المزعج مع التقويم الثابت, لكن شكله يبدو مزعج بعض الشيء للسيدات كمظهر غير جمالى, خاصة انه ثابت و لا يتم التخلص منه الا بعد اصلاح الاسنان تماماً و قد تطول الفترة العلاجية او تقصر, حسب حالة الاسنان نفسها و استجابتها, و بعد انتهاء الفترة المحددة تحتاج لفترة اخرى لثبيت الوضع الجديد تستغرق من 3 الى 6 اشهر .</p>\r\n\r\n<p style="direction: rtl; ">لكن التقويم الشفاف حل الازمة تماما, بل لم تعد ازمة من الاساس لانه يختلف تماماً ع التقويم المعدنى الثابت :<br />\r\n1- حيث لا يمكن رؤيتة بل انه يعطى مظهر جمالى لما يضفيه من لمعة رقيقة على الاسنان .<br />\r\n2- متحرك, يتم ارتدائه طوال اليوم و اثناء النوم و لا يتم خلعه الا وقت الطعام او عند تناول اى مشروب ساخن,&nbsp;و فى تلك الاثناء يتم وضعه فى معقم كوريغا او اى نوع متوافر.<br />\r\n&nbsp;</p>\r\n\r\n<p style="direction: rtl; ">اذا كيف يعمل التقويم الشفاف ؟ و هل يعطى نفس نتيجة التقويم الثابت ؟<br />\r\n&ndash; يتم أخذ طبعة للأسنان دقيقة من خلالها يتم تحريك الأسنان بمقدار بسيط بحيث تصبح فيه الأسنان في وضع أصح من السابق<br />\r\n&ndash; ثم يتم تحريك الأسنان حسب الخطة الموضوعة من قبل الطبيب،و تتوالى هذه العملية الى أن تصل الأسنان الى الوضع المطلوب،<br />\r\n&ndash; و تتراوح فترة العلاج لكل مرحلة ما بين أسبوع و أسبوعين أو أكثر حسب تشخيص الطبيب للحالة المريض، و تكون فترة العلاج من 6 الى 24 شهرا أو أكثر إذا دعت الحاجة.<br />\r\n&ndash; و هو يعطى نفس نتيجة التقويم الثابت لانه عبارة عن سلسلة قوالب متتالية مصنوعة من مادة الأكريل (بلاستيك),<br />\r\n&ndash; يكون لونه شبه شفاف تثبت على الأسنان لفترات زمنية محددة بحيث يتم تبديلها بعد انتهاء كل فترة من اسبوع الى اسبوعين ؛&nbsp;حيث يتم تحريك الأسنان بشكل غير مؤلم الى وضع أفضل من السابق الى أن تصبح الأسنان في الوضع المطلوب<br />\r\nعكس تماماً التقويم المعدنى الثابت و الذي تستخدم فيه أسلاك وحاصرات معدنية، بينما التقويم الشفاف تستخدم فيه مواد بلاستيكية خاصة تُفصل على مقاس الأسنان.</p>\r\n\r\n<p style="direction: rtl; ">ما هى الحالات التى يمكنها ان تستخدم التقويم الشفاف ؟<br />\r\n1 &ndash; تزاحم الأسنان.<br />\r\n2 &ndash; اعوجاج الأسنان.<br />\r\n3 &ndash; الأسنان المستديرة.<br />\r\n4 &ndash; الأسنان المائلة.<br />\r\n5 &ndash; الأسنان المتقدمة للأمام و للخلف.</p>\r\n\r\n<p style="direction: rtl; ">ما هى خطوات العلاج للتقويم الشفاف ؟<br />\r\nعند زيارتنا, يتم فحص الفم للتأكد من سلامة اللثة من الالتهابات و الأسنان من التسوس أو الجير، ثم تؤخد صورة إشعاعية لفحص جذور الأسنان و عظمة الفك ثم تأخذ طبعة لأسنان و ترسل الى المختبر الأسنان مع خطة العلاج و قد تختلف خطة العلاج من حالة لاخرى .</p>\r\n\r\n<p style="direction: rtl; ">هل كل الحالات يمكن أن يستخدم لها هذا النوع من العلاج؟<br />\r\nلا يمكن استخدام هذا النوع من العلاج لكل الحالات؛ فهنالك بعض الحالات التي لا يمكن علاجها بالتقويم الشفاف،<br />\r\nفقد تحتاج للجراحة أو العلاج عن طريق التقويم التقليدي (السلك والحاصرات) و من ثم يتم التدخل بالتقويم الشفاف اذا رغب المريض بذلك<br />\r\nنظرا لعدم إمكانية تطبيق الحركات التقويمية كافة للأسنان بالتقويم الشفاف، و هنالك حالات معينة يستخدم لها هذا النوع من العلاج و التي تم ذكرها في السابق.</p>\r\n\r\n<p style="direction: rtl; ">و ننصحك فى مستشفي وينر اجيبادم بالاعتناء بالتقويم الشفاف عن طريق :<br />\r\n&ndash; الاهتمام المستمر بغسل الاسنان مرتين فى اليوم بعد خلع التقويم .<br />\r\n&ndash; استخدام غسول للفم فى الصباح و المساء للقضاء على اى نوع من البكتيريا التى قد تسبب بعض الروائح الغير مرغوب فيها .<br />\r\n&ndash; غسل التقويم نفسه بالفرشاه و المعجون و تركه فى معقم كوريغا لمدة 1/4 ساعة بعد خلعه فى اى وقت طول اليوم .<br />\r\n&nbsp;</p>', 'تقويم الاسنان الشفاف', 'اعيدى ثقتك فى ابتسامتك مع تقويم الاسنان', 'تقويم الاسنان الشفاف', 'Orthodontics', 1, '2017-12-19 11:28:54', '2017-12-19 11:28:54', NULL),
(8, 8, 'هوليود سمايل', 'ما ننصحك بمعرفته قبل اجراء هوليود سمايل, عدسات الاسنان', '<p style="direction: rtl; ">قبل ان نضع بين يديك اهم المعلومات عن هوليود سمايل, نريد ان نؤكد عليك ان لكلاً منا درجة معينة من بياض الاسنان تختلف من شخص لاخر, و ليس لها اى علاقة بدرجة الاهتمام بها و من هنا يأتى دور التجميل للحصول على اسنان اكثر بياضاً بأقل مجهود .</p>\r\n\r\n<p style="direction: rtl; ">عن طريق اللومينز : و هو طبقة رقيقة لا تحتاح لاى تحضير و لا يتم برد السن بل تؤخد طبعة الاسنان و ترسل للمختبر ليتم تركيبها فى الزيارة التالية .</p>\r\n\r\n<p style="direction: rtl; ">او فينيرز :<br />\r\nفهى طبقة رقيقة تغطى السطح الخارجى للسن و تحتاج لتحضير مسبق ليتم برد .5 ملم من السن و كلاهما يخلصك تماماً من كل مشاكل الاسنان, مثل الاصفرار و التصبغات الشديدة او الكسور البسيطة فى سطح الاسنان او حتى المسافات البسيطة ( الفلج ), كما يمكنك اجرائه فى اى مرحلة عمرية بعد 15 و تستمر مع ابتسامة هوليود من 10 الى 15 سنة</p>\r\n\r\n<p style="direction: rtl; ">و اليك بعض النصائح الهامة للحفاظ على جمال ابتسامتك بعد اجراء هوليود سمايل, لدينا فى مستشفي وينر اجيبادم :<br />\r\n&ndash; الاهتمام الدائم بغسيل الاسنان لان العدسات لا تمنع تسوس الاسنان .<br />\r\n&ndash; عدم كسر او مضغ بعض المأكولات الصلبة كالجزر او الدوم .. الى اخره لان العدسات عبارة عن قشرة رقيقة يمكن كسرها بسهولة فى هذة الحالة,&nbsp;و لا يمكنك تركيبها مرة اخرى بل ستضطر للذهاب مرة اخرى للطبيب لاخد طبعة جديدة و ارسالها من جديد للمختبر و عمل عدسة جديدة تماماً .<br />\r\n&ndash; زيارة دورية للطبيب ستفرق كثير فى متابعة صحة اسنانك و الاطمئنان عليك.</p>', 'هوليود سمايل عدسات الاسنان', 'ما ننصحك بمعرفته قبل اجراء هوليود سمايل, عدسات الاسنان', 'هوليود سمايل عدسات الاسنان', 'Hollywood-Smile-Lenses', 1, '2017-12-19 11:44:02', '2017-12-19 11:45:15', NULL),
(9, 9, 'About', 'Welcome to the Digital World\'s Digital Money Platform.', '<p><img alt="" src="http://coincome.net/uploads/ckeditor/7f11ca5a-8bc0-4c4d-8a65-ae23a7cb3b5c.jpg" style="width: 300px; height: 200px; float: left; border-width: 1px; border-style: solid; margin: 5px;" />Coincome is a digital platform that works on blockchain and crypto money. Knowledgeable, experienced and expert in the field, platform members work on projects that include blockchain, bitcoin and many subcontracts, especially in a decentralized structure.</p>\r\n\r\n<p>What is Coincome Goal? To lead the digitalization process by conducting innovative studies in the field of technology and finance, to increase the level of knowledge of the individuals and to provide services that will facilitate their use.</p>', '', '', '', 'About', 1, '2018-01-24 15:36:03', '2018-03-08 09:56:35', '2018-03-08 09:56:35'),
(10, 10, 'Faq', 'Frequently Asked Questions', '<p><strong>Who Can Register For Coincome Platform?</strong> Any citizen of the age who can register the commercial platform according to the law of each country can also register in the platform of Coincome.</p>\r\n\r\n<p><strong>How can I register?</strong> You can register with the system through the links that direct you from the Coincome.net web site or the platform member&#39;s reference point.</p>\r\n\r\n<p><strong>How long is the service sold on the platform?</strong> The duration of services sold on the Coincome platform is 24 months ie 2 years. When it comes to the sale of a special service, it will definitely be mentioned in the explanation section.</p>', '', '', '', 'Faq', 1, '2018-01-24 16:24:47', '2018-03-13 20:52:00', '2018-03-13 20:52:00'),
(11, 9, 'Hakkinda', 'Dijital Dünyanın Dijital Para Platformuna Hoşgeldiniz.', '<p><img alt="" src="http://coincome.net/uploads/ckeditor/7f11ca5a-8bc0-4c4d-8a65-ae23a7cb3b5c.jpg" style="border-width: 1px; border-style: solid; margin: 5px; float: left; width: 300px; height: 200px;" />Gelir Birliği anlamını taşıyan <strong>Coincome</strong>, blockchain ve kripto paralar &uuml;zerinde &ccedil;alışmalar yapan dijital bir platformdur. Bilgili, deneyimli ve alanında uzman olan platform &uuml;yeleri, &ouml;zellikle merkezi olmayan bir yapıda blockchain, bitcoin ve bir &ccedil;ok altcoini kapsayan projeler &uuml;zerinde &ccedil;alışmaktadır.<br />\r\n<br />\r\nCoincome Hedefi Nedir? Teknoloji ve finans alanında inovasyonel &ccedil;alışmalar yaparak dijitalleşme s&uuml;recine &ouml;nc&uuml;l&uuml;k etmekle birlikte bireylerin bilgi d&uuml;zeyini arttırmak ve kullanımlarını kolaylaştıracak hizmetler sunmak.</p>', '', '', '', 'Hakkinda', 2, '2018-02-08 19:04:40', '2018-03-08 09:56:35', '2018-03-08 09:56:35'),
(12, 10, 'SSS', 'Sıkça Sorulan Sorular', '<p><strong>Coincome Platformuna Kimler Kayıt Olabilir?</strong> Her &uuml;lkenin yasasına g&ouml;re <u>ticari platforma kayıt olabilir</u>&nbsp; yaştaki her vatandaş Coincome platformuna da kayıt olabilir.</p>\r\n\r\n<p><br />\r\n<strong>Nasıl kayıt olabilirim? </strong>Coincome.net web sitesinden veya platform &uuml;yelerinin referans olması doğrultusunda y&ouml;nlendirme yapan bağlantılar ile sisteme kayıt olabilirsiniz.</p>\r\n\r\n<p><strong>Platformda satılan hizmetlerin s&uuml;resi ne kadar?</strong> Coincome platformunda satılan hizmetlerin s&uuml;resi 24 ay yani 2 Yıl. &Ouml;zel s&uuml;reli bir hizmet satışı s&ouml;z konusu olduğunda a&ccedil;ıklama b&ouml;l&uuml;m&uuml;nde muhakkak belirtilecektir.</p>', '', '', '', 'SSS', 2, '2018-03-08 09:45:38', '2018-03-13 20:52:00', '2018-03-13 20:52:00'),
(13, 11, 'Affiliate Marketing', 'Affiliate Marketing Program', '<p>Those who join the Coincome platform get a lot of revenue advantage. These income are presented to members in two different categories;<br />\r\n<br />\r\n<strong>1. Passive Income: Investment gains?</strong><br />\r\n* Platform Revenue?<br />\r\n* Mining Revenue?<br />\r\n* Investment Revenue?<br />\r\n* Cashback Revenue</p>\r\n\r\n<p><strong>2. Active Income: Benefits Obtained by Recommendation?</strong><br />\r\n* Reference Revenue?<br />\r\n* Network Revenue?<br />\r\n* Career Bonus</p>', '', '', '', 'Affiliate-Marketing', 1, '2018-03-08 09:49:21', '2018-03-13 20:51:56', '2018-03-13 20:51:56'),
(14, 11, 'Affiliate Marketing', 'Affiliate Marketing Program', '<p>Coincome platformuna &uuml;ye olanlar bir &ccedil;ok gelir avantajı yakalar. &Uuml;yelere bu gelirler iki farklı kategoride sunulur;</p>\r\n\r\n<p><strong>1.Pasif Gelirler: Yatırımsal kazan&ccedil;lar</strong><br />\r\n&nbsp; * Platform Geliri<br />\r\n&nbsp; * Mining Geliri<br />\r\n&nbsp; * Yatırım Geliri<br />\r\n&nbsp; * Cashback Geliri</p>\r\n\r\n<p><strong>2. Aktif Gelirler: Tavsiye Edilerek Elde Edilen Kazan&ccedil;lar</strong><br />\r\n&nbsp; &nbsp;* Referans Geliri<br />\r\n&nbsp;&nbsp;&nbsp;* Network Geliri<br />\r\n&nbsp;&nbsp;&nbsp;* Kariyer Bonusu</p>', '', '', '', 'Affiliate-Marketing', 2, '2018-03-08 09:49:21', '2018-03-08 09:53:08', NULL),
(15, 12, 'About', 'Welcome to the Digital World\'s Digital Money Platform.', '<p>Coincome is a digital platform that works on blockchain and crypto money. Knowledgeable, experienced and expert in the field, platform members work on projects that include blockchain, bitcoin and many subcontracts, especially in a decentralized structure.</p>\r\n\r\n<p>What is Coincome Goal? To lead the digitalization process by conducting innovative studies in the field of technology and finance, to increase the level of knowledge of the individuals and to provide services that will facilitate their use.</p>', '', '', '', 'About', 1, '2018-03-08 09:56:03', '2018-03-13 20:51:49', '2018-03-13 20:51:49'),
(16, 12, 'Hakkinda', 'Dijital Dünyanın Dijital Para Platformuna Hoşgeldiniz.', '<p>Gelir Birliği anlamını taşıyan Coincome, blockchain ve kripto paralar &uuml;zerinde &ccedil;alışmalar yapan dijital bir platformdur. Bilgili, deneyimli ve alanında uzman olan platform &uuml;yeleri, &ouml;zellikle merkezi olmayan bir yapıda blockchain, bitcoin ve bir &ccedil;ok altcoini kapsayan projeler &uuml;zerinde &ccedil;alışmaktadır.<br />\r\n<br />\r\nCoincome Hedefi Nedir? Teknoloji ve finans alanında inovasyonel &ccedil;alışmalar yaparak dijitalleşme s&uuml;recine &ouml;nc&uuml;l&uuml;k etmekle birlikte bireylerin bilgi d&uuml;zeyini arttırmak ve kullanımlarını kolaylaştıracak hizmetler sunmak.</p>', '', '', '', 'Hakkinda', 2, '2018-03-08 09:56:03', '2018-03-08 09:56:03', NULL),
(17, 13, 'test', 'test', '<p>test</p>', '', '', '', 'test', 1, '2018-03-09 03:31:05', '2018-03-13 20:51:53', '2018-03-13 20:51:53'),
(18, 13, 'test', '', '<p>test t&uuml;rk&ccedil;e</p>', '', '', '', 'test', 2, '2018-03-09 03:31:05', '2018-03-13 20:51:56', '2018-03-13 20:51:56'),
(19, 14, 'Marketing Tools', '', '<style type="text/css">table {\r\n    font-family: arial, sans-serif;\r\n    border-collapse: collapse;\r\n    width: 100%;\r\n}\r\n\r\ntd, th {\r\n    border: 1px solid #dddddd;\r\n    text-align: left;\r\n    padding: 8px;\r\n}\r\n\r\ntr:nth-child(even) {\r\n    background-color: #dddddd;\r\n}\r\n</style>\r\n<h2>Marketing Tools</h2>\r\n\r\n<table style="font-size: 13px;">\r\n	<tbody>\r\n		<tr>\r\n			<th>Company</th>\r\n			<th>&nbsp;</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Banners&nbsp;</td>\r\n			<td>Maria Anders</td>\r\n			<td>Germany</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Presentation&nbsp;</td>\r\n			<td>Francisco Chang</td>\r\n			<td>Mexico</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Platform Reports&nbsp;</td>\r\n			<td>Roland Mendel</td>\r\n			<td>Austria</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '', '', 'Marketing-Tools', 1, '2018-03-14 06:18:25', '2018-03-14 06:22:08', NULL),
(20, 14, '', '', '', '', '', '', '', 3, '2018-03-14 06:18:25', '2018-03-14 06:22:08', NULL),
(21, 20, 'test', '', '<p>all test</p>', '', '', '', 'test', 1, '2018-04-12 08:43:24', '2018-04-12 08:56:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `user_code`, `token`, `created_at`) VALUES
('mohmedpasyoni2345@yahoo.com', '14810498512300', 'b291e92bd6dc7edd87cdd583ed0ac300f996c44c71873c64b4e82a7a0e6a0263', '2016-12-23 12:54:55'),
('mido.l00v@facebook.com', '14810416163310', 'a4d57f7f1c4fddac8a2d9c041efef96a5a27b6623795890c592fdf66b4394404', '2017-01-13 13:50:49'),
('nema.mohamed.9026@yahoo.com', '14867413904570', '07705f61a1890df283153d3daabd7fbe955d8fe3c21b5f5f2352cd3ee5b3c6fa', '2017-02-10 21:36:18'),
('admin@admin.com', '1', '7674dde832afc1f4d7ebe7a429c1c3f1b5321f68ba406bc10ff5c0bb1902c2a1', '2017-03-10 18:19:30'),
('ledo.bilal@gmail.com', '14819144042560', '0c1ecc5cc935f07353080aeecd5099ea4da52ae246a8cf806a50389eee9ff7aa', '2017-03-27 16:57:15'),
('ledo.bilal@gmail.com', '14906358056440', '7e038c2f7bac02acdc6d082f997ebc60ede2e0f6ad056b47fcef226c941e3b34', '2017-03-27 17:51:55'),
('waled88839@gmail.com', '14912625255830', 'a87f3a0f9928e843c8beafaf6abf6c188f98cca95b2d44a00e55a37a39b7b1a6', '2017-04-06 22:05:42'),
('jfghv@gmail.com', '14919298677850', '043f9196f0a97b6e793ca493ec561b7776df22b5979a5fb75e36293b50fff16f', '2017-04-11 22:54:45'),
('mahmoudfarag030@gmail.com', '14921018445460', '8c1edb971ef1d54e429ef510e9e5bf6900c8ae67fe2ae0cb2421a471ade05403', '2017-04-15 07:53:22'),
('ahmedgml88@gmail.com', '14882849662580', '3f278a5ebf67c64aeaa6b9d4c5258ba4a934027fc07641bb22abae196dddd750', '2017-04-17 13:16:44'),
('amirs3ideee@gmail.com', '149107234790', 'ee4733a5264b960dd752e1f732479f9f3f40bbc1e905a3b3172e2dc6197e1b6e', '2017-04-21 02:19:25'),
('eslamafifi85@gmail.com', '14927271843520', '388c1767b3f910675fa9ba29a6ee00a45db6109d85da134fe270cad51121f140', '2017-04-21 15:55:43'),
('amrgbl011@yahoo.com', '14930564997450', '00ce7e46d086cbfa35e7c756d1b54ff45949a163e8c8646af072721eef5dfff5', '2017-04-29 17:13:52'),
('amirs3ideee@gmail.com', '14927036479830', '8f81b8be497b647ba191de76e3c68089cc819b0f7051a40f9e7c787240168c24', '2017-05-05 11:51:34'),
('abanoub.metyas.btm@gmail.com', '', '$2y$10$Ri9IVMoSUMOesFSPyRlEZuHRY4du/h5KbBjy48CTyrwGPdTR9p7Xm', '2018-03-08 21:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `per_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `per_page_id` int(11) NOT NULL,
  `show_action` tinyint(1) NOT NULL,
  `add_action` tinyint(1) NOT NULL,
  `edit_action` tinyint(1) NOT NULL,
  `delete_action` tinyint(1) NOT NULL,
  `additional_permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`per_id`, `user_id`, `per_page_id`, `show_action`, `add_action`, `edit_action`, `delete_action`, `additional_permissions`) VALUES
(2, 1, 1, 1, 1, 1, 1, '["manage_permissions"]'),
(3, 1, 2, 1, 1, 1, 1, 'null'),
(4, 1, 4, 1, 1, 1, 1, 'null'),
(5, 1, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(6, 1, 6, 1, 1, 1, 1, 'null'),
(7, 1, 7, 1, 1, 1, 1, 'null'),
(8, 1, 8, 1, 1, 1, 1, 'null'),
(9, 1, 9, 1, 1, 1, 1, 'null'),
(12, 1, 12, 1, 1, 1, 1, 'null'),
(13, 1, 13, 1, 1, 1, 1, 'null'),
(14, 1, 14, 1, 1, 1, 1, '["export_subscribe","email_settings","send_custom_email","send_all_subscribers_email","stop","pause","resume"]'),
(15, 1, 15, 1, 1, 1, 1, 'null'),
(16, 1, 16, 1, 1, 1, 1, 'null'),
(17, 1, 18, 1, 1, 1, 1, 'null'),
(18, 2, 1, 1, 1, 1, 1, 'null'),
(19, 2, 2, 1, 1, 1, 1, 'null'),
(20, 2, 4, 0, 0, 0, 0, 'null'),
(21, 2, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(22, 2, 6, 1, 1, 1, 1, 'null'),
(23, 2, 7, 1, 1, 1, 1, 'null'),
(24, 2, 8, 1, 1, 1, 1, 'null'),
(25, 2, 9, 1, 1, 1, 1, 'null'),
(28, 2, 12, 1, 1, 1, 1, 'null'),
(29, 2, 13, 1, 1, 1, 1, 'null'),
(30, 2, 14, 1, 1, 1, 1, 'null'),
(31, 2, 15, 1, 1, 1, 1, 'null'),
(32, 2, 16, 1, 1, 1, 1, 'null'),
(33, 2, 18, 1, 1, 1, 1, 'null'),
(34, 1, 19, 1, 1, 1, 1, 'null'),
(35, 1, 20, 1, 1, 1, 1, 'null'),
(36, 1, 21, 1, 1, 1, 1, 'null'),
(37, 1, 22, 1, 1, 1, 1, 'null'),
(38, 1, 23, 1, 1, 1, 1, 'null'),
(39, 1, 24, 1, 1, 1, 1, 'null'),
(40, 1, 25, 1, 1, 1, 1, 'null'),
(41, 1, 26, 1, 1, 1, 1, 'null'),
(42, 1, 27, 1, 1, 1, 1, 'null'),
(43, 1, 28, 1, 1, 1, 1, 'null'),
(44, 2, 19, 0, 0, 0, 0, 'null'),
(45, 2, 20, 0, 0, 0, 0, 'null'),
(46, 2, 21, 0, 0, 0, 0, 'null'),
(47, 2, 22, 0, 0, 0, 0, 'null'),
(48, 2, 23, 0, 0, 0, 0, 'null'),
(49, 2, 24, 0, 0, 0, 0, 'null'),
(50, 2, 25, 0, 0, 0, 0, 'null'),
(51, 2, 26, 0, 0, 0, 0, 'null'),
(52, 2, 27, 0, 0, 0, 0, 'null'),
(53, 2, 28, 0, 0, 0, 0, 'null'),
(54, 10, 1, 0, 0, 0, 0, 'null'),
(55, 10, 2, 1, 1, 1, 0, 'null'),
(56, 10, 4, 0, 0, 0, 0, 'null'),
(57, 10, 5, 1, 1, 1, 0, '["edit_category_code"]'),
(58, 10, 6, 1, 1, 1, 0, 'null'),
(59, 10, 7, 1, 1, 1, 0, 'null'),
(60, 10, 8, 0, 0, 0, 0, 'null'),
(61, 10, 9, 1, 1, 1, 0, 'null'),
(62, 10, 12, 1, 1, 1, 0, 'null'),
(63, 10, 13, 1, 1, 1, 0, 'null'),
(64, 10, 14, 1, 1, 1, 0, 'null'),
(65, 10, 15, 1, 1, 1, 0, 'null'),
(66, 10, 16, 1, 1, 1, 0, 'null'),
(67, 10, 18, 0, 0, 0, 0, 'null'),
(68, 10, 19, 1, 1, 1, 1, 'null'),
(69, 10, 20, 1, 1, 1, 1, 'null'),
(70, 10, 21, 1, 1, 1, 1, 'null'),
(71, 10, 22, 1, 1, 1, 1, 'null'),
(72, 10, 23, 1, 1, 1, 1, 'null'),
(73, 10, 24, 1, 1, 1, 1, 'null'),
(74, 10, 25, 1, 1, 1, 1, 'null'),
(75, 10, 26, 1, 1, 1, 1, 'null'),
(76, 10, 27, 1, 1, 1, 1, 'null'),
(77, 10, 28, 0, 0, 0, 0, 'null'),
(78, 11, 1, 0, 0, 0, 0, 'null'),
(79, 11, 2, 1, 1, 1, 0, 'null'),
(80, 11, 4, 0, 0, 0, 0, 'null'),
(81, 11, 5, 1, 1, 1, 0, '["edit_category_code"]'),
(82, 11, 6, 1, 1, 1, 0, 'null'),
(83, 11, 7, 1, 1, 1, 0, 'null'),
(84, 11, 8, 0, 0, 0, 0, 'null'),
(85, 11, 9, 1, 1, 0, 0, 'null'),
(86, 11, 12, 1, 1, 1, 0, 'null'),
(87, 11, 13, 1, 1, 1, 0, 'null'),
(88, 11, 14, 1, 1, 1, 0, 'null'),
(89, 11, 15, 1, 1, 1, 0, 'null'),
(90, 11, 16, 1, 1, 1, 0, 'null'),
(91, 11, 18, 0, 0, 0, 0, 'null'),
(92, 11, 19, 1, 1, 1, 1, 'null'),
(93, 11, 20, 1, 1, 1, 1, 'null'),
(94, 11, 21, 1, 1, 1, 1, 'null'),
(95, 11, 22, 1, 1, 1, 1, 'null'),
(96, 11, 23, 1, 1, 1, 1, 'null'),
(97, 11, 24, 1, 1, 1, 1, 'null'),
(98, 11, 25, 1, 1, 1, 1, 'null'),
(99, 11, 26, 1, 1, 1, 1, 'null'),
(100, 11, 27, 1, 1, 1, 1, 'null'),
(101, 11, 28, 0, 0, 0, 0, 'null'),
(102, 12, 1, 0, 0, 0, 0, ''),
(103, 12, 2, 0, 0, 0, 0, ''),
(104, 12, 4, 0, 0, 0, 0, ''),
(105, 12, 5, 1, 1, 1, 1, ''),
(106, 12, 6, 0, 1, 0, 0, ''),
(107, 12, 7, 0, 0, 0, 0, ''),
(108, 12, 8, 0, 0, 0, 0, ''),
(109, 12, 9, 0, 0, 0, 0, ''),
(110, 12, 12, 1, 1, 1, 1, ''),
(111, 12, 13, 0, 0, 0, 0, ''),
(112, 12, 14, 0, 0, 0, 0, ''),
(113, 12, 15, 0, 0, 0, 0, ''),
(114, 12, 16, 0, 0, 0, 0, ''),
(115, 12, 18, 0, 0, 0, 0, ''),
(116, 12, 19, 1, 1, 1, 1, ''),
(117, 12, 20, 1, 1, 1, 1, ''),
(118, 12, 21, 1, 1, 1, 1, ''),
(119, 12, 22, 1, 1, 1, 1, ''),
(120, 12, 23, 1, 1, 1, 1, ''),
(121, 12, 24, 1, 1, 1, 1, ''),
(122, 12, 25, 1, 1, 1, 1, ''),
(123, 12, 26, 1, 1, 1, 1, ''),
(124, 12, 27, 1, 1, 1, 1, ''),
(125, 12, 28, 0, 0, 0, 0, ''),
(126, 14, 1, 0, 0, 0, 0, 'null'),
(127, 14, 2, 1, 1, 1, 0, 'null'),
(128, 14, 4, 0, 0, 0, 0, 'null'),
(129, 14, 5, 1, 1, 1, 0, '["edit_category_code"]'),
(130, 14, 6, 1, 1, 1, 0, 'null'),
(131, 14, 7, 1, 1, 1, 0, 'null'),
(132, 14, 8, 0, 0, 0, 0, 'null'),
(133, 14, 9, 1, 1, 1, 0, 'null'),
(134, 14, 12, 1, 1, 1, 0, 'null'),
(135, 14, 13, 1, 1, 1, 0, 'null'),
(136, 14, 14, 1, 1, 1, 0, 'null'),
(137, 14, 15, 1, 1, 1, 0, 'null'),
(138, 14, 16, 1, 1, 1, 0, 'null'),
(139, 14, 18, 0, 0, 0, 0, 'null'),
(140, 14, 19, 1, 1, 1, 1, 'null'),
(141, 14, 20, 1, 1, 1, 1, 'null'),
(142, 14, 21, 1, 1, 1, 1, 'null'),
(143, 14, 22, 1, 1, 1, 1, 'null'),
(144, 14, 23, 1, 1, 1, 1, 'null'),
(145, 14, 24, 1, 1, 1, 1, 'null'),
(146, 14, 25, 1, 1, 1, 1, 'null'),
(147, 14, 26, 1, 1, 1, 1, 'null'),
(148, 14, 27, 1, 1, 1, 1, 'null'),
(149, 14, 28, 0, 0, 0, 0, 'null'),
(150, 15, 1, 1, 1, 1, 1, '["manage_permissions"]'),
(151, 15, 2, 1, 1, 1, 1, 'null'),
(152, 15, 4, 1, 1, 1, 1, 'null'),
(153, 15, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(154, 15, 6, 1, 1, 1, 1, 'null'),
(155, 15, 7, 1, 1, 1, 1, 'null'),
(156, 15, 8, 1, 1, 1, 1, 'null'),
(157, 15, 9, 1, 1, 1, 1, 'null'),
(158, 15, 12, 1, 1, 1, 1, 'null'),
(159, 15, 13, 1, 1, 1, 1, 'null'),
(160, 15, 14, 1, 1, 1, 1, '["export_subscribe","email_settings","send_custom_email","send_all_subscribers_email","stop","pause","resume"]'),
(161, 15, 15, 1, 1, 1, 1, 'null'),
(162, 15, 16, 1, 1, 1, 1, 'null'),
(163, 15, 18, 1, 1, 1, 1, 'null'),
(164, 15, 19, 1, 1, 1, 1, 'null'),
(165, 15, 20, 1, 1, 1, 1, 'null'),
(166, 15, 21, 1, 1, 1, 1, 'null'),
(167, 15, 22, 1, 1, 1, 1, 'null'),
(168, 15, 23, 1, 1, 1, 1, 'null'),
(169, 15, 24, 1, 1, 1, 1, 'null'),
(170, 15, 25, 1, 1, 1, 1, 'null'),
(171, 15, 26, 1, 1, 1, 1, 'null'),
(172, 15, 27, 1, 1, 1, 1, 'null'),
(173, 15, 28, 0, 0, 0, 0, 'null'),
(174, 1, 29, 1, 1, 1, 1, 'null'),
(175, 1, 30, 1, 1, 1, 1, 'null'),
(176, 2, 29, 1, 1, 1, 1, 'null'),
(177, 2, 30, 1, 1, 1, 1, 'null'),
(178, 3, 1, 0, 0, 0, 0, 'null'),
(179, 3, 2, 0, 0, 0, 0, 'null'),
(180, 3, 4, 0, 0, 0, 0, 'null'),
(181, 3, 5, 0, 0, 0, 0, '["edit_category_code"]'),
(182, 3, 6, 0, 0, 0, 0, 'null'),
(183, 3, 7, 0, 0, 0, 0, 'null'),
(184, 3, 8, 0, 0, 0, 0, 'null'),
(185, 3, 9, 0, 0, 0, 0, 'null'),
(186, 3, 12, 0, 0, 0, 0, 'null'),
(187, 3, 13, 0, 0, 0, 0, 'null'),
(188, 3, 14, 0, 0, 0, 0, 'null'),
(189, 3, 15, 0, 0, 0, 0, 'null'),
(190, 3, 16, 0, 0, 0, 0, 'null'),
(191, 3, 18, 0, 0, 0, 0, 'null'),
(192, 3, 29, 0, 0, 0, 0, 'null'),
(193, 3, 30, 1, 1, 1, 1, 'null'),
(194, 4, 1, 0, 0, 0, 0, ''),
(195, 4, 2, 0, 0, 0, 0, ''),
(196, 4, 4, 0, 0, 0, 0, ''),
(197, 4, 5, 0, 0, 0, 0, ''),
(198, 4, 6, 0, 0, 0, 0, ''),
(199, 4, 7, 0, 0, 0, 0, ''),
(200, 4, 8, 0, 0, 0, 0, ''),
(201, 4, 9, 0, 0, 0, 0, ''),
(202, 4, 12, 0, 0, 0, 0, ''),
(203, 4, 13, 0, 0, 0, 0, ''),
(204, 4, 14, 0, 0, 0, 0, ''),
(205, 4, 15, 0, 0, 0, 0, ''),
(206, 4, 16, 0, 0, 0, 0, ''),
(207, 4, 18, 0, 0, 0, 0, ''),
(208, 4, 29, 0, 0, 0, 0, ''),
(209, 4, 30, 0, 0, 0, 0, ''),
(210, 5, 1, 0, 0, 0, 0, ''),
(211, 5, 2, 0, 0, 0, 0, ''),
(212, 5, 4, 0, 0, 0, 0, ''),
(213, 5, 5, 1, 1, 1, 0, ''),
(214, 5, 6, 1, 1, 1, 0, ''),
(215, 5, 7, 0, 0, 0, 0, ''),
(216, 5, 8, 0, 0, 0, 0, ''),
(217, 5, 9, 1, 0, 0, 0, ''),
(218, 5, 12, 1, 1, 1, 0, ''),
(219, 5, 13, 0, 0, 0, 0, ''),
(220, 5, 14, 0, 0, 0, 0, ''),
(221, 5, 15, 1, 0, 0, 0, ''),
(222, 5, 16, 0, 0, 0, 0, ''),
(223, 5, 18, 1, 0, 0, 0, ''),
(224, 5, 29, 1, 1, 1, 1, ''),
(225, 5, 30, 1, 0, 0, 1, ''),
(226, 6, 1, 1, 1, 1, 1, '["manage_permissions"]'),
(227, 6, 2, 1, 1, 1, 1, 'null'),
(228, 6, 4, 1, 1, 1, 1, 'null'),
(229, 6, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(230, 6, 6, 1, 1, 1, 1, 'null'),
(231, 6, 7, 1, 1, 1, 1, 'null'),
(232, 6, 8, 1, 1, 1, 1, 'null'),
(233, 6, 9, 1, 1, 1, 1, 'null'),
(234, 6, 12, 1, 1, 1, 1, 'null'),
(235, 6, 13, 1, 1, 1, 1, 'null'),
(236, 6, 14, 1, 1, 1, 1, '["export_subscribe","email_settings","send_custom_email","send_all_subscribers_email","stop","pause","resume"]'),
(237, 6, 15, 1, 1, 1, 1, 'null'),
(238, 6, 16, 1, 1, 1, 1, 'null'),
(239, 6, 18, 1, 1, 1, 1, 'null'),
(240, 6, 29, 1, 1, 1, 1, 'null'),
(241, 6, 30, 1, 1, 1, 1, 'null'),
(242, 7, 1, 0, 0, 0, 0, 'null'),
(243, 7, 2, 1, 1, 1, 0, 'null'),
(244, 7, 4, 0, 0, 0, 0, 'null'),
(245, 7, 5, 1, 1, 1, 0, '["edit_category_code"]'),
(246, 7, 6, 1, 1, 1, 0, 'null'),
(247, 7, 7, 1, 1, 1, 0, 'null'),
(248, 7, 8, 0, 0, 0, 0, 'null'),
(249, 7, 9, 1, 1, 1, 0, 'null'),
(250, 7, 12, 1, 1, 1, 0, 'null'),
(251, 7, 13, 1, 1, 1, 0, 'null'),
(252, 7, 14, 1, 1, 1, 0, '["export_subscribe","email_settings","send_custom_email","send_all_subscribers_email","stop","pause","resume"]'),
(253, 7, 15, 1, 1, 1, 0, 'null'),
(254, 7, 16, 1, 1, 1, 0, 'null'),
(255, 7, 18, 0, 0, 0, 0, 'null'),
(256, 7, 29, 1, 1, 1, 0, 'null'),
(257, 7, 30, 1, 1, 1, 0, 'null'),
(258, 8, 1, 0, 0, 0, 0, 'null'),
(259, 8, 2, 1, 1, 1, 0, 'null'),
(260, 8, 4, 0, 0, 0, 0, 'null'),
(261, 8, 5, 1, 1, 1, 0, '["edit_category_code"]'),
(262, 8, 6, 1, 1, 1, 0, 'null'),
(263, 8, 7, 1, 1, 1, 0, 'null'),
(264, 8, 8, 0, 0, 0, 0, 'null'),
(265, 8, 9, 1, 1, 1, 0, 'null'),
(266, 8, 12, 1, 1, 1, 0, 'null'),
(267, 8, 13, 1, 1, 1, 0, 'null'),
(268, 8, 14, 1, 1, 1, 0, '["export_subscribe","email_settings","send_custom_email","send_all_subscribers_email","stop","pause","resume"]'),
(269, 8, 15, 1, 1, 1, 0, 'null'),
(270, 8, 16, 1, 1, 1, 0, 'null'),
(271, 8, 18, 0, 0, 0, 0, 'null'),
(272, 8, 29, 1, 1, 1, 0, 'null'),
(273, 8, 30, 1, 1, 1, 0, 'null'),
(274, 9, 1, 0, 0, 0, 0, 'null'),
(275, 9, 2, 1, 1, 1, 0, 'null'),
(276, 9, 4, 0, 0, 0, 0, 'null'),
(277, 9, 5, 1, 1, 1, 0, '["edit_category_code"]'),
(278, 9, 6, 1, 1, 1, 0, 'null'),
(279, 9, 7, 1, 1, 1, 0, 'null'),
(280, 9, 8, 0, 0, 0, 0, 'null'),
(281, 9, 9, 1, 1, 1, 0, 'null'),
(282, 9, 12, 1, 1, 1, 0, 'null'),
(283, 9, 13, 1, 1, 1, 0, 'null'),
(284, 9, 14, 1, 1, 1, 0, '["export_subscribe","email_settings","send_custom_email","send_all_subscribers_email","stop","pause","resume"]'),
(285, 9, 15, 1, 1, 1, 0, 'null'),
(286, 9, 16, 1, 1, 1, 0, 'null'),
(287, 9, 18, 0, 0, 0, 0, 'null'),
(288, 9, 29, 1, 1, 1, 0, 'null'),
(289, 9, 30, 1, 1, 1, 0, 'null'),
(290, 10, 29, 1, 1, 1, 0, 'null'),
(291, 10, 30, 1, 1, 1, 0, 'null'),
(292, 11, 29, 1, 1, 1, 0, 'null'),
(293, 11, 30, 1, 1, 1, 0, 'null'),
(294, 1, 31, 1, 1, 1, 1, 'null'),
(295, 11, 31, 1, 1, 1, 0, 'null'),
(296, 10, 31, 1, 1, 1, 0, 'null'),
(297, 9, 31, 1, 1, 1, 0, 'null'),
(298, 8, 31, 1, 1, 1, 0, 'null'),
(299, 7, 31, 1, 1, 1, 0, 'null'),
(300, 6, 31, 1, 1, 1, 1, 'null'),
(301, 1, 32, 1, 1, 1, 1, 'null'),
(302, 13, 1, 1, 1, 1, 1, 'null'),
(303, 13, 2, 1, 1, 1, 1, 'null'),
(304, 13, 4, 1, 1, 1, 1, 'null'),
(305, 13, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(306, 13, 6, 1, 1, 1, 1, 'null'),
(307, 13, 7, 1, 1, 1, 1, 'null'),
(308, 13, 8, 1, 1, 1, 1, 'null'),
(309, 13, 9, 1, 1, 1, 1, 'null'),
(310, 13, 12, 1, 1, 1, 1, 'null'),
(311, 13, 13, 1, 1, 1, 1, 'null'),
(312, 13, 14, 1, 1, 1, 1, 'null'),
(313, 13, 15, 1, 1, 1, 1, 'null'),
(314, 13, 16, 1, 1, 1, 1, 'null'),
(315, 13, 18, 1, 1, 1, 1, 'null'),
(316, 13, 29, 1, 1, 1, 1, 'null'),
(317, 13, 30, 1, 1, 1, 1, 'null'),
(318, 13, 31, 1, 1, 1, 1, 'null'),
(319, 13, 32, 1, 1, 1, 1, 'null'),
(320, 14, 29, 1, 1, 1, 0, 'null'),
(321, 14, 30, 1, 1, 1, 0, 'null'),
(322, 14, 31, 1, 1, 1, 0, 'null'),
(323, 14, 32, 1, 1, 1, 0, 'null'),
(324, 2, 31, 1, 1, 1, 1, 'null'),
(325, 2, 32, 1, 1, 1, 1, 'null'),
(326, 3, 31, 0, 0, 0, 0, 'null'),
(327, 3, 32, 0, 0, 0, 0, 'null'),
(328, 6, 32, 1, 1, 1, 1, 'null'),
(329, 7, 32, 1, 1, 1, 0, 'null'),
(330, 8, 32, 1, 1, 1, 0, 'null'),
(331, 9, 32, 1, 1, 1, 0, 'null'),
(332, 10, 32, 1, 1, 1, 0, 'null'),
(333, 11, 32, 1, 1, 1, 0, 'null'),
(334, 12, 29, 0, 0, 0, 0, ''),
(335, 12, 30, 0, 0, 0, 0, ''),
(336, 12, 31, 0, 0, 0, 0, ''),
(337, 12, 32, 0, 0, 0, 0, ''),
(338, 15, 29, 1, 1, 1, 1, 'null'),
(339, 15, 30, 1, 1, 1, 1, 'null'),
(340, 15, 31, 1, 1, 1, 1, 'null'),
(341, 15, 32, 1, 1, 1, 1, 'null'),
(342, 16, 1, 0, 0, 0, 0, 'null'),
(343, 16, 2, 1, 1, 1, 1, 'null'),
(344, 16, 4, 0, 0, 0, 0, 'null'),
(345, 16, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(346, 16, 6, 1, 1, 1, 1, 'null'),
(347, 16, 7, 0, 0, 0, 0, 'null'),
(348, 16, 8, 0, 0, 0, 0, 'null'),
(349, 16, 9, 1, 1, 1, 1, 'null'),
(350, 16, 12, 1, 1, 1, 1, 'null'),
(351, 16, 13, 1, 1, 1, 1, 'null'),
(352, 16, 14, 0, 0, 0, 0, 'null'),
(353, 16, 15, 1, 1, 1, 1, 'null'),
(354, 16, 16, 1, 1, 1, 1, 'null'),
(355, 16, 18, 0, 0, 0, 0, 'null'),
(356, 16, 29, 1, 1, 1, 1, 'null'),
(357, 16, 30, 0, 0, 0, 0, 'null'),
(358, 16, 31, 1, 1, 1, 1, 'null'),
(359, 16, 32, 1, 1, 1, 1, 'null'),
(360, 17, 1, 0, 0, 0, 0, 'null'),
(361, 17, 2, 1, 1, 1, 0, 'null'),
(362, 17, 5, 1, 1, 1, 0, '["edit_category_code"]'),
(363, 17, 6, 1, 1, 1, 0, 'null'),
(364, 17, 7, 1, 1, 1, 0, 'null'),
(365, 17, 9, 1, 1, 1, 0, 'null'),
(366, 17, 12, 1, 1, 1, 0, 'null'),
(367, 17, 13, 1, 1, 1, 0, 'null'),
(368, 17, 14, 1, 1, 1, 0, 'null'),
(369, 17, 15, 1, 1, 1, 0, 'null'),
(370, 17, 16, 1, 1, 1, 0, 'null'),
(371, 17, 18, 0, 0, 0, 0, 'null'),
(372, 17, 29, 1, 1, 1, 0, 'null'),
(373, 17, 30, 1, 1, 1, 0, 'null'),
(374, 17, 31, 1, 1, 1, 0, 'null'),
(375, 17, 32, 1, 1, 1, 0, 'null'),
(376, 18, 1, 0, 0, 0, 0, 'null'),
(377, 18, 2, 1, 1, 1, 1, 'null'),
(378, 18, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(379, 18, 6, 1, 1, 1, 1, 'null'),
(380, 18, 7, 0, 0, 0, 0, 'null'),
(381, 18, 9, 1, 1, 1, 1, 'null'),
(382, 18, 12, 1, 1, 1, 1, 'null'),
(383, 18, 13, 1, 1, 1, 1, 'null'),
(384, 18, 14, 0, 0, 0, 0, 'null'),
(385, 18, 15, 1, 1, 1, 1, 'null'),
(386, 18, 16, 1, 1, 1, 1, 'null'),
(387, 18, 18, 0, 0, 0, 0, 'null'),
(388, 18, 29, 1, 1, 1, 1, 'null'),
(389, 18, 30, 0, 0, 0, 0, 'null'),
(390, 18, 31, 1, 1, 1, 1, 'null'),
(391, 18, 32, 1, 1, 1, 1, 'null'),
(392, 19, 1, 0, 0, 0, 0, 'null'),
(393, 19, 2, 1, 1, 1, 1, 'null'),
(394, 19, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(395, 19, 6, 1, 1, 1, 1, 'null'),
(396, 19, 7, 0, 0, 0, 0, 'null'),
(397, 19, 9, 1, 1, 1, 1, 'null'),
(398, 19, 12, 1, 1, 1, 1, 'null'),
(399, 19, 13, 1, 1, 1, 1, 'null'),
(400, 19, 14, 0, 0, 0, 0, 'null'),
(401, 19, 15, 1, 1, 1, 1, 'null'),
(402, 19, 16, 1, 1, 1, 1, 'null'),
(403, 19, 18, 0, 0, 0, 0, 'null'),
(404, 19, 29, 1, 1, 1, 1, 'null'),
(405, 19, 30, 0, 0, 0, 0, 'null'),
(406, 19, 31, 1, 1, 1, 1, 'null'),
(407, 19, 32, 1, 1, 1, 1, 'null'),
(408, 20, 1, 0, 0, 0, 0, 'null'),
(409, 20, 2, 1, 1, 1, 1, 'null'),
(410, 20, 5, 1, 1, 1, 1, '["edit_category_code"]'),
(411, 20, 6, 1, 1, 1, 1, 'null'),
(412, 20, 7, 0, 0, 0, 0, 'null'),
(413, 20, 9, 1, 1, 1, 1, 'null'),
(414, 20, 12, 1, 1, 1, 1, 'null'),
(415, 20, 13, 1, 1, 1, 1, 'null'),
(416, 20, 14, 0, 0, 0, 0, 'null'),
(417, 20, 15, 1, 1, 1, 1, 'null'),
(418, 20, 16, 1, 1, 1, 1, 'null'),
(419, 20, 18, 0, 0, 0, 0, 'null'),
(420, 20, 29, 1, 1, 1, 1, 'null'),
(421, 20, 30, 0, 0, 0, 0, 'null'),
(422, 20, 31, 1, 1, 1, 1, 'null'),
(423, 20, 32, 1, 1, 1, 1, 'null'),
(424, 1, 17, 1, 1, 1, 1, ''),
(425, 37, 1, 0, 0, 0, 0, '["manage_permissions"]'),
(426, 37, 6, 0, 0, 0, 0, 'null'),
(427, 37, 12, 0, 0, 0, 0, 'null'),
(428, 37, 14, 0, 0, 0, 0, 'null'),
(429, 37, 15, 1, 0, 0, 0, 'null'),
(430, 37, 16, 1, 0, 0, 0, 'null'),
(431, 37, 17, 0, 0, 0, 0, 'null'),
(432, 37, 18, 0, 0, 0, 0, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `permission_pages`
--

CREATE TABLE `permission_pages` (
  `per_page_id` int(11) NOT NULL,
  `page_name` varchar(200) NOT NULL,
  `sub_sys` varchar(200) NOT NULL,
  `show_in_admin_panel` tinyint(1) NOT NULL,
  `all_additional_permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_pages`
--

INSERT INTO `permission_pages` (`per_page_id`, `page_name`, `sub_sys`, `show_in_admin_panel`, `all_additional_permissions`) VALUES
(1, 'admin/admins', 'admin', 1, '["manage_permissions"]'),
(6, 'admin/edit_content', 'admin', 1, '[]'),
(12, 'admin/pages', 'admin', 1, '[]'),
(14, 'admin/subscribe', 'admin', 1, '["export_subscribe","email_settings","send_custom_email","send_all_subscribers_email","stop","pause","resume"]'),
(15, 'admin/support_messages', 'admin', 1, '[]'),
(16, 'admin/langs', 'admin', 1, '[]'),
(17, 'admin/coins', 'admin', 1, '[]'),
(18, 'admin/packages', 'admin', 1, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0khw0mn9jrEzSY4lsNjLzcqzjKmNGm6MvkTO1cjG', NULL, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibDZiSDNOa1k0c29qMkdrWFk4bXR2QzViNTR3cXVnWGxORWFvUVY1cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3QvZ2V0bXVtbS9hcnRpY2xlLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1533042876),
('cZbxMvCBH5sr3mymltlqAIwJ9pAiYO4pA6HMIe0N', NULL, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXZYc2tQTXoyNjdhMmdUQWxRT3hBSG51bGtXTFZnS1hKdXVyQlpKUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9sb2NhbGhvc3QvZ2V0bXVtbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjI6IlBIUERFQlVHQkFSX1NUQUNLX0RBVEEiO2E6MDp7fX0=', 1533048019),
('WcPP1mlpClPmqBWa52gCfQMes57uO119tNms4Wdn', 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYm92c0hjcmhXdW8wY01ZODgySlF0amN3cDI0M3FZallYcDBKdkx5MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9sb2NhbGhvc3QvZ2V0bXVtbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9fQ==', 1533034926);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `set_id` int(11) NOT NULL,
  `network_profit_percent` decimal(10,2) NOT NULL,
  `chart_1_percentage` int(11) NOT NULL,
  `chart_2_percentage` int(11) NOT NULL,
  `chart_3_percentage` int(11) NOT NULL,
  `flash_out_value` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`set_id`, `network_profit_percent`, `chart_1_percentage`, `chart_2_percentage`, `chart_3_percentage`, `flash_out_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '4.00', 28, 4, 17, '15000.00', NULL, '2018-03-19 02:43:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_code` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `logo_id` int(11) NOT NULL,
  `sponsor_id` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'place user code',
  `parent_id` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'place user code',
  `user_level` int(11) NOT NULL,
  `user_position` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `block_user` tinyint(1) NOT NULL,
  `user_active_token` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `user_active` tinyint(1) NOT NULL,
  `allowed_lang_id` int(11) NOT NULL,
  `btc_wallet_address` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `eth_wallet_address` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `ltc_wallet_address` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `user_balance` double(10,2) NOT NULL,
  `user_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'active or not active',
  `user_status_last_check` datetime DEFAULT NULL,
  `selected_lang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_code`, `logo_id`, `sponsor_id`, `parent_id`, `user_level`, `user_position`, `username`, `full_name`, `email`, `city`, `state`, `post_code`, `country`, `phone`, `address`, `user_type`, `password`, `remember_token`, `block_user`, `user_active_token`, `user_active`, `allowed_lang_id`, `btc_wallet_address`, `eth_wallet_address`, `ltc_wallet_address`, `user_balance`, `user_status`, `user_status_last_check`, `selected_lang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 0, '0', '0', 0, '', 'admin', 'admin', 'admin@admin.com', '', '', '', '', '', '', 'dev', '$2y$10$tb4ygD/NDU5WMrZNNgIeV.f5GYrF83rZ3GQbKnLCn9lSWLDrzzTce', 'G9Nz7g81VV1lepKx0IkXGG9Z4dCNhFnHH2PtMeGAazS6xL1IpBqCGXovopZ6', 0, 'ad23a24260f5229ac95b3db334ed11b4', 1, 0, '', '', '', 0.00, 'active', '2018-03-04 15:43:40', 0, '2018-02-10 14:59:29', '2018-03-04 20:27:52', NULL),
(4, 'first_code', 467, '0', '0', 0, '', 'coincome', 'coincome', 'coincomenet@gmail.com', 'ankara', 'merkez', '11566', 'Turkey', '+905557200435', 'merkez ankara', 'user', '$2y$10$va8PdxNF7rbgcBeqzmCOoORiRGFMddcvUn.Qb5nzHOwSIlAJAqbDq', 'vKRvkOy3iOI5JJOVp5z6ePMg13KJT1WVz6zZsxzkipJB2McFPn9LiZAxWbjE', 0, 'ad23a24260f5229ac95b3db334ed11b4', 1, 0, 'sdaa4DENEME', 'sdadaa', 'asdaasda', 96.00, 'not_active', '2018-03-20 12:49:11', 0, '2018-02-10 14:59:29', '2018-03-20 10:49:11', NULL),
(78, '726d4e901364a4713ba79b81fe29574a', 0, 'first_code', '', 0, '', 'uye1', 'uye1', 'uye1@coincome.org', 'istanbul', '', '', 'Afghanistan', '0212', 'istanbul', 'user', '$2y$10$M3EpOxCDZXlZTDsqlkhBteYXO/VoV9U1/KWQqqq8KBLlGLb6sxeHO', '3GkUKpwLV6HVc6vH721qMj7Dz6XAWFgsknWfFGn0MVEMx7pOdGGQJ3iD0xGe', 0, 'd1ebcb7e5b479754257155f074515241', 1, 0, '', '', '', 0.00, 'not_active', '2018-03-19 01:57:58', 0, '2018-03-18 03:30:08', '2018-03-19 05:57:58', NULL),
(79, '8ef5f0d6db94a97b5ad2631bfed0f9c6', 0, 'first_code', '', 0, '', 'bos', 'bos', 'uye6@coincome.net', 'aydın', '', '', 'Turkey', '0212', 'adres', 'user', '', NULL, 0, '313d9c3826db474c8749a54957d49aca', 0, 0, '', '', '', 0.00, 'not_active', '2018-03-19 06:00:01', 0, '2018-03-18 03:33:43', '2018-03-19 10:00:01', NULL),
(80, '4a56e9cb8fd2fcb2bc5204159cb5beda', 0, 'first_code', '', 0, '', 'uye2', 'uye2', 'uye2@coincome.org', 'istanbul', '', '', 'Afghanistan', '0212', 'istanbul', 'user', '$2y$10$3315tKQ5wCNkCMKAgYCVIOoEEyvOKp7kBbbRxITMleR3SP/6dMsNi', 'l61UQjX6OJRZ4w1S3aZPs2PYORl3nNuh3jA04E0M5c2noBp19knkryp1KSEU', 0, 'e79a3e6df9fbb419c9c19c020187b7fa', 1, 0, '', '', '', 0.76, 'active', '2018-03-19 00:35:52', 0, '2018-03-18 03:35:04', '2018-03-19 10:00:01', NULL),
(81, 'a2a9831c2d6b6c23ccd85f4d1ac0ca67', 0, 'first_code', '', 0, '', 'uye3', 'uye3', 'uye3@coincome.org', 'istanbul', '', '', 'Afghanistan', '0212', 'istanbul', 'user', '$2y$10$t6IUalKBrd8n34x1.snzvOV.2LErmNo0f6Vttyozc52lNnK.NntmS', 'e8hMRXSPNeLboZub8RuNivlFhf4vWjAonZiTpwsXR0HureGeV7xs4xswaELy', 0, 'f20a5f407c0833d7644a303b716c48c7', 1, 0, '', '', '', 5.10, 'active', '2018-03-19 01:33:50', 0, '2018-03-18 03:36:20', '2018-03-19 10:00:01', NULL),
(82, 'bd5f91e9c72ff7636348d2b9e6411851', 0, 'first_code', '', 0, '', 'uye4', 'uye4', 'uye4@coincome.org', 'istanbul', '', '', 'Afghanistan', '0212', 'istanbul', 'user', '$2y$10$jESn3pizi87f/pq6CtJkoeAETY/hUjh/5fcXE.bz8m37GkBtVAAv6', '4981GuQV8eXNlDYqWvZu0FjOYyriJBc7W8XHr51NySxIOb6ya4dwMYsz0Kre', 0, 'cfef3e5fc83776b6d2c8c8b5213139e3', 1, 0, '', '', '', 1.52, 'active', '2018-03-19 06:00:01', 0, '2018-03-18 03:36:29', '2018-03-19 10:00:01', NULL),
(83, 'd045d7c3eaf085b5460f961feee42235', 0, 'first_code', '', 0, '', 'uye5', 'uye5', 'uye5@coincome.org', 'istanbul', '', '', 'Afghanistan', '0212', 'istanbul', 'user', '$2y$10$8KaOLOHdF3ApozTUEqEzW.opQ4RaAJBggMnpsPkwt/4O0AM53aE.W', NULL, 0, 'f6c759337a5f60da78fc1b809c4efb01', 1, 0, '', '', '', 0.00, 'not_active', '2018-03-19 06:00:01', 0, '2018-03-18 03:42:57', '2018-03-19 10:00:01', NULL),
(84, 'edb19e7afdfede5af08cdcf27bc8227a', 0, 'first_code', '', 0, '', 'uye6', 'uye6', 'uye6@coincome.org', 'istanbul', '', '', 'Afghanistan', '0212', 'istanbul', 'user', '$2y$10$4k7TATVrj0Y.0NDZTAlVoeXqnQjsMdHd2HSVs41JYGpMCMb3S.s6K', '2VqoBf5ON0T1gfvaEL5AGk0tIjWwKdsgR23u4cQ7UU7vr46ZIX3WepXrVC90', 0, '24ee047e0b04e35314378184b72a7e88', 1, 0, '', '', '', 18.00, 'not_active', '2018-03-19 01:34:14', 0, '2018-03-18 03:52:53', '2018-03-19 05:54:10', NULL),
(85, '03056d773dd36e4b67d03dca0647c354', 0, '0', '', 0, '', 'abanoub', 'metyas', 'abanoub.metyas.btm@gmail.com', 'maadi', '', '', 'Egypt', '01200941060', 'cairo', 'user', '$2y$10$pOxYTTJDE1doSi8p3HkvR.a9DowJ/hqY8Cr6N1ij3JXiVvG.X58Vy', NULL, 0, '24a5de60fc52bf80b1c41fc5db686138', 1, 0, '', '', '', 5.10, 'active', '2018-03-20 13:02:55', 0, '2018-03-18 05:20:13', '2018-03-20 11:02:55', NULL),
(86, 'be7fa530c1051c7783c36854f7332fcf', 0, 'edb19e7afdfede5af08cdcf27bc8227a', '', 0, '', 'coinegitim', 'c', 'coinegitim@gmail.com', '1', '', '', 'Afghanistan', 'c', 'c', 'user', '$2y$10$Lfe650SnS9FrR/fgL8jZwOQnoDMjzyh2WH3THXPR2rkr9Vz1HwMr.', '9Lnd0S6wZnM8alT1xYqLArQqLbRn5eE8WnIzwebHoQJjE6wFR5KfFOUJXI27', 0, 'd0ba4baa1e0afd42948ceb441f40b341', 1, 0, '', '', '', 0.76, 'not_active', '2018-03-19 01:35:59', 0, '2018-03-19 05:34:43', '2018-03-19 10:00:01', NULL),
(87, 'cfa57a7a8fa14744c9831675c8b05b59', 0, 'first_code', '', 0, '', '1521485540_user', '1521485540_user', '1521485540_user@gmail.com', '', '', '', '', '', '', 'user', '$2y$10$T7.dh9UBjP6l4yS9RCBhOuJVj4PkQe/Wh0kp/ytDl6KWJe3bameXi', NULL, 0, '', 1, 0, '', '', '', 0.00, '', NULL, 0, '2018-03-19 18:52:20', '2018-03-19 18:52:20', NULL),
(88, 'd076dc193c9ef1695a687d9781540588', 0, 'first_code', '', 0, '', '1521485542_user', '1521485542_user', '1521485542_user@gmail.com', '', '', '', '', '', '', 'user', '$2y$10$3DN1LLt9EUFCUdFxSzf6Ieyc9dNLATq.MdigsdMJ9SPCAaDBNOwKe', NULL, 0, '', 1, 0, '', '', '', 0.00, '', NULL, 0, '2018-03-19 18:52:22', '2018-03-19 18:52:22', NULL),
(89, '692c80aa63f519e317c12e7eeca5707f', 0, 'first_code', '', 0, '', '1521485544_user', '1521485544_user', '1521485544_user@gmail.com', '', '', '', '', '', '', 'user', '$2y$10$UN1ZGwOmuPu9mkiLtNHTz.mw5zsVUshrCpb4sISEZFnj0r5MdDh1a', NULL, 0, '', 1, 0, '', '', '', 0.00, '', NULL, 0, '2018-03-19 18:52:24', '2018-03-19 18:52:24', NULL),
(90, 'bb09d2a40ca5521e1cb5a129544b98e4', 0, '03056d773dd36e4b67d03dca0647c354', '03056d773dd36e4b67d03dca0647c354', 1, 'right', '1521542984_user', '1521542984_user', '1521542984_user@gmail.com', '', '', '', '', '', '', 'user', '$2y$10$/Fb9/mwb.78D5PVz.rCj4evB1qqfzqVWGaUAMoxXyznqxOYxT5KLC', NULL, 0, '', 1, 0, '', '', '', 0.00, 'active', '2018-03-20 13:02:56', 0, '2018-03-20 10:49:44', '2018-03-20 11:02:56', NULL),
(91, '4bdfd88ad630a22143eff8a48dfcc0e4', 0, '03056d773dd36e4b67d03dca0647c354', 'bb09d2a40ca5521e1cb5a129544b98e4', 2, 'right', '1521542993_user', '1521542993_user', '1521542993_user@gmail.com', '', '', '', '', '', '', 'user', '$2y$10$BlPrCBrBpc4I8MfpF4psieTv.pju8otfzxRJQvNSYQk9JN/yvhVYa', NULL, 0, '', 1, 0, '', '', '', 0.00, 'active', '2018-03-20 13:02:56', 0, '2018-03-20 10:49:53', '2018-03-20 11:02:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_type` (`cat_type`);

--
-- Indexes for table `category_translate`
--
ALTER TABLE `category_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `cat_name` (`cat_name`(255));

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`(191),`reserved_at`);

--
-- Indexes for table `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `page_type` (`page_type`);

--
-- Indexes for table `pages_translate`
--
ALTER TABLE `pages_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`per_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `per_page_id` (`per_page_id`);

--
-- Indexes for table `permission_pages`
--
ALTER TABLE `permission_pages`
  ADD PRIMARY KEY (`per_page_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `category_translate`
--
ALTER TABLE `category_translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `langs`
--
ALTER TABLE `langs`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pages_translate`
--
ALTER TABLE `pages_translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;
--
-- AUTO_INCREMENT for table `permission_pages`
--
ALTER TABLE `permission_pages`
  MODIFY `per_page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
