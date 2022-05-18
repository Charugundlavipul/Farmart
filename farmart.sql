-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2021 at 04:55 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'amogh_admin', 'amogh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT 1,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `crop_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `crop_name` varchar(255) NOT NULL,
  `crop_price` double(10,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `crop_quantity` decimal(10,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `remaining_quantity` decimal(10,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `crop_image` varchar(255) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`crop_id`, `farmer_id`, `crop_name`, `crop_price`, `crop_quantity`, `remaining_quantity`, `crop_image`, `create_date`) VALUES
(25, 2, 'Red Chillies', 200.00, '123.00', '123.00', 'images/qtfaD2EK/red_chillies.jpg', '2021-11-25'),
(27, 2, 'Sunflower Seeds', 250.00, '131.00', '131.00', 'images/J9ekpFXZ/sunflower_seeds.jpg', '2021-11-26'),
(28, 3, 'Apples', 40.00, '30.00', '30.00', 'images/BLmOjeKo/apples.jpg', '2021-11-26'),
(30, 3, 'Corn', 30.00, '30.00', '25.00', 'images/CizEum4k/corn.jpg', '2021-11-27'),
(31, 7, 'Cucumber', 20.00, '30.00', '25.00', 'images/jQnbmwBU/cucumber.jpg', '2021-11-28'),
(32, 7, 'Rice', 50.00, '50.00', '50.00', 'images/5D7ye1RS/rice.jpg', '2021-11-28'),
(33, 7, 'Green Peppers', 80.00, '40.00', '40.00', 'images/6hFA71tv/green_peppers.jpg', '2021-11-28'),
(34, 7, 'Cauliflower', 40.00, '30.00', '30.00', 'images/agAG6FvM/cauliflower.jpg', '2021-11-28'),
(35, 6, 'Cucumber', 50.00, '60.00', '60.00', 'images/xh9gGmS5/cucumber.jpg', '2021-11-28'),
(36, 6, 'Pear', 250.00, '30.00', '30.00', 'images/ODFOJAaZ/pear.jpg', '2021-11-28'),
(37, 6, 'Bananas', 30.00, '60.00', '60.00', 'images/IOK6sSA0/bananas.jpg', '2021-11-28'),
(38, 6, 'Sunflower Seeds', 300.00, '40.00', '40.00', 'images/MGXQvgiK/sunflower_seeds.jpg', '2021-11-28'),
(39, 6, 'Apples', 100.00, '60.00', '60.00', 'images/Rxh83mHx/apples.jpg', '2021-11-28'),
(40, 6, 'Red Chillies', 250.00, '30.00', '30.00', 'images/ocDs4Pfh/red_chillies.jpg', '2021-11-28'),
(41, 7, 'Red Chillies', 230.00, '50.00', '50.00', 'images/SBZqb45E/red_chillies.jpg', '2021-11-28'),
(42, 7, 'Bananas', 25.00, '30.00', '30.00', 'images/gG8d3X1p/bananas.jpg', '2021-11-28'),
(43, 2, 'Green Peppers', 100.00, '80.00', '80.00', 'images/QZUog6mU/green_peppers.jpg', '2021-11-28'),
(44, 2, 'Cabbage', 20.00, '50.00', '50.00', 'images/j1YkA3I8/cabbage.jpg', '2021-11-28'),
(45, 2, 'Dates', 210.00, '50.00', '50.00', 'images/Str0Eftm/dates.jpg', '2021-11-28'),
(46, 4, 'Carrots', 75.00, '70.00', '70.00', 'images/Or1NWxcv/carrots.jpg', '2021-11-28'),
(47, 4, 'Rice', 55.00, '70.00', '70.00', 'images/NOCS8qsN/rice.jpg', '2021-11-28'),
(48, 4, 'Sesame Seeds', 120.00, '60.00', '60.00', 'images/t1p4jOpk/sesame.jpg', '2021-11-28'),
(49, 4, 'Potatoes', 25.00, '70.00', '70.00', 'images/HRl5Z0UE/potatoes.jpg', '2021-11-28'),
(50, 4, 'Onions', 45.00, '80.00', '80.00', 'images/yx3xwBRs/onions.jpg', '2021-11-28'),
(51, 3, 'Onions', 40.00, '60.00', '56.00', 'images/0CJGC6A0/onions.jpg', '2021-11-28'),
(52, 3, 'Peanuts', 70.00, '100.00', '100.00', 'images/2BaDkLsm/peanuts.jpg', '2021-11-28'),
(53, 3, 'Carrots', 70.00, '40.00', '40.00', 'images/Nq5L5SFe/carrots.jpg', '2021-11-28'),
(54, 9, 'Corn', 90.00, '70.00', '70.00', 'images/FDxarx8m/corn.jpg', '2021-11-28'),
(55, 9, 'Cauliflower', 50.00, '60.00', '60.00', 'images/AwHfXFkz/cauliflower.jpg', '2021-11-28'),
(56, 9, 'Sesame Seeds', 110.00, '80.00', '80.00', 'images/NWnj6dfE/sesame.jpg', '2021-11-28'),
(57, 9, 'Onions', 50.00, '70.00', '70.00', 'images/hZoeBEX8/onions.jpg', '2021-11-28'),
(58, 9, 'Apples', 130.00, '45.00', '45.00', 'images/5eOqw8i9/apples.jpg', '2021-11-28'),
(59, 10, 'Dates', 200.00, '50.00', '50.00', 'images/7x4E9oy3/dates.jpg', '2021-11-28'),
(60, 10, 'Cabbage', 40.00, '50.00', '50.00', 'images/Z3xy3zQo/cabbage.jpg', '2021-11-28'),
(61, 10, 'Carrots', 50.00, '40.00', '40.00', 'images/Ubj7RGli/carrots.jpg', '2021-11-28'),
(62, 10, 'Peanuts', 90.00, '40.00', '40.00', 'images/qJ102o4y/peanuts.jpg', '2021-11-28'),
(63, 10, 'Rice', 55.00, '80.00', '80.00', 'images/Zj2MWOPH/rice.jpg', '2021-11-28'),
(64, 3, 'Cabbage', 40.00, '50.00', '45.00', 'images/xjduCKL2/cabbage.jpg', '2021-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `crop_admin`
--

CREATE TABLE `crop_admin` (
  `item_id` int(20) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_description` varchar(5000) NOT NULL,
  `variety` varchar(200) NOT NULL DEFAULT 'fruit',
  `quantity` double(10,2) NOT NULL DEFAULT 0.00,
  `item_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop_admin`
--

INSERT INTO `crop_admin` (`item_id`, `item_name`, `item_image`, `item_description`, `variety`, `quantity`, `item_rating`) VALUES
(1, 'Apples', './assets/crops/apples.jpg', 'An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today.', 'fruit', 0.00, 5),
(20, 'Bananas', './assets/crops/bananas.jpg', 'A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called \"plantains\", distinguishing them from dessert bananas. ', 'fruit', 0.00, 5),
(23, 'broccoli', './assets/crops/broccoli.jpg', 'desc', 'vegetable', 0.00, 0),
(2, 'Cabbage', './assets/crops/cabbage.jpg', 'Cabbage, comprising several cultivars of Brassica oleracea, is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads.', 'vegetable', 0.00, 5),
(3, 'Carrots', './assets/crops/carrots.jpg', 'The fiber in carrots can help keep blood sugar levels under control. And they\'re loaded with vitamin A and beta-carotene, which there\'s evidence to suggest can lower your diabetes risk. They can strengthen your bones. Carrots have calcium and vitamin K, both of which are important for bone health.', 'vegetable', 0.00, 5),
(4, 'Cauliflower', './assets/crops/cauliflower.jpg', 'Cauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the Brassicaceae family. It is an annual plant that reproduces by seed. Typically, only the head is eaten – the edible white flesh sometimes called \"curd\".', 'vegetable', 0.00, 4),
(5, 'Corn', './assets/crops/corn.jpg', 'Corn, also known as maize, is a starchy vegetable that comes as kernels on a cob, covered by a husk. Corn is one of the most popular vegetables in the U.S. that sometimes gets a bad rap because it has a lot of natural sugar and carbs. ... Natives of North and South America grew corn, which they called maize.', 'vegetable', 0.00, 5),
(6, 'Cucumber', './assets/crops/cucumber.jpg', 'Cucumber (Cucumis sativus) is a widely-cultivated creeping vine plant in the Cucurbitaceae gourd family that bears usually cylindrical fruits, which are used as vegetables. ... The cucumber originates from South Asia, but now grows on most continents, as many different types of cucumber are traded on the global market.', 'vegetable', 0.00, 4),
(7, 'Dates', './assets/crops/dates.jpg', 'A date is a stone fruit, meaning it has a single seed surrounded by an outer fleshy fruit (like peaches, mangoes, and olives). They\'re grown on date palm trees, so where you would usually invision coconuts, picture big bunches of hundreds of dates!', 'fruit', 0.00, 4),
(8, 'Green Peppers', './assets/crops/green_peppers.jpg', 'The bell pepper is the fruit of plants in the Grossum cultivar group of the species Capsicum annuum. Cultivars of the plant produce fruits in different colors, including red, yellow, orange, green, white, and purple. Bell peppers are sometimes grouped with less pungent chili varieties as \"sweet peppers\".', 'vegetable', 0.00, 5),
(19, 'Mangoes', './assets/crops/mangoes.jpg', 'A mango is an edible stone fruit produced by the tropical tree Mangifera indica which is believed to have originated from the region between northwestern Myanmar, Bangladesh, and northeastern India.', 'fruit', 0.00, 5),
(9, 'Onions', './assets/crops/onions.jpg', 'The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. The shallot is a botanical variety of the onion. Until 2010, the shallot was classified as a separate species. ', 'vegetable', 0.00, 5),
(18, 'Peanuts', './assets/crops/peanuts.jpg', 'The peanut, also known as the groundnut, goober, pindar or monkey nut, and taxonomically classified as Arachis hypogaea, is a legume crop grown mainly for its edible seeds. It is widely grown in the tropics and subtropics, being important to both small and large commercial producers.', 'vegetable', 0.00, 5),
(10, 'Pear', './assets/crops/pear.jpg', 'A pear is a mild, sweet fruit with a fibrous center. Pears are rich in essential antioxidants, plant compounds, and dietary fiber. ... As part of a balanced, nutritious diet, consuming pears could support weight loss and reduce a person\'s risk of cancer, diabetes, and heart disease.', 'fruit', 0.00, 4),
(11, 'Potatoes', './assets/crops/potatoes.jpg', 'Potatoes are a good source of fiber, which can help you lose weight by keeping you full longer. Fiber can help prevent heart disease by keeping cholesterol and blood sugar levels in check.', 'vegetable', 0.00, 4),
(12, 'Pumpkins', './assets/crops/pumpkin.jpg', 'A pumpkin is a cultivar of winter squash that is round with smooth, slightly ribbed skin, and is most often deep yellow to orange in coloration. The thick shell contains the seeds and pulp.', 'vegetable', 0.00, 3),
(13, 'Red Chillies', './assets/crops/red_chillies.jpg', 'The chili pepper, from Nahuatl chīlli, is the berry-fruit of plants from the genus Capsicum which are members of the nightshade family, Solanaceae. Chili peppers are widely used in many cuisines as a spice to add pungent \'heat\' to dishes.', 'vegetable', 0.00, 5),
(14, 'Rice', './assets/crops/rice.jpg', 'Rice is the seed of the grass species Oryza sativa or less commonly Oryza glaberrima. The name wild rice is usually used for species of the genera Zizania and Porteresia, both wild and domesticated, although the term may also be used for primitive or uncultivated varieties of Oryza.', 'grain', 0.00, 5),
(15, 'Sesame Seeds', './assets/crops/sesame.jpg', 'Sesame is a flowering plant in the genus Sesamum, also called benne. Numerous wild relatives occur in Africa and a smaller number in India. It is widely naturalized in tropical regions around the world and is cultivated for its edible seeds, which grow in pods.', 'grain', 0.00, 5),
(16, 'Sunflower Seeds', './assets/crops/sunflower_seeds.jpg', 'The sunflower seed is the seed of the sunflower. There are three types of commonly used sunflower seeds: linoleic, high oleic, and sunflower oil seeds. Each variety has its own unique levels of monounsaturated, saturated, and polyunsaturated fats. The information in this article refers mainly to the linoleic variety.', 'grain', 0.00, 4),
(17, 'Wheat', './assets/crops/wheat.jpg', 'Wheat is one of the oldest and most important of the cereal crops. Of the thousands of varieties known, the most important are common wheat (Triticum aestivum), used to make bread; durum wheat (T. durum), used in making pasta (alimentary pastes) such as spaghetti and macaroni; and club wheat ', 'grain', 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `wallet` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE `customer_cart` (
  `user_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_cart`
--

INSERT INTO `customer_cart` (`user_id`, `item_id`, `farmer_id`, `quantity`, `price`) VALUES
(2, 25, 2, 6, '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`user_id`, `item_id`, `quantity`, `farmer_id`, `price`, `orderDate`) VALUES
(2, 26, 20, 3, 231.00, '2021-11-27 12:11:54'),
(2, 25, 8, 2, 123.00, '2021-11-27 12:17:59'),
(2, 25, 110, 2, 123.00, '2021-11-27 12:30:21'),
(2, 26, 4, 3, 231.00, '2021-11-27 16:22:35'),
(2, 25, 2, 2, 123.00, '2021-11-27 16:22:35'),
(3, 25, 1, 2, 123.00, '2021-11-27 17:12:57'),
(3, 27, 1, 2, 432.00, '2021-11-27 17:53:39'),
(3, 28, 6, 3, 40.00, '2021-11-27 17:53:39'),
(3, 28, 4, 3, 40.00, '2021-11-27 18:08:34'),
(3, 30, 5, 3, 30.00, '2021-11-27 20:58:10'),
(3, 30, 1, 3, 30.00, '2021-11-27 21:16:18'),
(3, 30, 1, 3, 30.00, '2021-11-27 21:23:50'),
(3, 30, 1, 3, 30.00, '2021-11-27 21:25:54'),
(3, 30, 22, 3, 30.00, '2021-11-27 23:43:12'),
(3, 30, 5, 3, 30.00, '2021-11-28 13:49:23'),
(3, 31, 5, 7, 20.00, '2021-11-28 13:49:23'),
(6, 64, 5, 3, 40.00, '2021-11-28 15:57:49'),
(6, 51, 4, 3, 40.00, '2021-11-28 19:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wishlist`
--

CREATE TABLE `customer_wishlist` (
  `user_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farmer_review`
--

CREATE TABLE `farmer_review` (
  `review_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `farmer_rating` int(1) NOT NULL,
  `farmer_review` text DEFAULT NULL,
  `review_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer_review`
--

INSERT INTO `farmer_review` (`review_id`, `farmer_id`, `product_id`, `farmer_rating`, `farmer_review`, `review_date`) VALUES
(6, 3, 22, 5, '', 2021),
(7, 3, 1, 4, 'good product', 2021),
(8, 3, 9, 4, 'great', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` double(10,2) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`user_id`, `item_id`, `quantity`, `price`, `orderDate`) VALUES
(3, 21, 4, 750.00, '2021-11-26 16:37:48'),
(3, 13, 1, 500.00, '2021-11-26 16:37:48'),
(3, 12, 1, 300.00, '2021-11-26 17:01:34'),
(3, 34, 1, 400.00, '2021-11-27 20:52:58'),
(3, 8, 1, 350.00, '2021-11-27 20:52:58'),
(3, 27, 1, 299.00, '2021-11-27 20:52:58'),
(3, 12, 1, 300.00, '2021-11-28 15:21:17'),
(3, 32, 1, 750.00, '2021-11-28 15:21:17'),
(3, 25, 5, 390.00, '2021-11-28 15:21:17'),
(3, 7, 5, 200.00, '2021-11-28 15:51:17'),
(3, 38, 1, 300.00, '2021-11-28 15:51:17'),
(3, 9, 1, 150.00, '2021-11-28 15:51:17'),
(3, 9, 1, 150.00, '2021-11-28 19:56:34'),
(3, 24, 1, 485.00, '2021-11-28 19:56:34'),
(3, 7, 1, 200.00, '2021-11-28 19:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders_received`
--

CREATE TABLE `orders_received` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT current_timestamp(),
  `approved` varchar(4) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_received`
--

INSERT INTO `orders_received` (`order_id`, `user_id`, `item_id`, `quantity`, `farmer_id`, `price`, `orderDate`, `approved`) VALUES
(1, 2, 25, 8, 2, 123.00, '2021-11-27 12:17:59', 'no'),
(2, 2, 25, 110, 2, 123.00, '2021-11-27 12:30:21', 'no'),
(3, 2, 26, 4, 3, 231.00, '2021-11-27 16:22:35', 'no'),
(4, 2, 25, 2, 2, 123.00, '2021-11-27 16:22:35', 'no'),
(5, 3, 25, 1, 2, 123.00, '2021-11-27 17:12:57', 'no'),
(6, 3, 27, 1, 2, 432.00, '2021-11-27 17:53:39', 'no'),
(7, 3, 28, 6, 3, 40.00, '2021-11-27 17:53:39', 'yes'),
(9, 3, 28, 4, 3, 40.00, '2021-11-27 18:08:34', 'yes'),
(10, 3, 30, 5, 3, 30.00, '2021-11-27 20:58:10', 'yes'),
(11, 3, 30, 1, 3, 30.00, '2021-11-27 21:16:18', 'yes'),
(12, 3, 30, 1, 3, 30.00, '2021-11-27 21:23:50', 'yes'),
(13, 3, 30, 1, 3, 30.00, '2021-11-27 21:25:54', 'yes'),
(14, 3, 30, 22, 3, 30.00, '2021-11-27 23:43:12', 'yes'),
(15, 3, 30, 5, 3, 30.00, '2021-11-28 13:49:23', 'yes'),
(16, 3, 31, 5, 7, 20.00, '2021-11-28 13:49:23', 'yes'),
(18, 6, 64, 5, 3, 40.00, '2021-11-28 15:57:49', 'yes'),
(19, 6, 51, 4, 3, 40.00, '2021-11-28 19:59:02', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_description` varchar(5000) NOT NULL,
  `item_rating` double NOT NULL DEFAULT 0,
  `variety` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_description`, `item_rating`, `variety`, `quantity`) VALUES
(1, 'Gabbiano', 'Bill Hook', 160.00, './assets/products/Bill_Hook.png', 'Commonly used for cutting big branches or to remove the old and dead branches from a tree', 4, 'Tool', 0),
(2, 'Tata', 'Budding and grating knife', 292.00, './assets/products/budd.jpeg', 'A budding-cum-grafting knife is a combination of two knives used for budding and grafting operation. It consists of two blades, one for budding and another for grafting.', 4, 'Tool', 20),
(3, 'Tata', 'Cultivator', 12000.00, './assets/products/Cultivator.png', 'A cultivator is used to stir and loosen the soil, breaking the clods and destroying the weeds. The cultivator performs intermediary ploughing and harrowing. It also maintains a good tilth, adequate aeration, prevents run-off, and evaporation losses.', 5, 'Tool', 20),
(4, 'Tata', 'Disc Harrow', 19999.00, './assets/products/Disc_Harrow.png', 'These are used for the preparation of finer soil by breaking clods, cutting weeds, pulverising the soil surface during field preparation.', 4, 'Tool', 20),
(5, 'Tata', 'Stem Pruner', 450.00, './assets/products/flowersci.jpeg', 'A flower scissor is used for cutting the flowers with stems. It has two short blades with handles', 4, 'Tool', 20),
(6, 'Neptune', 'Grass Shear', 160.00, './assets/products/Grass_Shear.png', 'Grass shear in various types are used for the maintenance of lawns. A grass shear is used for trimming and side dressing of the lawn.', 3, 'Tool', 19),
(7, 'Neptune', 'Hand Cultivator', 200.00, './assets/products/Hand_Cultivator.png', 'It is used for altering and loosening the soil without damaging the roots in the garden nursery ', 4, 'Tool', 14),
(8, 'Greaves', 'Hedge Shear', 350.00, './assets/products/hedgeshear.jpeg', 'It is used for trimming, pruning and cutting of hedges and shrubs in the desired shape. It consists of two blades with tangs.', 5, 'Tool', 18),
(9, 'Tata', 'Khurpi', 150.00, './assets/products/Khurpi.png', 'It is meant for weeding, lifting of seedlings and plants in the nursery, for transplanting the plants in pots and field, and for performing various other operations', 4, 'Tool', 16),
(10, 'Pensla', 'Patashi Plough', 5000.00, './assets/products/Patashi_Plough.png', 'This plough is useful for heavy soils. It consists of a single adjustable arm having shears at the base and breaks the hard pan developed below the soil surface. It improves drainage in water stagnant soils. ', 5, 'Tool', 19),
(11, 'Pensla', 'Plough', 3000.00, './assets/products/Plough.png', 'It used to turn and break up soil, to bury crop residues, and to help control weeds.', 4, 'Tool', 20),
(12, 'Tata', 'Pruning Knife', 300.00, './assets/products/Pruning_Knife.png', 'These knives are used to remove unwanted twigs or branches of a plant or tree. Such a knife is made up of a tang joined rigidly to the handle and a blade. One end of the blade is hooked or curved in order to cut or slash the small branches or twigs of a plant by pulling action.', 4, 'Tool', 0),
(13, 'Tata', 'Pruning Saw', 500.00, './assets/products/Pruning_Saw.png', 'It is used to cut thicker branches of plants', 4, 'Tool', 18),
(14, 'Neptune', 'Rake', 750.00, './assets/products/Rake.png', 'It is used for breaking the soil surface, removing stubbles, small stones and collecting weeds', 5, 'Tool', 20),
(15, 'Tata', 'Secateur', 485.00, './assets/products/secateur.jpeg', 'These are meant for cutting the branches, de-shooting, disbudding, cutting of scion sticks, defoliation of leaves from the sticks and topping off of small trees, etc.', 4, 'Tool', 20),
(16, 'Neptune', 'Spade', 1000.00, './assets/products/Spade.png', 'It is used for digging or turning over the soil, making bunds in the field, and to prepare irrigation channels, etc.', 5, 'Tool', 19),
(17, 'Tata', 'Sprayer', 1500.00, './assets/products/Sprayer.png', 'It is used for spraying insecticides, fungicides, herbicides, fertilisers and various other chemicals in the field.', 5, 'Tool', 19),
(18, 'Balwaan', 'Tree Pruner', 2999.00, './assets/products/Tree_Pruner.png', 'It is used for pruning shoots of trees, which are beyond reach from the ground level', 3, 'Tool', 19),
(19, 'Aldos', 'Water Can', 150.00, './assets/products/Water_Can.png', 'It is used for watering seed beds, nursery beds and potted plants to avoid washing of the soil and damage to young seedlings', 4, 'Tool', 19),
(20, 'Aldos', 'Wheel Barrow', 500.00, './assets/products/Wheel_Barrow.png', 'It can be used to move heavy things from one place to another, and also to hold garden trash', 3, 'Tool', 19),
(21, 'HFCL', 'Ammonium Molybdate', 750.00, './assets/products/ammonium_molybdat.jpg', 'It is vital for plant growth and involved in photosynthesis, affects energy reactions in the plants. Effect Plus Ammonium Molybdate-52%', 4, 'fertilizer', 19),
(22, 'Coromandel', 'Azospirillum Biofertilizer', 690.00, './assets/products/azospirillum_biofertilize.jpg', 'Azospirillum is a nitrogen fixing biofertilizer. Nitrogen is a major nutrient for all plants. Azospirillum lipofereum is a very useful soil and root bacterium. It is an associative symbiotic nitrogen fixing bacteria. ... Suitable for all crops - cereals, vegetables, plantation crops, ornamental plants and even legumes.', 5, 'fertilizer', 20),
(23, 'IFFCO', 'Azotobacter Biofertilizer', 800.00, './assets/products/azotobacter_biofertilize.png', 'Azotobacter is a free-living nitrogen-fixing bacterium, which is used as a biofertilizer in the cultivation of most crops. ... The shelf life of the biofertilizer is six months from date of manufacture. The Process requires locally available plant, machinery and raw materials for manufacture.', 4, 'fertilizer', 20),
(24, 'IFFCO', 'BAP Organic Fertilizer', 485.00, './assets/products/bap_organic_fertilize.jpg', '100% Organic Biofertilizer, provides complete nourishment to plants and builds their immune system to fight off fungal pathogens. It is a premium Organic Manure and Compost enriched with natural substances and beneficial microbes.', 5, 'fertilizer', 16),
(25, 'Coromandel', 'zinc sulphate', 390.00, './assets/products/znso4.jpeg', 'Forchlorfenuron (C.P.P.U.) 0.1% liquid formulation is a plant growth regulator which is used on grapes for increasing fruit size.', 4, 'fertilizer', 14),
(26, 'HFCL', 'Cytokinin', 675.00, './assets/products/cytokini.jpg', 'Cytokinin Enzyme is latest and world popular hormonal and cytokinin enzyme. It is a stimulant which includes Cytokinins and enzyme segments.', 3, 'fertilizer', 1),
(27, 'HFCL', 'Magnesium', 299.00, './assets/products/magnesiumFertilizer1.jpeg', 'Magnesium Sulphate offered is for agriculture fertilizer grade. Used as necessary nutrient element in process of growing plant. ... Having big effect for carbon metabolism, nitrogen metabolism, fat and active oxide action of plants. Perfect for acid soil, highly leaching soil, sandy soils.', 4, 'fertilizer', 18),
(29, 'HFCL', 'Potash Mobilizing Bacteria', 350.00, './assets/products/potash_mobilizing_bacteri.png', ' Potak microbes secrete organic acids in the rhizosphere which mobilize insoluble potash to soluble potash which can be readily absorbed by the plants. Helps develop internal plant tolerance to various abiotic & biotic stress conditions. Maintain soil fertility.', 4, 'fertilizer', 19),
(30, 'IFFCO', 'Rhizobium Biofertilizer', 450.00, './assets/products/rhizobium_biofertilize.jpg', 'Rhizoz is a Nitrogen Fixing Biofertilizer.Rhizoz fixes free Nitrogen from available in the air and converts it into Ammonia. Different types of microbes available in the root zone of the plant fix around 8 - 16 kg of Nitrogen to the Soil. With regular use of Rhizoz, use of Nitrogen based chemical ferilizers can be reduced.', 4, 'fertilizer', 19),
(31, 'Coromandel', 'Seaweed Extract Liquid', 500.00, './assets/products/seaweed_extract_liqui.jpg', ' Liquid Seaweed Extract contains macro & micronutrients including Nitrogen, Potassium, Phosphorous, Calcium, Magnesium, Sulphur, Manganese, Copper, Iron, Zinc, etc that helps in the rapid growth of the plant. ... It consists of Cold water processed 100% natural seaweed.', 5, 'fertilizer', 16),
(32, 'Biocyll', 'phospho bacteria', 750.00, './assets/products/phos.jpeg', 'Biopesticides are certain types of pesticides derived from such natural materials as animals, plants, bacteria, and certain minerals. ... Biochemical pesticides include substances, such as insect sex pheromones that interfere with mating as well as various scented plant extracts that attract insect pests to traps.', 4, 'pesticide', 19),
(33, 'Solgar', 'Chelated Calcium', 300.00, './assets/products/chelated_calcim.jpg', 'Calcium Chelate is used for treatment of soils and crops where calcium deficiency is diagnosed or suspected. This product is particularly suitable for foliar applications, inclusion in liquid feeds and hydroponic mixes, and for soil applications. It is soluble in water and phosphate-based fertilizers.', 4, 'pesticide', 18),
(34, 'Solgar', 'Chelated Iron', 400.00, './assets/products/chelated_iro.jpg', 'A chelated iron pesticide is one of the most popular and efficient methods of treating chlorosis. In horticulture, chelated iron pesticide is referred to as sequestered iron and serves as a plant tonic, where it\'s mixed with other plant food products and nutrients.', 5, 'pesticide', 18),
(35, 'Solgar', 'Chelated Zinc', 450.00, './assets/products/zin.jpeg', 'Chamatkar consisting of Zinc metals, is guaranteed 100% \"Chelated\" with EDTA (Ethylene Diamine Tetra Acetic Acid), it is used as a fertiliser to overcome Zinc deficiency in plants, as well as a source of Zinc for those plants which require Zinc for their normal growth and higher yields.', 5, 'pesticide', 20),
(36, 'Biocyll', 'Ethephon', 300.00, './assets/products/ethepho.jpg', 'Ethephon is a synthetic compound which decomposes into ethylene, a natural plant growth regulator in plant tissues. Ethephon is used to promote pre-harvest ripening, to aid in harvesting and promoting post-harvest ripening. It is used to aid in the harvest of fruit and berry crops.', 4, 'pesticide', 20),
(37, 'Evergol', 'Evergol Xtend', 1099.00, './assets/products/evergol_xten.jpg', 'EverGol Xtend is a unique combination of two very impactful active ingredients that allows farmer to save his costly seed from seed and seedling rot diseases. It provides Active Root Growth Promotion and gives energy to the seeds.', 5, 'pesticide', 20),
(38, 'HFCL', 'Gibberellic Acid', 300.00, './assets/products/WhatsApp Image 2021-11-28 at 12.28.19 PM.jpeg', 'Gibberellic acids (Gibberellins) are naturally occurring plant hormones that are used as plant growth regulators to stimulate both cell division and elongation that affects leaves and stems.', 3, 'pesticide', 19),
(39, 'Biocyll', 'Rootfert Sulfur', 1050.00, './assets/products/rootfert_sulfr.jpg', 'Sulfur 90% W.D.G. Helps in maintaining the appropriate pH of the soil, thereby better uptake of other nutrients. Better crop stand. Key ingredient in the process of photosynthesis. Helps in the synthesis of proteins, Enzymes & Vitamins. Controls metabolic & growth processes within plant cells. Promotes nodulation in the legumes, thereby helps in nitrogen fixation.', 4, 'pesticide', 20),
(40, 'IFFCO', 'Silicone Spreader', 450.00, './assets/products/sili.jpeg', 'Silicon Super Spreader is a superior wetting agent, developed to improve the wetting, spreading and penetration of chemicals. Fenton Silicon Spreader reduces the surface tension to a very low level, resulting in a rapid wetting cum spreading on leaves.', 3, 'pesticide', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `wallet` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `wallet`) VALUES
(2, 'vipul', '827ccb0eea8a706c4c34a16891f84e7b', 'charugundlavipul@gmail.com', '7867446.00'),
(3, 'amogh', '827ccb0eea8a706c4c34a16891f84e7b', 'akp@gmail.com', '383.00'),
(4, 'vamshi', '827ccb0eea8a706c4c34a16891f84e7b', 'vamshi@gmail.com', '0.00'),
(6, 'revanth', '827ccb0eea8a706c4c34a16891f84e7b', 'revanth@gmail.com', '30040.00'),
(7, 'Rushwant', '827ccb0eea8a706c4c34a16891f84e7b', 'rushwant@gmail.com', '1600.00'),
(8, 'rahul', '827ccb0eea8a706c4c34a16891f84e7b', 'rahul@gmail.com', '0.00'),
(9, 'virat', '827ccb0eea8a706c4c34a16891f84e7b', 'virat@gmail.com', '0.00'),
(10, 'suresh', '827ccb0eea8a706c4c34a16891f84e7b', 'suresh@gmail.com', '0.00'),
(11, 'bharat', '827ccb0eea8a706c4c34a16891f84e7b', 'bharat@gmail.com', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `review_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `farmer_rating` int(11) NOT NULL,
  `farmer_review` text DEFAULT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`review_id`, `farmer_id`, `product_id`, `farmer_rating`, `farmer_review`, `review_date`) VALUES
(1, 2, 7, 4, 'good', '0000-00-00 00:00:00'),
(2, 2, 4, 4, '', '2021-11-28 14:26:19'),
(3, 2, 12, 3, 'ok', '2021-11-25 21:47:17'),
(4, 2, 19, 5, 'excellent', '2021-11-25 21:47:55'),
(5, 3, 14, 4, 'nice and fresh', '2021-11-27 19:13:34'),
(6, 3, 20, 4, 'freshh', '2021-11-27 22:31:33'),
(7, 3, 5, 5, 'very fresh corn, very sweet', '2021-11-27 23:46:06'),
(8, 11, 18, 4, '', '2021-11-28 14:20:46'),
(9, 11, 10, 5, 'nice and fresh\n', '2021-11-28 14:21:14'),
(10, 11, 6, 5, 'crisp', '2021-11-28 14:21:53'),
(11, 11, 3, 5, '', '2021-11-28 14:22:12'),
(12, 11, 11, 3, '', '2021-11-28 14:22:34'),
(13, 10, 1, 5, 'fresh', '2021-11-28 14:23:08'),
(14, 10, 6, 4, '', '2021-11-28 14:23:27'),
(15, 10, 13, 4, '', '2021-11-28 14:23:45'),
(16, 10, 16, 5, '', '2021-11-28 14:24:01'),
(17, 10, 10, 4, '', '2021-11-28 14:24:15'),
(18, 10, 15, 5, '', '2021-11-28 14:24:27'),
(19, 10, 14, 5, '', '2021-11-28 14:24:44'),
(20, 10, 2, 5, '', '2021-11-28 14:24:58'),
(21, 10, 20, 5, '', '2021-11-28 14:25:12'),
(22, 2, 9, 5, '', '2021-11-28 14:25:31'),
(23, 2, 15, 4, '', '2021-11-28 14:25:48'),
(24, 2, 8, 5, '', '2021-11-28 14:26:02'),
(25, 2, 6, 4, '', '2021-11-28 14:26:46'),
(26, 2, 11, 5, '', '2021-11-28 14:27:09'),
(27, 2, 1, 4, '', '2021-11-28 14:27:22'),
(28, 2, 5, 4, '', '2021-11-28 14:27:35'),
(29, 2, 10, 5, '', '2021-11-28 14:27:55'),
(30, 2, 16, 4, '', '2021-11-28 14:28:06'),
(31, 3, 13, 5, '', '2021-11-28 14:28:43'),
(32, 3, 10, 3, '', '2021-11-28 14:29:11'),
(33, 3, 18, 5, '', '2021-11-28 14:29:32'),
(34, 3, 4, 5, '', '2021-11-28 14:29:47'),
(35, 6, 16, 4, '', '2021-11-28 14:30:11'),
(36, 6, 4, 4, 'very fresh', '2021-11-28 14:30:30'),
(37, 6, 14, 5, '', '2021-11-28 14:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT 1,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`user_id`, `item_id`, `quantity`, `price`) VALUES
(3, 4, 1, 19999.00),
(3, 10, 1, 5000.00),
(3, 18, 1, 2999.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `cart_query` (`user_id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`crop_id`),
  ADD KEY `foreign_key_farmer_id` (`farmer_id`),
  ADD KEY `foreign_key_crop_name` (`crop_name`);

--
-- Indexes for table `crop_admin`
--
ALTER TABLE `crop_admin`
  ADD PRIMARY KEY (`item_name`),
  ADD UNIQUE KEY `item_id_2` (`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD KEY `customer_relation` (`user_id`),
  ADD KEY `farmer_constraint` (`farmer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD KEY `foreignkey_userid` (`user_id`),
  ADD KEY `farmerid_fkey` (`farmer_id`),
  ADD KEY `item_id_fkey1` (`item_id`);

--
-- Indexes for table `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  ADD KEY `wishlist_query` (`farmer_id`),
  ADD KEY `wishlist_query2` (`user_id`);

--
-- Indexes for table `farmer_review`
--
ALTER TABLE `farmer_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `fkey` (`farmer_id`),
  ADD KEY `fkey2` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `order_query` (`user_id`),
  ADD KEY `prod_refer` (`item_id`);

--
-- Indexes for table `orders_received`
--
ALTER TABLE `orders_received`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `foreignkey_userid` (`user_id`),
  ADD KEY `farmerid_fkey` (`farmer_id`),
  ADD KEY `item_id_fkey1` (`item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `fkey11` (`farmer_id`),
  ADD KEY `fkey22` (`product_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `referUser` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `crop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `crop_admin`
--
ALTER TABLE `crop_admin`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmer_review`
--
ALTER TABLE `farmer_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_received`
--
ALTER TABLE `orders_received`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_query` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crops`
--
ALTER TABLE `crops`
  ADD CONSTRAINT `foreign_key_farmer_id` FOREIGN KEY (`farmer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreign_key_name` FOREIGN KEY (`crop_name`) REFERENCES `crop_admin` (`item_name`);

--
-- Constraints for table `farmer_review`
--
ALTER TABLE `farmer_review`
  ADD CONSTRAINT `fkey` FOREIGN KEY (`farmer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkey2` FOREIGN KEY (`product_id`) REFERENCES `product` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_query` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prod_refer` FOREIGN KEY (`item_id`) REFERENCES `product` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_review`
--
ALTER TABLE `user_review`
  ADD CONSTRAINT `fkey11` FOREIGN KEY (`farmer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `referUser` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
