-- Adminer 4.8.1 MySQL 8.0.31 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `category` (`id`, `parent_id`, `title`, `description`, `keywords`) VALUES
(1,	0,	'Branded Foods',	'Branded Foods description',	'Branded Foods keywords'),
(2,	0,	'Households',	'Households description',	'Households keywords'),
(3,	0,	'Veggies & Fruits',	'Veggies & Fruits description',	'Veggies & Fruits  keywords'),
(4,	3,	'Vegetables',	'Vegetables description',	'Vegetables keywords'),
(5,	3,	'Fruits',	'Fruits description',	'Fruits keywords'),
(6,	0,	'Kitchen',	NULL,	NULL),
(7,	0,	'Short Codes',	NULL,	NULL),
(8,	0,	'Beverages',	NULL,	NULL),
(9,	8,	'Soft Drinks',	NULL,	NULL),
(10,	8,	'Juices',	NULL,	NULL),
(11,	0,	'Pet Food',	NULL,	NULL),
(12,	0,	'Frozen Foods',	NULL,	NULL),
(13,	12,	'Frozen Snacks',	NULL,	NULL),
(14,	12,	'Frozen Nonveg',	NULL,	NULL),
(15,	0,	'Bread & Bakery',	NULL,	NULL);

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `qty` tinyint NOT NULL,
  `total` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `title`, `price`, `qty`, `total`) VALUES
(1,	1,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(2,	1,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(3,	1,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(4,	2,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(5,	2,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(6,	2,	11,	'coco cola zero can (330 ml)',	3.00,	2,	6.00),
(7,	3,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(8,	3,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(9,	3,	11,	'coco cola zero can (330 ml)',	3.00,	2,	6.00),
(10,	4,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(11,	4,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(12,	4,	11,	'coco cola zero can (330 ml)',	3.00,	2,	6.00),
(13,	5,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(14,	5,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(15,	5,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(16,	6,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(17,	6,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(18,	6,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(19,	7,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(20,	7,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(21,	7,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(22,	8,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(23,	8,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(24,	8,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(25,	8,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(26,	9,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(27,	9,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(28,	9,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(29,	9,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(30,	10,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(31,	10,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(32,	10,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(33,	10,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(34,	11,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(35,	11,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(36,	11,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(37,	11,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(38,	12,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(39,	12,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(40,	12,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(41,	12,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(42,	13,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(43,	13,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(44,	13,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(45,	13,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(46,	14,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(47,	14,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(48,	14,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(49,	14,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(50,	15,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(51,	15,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(52,	15,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(53,	15,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(54,	16,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(55,	16,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(56,	16,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(57,	16,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(58,	17,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(59,	17,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(60,	17,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(61,	17,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(62,	18,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(63,	18,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(64,	18,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(65,	18,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(66,	19,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00),
(67,	19,	2,	'chings noodles (75 gm)',	5.00,	1,	5.00),
(68,	19,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(69,	19,	4,	'premium bake rusk (300 gm)',	5.00,	1,	5.00),
(70,	20,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(71,	21,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(72,	22,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(73,	23,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(74,	24,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(75,	25,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(76,	26,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(77,	27,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(78,	28,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(79,	29,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(80,	30,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(81,	31,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(83,	33,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(84,	34,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(85,	35,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(86,	36,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(87,	37,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(88,	38,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(89,	39,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(90,	40,	8,	'fresh broccoli (500 gm)',	4.00,	1,	4.00),
(91,	40,	3,	'lahsun sev (150 gm)',	3.00,	1,	3.00),
(92,	40,	6,	'fresh mango dasheri (1 kg)',	5.00,	1,	5.00),
(93,	40,	11,	'coco cola zero can (330 ml)',	3.00,	2,	6.00),
(94,	40,	1,	'knorr instant soup (100 gm)',	3.00,	1,	3.00);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` tinyint unsigned NOT NULL,
  `total` decimal(6,2) NOT NULL DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `qty`, `total`, `status`, `name`, `email`, `phone`, `address`, `note`) VALUES
(1,	'2023-03-11 19:58:22',	'2023-03-11 19:58:22',	3,	11.00,	0,	'Alex',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'Hello'),
(2,	'2023-03-12 16:18:09',	'2023-03-12 16:18:09',	4,	14.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'Самовывоз'),
(3,	'2023-03-12 16:20:21',	'2023-03-12 16:20:21',	4,	14.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'Самовывоз'),
(4,	'2023-03-12 16:22:29',	'2023-03-12 16:22:29',	4,	14.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'Самовывоз'),
(5,	'2023-03-12 16:35:01',	'2023-03-12 16:35:01',	3,	11.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 2'),
(6,	'2023-03-12 16:40:18',	'2023-03-12 16:40:18',	3,	11.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 2'),
(7,	'2023-03-12 16:42:38',	'2023-03-12 16:42:38',	3,	11.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 2'),
(8,	'2023-03-12 16:45:56',	'2023-03-12 16:45:56',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(9,	'2023-03-12 16:48:02',	'2023-03-12 16:48:02',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(10,	'2023-03-12 16:48:17',	'2023-03-12 16:48:17',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(11,	'2023-03-12 16:52:37',	'2023-03-12 16:52:37',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(12,	'2023-03-12 16:53:05',	'2023-03-12 16:53:05',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(13,	'2023-03-12 16:54:24',	'2023-03-12 16:54:24',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(14,	'2023-03-12 16:55:38',	'2023-03-12 16:55:38',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(15,	'2023-03-12 16:57:12',	'2023-03-12 16:57:12',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(16,	'2023-03-12 16:58:32',	'2023-03-12 16:58:32',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(17,	'2023-03-12 16:58:57',	'2023-03-12 16:58:57',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(18,	'2023-03-12 17:00:21',	'2023-03-12 17:00:21',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(19,	'2023-03-12 17:03:36',	'2023-03-12 17:03:36',	4,	16.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 3'),
(20,	'2023-03-12 17:06:09',	'2023-03-12 17:06:09',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test 4'),
(21,	'2023-03-12 17:07:56',	'2023-03-12 17:07:56',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(22,	'2023-03-12 17:08:59',	'2023-03-12 17:08:59',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(23,	'2023-03-12 17:09:55',	'2023-03-12 17:09:55',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(24,	'2023-03-12 17:11:04',	'2023-03-12 17:11:04',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(25,	'2023-03-12 17:15:39',	'2023-03-12 17:15:39',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(26,	'2023-03-12 17:17:23',	'2023-03-12 17:17:23',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(27,	'2023-03-12 17:17:47',	'2023-03-12 17:17:47',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(28,	'2023-03-12 17:18:33',	'2023-03-12 17:18:33',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(29,	'2023-03-12 17:18:59',	'2023-03-14 20:53:44',	1,	5.00,	1,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(30,	'2023-03-12 17:37:35',	'2023-03-14 14:21:16',	1,	5.00,	1,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(31,	'2023-03-12 17:39:12',	'2023-03-14 14:03:10',	1,	5.00,	1,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'5'),
(33,	'2023-03-12 17:40:14',	'2023-03-12 17:40:14',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test'),
(34,	'2023-03-12 17:41:58',	'2023-03-12 17:41:58',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test'),
(35,	'2023-03-12 17:42:18',	'2023-03-12 17:42:18',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test'),
(36,	'2023-03-12 17:58:04',	'2023-03-12 17:58:04',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test'),
(37,	'2023-03-12 17:59:38',	'2023-03-12 17:59:38',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test'),
(38,	'2023-03-12 18:05:32',	'2023-03-12 18:05:32',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test'),
(39,	'2023-03-12 18:05:43',	'2023-03-12 18:05:43',	1,	5.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'test'),
(40,	'2023-03-12 18:15:26',	'2023-03-12 18:15:26',	6,	21.00,	0,	'Alexey',	'lexa.brus97@gmail.com',	'89041737471',	'Екатеринбург',	'complete test');

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `old_price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `is_offer` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `product` (`id`, `category_id`, `title`, `content`, `price`, `old_price`, `description`, `keywords`, `img`, `is_offer`) VALUES
(1,	1,	'knorr instant soup (100 gm)',	'<p><img alt=\"\" src=\"/upload/files/images.jpeg\" style=\"float:right; height:150px; width:200px\" />Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n',	3.00,	0.00,	'',	'',	'products/2023-03-14/6410975925cdd_images.jpeg',	1),
(2,	1,	'chings noodles (75 gm)',	'<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n',	5.00,	8.00,	'',	'',	'products/2023-03-14/641097d4d177d_Снимок экрана от 2023-02-24 15-28-17.png',	0),
(3,	1,	'lahsun sev (150 gm)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	3.00,	5.00,	NULL,	NULL,	'7.png',	1),
(4,	1,	'premium bake rusk (300 gm)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	5.00,	7.00,	NULL,	NULL,	'8.png',	0),
(5,	1,	'fresh spinach (palak)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	2.00,	3.00,	NULL,	NULL,	'9.png',	0),
(6,	5,	'fresh mango dasheri (1 kg)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	5.00,	8.00,	NULL,	NULL,	'10.png',	1),
(7,	5,	'fresh apple red (1 kg)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	6.00,	8.00,	NULL,	NULL,	'11.png',	0),
(8,	4,	'fresh broccoli (500 gm)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	4.00,	6.00,	NULL,	NULL,	'12.png',	0),
(9,	10,	'mixed fruit juice (1 ltr)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	3.00,	0.00,	NULL,	NULL,	'13.png',	0),
(10,	10,	'prune juice - sunsweet (1 ltr)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	4.00,	0.00,	NULL,	NULL,	'14.png',	0),
(11,	9,	'coco cola zero can (330 ml)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	3.00,	0.00,	NULL,	NULL,	'15.png',	1),
(12,	9,	'sprite bottle (2 ltr)',	'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',	3.00,	0.00,	NULL,	NULL,	'16.png',	1),
(13,	1,	'test',	'<p>teest</p>\r\n',	12.00,	11.00,	'test test',	'',	'products/2023-03-14/6410933a83ed7_images.jpeg',	1);

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1,	'admin',	'$2y$13$fY5txZXJm4DbWRPcJmKAD.mwwuc4LW49OtMdjsOEtA6yjfccuhpW6',	NULL);

-- 2023-03-16 01:22:37
