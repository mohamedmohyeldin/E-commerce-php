-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 08:28 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nti_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) UNSIGNED NOT NULL,
  `street` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `building_no` varchar(11) NOT NULL,
  `floor_no` int(11) NOT NULL,
  `apartment_no` int(11) NOT NULL,
  `users_id` int(11) UNSIGNED DEFAULT NULL,
  `cities_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `street`, `region`, `building_no`, `floor_no`, `apartment_no`, `users_id`, `cities_id`) VALUES
(1, 'ain ', 'cairo', '6', 10, 60, 1, 1),
(2, 'zaton ', 'alex', '6', 10, 60, 1, 1),
(3, 'giza', 'haram', '55', 2, 1, 2, NULL),
(4, 'jj', 'jkn', '8', 5, 7, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `users_id` int(11) UNSIGNED NOT NULL,
  `products_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`) VALUES
(1, 'electronics', '1.png', 's'),
(2, 'Destiney', 'http://lorempixel.com/640/480/', '9'),
(3, 'Werner', 'http://lorempixel.com/640/480/', '3'),
(4, 'Robyn', 'http://lorempixel.com/640/480/', '6'),
(5, 'Susie', 'http://lorempixel.com/640/480/', '4'),
(6, 'Ebony', 'http://lorempixel.com/640/480/', '2'),
(8, 'Tad', 'http://lorempixel.com/640/480/', '9'),
(9, 'Abelardo', 'http://lorempixel.com/640/480/', '1'),
(10, 'Pauline', 'http://lorempixel.com/640/480/', '8'),
(11, 'Murl', 'http://lorempixel.com/640/480/', '6'),
(12, 'Ella', 'http://lorempixel.com/640/480/', '1'),
(13, 'Blaise', 'http://lorempixel.com/640/480/', '4'),
(14, 'Chesley', 'http://lorempixel.com/640/480/', '1'),
(15, 'Donald', 'http://lorempixel.com/640/480/', '6'),
(16, 'Filomena', 'http://lorempixel.com/640/480/', '5'),
(17, 'Cary', 'http://lorempixel.com/640/480/', '2'),
(18, 'Merl', 'http://lorempixel.com/640/480/', '3'),
(19, 'Orland', 'http://lorempixel.com/640/480/', '8'),
(20, 'Marcelino', 'http://lorempixel.com/640/480/', '6'),
(21, 'Meda', 'http://lorempixel.com/640/480/', '8'),
(22, 'Leonardo', 'http://lorempixel.com/640/480/', '7'),
(23, 'Braulio', 'http://lorempixel.com/640/480/', '6'),
(24, 'Kyle', 'http://lorempixel.com/640/480/', '9'),
(25, 'Theodore', 'http://lorempixel.com/640/480/', '1'),
(26, 'Gregory', 'http://lorempixel.com/640/480/', '9'),
(27, 'Aurelie', 'http://lorempixel.com/640/480/', '9'),
(28, 'Bettye', 'http://lorempixel.com/640/480/', '5'),
(29, 'Harry', 'http://lorempixel.com/640/480/', '4'),
(30, 'Cathrine', 'http://lorempixel.com/640/480/', '6'),
(31, 'Sigurd', 'http://lorempixel.com/640/480/', '1'),
(32, 'Morton', 'http://lorempixel.com/640/480/', '2'),
(33, 'Jocelyn', 'http://lorempixel.com/640/480/', '7'),
(34, 'Kaci', 'http://lorempixel.com/640/480/', '2'),
(35, 'Nella', 'http://lorempixel.com/640/480/', '2'),
(36, 'Dillan', 'http://lorempixel.com/640/480/', '4'),
(37, 'Trinity', 'http://lorempixel.com/640/480/', '9'),
(38, 'Colton', 'http://lorempixel.com/640/480/', '3'),
(39, 'Candida', 'http://lorempixel.com/640/480/', '2'),
(40, 'Juliana', 'http://lorempixel.com/640/480/', '8'),
(41, 'Jaqueline', 'http://lorempixel.com/640/480/', '7'),
(42, 'Raphael', 'http://lorempixel.com/640/480/', '1'),
(43, 'Penelope', 'http://lorempixel.com/640/480/', '4'),
(44, 'Lesley', 'http://lorempixel.com/640/480/', '1'),
(45, 'Judah', 'http://lorempixel.com/640/480/', '6'),
(46, 'Ezra', 'http://lorempixel.com/640/480/', '2'),
(47, 'Blaise', 'http://lorempixel.com/640/480/', '3'),
(48, 'Vern', 'http://lorempixel.com/640/480/', '7'),
(49, 'Albert', 'http://lorempixel.com/640/480/', '1'),
(50, 'Otis', 'http://lorempixel.com/640/480/', '7'),
(51, 'Rachel', 'http://lorempixel.com/640/480/', '8'),
(52, 'Claude', 'http://lorempixel.com/640/480/', '5'),
(53, 'Skylar', 'http://lorempixel.com/640/480/', '8'),
(54, 'Jessie', 'http://lorempixel.com/640/480/', '6'),
(55, 'Eunice', 'http://lorempixel.com/640/480/', '2'),
(56, 'Rigoberto', 'http://lorempixel.com/640/480/', '4'),
(57, 'Dennis', 'http://lorempixel.com/640/480/', '9'),
(58, 'Kristopher', 'http://lorempixel.com/640/480/', '1'),
(59, 'Annetta', 'http://lorempixel.com/640/480/', '2'),
(60, 'Emilie', 'http://lorempixel.com/640/480/', '6'),
(61, 'Noel', 'http://lorempixel.com/640/480/', '6'),
(62, 'Royal', 'http://lorempixel.com/640/480/', '6'),
(63, 'Derrick', 'http://lorempixel.com/640/480/', '8'),
(64, 'Meghan', 'http://lorempixel.com/640/480/', '3'),
(65, 'Sasha', 'http://lorempixel.com/640/480/', '8'),
(66, 'Demetrius', 'http://lorempixel.com/640/480/', '5'),
(67, 'Millie', 'http://lorempixel.com/640/480/', '9'),
(68, 'Violet', 'http://lorempixel.com/640/480/', '5'),
(69, 'Adrienne', 'http://lorempixel.com/640/480/', '8'),
(70, 'Danika', 'http://lorempixel.com/640/480/', '8'),
(71, 'Lisandro', 'http://lorempixel.com/640/480/', '9'),
(72, 'Nyasia', 'http://lorempixel.com/640/480/', '7'),
(73, 'Jamil', 'http://lorempixel.com/640/480/', '4'),
(74, 'Michele', 'http://lorempixel.com/640/480/', '2'),
(75, 'Elwin', 'http://lorempixel.com/640/480/', '4'),
(76, 'Isaias', 'http://lorempixel.com/640/480/', '2'),
(77, 'Aurelie', 'http://lorempixel.com/640/480/', '8'),
(78, 'Kirstin', 'http://lorempixel.com/640/480/', '3'),
(79, 'Gordon', 'http://lorempixel.com/640/480/', '9'),
(80, 'Donato', 'http://lorempixel.com/640/480/', '7'),
(81, 'Bulah', 'http://lorempixel.com/640/480/', '8'),
(82, 'Clarabelle', 'http://lorempixel.com/640/480/', '5'),
(83, 'Marcel', 'http://lorempixel.com/640/480/', '6'),
(84, 'Meaghan', 'http://lorempixel.com/640/480/', '3'),
(85, 'Walton', 'http://lorempixel.com/640/480/', '4'),
(86, 'Heath', 'http://lorempixel.com/640/480/', '4'),
(87, 'Chaim', 'http://lorempixel.com/640/480/', '2'),
(88, 'Heath', 'http://lorempixel.com/640/480/', '5'),
(89, 'Zula', 'http://lorempixel.com/640/480/', '9'),
(90, 'Santiago', 'http://lorempixel.com/640/480/', '3'),
(91, 'Jeffry', 'http://lorempixel.com/640/480/', '5'),
(92, 'Holden', 'http://lorempixel.com/640/480/', '3'),
(93, 'Rey', 'http://lorempixel.com/640/480/', '1'),
(94, 'Torrey', 'http://lorempixel.com/640/480/', '8'),
(95, 'Cordelia', 'http://lorempixel.com/640/480/', '5'),
(96, 'Vivien', 'http://lorempixel.com/640/480/', '1'),
(97, 'Heber', 'http://lorempixel.com/640/480/', '8'),
(98, 'Junius', 'http://lorempixel.com/640/480/', '2'),
(99, 'Crystal', 'http://lorempixel.com/640/480/', '6'),
(100, 'Dayna', 'http://lorempixel.com/640/480/', '3');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `long_` varchar(30) NOT NULL,
  `coverage_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `status`, `lat`, `long_`, `coverage_area`) VALUES
(1, 'cairo', '1', '30.1515', '31.1515', 10),
(2, 'cairo', '1', '30.1515', '31.1515', 10),
(3, 'alex', '1', '30.1515', '31.1515', 10),
(4, 'alex', '1', '30.1515', '31.1515', 10),
(5, 'giza', '1', '30.1515', '31.1515', 10);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(30) NOT NULL,
  `coupon_type` varchar(30) NOT NULL,
  `value` varchar(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `min_price` int(11) NOT NULL,
  `max_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `delivary`
--

CREATE TABLE `delivary` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `license` bigint(20) NOT NULL,
  `status` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `long_` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivary`
--

INSERT INTO `delivary` (`id`, `name`, `phone`, `license`, `status`, `lat`, `long_`) VALUES
(1, 'g', '4211', 41221, '1', '21', '0');

-- --------------------------------------------------------

--
-- Table structure for table `offered`
--

CREATE TABLE `offered` (
  `products_id` int(11) UNSIGNED NOT NULL,
  `offers_id` int(11) UNSIGNED NOT NULL,
  `price` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `discount_value` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `long_` varchar(30) NOT NULL,
  `users_id` int(11) UNSIGNED NOT NULL,
  `delivary_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `comment`, `total`, `status`, `code`, `lat`, `long_`, `users_id`, `delivary_id`) VALUES
(4, '2020-12-16 12:30:46', 'vv', 151, '2', '512', '521', '52', 104, 1),
(5, '2020-12-16 12:31:13', 'vv', 1525, '2', '512', '521', '52', 100, 1),
(6, '2020-12-16 12:31:28', 'vv', 99, '2', '512', '521', '52', 90, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `orders_id` int(11) UNSIGNED NOT NULL,
  `products_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `price` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`orders_id`, `products_id`, `quantity`, `price`) VALUES
(4, 8, 2, 100),
(5, 8, 2, 100),
(5, 9, 6, 100),
(5, 10, 6, 100),
(6, 8, 6, 100),
(6, 10, 6, 100),
(6, 12, 6, 100);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `stock` int(11) UNSIGNED NOT NULL,
  `details` text DEFAULT NULL,
  `sub_cat_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `code`, `image`, `stock`, `details`, `sub_cat_id`, `created_at`) VALUES
(6, 'laptop', 1532, '155c', '1.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 1, '2020-12-16 12:18:24'),
(7, 'flashmemory', 2032, '155c', '2.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 1, '2020-12-16 12:18:24'),
(8, 'desktop', 20000, '155c', '3.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 1, '2020-12-16 12:18:24'),
(9, 'needforspeed', 20, '155c', '4.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 2, '2020-11-10 12:18:24'),
(10, 'Pes', 60, '155c', '5.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 2, '2020-11-11 12:18:24'),
(11, 'pubg', 1532, '155c', '6.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 2, '2020-11-16 12:18:24'),
(12, 'fifa', 1532, '155c', '7.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 2, '2020-10-21 12:18:24'),
(13, 'tshirt', 1532, '155c', '8.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 3, '2020-10-14 12:18:24'),
(14, 'short', 1532, '155c', '9.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 3, '2020-12-16 12:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `value` int(11) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `users_id` int(11) UNSIGNED NOT NULL,
  `products_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `value`, `comment`, `users_id`, `products_id`) VALUES
(8, 4, 'ggg', 2, 8),
(9, 5, 'ggg', 104, 8),
(10, 3, 'ggg', 90, 8),
(11, 4, 'ggg', 80, 8),
(12, 4, 'ggg', 80, 10),
(13, 5, 'ggg', 80, 10),
(14, 0, 'ggg', 80, 10),
(17, 2, 'ggg', 80, 7),
(18, 3, 'ggg', 70, 7),
(19, 4, 'sd', 44, 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rating_products`
-- (See below for the actual view)
--
CREATE TABLE `rating_products` (
`product_id` int(11) unsigned
,`name` varchar(30)
,`price` int(11) unsigned
,`image` varchar(50)
,`rating_count` bigint(21)
,`avg_rating` decimal(12,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(30) NOT NULL,
  `products_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE `sub_cat` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` text NOT NULL,
  `catagories_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`id`, `name`, `image`, `status`, `catagories_id`) VALUES
(1, 'electronics', '1.png', 's', 1),
(2, 'Destiney', 'http://lorempixel.com/640/480/', '9', 1),
(3, 'Werner', 'http://lorempixel.com/640/480/', '3', 1),
(4, 'Robyn', 'http://lorempixel.com/640/480/', '6', 1),
(5, 'Susie', 'http://lorempixel.com/640/480/', '4', 1),
(6, 'Ebony', 'http://lorempixel.com/640/480/', '2', 1),
(8, 'Tad', 'http://lorempixel.com/640/480/', '9', 1),
(9, 'Abelardo', 'http://lorempixel.com/640/480/', '1', 1),
(10, 'Pauline', 'http://lorempixel.com/640/480/', '8', 1),
(11, 'electronics2', '1.png', 's', 2),
(12, 'Destiney2', 'http://lorempixel.com/640/480/', '9', 2),
(13, 'Werne2r', 'http://lorempixel.com/640/480/', '3', 2),
(14, 'Robyn2', 'http://lorempixel.com/640/480/', '6', 2),
(15, 'Susie2', 'http://lorempixel.com/640/480/', '4', 2),
(16, 'Ebony2', 'http://lorempixel.com/640/480/', '2', 2),
(17, 'Tad2', 'http://lorempixel.com/640/480/', '9', 2),
(18, 'Abelardo2', 'http://lorempixel.com/640/480/', '1', 2),
(19, 'Pauline2', 'http://lorempixel.com/640/480/', '8', 2),
(20, 'electronics3', '1.png', 's', 3),
(21, 'Destiney23', 'http://lorempixel.com/640/480/', '9', 3),
(22, 'Werne2r', 'http://lorempixel.com/640/480/', '3', 3),
(23, 'Robyn2', 'http://lorempixel.com/640/480/', '6', 3),
(24, 'Susie2', 'http://lorempixel.com/640/480/', '4', 3),
(25, 'Ebony2', 'http://lorempixel.com/640/480/', '2', 3),
(26, 'Tad2', 'http://lorempixel.com/640/480/', '9', 3),
(27, 'Abelardo2', 'http://lorempixel.com/640/480/', '1', 3),
(28, 'Pauline2', 'http://lorempixel.com/640/480/', '8', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first` varchar(30) NOT NULL,
  `last` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 2 COMMENT '0=>pending,1=>active,2=>not_verified,3=>banned',
  `code` varchar(10) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'NULL',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first`, `last`, `email`, `phone`, `password`, `status`, `code`, `image`, `created_at`) VALUES
(1, 'galal', 'husseny', 'galal5.husseny@gmail.com', NULL, 'NULL', 3, '456', '', '2020-12-08 08:38:38'),
(2, 'aahmed', 'mohamed', 'ahmed@gmamil.com', '0114489555', 'ggg', 1, '12345', '', '2020-12-08 08:38:38'),
(3, 'eslam', '', 'mohemd@gmail', NULL, 'klmlkmlkm', 1, '12345', '', '2020-12-08 08:38:38'),
(7, 'elsam', 'husseny', 'galal.husseny5@gmail.com', NULL, 'tgyuhiuj', 2, NULL, '', '2020-12-08 08:38:38'),
(8, 'maha', 'kero', 'maha@gmail', '156135', 'maha123456', 0, '48561', '', '2020-12-08 11:35:50'),
(11, 'Kane', 'Windler', 'kuhn.marilie@example.org', '(618)992-8893x', '699e83083072', 5, 'pemm', '', '2020-02-11 18:31:36'),
(12, 'Mckenzie', 'Harris', 'kaya.gutmann@example.com', '00615113852', '22b1297c04c5', 4, 'dgwk', '', '1976-02-26 19:21:23'),
(13, 'Kristian', 'D\'Amore', 'gmueller@example.net', '(048)128-4145x', 'd319db0f357a', 8, 'bjbu', '', '2002-12-23 19:12:02'),
(14, 'Brendan', 'Quitzon', 'msporer@example.org', '080-829-9914', '21a8cbf62056', 7, 'cbpe', '', '1994-09-06 17:09:50'),
(15, 'Jadon', 'Haley', 'skoepp@example.com', '102.908.6052', '8be99b003416', 9, 'nper', '', '1976-02-01 15:51:34'),
(16, 'Willis', 'Reichert', 'kellie.altenwerth@example.net', '(094)834-0368', 'acfbe5ef54aa', 8, 'fily', '', '2001-07-19 03:04:54'),
(17, 'Barry', 'Hettinger', 'coberbrunner@example.org', '198.564.6625', '0ee7ba75be91', 8, 'ckoh', '', '2018-12-26 22:08:12'),
(18, 'Rodrick', 'Nolan', 'daniel.stevie@example.net', '(432)616-5236', '1ea7ec3496f1', 1, 'saik', '', '2004-04-25 18:06:19'),
(19, 'reda', 'ahmed', 'reda.husseny@gmail.com', '4523352', 'ghgdfgdfg', 1, '54221', '', '2020-12-09 06:38:38'),
(20, 'waleed', 'mohamed', 'waleed@gmamil.com', '542242', 'ggg', 1, '12345', '', '2020-12-22 08:38:38'),
(21, 'eslam', 'ibrahem', 'eslam@gmail', '4513513', 'klmlkmlkm', 2, '12345', '', '2020-12-08 08:38:38'),
(22, 'ibrahem', 'ezzat', 'galal.ezzat@gmail.com', '643135', 'tgyuhiuj', 3, '64512', '', '2020-12-06 08:38:38'),
(23, 'amany', 'kero', 'amany@gmail', '84525', 'maha123456', 1, '48561', '', '2020-12-07 11:35:50'),
(24, 'Kaleigh', 'Bauch', 'leonie.crist@example.org', '997.030.1239', 'eec5cd4d41ef', 5, 'xcxa', '', '1982-05-12 20:58:36'),
(25, 'Giuseppe', 'Hane', 'oceane.prohaska@example.org', '+41(1)22365657', '529180c7ac42', 8, 'aohw', '', '1970-01-03 20:34:59'),
(26, 'Newell', 'Romaguera', 'schimmel.zechariah@example.org', '(606)080-6464', 'a4ad0dde8c79', 2, 'yfrb', '', '2008-06-24 00:18:24'),
(27, 'Morton', 'Conn', 'horacio22@example.com', '855-291-7026', '9dd741eea5cc', 5, 'xpqb', '', '2016-11-12 22:34:13'),
(28, 'Vladimir', 'Mann', 'emard.esperanza@example.com', '581.613.1584x1', 'f51f2bf7115d', 4, 'nkll', '', '2007-04-24 21:37:41'),
(29, 'Toni', 'Dickinson', 'hermiston.gertrude@example.org', '(895)045-1892x', 'b7344254a9d4', 1, 'crpr', '', '2001-06-24 16:01:48'),
(30, 'Edward', 'Dicki', 'raphaelle79@example.org', '767.334.1449x0', 'e4a98cd0df77', 7, 'pcyk', '', '2017-06-07 04:02:33'),
(31, 'Tre', 'Lindgren', 'qfriesen@example.org', '(366)981-5535x', '5d7c78e31128', 4, 'ehnu', '', '1975-05-11 05:56:41'),
(32, 'Tremaine', 'O\'Hara', 'gardner.schmeler@example.com', '860.460.0691x0', '7022f3b2ec39', 6, 'ivyq', '', '1978-01-08 22:23:11'),
(33, 'Roscoe', 'Waters', 'hackett.lelia@example.com', '1-210-164-0292', '1c76f051e264', 9, 'zdxv', '', '1986-05-10 00:42:01'),
(34, 'Garth', 'Pagac', 'cwintheiser@example.com', '1-467-980-6795', '9ad985234816', 2, 'ydqb', '', '1979-04-06 16:22:19'),
(35, 'Mackenzie', 'Lang', 'twolff@example.com', '(146)195-7670x', '64c96f1e6c4f', 5, 'jzix', '', '2016-02-26 08:27:03'),
(36, 'Curt', 'Leuschke', 'whilll@example.net', '01089629980', 'a4b89eac437f', 2, 'kyfv', '', '1981-06-23 15:25:31'),
(37, 'Lorenzo', 'Hoppe', 'christine43@example.org', '(201)511-2044', 'eaaa538e1ef5', 7, 'uvrq', '', '2010-11-07 00:56:42'),
(38, 'Jayme', 'Fay', 'stan.goodwin@example.org', '468-852-7987x2', '0f293bed42fd', 7, 'kxlt', '', '2013-06-15 17:55:38'),
(39, 'Drake', 'Walker', 'sparisian@example.com', '860-122-0947', '558ba3deed14', 1, 'exrs', '', '1985-01-17 20:18:45'),
(40, 'Orin', 'Hagenes', 'nmayert@example.com', '815.415.1004', '6670de80d4f9', 6, 'rllf', '', '2016-03-29 17:04:47'),
(41, 'Daron', 'Quitzon', 'hessel.josh@example.com', '903-504-6126x9', '95d90734b381', 9, 'yxkc', '', '1995-06-18 13:20:32'),
(42, 'Elmo', 'Bruen', 'lherzog@example.net', '(499)776-7153x', 'ff7ba10d4f77', 6, 'fqyl', '', '1970-01-03 07:39:29'),
(43, 'Trevor', 'Carter', 'jcorwin@example.net', '(679)955-4228', '6fc4c3f1abcf', 6, 'ktbr', '', '2015-01-06 08:53:09'),
(44, 'Christopher', 'Schuster', 'haley36@example.net', '+21(7)23382146', '524538494285', 5, 'mqyy', '', '1971-02-18 07:42:26'),
(45, 'Wade', 'Baumbach', 'giovani36@example.org', '1-210-344-1903', '8a7ccea58348', 5, 'kkqo', '', '1997-08-26 06:11:46'),
(46, 'Berta', 'Lesch', 'carter.bernadette@example.com', '(703)959-9183', '67e20bd21e26', 9, 'wnlx', '', '1979-11-29 11:44:34'),
(47, 'Arden', 'Yost', 'johnathan.johnston@example.org', '525.211.1932x4', 'ca740a6d6bf0', 3, 'kzql', '', '2018-11-21 09:42:10'),
(48, 'Deshaun', 'Morar', 'brakus.barney@example.org', '(062)671-9350', 'b8f811d952cf', 5, 'gchy', '', '2013-03-09 11:57:18'),
(49, 'Sanford', 'Fritsch', 'bhickle@example.com', '250.502.6594x1', '567e5fa9f19b', 8, 'uwwj', '', '1981-03-05 14:06:34'),
(50, 'Ellis', 'Littel', 'aletha43@example.net', '+69(6)33310589', '6ee5a76c4d7a', 7, 'tyel', '', '1983-10-25 02:12:32'),
(51, 'Joey', 'Walker', 'zemlak.kay@example.net', '765.702.1913x8', 'bf95d60116ad', 2, 'jneu', '', '2015-07-20 23:16:06'),
(52, 'Seth', 'Tillman', 'mario.wolff@example.com', '+10(3)51080181', 'fffd3ae7837f', 2, 'rudg', '', '2008-04-25 23:54:24'),
(53, 'Walker', 'Hermiston', 'reinger.walter@example.org', '(764)727-6072x', '73c69717f5af', 9, 'ucxy', '', '1973-01-23 05:11:26'),
(54, 'Alek', 'Greenholt', 'jeramie.thompson@example.net', '(729)937-7707', '921914a5a527', 2, 'pqrw', '', '2006-05-05 19:15:04'),
(55, 'Clyde', 'Gottlieb', 'pouros.felipa@example.com', '241-974-3993x8', '2c353b29dd27', 7, 'eczr', '', '1991-10-31 04:08:33'),
(56, 'Clair', 'Barrows', 'wilkinson.freda@example.org', '+97(8)54389188', 'e0012fdd40aa', 5, 'hezi', '', '1998-09-02 03:00:04'),
(57, 'Mortimer', 'Bins', 'dickens.reilly@example.org', '618-593-2733x6', 'a9d34239ebdc', 2, 'jdep', '', '2012-09-11 08:09:31'),
(58, 'Julio', 'Becker', 'jett45@example.com', '418.490.4709', '9364ddfac71c', 4, 'zzni', '', '1989-11-18 22:52:20'),
(59, 'Monserrat', 'Rempel', 'carroll.emma@example.net', '1-916-681-2085', 'a72f7f1f0b6c', 5, 'uxey', '', '1987-03-31 20:49:30'),
(60, 'Jean', 'Satterfield', 'marcelina.stehr@example.com', '589-692-5083', 'bde4fca74e58', 5, 'vfkh', '', '1976-05-10 17:00:33'),
(61, 'Nico', 'Grant', 'magnus52@example.net', '(294)605-7996x', '66249e77a4ef', 2, 'oxep', '', '2000-01-22 10:05:49'),
(62, 'Reuben', 'Rodriguez', 'fritsch.tina@example.com', '(990)649-0673', '08b669bc4305', 1, 'ftgo', '', '2001-03-11 17:26:16'),
(63, 'Lucius', 'Lemke', 'hmuller@example.net', '037.455.7794x0', '58793659bcf4', 4, 'nojt', '', '1974-01-20 23:55:54'),
(64, 'Fausto', 'Bauch', 'genevieve.yundt@example.net', '185-010-0250', '44806e631039', 3, 'lhfl', '', '1999-02-20 08:31:37'),
(65, 'Jeramy', 'Fay', 'madaline04@example.org', '615-946-3273x5', '7cd94601c93a', 8, 'uzqn', '', '1994-03-01 18:17:59'),
(66, 'Darrick', 'Reilly', 'mcclure.ahmad@example.org', '+99(2)49027505', '3dc44f73816a', 4, 'kjfp', '', '1979-04-20 11:08:49'),
(67, 'Hank', 'Kub', 'meta03@example.com', '060-814-6692x7', 'c3ff4b0e734f', 8, 'kcng', '', '2017-01-19 09:17:38'),
(68, 'Muhammad', 'Kuvalis', 'teresa16@example.org', '192-609-7230', '42007d518083', 3, 'dzym', '', '1999-10-23 04:22:38'),
(69, 'Malcolm', 'Schultz', 'senger.micah@example.org', '08429660517', '9b9f3e1a8a05', 1, 'qwsz', '', '1986-02-10 14:00:38'),
(70, 'Carleton', 'Terry', 'wolff.eleanora@example.org', '06876484649', '4ed024f47a96', 6, 'yxgl', '', '1985-04-15 17:51:35'),
(71, 'Zackery', 'Macejkovic', 'abner12@example.org', '915.553.8392x6', '94c8ef94ed2c', 7, 'mtwl', '', '1975-11-29 23:50:55'),
(72, 'Jillian', 'Brakus', 'justus04@example.net', '02031343281', '1897960c490f', 5, 'kheg', '', '2017-03-29 01:56:53'),
(73, 'Marcos', 'Dooley', 'michael13@example.org', '095-973-0587x8', 'aa945b065920', 5, 'rufj', '', '2017-03-03 00:18:51'),
(74, 'Roberto', 'Pouros', 'huel.unique@example.net', '583.424.9632x7', '0d54b1b10776', 2, 'pgcs', '', '2007-12-03 09:42:59'),
(75, 'Adam', 'Hackett', 'effertz.laurie@example.net', '538-226-5679', '575ebcb39d44', 5, 'nnsc', '', '1998-01-25 09:44:35'),
(76, 'Cristian', 'Hintz', 'beatty.florence@example.com', '511.954.9862', '64cb82e21a48', 2, 'hhhy', '', '2017-04-02 09:18:12'),
(77, 'Delmer', 'Halvorson', 'eula28@example.net', '1-853-730-8139', 'a38affe7c009', 2, 'hznw', '', '1970-07-08 23:28:18'),
(78, 'Hillard', 'Okuneva', 'goldner.linda@example.org', '227-208-5367', '8b3fc6a0f2c8', 5, 'jqkq', '', '1985-03-22 18:27:01'),
(79, 'Brycen', 'Green', 'deckow.kamren@example.net', '947-832-0429x7', '7492757bb69b', 2, 'bbff', '', '2020-04-05 18:54:57'),
(80, 'Matteo', 'Yundt', 'bauch.carlee@example.net', '426-783-8534', '9e2ce8a90acd', 7, 'rqri', '', '1990-05-05 02:03:17'),
(81, 'Royal', 'Boyle', 'tyshawn.bernier@example.net', '07414074060', '59ef5e707d04', 9, 'kvzj', '', '1980-05-07 19:44:27'),
(82, 'Furman', 'Bernier', 'paul00@example.net', '1-294-122-6310', '75533f1c3a3b', 7, 'lrmz', '', '1971-09-18 08:26:56'),
(83, 'Matteo', 'Collins', 'lance.jaskolski@example.org', '181-213-9131x6', '19203ac4a008', 5, 'hsaa', '', '1987-03-03 05:02:02'),
(84, 'Dante', 'Grady', 'abernathy.bettie@example.org', '492.295.3086x0', 'baae06423785', 1, 'ufml', '', '2009-09-27 04:23:00'),
(85, 'Bryce', 'Hammes', 'lrath@example.org', '451.162.3994', 'a79b4a6cb9de', 5, 'dvuk', '', '1989-04-21 02:44:40'),
(86, 'Ralph', 'Hills', 'lia76@example.org', '226.498.5716x2', 'c135a227eaa1', 5, 'skkm', '', '1976-12-27 14:58:30'),
(87, 'Ward', 'Vandervort', 'charlotte.kuhlman@example.com', '(360)030-8514x', 'ab084aab3b67', 4, 'oawh', '', '1979-11-01 14:39:57'),
(88, 'Rylan', 'Reinger', 'theresia52@example.com', '+48(1)42008347', '907f125f4546', 2, 'zwde', '', '2016-06-05 13:54:34'),
(89, 'Shawn', 'Moore', 'logan01@example.net', '259-989-6439', 'd72ad150ef31', 8, 'pagy', '', '1996-04-07 06:56:51'),
(90, 'Vidal', 'Wunsch', 'eusebio23@example.net', '1-317-190-0629', '698bda00fe1e', 4, 'ikgr', '', '1989-11-18 21:14:15'),
(91, 'Ignatius', 'Rath', 'pberge@example.com', '(381)656-4348x', '6a8e611441f5', 4, 'phcc', '', '2008-06-16 06:31:31'),
(92, 'Arno', 'Reichel', 'lryan@example.com', '1-931-647-2090', 'fa8c1eea6d96', 4, 'nozy', '', '2014-02-07 17:04:13'),
(93, 'Cyril', 'Wilkinson', 'tking@example.com', '453.330.2534', 'e42281f5f781', 1, 'polk', '', '1991-11-21 22:02:05'),
(94, 'Kenny', 'Fisher', 'cathryn.king@example.org', '148-917-2855x5', 'b73ae301a20a', 8, 'capg', '', '2002-03-13 10:30:31'),
(95, 'Harvey', 'Beier', 'jordy34@example.org', '523-000-0984x0', 'a5d6f56dff19', 2, 'hkph', '', '1983-07-23 14:26:37'),
(96, 'Junius', 'Walker', 'rogers.schroeder@example.com', '139.077.3124x1', 'a592e0efddb0', 1, 'mxhh', '', '2012-04-09 11:59:32'),
(97, 'Russel', 'Dicki', 'jenkins.naomi@example.org', '776-182-2880x0', 'ad3ed7aada0e', 7, 'lxyv', '', '1990-07-13 05:36:14'),
(98, 'Jordi', 'Stehr', 'clay.koss@example.com', '406.203.9168x1', '0df92d4ecd85', 2, 'urne', '', '1971-04-20 01:21:48'),
(99, 'Cole', 'Carroll', 'jaunita.hodkiewicz@example.net', '872.262.3495x5', '3f5b97b070e2', 4, 'qqax', '', '2017-02-06 04:55:55'),
(100, 'Giles', 'Brekke', 'christiansen.ilene@example.net', '272-296-0496x4', 'ac40f98ee5bc', 6, 'ancq', '', '2005-05-28 20:42:36'),
(101, 'mo', 'salah', 'm@S.com', '123465', '1234567896', 2, NULL, '', '2020-12-13 11:38:10'),
(102, 'g', 'hh', 'G@1.com', '87965412', '897645321', 2, NULL, '', '2020-12-13 11:40:52'),
(103, 'm', 'm', 'd@2.com', '465321', '46513352', 2, NULL, '', '2020-12-13 11:43:45'),
(104, 'abbas', 'mohamed', 'gala564l.husseny@gmail.com', '13245678', '57d8cfee63f6', 2, '461532', '', '2020-12-14 08:49:26'),
(106, 'gg', 'h', 'g@f.com', '15521', '4ea872dfd7ee', 2, '75610', '', '2020-12-14 09:13:23'),
(108, 'GS', 'D', 'GA@D.COM', '5166531', '93f271ad5efd', 2, '78830', '', '2020-12-14 11:35:40'),
(109, 'G', '', '', '', 'da39a3ee5e6b', 2, '89206', '', '2020-12-14 11:37:47'),
(110, 'G', '54', 'G@K.COM', '161653', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '20916', '', '2020-12-14 11:38:11'),
(122, 'galalm', 'hussenyk', 'galal.husseny@gmail.com', '7984522', 'c229b68e1c3ffd9874838b5cb5354a0ee1367ddc', 1, '93692', 'uploads/users/1.png', '2020-12-15 07:40:44'),
(123, 'mohamed46512532', 'abbas', 'mohamedabbasragab@gmail.com', '123456789', '9860783bfb510cbb2bf34471ec0b84a7ea587695', 1, '24009', 'uploads/users/1608037576.jpg', '2020-12-15 08:41:27'),
(124, 'mohamed', 'samir', 'hookshamosiba201555@gmail.com', '89651265', '4ea872dfd7eefbde0036da7f0780826353dc7477', 1, '14048', 'NULL', '2020-12-17 07:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `users_id` int(11) UNSIGNED NOT NULL,
  `products_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `rating_products`
--
DROP TABLE IF EXISTS `rating_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rating_products`  AS  select `products`.`id` AS `product_id`,`products`.`name` AS `name`,`products`.`price` AS `price`,`products`.`image` AS `image`,`x`.`rating_count` AS `rating_count`,`x`.`avg_rating` AS `avg_rating` from (`products` join (select `rating`.`products_id` AS `products_id`,count(`rating`.`value`) AS `rating_count`,round(avg(`rating`.`value`),0) AS `avg_rating` from `rating` group by `rating`.`products_id`) `x` on(`products`.`id` = `x`.`products_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_users_id_id` (`users_id`),
  ADD KEY `address_cities_id_id` (`cities_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`users_id`,`products_id`),
  ADD KEY `cart_products_id_id` (`products_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivary`
--
ALTER TABLE `delivary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `offered`
--
ALTER TABLE `offered`
  ADD PRIMARY KEY (`products_id`,`offers_id`),
  ADD KEY `offered_offers_id_id` (`offers_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_users_id_id` (`users_id`),
  ADD KEY `orders_delivary_id_id` (`delivary_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`orders_id`,`products_id`),
  ADD KEY `products_product_id_FK` (`products_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sub_cat_id_id` (`sub_cat_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_users_id_id` (`users_id`),
  ADD KEY `rating_products_id_id` (`products_id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specs_products_id_id` (`products_id`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_cat_categories_id_id` (`catagories_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`users_id`,`products_id`),
  ADD KEY `wish_list_products_id_id` (`products_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivary`
--
ALTER TABLE `delivary`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_cities_id_id` FOREIGN KEY (`cities_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `address_users_id_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_products_id_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_users_id_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `offered`
--
ALTER TABLE `offered`
  ADD CONSTRAINT `offered_offers_id_id` FOREIGN KEY (`offers_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offered_products_id_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivary_id_id` FOREIGN KEY (`delivary_id`) REFERENCES `delivary` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_users_id_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_orders_id_id` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_product_id_FK` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_sub_cat_id_id` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_cat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_products_id_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_users_id_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specs`
--
ALTER TABLE `specs`
  ADD CONSTRAINT `specs_products_id_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD CONSTRAINT `sub_cat_categories_id_id` FOREIGN KEY (`catagories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD CONSTRAINT `wish_list_products_id_id` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wish_list_users_id_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
