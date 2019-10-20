-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2019 at 10:14 PM
-- Server version: 10.2.25-MariaDB
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u534061814_seafarer_grill`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_types`
--

CREATE TABLE `food_types` (
  `id` int(11) NOT NULL,
  `food_type` varchar(40) NOT NULL,
  `list_order` int(40) NOT NULL,
  `bg_pic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_types`
--

INSERT INTO `food_types` (`id`, `food_type`, `list_order`, `bg_pic`) VALUES
(1, 'Seafood', 1, 'citytall1'),
(2, 'Grilled Meats', 2, 'citytall2'),
(3, 'Dinner Specials', 3, 'citytall3'),
(4, 'Vegetarian', 4, 'citytall4'),
(5, 'Sandwiches', 5, 'boattall1'),
(6, 'Salads', 6, 'boattall2'),
(7, 'Sides', 7, '0'),
(8, 'Appetizers', 8, '0'),
(9, 'Dessert', 9, '0'),
(10, 'Beer', 10, '0'),
(11, 'Wine', 11, 'cliff'),
(12, 'Cocktails', 12, '0'),
(13, 'Beverages', 13, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_types`
--
ALTER TABLE `food_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_types`
--
ALTER TABLE `food_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
