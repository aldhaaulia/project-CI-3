-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 08:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `name`, `iban`, `bank`, `bic`) VALUES
(1, 'Our.made', '21908577', 'Bank Our', 'O290012');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image`, `url`, `time`) VALUES
(1, 'lilecaa2.png', '_1', 1654616583),
(2, 'zey2.png', '_2', 1654616805),
(3, 'halfday2.png', '_3', 1654621228),
(4, 'gorgies2.png', '_4', 1654624517);

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `title`, `description`, `abbr`, `for_id`) VALUES
(1, '', '', 'en', 1),
(2, 'Brand by lileca', '<p>brand by lilecaa</p>\r\n', 'id', 1),
(3, '', '', 'en', 2),
(4, 'brand by zey ', '<p>brand by zey</p>\r\n', 'id', 2),
(5, '', '', 'en', 3),
(6, 'brand by halfday', '<p>brand by halfday</p>\r\n', 'id', 3),
(7, '', '', 'en', 4),
(8, 'brand by gorgies', '', 'id', 4);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'zey'),
(2, 'halfday'),
(3, 'lilecaa'),
(4, 'gorgies');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `type`, `code`, `amount`, `valid_from_date`, `valid_to_date`, `status`) VALUES
(1, 'percent', 'NOYWBB', '10', 1606777200, 1612047600, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `activity`, `username`, `time`) VALUES
(1, 'Go to History', 'admin', 1654618322),
(2, 'Go to History', 'admin', 1654618394),
(3, 'Go to Blog Publish', 'admin', 1654618398),
(4, 'Go to Blog Publish', 'admin', 1654618403),
(5, 'Go to Blog', 'admin', 1654618405),
(6, 'Go to Blog Publish', 'admin', 1654618407),
(7, 'Go to Subscribed Emails', 'admin', 1654618414),
(8, 'Go to Settings Page', 'admin', 1654618416),
(9, 'Change footer contacts', 'admin', 1654618515),
(10, 'Go to Settings Page', 'admin', 1654618515),
(11, 'Multi Vendor Support changed', 'admin', 1654618537),
(12, 'Go to Settings Page', 'admin', 1654618538),
(13, 'In Slider products visibility changed', 'admin', 1654618554),
(14, 'Go to Settings Page', 'admin', 1654618554),
(15, 'Multi Vendor Support changed', 'admin', 1654618603),
(16, 'Go to Settings Page', 'admin', 1654618603),
(17, 'Go to products', 'admin', 1654618694),
(18, 'Go to publish product', 'admin', 1654618697),
(19, 'Success updated product', 'admin', 1654618739),
(20, 'Go to products', 'admin', 1654618739),
(21, 'Go to products', 'admin', 1654619003),
(22, 'Go to Styling page', 'admin', 1654619664),
(23, 'Go to Templates Page', 'admin', 1654619667),
(24, 'Go to Templates Page', 'admin', 1654619726),
(25, 'Go to Styling page', 'admin', 1654619729),
(26, 'Go to products', 'admin', 1654621095),
(27, 'Go to Settings Page', 'admin', 1654621098),
(28, 'Go to Admin Users', 'admin', 1654621109),
(29, 'Go to File Manager', 'admin', 1654621112),
(30, 'Go to languages', 'admin', 1654621115),
(31, 'Go to Blog', 'admin', 1654621119),
(32, 'Go to Blog Publish', 'admin', 1654621124),
(33, 'Go to Blog', 'admin', 1654621228),
(34, 'Go to products', 'admin', 1654621908),
(35, 'Go to publish product', 'admin', 1654621910),
(36, 'Success updated product', 'admin', 1654621989),
(37, 'Go to products', 'admin', 1654621989),
(38, 'Go to publish product', 'admin', 1654622009),
(39, 'Success updated product', 'admin', 1654622026),
(40, 'Go to products', 'admin', 1654622026),
(41, 'Go to publish product', 'admin', 1654622059),
(42, 'Success updated product', 'admin', 1654622168),
(43, 'Go to products', 'admin', 1654622168),
(44, 'Go to products', 'admin', 1654622302),
(45, 'Go to discounts page', 'admin', 1654622306),
(46, 'Go to Blog Publish', 'admin', 1654622307),
(47, 'Go to Blog', 'admin', 1654622312),
(48, 'Go to Settings Page', 'admin', 1654622315),
(49, 'Go to File Manager', 'admin', 1654622338),
(50, 'Go to Blog', 'admin', 1654622345),
(51, 'Go to brands page', 'admin', 1654622347),
(52, 'Go to products', 'admin', 1654622349),
(53, 'Go to publish product', 'admin', 1654622362),
(54, 'Success updated product', 'admin', 1654622444),
(55, 'Go to products', 'admin', 1654622444),
(56, 'Go to publish product', 'admin', 1654622448),
(57, 'Success updated product', 'admin', 1654622505),
(58, 'Go to products', 'admin', 1654622505),
(59, 'Go to products', 'admin', 1654622509),
(60, 'Go to Templates Page', 'admin', 1654623047),
(61, 'Go to Settings Page', 'admin', 1654623050),
(62, 'Go to languages', 'admin', 1654623053),
(63, 'Go to languages', 'admin', 1654623056),
(64, 'Go to languages', 'admin', 1654623113),
(65, 'Go to languages', 'admin', 1654624275),
(66, 'Go to products', 'admin', 1654624297),
(67, 'Go to publish product', 'admin', 1654624300),
(68, 'Success updated product', 'admin', 1654624309),
(69, 'Go to products', 'admin', 1654624309),
(70, 'Go to publish product', 'admin', 1654624312),
(71, 'Success updated product', 'admin', 1654624333),
(72, 'Go to products', 'admin', 1654624333),
(73, 'Go to publish product', 'admin', 1654624349),
(74, 'Success updated product', 'admin', 1654624411),
(75, 'Go to products', 'admin', 1654624412),
(76, 'Go to Subscribed Emails', 'admin', 1654624472),
(77, 'Go to Templates Page', 'admin', 1654624475),
(78, 'Go to Admin Users', 'admin', 1654624477),
(79, 'Go to Styling page', 'admin', 1654624478),
(80, 'Go to Settings Page', 'admin', 1654624480),
(81, 'Go to Blog Publish', 'admin', 1654624484),
(82, 'Go to Blog', 'admin', 1654624488),
(83, 'Go to Blog Publish', 'admin', 1654624494),
(84, 'Go to Blog', 'admin', 1654624517),
(85, 'Go to Blog Publish', 'admin', 1654624525),
(86, 'Go to publish product', 'admin', 1654624531),
(87, 'Go to home page', 'admin', 1654624533),
(88, 'Go to products', 'admin', 1654624542),
(89, 'Go to brands page', 'admin', 1654624543);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(2, 'en', 'english', '$', 'USD', 'en.jpg'),
(4, 'id', 'indonesian', 'RP', 'IDR', 'id.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `shop_categorie` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `time`, `time_update`, `visibility`, `shop_categorie`, `quantity`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`) VALUES
(1, 1654609846, 'pe53.jpg', 1654610326, 1654622444, 1, 2, 5, 0, 1, '_1', NULL, 1, 2, 0),
(2, 1654610517, 'd657e1b99f21e86e5a0039f9011a81b41.jpg', 1654610631, 1654624309, 1, 1, 5, 0, 1, '_2', NULL, 2, 1, 0),
(3, 1654610720, '91c7e42b306f134a55142ef456e9c4161.jpg', 1654610825, 1654622505, 1, 3, 5, 0, 1, '_3', NULL, 4, 3, 0),
(4, 1654616664, '07c26549c587d0d2361f23b00c3f9c1b1.jpg', 1654616749, 1654624411, 1, 1, 3, 0, 1, '_4', NULL, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`) VALUES
(1, 'white t-shirt by zey', '<p>comfy</p>\r\n', '<p>comfy</p>\r\n', '6.5', '7.3', 'en', 1),
(2, 'kaos putih by zey', '', '', '71.000', '61.000', 'id', 1),
(3, 'mint couple t-shirt by halfday', '<p>comfy</p>\r\n', '<p>comfy&nbsp;</p>\r\n', '7.00', '8.00', 'en', 2),
(4, 'kaos mint pasangan by halfday', '<p>bahan adem dan nyaman dipake&nbsp;</p>\r\n', '<p>bahan adem dan nyaman dipake&nbsp;</p>\r\n', '92.500', '132.000', 'id', 2),
(5, 'black t-shirt by gorgies', '<p>amazing</p>\r\n', '<p>amazing</p>\r\n', '8.5', '10.50', 'en', 3),
(6, 'kaos hitam pria by gorgies ', '', '', '80.000', '150.000', 'id', 3),
(7, 'pink couple t-shirt by lilecaa', '<p>love couple</p>\r\n', '<p>love couple</p>\r\n', '7.8', '9.0', 'en', 4),
(8, 'kaos pink pasangan by lilecaa', '<p>cinta pasangan</p>\r\n', '<p>cinta pasangan</p>\r\n', '85.000', '135.000', 'id', 4);

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_pages_translations`
--

INSERT INTO `seo_pages_translations` (`id`, `title`, `description`, `abbr`, `page_type`) VALUES
(1, 'welcome', '', 'en', 'home'),
(2, 'selamat datang', '', 'id', 'home'),
(3, '', '', 'en', 'checkout'),
(4, '', '', 'id', 'checkout'),
(5, '', '', 'en', 'contacts'),
(6, '', '', 'id', 'contacts'),
(7, '', '', 'en', 'blog'),
(8, '', '', 'id', 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`) VALUES
(1, 0, 2),
(2, 0, 1),
(3, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`) VALUES
(1, 'couple', 'en', 1),
(2, 'pasangan', 'id', 1),
(3, 'women', 'en', 2),
(4, 'wanita', 'id', 2),
(5, 'men', 'en', 3),
(6, 'pria', 'id', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'your@email.com', 0, 1654603998);

-- --------------------------------------------------------

--
-- Table structure for table `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'NewLogo.jpg'),
(2, 'navitext', ''),
(3, 'footercopyright', 'Powered by our.made'),
(4, 'contactspage', 'Hello dear client'),
(5, 'footerContactAddr', ''),
(6, 'footerContactEmail', 'our.made@shop.com'),
(7, 'footerContactPhone', ''),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', ''),
(10, 'footerSocialFacebook', ''),
(11, 'footerSocialTwitter', ''),
(12, 'footerSocialGooglePlus', ''),
(13, 'footerSocialPinterest', ''),
(14, 'footerSocialYoutube', ''),
(16, 'contactsEmailTo', ''),
(17, 'shippingOrder', '1'),
(18, 'addJs', ''),
(19, 'publicQuantity', '1'),
(20, 'paypal_email', ''),
(21, 'paypal_sandbox', '1'),
(22, 'publicDateAdded', '0'),
(23, 'googleApi', ''),
(24, 'template', 'clothesshop'),
(25, 'cashondelivery_visibility', '1'),
(26, 'showBrands', '1'),
(27, 'showInSlider', '1'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '0'),
(30, 'multiVendor', '0'),
(31, 'outOfStock', '1'),
(32, 'hideBuyButtonsOfOutOfStock', '1'),
(33, 'moreInfoBtn', '1'),
(34, 'refreshAfterAddToCart', '1'),
(35, 'newStyle', '\r\n.gradient-color {\r\n    background-color: #afb889;\r\n    /* IE9, iOS 3.2+ */\r\n    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHZpZXdCb3g9IjAgMCAxIDEiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxsaW5lYXJHcmFkaWVudCBpZD0idnNnZyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIwJSIgeTE9IjAlIiB4Mj0iMCUiIHkyPSIxMDAlIj48c3RvcCBzdG9wLWNvbG9yPSIjZTBkZmM5IiBzdG9wLW9wYWNpdHk9IjEiIG9mZnNldD0iMCIvPjxzdG9wIHN0b3AtY29sb3I9IiM5ZGE3NmMiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIwLjUiLz48c3RvcCBzdG9wLWNvbG9yPSIjNzc4ZDUzIiBzdG9wLW9wYWNpdHk9IjEiIG9mZnNldD0iMC41MSIvPjxzdG9wIHN0b3AtY29sb3I9IiNjOWNlOWQiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIxIi8+PC9saW5lYXJHcmFkaWVudD48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI3ZzZ2cpIiAvPjwvc3ZnPg==);\r\n    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%,color-stop(0, rgb(224, 223, 201)),color-stop(0.5, rgb(157, 167, 108)),color-stop(0.51, rgb(119, 141, 83)),color-stop(1, rgb(201, 206, 157)));\r\n    /* Android 2.3 */\r\n    background-image: -webkit-repeating-linear-gradient(top,rgb(224, 223, 201) 0%,rgb(157, 167, 108) 50%,rgb(119, 141, 83) 51%,rgb(201, 206, 157) 100%);\r\n    /* IE10+ */\r\n    background-image: repeating-linear-gradient(to bottom,rgb(224, 223, 201) 0%,rgb(157, 167, 108) 50%,rgb(119, 141, 83) 51%,rgb(201, 206, 157) 100%);\r\n    background-image: -ms-repeating-linear-gradient(top,rgb(224, 223, 201) 0%,rgb(157, 167, 108) 50%,rgb(119, 141, 83) 51%,rgb(201, 206, 157) 100%);\r\nborder : solid 1px #afb889;box-shadow : 2px 2px 3px #afb889; }\r\n.mine-color, .btn-inner-search { background-color:#afb889; }\r\n.button-more::before { border-color: transparent #afb889; }\r\n.btn-go-search:active,.btn-go-search:focus, .btn-go-search:hover, .button-more:hover, .button-more:focus, .button-more:hover { background-color: #bfc6a0; }\r\ndiv.filter-sidebar .title, .title.alone {border-bottom: 3px solid #d7dcc4; }\r\ndiv.filter-sidebar .title span, .title.alone span {border-bottom : 3px solid #afb889; }\r\n.cloth-bg-color {background-color:#afb889;}\r\n.cloth-color {color:#afb889;}\r\n.cloth--border-color {border-color:#afb889;}\r\n.cloth-border-top-color {border-top-color: #afb889;}\r\n.navbar.cloth .navbar-nav li.active a { color:#afb889;}\r\n.navbar.cloth .navbar-nav li a:hover, .navbar.cloth .navbar-nav li a:focus {background-color:transparent !important; color:#afb889;}\r\n.navbar.cloth .navbar-nav li:hover, .navbar.cloth .navbar-nav li.active {border-top:3px solid; border-top-color: #afb889;}\r\n#small_carousel .product-list div.add-to-cart, #small_carousel .product-list .info-btn {background-color: #afb889; }\r\n.products .product-list div.add-to-cart, .products .product-list .info-btn { background-color: #afb889;}\r\n.part-label { background-color: #afb889;}\r\n.pagination li a { color:#afb889;}\r\n.pagination li.active a {background-color: #afb889; border-color:#afb889; }\r\n.list li a {background-color:#afb889;}\r\n#home-slider .carousel-indicators .active, #small_carousel .carousel-indicators .active {background-color: #afb889;}\r\n.btn-blue-round {    background-color: #afb889;\r\n    /* IE9, iOS 3.2+ */\r\n    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHZpZXdCb3g9IjAgMCAxIDEiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxsaW5lYXJHcmFkaWVudCBpZD0idnNnZyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIwJSIgeTE9IjAlIiB4Mj0iMCUiIHkyPSIxMDAlIj48c3RvcCBzdG9wLWNvbG9yPSIjZTBkZmM5IiBzdG9wLW9wYWNpdHk9IjEiIG9mZnNldD0iMCIvPjxzdG9wIHN0b3AtY29sb3I9IiM5ZGE3NmMiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIwLjUiLz48c3RvcCBzdG9wLWNvbG9yPSIjNzc4ZDUzIiBzdG9wLW9wYWNpdHk9IjEiIG9mZnNldD0iMC41MSIvPjxzdG9wIHN0b3AtY29sb3I9IiNjOWNlOWQiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIxIi8+PC9saW5lYXJHcmFkaWVudD48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI3ZzZ2cpIiAvPjwvc3ZnPg==);\r\n    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%,color-stop(0, rgb(224, 223, 201)),color-stop(0.5, rgb(157, 167, 108)),color-stop(0.51, rgb(119, 141, 83)),color-stop(1, rgb(201, 206, 157)));\r\n    /* Android 2.3 */\r\n    background-image: -webkit-repeating-linear-gradient(top,rgb(224, 223, 201) 0%,rgb(157, 167, 108) 50%,rgb(119, 141, 83) 51%,rgb(201, 206, 157) 100%);\r\n    /* IE10+ */\r\n    background-image: repeating-linear-gradient(to bottom,rgb(224, 223, 201) 0%,rgb(157, 167, 108) 50%,rgb(119, 141, 83) 51%,rgb(201, 206, 157) 100%);\r\n    background-image: -ms-repeating-linear-gradient(top,rgb(224, 223, 201) 0%,rgb(157, 167, 108) 50%,rgb(119, 141, 83) 51%,rgb(201, 206, 157) 100%);\r\n}\r\n.my-basket span.sum-scope {color:#afb889;}\r\n.search .btn-red { border-bottom: 1px solid #d7dcc4; border-right: 1px solid #d7dcc4 ; border-left: 1px solid #d7dcc4 ;}\r\n#small_carousel .product-list h2 a {color:#afb889;}\r\n#home-slider .item h1 a {color:#afb889;}\r\n\r\n/* IE8- CSS hack */\r\n@media \\0screen\\,screen\\9 {\r\n    .gradient-color {\r\n        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=\"#ffe0dfc9\",endColorstr=\"#ffc9ce9d\",GradientType=0);\r\n    }\r\n}\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
