-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 05, 2020 at 07:47 AM
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
(1, 'product1.jpg', 'Nike Sportswear Men\'s Club All Over Print Pullover Hoodie', '$55.50', 'Made from soft fleece, the Nike Sportswear Club Pullover Hoodie gives you classic comfort with unique graphic style for an elevated, everyday look.'),
(2, 'product2.png', 'Vans Men\'s Primary II 17 Inch Volley Boardshorts', '$54.99', 'The Primary Volley is a 60% cotton, 40% nylon volley short featuring mesh lining, side entry hand pockets, and a back welt pocket zip closure.'),
(3, 'product3.jpg', 'adidas Men\'s 3 Stripe Wind Pants', '$69.99', 'Face the windy city streets in these sport-inspired pants. Cut in a tapered fit, they flash the 3-Stripes from hip to hem. These wind pants are built with recycled polyester. An adjustable elastic waist makes them easy to slip on over your workout gear.'),
(4, 'product4.jpg', 'Columbia Men\'s Lake 22 Down Hooded Jacket', '$189.99', 'This water-resistant jacket with 650-fill-power down, Heat Seal Construction, and binding at the hood, hem and cuff ensures zero cold spots, making it a winter must-have.'),
(5, 'product5.jpg', 'Nike Everyday Plus Cushion Crew Training Socks', '$19.50', 'The Nike Everyday Plus Cushion Crew Training Socks (6 Pair) feature sweat-wicking Dri-FIT technology in a crew silhouette for comfortable coverage around the ankle and calf. An arch band contours around the foot for a locked in fit.'),
(6, 'product6.jpg', 'Hunter Women\'s Original Shell Windbreaker', '$164.99', 'DWR finish has been applied to the outer fabric to achieve a water resistant garment. The Hunter Women’s Original Shell Windbreaker packs into a bag with a drawcord closure, attached at the back neck seam.'),
(7, 'product7.jpeg', 'PUMA Women\'s Essentials Elongated Hoodie', '$64.99', 'Loose, long and on-trend, this relaxed hoodie will keep you comfortable while looking good.'),
(8, 'product8.jpg', 'Nike Pro Women\'s Tights', '$48.00', 'An ideal base layer for high-intensity training, the Nike Pro Women’s Tights deliver sweat-wicking power in a tight fitting silhouette that flatters your shape from hip to hem. The wide elastic waistband secures the fit while mesh panels at the lower legs enhance breathability.'),
(9, 'product9.jpg', 'adidas Women\'s All Me 3 Stripe Sports Bra', '$54.99', 'Step onto the mat and enter a higher space. This super-soft sports bra is made to empower your daily workout. Transition gracefully from allongée propellers to glute burners, free from distractions. Whether you’re back at your favourite yoga school, or experimenting with a Pilates or barre class, the All Me 3-Stripes Bra has got your back. Change in pace? adidas’ supple woven fabric is designed to stretch – and breathe – with you. Explore that extra twist in Ardha Matsyendrasana whilst staying snug and dry.'),
(10, 'product10.jpeg', 'Nike Women\'s Ribbed Knot Headband', '$22.50', 'Women will love this stylish headband from Nike that keeps them warm with fleece lining, and dry with sweat-wicking Dri-Fit technology.'),
(11, 'product11.jpeg', 'Jordan Boys’ Air Future Pullover Hoodie', '$45.00', 'The Jordan Air Future Boy’s Pullover Hoodie features fleece fabric for a warm comfortable all day wear.'),
(12, 'product12.jpg', 'Under Armour Girls\' Play Up Shorts', '$18.74', 'veryone needs a go-to pair of shorts...and you just found yours. They look good and—with the wide knit waistband—feel even better.\r\n'),
(13, 'product13.jpg', 'Nike Newborn Boys’ Just Do It GFX Romper', '$11.97,', 'Constructed of soft Heathered Jersey, the Nike Infant ’JDI GFX Romper’ delivers the comfort your little one needs for all-day play.'),
(14, 'product14.jpg', 'The North Face Toddler 2-6 Insulated Winter Bib Pants', '$124.99', 'Designed for groms to wear while playing in the snow or navigating the bunny hill, this insulated bib pant is waterproof, breathable, and fully seam sealed to keep toddler girls dry and warm. Adjustable shoulder straps with Velcro® tabs accommodate growth spurts – as do EZ (easy) grow cuffs at legs that unravel (up to 2”) to extend the life and length of the pant.'),
(15, 'product15.jpg', 'Heelys Girls\' Motion Plus Grade School Shoes', '$74.95', 'Heelys are about exploring your freedom, unleashing the fun and empowering you to be fearless. This single wheel design has in mind the older child for starting out on their first pair of Heelys or graduating up from the 2 wheel beginner model.'),
(16, 'product16.jpg', 'Nike Women\'s Revolution 5 Running Shoes', '$65.99', 'The Nike Women’s Revolution 5 Running Shoe cushions your stride with soft foam to keep you running in comfort. Lightweight knit material wraps your foot in breathable support, while a minimalist design fits in anywhere your day takes you.'),
(17, 'product17.jpg', 'Nike Unisex Mercurial Superfly 6 Firm Ground Shoes - White', '$157.49', 'The mesh upper of the Nike Unisex Mercurial Superfly 6 Firm Ground Shoes wraps underneath your foot for a second-skin fit. A 2-part podular plate system uses an internal chassis for support and chevron studs for responsive speed at every step.'),
(18, 'product18.jpeg', 'Sorel Women\'s Winter Carnival Winter Boots - Black', '$135.00', 'This boot features the archetypal Sorel™ look in a versatile waterproof boot. Winter Carnival™ is up for anything, be it a cold nights’ romp with the dog, a stroll through the shops, or a drink after a vigorous day on the slopes.'),
(19, 'product19.jpg', 'adidas Women\'s Stan Smith Shoes - White/Beige', '$119.99', 'These adidas Women’s Stan Smith Shoes have the same minimalist lines, low profile and perforated details as the ’72 original. The leather upper feels soft on your feet. Inspired by polo style, two-tone stripes on the side give these sneakers a clubhouse look.\r\n'),
(20, 'product20.jpg', 'Nike Men\'s Benassi \"Just Do It\" Sandals - Black/White', '$22.49', 'Men\'s Nike Benassi \"Just Do It.\" Sandal is a lightweight sports slide with the Nike corporate logo embellished on the strap. Its soft midsole foam and jersey lining provide comfort so you can enjoy a relaxed, premium experience.\r\n'),
(21, 'product21.jpg', 'Giro DND JR II Junior Bike Gloves - Blast', '$29.99', 'With a wide-mouth cuff, the Giro DND JR II Junior Bike Gloves - Blast pull on in seconds to protect kids’ hands on the trails. The AX Suede palm is highly durable, yet supple, fitting like a second skin to keep little hands flexible.'),
(22, 'product22.jpg', 'Nike Fundamental Weighted Rope', '$18.74', 'Increase your workout intensity with the Nike Fundamental Weighted Rope.'),
(23, 'product23.jpg', 'Reebok 4MM Yoga Mat With Carry Strap String - Desert Dust', '$29.99', 'Be one with your soul, be one with nature, be one with your Reebok 4MM Yoga Mat With Carry Strap String - Desert Dust. Enjoy this yoga mat daily and find that centre you’ve been looking for. Namaste.'),
(24, 'product24.jpg', 'adidas Originals Cross Body Bag - Black', '$23.97', 'Woven mélange fabric adds a soft touch and unique texture to this simple bag. A contrasting Trefoil logo accents the clean crossbody design, which includes two separate zip pockets. The straps adjust so it can be worn as a bum bag.'),
(25, 'product25.png', 'Gatorade Squeeze Bottle', '$6.99', 'If you need a quick drink bottle that only requires you to tip your head back and squeeze, then look no further than the Gatorade Squeeze Bottle. The 1L bottle has a squeeze top lid that lets you squeeze the bottle to quickly dispense the energy-boosting liquid.'),
(26, 'product26.jpg', 'Fitbit Versa 2 Smartwatch - Carbon', '$249.95', 'Meet Fitbit Versa 2 ™ —a smartwatch that elevates every moment. Use your voice to create alarms, set bedtime reminders or check the weather with Amazon Alexa Built-in. Take your look from the gym to the office with its modern and versatile design. Control your favourite playlists and podcasts with Spotify. Plus get Fitbit Pay ™ , daily in-app sleep quality scores, notifications, 24/7 heart rate and store 300+ songs for an experience that revolves around you.'),
(27, 'product27.jpg', 'Apple Watch Series 5 GPS 40MM - Gold/Pink Sport Band', '$529.00', 'Apple Watch Series 5, with an Always-On Retina display. You’ve never seen a watch like this. Apple Watch Series 5 has a display that’s always on, showing the time and important information—no need to raise your wrist. It helps you navigate with the built-in compass. Lets you check on your heart with the ECG app.1 Tracks your workouts and activity. And makes it easy to connect with the people and information you care about, right from your wrist.'),
(28, 'product28.jpg', 'GoPro MAX Action Camera', '$669.99', 'Three cameras in one. Classic HERO-style skills. Spherical-capture wizardry. Vlogging powerhouse. Make way for MAX, the most creative GoPro ever. Capture traditional GoPro video and photos with unbreakable stabilization, shoot 360 footage of everything around you and vlog like a pro. Snap a panoramic shot without having to pan—just point and click. Choose a digital lens to capture your footage exactly how you imagine it. And with six mics onboard, you get immersive 360 audio and the best sound ever delivered from GoPro.'),
(29, 'product29.jpg', 'Beats Studio 3 Wireless Headphones', '$399.99', 'Premium sound with fine-tuned acoustics and Pure ANC: Beats Studio3 Wireless headphones deliver a premium listening experience with Pure Adaptive Noise Cancelling (Pure ANC) to actively block external noise, and real-time audio calibration to preserve clarity, range and emotion. It continuously pinpoints external sounds to block while automatically responding to individual fit in real-time, optimizing sound output to preserve a premium listening experience the way artists intended.'),
(30, 'product30.jpg', 'Garmin vívofit 4 Activity Tracker – White', '$99.99', 'The Garmin vívofit 4 activity tracker follows your progress 24/7 and lets you ditch the charging cord, thanks to its 1+ year battery life. It’s also safe for the pool or the shower, and its always-on color display is bright and easy to see, even in the sunlight. Let your personality shine through by customizing the screen with color themes, watch faces and text phrases or by swapping out the band for a different one.'),
(31, 'product31.jpeg', 'Toronto Raptors Nike Men\'s Serge Ibaka Swingman Jersey', '$97.50', 'Based on the authentic NBA jersey, the Icon Edition Swingman (Toronto Raptors) Men’s Nike NBA Connected Jersey lets you rep your team while helping keep you cool and comfortable through every move.\r\n'),
(32, 'product32.jpg', 'Toronto Maple Leafs adidas John Taveres Home Authentic Jersey', '$249.99', 'Show Support for Your Toronto Maple Leafs in this adidas Men\'s Authentic Pro Away Hockey Jersey. Enjoy the game comfortably and let your colors fly.\r\n'),
(33, 'product33.jpg', 'Manchester United FC 2019/20 adidas Replica Home Jersey', '$109.99', 'Manchester United’s treble-winning team earned the club a place in the record books and hearts of football fans worldwide. This home jersey honours 20 years since that fateful night in Barcelona. Made for fans, this version has a looser cut than the one players wear on match days. It’s built from sweat-wicking fabric, with commemorative details and a special crest honouring their incredible 1998/99 season.'),
(34, 'product34.jpg', 'Toronto Blue Jays New Era Men\'s Heather Hype Snap Hat', '$19.97', 'Toronto Blue Jays 9Fifty Original Fit Snapback Hat. Heather Hype Snap Uses A Wool Blend Heather Fabrication In Team Color. A Pop Of Secondary Team Color Is Used On Button And Under visor. Team Logo Is Featured On Front, Executed In A Sleek Heather Fabric Applique.'),
(35, 'product35.jpeg', 'Toronto FC Fanatics Core Scarf', '$37.99', 'Make sure you’re repping Toronto FC from head to toe on game day and grab this Toronto FC Fanatics Core Scarf to complete your look! Whether at BMO Field, on the streets or on the pitch you will look the part. Officially Licensed by MLS.');

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
  `user_ip` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_ip`) VALUES
(1, 'Admin', 'admin', 'sportcheck', 'admin@sportcheck', '::1'),
(2, 'Alissar', 'aarnaout', 'password', 'alissar@arnaout.com', 'no');

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
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_product_cat`
--
ALTER TABLE `tbl_product_cat`
  MODIFY `product_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
