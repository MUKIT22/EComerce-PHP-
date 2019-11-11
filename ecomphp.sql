-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 04:13 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'Arafat', 'Kazi', 'arafatkazi47@gmail.com', '0192023a7bbd73250516f069df18b500'),
(2, 'Test', 'John', 'test@test.com', '9711a83e75f3d98d57c920e6d07ea8db'),
(3, 'admin', 'new', 'admin@admin.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(3, 'Mobiles'),
(4, 'Polo T-shirts'),
(8, 'Pets'),
(9, 'Cameras'),
(10, 'Books');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pquantity` varchar(255) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productprice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `pid`, `pquantity`, `orderid`, `productprice`) VALUES
(1, 52, '2', 5, '1590'),
(2, 52, '2', 6, '1590'),
(3, 52, '2', 7, '1590'),
(4, 45, '1', 7, '11000'),
(5, 52, '2', 8, '1590'),
(6, 45, '1', 8, '11000'),
(7, 36, '1', 8, '111'),
(8, 49, '1', 9, '47000'),
(9, 50, '2', 9, '145000'),
(10, 42, '3', 10, '1100'),
(11, 44, '1', 11, '2200'),
(12, 36, '1', 13, '111'),
(13, 50, '1', 14, '145000'),
(14, 45, '1', 15, '11000'),
(15, 52, '1', 16, '1590'),
(16, 42, '1', 17, '1100'),
(17, 50, '1', 19, '145000'),
(18, 45, '1', 20, '11000'),
(19, 52, '1', 21, '1590'),
(20, 42, '1', 23, '1100'),
(21, 45, '1', 24, '11000'),
(22, 36, '1', 25, '111'),
(23, 49, '1', 26, '47000'),
(24, 50, '1', 27, '145000'),
(25, 44, '1', 28, '2200'),
(26, 42, '1', 29, '1100'),
(27, 42, '1', 30, '1100'),
(28, 53, '1', 30, '150000'),
(29, 52, '1', 31, '1590'),
(30, 36, '1', 31, '111'),
(31, 53, '1', 31, '150000'),
(32, 42, '1', 32, '1100'),
(33, 45, '1', 33, '11000'),
(34, 51, '1', 35, '40000'),
(35, 50, '1', 36, '145000'),
(36, 52, '1', 36, '1590'),
(37, 36, '1', 37, '111'),
(38, 56, '1', 38, '30500'),
(39, 54, '1', 38, '180'),
(40, 42, '1', 39, '1100'),
(41, 45, '1', 40, '11000'),
(42, 45, '1', 41, '11000'),
(43, 55, '1', 41, '210'),
(44, 45, '1', 42, '11000'),
(45, 44, '1', 43, '2200'),
(46, 53, '1', 45, '150000'),
(47, 47, '1', 46, '12000'),
(48, 51, '1', 47, '40000'),
(49, 57, '3', 48, '143'),
(50, 60, '1', 49, '1200'),
(51, 52, '1', 50, '1590'),
(52, 47, '1', 51, '12000'),
(53, 59, '1', 53, '28200'),
(54, 42, '3', 54, '1100'),
(55, 49, '1', 54, '47000'),
(56, 42, '1', 55, '1100');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `totalprice` varchar(255) NOT NULL,
  `orderstatus` varchar(255) NOT NULL,
  `paymentmode` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `totalprice`, `orderstatus`, `paymentmode`, `timestamp`) VALUES
(14, 2, '145000', 'Order Placed', 'COD', '2019-03-16 22:36:53'),
(15, 2, '11000', 'Order Placed', 'COD', '2019-03-16 22:40:32'),
(16, 3, '1590', 'Order Placed', 'COD', '2019-03-17 00:12:30'),
(17, 3, '1100', 'Order Placed', 'COD', '2019-03-17 00:22:25'),
(18, 3, '0', 'Order Placed', 'COD', '2019-03-17 00:28:13'),
(19, 3, '145000', 'Order Placed', 'COD', '2019-03-17 00:29:22'),
(20, 3, '11000', 'Order Placed', 'COD', '2019-03-17 00:45:56'),
(21, 3, '1590', 'Order Placed', 'COD', '2019-03-17 11:30:05'),
(22, 2, '0', 'Order Placed', 'COD', '2019-03-17 11:50:51'),
(23, 2, '1100', 'Order Placed', 'COD', '2019-03-17 11:51:30'),
(24, 2, '11000', 'Order Placed', 'COD', '2019-03-17 11:52:35'),
(25, 3, '111', 'Order Placed', 'COD', '2019-03-18 00:46:38'),
(26, 4, '47000', 'Cancelled', 'COD', '2019-03-18 01:07:26'),
(27, 4, '145000', 'Cancelled', 'COD', '2019-03-18 01:07:57'),
(28, 4, '2200', 'Order Placed', 'COD', '2019-03-18 11:15:40'),
(29, 3, '1100', 'Order Placed', 'COD', '2019-03-18 11:26:48'),
(30, 3, '151100', 'Order Placed', 'COD', '2019-03-18 12:02:13'),
(31, 3, '151701', 'Order Placed', 'COD', '2019-03-18 12:04:33'),
(32, 3, '1100', 'Order Placed', 'COD', '2019-03-18 12:09:47'),
(33, 4, '11000', 'In Progress', 'COD', '2019-03-18 12:44:06'),
(34, 3, '0', 'Cancelled', 'COD', '2019-03-20 22:24:10'),
(35, 3, '40000', 'Cancelled', 'COD', '2019-03-22 11:33:13'),
(36, 4, '146590', 'Cancelled', 'COD', '2019-03-22 18:28:05'),
(37, 4, '111', 'Cancelled', 'COD', '2019-03-22 19:22:40'),
(38, 3, '30680', 'Order Placed', 'COD', '2019-03-24 21:00:01'),
(39, 4, '1100', 'Order Placed', 'COD', '2019-03-24 21:05:17'),
(40, 9, '11000', 'Cancelled', 'COD', '2019-03-24 21:16:13'),
(41, 9, '11210', 'Order Placed', 'COD', '2019-03-24 22:15:09'),
(42, 9, '11000', 'Order Placed', 'COD', '2019-03-24 23:08:30'),
(43, 9, '2200', 'Order Placed', 'COD', '2019-03-24 23:14:34'),
(44, 9, '0', 'Order Placed', 'COD', '2019-03-25 00:23:14'),
(45, 4, '150000', 'Order Placed', 'COD', '2019-03-25 00:25:36'),
(46, 4, '12000', 'Order Placed', 'COD', '2019-03-25 00:28:04'),
(47, 4, '40000', 'Order Placed', 'COD', '2019-03-25 00:36:26'),
(48, 9, '429', 'Order Placed', 'COD', '2019-03-25 11:50:40'),
(49, 9, '1200', 'Order Placed', 'COD', '2019-03-25 11:53:42'),
(50, 9, '1590', 'Order Placed', 'COD', '2019-03-25 12:03:57'),
(51, 2, '12000', 'Order Placed', 'COD', '2019-04-21 00:09:23'),
(52, 3, '0', 'Cancelled', 'COD', '2019-04-21 00:16:58'),
(53, 3, '28200', 'Order Placed', 'COD', '2019-04-21 00:17:34'),
(54, 3, '50300', 'Order Placed', 'COD', '2019-05-06 14:18:30'),
(55, 3, '1100', 'Order Placed', 'COD', '2019-05-25 16:14:23'),
(56, 3, '0', 'Order Placed', 'COD', '2019-09-14 20:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `ordertracking`
--

CREATE TABLE `ordertracking` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertracking`
--

INSERT INTO `ordertracking` (`id`, `orderid`, `status`, `message`, `timestamp`) VALUES
(44, 26, 'Cancelled', 'after echo', '2019-03-22 19:21:19'),
(45, 37, 'Cancelled', 'Latest Cancel', '2019-03-22 19:23:28'),
(46, 36, 'Cancelled', 'echo second after withdraw quotation', '2019-03-22 19:25:29'),
(47, 27, 'Cancelled', 'not updating ', '2019-03-22 20:10:09'),
(48, 35, 'Cancelled', 'not showing in databases', '2019-03-22 20:13:58'),
(49, 34, 'Cancelled', 'after deleting some in database', '2019-03-22 20:17:19'),
(50, 33, 'In Progress', 'Order in progress again', '2019-03-23 00:00:23'),
(51, 40, 'Cancelled', 'test', '2019-03-24 22:15:57'),
(52, 52, 'Cancelled', 'not good product', '2019-04-21 00:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `catid`, `price`, `thumb`, `description`) VALUES
(42, 'fcb jersey', 4, '1100', 'uploads/fcb jersey.jpg', '2018-19 session jersey.Very high quality.Exported from Thailand. '),
(44, 'vivo', 3, '2200', 'uploads/vivo.jpg', 'slim looking mobile'),
(45, 'Samsung', 3, '11000', 'uploads/Samsung.jpg', 'nice looking stylist'),
(47, 'Lava', 3, '12000', 'uploads/Lava.jpg', 'Lava R3 Note.\r\nLithium-ion 3260 mAh (non-removable)\r\nStand-by: up to 600 hours\r\nTalk-time: up to 16 hours (2G)\r\nBody	156.9 x 75.8 x 8.04 millimeter, 153.8 grams (plastic body)\r\nCamera (Back)	13 Megapixel\r\n- Autofocus, dual-LED flash, face detection, f/2.0'),
(49, 'Nikon', 9, '47000', 'uploads/Nikon.jpg', '\r\nD7100 - DSLR Camera (Body Only) - Black'),
(50, 'Blue & gold Macaw', 8, '145000', 'uploads/Blue & gold Macaw.jpg', 'The blue-and-yellow macaw, also known as the blue-and-gold macaw, is a large South American parrot with mostly blue top parts and light orange underparts, with gradient hues of green on top of its head. It is a member of the large group of neotropical par'),
(51, 'labrador puppies', 8, '40000', 'uploads/labrador puppies.jpg', 'Top Quality and healthy Bloodline labrador puppies available for pre order ,we will take 50% in advance after confirm order and deliver the puppy within 7 days .After deliver we will take remaining money .\r\ncolor:fawn\r\nage:40days\r\nBreed: parents are from '),
(52, 'harley davidson t-shirt', 4, '1590', 'uploads/harley davidson t-shirt.jpg', 'Official Harley-Davidson iron block tee for men is made from cotton jersey and cold-pigment washed for a worn look\r\nPrinted graphics on sleeve, front and back; Genuine MotorClothes Collection'),
(53, 'Apple-iPhone-XS', 3, '150000', 'uploads/Apple-iPhone-XS.jpg', ' Apple iPhone XS is the choice. It has features similar to XS Max. But the battery performance, display size and quality are a little lower. Performance, body material and other features are same as iPhone XS Max. If you don\'t want that extra large 6.5-in'),
(54, 'Black Hawk Down', 10, '180', 'uploads/Black Hawk Down.jpg', 'Black Hawk Down: A Story of Modern War is a 1999 book by journalist Mark Bowden. It documents efforts by the Unified Task Force to capture Somali faction leader Mohamed Farrah Aidid in 1993, and the resulting battle in Mogadishu between United States forc'),
(55, 'Lone Survivor', 10, '210', 'uploads/Lone Survivor.jpg', 'Lone Survivor: The Eyewitness Account of Operation Redwing and the Lost Heroes of SEAL Team 10 (2007) is a non-fiction book written by Marcus Luttrell with assistance from novelist and ghostwriter Patrick Robinson and published by Little, Brown and Compan'),
(56, 'Canon EOS 1300D', 9, '30500', 'uploads/Canon EOS 1300D.jpg', 'Canon EOS 1300D DSLR 18.0 MP Built-in Wi-Fi With 18-55mm Lens'),
(57, 'black and white striped t-shirt', 4, '143', 'uploads/black and white striped t-shirt.jpg', 'style	custom design short slevee polo t shirt\r\nmaterial	cotton\r\nsize	\r\ncustomized size \r\n\r\nlogo	custom\r\ncolor	black and white striped\r\nweight	180g-220g'),
(59, 'Nikon D3300 DSLR', 9, '28200', 'uploads/Nikon D3300 DSLR.jpg', 'Brand: Nikon\r\nModel: Nikon D3300 DSLR\r\nProduct Code: 1613\r\nAvailability: In Stock\r\nHighlights\r\nCMOS DX-format sensor\r\n24.2 Megapixels\r\n5 fps continuous shooting\r\nFull HD 1080p at 60/50/30/25/24p'),
(60, 'The Flea The Amazing Story of Leo Messi', 10, '1200', 'uploads/The Flea The Amazing Story of Leo Messi.jpg', 'The captivating story of soccer legend Lionel Messi, from his first touch at age five in the streets of Rosario, Argentina, to his first goal on the Camp Nou pitch in Barcelona, Spain. The Flea tells the amazing story of a boy who was born to play the bea'),
(63, 'Xiaomi Pocophone F1', 3, '24500', 'uploads/Xiaomi Pocophone F1.jpg', 'I have pocophone ...only samsung flagships are better than pocophone... Im not talking about P30, lg thinq,or maybe xs iphone ...(because this are newest than poco) The price is fantastic for great phone ...'),
(64, 'Black Polo T Shirt', 4, '1341', 'uploads/Black Polo T Shirt.jpg', 'Black Polo T Shirt Black Polo T Shirt Black Polo T Shirt Black Polo T Shirt Black Polo T Shirt Black Polo T Shirt Black Polo T Shirt Black Polo T Shirt'),
(65, 'dfs', 3, '33', 'uploads/1_pWGJIKats-zuumA3RQNEWQ.jpeg', 'Enter Description');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `review` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `pid`, `uid`, `review`, `timestamp`) VALUES
(1, 56, 3, 'The product i wanted!!', '2019-03-23 23:20:45'),
(2, 51, 4, 'Not the best puppy !! So sick !!', '2019-03-24 21:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `timestamp`) VALUES
(2, 'nyc@nyc.com', '$2y$10$FcI1k4.9EIRLtE4FoSWsmuyqUzHP8biVXKF6pZfqXdnBvYHFn4/wC', '2019-03-07 15:09:47'),
(3, 'naz@naz.com', '$2y$10$fQpvNd7kbWeKSDz29cdNsu3Hxqnqb2U1BlLMy8wJDzoziZbMiu4am', '2019-03-11 23:14:00'),
(4, 'ken@ken.com', '$2y$10$isBytzwMKdYCRX/ZwhS.JemCVO7p/oh6QU96ihFl/mjVwabtB.b8.', '2019-03-11 23:31:03'),
(9, 'south@south.com', '$2y$10$006D0Wp6/QDk.gZ5w74WKuKAhmU7LjnDRcBHuIWuOtu9O07odBzfS', '2019-03-24 21:14:31'),
(10, 'admin123@admin.com', '$2y$10$Ds/8/9ZYmKND0LzrVeokKObXf0cv1dOkxEt8G7467/sN.jiOkIGom', '2019-09-07 14:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `usersmeta`
--

CREATE TABLE `usersmeta` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersmeta`
--

INSERT INTO `usersmeta` (`id`, `uid`, `firstname`, `lastname`, `company`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `mobile`) VALUES
(1, 2, 'Sadat', 'Ahmed', 'East West University', 'house#17 , road#2 , block C ,Dhaka 1219', 'saha tower and hotel', 'Dhaka', 'Dhaka', 'BD', '1219', '+8801718910674'),
(2, 3, 'Abdul', 'Ali', 'South Tech', '22 No. Lal Chan Mukim', 'Nawabpur', 'Dhaka', 'Dhaka', 'BD', '1200', '+8801643288974'),
(3, 4, 'Afsana', 'Jerry', 'Cus Tech', '11/2 kamal Ataturk', 'Sagorika', 'Cox&#39;s Bazar', 'Chattogram', 'BD', '1201', '+8801553982416'),
(4, 9, 'Pranto', 'Saha', 'Flora Limited', '122/3 kalta bazar', 'Rahmat Tower', 'Dhaka', 'Dhaka', 'BD', '1203', '+8801914532914');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `pid`, `uid`, `timestamp`) VALUES
(2, 45, 9, '2019-03-24 21:56:27'),
(3, 45, 9, '2019-03-24 21:57:18'),
(4, 52, 9, '2019-03-24 22:46:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertracking`
--
ALTER TABLE `ordertracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usersmeta`
--
ALTER TABLE `usersmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ordertracking`
--
ALTER TABLE `ordertracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usersmeta`
--
ALTER TABLE `usersmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
