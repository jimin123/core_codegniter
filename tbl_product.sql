-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2016 at 05:47 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_sp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `price` decimal(15,0) NOT NULL,
  `image_link` varchar(50) NOT NULL,
  `image_list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `name`, `catalog_id`, `price`, `image_link`, `image_list`) VALUES
(1, 'Ti vi samsung k3a', 1, '10000000', 'product115.jpg', '["product213.jpg","product313.jpg","product411.jpg","product512.jpg"]'),
(2, 'Ti vi sony d4k', 1, '12000000', 'product711.jpg', '["product312.jpg","product410.jpg","product511.jpg","product615.jpg"]'),
(3, 'Điện thoại htc-desire', 2, '5500000', 'htc-desire10.png', '["htc-desire11.png","sony-xperia5.png"]'),
(4, 'Điện thoại sony-xperia', 2, '7400000', 'sony-xperia6.png', '["htc-desire12.png","sony-xperia7.png"]'),
(5, 'Laptop asus-e402se', 3, '11500000', 'asus-e402sa16.png', '["asus-e402sa17.png","dell-inspiron-35527.png"]'),
(6, 'Laptop dell-inspiron', 3, '10500000', 'dell-inspiron-35528.png', '["asus-e402sa18.png","dell-inspiron-35529.png"]'),
(7, 'máy tính bảng Gold_IPad_Air_2', 4, '4800000', 'Gold_iPad_Air_28.jpg', '["Gold_iPad_Air_29.jpg","mtb-acer8.jpg"]'),
(8, 'máy tính bảng mtb-acer', 4, '3600000', 'mtb-acer9.jpg', '["Gold_iPad_Air_210.jpg","mtb-acer10.jpg"]'),
(9, 'máy giặt FWM-120PD', 5, '5300000', 'FWM-120PD-55.jpg', '["FWM-120PD-56.jpg","TOSHIBA-AW6.jpg"]'),
(10, 'Máy giặt TOSHIBA-AW', 5, '7400000', 'TOSHIBA-AW7.jpg', '["FWM-120PD-57.jpg","TOSHIBA-AW8.jpg"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
