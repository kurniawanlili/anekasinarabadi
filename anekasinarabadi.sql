-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2019 at 03:19 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anekasinarabadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`) VALUES
(9, 'Bahan Vynil', 'bahan yg tidak mudah rusak dan lembab dan bahan keawetannya bisa diandalkan dan cocok digunakan di ruang duduk, kamar tidur dan ruang kerja', '2019-01-17 10:48:55'),
(10, 'Bahan heavy duty paper', 'Jenis bahan walpaper ini memiliki sifat kuat, karakteristik bahan ini tebal dan memiliki lapisan linen dan terbuat dari campuran bubur kayu dan katun', '2019-05-22 05:54:58'),
(11, 'Bahan  Natural Fiber', 'yang terbuat dari serat alam seperti daun, bambu, kelapa bahan ini merupakan solusi praktis bagi siapapun yg ingin menghadirkan sentuhN natural dalam ruangan', '2019-05-22 06:06:33'),
(12, 'Bahan Foils', 'bahan yg terbuat dari timah yg dipakai pada permukaan walpaper tetapi bahannya sedikit tipis dan gampang robek dan disarankan menempel pada dinding permukaan halus', '2019-05-22 06:07:10'),
(14, 'new walpaper', 'unguu', '2019-05-23 12:38:56'),
(15, 'walpaper new', 'unggu', '2019-05-23 13:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('msf1pf2ghn8b7fanskpnm8g5iocirb22', '::1', 1558608049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383630383034393b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538353239323539223b),
('iv5k2a4k47ck3m1vh7n9obuoemgfe46o', '::1', 1558611411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631313431313b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538353239323539223b),
('d0b8llk41gcspspjuj95dhmptra0o55s', '::1', 1558611895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631313839353b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b),
('hg4lha08vcrtki9niq43c8n7gsnp15a9', '::1', 1558612237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631323233373b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b),
('47rc1lgaaqnsgurnoccu7lthbmuo3utm', '::1', 1558612540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631323534303b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3430303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b613a383a7b733a323a226964223b733a323a223232223b733a333a22717479223b643a313b733a353a227072696365223b643a3430303030303b733a343a226e616d65223b733a32393a225374696b65722057616c6c70617065722044696e64696e672050696e6b223b733a333a22696d67223b733a33333a225374696b65725f57616c6c70617065725f44696e64696e675f50696e6b2e6a7067223b733a353a2273746f636b223b733a313a2233223b733a353a22726f776964223b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b733a383a22737562746f74616c223b643a3430303030303b7d7d),
('v8klul41hr0rn2t4bduvbhsa3q9t8474', '::1', 1558613067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631333036373b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3430303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b613a383a7b733a323a226964223b733a323a223232223b733a333a22717479223b643a313b733a353a227072696365223b643a3430303030303b733a343a226e616d65223b733a32393a225374696b65722057616c6c70617065722044696e64696e672050696e6b223b733a333a22696d67223b733a33333a225374696b65725f57616c6c70617065725f44696e64696e675f50696e6b2e6a7067223b733a353a2273746f636b223b733a313a2233223b733a353a22726f776964223b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b733a383a22737562746f74616c223b643a3430303030303b7d7d),
('1e5rr5gte5jctleug3m9hj4glumtjh0m', '::1', 1558613483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631333438333b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3430303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b613a383a7b733a323a226964223b733a323a223232223b733a333a22717479223b643a313b733a353a227072696365223b643a3430303030303b733a343a226e616d65223b733a32393a225374696b65722057616c6c70617065722044696e64696e672050696e6b223b733a333a22696d67223b733a33333a225374696b65725f57616c6c70617065725f44696e64696e675f50696e6b2e6a7067223b733a353a2273746f636b223b733a313a2233223b733a353a22726f776964223b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b733a383a22737562746f74616c223b643a3430303030303b7d7d),
('rco3fqk543va7a1qs661vk580fjqq4tr', '::1', 1558613790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631333739303b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3430303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b613a383a7b733a323a226964223b733a323a223232223b733a333a22717479223b643a313b733a353a227072696365223b643a3430303030303b733a343a226e616d65223b733a32393a225374696b65722057616c6c70617065722044696e64696e672050696e6b223b733a333a22696d67223b733a33333a225374696b65725f57616c6c70617065725f44696e64696e675f50696e6b2e6a7067223b733a353a2273746f636b223b733a313a2233223b733a353a22726f776964223b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b733a383a22737562746f74616c223b643a3430303030303b7d7d),
('fadnr8c7t4vl52e8aeij5nu6m2r2k5pt', '::1', 1558614869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631343836393b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b6572727c733a303a22223b5f5f63695f766172737c613a313a7b733a333a22657272223b733a333a226e6577223b7d),
('vbkh6d8dvaldfdmae5nu5b6eo2sir5u9', '::1', 1558615220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631353232303b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b),
('e92r9vbm9onh9vp8mbbf39e03shtjqii', '::1', 1558615527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631353532373b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3830303030303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b613a383a7b733a323a226964223b733a323a223232223b733a333a22717479223b643a323b733a353a227072696365223b643a3430303030303b733a343a226e616d65223b733a32393a225374696b65722057616c6c70617065722044696e64696e672050696e6b223b733a333a22696d67223b733a33333a225374696b65725f57616c6c70617065725f44696e64696e675f50696e6b2e6a7067223b733a353a2273746f636b223b733a313a2233223b733a353a22726f776964223b733a33323a226236643736376432663865643564323161343462306535383836363830636239223b733a383a22737562746f74616c223b643a3830303030303b7d7d6572727c733a303a22223b5f5f63695f766172737c613a313a7b733a333a22657272223b733a333a226e6577223b7d),
('apuno4i634vh34un4ttk52r8tjt95t11', '::1', 1558615831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631353833313b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b),
('3igvfhcgrnlm20ih7g35imk8hc5eucno', '::1', 1558616581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631363538313b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b),
('4oqpvs1jfjp5o9s1b39p93hgimjfkb2g', '::1', 1558616930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631363933303b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b),
('g1s4jmgc52apbj49o1hmc2kumtigsl5q', '::1', 1558617211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535383631363933303b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353538363037353538223b6572727c733a303a22223b5f5f63695f766172737c613a313a7b733a333a22657272223b733a333a226e6577223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` int(7) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `address`, `city`, `province`, `country`, `zip`, `users_id`) VALUES
(7, 'lili kurniawan', 'lilikurniawan01@gmail.com', '85814908897', 'indonesia', 'bogor', 'jawa barat', 'Indonesia', 16360, 0),
(8, 'lili kurniawan', '12170644@bsi.ac.id', '85814908897', 'indonesia', 'bogor', 'jawa barat', 'Indonesia', 16360, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'purchase', 'purchase group'),
(4, 'sale', 'sale group');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `sku` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `retail_price` bigint(20) NOT NULL,
  `wholesale_price` bigint(20) NOT NULL,
  `buy_price` bigint(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sku`, `name`, `brand`, `description`, `retail_price`, `wholesale_price`, `buy_price`, `stock`, `active`, `img`, `created_at`, `category_id`, `supplier_id`) VALUES
(22, 'R-11111', 'Stiker Wallpaper Dinding Pink', 'Aneka Sinar Abadi', '1 m MINI WOK', 400000, 300000, 250000, 3, 1, 'Stiker_Wallpaper_Dinding_Pink.jpg', '2019-01-17 10:51:51', 9, 6),
(23, 'R-111112', 'Stiker Wallpaper Dinding white', 'Aneka Sinar Abadi', '1 m DUTCH OVEN WHITE', 300000, 200000, 166000, 3, 1, 'Stiker_Wallpaper_Dinding_Purple.png', '2019-01-17 10:53:19', 9, 6),
(24, 'R-111113', 'Stiker Wallpaper Dinding Brown', 'Aneka Sinar Abadi', '1 m SUPER BROWN', 400000, 300000, 250000, 5, 1, 'Stiker_Wallpaper_Dinding_Brown.jpg', '2019-01-17 10:55:01', 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `author`, `email`, `content`, `active`, `created_at`, `product_id`) VALUES
(1, 'lili kurniawan', 'lilikurniawan03@yahoo.com', 'bagus', 0, '2019-05-21 23:00:53', 22);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `order_no` varchar(20) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `recived` tinyint(1) NOT NULL DEFAULT '0',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `accepted_date` datetime DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `recived_date` datetime DEFAULT NULL,
  `notes` text,
  `payment_method` int(11) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `order_no`, `accepted`, `shipped`, `paid`, `recived`, `order_date`, `accepted_date`, `shipped_date`, `paid_date`, `recived_date`, `notes`, `payment_method`, `supplier_id`) VALUES
(11, 'PO-000020', 1, 1, 1, 1, '2019-05-23 18:57:46', '2019-05-21 00:00:00', '2019-05-23 00:00:00', '2019-05-22 00:00:00', '2019-05-27 00:00:00', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`id`, `product_qty`, `product_price`, `product_id`, `purchase_id`) VALUES
(14, 1, 250000, 22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `order_no` varchar(20) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `recived` tinyint(1) NOT NULL DEFAULT '0',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `accepted_date` datetime DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `recived_date` datetime DEFAULT NULL,
  `notes` text,
  `payment_method` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `order_no`, `accepted`, `shipped`, `paid`, `recived`, `order_date`, `accepted_date`, `shipped_date`, `paid_date`, `recived_date`, `notes`, `payment_method`, `customer_id`) VALUES
(21, 'SO-000021', 0, 0, 0, 0, '2019-05-23 13:07:24', NULL, NULL, NULL, NULL, 'semoga pengirimanya cepat', 1, 8),
(22, 'SO-000022', 0, 0, 0, 0, '2019-05-23 13:12:15', NULL, NULL, NULL, NULL, '', 1, 8),
(23, 'SO-000023', 0, 0, 0, 0, '2019-05-23 19:45:27', NULL, NULL, NULL, NULL, 'packing yang rapih', 1, 7),
(24, 'SO-000024', 0, 0, 0, 0, '2019-05-23 20:03:50', NULL, NULL, NULL, NULL, 'capetan', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `product_qty`, `product_price`, `product_id`, `sale_id`) VALUES
(18, 1, 400000, 22, 21),
(19, 1, 400000, 22, 22),
(20, 2, 400000, 22, 23),
(21, 1, 400000, 22, 24);

-- --------------------------------------------------------

--
-- Table structure for table `sale_payment_conf`
--

CREATE TABLE `sale_payment_conf` (
  `id` int(11) NOT NULL,
  `merchant_bank` varchar(255) NOT NULL,
  `customer_bank` varchar(255) NOT NULL,
  `customer_bank_account` varchar(255) NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  `payment_date` datetime NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `email`, `description`, `created_at`) VALUES
(6, 'PT Aneka Sinar Abadi Supplier', 'anekasinaradbadi@gmail.com', 'Jln kh hayim ashari km 5 jo 59 cipondoh tangerang. Dengan nama toko Aneka Sinar Abadi.', '2019-05-25 10:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1558611441, 1, 'Super', 'Admin', 'ADMIN', '0'),
(2, '127.0.0.1', 'purchase', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'purchase@email.com', '', NULL, NULL, NULL, 1268889823, 1547723011, 1, 'Purchase', 'Employee', 'PRISM', '0'),
(3, '127.0.0.1', 'sales', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'sales@email.com', '', NULL, NULL, NULL, 1268889823, 1547723476, 1, 'Sales', 'Employee', 'PRISM', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_no` (`order_no`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `purchase_id` (`purchase_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_no` (`order_no`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `sale_payment_conf`
--
ALTER TABLE `sale_payment_conf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sale_payment_conf`
--
ALTER TABLE `sale_payment_conf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `product_review_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `fk_purchase_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD CONSTRAINT `fk_purchase_detail_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_purchase_detail_purchase1` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `fk_sale_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD CONSTRAINT `fk_sale_detail_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sale_detail_sale1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_payment_conf`
--
ALTER TABLE `sale_payment_conf`
  ADD CONSTRAINT `fk_sale_payment_conf_sale1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
