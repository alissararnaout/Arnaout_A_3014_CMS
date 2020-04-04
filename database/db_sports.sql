-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 04, 2020 at 11:05 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `category_name`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Kids'),
(4, 'Footwear'),
(5, 'Gear'),
(6, 'Electronics'),
(7, 'Jerseys & Fan Wear ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_image`, `product_name`, `product_price`, `product_desc`) VALUES
(1, 'nike-hoodie.jpg', 'Nike Sportswear Men\'s Club All Over Print Pullover Hoodie', '$55.50', 'Made from soft fleece, the Nike Sportswear Club Pullover Hoodie gives you classic comfort with unique graphic style for an elevated, everyday look.'),
(2, 'vans-shorts.png', 'Vans Men\'s Primary II 17 Inch Volley Boardshorts', '$54.99', 'The Primary Volley is a 60% cotton, 40% nylon volley short featuring mesh lining, side entry hand pockets, and a back welt pocket zip closure.'),
(3, 'adidas-pants.jpg', 'adidas Men\'s 3 Stripe Wind Pants', '$69.99', 'Face the windy city streets in these sport-inspired pants. Cut in a tapered fit, they flash the 3-Stripes from hip to hem. These wind pants are built with recycled polyester. An adjustable elastic waist makes them easy to slip on over your workout gear.'),
(4, 'columbia-jacket.jpg', 'Columbia Men\'s Lake 22 Down Hooded Jacket', '$189.99', 'This water-resistant jacket with 650-fill-power down, Heat Seal Construction, and binding at the hood, hem and cuff ensures zero cold spots, making it a winter must-have.'),
(5, 'nike-socks.jpg', 'Nike Everyday Plus Cushion Crew Training Socks', '$19.50', 'The Nike Everyday Plus Cushion Crew Training Socks (6 Pair) feature sweat-wicking Dri-FIT technology in a crew silhouette for comfortable coverage around the ankle and calf. An arch band contours around the foot for a locked in fit.'),
(6, 'hunter-windbreaker.jpg', 'Hunter Women\'s Original Shell Windbreaker', '$164.99', 'DWR finish has been applied to the outer fabric to achieve a water resistant garment. The Hunter Women’s Original Shell Windbreaker packs into a bag with a drawcord closure, attached at the back neck seam.'),
(7, 'puma-hoodie.jpeg', 'PUMA Women\'s Essentials Elongated Hoodie', '$64.99', 'Loose, long and on-trend, this relaxed hoodie will keep you comfortable while looking good.'),
(8, 'nike-tights.jpg', 'Nike Pro Women\'s Tights', '$48.00', 'An ideal base layer for high-intensity training, the Nike Pro Women’s Tights deliver sweat-wicking power in a tight fitting silhouette that flatters your shape from hip to hem. The wide elastic waistband secures the fit while mesh panels at the lower legs enhance breathability.'),
(9, 'adidas-bra.jpg', 'adidas Women\'s All Me 3 Stripe Sports Bra', '$54.99', 'Step onto the mat and enter a higher space. This super-soft sports bra is made to empower your daily workout. Transition gracefully from allongée propellers to glute burners, free from distractions. Whether you’re back at your favourite yoga school, or experimenting with a Pilates or barre class, the All Me 3-Stripes Bra has got your back. Change in pace? adidas’ supple woven fabric is designed to stretch – and breathe – with you. Explore that extra twist in Ardha Matsyendrasana whilst staying snug and dry.'),
(10, 'nike-band.jpeg', 'Nike Women\'s Ribbed Knot Headband', '$22.50', 'Women will love this stylish headband from Nike that keeps them warm with fleece lining, and dry with sweat-wicking Dri-Fit technology.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_cat`
--

CREATE TABLE `tbl_product_cat` (
  `product_cat_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product_cat`
--

INSERT INTO `tbl_product_cat` (`product_cat_id`, `product_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) NOT NULL,
  `user_fname` varchar(25) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_pass` varchar(20) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_ip`) VALUES
(1, 'alissar', 'alissar', '123', 'alissar@arnaout.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_product_cat`
--
ALTER TABLE `tbl_product_cat`
  ADD PRIMARY KEY (`product_cat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product_cat`
--
ALTER TABLE `tbl_product_cat`
  MODIFY `product_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
